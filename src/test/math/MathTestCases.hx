import org.tturtle.framework.math.Math;
import utest.Assert;

class MathTestCases extends utest.Test {
    public function testAddingTwoNumbersTogether() {
        var result:Float = Math.add(55, 23);
        Assert.equals(78, result, "Was not equal, the value was actually " + result);
    }

    public function testSubtractingTenNumbersFromEachOther() {
        var result:Float = Math.subtract(10, 4, 8, 7, 2, 4, 88, 2, 44, 284);
        Assert.equals(-433, result, "Was not equal, the value was actually " + result);
    }

    public function testMultiplyingThreeNumbersTogether() {
        var result:Float = Math.multiply(10, 4, 8);
        Assert.equals(320, result, "Was not equal, the value was actually " + result);
    }

    public function testDividingThreeNumbersFromEachOther() {
        var result:Float = Math.divide(104, 4, 8);
        Assert.equals(3.25, result, "Was not equal, the value was actually " + result);
    }

    public function testRaisingNumberToPowerSmallNumber() {
        var result:Float = Math.pow(2, 2);
        Assert.equals(4, result, "Was not equal, the value was actually " + result);
    }

    public function testRaisingNumberToPowerLargeNumber() {
        var result:Float = Math.pow(37.4, 4);
        Assert.equals(1956529.5375999997, result, "Was not equal, the value was actually " + result);
    }

    public function testAbsValueOfNegativeNumber() {
        var result:Float = Math.abs(-55);
        Assert.equals(55, result, "Was not equal, the value was actually " + result);
    }

    public function testAbsValueOfPositiveNumber() {
        var result:Float = Math.abs(34);
        Assert.equals(34, result, "Was not equal, the value was actually " + result);
    }

    public function testAbsValueOfZero() {
        var result:Float = Math.abs(0);
        Assert.equals(0, result, "Was not equal, the value was actually " + result);
    }

    public function testSin():Void {
        var epsilon:Float = 0.0001; // Margin of error for floating point comparisons
        
        var angle1:Float = Math.PI / 4; // 45 degrees
        var expected1:Float = std.Math.sin(angle1);
        var result1:Float = Math.sin(angle1);
        Assert.isTrue(Math.abs(expected1 - result1) < epsilon, "Test 1 failed: Expected " + expected1 + ", got " + result1);
        
        var angle2:Float = Math.PI / 6; // 30 degrees
        var expected2:Float = std.Math.sin(angle2);
        var result2:Float = Math.sin(angle2);
        Assert.isTrue(Math.abs(expected2 - result2) < epsilon, "Test 2 failed: Expected " + expected2 + ", got " + result2);
        
        var angle3:Float = 0; // 0 degrees
        var expected3:Float = std.Math.sin(angle3);
        var result3:Float = Math.sin(angle3);
        Assert.isTrue(Math.abs(expected3 - result3) < epsilon, "Test 3 failed: Expected " + expected3 + ", got " + result3);
        
        var angle4:Float = Math.PI / 2; // 90 degrees
        var expected4:Float = std.Math.sin(angle4);
        var result4:Float = Math.sin(angle4);
        Assert.isTrue(Math.abs(expected4 - result4) < epsilon, "Test 4 failed: Expected " + expected4 + ", got " + result4);
    }

    public function testTan():Void {
        var epsilon:Float = 0.0001; // Margin of error for floating point comparisons
        
        var angle1:Float = Math.PI / 4; // 45 degrees
        var expected1:Float = std.Math.tan(angle1);
        var result1:Float = Math.tan(angle1);
        Assert.isTrue(Math.abs(expected1 - result1) < epsilon, "Test 1 failed: Expected " + expected1 + ", got " + result1);
        
        var angle2:Float = Math.PI / 6; // 30 degrees
        var expected2:Float = std.Math.tan(angle2);
        var result2:Float = Math.tan(angle2);
        Assert.isTrue(Math.abs(expected2 - result2) < epsilon, "Test 2 failed: Expected " + expected2 + ", got " + result2);
        
        var angle3:Float = 0; // 0 degrees
        var expected3:Float = std.Math.tan(angle3);
        var result3:Float = Math.tan(angle3);
        Assert.isTrue(Math.abs(expected3 - result3) < epsilon, "Test 3 failed: Expected " + expected3 + ", got " + result3);
        
        var angle4:Float = Math.PI / 2; // 90 degrees
        var expected4:Float = std.Math.tan(angle4);
        var result4:Float = Math.tan(angle4);
        Assert.isTrue(Math.abs(expected4 - result4) < epsilon, "Test 4 failed: Expected " + expected4 + ", got " + result4);
    }

    public function testSqrt():Void {
        var epsilon:Float = 0.0001; // Margin of error for floating point comparisons
        
        var input1:Float = 16;
        var expected1:Float = std.Math.sqrt(input1);
        var result1:Float = Math.sqrt(input1);
        Assert.isTrue(Math.abs(expected1 - result1) < epsilon, "Test 1 failed: Expected " + expected1 + ", got " + result1);
        
        var input2:Float = 25;
        var expected2:Float = std.Math.sqrt(input2);
        var result2:Float = Math.sqrt(input2);
        Assert.isTrue(Math.abs(expected2 - result2) < epsilon, "Test 2 failed: Expected " + expected2 + ", got " + result2);
        
        var input3:Float = 0;
        var expected3:Float = std.Math.sqrt(input3);
        var result3:Float = Math.sqrt(input3);
        Assert.isTrue(Math.abs(expected3 - result3) < epsilon, "Test 3 failed: Expected " + expected3 + ", got " + result3);
    }

    public function testRound():Void {
        var input1:Float = 3.6;
        var expected1:Int = 4;
        var result1:Int = Math.round(input1);
        Assert.isTrue(expected1 == result1, "Test 1 failed: Expected " + expected1 + ", got " + result1);
        
        var input2:Float = -2.4;
        var expected2:Int = -2;
        var result2:Int = Math.round(input2);
        Assert.isTrue(expected2 == result2, "Test 2 failed: Expected " + expected2 + ", got " + result2);
        
        var input3:Float = 5.5;
        var expected3:Int = 6;
        var result3:Int = Math.round(input3);
        Assert.isTrue(expected3 == result3, "Test 3 failed: Expected " + expected3 + ", got " + result3);
    }

    public function testRandom():Void {
        var numTests:Int = 1000;
        var min:Float = 0;
        var max:Float = 1;

        for (i in 0...numTests) {
            var randomNum:Float = Math.random();
            Assert.isTrue(randomNum >= min && randomNum < max, "Test failed: Random number " + randomNum + " is not between " + min + " and " + max);
        }
        trace("All " + numTests + " random numbers are between " + min + " and " + max + ".");
    }

    public function testMin() {
        var result1:Float = Math.min(25, 5);
        Assert.isTrue(result1 == 5);
        
        var result2:Float = Math.min(3, 38478);
        Assert.isTrue(result2 == 3);
    }
}