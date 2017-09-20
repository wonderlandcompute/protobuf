from setuptools import find_packages, setup

setup(
    name='optimus-proto',
    version='0.1.1.',
    author='Alexander Baranov',
    author_email='a.baranov@cern.ch',
    packages=find_packages(),
    install_requires=['grpcio-tools'],
    tests_require=[
        "nose",
        "nose-testconfig",
    ],
)
