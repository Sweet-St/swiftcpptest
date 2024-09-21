// The Swift Programming Language
// https://docs.swift.org/swift-book

import cxxLibrary

print("Hello, world!")

func testCpp()
{
    let cppObj = ClassImpl()
    let result = cppObj.add(1, 2)
    print(result)
}

testCpp()