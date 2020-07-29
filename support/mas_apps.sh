declare -A MAS_APPS
MAS_APPS=(
    ["amphetamine"]="937984704"
    ["breaktime"]="427475982"
    ["daisydisk"]="411643860"
    ["day one"]="1055511498"
    ["1password"]="1333432190"
    ["Kindle"]="405399194"
    ["MindNode"]="1289197285"
    ["StuffIt Expander"]="919269455"
    ["Transmit"]="1436522307"
    ["BusyCal"]="567245998"
    ["Tweetbot"]="1384080005"
    ["GIPHY Capture"]="668208984"
    ["Trello"]="1278508951"
    ["Things"]="904280696"
    ["Bear"]="1091189122"
    ["Screenflow"]="1475796517"
    ["Deliveries"]="924726344"
    ["Soulver"]="413965349"
    ["Divvy"]="413857545"
    ["The Unarchiver"]="425424353"
    ["CloudApp"]="417602904"
    ["Paw"]="584653203"
    ["GIF Brewery 3"]="1081413713"
    ["Frank Deloupe"]="530458789"
)

# @todo: Wasn't there a way to pass this like a Brewfile??
for app in $MAS_APPS; do
    # @todo
    echo "mas install $app"
done
