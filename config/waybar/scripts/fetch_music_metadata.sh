echo '{"alt": "Stopped", "class": "Stopped"}'
playerctl -a metadata --format "{\"tooltip\": \"<i><span color='#a6da95'>{{playerName}}</span></i>: <b><span color='#f5a97f'>{{artist}}</span> - <span color='#c6a0f6'>{{markup_escape(title)}}</span></b>\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}" -F |
    while IFS= read -r line; do
        echo $line
        [ -z "$line" ] && echo '{"alt": "Stopped", "class": "Stopped"}' || echo "$line"
    done
