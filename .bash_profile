
function notes { 
  pushd ~/Dropbox/notes > /dev/null;
  touch ./$@.md
  open -a Mou ./$@.md;
  popd > /dev/null;
}

# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi
