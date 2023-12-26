#ifndef NEURAL_NETWORK_H
#define NEURAL_NETWORK_H

#include <vector>
#include <cmath>

namespace Amtal {
class Neural_Network {

public:

    /*
     * Constructor
     */
    Neural_Network(const std::vector<int>& layerSizes);

    void Generate_Data();

    void Forward_Pass();

    void Back_Propogation();

private:

    std::vector<int> hidden_layers;
    


};
}



#endif