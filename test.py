"""implementing recursion"""

def recursion(k):
    """recursively adding numbers"""
    if k > 0:
        result = k + recursion(k - 1)
        print(result)
    else:
        result = 0
    return result


print("\n\nRecursion Example Results")
recursion(6)
