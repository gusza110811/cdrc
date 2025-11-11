if [ $PREFIX ]; then
    target=$PREFIX"/bin/cdrc"
else
    target="/bin/cdrc"
fi

if [ -f $target ]; then
    echo "Detected previous installation, updating"
fi

sudo wget https://raw.githubusercontent.com/gusza110811/cdrc/refs/heads/main/cdrc -O $target

if [ $cdrcName ]; then
    exit
fi

read -r -p "cdrcName environment variable is not set, add cdrc activation script? (Y/n)" response
if [ $response = "y" ]
then
    echo . $target >> ~/."$(basename $SHELL)"rc
fi
if [ $response = "Y" ]
then
    echo . $target >> ~/."$(basename $SHELL)"rc
fi


echo "done"