// import React from 'react';
// import AddNumber from '../components/AddNumber';
// import store from '../store';

// export default () => {
//   const onClick = (size) => {
//     store.dispatch({ type: 'INCREMENT', size });
//   };
//   return <AddNumber onClick={onClick} />;
// };

import AddNumber from '../components/AddNumber';
import { connect } from 'react-redux';

const mapDispatchToProps = (dispatch) => {
  return {
    onClick: (size) => {
      dispatch({ type: 'INCREMENT', size });
    },
  };
};

export default connect(null, mapDispatchToProps)(AddNumber);
