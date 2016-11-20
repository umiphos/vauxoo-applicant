
"""
PrimeClass class.
"""


class PrimeClass(object):
    """
    This is a class to get if a given number is odd or not.
    Attributes:
        is_prime:a function to get elements of a list sum up on a single
        function.
    """

    def is_prime(self, num_int):
        """
        num_int: An integer that is going to be processed
        """
        if num_int < 2:
            return False
        for i_co in xrange(2, num_int):
            if num_int % i_co == 0:
                return False
        return True
