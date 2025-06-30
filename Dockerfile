FROM python:3.10
RUN pip install cellpose scikit-image matplotlib
WORKDIR /app
COPY . /app
CMD ["python", "segment.py", "images/sample.png", "masks/sample_mask.tif"]
