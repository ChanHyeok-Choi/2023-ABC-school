#!/usr/bin/env bash
function pidwait()
{
    while kill -0 $1 2> /dev/null; do
    sleep 1
    done
    ls
}

pidwait $1


