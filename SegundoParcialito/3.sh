#!/bin/bash

grep bash /etc/passwd | grep -oE '^[^:]+'