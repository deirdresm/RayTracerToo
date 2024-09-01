//
//  Vector.hpp
//  RayTracerToo
//
//  Created by Deirdre Saoirse Moen on 8/31/24.
//

#ifndef Vector_h
#define Vector_h

#include "Tuple.hpp"

struct Vector : public Tuple
{
	Vector(CGFloat x, CGFloat y, CGFloat z, CGFloat w = 0) : Tuple(x, y, z, w) {}


	/// Cross product
	/// TODO: I want my • back
	Vector cross(const Vector& v) const {
		return  {y * v.z - z * v.y,
				z * v.x - x * v.z,
				x * v.y - y * v.x};
	}
};

#endif /* Vector_h */
