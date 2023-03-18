MAS_APPS=(
    "Amphetamine::937984704"
    "Breaktime::427475982"
    "Daisydisk::411643860"
    "Day_one::1055511498"
    "Kindle::405399194"
    "MindNode::1289197285"
    "StuffIt_Expander::919269455"
    "Transmit::1436522307"
    "BusyCal::567245998"
    "GIPHY_Capture::668208984"
    "Trello::1278508951"
    "Things::904280696"
    "Bear::1091189122"
    "Deliveries::924726344"
    "Soulver::413965349"
    "Divvy::413857545"
    "The_Unarchiver::425424353"
    "CloudApp::417602904"
    "Paw::584653203"
    "GIF_Brewery_3::1081413713"
)

for index in "${MAS_APPS[@]}" ; do
    KEY="${index%%::*}"
    VALUE="${index##*::}"
    echo "Installing: $KEY"
    mas install $VALUE
done
