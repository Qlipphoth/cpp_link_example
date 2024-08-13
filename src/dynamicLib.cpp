#include "dynamicLib.h"
#include "staticLib.h"
#include <iostream>

void dynamicFunction() {
    std::cout << "Dynamic function called!" << std::endl;
    std::cout << "Calling static function..." << std::endl;
    staticFunction();
}