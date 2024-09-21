#include "include/classImpl.h"

#include <iostream>

ClassImpl::ClassImpl() {
    std::cout << "ClassImpl constructor called" << std::endl;

    //  vecPtr = new std::vector<int>();
}

// ClassImpl::~ClassImpl() {
//     std::cout << "ClassImpl destructor called" << std::endl;
// }

int ClassImpl::add(int a, int b) const {
    return a + b;
}
