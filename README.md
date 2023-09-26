# Quantum Computing Foundations Examples

*Andy Dolan | Senior Security Engineer | CableLabs*

This repository provides code examples that illustrate basic operations with
IBM's [Qiskit][qiskit] for creating applications to be run on quantum computers.
The Qiskit library is Python-based, and the examples are run locally via
Qiskit's simulators. These examples were referenced in the member/vendor webinar
produced by CableLabs on quantum computing foundations in September of 2023.

The examples are contained in the following notebooks:

* **`Basics.ipynb`**: Simple invocations of Qiskit API calls to establish and
  manipulate Qubit states.
* **`Quantum Gates.ipynb`**: Manual computations of a quantum circuit using the
  matrix representations of the gates that make it up.
* **`Applications.ipynb`**: A high-level review of the Deutsch and Deutsch-Jozsa
  algorithms, with implementations of the circuits and examples in Qiskit.

## Getting Started

### Docker

A Docker image of the notebooks and the dependencies needed to run them is
provided for a convenient way to jump right into the code.

*An image will be pushed to a public registry from which it can be pulled.*

To run the example, simply use `docker compose up` in this directory. Once the
container has been created, click the link in the log output to navigate to the
instance of Jupyter lab.

### Run Locally

The notebooks provided here can be run locally via Jupyter notebook or Jupyter
lab. Use of a Python virtual environment (e.g., `venv` or `conda`) is strongly
encouraged.

Simply install the dependencies and invoke Juypter:

```sh
pip install -r requirementes.txt
jupyter lab --port 8080
```

If your web browser doesn't open automatically, click the link that appears in
the console output.

[qiskit]: "https://qiskit.org/"
