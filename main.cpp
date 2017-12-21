#include<iostream>
#include<vector>
#include <unordered_map>
using namespace std;


int block_size = 16;

int checkVectorization(int startNode, int frameSize) {
    int node;
    int maxDeg = 0;
    int loopCondition = 16;
    int deg[16];
    int zeta[16];
    int _neighbor[16][16];
    double _eadgWeight[16][16];
    for (int i=0; i<loopCondition; i++){
        deg[i] = i;
        zeta[i] = i;
        for (int j = 0; j < loopCondition; ++j) {
            if(i==j){
                _neighbor[i][j] = -1;
                _eadgWeight[i][j] = 0.0;
            } else {
                _neighbor[i][j] = j;
                _eadgWeight[i][j] = 1.0;
            }
        }
    }
    int tid = 5;
    int ithNode = -1;
    unordered_map<int, int> nodeMap;
    vector<std::vector<std::vector<double> > > tempTurboAffinity(32, std::vector<std::vector<double> >(16, std::vector<double>(16)));
    vector<std::vector<std::vector<int> > > temp_neigh_comm(32, std::vector<std::vector<int> >(16, std::vector<int>(16)));
    for (int start = 0; start < loopCondition; start++) {

        int jump = start*_frame_size;
        int _node = u + jump;
        int _deg = deg[_node];
        if (_deg > maxDeg) {
            maxDeg = _deg;
        }
        ithNode = ithNode + 1;
        nodeMap[_node] = ithNode;
        for (int v = 0; v < loopCondition; ++v) {
            if(_neighbor[_node][v] != -1){
                tempTurboAffinity[tid][nodeMap[_node]][zeta[v]] = -1;
            }
        }
        tempTurboAffinity[tid][nodeMap[_node]][zeta[_node]] = 0;
        temp_neigh_comm[tid][nodeMap[_node]].clear();
    }
    for (int i_out = 0; i_out < maxDeg; i_out++) {
        for (int start = 0; start < loopCondition; start++) {
            int nextJump = start*_frame_size;
            node xp = startNode + nextJump;

            int v = _neighbor[xp][i_out];
            double weight = _eadgWeight[xp][i_out];
            if (xp != v) {
                int C = zeta[v];
                if (tempTurboAffinity[tid][nodeMap[xp]][C] == -1) {
                    // found the neighbor for the first time, initialize to 0 and add to list of neighboring communities
                    tempTurboAffinity[tid][nodeMap[xp]][C] = 0;
                    temp_neigh_comm[tid][nodeMap[xp]].push_back(C);
                }
                tempTurboAffinity[tid][nodeMap[xp]][C] += weight;
            }
        }
    }
    return block_size;
}

int main() {
    std::cout << "Hello World" << std::endl;
    int value = 0;
    int a[100], b[100], c[100];
    int node;
    checkVectorization(0, 1);
    std::cout << "Value of c[50] = " << c[50] << std::endl;
    return 0;
}
