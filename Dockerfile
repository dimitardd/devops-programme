FROM ubuntu:22.04

LABEL maintainer="dhd.dimitrov@gmail.com"
<<<<<<< HEAD
LABEL version="0.3"
=======
LABEL version="0.1"
>>>>>>> refs/remotes/origin/dimitard-231024

RUN apt-get update -y && \
	apt-get install -y --no-install-recommends \
	python3 \
	python3-pip && \
	groupadd -r appgroup && \	
	useradd -r -g appgroup appuser

WORKDIR /app

COPY --chown=appuser:appgroup requirements.txt .
<<<<<<< HEAD

RUN pip3 install -r requirements.txt

COPY --chown=appuser:appgroup ./app .

=======
COPY --chown=appuser:appgroup ./app .

RUN pip3 install -r requirements.txt

>>>>>>> refs/remotes/origin/dimitard-231024
USER appuser

CMD ["python3", "app.py"]
