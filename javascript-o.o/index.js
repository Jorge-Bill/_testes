var arr1 = new Array ("red", 10, 20.4);
var arr2 = new Array("blue", 12, 30.3, arr1);

arr1 = arr1.concat(arr2);

console.log(arr1);