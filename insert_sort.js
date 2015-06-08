var insert = function(array, rightIndex, value) {
    for(var j = rightIndex; j > 0 && array[j-1] > value; j--)     {
    array[j] = array[j-1];
    }   
    array[j] = value; 
};

var insertionSort = function(array) {
    for(var i = 0; i < array.length; i++){
        insert(array, i, array[i]);
    }
};

var array = [22, 11, 99, 88, 9, 7, 42];
insertionSort(array);
println("Array after sorting:  " + array);
Program.assertEqual(array, [7, 9, 11, 22, 42, 88, 99]);