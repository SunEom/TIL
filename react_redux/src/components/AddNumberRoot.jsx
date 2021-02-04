import React from 'react';
import AddNumber from './AddNumber';

const AddNumberRoot = ({ onClick }) => {
  return (
    <div>
      <h1>Add Number Root</h1>
      <AddNumber onClick={onClick} />
    </div>
  );
};

export default AddNumberRoot;
