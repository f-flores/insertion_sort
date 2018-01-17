//
// Insertion Sort
//
using namespace std;

#include "insertion.h"

int main()
{
  vector<int> list {51,17,34,65,79,8,33,27,86,98,43};
  cout << "Before Sort: \n";
  print_vint(list);
	insertion_sort(list);
  cout << "After Sort: \n";
  print_vint(list);

	return 0;
}
