FROM registry.access.redhat.com/rhel7-atomic

ENV PATH "/opt/rh/rh-nodejs8/root/bin:$PATH"

COPY lib /tmp/rpms
