if [[ -a Logs ]]; then
  rm -r Logs
fi

NEWUPDATE=$(ls -td */ | head -1)

if [[ $NEWUPDATE -ef correct ]]; then
  NEWUPDATE=$(ls -td */ | sed -n 2p)
fi

cp -Tr correct $NEWUPDATE