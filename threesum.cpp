#include <iostream>
#include <vector>
#include <algorithm>
#include "Solution.cpp"
using namespace std;






int main()
{
    int n;
    cout << "Enter number of elements: ";
    cin >> n;

    vector<int> nums(n);
    cout << "Enter elements: ";
    for (int i = 0; i < n; i++) {
        cin >> nums[i];
    }

    Solution obj;
    vector<vector<int>> result = obj.threeSum(nums);

    cout << "Triplets with sum 0:\n";
    for (auto &triplet : result) {
        cout << "[ ";
        for (int x : triplet) {
            cout << x << " ";
        }
        cout << "]\n";
    }


    return 0;
}
