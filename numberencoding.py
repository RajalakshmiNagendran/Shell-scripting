import string

def number_encoding(astring):
        """have the function NumberEncoding(str) take the str parameter and encode the message
        according to the following rule: encode every letter into its corresponding numbered position
        in the alphabet. Symbols and spaces will also be used in the input. For example: if str is "af5c a#!"
        then your program should return 1653 1#!.
        Example::

        >>> number_encoding("hello 45")
        '85121215 45'

        >>> number_encoding("jaj-a")
        '10110-1'
        """
        alpha_checker = list(string.ascii_lowercase)

        num_code = ''

        for letter in astring:
                if letter.isalpha():
                        idx = alpha_checker.index(letter)
                        num_code += str(idx + 1)
                else:
                        num_code += letter

        return num_code

print(number_encoding("hello 45"))

#input "hello 45"
#output 85121215 45
