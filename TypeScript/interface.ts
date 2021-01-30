// Interface ?

function printLabel(labeledObj: { label: string }) {
  console.log(labeledObj.label);
}

let myObj = { size: 10, label: 'Size 10 Object' };
printLabel(myObj);

//use interface

interface LabeledValue {
  label: string;
}

function printLabel2(labeledObj: LabeledValue) {
  console.log(labeledObj.label);
}

let myObj2 = { size: 10, label: 'Size 10 Object' };
printLabel2(myObj2);

//Optional Properties

interface SquareConfig {
  color?: string;
  width?: number;
}

function createSquare(config: SquareConfig): { color: string; area: number } {
  let newSquare = { color: 'white', area: 100 };
  if (config.color) {
    newSquare.color = config.color;
  }
  if (config.width) {
    newSquare.area = config.width * config.width;
  }
  return newSquare;
}

let mySquare = createSquare({ color: 'black' });
console.log(mySquare);

// Readonly properties
interface Point {
  readonly x: number;
  readonly y: number;
}

// Readonly Array

let a: number[] = [1, 2, 3, 4];
let ro: ReadonlyArray<number> = a;

a = ro as number[];

// Excess Property Check

interface SquareConfig {
  color?: string;
  width?: number;
  [propName: string]: any;
}

function createSquare2(config: SquareConfig): { color: string; area: number } {
  return {
    color: config.color || 'red',
    area: config.width ? config.width * config.width : 20,
  };
}

let mySquare2 = createSquare2({ colour: 'red', width: 100 });
console.log(mySquare2);
//   Argument of type '{ colour: string; width: number; }' is not assignable to parameter of type 'SquareConfig'.
//     Object literal may only specify known properties, but 'colour' does not exist in type 'SquareConfig'. Did you mean to write 'color'?

// get around these checks
let squareOptions = { colour: 'red', width: 100 };
let mySquare3 = createSquare2(squareOptions);

console.log(mySquare3);

let squareOptions2 = { colour: 'red' };
let mySquare4 = createSquare(squareOptions);
// Type '{ colour: string; }' has no properties in common with type 'SquareConfig'.
console.log(mySquare4);

export {};
