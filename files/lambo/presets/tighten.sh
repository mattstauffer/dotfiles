#!/bin/bash

echo
read -p "This script is meant to be run in directory of a brand-new Laravel app. Cool? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    printf 'Quitting'
    exit 1
fi

WHITE='\033[0;37m'
CLEAR='\033[0m'

function title ()
{
    printf "\n\n${WHITE}$1${CLEAR}\n------------------------------------------------------------\n"
}

function appendToJson()
{
    # Delete last two lines }
    sed -i '' -e '$ d' $1 
    sed -i '' -e '$ d' $1 

    # Append closing brace, but with a closing comma
    echo "    }," >> $1

    # Append provided content
    echo "    $2" >> $1
    
    # Append }
    echo "}" >> $1
}


title "Removing files..."
rm -f .styleci.yml
rm -f docker-compose.yml

title "Adding Composer dependencies..."
composer require tightenco/tlint
composer require squizlabs/php_codesniffer friendsofphp/php-cs-fixer barryvdh/laravel-debugbar --dev

title "Adding files to .gitignore..."
echo ".php_cs.cache" >> .gitignore

title "Downloading dotfiles from GitHub..."
wget -O .php_cs.xml.dist https://raw.githubusercontent.com/tighten/configs/main/.phpcs.xml.dist
wget -O .php_cs.dist https://raw.githubusercontent.com/tighten/configs/main/.php_cs.dist
wget -O .stylelintrc https://raw.githubusercontent.com/tighten/configs/main/.stylelintrc
wget -O README.md https://raw.githubusercontent.com/tighten/configs/main/templates/app-README.md

title "Moving branch to main if needed..."
BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" == "master" ]]; then
    git checkout -b main
    git branch -d master
fi

title 'Appending Prettier config to package.json...'
read -d '' prettier << EOF
    "prettier": {
        "singleQuote": true,
        "trailingComma": "es5",
        "tabWidth": 4,
        "printWidth": 80
    }
EOF

appendToJson 'package.json' "$prettier"

title 'Installing Husky, Lint-Staged, Prettier, & Stylelint...'
npm install husky lint-staged prettier stylelint stylelint-config-standard --only=dev

title 'Appending Lint-staged and Husky config to package.json...'
read -d '' husky << EOF
    "lint-staged": {
        "*.php": [
            "vendor/bin/php-cs-fixer fix --config=.php_cs.dist"
        ],
        "*.(css|scss)": [
            "stylelint"
        ],
        "resources/**/*.(js|ts|tsx|css|vue)": [
            "node_modules/.bin/prettier --write"
        ]
    },
    "husky": {
        "hooks": {
            "pre-commit": "lint-staged && vendor/bin/tlint lint --diff"
        }
    }
EOF

appendToJson 'package.json' "$husky"

printf 'past' && exit

- Add OG/etc. https://github.com/tighten/handbook/tree/main/best-practices/meta


echo
read -p "Will this app be public on GitHub?" -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    print "Remember to set this project up in Chipper/CodeShip."
    exit 1
fi

## If open source
- Add GitHub actions for tests (todo link)
- Add GitHub actions for lints (todo link)
