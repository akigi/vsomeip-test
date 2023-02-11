IMAGE_DIR=$1
echo $IMAGE_DIR
IMAGE_NAME=akigi/${IMAGE_DIR}:latest
echo build $IMAGE_NAME
sudo docker build -t $IMAGE_NAME ${IMAGE_DIR}