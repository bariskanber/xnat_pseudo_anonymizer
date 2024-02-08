# XNAT Pseudoanonymizer
XNAT pseudo anonymization replicating the hashUID function of DicomEdit with optional conversion to base 36 representation to shorten the length of strings generated

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

# Example outputs
```
sudo docker run xnat_pseudo_anonymizer -h
usage: XNAT pseudoanonymizer [-h] [--base36] input_string [input_string ...]

positional arguments:
  input_string       The input string to pseudoanonymize

optional arguments:
  -h, --help         show this help message and exit
  --base36, -base36  Return base 36 representation

sudo docker run xnat_pseudo_anonymizer apple orange 719
2.25.277466887773979289579949253661142169968
2.25.317761990493429439180546617639180187065
2.25.174902547599179474521637988884184029084

sudo docker run xnat_pseudo_anonymizer apple orange 719 --base36
CCW2ROYJ07BEAM2IBI0713O1C
E5I0D7GZEZGMJXZUYH3JC73JT
7SFT48XA8SVOJT5KIVRTQPY8S
  ```
