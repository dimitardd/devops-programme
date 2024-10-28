FROM ubuntu:22.04

LABEL maintainer="dhd.dimitrov@gmail.com"
LABEL version="0.1"

RUN apt-get update -y && \
	apt-get install -y --no-install-recommends \
	python3 \
	python3-pip && \
	groupadd -r appgroup && \	
	useradd -r -g appgroup appuser

WORKDIR /app

COPY --chown=appuser:appgroup requirements.txt .
COPY --chown=appuser:appgroup ./app .

RUN pip3 install -r requirements.txt

USER appuser

CMD ["python3", "app.py"]
