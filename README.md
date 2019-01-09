# Docker for Data Science 

Generate a docker container with data science stack installed.

This will install jupyter notebook with Python, R, and Julia.

Tensorflow cpu is installed with an exposed port for TensorBoard.

## Getting Started

#### 1. Install Docker Hub

Here are instructions to install Docker on Windows: https://docs.docker.com/docker-for-windows/install/


#### 2. Clone Repo

`git clone https://github.com/MPierratos/datascience-container.git`

#### 3. Build Container

Run this command the first build

`docker-compose up`

If you make adjustments to your dockerfile, you can recreate the build with:

`docker-compose up --build`


#### 4. Connect to Jupyter Notebook

After the build, there will be a prompt with a URL to connect to jupyter.

#### 5. Running TensorBoard

The Dockerfile will generate a directory to save the tensorflow logs `/tmp/tflearn_logs`. 

We use tf.keras.callbacks to send the model logs to tensorboard. You can execute the cell in the sample notebook taken from the tensorflow website (https://www.tensorflow.org/tutorials/). 

Running `tensorboard --logdir=/tmp/tflearn_logs` will prompt a link to the 6006 port. If this link doesn't work, try `localhost:6006`.



