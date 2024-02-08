## Stage 1
FROM public.ecr.aws/docker/library/python:3.9-slim-bullseye

RUN apt-get update && \
    apt-get install -y nodejs npm

RUN python -m venv /venv
ENV PATH="/venv/bin:$PATH"

WORKDIR /app

RUN npm install uuid dicomedit-uuid big-integer

RUN pip install pip==20.2
RUN pip install numpy

# Slim down packages
RUN find /venv/lib/python3.9/site-packages -type d -a -name '__pycache__' -print0 | xargs -0 rm -rf
RUN find /venv/lib/python3.9/site-packages -type d -a -name '*jupyterlab*' -print0 | xargs -0 rm -rf

COPY getHashUID.js .
COPY pseudo_anonymize.py .

ENTRYPOINT ["python", "pseudo_anonymize.py"]
