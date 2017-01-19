# This python script is for creating passwords to use in playbooks.
# need to install python-passlib

from passlib.hash import sha512_crypt
import sys
hash = sha512_crypt.encrypt(sys.argv[1])
print(hash)
