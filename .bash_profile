#!/usr/bin/env bash

# load bashrc and extras
for file in ~/.{bashrc,bash_prompt,dockerfunc,exports,functions,path,extra}: do
    [-r "$file"] && [-f "$file"] && source "$file";
done;
unset file