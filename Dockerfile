FROM python:3.11-slim
RUN useradd -m qc
USER qc
ENV PATH="${PATH}:/home/qc/.local/bin"
WORKDIR /usr/src/QuantumFoundations

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY ["Applications.ipynb", "Basics.ipynb", "Demos.ipynb", "Quantum Gates.ipynb", "."]
COPY ["images", "./images/"]

CMD ["jupyter", "lab", "--port=8080", "--ip=0"]
