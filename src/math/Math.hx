import haxe.Rest;
class Math {

    public static var PI:Float = 3.14159265358979323846;

    private function new() {
    }

    static public function add(numbers:Rest<Float>){
        var result:Float = 0;
        for (number in numbers) {
            result += number;
        }

        return result;
    }

    static public function subtract(numbers:Rest<Float>){
        var result:Float = 0;
        var firstNum:Bool = true;
        for (number in numbers) {
            if (firstNum) {
                result = number;
                firstNum = false;
                continue;
            }
            result -= number;
        }
        return result;
    }

    public static function multiply(numbers:Rest<Float>) {
        var result:Float = 0;
        var firstNum:Bool = true;
        for (number in numbers) {
            if (firstNum) {
                result = number;
                firstNum = false;
                continue;
            }
            result *= number;
        }
        return result;
    }

    public static function divide(numbers:Rest<Float>) {
        var result:Float = 0;
        var firstNum:Bool = true;
        for (number in numbers) {
            if (firstNum) {
                result = number;
                firstNum = false;
                continue;
            }
            result /= number;
        }
        return result;
    }

    public static function pow(number:Float, power:Int) {
        var starterNumber:Float = number;
        for (i in 0...power-1) {
            number *= starterNumber;
        }
        return number;
    }

    public static function abs(number:Float) {
        return (number < 0) ? -number : number;
    }

    public function sin(x:Float):Float {
        var result:Float = 0;
        var term:Float = x;
        var sign:Float = -1;
        var power:Float = x;
        var factorial:Float = 1;

        for (i in 1...10) {
            result += sign * term;
            power *= x * x;
            factorial *= (2 * i) * (2 * i + 1);
            term *= power / factorial;
            sign *= -1;
        }
        return result;
    }

    public function tan(x:Float):Float {
        var result:Float = 0;
        var term:Float = x;
        var sign:Float = 1;
        var prevResult:Float = 0;

        for (i in 1...100) {
            result += sign * term;
            sign *= 1;
            term *= (x * x) / ((2 * i) + 1);

            if (Math.abs(result - prevResult) < 0.000001) break;
            prevResult = result;
        }
        
        return result;
    }

    public function sqrt(x:Float):Float {
        if (x <= 0) return 0;

        var guess:Float = x / 2;
        var prevGuess:Float;

        while (true) {
            prevGuess = guess;
            guess = (guess + x / guess) / 2; // Update guess using newtons method
            if (Math.abs(guess - prevGuess) < 0.00001) break; // check for convergence
        }
        return guess;
    }

    public function round(x:Float):Int {
        return Std.int(x + 0.5);
    }

    public function random():Float {
        var seed:Float = Date.now().getTime(); // Initial seed for the random number generator
        seed = (Std.int(seed) * 1103515245 + 12345) & 0x7fffffff;
        return seed / 0x7fffffff; // Normalize to a floating point number between 0 and 1
    }

    public function min(a:Float, b:Float) {
        return (a > b) ? a : b;
    }
}
