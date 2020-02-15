
# Docker with Anaconda and Spacy - tutorial 

## Build docker image and name it my-spacy

`docker build -t my-spacy .`

## Run container

docker run --name spacy -i -t -p  8888:8888 my-spacy /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks   --allow-root --ip='*' --port=8888 --no-browser"


## Check out this tutorial to see if this is running

https://spacy.io/usage

## To get around the import spacy
                     
                     spacy.prefer_gpu()
                     nlp = spacy.load("en_core_web_sm")
                     
issues run this from the notebook:

'!pip install https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-2.2.0/en_core_web_sm-2.2.0.tar.gz'

then:

'import en_core_web_sm'

'nlp = en_core_web_sm.load()'

per this:
https://github.com/explosion/spaCy/issues/4577



## Stop container and remove before re-running

`docker stop spacy`

`docker rm spacy`
