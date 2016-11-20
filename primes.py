"""
Your module documentation here
"""


class PrimeClass(object):
	"""
	This is a class to get if a given number is odd or not.
	
	Attributes:
		
	"""
	def is_prime(num_int):
		"""
		num_int: An integer that is going to be processed and it will return if is or not an odd number.
		"""
		if (num_int % 2 == 0):
			return True
		else: 
			return False

