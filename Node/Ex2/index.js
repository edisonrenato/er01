const fs = require('fs');

const app1 = require('./utilities/app1');
const { lgNum, cut3 } = require('./utilities/app2');


const str1 = [ 1, 3, 4, 6, 10 ];
const str2 = [ 5, 12, 14, 15 ];

console.log(app1.sum(str1));
console.log(app1.concat(str1,str2));

console.log(lgNum(str2));
console.log(cut3(str1));