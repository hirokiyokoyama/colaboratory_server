# colaboratory_server

Docker container that runs google colaboratory local runtime with tensorflow-gpu.

## Usage
1. Run build.sh, which builds the docker image named "colab-local-py3".
1. Run run_on_(nvidia_docker|nvidia_docker2).sh depending on which you use, which starts docker container that runs the local runtime.
1. On a colab notebook, connect to the local runtime with URL "http://localhost:8890/".
