#include <iterator>
#include <type_traits>
#include <numeric>
#include <cstddef>



namespace Amtal {
/*
// Simple implemntation
template<typename Iterator>
struct distance_calc(Iterator start, Iterator last) {
    using category = typename std::iterator_traits<Iterator>::iterator_category;
    if constexpr (std::is_same<std::random_access_iterator_tag, category>::value) {
        return last - start;
    }
    else {
        int diff = 0;
        while (last) {
            start++;
            last++;
            diff++;
        }
        return diff;
    }
}

template<typename it, typename void> 
struct distance_calc {
    static constexpr typename std::iterator_traits<it>::difference_type compute(it start, it end) {
        
    }
}


// Specalized template for random access iterator distance calc 
template<typename it> 
struct distance_calc(it start, it end) {

}




template<typename it>
std::iterator_traits<it>::difference_type find_distance(it first, it last) {
    return distanc_calc<it>(first, last);
}

// branchless min function
int min(int a, int b) {
    return b ^ ((a ^ b) & -(a < b));
}


// can make one val-x and the rest -y
// ret min operations to make nums all 0
int num_operations(std::vector<int> nums, int x, int y) {

}
*/
}