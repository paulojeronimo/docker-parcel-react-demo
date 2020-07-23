import ReactDOM from 'react-dom'
import React from 'react'
import name from './whoami'

function App() {
  return <h1>Hello, {name}!</h1>
}

ReactDOM.render(<App />, document.getElementById('app'))
