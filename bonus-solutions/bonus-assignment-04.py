# You will still submit this as a pull request on github to
# *your* bonus repo: `firstname-lastname-bonus-repo`

# When I say the second element, I mean the element with index 1
# When I say element two, I mean the element with index 2

# Question 1. consider the following list
a = [1, 2, 3, 4, 45, 5, 3, 5, 6, 7, 77]
# Select the third element using a positive index
a[2]

# Select the third element using a negative index
a[-9]

# Select the first 4 elements
a[:4]

# Select the last 4 elements
a[-4:]

# Select the 5th and 7th item (result should be a list)
[a[6], a[8]]
# OR
[a[-5], a[-3]]
# OR
a[6:9:2]

# Add the elements [5, 5, 9] to the end of `a`
a.extend([5, 5, 9])

# Question 2. Explain (not code) why mutability is good.
#
# Written answer:
# Allows data to be modified without having to create a
# copy of the item which can be expensive with large data

# Question 3. Explain (not code) why mutability is bad.
#
# Written answer:
# Easier to mess up and accidentally edit data that shouldn't
# be edited.

# Question 4. Consider `a` and `b``. Run the following lines:
a = [1, 2, 3]
b = a
# Next, change `a` to [100, 2, 3] by *recreating* `a``.
# Then inspect the value of `a` and `b`.
a = [100, 2, 3]
print(a)
print(b)

# Did `b` change to `[100, 2, 3]`?
#
# Written answer:
# nope, recreating a changes a and b to point to different places in memory


# Question 5. Consider a and b. Run the following lines:
a = [1, 2, 3]
b = a
# Next change `a` to [100, 2, 3] by *subsetting `a` and assigning 100 to the subset*.
# Then inspect the value of `a` and `b`.
a[0] = 100
print(a)
print(b)

# Did `b` change to `[100, 2, 3]`?
#
# Written answer:
# Yes, a and b point to the same place in memory, changing the first element
# for that list affects the same data structure they both point to.

# Question 6: Put tuples through the same tests and report on the results
a = (1, 2, 3)
b = a
a = (100, 2, 3)
print(a)
print(b)

a = (1, 2, 3)
b = a
try:
    a[0] = 100
except TypeError:
    print("cant do that; immutable tuple")

print(a)
print(b)

# Written answer:
# Tuples don't support assignment to a slice. They're immutable.


# Question 7: Translate the math in the below linked image into python code
# https://utk.instructure.com/courses/180504/files?preview=17838225
# x and y provided:
y = [35, 40, 65, 100, 95]
x = [10, 20, 30, 40, 50]

b0 = 2
b1 = 10

sse = 0
for xi, yi in zip(x, y):
    yhat = b0 + b1 * xi
    e = yi - yhat
    se = e**2
    sse += se

print(f"Sum of Squared Errors: {sse}")

# What's this math/code doing? Write a little description of what task it does.
#
# Written answer:
# It's sum of squared error for simple linear regression,
# Make a prediction with: x, intercept (b0), and slope (b1). y = mx + b.
# Measure how far prediction is from the truth.
# Predictions can be above or below right answer, square so they don't cancel out.
# Add up the squared errors as a metric to compare to other possible models.
# Take square root if you want to talk to people about it.
