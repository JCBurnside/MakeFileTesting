#pragma once
#include <vector>
#include <initializer_list>
class Test {
    std::vector<int> v;
public:
    Test();
    Test(const std::initializer_list<int>);
};