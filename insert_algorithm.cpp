//
// Insertion Sort Algorithm
//
#include "insertion.h"

void insertion_sort(vector<int>& v)
{
	int key {0}, j {0};
	for (unsigned int i = 0; i < v.size();i++)
	{
		 key = v[i];
		 j = i - 1;
		 while ((j >= 0) && (v[j] > key))
		 {
				 v[j + 1] = v[j];
				 j = j - 1;
		 }
		 v[j + 1] = key;
	}
	cout << endl;
}
