FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
LABEL maintainer "hirokiyokoyama <hiroki.yokoyama@okadanet.org>"

RUN apt-get update \
    && apt-get install -y ffmpeg libsm6

RUN pip install --upgrade pip

RUN pip install tensorflow_datasets \
        scipy pillow opencv-python

RUN pip install jupyter_http_over_ws \
    && jupyter serverextension enable --py jupyter_http_over_ws

CMD [ "jupyter", "notebook", \
      "--NotebookApp.allow_origin='https://colab.research.google.com'", \
      "--port=8844", \
      "--allow-root", \
      "--NotebookApp.port_retries=0" ]

