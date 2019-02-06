#include "Test.h"
Test::Test()
    : v{}
{
}

Test::Test(std::initializer_list<int> init)
    : v(init.size())
{
    for(auto& item  : init)
    {
        v.push_back(item);
    }
    
}