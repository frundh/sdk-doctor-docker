Docker Image - TesTcl
=================

Docker image for TesTcl (http://testcl.com)

TesTcl
-------
TesTcl - a library for unit testing BIG-IP iRules
http://testcl.com

Docker Hub
-------
https://hub.docker.com/r/frundh/testcl/

Usage
-------
**Build Image**

    .\build-image.ps1 -name 'frundh/testcl' -tag '1.0.10'
**Run Container**

Mount current working directory

    docker run --name 'testcl' -it -v ${pwd}:/cwd frundh/testcl
or mount specific path

    $CWD='C:\irules'; docker run --name 'testcl' -it -v ${CWD}:/cwd frundh/testcl

Execute tests from the pseudo-TTY
 
    jtcl test_simple_irule.tcl