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

//Function Type
interface SearchFunc {
  (source: string, subString: string): boolean;
}

let mySearch: SearchFunc;

mySearch = function (source: string, subString: string) {
  let result = source.search(subString);
  return result >= 1;
};

let mySearch2: SearchFunc;

mySearch2 = function (src: string, sub: string) {
  let result = src.search(sub);
  return result >= 1;
};

let mySearch3: SearchFunc;

mySearch3 = function (src, sub) {
  let result = src.search(sub);
  return result > -1;
};

// Class Types

interface ClockInterface {
  currentTime: Date;
}

class Clock implements ClockInterface {
  currentTime: Date = new Date();
  constructor(h: number, m: number) {}
}

interface ClockInterface2 {
  currentTime: Date;
  setTime(d: Date): void;
}

class Clock2 implements ClockInterface2 {
  currentTime: Date = new Date();
  setTime(d: Date) {
    this.currentTime = d;
  }
  constructor(h: number, m: number) {}
}

/*
Error
// interface ClockConstructor3 {
//   new (hour: number, minute: number);
// }

// class Clock3 implements ClockConstructor3 {
//   currentTime: Date;
//   constructor(h: number, m: number) {}
// }
*/

interface ClockConstructor {
  new (hour: number, minute: number): ClockInterface4;
}

interface ClockInterface4 {
  tick(): void;
}

function createClock(ctor: ClockConstructor, hour: number, minute: number): ClockInterface4 {
  return new ctor(hour, minute);
}

class DigitalClock implements ClockInterface4 {
  constructor(h: number, m: number) {}
  tick() {
    console.log('beep beep');
  }
}

class AnalogClock implements ClockInterface4 {
  constructor(h: number, m: number) {}
  tick() {
    console.log('tick tock');
  }
}

let digital = createClock(DigitalClock, 12, 17);
let analog = createClock(AnalogClock, 7, 32);

//Another ex

interface ClockConstructor2 {
  new (hour: number, minute: number): ClockInterface5;
}

interface ClockInterface5 {
  tick(): void;
}

const Clock3: ClockConstructor2 = class Clock3 implements ClockInterface5 {
  constructor(h: number, m: number) {}
  tick() {
    console.log('beep beep');
  }
};

let clock = new Clock3(12, 17);
clock.tick();

//Extending Interfaces

interface Shape {
  color: string;
}

interface Square extends Shape {
  sideLength: number;
}

let square = {} as Square;
square.color = 'blue';
square.sideLength = 10;

//Hybrid Types

interface Counter {
  (start: number): string;
  interval: number;
  reset(): void;
}

function getCounter(): Counter {
  let counter = function (start: number) {} as Counter;
  counter.interval = 123;
  counter.reset = function () {};
  return counter;
}

let c = getCounter();
c(10);
c.reset();
c.interval = 5.0;

export {};
