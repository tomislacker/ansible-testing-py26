# ansible-testing-py26

## Purpose
In case you live in the modern day era where you don't have Python2.6
available, but still need to test your Ansible code against it, then you've
found the right project.

## Usage
### Build Image
The following builds a docker image called `testing/python-ansible:2.6`:
```sh
make
```

### Testing
*Disclaimer: The tests in `run_tests.sh` are not necessarily comprehensive*

```sh
cd ansible
docker run \
    -it \
    --rm \
    -v $(pwd):/code \
    testing/python-ansible:2.6
```
