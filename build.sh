#!/bin/bash

version="$(cat version.txt)"

sudo docker build -t xnat_pseudo_anonymizer:${version} .

# sudo docker save -o xnat_pseudo_anonymizer-${version}.tar xnat_pseudo_anonymizer:${version}

