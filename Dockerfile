FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
LABEL maintainer "hirokiyokoyama <hiroki.yokoyama@okadanet.org>"

RUN pip install tensorflow_datasets \
        scipy \
        jupyter_http_over_ws \
    && jupyter serverextension enable --py jupyter_http_over_ws

CMD [ "jupyter", "notebook", \
      "--NotebookApp.allow_origin='https://colab.research.google.com'", \
      "--port=8844", \
      "--allow-root", \
      "--NotebookApp.port_retries=0" ]

