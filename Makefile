# Makefile for building with CMake

# Define the build directory
BUILDDIR := build

.PHONY: all clean configure

# Default target
all: configure
	@echo "Building project..."
	cmake --build $(BUILDDIR)

# Create the build directory and run CMake configuration
configure:
	@echo "Creating build directory..."
	mkdir -p $(BUILDDIR)
	@echo "Running CMake..."
	(cd $(BUILDDIR) && cmake ..)

# Clean target to remove the build directory
clean:
	@echo "Cleaning build..."
	rm -rf $(BUILDDIR)
