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
  //파일 다운로드
  await model.save('downloads://lemon');
  //로컬 저장소 이용
  await model.save('localstorage://lemon');
  // IndexedDB 이용
  await model.save('indexeddb://my-model');
  // HTTP(S) 요청
  await model.save('http://model-server.domain/upload');

  //네이티브 파일 시스템 (for Node.js)
  await model.save('file:///path/to/my-model');
});
