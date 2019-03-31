# JavaScript | ES6 Best Practices

## Variables: `var, let and const`

<aside class="warning">
Consider <code>var</code> deprecated. There is no use case for it anymore.
</aside>

<aside class="notice">
There's very few use cases for <code>let</code>. On many occasions you can use functions like <code>map</code> and <code>reduce</code> to avoid using it.
</aside>

### Deprecated:
```jsx

var foo = 'foo';

```

### Avoid:
```jsx
let bar = 'bar';
```

### Avoid:
```jsx
const foo = 'foo',
  bar = 'bar',
  baz = 'baz';
  ```

### Recommended:
```jsx
const foo = 'foo';
const bar = 'bar';
const baz = 'baz';
```

<aside class="notice">
Declare variables where you use them.
</aside>
<aside class="notice">
Declare each variable as a full statement. It avoids the dangling comma discussion.
</aside>
<aside class="notice">
Separate logical chunks of code with an empty line.
</aside>


## Arrow functions

With the addition of the arrow function syntax, we have gained a very elegant and convenient way to define anonymous functions. Because they use 'lexical this', usage of this is more predictable. Therefore you should use arrows instead of regular anonymous functions.

<aside class="warning">
Consider anonymous functions deprecated. We have arrow functions for that now.
</aside>

<aside class="notice">
Use arrow functions only as part of a larger (named) entity, not as a stand-alone entity.
</aside>

<aside class="notice">
Declare functions after using them by leveraging function hoisting.
</aside>


### Deprecated
```jsx
function (string) {
  return string.toLocaleUpperCase();
}
```
### Recommended
```jsx
function upper(string) {
  return string.toLocaleUpperCase();
}
```
### Use wisely
```jsx
string => string.toLocaleUpperCase()

// if it fits your style
const upper = string => string.toLocaleUpperCase()
```

## Declare Outside of the `for`

When executing lengthy "for" statements, don't make the engine work any harder than it must. For example:

### Bad
```jsx

for(var i = 0; i < someArray.length; i++) {
   var container = document.getElementById('container');
   container.innerHtml += 'my number: ' + i;
   console.log(i);
}

```

### Better
```jsx
var container = document.getElementById('container');
for(var i = 0, len = someArray.length; i < len;  i++) {
   container.innerHtml += 'my number: ' + i;
   console.log(i);
}
```


## Use === Instead of ==

JavaScript utilizes two different kinds of equality operators

```jsx 
a === b
a !== b
``` 
and 

```jsx
a == b
a != b
 ```

<aside class="notice">
when working with == and !=, you'll run into issues when working with different types. In these cases, they'll try to coerce the values, unsuccessfully.
</aside>

## Don't Use Short-Hand

Technically, you can get away with omitting most curly braces and semi-colons. Most browsers will correctly interpret the following:

### Bad

```jsx
if(someVariableExists)
x = fals
```
### Better

```jsx
if(someVariableExists)
x = false
```


## Comment Your Code

It might seem unnecessary at first, but you must comment your code as best as possible. What happens when you return to the project months later, only to find that you can't easily remember what your line of thinking was. Or, what if one of your colleagues needs to revise your code? Always, always comment important sections of your code.

```jsx
// Cycle through array and echo out each name. 
for(var i = 0, len = array.length; i < len; i++) {
   console.log(array[i]);
}
```

## Always, Always Use Semicolons
Technically, most browsers will allow you to get away with omitting semi-colons.

### Bad
```jsx
var someItem = 'some string'
function doSomething() {
  return 'something'
}
```
Having said that, this is a very bad practice that can potentially lead to much bigger and harder to find, issues.

### Better
```jsx
var someItem = 'some string';
function doSomething() {
  return 'something';
}
```

## Pure functions

<aside class="warning">
Don't use shared mutable state or access variables from outer scope.
</aside>
<aside class="warning">
Don't cause any side effects by running a function.
</aside>
<aside class="warning">
Don't mutate any passed arguments, return a new value instead.
</aside>


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

Classes have always been a hot topic of discussion in the JavaScript world. ES6 has introduced a new way to define classes, even though there is a growing tendency to avoid them. Programmers coming from an OOP background will appreciate them while the more functionally inclined don't like them. Developers working with React and Redux mostly prefer the functional approach, which is why using classes is discouraged. Downsides include: <br />

* Classes encourage mutation because they contain state.
* Classes encourage coupling because they are used as contracts.
* Classes encourage inheritance, but we want composition.
* Instances can't be easily cloned without losing their type, making it hard to write pure functions.
* Instance methods can't really be pure, it wouldn't make sense.
* Properties are never really private.

<aside class="warning">
Only use classes if you have a very good reason for it.
</aside>
<aside class="success">
Prefer composition over inheritance ("foo HAS a bar" instead of "foo IS a bar").
</aside>
<aside class="warning">
Never inherit more than one level deep.
</aside>
<aside class="warning">
Never use instanceof checks, use duck typing instead.
</aside>






