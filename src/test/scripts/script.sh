#!/usr/bin/env bash

NAME=travis
VERSION=0.0.1

load_source 
{
    printf "Loading source ..."
}

compile 
{
    printf "Plase wait compile form source ..."
    mkdir -p ${PREFIX}
}