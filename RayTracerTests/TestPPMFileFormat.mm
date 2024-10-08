//
//  TestPPMFileFormat.m
//  RayTracerTests
//
//  Created by Deirdre Saoirse Moen on 8/31/24.
//

#import <XCTest/XCTest.h>

@interface TestPPMFileFormat : XCTestCase

@end

@implementation TestPPMFileFormat

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
 class TestPPMFileFormat: XCTestCase {

 //	Scenario​: Constructing the PPM header
 //	​ 	  ​​ 	  ​Given​ c ← canvas(5, 3)
 //	When​ ppm ← canvas_to_ppm(c)
 //	​ 	  ​​ 	  ​Then​ lines 1-3 of ppm are
 //	​ 	    ​​ 	    ​"""
 //	​ 	​    ​ 	​    P3
 //	​ 	​    ​ 	​    5 3
 //	​ 	​    ​ 	​    255
 //	​ 	​    ​ 	​    """

	 func testPPMHeader() {

		 let header =
			 """
			 P3
			 5 3
			 255\n
			 """

		 let c = Canvas(5,3)
		 let ppm = c.toPPM()

		 XCTAssertTrue(ppm.hasPrefix(header))
	 }

	 func testPPMPixelData() {
		 let header =
		 """
			 P3
			 5 3
			 255\n
			 """

		 let body =
		 """
			 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0
			 0 0 0 0 0 0 0 128 0 0 0 0 0 0 0
			 0 0 0 0 0 0 0 0 0 0 0 0 0 0 255\n
			 """

		 let c = Canvas(5,3)

		 let c1 = VColor(1.5, 0, 0).clamped()
		 let c2 = VColor(0.0, 0.5, 0.0).clamped()
		 let c3 = VColor(-0.5, 0, 1).clamped()

		 c.writePixel(0, 0, c1)
		 c.writePixel(2, 1, c2)
		 c.writePixel(4, 2, c3)

		 let ppm = c.toPPM()
		 let ppmExpected = header + body

		 XCTAssertEqual(ppm, ppmExpected)
	 }

 //	“	​Scenario​: Splitting long lines in PPM files
 //	​ 	  ​​ 	  ​Given​ c ← canvas(10, 2)
 //	​ 	  ​​ 	  ​When​ every pixel of c is set to color(1, 0.8, 0.6)
 //	​ 	    ​​ 	    ​And​ ppm ← canvas_to_ppm(c)
 //	​ 	  ​​ 	  ​Then​ lines 4-7 of ppm are
 //		"""
 //​	​	255 204 153 255 204 153 255 204 153 255 204 153 255 204 153 255 204
 //		153 255 204 153 255 204 153 255 204 153 255 204 153
 //	​	255 204 153 255 204 153 255 204 153 255 204 153 255 204 153 255 204
 //	​	153 255 204 153 255 204 153 255 204 153 255 204 153
 //	"""

	 // keep line lengths < 70
	 func testSplitLongLines() {

		 let canvas = Canvas(10, 2)

		 let color = VColor(1.0, 0.8, 0.6)

		 let header =
		 """
			 P3
			 10 2
			 255\n
			 """

		 let body =
			 """
		 255 204 153 255 204 153 255 204 153 255 204 153 255 204 153 255 204 153
		 255 204 153 255 204 153 255 204 153 255 204 153
		 255 204 153 255 204 153 255 204 153 255 204 153 255 204 153 255 204 153
		 255 204 153 255 204 153 255 204 153 255 204 153\n
		 """

		 for y in 0..<canvas.height {
			 for x in 0..<canvas.width {

				 canvas.writePixel(x, y, color)
			 }
		 }

		 let ppm = canvas.toPPM()
		 let ppmExpected = header + body

		 XCTAssertEqual(ppm, ppmExpected)
	 }

	 // should have a terminating newline
	 func testForFinalNewline() {
		 let c = Canvas(5,3)

		 let ppm = c.toPPM()

		 XCTAssertEqual(Array(ppm).last, "\n")
	 }

 */
@end
