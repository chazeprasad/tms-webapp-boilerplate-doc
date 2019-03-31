### Use === Instead of ==

JavaScript utilizes two different kinds of equality operators

```javascript 
a === b
a !== b
``` 
and 

```javascript
a == b
a != b
 ```
when working with == and !=, you'll run into issues when working with different types. In these cases, they'll try to coerce the values, unsuccessfully.

### Don't Use Short-Hand

Technically, you can get away with omitting most curly braces and semi-colons. Most browsers will correctly interpret the following:

#### Bad

```javascript
if(someVariableExists)
x = fals
```
#### Better

```javascript
if(someVariableExists)
x = false
```
### Declare Variables Outside of the For Statement

When executing lengthy "for" statements, don't make the engine work any harder than it must. For example:

#### Bad
```javascript

for(var i = 0; i < someArray.length; i++) {
   var container = document.getElementById('container');
   container.innerHtml += 'my number: ' + i;
   console.log(i);
}

```

### Better
```javascript
var container = document.getElementById('container');
for(var i = 0, len = someArray.length; i < len;  i++) {
   container.innerHtml += 'my number: ' + i;
   console.log(i);
}
```

### Comment Your Code

It might seem unnecessary at first, but you must comment your code as best as possible. What happens when you return to the project months later, only to find that you can't easily remember what your line of thinking was. Or, what if one of your colleagues needs to revise your code? Always, always comment important sections of your code.

```javascript
// Cycle through array and echo out each name. 
for(var i = 0, len = array.length; i < len; i++) {
   console.log(array[i]);
}
```

### Always, Always Use Semicolons
Technically, most browsers will allow you to get away with omitting semi-colons.

#### Bad
```javascript
var someItem = 'some string'
function doSomething() {
  return 'something'
}
```
Having said that, this is a very bad practice that can potentially lead to much bigger and harder to find, issues.

#### Better
```javascript
var someItem = 'some string';
function doSomething() {
  return 'something';
}
```


