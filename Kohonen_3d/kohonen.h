#ifndef KOHONEN_H
#define KOHONEN_H

#include <cstdlib>.
#include <ctime>
#include <vector>
#include <cmath>

using namespace std;


typedef float FF;
typedef int II;
typedef vector<FF> neuron;
typedef vector<vector<vector<neuron>>> map_3d;
typedef vector<vector<FF>> inputs;

class Kohonen
{
private:
    map_3d map;
    II neurons_per_side;
    II n_features;
    inputs training_set;
    II current_coor[3];
    II n_iterations;
    II current_iteration;
    FF current_BMU_distance;
    FF current_radius;
    FF radius;
    FF lambda;
    FF alpha;

public:
    Kohonen(II neurons_per_side, II n_features, inputs training_set, II n_iterations);

    void generate_map();
    FF euclidean_distance(neuron n, neuron m);
    void get_BMU();

    void get_radius();
    FF get_learning_rate();
    FF get_theta();

    void modify_weights(vector<FF> input);

};


neuron operator*(const neuron& v, double alfa);
neuron operator+(const neuron& v1, const neuron& v2);
neuron operator-(const neuron& v1, const neuron& v2);

#endif // KOHONEN_H
