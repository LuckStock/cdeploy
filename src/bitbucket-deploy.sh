#!/bin/bash
#
# To get the final script,
# Generate this code on https://argbash.io/generate
#
# ARG_POSITIONAL_SINGLE([run], [to run the script], )
# ARG_OPTIONAL_SINGLE([repo], [r], [optional argument help msg])
# ARG_OPTIONAL_SINGLE([commit], [c], [optional argument help msg])
# ARG_OPTIONAL_SINGLE([owner], [o], [optional argument help msg])
# ARG_HELP([The general script's help msg])
# ARGBASH_GO

# [ <-- needed because of Argbash

mkdir ~/$_arg_repo
COMMIT=$(echo "$_arg_commit" | cut -c 1-7)
mkdir ~/$_arg_repo/$COMMIT
cd ~/$_arg_repo/$COMMIT
git clone git@bitbucket.org:$_arg_owner/$_arg_repo.git .
cd deploy
make deploy

# ] <-- needed because of Argbash
