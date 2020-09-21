#/bin/bash
echo "Build step"
sudo docker build -t lforlinux/helloworldrepo .
echo "Pushing to registry"
sudo docker push lforlinux/helloworldrepo