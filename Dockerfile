##xBMKG docker image
# Base
FROM quay.io/jupyter/base-notebook:python-3.12
# Port to connect to container
EXPOSE 8888
# Set Bash with pipefail for all RUN commands
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
# Versioning of image
ARG IMAGE_VERSION
COPY VERSION /VERSION
LABEL version=$IMAGE_VERSION


# ## System Dependencies
# USER root
# RUN apt-get update && apt-get install -y --no-install-recommends nano\
#     && rm -rf /var/lib/apt/lists/*


## Python Dependencies
# USER $NB_UID
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt


## Start command
CMD ["jupyter", "lab", "--no-browser", "--ip=0.0.0.0"] 
