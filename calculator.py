
"""
This class is used to return the sum of a list of integers.
Notes:
  it does not validates if the values are integers
  there are easy ways to do this.
  there is also more pythonic ways to do this(currently working on them).
"""


class CalculatorClass(object):

    """
    sum: method to sum a list of values.
    """
    def sum(self, num_list):
        """
        num_list: A list of integers.
        sum_of_i: This variable has the elements summed for the final result.
        """
        sum_of_i = 0
        for i_co in num_list:
            sum_of_i += i_co
        return sum_of_i
