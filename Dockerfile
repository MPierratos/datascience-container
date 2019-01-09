FROM jupyter/datascience-notebook

# install packages using anaconda
RUN conda install --quiet --yes -c \
    conda-forge dask

# install packages using pip
RUN pip install -U tensorflow \
                   imutils \
                   plotly \
                   tqdm

RUN mkdir /tmp/tflearn_logs

# mount folders
VOLUME ["/data", "/notebooks", "/tmp/tflearn_logs"]
WORKDIR /notebooks