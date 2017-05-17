#!/bin/sh

for p in "compile --python 2.6" \
         "sanity --test ansible-doc --python 2.6" \
         "sanity --test pep8"
do
    ./test/runner/ansible-test $p || exit $?
done
