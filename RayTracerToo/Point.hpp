//
//  Point.hpp
//  RayTracerToo
//
//  Created by Deirdre Saoirse Moen on 8/31/24.
//

#ifndef Point_h
#define Point_h

#include "Tuple.hpp"

struct Pointe : public Tuple
{
	Pointe(CGFloat x, CGFloat y, CGFloat z, CGFloat w = 1) : Tuple(x, y, z, w) {}
};

#endif /* Point_h */
