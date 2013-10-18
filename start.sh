#!/bin/sh
cd `dirname $0`

exec erl -pa $PWD/ebin -pa $PWD/deps/*/ebin -name web@`hostname` \
    -s nitrogen_elements_examples_app start -config ebin/nitrogen_elements_examples
