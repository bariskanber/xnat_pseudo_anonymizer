#!/usr/bin/env python
import os
import sys
import argparse
import subprocess
import numpy as np

parser = argparse.ArgumentParser("XNAT pseudoanonymizer")
parser.add_argument("input_string", type=str, nargs="+", help="The input string to pseudoanonymize")
parser.add_argument("--base36", "-base36", action="store_true", default=False, help="Return base 36 representation")
args = parser.parse_args()

for input_string in args.input_string:
    status, output = subprocess.getstatusoutput('node getHashUID.js "%s"'%(input_string))
    assert(status==0)

    if not args.base36:
        print(output)
    else:
        tokens = output.split('.')
        assert len(tokens)==3, 'Number of tokens split by . in %s is not 3'%(output)

        print(np.base_repr(int(tokens[2]),36))
