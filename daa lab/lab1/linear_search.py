def linear(arr, target, index):

    # Base Case
    if index == len(arr):
        return -1

    # Element mil gaya
    if arr[index] == target:
        return index

    # Recursive Call
    return linear(arr, target, index + 1)


arr = [10, 25, 7, 50, 18]

print(linear(arr, 50, 0))