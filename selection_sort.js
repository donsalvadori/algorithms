var swap = function(array, firstIndex, secondIndex) {
    var temp = array[firstIndex];
    array[firstIndex] = array[secondIndex];
    array[secondIndex] = temp;
};

var indexOfMinimum = function(array, startIndex) {

    var minValue = array[startIndex];
    var minIndex = startIndex;

    for(var i = minIndex + 1; i < array.length; i++) {
        if(array[i] < minValue) {
            minIndex = i;
            minValue = array[i];
        }
    } 
    return minIndex;
}; 

var selectionSort = function(array) {
    var length = array.length;
    for(var i = 0; i < length; i++){
        var min = indexOfMinimum(array,i);
        swap(array, i, min);
    }
};

var array = [22, 11, 99, 88, 9, 7, 42];
selectionSort(array);
println("Array after sorting: " + array);

Program.assertEqual(array, [7, 9, 11, 22, 42, 88, 99]);

var array2 = [22, 15, 88, 65, 102, 7, 42];
selectionSort(array2);
println("Array after sorting: " + array2);
Program.assertEqual(array2, [7, 15, 22, 42, 65 , 88, 102]);

