26_IMAGE_URL     := https://github.com/cwill747/alpine-python2.6.git
26_IMAGE         := testing/python:2.6
26_ANSIBLE_IMAGE := testing/python-ansible:2.6

.DEFAULT_GOAL    := 26-ansible-image

26-repo :
	git clone --recursive $(26_IMAGE_URL) $@

.PHONY : 26-image
26-image : 26-repo
	docker build -t $(26_IMAGE) 26-repo/

.PHONY : 26-ansible-image
26-ansible-image : 26-image
	docker build -t $(26_ANSIBLE_IMAGE) .

