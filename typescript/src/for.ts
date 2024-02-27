for (let i = 0; i < 10; i++) {
  console.log(i)
}

let array = [1, 2, 3, 4, 5]
for (let element of array) {
  console.log(element)
}

let object: {
  [key: string]: string;
  a: string;
  b: string;
  c: string;
}
object = { a: "apple", b: "banana", c: "cherry" }
for (let key in object) {
  console.log(key, object[key])
}