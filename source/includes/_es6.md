# ES6 and beyond
Developers which have recently discovered the power of ES6 often feel compelled to use them on every occasion. This is not a very good idea as it can quickly lead to unreadable code. With great power comes great responsibility.

## Variables: var, let and const
* Consider var deprecated. There is no use case for it anymore.
* Consider var deprecated. There is no use case for it anymore.
* There's very few use cases for let. On many occasions you can use functions like map and reduce to avoid using it.
  
```javascript
// deprecated:
var foo = 'foo';

// avoid:
let bar = 'bar';

// avoid:
const foo = 'foo',
  bar = 'bar',
  baz = 'baz';

// recommended:
const foo = 'foo';
const bar = 'bar';
const baz = 'baz';
```

## Variables: declaration and usage
* Declare variables where you use them.
* Declare each variable as a full statement. It avoids the dangling comma discussion.
* Separate logical chunks of code with an empty line.
```javascript
const foo = 'foo';
const bar = 'bar';
// use foo and bar

const baz = 'baz';
// use baz

const qux = 'qux';
// use qux
```

## Arrow functions

* Consider anonymous functions deprecated. We have arrow functions for that now.
* Use arrow functions only as part of a larger (named) entity, not as a stand-alone entity.
* Declare functions after using them by leveraging function hoisting.

```javascript
// deprecated
function (string) {
  return string.toLocaleUpperCase();
}

// recommended
function upper(string) {
  return string.toLocaleUpperCase();
}

// use wisely
string => string.toLocaleUpperCase()

// if it fits your style
const upper = string => string.toLocaleUpperCase()
```
With the addition of the arrow function syntax, we have gained a very elegant and convenient way to define anonymous functions. Because they use 'lexical this', usage of this is more predictable. Therefore you should use arrows instead of regular anonymous functions.

## Pure functions

* Don't use shared mutable state or access variables from outer scope.
* Don't cause any side effects by running a function.
* Don't mutate any passed arguments, return a new value instead.

```javascript
// avoid side-effects
let x;
function inc() {
  x++;
}

// recommended
function inc(x) {
  return x + 1;
}

// avoid mutation
function inc(object) {
  object.value++;
}

// recommended
function inc(object) {
  return { ...object, value: object.value + 1 };
}
```

## Classes

* Only use classes if you have a very good reason for it.
* Prefer composition over inheritance ("foo HAS a bar" instead of "foo IS a bar").
* Never inherit more than one level deep.
* Never use instanceof checks, use duck typing instead.

Classes have always been a hot topic of discussion in the JavaScript world. ES6 has introduced a new way to define classes, even though there is a growing tendency to avoid them. Programmers coming from an OOP background will appreciate them while the more functionally inclined don't like them. Developers working with React and Redux mostly prefer the functional approach, which is why using classes is discouraged. Downsides include:

* Classes encourage mutation because they contain state.
* Classes encourage coupling because they are used as contracts.
* Classes encourage inheritance, but we want composition.
* Instances can't be easily cloned without losing their type, making it hard to write pure functions.
* Instance methods can't really be pure, it wouldn't make sense.
* Properties are never really private.



