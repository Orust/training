// 数値と数値の比較
const num1: number = 0;
const num2: number = 0;

console.log(num1 == num2); // true、値が等しいため
console.log(num1 === num2); // true、値と型が共に等しいため

// 文字列と文字列の比較
const str1: string = '0';
const str2: string = '0';

console.log(str1 == str2); // true、値が等しいため
console.log(str1 === str2); // true、値と型が共に等しいため

// 真偽値と真偽値の比較
const bool1: boolean = false;
const bool2: boolean = false;

console.log(bool1 == bool2); // true、値が等しいため
console.log(bool1 === bool2); // true、値と型が共に等しいため

// 文字列と数値の比較
let value: any = "0";
console.log(value == 0);  // true、JavaScriptの型変換により文字列が数値に変換されるため
console.log(value === 0); // false、型が異なるため
