echo 'Checking dependencies...'
echo ''

if [ ! -d "$HOME/Dropbox (Personal)" ]
then
    echo "Please link Dropbox first."
    exit
fi

# @todo: Make sure id_rsa and id_rsa exist *and* have the right permissions
#        (600 for both)

prompt_quit_if_no "Do you have SSH keys linked that have access to everything important?"
prompt_quit_if_no "Have you signed into the Mac App Store manually?"
echo ''

echo 'XX -- Precheck done.'