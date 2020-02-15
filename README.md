
# Docker with Anaconda and Spacy - tutorial 

## Build docker image and name it my-spacy

`docker build -t my-spacy .`

## Run container

docker run --name spacy -i -t -p  8888:8888 my-spacy /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks   --allow-root --ip='*' --port=8888 --no-browser"


## Check out this tutorial to see if this is running



## Stop container and remove before re-running

`docker stop spacy`

`docker rm spacy`
