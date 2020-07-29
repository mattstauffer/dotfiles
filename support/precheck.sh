echo 'Checking dependencies...'
echo ''

if [ ! -d "$HOME/Dropbox (Personal)" ]
then
    echo "Please link Dropbox first."
    exit
fi

prompt_quit_if_no "Do you have SSH keys linked that have access to everything important?"
echo ''
