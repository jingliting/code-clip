#TypeError: 'range' object does not support item assignment

import random

emails = {
    "x": "[REDACTED]@hotmail.com",
    "x2": "[REDACTED]@hotmail.com",
    "x3": "[REDACTED]@hotmail.com"
}

people = emails.keys()

#generate a number for everyone
allocations = range(len(people))
random.shuffle(allocations)

#In python3 range is a generator object - it does not return a list. Convert it to a list before shuffling.
#allocations = list(range(len(people)))
