# Function3DiffWays

The following function, foo, is defined as:

foo (x, y) = x  (if y <= 0) ||
             y  (if x <= 0) ||
             x + foo(x-1, y-2)  (if x >= y) ||
             y + foo(x-2, y-3)  (if x < y)
             
I defined this function in 3 different languages: C++, Scheme, and Prolog.
