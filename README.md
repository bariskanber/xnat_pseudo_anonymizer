# XNAT Pseudoanonymizer
XNAT pseudo anonymization replicating the hashUID function of DicomEdit with optional conversion to base 36 representation

## How to setup (Docker method)
* Clone the repository
* Install docker (e.g. `sudo apt install docker.io`)
* Run `./build.sh`

## How to run (Docker method)
* Get help by running `sudo docker run xnat_pseudo_anonymizer -h`
* Pseudoanonymize strings "apple", "orange", and "719" by running `sudo docker run xnat_pseudo_anonymizer apple orange 719`
* As above but with conversion to base 36 representation by running `sudo docker run xnat_pseudo_anonymizer apple orange 719 --base36`

## How to setup (plain method)
* Clone the repository
* Install Python 3 (e.g. `sudo apt install python3`)
* Install numpy (`pip install numpy`)
* Install node.js and node.js package manager (e.g. `sudo apt-get install -y nodejs npm`)
* Install required node.js packages (`npm install uuid dicomedit-uuid big-integer`)

## How to run (plain method)
* Get help by running `python pseudo_anonymize.py -h`
* Pseudoanonymize strings "apple", "orange", and "719" by running `python pseudo_anonymize.py apple orange 719`
* As above but with conversion to base 36 representation by running `python pseudo_anonymize.py apple orange 719 --base36`
