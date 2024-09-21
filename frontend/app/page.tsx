"use client"

import React, { useRef, useMemo, useState } from 'react'
import { Canvas, useFrame, useLoader, useThree } from '@react-three/fiber'
import { OrbitControls, Sphere, Line } from '@react-three/drei'
import * as THREE from 'three'

// Define the props for the Particles component
interface ParticlesProps {
  onSelectParticle: (orbit: number[]) => void
}

const Particles: React.FC<ParticlesProps> = ({ onSelectParticle }) => {
  const particlesRef = useRef<THREE.Points>(null!)
  const { raycaster, camera, mouse } = useThree()

  const particlesCount = 2000
  const [positions, speeds, orbits] = useMemo(() => {
    const positions = new Float32Array(particlesCount * 3)
    const speeds = new Float32Array(particlesCount)
    const orbits: number[][] = []
    for (let i = 0; i < particlesCount; i++) {
      const theta = Math.random() * Math.PI * 2
      const phi = Math.acos((Math.random() * 2) - 1)
      const r = 1.01 // Slightly above the Earth's surface
      positions[i * 3] = r * Math.sin(phi) * Math.cos(theta)
      positions[i * 3 + 1] = r * Math.sin(phi) * Math.sin(theta)
      positions[i * 3 + 2] = r * Math.cos(phi)
      speeds[i] = 0.001 + Math.random() * 0.003 // Random speed for each particle

      // Generate orbit points
      const orbitPoints: number[] = []
      for (let j = 0; j < 100; j++) {
        const angle = (j / 100) * Math.PI * 2
        orbitPoints.push(
          r * Math.sin(phi) * Math.cos(theta + angle),
          r * Math.sin(phi) * Math.sin(theta + angle),
          r * Math.cos(phi)
        )
      }
      orbits.push(orbitPoints)
    }
    return [positions, speeds, orbits]
  }, [particlesCount])

  // Rotate particles around the y-axis
  useFrame(() => {
    if (particlesRef.current) {
      const positionsArray = particlesRef.current.geometry.attributes.position.array as Float32Array
      for (let i = 0; i < particlesCount; i++) {
        const i3 = i * 3
        const x = positionsArray[i3]
        const z = positionsArray[i3 + 2]

        // Rotate around the y-axis
        const angle = speeds[i]
        const newX = x * Math.cos(angle) - z * Math.sin(angle)
        const newZ = x * Math.sin(angle) + z * Math.cos(angle)

        positionsArray[i3] = newX
        positionsArray[i3 + 2] = newZ
      }
      particlesRef.current.geometry.attributes.position.needsUpdate = true
    }
  })

  // Handle click events on particles
  const handleClick = () => {
    raycaster.setFromCamera(mouse, camera)
    const intersects = raycaster.intersectObject(particlesRef.current)
    if (intersects.length > 0) {
      const index = intersects[0].index
      if (index !== undefined && orbits[index]) {
        onSelectParticle(orbits[index])
      }
    }
  }

  return (
    <points ref={particlesRef} onClick={handleClick}>
      <bufferGeometry>
        <bufferAttribute
          attach="attributes-position"
          count={positions.length / 3}
          array={positions}
          itemSize={3}
        />
      </bufferGeometry>
      <pointsMaterial size={0.01} color="red" />
    </points>
  )
}

const Earth: React.FC = () => {
  const earthRef = useRef<THREE.Mesh>(null!)
  const texture = useLoader(THREE.TextureLoader, '/assets/3d/texture_earth.jpg')

  // Create a black and white version of the texture
  const blackAndWhiteTexture = useMemo(() => {
    const canvas = document.createElement('canvas')
    const context = canvas.getContext('2d')
    canvas.width = texture.image.width
    canvas.height = texture.image.height
    context!.drawImage(texture.image, 0, 0)
    const imageData = context!.getImageData(0, 0, canvas.width, canvas.height)
    const data = imageData.data
    for (let i = 0; i < data.length; i += 4) {
      const avg = (data[i] + data[i + 1] + data[i + 2]) / 3
      data[i] = data[i + 1] = data[i + 2] = avg > 128 ? 200 : 0 // Whitish grey for land, black for water
    }
    context!.putImageData(imageData, 0, 0)
    return new THREE.CanvasTexture(canvas)
  }, [texture])

  // Rotate the Earth mesh
  useFrame(() => {
    if (earthRef.current) {
      earthRef.current.rotation.y += 0.001
    }
  })

  return (
    <Sphere ref={earthRef} args={[1, 64, 64]}>
      <meshStandardMaterial map={blackAndWhiteTexture} />
    </Sphere>
  )
}

const Scene: React.FC = () => {
  const [selectedOrbit, setSelectedOrbit] = useState<number[] | null>(null)

  return (
    <>
      <ambientLight intensity={0.5} />
      <pointLight position={[10, 10, 10]} />
      <Earth />
      <Particles onSelectParticle={setSelectedOrbit} />
      {selectedOrbit && (
        <Line
          points={selectedOrbit}
          color="yellow"
          lineWidth={4}
        />
      )}
      <OrbitControls enableZoom={true} enablePan={true} enableRotate={true} />
    </>
  )
}

const Component: React.FC = () => {
  return (
    <div className="w-full h-screen bg-black">
      <Canvas camera={{ position: [0, 0, 2.5] }}>
        <Scene />
      </Canvas>
      <div className="absolute top-4 right-4 text-white bg-black bg-opacity-50 p-2 rounded">
        <p>Name: STARLINK-5414</p>
        <p>NORAD ID: 54809</p>
        <p>COSPAR: 2022-175BD</p>
        <p>Orbit: 539 x 541, 53.22°</p>
      </div>
      <div className="absolute bottom-4 left-4 text-white">
        <button className="bg-yellow-500 text-black px-2 py-1 rounded mr-2">-16x</button>
        <button className="bg-yellow-500 text-black px-2 py-1 rounded mr-2">-4x</button>
        <button className="bg-yellow-500 text-black px-2 py-1 rounded mr-2">Live</button>
        <button className="bg-yellow-500 text-black px-2 py-1 rounded mr-2">+4x</button>
        <button className="bg-yellow-500 text-black px-2 py-1 rounded">+16x</button>
      </div>
    </div>
  )
}

export default Component
