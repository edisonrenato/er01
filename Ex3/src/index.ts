/*// NOTE: This code has not been converted to TypeScript yet
const arrays = require('./utilities/arrays.js');
const numbers = require('./utilities/numbers.js');
const strings = require('./utilities/strings.js');
*/

// NOTE: This code has been converted to ES6

import 'arrays' :array[] from './utilities/arrays.js';


// const arrays = import { concatArr, addArr, lgNum,cut3 } from './utilities/arrays.js';
const numbers = import { multiply,subtract, divide, sum, square } from './utilities/numbers.js';
const strings = import { concat, capitalize, upperCase, lowerCase } from './utilities/strings.js';

//Declarations
const numArr = [3, 4, 5, 6];
const wordArr = ['cat', 'dog', 'rabbit', 'bird'];
const arrSum = arrays.addArr(numArr);
const mixArr = arrays.concatArr(numArr, wordArr);
const myNum = '15' % 2;

// results of function calls
console.log(arrays.cut3(mixArr));
console.log(numbers.sum(arrSum, myNum));
console.log(strings.capitalize('the quick brown fox'));
console.log(numbers.multiply('5', 8));
console.log(arrays.lgNum(mixArr));
