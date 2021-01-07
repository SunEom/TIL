const tf = require('@tensorflow/tfjs');

const { boston_cause, boston_result } = require('./housePriceData');

const cause = tf.tensor(boston_cause);
const result = tf.tensor(boston_result);

// shape : 독립변수의 개수
const X = tf.input({ shape: [13] });
const Y = tf.layers.dense({ units: 1 }).apply(X);
const model = tf.model({ inputs: X, outputs: Y });
const compileParam = { optimizer: tf.train.adam(), loss: tf.losses.meanSquaredError };
model.compile(compileParam);

const fitParam = {
  epochs: 3000,
  callbacks: {
    onEpochEnd: (epoch, logs) => {
      console.log('epoch', epoch, 'RMSE => ', Math.sqrt(logs.loss));
    },
  },
};
model.fit(cause, result, fitParam).then(() => {
  model.predict(cause).print();
  const ws = model.getWeights();
  const weight = ws[0];
  const bias = ws[1];
  weight.print();
  bias.print();
});
