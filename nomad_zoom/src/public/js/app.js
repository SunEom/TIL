const socket = io();

const myFace = document.getElementById('myFace');
const muteBtn = document.getElementById('mute');
const cameraBtn = document.getElementById('camera');
const cameraSelect = document.getElementById('cameras');

let muted = false;
let cameraOff = false;
let myStream;
let roomName;
let myPeerConnection;

async function getCameras() {
  try {
    const devices = await navigator.mediaDevices.enumerateDevices();
    const cameras = devices.filter((device) => device.kind === 'videoinput');
    const currentCamera = myStream.getVideoTracks()[0];
    cameras.forEach((camera) => {
      const option = document.createElement('option');
      option.value = camera.deviceId;
      option.innerText = camera.label;
      if (currentCamera.label === camera.label) {
        option.selected = true;
      }
      cameraSelect.appendChild(option);
    });
  } catch (error) {
    console.log(error);
  }
}

async function getMedia(deviceId) {
  const initialConstraint = {
    audio: true,
    video: { facingMode: 'user' },
  };
  const cameraConstarint = {
    audio: true,
    video: { deviceId: { exact: deviceId } },
  };
  try {
    myStream = await navigator.mediaDevices.getUserMedia(deviceId ? cameraConstarint : initialConstraint);
    myFace.srcObject = myStream;
    if (!deviceId) await getCameras();
  } catch (error) {
    console.log(error);
  }
}

function handleMuteClick() {
  myStream.getAudioTracks().forEach((track) => (track.enabled = !track.enabled));
  if (!muted) {
    muteBtn.innerText = 'Unmuted';
    muted = true;
  } else {
    muteBtn.innerText = 'Mute';
    muted = false;
  }
}
function handleCameraClick() {
  myStream.getVideoTracks().forEach((track) => (track.enabled = !track.enabled));
  if (cameraOff) {
    cameraBtn.innerText = 'Turn camera Off';
    cameraOff = false;
  } else {
    cameraBtn.innerText = 'Turn camera On';
    cameraOff = true;
  }
}

async function handleCameraChange() {
  await getMedia(cameraSelect.value);
}

muteBtn.addEventListener('click', handleMuteClick);
cameraBtn.addEventListener('click', handleCameraClick);
cameraSelect.addEventListener('input', handleCameraChange);

//Welcome Form (join a room)

const welcome = document.getElementById('welcome');
const call = document.getElementById('call');

call.hidden = true;

const welcomeForm = welcome.querySelector('form');

async function initCall() {
  welcome.hidden = true;
  call.hidden = false;
  await getMedia();
  makeConnection();
}

async function handleWelcomeSubmit(event) {
  event.preventDefault();
  const input = welcomeForm.querySelector('input');
  await initCall();
  socket.emit('join_room', input.value);
  roomName = input.value;
  input.value = '';
}

welcomeForm.addEventListener('submit', handleWelcomeSubmit);

//Socket Code

socket.on('welcome', async () => {
  const offer = await myPeerConnection.createOffer();
  myPeerConnection.setLocalDescription(offer);
  console.log('sent the offer');
  socket.emit('offer', offer, roomName);
});

socket.on('offer', async (offer) => {
  myPeerConnection.setRemoteDescription(offer);
  const answer = await myPeerConnection.createAnswer();
  myPeerconnection.setLocalDescription(answer);
  socket.emi('answer', answer, roomName);
});

socket.on('answer', (answer) => {
  myPeerConnection.setRemoteDescription(answer);
});

//RTC Code

function makeConnection() {
  myPeerConnection = new RTCPeerConnection();
  myStream.getTracks().forEach((track) => myPeerConnection.addTrack(track, myStream));
}
