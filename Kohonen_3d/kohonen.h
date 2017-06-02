#ifndef KOHONEN_H
#define KOHONEN_H

#include <cstdlib>.
#include <ctime>
#include <vector>
using namespace std;


typedef float FF;
typedef int II;
typedef vector<FF> neuron;
typedef vector<vector<vector<neuron>>> map_3d;

class Kohonen
{
private:
    map_3d map;
    II neurons_per_side;
    II n_features;

public:
    Kohonen(II neurons_per_side, II n_features);

    void generate_map();
};

#endif // KOHONEN_H
