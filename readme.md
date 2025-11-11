# Configure your shell to run a script upon entering a directory
Run custom scripts automatically when you `cd` into a directory, like per-folder shell hooks.

## Automatic installation
```
curl https://raw.githubusercontent.com/gusza110811/cdrc/refs/heads/main/install.sh | sh -s
```
Enter your password (required to install cdrc for every user), and send `y` when it prompts to add activation script to your shell

## Manual installation
Download cdrc:
```
wget https://raw.githubusercontent.com/gusza110811/cdrc/refs/heads/main/cdrc
```
Move cdrc to anywhere in your PATH (such as `/bin` as shown below):
```
mv cdrc /bin/cdrc
```
Activating cdrc (add this into your `.bashrc` or similar):
```
source cdrc
```
Changing script to look for after cd (changed to "newrc" in this case. Add this to your `.bashrc` or similar, after the activation script):
```
export cdrcName="newrc"
```

## Uninstallation
Remove the script:
```
rm /bin/cdrc
```
Then remove `source cdrc` (or `. cdrc`) from `.bashrc` or similar