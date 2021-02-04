import { createStore } from 'redux';

export default createStore((state, action) => {
  if (state === undefined) {
    return { number: 0 };
  }

  if (action.type === 'INCREMENT') {
    return { ...state, number: action.size + state.number };
  }

  return state;
}, window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__());
