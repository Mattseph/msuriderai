// More API functions here:
// https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/image

// the link to your model provided by Teachable Machine export panel
const URL = "https://teachablemachine.withgoogle.com/models/cAt3TQ3_A/";

let model, webcam, maxPredictions, messageContainer;

let isCameraRunning = false;
// Load the image model and setup the webcam
async function init() {
    if (webcam && webcam.playing) {
        webcam.stop(); // Stop the previous camera instance if it exists and is playing
    }
    
    const modelURL = URL + "model.json";
    const metadataURL = URL + "metadata.json";

    // load the model and metadata
    // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
    // or files from your local hard drive
    // Note: the pose library adds "tmImage" object to your window (window.tmImage)
    model = await tmImage.load(modelURL, metadataURL);
    maxPredictions = model.getTotalClasses();

    // Convenience function to setup a webcam
    const flip = true; // whether to flip the webcam
    webcam = new tmImage.Webcam(250, 250, flip); // width, height, flip
    await webcam.setup(); // request access to the webcam
    await webcam.play();
    window.requestAnimationFrame(loop);

    document.getElementById('webcam-container').style.display = 'block';
    document.getElementById('message-container').style.display = 'block';
    document.getElementById('stopCamera').style.display = 'block';
    document.getElementById('startCamera').style.display = 'none';
    // append elements to the DOM
    const webcamContainer = document.getElementById("webcam-container");
    webcamContainer.innerHTML = "";
    webcamContainer.appendChild(webcam.canvas);
    messageContainer = document.getElementById("message-container");

}

function startCamera() {
    if (!isCameraRunning) {
        isCameraRunning = true;
        init();
    }
}

function stopCamera() {
    if (isCameraRunning) {
        webcam.stop();
        isCameraRunning = false;
        document.getElementById('webcam-container').style.display = 'none';
        document.getElementById('message-container').style.display = 'none';
        document.getElementById('stopCamera').style.display = 'none';
        document.getElementById('startCamera').style.display = 'block';
    }
}

async function loop() {
    webcam.update(); // update the webcam frame
    await predict();
    window.requestAnimationFrame(loop);
}

function clearCanvas() {
    const canvas = webcam.canvas;
    const context = canvas.getContext('2d');
    context.clearRect(0, 0, canvas.width, canvas.height);
}

// run the webcam image through the image model
async function predict() {
    // predict can take in an image, video or canvas html element
    const prediction = await model.predict(webcam.canvas);

    let highestPrediction = null;

    for (let i = 0; i < maxPredictions; i++) {
        if (!highestPrediction || prediction[i].probability > highestPrediction.probability) {
            highestPrediction = prediction[i];
        }
    }

    if (highestPrediction && highestPrediction.probability > 0.9) {
        const driverNumber = highestPrediction.className;
        sendDriverNumber(driverNumber);
    } else if (highestPrediction && highestPrediction.probability < 0.7) {
        messageContainer.textContent = "Not Accredited Driver";
    } else {
        messageContainer.textContent = "Please scan a plate number";
    }
}

    // Send an HTTP request with the driver's number to the PHP script
function sendDriverNumber(driverNumber) {
    window.location.href = './driver/camera-platenumber.php?driverNumber=' + driverNumber;
}

// function showCameraModal() {
//     $('#cameraModal').modal('show');
// }




