# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=d4n1el/scipy-notebook-gpu
FROM $BASE_CONTAINER

LABEL maintainer="Emmanuel Benazera <emmanuel.benazera@jolibrain.com>"

# Install Tensorflow
RUN conda install --quiet --yes \
    'tensorflow-gpu=1.12*' \
    'keras=2.2*' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
