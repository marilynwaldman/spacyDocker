
#  Dockerized Jupyter Notebook for pytextrank as found in Paco's recent Spacy.io release

https://spacy.io/universe/project/spacy-pytextrank

## Build docker image and name it my-spacy

`docker build -t my-pytextrankdemo
 .`

## Run container

`docker run --name pytextrankdemo -i -t -v "$PWD"/Notebooks:/opt/notebooks/examples -p 8888:8888 my-spacy /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet  && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks  --allow-root --ip='*' --port=8888 --no-browser"
`

## Stop container and remove before re-running

`docker stop pytextrankdemo`

`docker rm pytextrankdemo`
