FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
LABEL maintainer "hirokiyokoyama <h-yokoyama@craft-server.co.jp>"

RUN apt-get update \
    && apt-get install -y ffmpeg libsm6 wget git

RUN pip install --upgrade pip

RUN pip install tensorflow_datasets \
        scipy scikit-learn pillow opencv-python \
        google-colab tensorflow_addons

RUN pip install jupyter_http_over_ws \
    && jupyter serverextension enable --py jupyter_http_over_ws
RUN pip install --upgrade ipykernel

CMD [ "jupyter", "notebook", \
      "--NotebookApp.allow_origin='https://colab.research.google.com'", \
      "--NotebookApp.token=''", \
      "--NotebookApp.port=8890", \
      "--NotebookApp.disable_check_xsrf=True", \
      "--allow-root", \
      "--ip=0.0.0.0", \
      "--no-browser", \
      "--NotebookApp.port_retries=0" ]

