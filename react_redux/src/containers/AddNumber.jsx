import React from 'react';
import AddNumber from '../components/AddNumber';
import store from '../store';

export default () => {
  const onClick = (size) => {
    store.dispatch({ type: 'INCREMENT', size });
  };
  return <AddNumber onClick={onClick} />;
};
