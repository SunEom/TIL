import React, { useState } from 'react';

const AddNumber = ({ onClick }) => {
  const [size, setSize] = useState(1);

  return (
    <div>
      <h1>Add Number</h1>
      <input
        type="button"
        value="+"
        onClick={() => {
          onClick(size);
        }}
      />
      <input
        type="text"
        value={size}
        onChange={(e) => {
          setSize(+e.target.value);
        }}
      />
    </div>
  );
};

export default AddNumber;
