# React Redux Best Practices

<aside class="notice">
Differentiate Presentational Components and Container Components. <br />
When we are architecting a react application with redux, we should split our components into presentational and container components.
</aside>

## Presentational Components
Presentational components are components that render HTML. All our presentational components are stateless components, so are written as functional stateless components unless they need state and lifecycle hooks. Presentational components will not interact with redux store for state. They receive data via props and render it.

```jsx
export const TodoView = ({ todo }) => (
  <div>Task:{todod.task}</div>
);
```

## Container Components
Container components are for getting data from redux store and providing the data to the presentational components. They tend to be stateful.

```jsx
import React, { Component } from 'react';
import { connect } from 'react-redux';
import {TodoView} from './TodoView';

class Todo extends Component {
  render() {
    return <div> <TodoView {...this.props}/> </div>);
  }
}

const stateToProps = state => ({
  todo:state.todo,
});

export default connect(mapStateToProps)(Todo);
```

<aside class="success">
We can also declare Container Component as Functional Component
</aside>

```jsx
import React, { Component } from 'react';
import { connect } from 'react-redux';
import {TodoView} from './TodoView';

const Todo = () => (
  <div> <TodoView {...this.props}/> </div>)
)

const stateToProps = state => ({
  todo:state.todo,
});

export default connect(mapStateToProps)(Todo);
```

<aside class="notice">
We can see improved performance when using stateless functional components.These components avoid unnecessary checks and memory allocations and are therefore more performant.
</aside>

<aside class="notice">
It will be easy to test a component , if you write the component as simple as possible by splitting presentational components and container components.
</aside>
  
## Avoid setState

<aside class="warning">
Try to avoid using setState and component lifecycle hooks when using Redux
</aside>

Manage the application state using redux store when it is global state. Try to avoid using setState in your component when you are using state management libraries like redux. Use component state when it makes sense ie. A Button component that shows a tooltip when hovered would not use Redux.


## Write cleaner code using ES6 Features

Writing cleaner code will make the developers life easy to understand and maintain the code. ES6 features will give us much cleaner way of writing code in React.

<aside class="notice">
Use Destructuring & spread attributes
</aside>

### Avoid this.

```jsx
class AutoloadingPostsGrid extends React.Component {
  render() {
    return (
      <div className={this.props.className}>
        <PostsGrid gridVal={this.props.gridVal} userId={this.props.userId} panelNo={this.props.panelNo} />
        <button onClick={this.handleLoadMoreClick}>Load more</button>
      </div>
    );
  }
}
```

### Instead do this.

```jsx
class AutoloadingPostsGrid extends React.Component {
  render() {
    const {
      className,
      ...others  // contains all properties of this.props except for className
    } = this.props;
    return (
      <div className={className}>
        <PostsGrid {...others} />
        <button onClick={this.handleLoadMoreClick}>Load more</button>
      </div>
    );
  }
}
```
<aside class="notice">
Use Arrow functions
</aside>

### Avoid this:

```jsx
constructor() {
    super();
    this.renderTodoList.bind(this);
  }

  renderTodoList(arrayOfTodos) {
    var arrayOfComponents = [];
    for (i = 0; i < arrayOfTodos.length; i++) {
      var thisTodo = arrayOfTodos[i];
      arrayOfComponents.push(<Todo key={thisTodo.id} text={thisTodo.text} />);
    }
    return arrayOfComponents;
  }
```

### Instead do this:

```jsx
  renderTodoList = arrayOfTodos =>
    arrayOfTodos.map(todo => <Todo key={todo.id} {...todo} />);
```

## Use Flow Types

<aside class="notice">
  Type checking is expected to be the future of JS.
</aside>

As the javascript project grows without typing, the more difficult refactoring will become. The larger the project the higher the risk when refactoring. Using type checking may not completely eliminate risk but it will greatly reduce it.

### Benefits in using flow:

* On time detection of bugs or errors.
* Communicates the purpose of the function.
* It Scales Down Complex Error Handling.
* Wipes Out Runtime Type Errors.
  
## Use Axios library

<aside class="notice">
  Use Axios library for http requests over jQuery ajax
</aside>

Fetch API and axios are the most preferable ways of making http requests. Between those two there are some advantages of using axios library. They are
* It allows performing transforms on data before request is made or after response is received.
* It allows you to alter the request or response entirely (headers as well). also perform async operations before request is made or before Promise settles.
* Built-in XSRF protection.




