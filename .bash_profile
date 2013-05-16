export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/Applications/LibreOffice.app/Contents/MacOS:$PATH"
export NARWHAL_ENGINE=jsc
export CAPP_BUILD="/Users/hugobastien/Build"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

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
