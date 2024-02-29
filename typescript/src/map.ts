// Run: tsc map.ts && node map.js

// 配列に対してmap

const names: string[] = ['hoge', 'fuga', 'piyo'];
const capitalNames: string[] = names.map((name: string) => {
  return name.toUpperCase();
})

const nameLengths: number[] = names.map((name: string) => {
  return name.length;
})

console.log(capitalNames); // [ 'HOGE', 'FUGA', 'PIYO' ]
console.log(nameLengths); // [ 4, 4, 4 ]

// オブジェクトの配列に対してmap
interface User {
  id: number;
  name: string;
  age: number;
}

const users: User[] = [
  { id: 1, name: 'hoge', age: 20 },
  { id: 2, name: 'fuga', age: 30 },
  { id: 3, name: 'piyo', age: 40 }
];

const userIds: number[] = users.map((user: User) => {
  return user.id;
})

const userNames: string[] = users.map((user: User) => {
  return user.name;
})

// 配列内のオブジェクトを変更
const modifiedUsers: User[] = users.map((user: User) => {
  return {
    ...user,  // スプレッド構文でオブジェクトを展開
    age: user.age + 1
  }
})
