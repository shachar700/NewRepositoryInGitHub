import unittest
import math_utils

class TestMathUtils(unittest.TestCase):
    def test_add(self):
        self.assertEqual(math_utils.add(2, 3), 5)

    def test_subtract(self):
        self.assertEqual(math_utils.subtract(10, 4), 6)

    def test_multiply(self):
        self.assertEqual(math_utils.multiply(3, 4), 12)

if __name__ == '__main__':
    unittest.main()
