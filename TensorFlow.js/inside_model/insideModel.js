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
  epochs: 2000,
  callbacks: {
    onEpochEnd: (epoch, logs) => {
      console.log('epoch', epoch, 'RMSE ->', Math.sqrt(logs.loss));
    },
  },
};

model.fit(cause, result, fitParam).then(async () => {
  const weights = model.getWeights();

  // 가중치와 편향 값을 배열 형태로 받는다.
  const weightArray = await weights[0].array();
  const biasArray = await weights[1].array();

  //가중치와 편향 값을 확인한다.
  const weight = weightArray[0][0];
  const bias = biasArray[0];
  console.log(weight, bias);
});