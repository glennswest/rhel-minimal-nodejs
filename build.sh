make build version="8.3"
docker tag glennswest/rhel-minimal-nodejs:8.3  ${SVCHOST}:5000/rhel-minimal-nodejs:8.3
docker push ${SVCHOST}:5000/rhel-minimal-nodejs:8.3
