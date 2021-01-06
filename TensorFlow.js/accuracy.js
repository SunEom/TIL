const tf = require('@tensorflow/tfjs');

const temperature = [20, 21, 22, 23, 24];
const salesVolume = [40, 42, 44, 46, 48];
const cause = tf.tensor(temperature);
const result = tf.tensor(salesVolume);

const X = tf.input({ shape: [1] });
const Y = tf.layers.dense({ units: 1 }).apply(X);
const model = tf.model({ inputs: X, outputs: Y });
const compileParam = { optimizer: tf.train.adam(), loss: tf.losses.meanSquaredError };
model.compile(compileParam);

const fitParam = {
  epochs: 100,
  callbacks: {
    onEpochEnd: (epoch, logs) => {
      console.log('epoch', epoch, logs);
    },
  },
};
model.fit(cause, result, fitParam).then(() => {
  model.predict(cause).print();
});
