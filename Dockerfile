FROM python:3.10

RUN pip install \
    cellpose==4.0.3 \
    scikit-image==0.22.0 \
    matplotlib==3.8.2

WORKDIR /app
COPY . /app
CMD ["python", "segment.py", "images/sample.png", "masks/sample_mask.tif"]
