const socket = io();

const myFace = document.getElementById('myFace');
const muteBtn = document.getElementById('mute');
const cameraBtn = document.getElementById('camera');

let muted = false;
let cameraOff = false;
let myStream;

async function getMedia() {
  try {
    myStream = await navigator.mediaDevices.getUserMedia({
      audio: true,
      video: true,
    });
    myFace.srcObject = myStream;
  } catch (error) {
    console.log(error);
  }
}

getMedia();

function handleMuteClick() {
  if (!muted) {
    muteBtn.innerText = 'Unmuted';
    muted = true;
  } else {
    muteBtn.innerText = 'Mute';
    muted = false;
  }
}
function handleCameraClick() {
  if (cameraOff) {
    cameraBtn.innerText = 'Turn camera Off';
    cameraOff = false;
  } else {
    cameraBtn.innerText = 'Turn camera On';
    cameraOff = true;
  }
}

muteBtn.addEventListener('click', handleMuteClick);
cameraBtn.addEventListener('click', handleCameraClick);
