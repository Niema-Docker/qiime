# Minimal Docker image for QIIME using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install QIIME
RUN micromamba create -y -n qiime -c conda-forge -c anaconda -c bioconda qiime==1.9.1 && \
    micromamba clean --all --yes
ENV ENV_NAME=qiime
