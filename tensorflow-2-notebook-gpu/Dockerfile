# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=d4n1el/scipy-notebook-gpu
FROM $BASE_CONTAINER

LABEL maintainer="Daniel Chen <team6612@gmail.com>"

# Install Tensorflow
RUN pip install --quiet --no-cache-dir \
    'tensorflow-gpu==2.0.0-alpha0' \
    'jupyter-tensorboard' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
