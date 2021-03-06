# lists & sort
a = [5, 5, 1, 7, 9, 1]
list(set(a))    # remove redundant elements. Note: will automatically sort
sorted(a)       # sort the list

# for in reversed
for i in reversed(range(5)):
    print(i)    # 4,3,2,1,0

# for with step
for i in range(10, 4, -2):  # start, stop, step :: until [element > stop]
    print(i)    # 10,8,6   

# list comprehension


# lists
a = ['a', 'b', 'c', 'd']    # implode lists or join
''.join(a)
# o: 'abcd'

# dictionaries
# get "key" value or return "default" if key doesn't exist
dict.get("key", "default") 

# similar to get but also sets the default in dictionary along with returning it
dict.setdefault("key", [])     

# remove and return if "key" exists. If not return "default"
del dict["key"]
# or
dict.pop("key", "default")     

# sort dictionary in descending order and return a list
d = {"aa": 3, "bb": 4, "cc": 2, "dd": 1}
s = [(k, d[k]) for k in sorted(d, key=d.get, reverse=True)]

# character manipulation
ch = 'a'
x = chr(ord(ch) + 2) # x -> c

# convert an integer number to binary
"{0:b}".format(9) # O: 1001 : Useful when questions like create a superset of an array eg. [2,3,4] : [[2], [3], [4], [2,3], [3,4], [2,4], [2,3,4], None] i.e 8 sets and you can use binary representations from 1 (001) -> 7 (111) to get all these sets. Although the complexity will be 2^n 

# convert binary to int
int('101', 2)   # O: 5

# get all subsets of a set of size n
import itertools
list(itertools.combinations([1, 2, 3], 2)) # get all subsets with 2 elements
# get all permuations of size n
from itertools import permutations
list(permutations(['1','2','3'],2)) # (1,2) != (2,1)

# mapping
[i * 2 for i in range(10) if i * 2 > 4]
# o: [6, 8, 10, 12, 14, 16, 18]

# conditional
print("Safe" if 2 < 1 else "Unsafe")
# o: Unsafe

# lambda
# TODO

# map
# TODO

# filter
# TODO

# date
import datetime
datetime.datetime.strptime('15:30','%H:%M') # change string to time
datetime.datetime.now()     # get current time
# also time objects can be compared directly