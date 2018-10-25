#!/bin/bash

# make and cd into a directory as same time
mkcdir(){
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}
