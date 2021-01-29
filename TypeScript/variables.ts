let isNumber: boolean = false;

// number

let num: number = 6;
let hex: number = 0xf00d;
let binaru: number = 0b1010;
let octal: number = 0o744;

console.log(num, hex, binaru, octal);

//string

let color: string = 'blue';
color = 'red';

//template strings

let fullName: string = `Bob Bobbington`;
let age: number = 37;
let sentence: string = `Hello, my name is ${fullName}.

I'll be ${age + 1} years old next month.`;

console.log(sentence);

//Array

let list1: number[] = [1, 2, 3, 4];

let list2: Array<number> = [5, 6, 7, 8];

console.log(list1, list2);

//Tuple

let tup1: [string, number];
tup1 = ['Hello', 5];
// tup1 = [123, 'hi']; -> Error!
console.log(tup1);

console.log(tup1[0].substring(1));
// console.log(tup1[1].substring(1)); -> Error!
console.log(tup1[1].toString());

// tup1[2] = 'Name'; -> Error!

//Enum

enum Color {
  Red, // default value : 0
  Green, // default value : 1
  Black, // default value : 2
}

let c: Color = Color.Green;
console.log(c, Color[1]); // 1 Green

enum Color2 {
  Red = 1,
  Green, // default value : 2
  Black, // default value : 3
}

let c2: Color2 = Color2.Green;
console.log(c2, Color2[2]); // 2 Green

enum Color3 {
  Red = 1,
  Green = 3,
  Black = 7,
}

console.log(Color3.Black, Color3[7]); // 7 Black

// Unknown

let notSure: unknown = 4;
notSure = 'maybe a string later';

notSure = false;

declare const maybe: unknown;

// const aNumber: number = maybe; Error!

if (maybe === true) {
  const aBoolean: boolean = maybe;
  //   const aString: string = maybe; -> Error!
}

if (typeof maybe === 'string') {
  const aString: string = maybe;
  // const aBoolean : boolean = maybe; ->Error!
}

// Any

declare function getValue(key: string): any;

const str: string = getValue('myString');

let looselyTyped: any = 4;
looselyTyped.ifItExists();
looselyTyped.toFixed();

let strictlyTyped: unknown = 4;
// strictlyTyped.toFixed(); -> Error!

let looselyTyped2: any = {};
let d = looselyTyped2.a.b.c.d;
//  ^ = let d: any

// Void

function warnUser(): void {
  console.log('This is my warning message');
}

let unusable: void = undefined;
// OK if `--strictNullChecks` is not given
unusable = null;

// Null and Undefined

let u: undefined = undefined;
let n: null = null;

//Never

// Function returning never must not have a reachable end point
function error(message: string): never {
  throw new Error(message);
}

// Inferred return type is never
function fail() {
  return error('Something failed');
}

// Function returning never must not have a reachable end point
function infiniteLoop(): never {
  while (true) {}
}

// Object

declare function create(o: object | null): void;

create({ prop: 0 });
create(null);
create(undefined);

// Error!
// create(42);
// create('string');
// create(false);

// Type assertions

let someValue: unknown = 'This is a string';

let strLength: number = (someValue as string).length;
let strLength2: number = (<string>someValue).length;
console.log(strLength, strLength2);

export {};
