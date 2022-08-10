import React from 'react';
import './index.css';
import App from './App';
// import { ReactDOM } from 'react-dom/client';
import {BrowserRouter} from 'react-router-dom'

const ReactDOM = require('react-dom/client');
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <BrowserRouter>
    <App />
  </BrowserRouter>
);