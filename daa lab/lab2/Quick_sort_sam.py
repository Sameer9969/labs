def partition(arr, low, high):
    piv = arr[high]
    i = low - 1

    for j in range(low, high):
        if arr[j] <= piv:
            i += 1
            arr[i], arr[j] = arr[j], arr[i]
            print(i," i ", arr[i])
            print(j," j ", arr[j])
            print("arr is " ,arr)

    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    print("arr is " ,arr)
    return i + 1


def quick_sort(arr, low, high):
    if low < high:
        p = partition(arr, low, high)
        print("high is " ,high)
        print("arr is " ,arr)
        quick_sort(arr, low, p - 1)
        print("high is " ,high)
        print("arr is " ,arr)
        quick_sort(arr, p + 1, high)
        print("high is " ,high)
        print("arr is " ,arr)


numbers = [int(x) for x in input("enter arr seprate by space ").split()]
print("Original array:", numbers)
quick_sort(numbers, 0, len(numbers) - 1)
print("Sorted array:", numbers)
