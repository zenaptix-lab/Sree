FROM python:alpine

WORKDIR /sree
COPY ["static", "/sree/static"]
COPY ["xmlparser.py", "app.py", "/sree/"]

RUN apk --no-cache upgrade && \
    pip install flask requests

ENTRYPOINT ["python", "/sree/app.py"]
