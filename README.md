# README

Compiler appears to change bytecode output according to the path of the file.
This test case includes the same library in 3 different directories.  It will
compile each one showing md5 hashes of the source file and output binary.

Provide the script with the path to your solidity compiler.

    ./run.sh /path/to/solc
