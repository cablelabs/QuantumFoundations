FROM python:3.11-slim
WORKDIR /usr/src/QuantumFoundations
RUN useradd -m qc && chown qc:qc /usr/src/QuantumFoundations
ENV PATH="${PATH}:/home/qc/.local/bin"
USER qc

COPY --chown=qc:qc ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY --chown=qc:qc ["Applications.ipynb", "Basics.ipynb", "Demos.ipynb", "Quantum Gates.ipynb", "."]
COPY --chown=qc:qc ["images", "./images/"]

CMD ["jupyter", "lab", "--port=8080", "--ip=0"]
