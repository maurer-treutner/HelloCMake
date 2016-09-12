/*
 * greeting.h
 *
 *  Created on: 12.09.2016
 *      Author: peter
 */

#ifndef HELLOLIB_SRC_GREETING_H_
#define HELLOLIB_SRC_GREETING_H_

#include <string>

class Greeting {
public:
	Greeting();

	Greeting(std::string message);

	virtual ~Greeting();

	std::string greet();

private:
	std::string _message;
};

#endif /* HELLOLIB_SRC_GREETING_H_ */
