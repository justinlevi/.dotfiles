# CD aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."


# NPM Aliases
alias nrb="npm run build"
alias nrs="npm run start"
alias nrt="npm run test"
alias nrtw="npm run test:watch"
alias nrd="npm run deploy"

# Yarn Aliases
alias yb="yarn build"
alias ys="yarn start"
alias yt="yarn test"
alias ytw="yarn test:watch"
alias yd="yarn deploy"

# Directory Aliases
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pr="cd ~/Projects"
alias si="cd ~/Sites"
alias cds='cd ~/Sites && pwd'

# List all, long form
alias la="ls -la"

# Copy PWD to Clipboard
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"

# Git command aliases that need to run from bash, not gitconfig
alias pl="git copl $(get_git_branch)"

# Recursively delete `.DS_Store` files
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"

# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Launch VSCode in teaching mode
alias teach="code --extensions-dir ~/code_profiles/egghead/exts --user-data-dir ~/code_profiles/egghead/data"

# Launch sublime
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Hub is a tool that wraps git in order to extend it with extra functionality that makes it better when working with GitHub.
alias git=hub

# alias backstop='docker run --rm -v $(pwd):/src backstopjs/backstopjs "$@"'
alias robo='./vendor/bin/robo "$@"'

# Drupal Code Sniffer
alias drupalcs="phpcs --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"
alias drupalcsp="phpcs --standard=DrupalPractice --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"
alias drupalcbf="phpcbf --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

# Lagoon ui up
alias lup="make build/auto-idler && make build/broker-single && make build/broker && make build/logs-db && make build/logs2logs-db && make ui-development && docker-compose up -d auto-idler && docker-compose up -d --force api && docker-compose up -d --force logs-db && docker-compose up -d logs2logs-db && docker-compose up -d broker"
