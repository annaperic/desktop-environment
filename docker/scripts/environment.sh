REPO_ROOT=$(dirname $(readlink -f $0))/../..

DESKTOP_ENVIRONMENT_CLOUDFLARE_DOMAIN=jacksondelahunt.com
DESKTOP_ENVIRONMENT_CLOUDFLARE_EMAIL=jackson@jacksondelahunt.com

DESKTOP_ENVIRONMENT_CONTAINER_NAME=desktop-environment
DESKTOP_ENVIRONMENT_REGISTRY=sabrehagen
DESKTOP_ENVIRONMENT_USER=jackson

# Desktop environment repository information
echo export DESKTOP_ENVIRONMENT_CONTAINER_NAME=$DESKTOP_ENVIRONMENT_CONTAINER_NAME
echo export DESKTOP_ENVIRONMENT_CONTAINER_TAG=${DESKTOP_ENVIRONMENT_CONTAINER_TAG-$(git --git-dir $REPO_ROOT/.git rev-parse --abbrev-ref HEAD)}
echo export DESKTOP_ENVIRONMENT_REGISTRY=$DESKTOP_ENVIRONMENT_REGISTRY

# Desktop environment user configuration
DESKTOP_ENVIRONMENT_USER_HOME=/home/$DESKTOP_ENVIRONMENT_USER
echo export DESKTOP_ENVIRONMENT_GIT_EMAIL=$(git --git-dir $REPO_ROOT/.git config user.email)
echo export DESKTOP_ENVIRONMENT_GIT_NAME=$(git --git-dir $REPO_ROOT/.git config user.name)
echo export DESKTOP_ENVIRONMENT_USER=$DESKTOP_ENVIRONMENT_USER
echo export DESKTOP_ENVIRONMENT_USER_HOME=$DESKTOP_ENVIRONMENT_USER_HOME
echo export DESKTOP_ENVIRONMENT_USER_ID=1000

# Desktop environment cloudflare configuration
echo export DESKTOP_ENVIRONMENT_CLOUDFLARE_DOMAIN=$DESKTOP_ENVIRONMENT_CLOUDFLARE_DOMAIN
echo export DESKTOP_ENVIRONMENT_CLOUDFLARE_EMAIL=$DESKTOP_ENVIRONMENT_CLOUDFLARE_EMAIL

# Desktop environment docker configuration
echo export DESKTOP_ENVIRONMENT_DOCKER_NETWORK=$DESKTOP_ENVIRONMENT_REGISTRY-$DESKTOP_ENVIRONMENT_CONTAINER_NAME
echo export DESKTOP_ENVIRONMENT_DOCKER_REPOSITORY=/$DESKTOP_ENVIRONMENT_CONTAINER_NAME

# Desktop environment application cache volumes
echo export DESKTOP_ENVIRONMENT_CACHE_CERTIFICATES=$DESKTOP_ENVIRONMENT_USER_HOME/.pki
echo export DESKTOP_ENVIRONMENT_CACHE_CHROME=$DESKTOP_ENVIRONMENT_USER_HOME/.cache/google-chrome
echo export DESKTOP_ENVIRONMENT_CACHE_CODE=$DESKTOP_ENVIRONMENT_USER_HOME/.vscode
echo export DESKTOP_ENVIRONMENT_CACHE_GDRIVE=$DESKTOP_ENVIRONMENT_USER_HOME/.gdfuse
echo export DESKTOP_ENVIRONMENT_CACHE_SECRETS=$DESKTOP_ENVIRONMENT_USER_HOME/.secrets
echo export DESKTOP_ENVIRONMENT_CACHE_SSH=$DESKTOP_ENVIRONMENT_USER_HOME/.ssh
echo export DESKTOP_ENVIRONMENT_CACHE_STEMN=$DESKTOP_ENVIRONMENT_USER_HOME/.stemn
echo export DESKTOP_ENVIRONMENT_CACHE_VCSH=$DESKTOP_ENVIRONMENT_USER_HOME/.config/vcsh/repo.d
echo export DESKTOP_ENVIRONMENT_CACHE_VCSH_PRIVATE=$DESKTOP_ENVIRONMENT_USER_HOME/.config/vcsh/repo-private.d
echo export DESKTOP_ENVIRONMENT_CACHE_YARN=$DESKTOP_ENVIRONMENT_USER_HOME/.cache/yarn
echo export DESKTOP_ENVIRONMENT_CACHE_ZOOM=$DESKTOP_ENVIRONMENT_USER_HOME/.cache/zoom
echo export DESKTOP_ENVIRONMENT_CACHE_ZSH=$DESKTOP_ENVIRONMENT_USER_HOME/.cache/zsh

# Desktop environment application state volumes
echo export DESKTOP_ENVIRONMENT_STATE_CHROME=$DESKTOP_ENVIRONMENT_USER_HOME/.config/google-chrome
echo export DESKTOP_ENVIRONMENT_STATE_CODE=$DESKTOP_ENVIRONMENT_USER_HOME/.config/Code
echo export DESKTOP_ENVIRONMENT_STATE_GITHUB=$DESKTOP_ENVIRONMENT_USER_HOME/.config/github
echo export DESKTOP_ENVIRONMENT_STATE_JUMP=$DESKTOP_ENVIRONMENT_USER_HOME/.jump
echo export DESKTOP_ENVIRONMENT_STATE_KEYCHAIN=$DESKTOP_ENVIRONMENT_USER_HOME/.keychain
echo export DESKTOP_ENVIRONMENT_STATE_MUSIKCUBE=$DESKTOP_ENVIRONMENT_USER_HOME/.musikcube
echo export DESKTOP_ENVIRONMENT_STATE_SIGNAL=$DESKTOP_ENVIRONMENT_USER_HOME/.config/Signal
echo export DESKTOP_ENVIRONMENT_STATE_SLACK=$DESKTOP_ENVIRONMENT_USER_HOME/.config/Slack
echo export DESKTOP_ENVIRONMENT_STATE_TRAEFIK=$DESKTOP_ENVIRONMENT_USER_HOME/.traefik
echo export DESKTOP_ENVIRONMENT_STATE_ZOOM=$DESKTOP_ENVIRONMENT_USER_HOME/.zoom

# Desktop environment user state volumes
echo export DESKTOP_ENVIRONMENT_USER_DOCUMENTS=$DESKTOP_ENVIRONMENT_USER_HOME/documents
echo export DESKTOP_ENVIRONMENT_USER_DOWNLOADS=$DESKTOP_ENVIRONMENT_USER_HOME/downloads
echo export DESKTOP_ENVIRONMENT_USER_MUSIC=$DESKTOP_ENVIRONMENT_USER_HOME/music
echo export DESKTOP_ENVIRONMENT_USER_PICTURES=$DESKTOP_ENVIRONMENT_USER_HOME/pictures
echo export DESKTOP_ENVIRONMENT_USER_REPOSITORIES=$DESKTOP_ENVIRONMENT_USER_HOME/repositories
echo export DESKTOP_ENVIRONMENT_USER_TORRENTS=$DESKTOP_ENVIRONMENT_USER_HOME/torrents
echo export DESKTOP_ENVIRONMENT_USER_VIDEOS=$DESKTOP_ENVIRONMENT_USER_HOME/videos
