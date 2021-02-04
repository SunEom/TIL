import React from 'react';

const DisplayNumber = ({ number }) => {
  return (
    <div>
      <h1>Display Number</h1>
      <input type="text" value={number} readOnly />
    </div>
  );
};

export default DisplayNumber;
