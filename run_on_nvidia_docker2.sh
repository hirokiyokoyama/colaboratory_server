docker run --runtime=nvidia -it --rm -p 8890:8890 --cap-add SYS_ADMIN --device /dev/fuse \
  --security-opt apparmor=unconfined colab-local-py3
