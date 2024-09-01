//
//  TestLights.m
//  RayTracerTests
//
//  Created by Deirdre Saoirse Moen on 8/31/24.
//

#import <XCTest/XCTest.h>

@interface TestLights : XCTestCase

@end

@implementation TestLights

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

/*
 //	Feature: Lights
 //
 //	Scenario: A point light has a position and intensity
 //	  Given intensity ← color(1, 1, 1)
 //		And position ← point(0, 0, 0)
 //	  When light ← point_light(position, intensity)
 //	  Then light.position = position
 //		And light.intensity = intensity

	 func testLightHasPositionAndIntensity() {
		 let color = VColor(1, 1, 1)
		 let position = Point(0, 0, 0)

		 let light = Light(position: position, color: color)

		 XCTAssertEqual(light.position, position)
		 XCTAssertEqual(light.color, color)
	 }

	 // There wasn't a test for the rest of the lighting function, soooooo
	 func testPointLightLighting() {
		 let material = Material(color: .white)
		 let position = Point(0, 0, 0)
		 let eyeV = Vector(0, 0, -1)
		 let normalV = Vector(0, 0, -1)
		 let light = Light(position: Point(-1, 10, -5), color: VColor(0.2, 0.5, 0.75))

		 let ml = material.lighting(light: light, position: position, eyeV: eyeV, normalV: normalV)

		 // TODO: Missing testPointLightLighting test.
	 }

 */
@end
