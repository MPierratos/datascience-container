FROM jupyter/datascience-notebook

# install packages using anaconda
RUN conda install --quiet --yes -c \
    conda-forge dask

# install packages using pip
RUN pip install -U tensorflow \
                   imutils \
                   plotly \
                   tqdm \
                   requests \
                   BeautifulSoup4 \
                   selenium

RUN mkdir /tmp/tflearn_logs

# mount tflogs
VOLUME ["/tmp/tflearn_logs"]


