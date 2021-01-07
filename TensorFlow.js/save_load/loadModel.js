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
  //로컬 저장소
  const localModel = await tf.loadLayersModel('localstorage://my-model');
  //IndexedDB
  const indexedDBModel = await tf.loadLayersModel('indexeddb://my-model');
  //HTTP(S)
  const httpModel = await tf.loadLayersModel('http://model-server.domain/download/model.json');

  //Native File System (for Node.js)
  const nodeModel = await tf.loadLayersModel('file://path/to/my-model/model.json');
});
