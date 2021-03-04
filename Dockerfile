FROM python:3.7.10

RUN pip3 install --upgrade tensorflow && \
    pip3 install numpy psutil py-cpuinfo pillow

WORKDIR /ai_benchmark

ADD src /ai_benchmark

CMD ["python3", "/ai_benchmark/main.py", "/tmp/bench_data/"]