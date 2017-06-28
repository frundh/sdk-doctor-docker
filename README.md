Docker Image - Couchbase SDK Doctor
=================

Docker image for Couchbase SDK Doctor (https://github.com/couchbaselabs/sdk-doctor)

SDK Doctor
-------

>SDK doctor helps diagnose application-server-side connectivity issues with your Couchbase Cluster

Docker Hub
-------

https://hub.docker.com/r/frundh/sdk-doctor/

Usage
-------

**Build Image**

    .\build-image.ps1 -name 'frundh/sdk-doctor' -tag '1.0.1'

**Run Container**

    docker run -it --name 'sdk-doctor' frundh/sdk-doctor

Mount current working directory

    docker run -it --name 'sdk-doctor' -v ${pwd}:/cwd frundh/sdk-doctor

or mount specific path

    $CWD='C:\config'; docker run -it --name 'sdk-doctor' -v ${CWD}:/cwd frundh/sdk-doctor

Execute diagnose from the pseudo-TTY
 
    sdk-doctor diagnose couchbase://cb-node-fqdn/bucket-name -p bucket-password