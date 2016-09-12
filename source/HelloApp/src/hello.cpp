#include <iostream>
#include "greeting.h"

int main()
{
  Greeting myGreeting("Hello, CMake");
  std::cout<<myGreeting.greet()<<std::endl;
}
