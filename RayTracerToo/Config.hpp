//
//  Config.hpp
//  RayTracerC++
//
//  Created by Deirdre Saoirse Moen on 8/31/24.
//

#include <cmath>

#ifndef Config_h
#define Config_h

#ifndef CGFLOAT_DEFINED
#ifdef __LP64__
typedef double CGFloat;
#else
typedef float CGFloat;
#endif
#define CGFLOAT_DEFINED 1
#endif

#ifndef EQUAL_DEFINED
constexpr auto EPSILON = 0.0001F;

inline bool equal(float x, float y)
{
	return std::fabs(x-y) < EPSILON;
}
#define EQUAL_DEFINED 1
#endif

#endif /* Config_h */
