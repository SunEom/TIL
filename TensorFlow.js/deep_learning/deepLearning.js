const tf = require('@tensorflow/tfjs');

const { boston_cause, boston_result } = require('./housePriceData');

const cause = tf.tensor(boston_cause);
const result = tf.tensor(boston_result);

const X = tf.input({ shape: [13] });
const H1 = tf.layers.dense({ units: 13 }).apply(X);
const H2 = tf.layers.dense({ units: 13 }).apply(H1);
const Y = tf.layers.dense({ units: 1 }).apply(H2);
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
});
