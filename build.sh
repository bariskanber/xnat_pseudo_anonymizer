#!/bin/bash

docker build -t xnat_pseudo_anonymizer:latest -t xnat_pseudo_anonymizer:0.0.1 .

docker save -o xnat_pseudo_anonymizer-0.0.1.tar xnat_pseudo_anonymizer:0.0.1


