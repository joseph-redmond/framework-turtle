import utest.Runner;
import utest.ui.Report;

class MathTest {
    public static function main() {
        // The long way
        // var runner = new Runner();
        // runner.addCase(new AdditionTestCase());
        // Report.create(runner);
        // runner.run();

        // // The short way (if no specific handling is needed)
        utest.UTest.run([new MathTestCases()]);
    }
}
