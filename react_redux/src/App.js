import { useState } from 'react';
import './App.css';
import AddNumberRoot from './components/AddNumberRoot';
import DisplayNumberRoot from './components/DisplayNumberRoot';

function App() {
  const [number, setNumber] = useState(0);
  const onClick = (size) => {
    setNumber(number + size);
  };
  return (
    <div className="App">
      <h1>Root</h1>
      <AddNumberRoot onClick={onClick} />
      <DisplayNumberRoot number={number} />
    </div>
  );
}

export default App;
