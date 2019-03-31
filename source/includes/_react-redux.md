

## Differentiate Presentational Components and Container Components.

When we are architecting a react application with redux, we should split our components into presentational and container components.

#### Presentational Components
Presentational components are components that render HTML. All our presentational components are stateless components, so are written as functional stateless components unless they need state and lifecycle hooks. Presentational components will not interact with redux store for state. They receive data via props and render it.

```javascript
export const TodoView = ({ todo }) => (
  <div>Task:{todod.task}</div>
);
```

#### Container Components
Container components are for getting data from redux store and providing the data to the presentational components. They tend to be stateful.

```javascript
import React from 'react';
import { connect } from 'react-redux';
import {LoggedinUsername} from './LoggedinUsername';

const LoginSection = ({ username }) =>(
<div>
 <LoggedinUsername username={username}/>
</div>);

const mapStateToProps = state => ({
username:state.username,
});

export const LoginSectionContainer = connect(mapStateToProps)(LoginSection);
```

#### Points to be noted:

* We can see improved performance when using stateless functional components.These components avoid unnecessary checks and memory allocations and are therefore more performant.
* It will be easy to test a component , if you write the component as simple as possible by splitting presentational components and container components.
  
## Try to avoid using setState and component lifecycle hooks when using Redux:

Manage the application state using redux store when it is global state. Try to avoid using setState in your component when you are using state management libraries like redux. Use component state when it makes sense ie. A Button component that shows a tooltip when hovered would not use Redux.


## Write cleaner code using ES6 Features

Writing cleaner code will make the developers life easy to understand and maintain the code. ES6 features will give us much cleaner way of writing code in React.

### Use Destructuring & spread attributes:
Avoid this.

```javascript
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
Instead do this.
```javascript
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

### Use Arrow functions:
Avoid this:
```javascript
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

Instead do this:
```javascript
  renderTodoList = arrayOfTodos =>
    arrayOfTodos.map(todo => <Todo key={todo.id} {...todo} />);
```

### Use Flow Types

One thing is certain that type checking is expected to be the future of JS.

As the javascript project grows without typing, the more difficult refactoring will become. The larger the project the higher the risk when refactoring. Using type checking may not completely eliminate risk but it will greatly reduce it.

#### Benefits in using flow:
* On time detection of bugs or errors.
* Communicates the purpose of the function.
* It Scales Down Complex Error Handling.
* Wipes Out Runtime Type Errors.
  
#### Use axios library for http requests over jQuery ajax:

Fetch API and axios are the most preferable ways of making http requests. Between those two there are some advantages of using axios library. They are
* It allows performing transforms on data before request is made or after response is received.
* It allows you to alter the request or response entirely (headers as well). also perform async operations before request is made or before Promise settles.
* Built-in XSRF protection.
  
### Use styled-components to style your components

The basic idea of styled-components is to enforce best practices by removing the mapping between styles and components. This way, you can colocate your components with their corresponding styles — resulting in localised class names that do not pollute the global css namespace.



