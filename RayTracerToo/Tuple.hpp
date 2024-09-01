//
//  Tuple.hpp
//  RayTracerC++
//
//  Created by Deirdre Saoirse Moen on 8/31/24.
//

#ifndef Tuple_hpp
#define Tuple_hpp

#include <stdio.h>
#include "Config.hpp"

struct Tuple {
public:
	CGFloat x;
	CGFloat y;
	CGFloat z;
	CGFloat w;

	Tuple(CGFloat x, CGFloat y, CGFloat z, CGFloat w);

	virtual ~Tuple();

	/// Is this a Point?
	bool isPoint() const {
		return equal(w, 1.0);
	}

	/// Is this a Vector?
	bool isVector() const {
		return equal(w, 0.0);
	}

	// MARK: Operators

	/// Negate a Tuple.
	friend Tuple operator-(const Tuple& t) {
		return {-t.x, -t.y, -t.z, -t.w};
	}

	/// Add two tuples and return the result as a new Tuple.
	friend Tuple operator+(const Tuple& lhs, const Tuple& rhs) {
		const CGFloat xx = lhs.x + rhs.x;
		const CGFloat yy = lhs.y + rhs.y;
		const CGFloat zz = lhs.z + rhs.z;
		const CGFloat ww = lhs.w + rhs.w;

		return {xx, yy, zz, ww};
	}

	/// Subtract two tuples and return the result as a new Tuple.
	friend Tuple operator-(const Tuple& lhs, const Tuple& rhs) {
		const CGFloat xx = lhs.x - rhs.x;
		const CGFloat yy = lhs.y - rhs.y;
		const CGFloat zz = lhs.z - rhs.z;
		const CGFloat ww = lhs.w - rhs.w;

		return {xx, yy, zz, ww};
	}

	/// Multiply two tuples and return the result as a new Tuple.
	friend Tuple operator*(const Tuple& lhs, const Tuple& rhs) {
		const CGFloat xx = lhs.x * rhs.x;
		const CGFloat yy = lhs.y * rhs.y;
		const CGFloat zz = lhs.z * rhs.z;
		const CGFloat ww = lhs.w * rhs.w;

		return {xx, yy, zz, ww};
	}

	/// Multiply a Tuple by a float and return the result as a new Tuple.
	friend Tuple operator*(const Tuple& lhs, const CGFloat rhs) {
		const CGFloat xx = lhs.x * rhs;
		const CGFloat yy = lhs.y * rhs;
		const CGFloat zz = lhs.z * rhs;
		const CGFloat ww = lhs.w * rhs;

		return {xx, yy, zz, ww};
	}

	/// Divide one Tuple by another Tuple and return the result as a new Tuple.
	friend Tuple operator/(const Tuple& lhs, const Tuple& rhs) {
		const CGFloat xx = lhs.x / rhs.x;
		const CGFloat yy = lhs.y / rhs.y;
		const CGFloat zz = lhs.z / rhs.z;
		const CGFloat ww = lhs.w / rhs.w;

		return {xx, yy, zz, ww};
	}

	/// Divide one Tuple by a CGFloat and return the result as a new Tuple.
	friend Tuple operator/(const Tuple& lhs, const CGFloat rhs) {
		const CGFloat xx = lhs.x / rhs;
		const CGFloat yy = lhs.y / rhs;
		const CGFloat zz = lhs.z / rhs;
		const CGFloat ww = lhs.w / rhs;

		return {xx, yy, zz, ww};
	}

	/// Are two tuples equal?
	friend bool operator==(const Tuple& lhs, const Tuple& rhs) {
		return equal(lhs.x, rhs.x) &&
			equal(lhs.y, rhs.y) &&
			equal(lhs.z, rhs.z) &&
			equal(lhs.w, rhs.w);
	}

	/// Dot product
	/// TODO: I want my • back
	constexpr CGFloat dot(const Tuple& t) const {
		return x * t.x + y * t.y + z * t.z;
	}

	// MARK: Magnitude functions

	CGFloat magnitude() {
		return sqrt(x*x + y*y + z*z + w*w);
	}

	Tuple normalize() {
		CGFloat mag = this->magnitude();

		return Tuple(x/mag, y/mag, z/mag, w/mag);
	}

};

#endif /* Tuple_hpp */
