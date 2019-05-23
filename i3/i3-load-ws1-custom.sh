# Load the custom layout in workspace 1.
# That means two tabs:
#  - Terminator (with email, calendar, Downloads terminal, etc)
#  - Browser

i3-msg 'workspace 1; append_layout /home/gamma/folre/bmarcote/.i3/ws_1-custom.json'

# Swallow the programs into the containers
terminator -name Terminator --layout=ws1layout &



