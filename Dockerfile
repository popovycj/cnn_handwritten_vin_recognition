# Use an official TensorFlow runtime as a parent image
FROM tensorflow/tensorflow

# Set the working directory in the container
WORKDIR /app

# Add current directory files
COPY . /app

# Install any needed packages and additional system libraries
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx

RUN pip install --no-cache-dir Pillow argparse numpy opencv-python-headless

# Run inference.py when the container launches, with a default argument
CMD ["python", "-u", "./interface_script.py", "--input", "test_data"]
