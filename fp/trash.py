def partition(array,left,right):
    # choose middle element of array as pivot
    pivotIndex = (left+right) >> 1;
    pivotValue = array[pivotIndex]

    # swap array[right] and array[pivotIndex]
    # note that we already store array[pivotIndex] in pivotValue
    array[pivotIndex] = array[right]

    # elements <= the pivot are moved to the left (smaller indices)
    storeIndex = left
    for i in xrange(left,right):  # don't include array[right]
        temp = array[i]
        if temp <= pivotValue:
            array[i] = array[storeIndex]
            array[storeIndex] = temp
            storeIndex += 1

        # move pivot to its final place
        array[right] = array[storeIndex]
        array[storeIndex] = pivotValue;
        return storeIndex;
def quicksort(array, left, right):
    print left, right
    if left < right:
        pivotIndex = partition(array,left,right)
        quicksort(array,left,pivotIndex-1)
        quicksort(array,pivotIndex+1,right)

a = [2,1,3]
quicksort(a,0,2)
print a

