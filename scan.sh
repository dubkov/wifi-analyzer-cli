#!/bin/bash

iw $1 scan | awk -f scan.awk
