FROM jupyter/datascience-notebook:5cb007f03275

USER $NB_UID

# R packages
RUN conda install --yes \
    'r-sf=0.9*' && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"