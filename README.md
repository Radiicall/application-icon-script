## Application Icon Script
Script for changing application icons\
Usage:\
`./application-icon-script.sh`\
Prompts:\
```
Which icon to change. (Default: ${DEFICONAME}) (CHECK .desktop FILE FOR ICON NAME AND NAME YOUR FILE APPROPRIATLY) (file extension must be .png with recommended size of >512x512)
Icon name: 

Directory where icons are stored. (Default is current directory: ${PWD})
Icon Directory: 

Where the icons should be moved to (Default: ${DEFDESTDIR})
Icon Destination: 
```
Icon name is NOT application name, you can find the name of the icon the application is using in the application's .desktop file.

