/*
 * greeting.cpp
 *
 *  Created on: 12.09.2016
 *      Author: peter
 */

#include "greeting.h"

Greeting::Greeting():
	_message("Hello")
{
	// TODO Auto-generated constructor stub
}

Greeting::Greeting(std::string message):
	_message(message){

}

Greeting::~Greeting() {
	// TODO Auto-generated destructor stub
}

std::string Greeting::greet()
{
	return _message;
}
