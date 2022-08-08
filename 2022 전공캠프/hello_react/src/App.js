// import logo from './logo.svg';
import React, { Component } from 'react';
import './App.css';

// function App() {
//   const name = '리액트'
//   return (
//     <div>
//       <div className='react'>{name}</div>
      
//       <h1>들여쓰기가 이상한</h1>
//       <h2>코드</h2>
//       <p>입니다.</p>
//     </div>
//   );
//   // <input/>
// }

class App extends Component {
  render() {
    const name = 'react';
    return(
      <div className='react'>
        {name}
      </div>
    );
  }
}
export default App;
