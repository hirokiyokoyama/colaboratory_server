nvidia-docker run -it --rm -p 8844:8844 --cap-add SYS_ADMIN --device /dev/fuse \
  --security-opt apparmor=unconfined -e PASSWORD=$1 colab-local
