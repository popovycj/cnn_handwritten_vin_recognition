# Vehicle Identification Number (VIN) Character Recognition
## Overview
This project is about recognizing the characters in Vehicle Identification Numbers (VIN). We are training a model on the EMNIST (Extended MNIST) dataset to recognize characters and then using the trained model to predict the characters in VIN images. This project filters out some characters that are not used in VINs, so we only train on and recognize valid VIN characters.

## Data
The EMNIST dataset is a set of handwritten characters and digits that is an extension of the original MNIST dataset. The EMNIST dataset is split into different subsets, one of which is the "Letters" dataset that includes 26 classes of balanced handwritten letters (both upper-case and lower-case letters are merged into single classes). We use this dataset for our training and testing.

## Method
We utilize a Convolutional Neural Network (CNN) model in Tensorflow for the task. The model structure is as follows:

Convolutional layer with 32 filters of size (3,3) and 'relu' activation
MaxPooling layer with pool size (2,2)
Convolutional layer with 64 filters of size (3,3) and 'relu' activation
MaxPooling layer with pool size (2,2)
Flatten layer
Dense layer with 128 neurons and 'relu' activation
Dropout layer with rate 0.5
Output Dense layer with 33 neurons (for 33 classes) and 'softmax' activation
The model is trained for 3 epochs with a batch size of 128 using the 'adam' optimizer and the 'categorical_crossentropy' loss function. The model's performance is evaluated based on accuracy.

## Accuracy
The model's accuracy based on training dataset is more than 97,4% and loss is 8%

## Usage
### Training
You can train the model by running the training script. Ensure that you have the necessary dependencies installed (numpy, tensorflow, tensorflow_datasets).

### Inference
To run the inference script, use the following command:

#### To build image:
```docker build -t <image name> .```

#### To run container:
```docker run -it --rm <image name> python3 /app/interface_script.py --input=<folder name without slashes>```

## Author
Marian Popovych
