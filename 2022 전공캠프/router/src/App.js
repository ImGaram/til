import logo from './logo.svg';
import './App.css';
import {Route, Routes} from 'react-router-dom';
import About from './pages/About';
import Home from './pages/Home';
import Profile from './pages/Profile';

const App=()=> {
  return (
    <Routes>
      <Route path="/" element={<Home/>}/>
      <Route path="/about" element={<About/>}/>
      <Route path="/profiles/:username" element={<Profile/>} />
    </Routes>
  );
};

export default App;