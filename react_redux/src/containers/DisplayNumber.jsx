// import React, { useState } from 'react';
// import DisplayNumber from '../components/DisplayNumber';
// import store from '../store';

// export default () => {
//   const initNumber = store.getState().number;
//   const [number, setNumber] = useState(initNumber);

//   const changeNumber = () => {
//     const newNumber = store.getState().number;
//     setNumber(newNumber);
//   };

//   store.subscribe(changeNumber);

//   return <DisplayNumber number={number} />;
// };

import DisplayNumber from '../components/DisplayNumber';
import { connect } from 'react-redux';

const mapReduxStateToReactProps = (state) => {
  return { number: state.number };
};

export default connect(mapReduxStateToReactProps)(DisplayNumber);
