def binary_search(arr, low, high, target):
    # Base Case
    if low > high:
        return -1
    # Middle nikalna
    mid = (low + high) // 2
    # Agar element mil gaya
    if arr[mid] == target:
        return mid
    # Left side me search karo
    if target < arr[mid]:
        return binary_search(arr, low, mid - 1, target)
    # Right side me search karo
    return binary_search(arr, mid + 1, high, target)
# Main Program
arr = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
target = 23
result = binary_search(arr, 0, len(arr) - 1, target)
if result == -1:
    print("Ticket not found")
else:
    print("Ticket found at index", result)