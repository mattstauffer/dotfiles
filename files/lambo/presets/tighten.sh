#!/bin/bash

# @todo: Clean up the linting parts of this and replace them with requiring Duster (https://github.com/tighten/duster)

WHITE='\033[0;37m'
CYAN='\033[0;36m'
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

printf "${CYAN}\n"
read -p "This script is meant to be run in directory of a brand-new Laravel app. Cool? " -n 1 -r
printf "${CLEAR}\n"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    printf "\nOK, quitting.\n"
    exit 1
fi

printf "${CYAN}\n"
read -p "Will this app be public on GitHub? " -n 1 -r
printf "${CLEAR}\n"
PUBLIC=$REPLY

title "Removing files..."
rm -f .styleci.yml
rm -f docker-compose.yml

title "Adding Composer dependencies..."
composer require tightenco/tlint squizlabs/php_codesniffer friendsofphp/php-cs-fixer barryvdh/laravel-debugbar --dev

title "Adding files to .gitignore..."
echo ".php_cs.cache" >> .gitignore

title "Downloading dotfiles from GitHub..."
wget -O .phpcs.xml.dist https://raw.githubusercontent.com/tighten/configs/main/.phpcs.xml.dist
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

printf "\n\n\n\n\nTODO: Un-comment lines 24 and 25 in phpunit.xml\n\n\n\n\n" 

if [[ ! $PUBLIC =~ ^[Yy]$ ]]
then
    printf "\nRemember to set this project up in Chipper/CodeShip.\n"
    exit 1
fi

title 'Adding GitHub Actions for linting and running tests...'
mkdir -p .github/workflows

wget -O .github/workflows/run-tests.yml https://raw.githubusercontent.com/tighten/configs/main/github-actions/run-tests.yml
wget -O .github/workflows/lint.yml https://raw.githubusercontent.com/tighten/configs/main/github-actions/lint.yml

title 'All done! Happy coding!'
echo 'Remember to add OpenGraph/Twitter tags when you build the site out.'
