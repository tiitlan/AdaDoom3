#!/bin/sh

# Make script for building on 64-bit Windows.

gnatmake -ICode -ICode/Windows -ICode/x86-64 -ICode/GNAT -g -D Object -gnat12 main
