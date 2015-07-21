# arguments:
# $1: container name
# $2: Username **none** if no user
# $3: Password **none** if no password
# $4 For extra information to be output
print_app_credentials() {
  echo ""
  echo "#########################################################################"
  echo ""
  echo " Credentials for $1:"
  echo ""
  if [ $2 != "**none**" ]; then
    echo "  Username: $2"
  fi
  if [ $3 != "**none**" ]; then
    echo "  Password: $3"
  fi
  if [ $4 ]; then
    echo "  ${@:4}"
  fi

  if [ $3 = "**none**" ]; then
    echo ""
    echo "  Warning: Password not set."
  fi
  echo ""
  echo "#########################################################################"
  echo "                                                                       "
}

# arguments: None
print_container_already_initialized() {
  echo "#########################################################################"
  echo "                                                                       "
  echo " Credentials for $1:                                    "
  echo " The credentials were set on first boot.                              "
  echo " If you want to regenerate the password recreate this container.       "
  echo "                                                                       "
  echo "#########################################################################"
  echo "                                                                       "
}

# arguments
# $1 root_path, default to $HENCE_APP_DIR
generate_conf_files() {
  BASE_PATH=$1
  if [ -z $1 ]; then
    BASE_PATH=$HENCE_APP_DIR
  fi

  # echo ""
  # echo "==> Copying default configuration to $BASE_PATH/conf..."
  # echo ""
  cp -nr $BASE_PATH/conf.defaults/* $BASE_PATH/conf
}

GITHUB_PAGE=https://github.com/hence-io/images/${HENCE_APP_NAME}

print_welcome_page() {
  if [ -z "$DISABLE_UPDATE_CHECK" ]; then
    check_for_updates &
  fi

cat << EndOfMessage
   _   _ _____ _   _  ____ _____   _
  | | | | ____| \ | |/ ___| ____| (_) ___
  | |_| |  _| |  \| | |   |  _|   | |/ _ \\
  |  _  | |___| |\  | |___| |___ _| | (_) |
  |_| |_|_____|_| \_|\____|_____(_)_|\___/

  *** Welcome to the ${HENCE_APP_NAME} image ***
  *** More information: ${GITHUB_PAGE} ***
  *** Issues: ${GITHUB_PAGE}/issues ***

EndOfMessage

  print_help_page_on_init
}

print_help_page_on_init() {
  if [ ! -f /tmp/help_shown.sem ]; then
    print_hence_help_page
    touch /tmp/help_shown.sem
  fi
}

print_hence_help_page() {
  HELP_FILE=$HENCE_PREFIX/help.txt
  if [ -f $HELP_FILE ]; then
    eval "echo \"`cat $HELP_FILE`\""
  fi
}

# Checks for any updates for this Docker image
check_for_updates() {
  UPDATE_SERVER="https://container.checkforupdates.com"
  ORIGIN="DHR"

  RESPONSE=$(curl -s --connect-timeout 5 \
    --cacert $HENCE_PREFIX/updates-ca-cert.pem \
    "$UPDATE_SERVER/api/v1?image=$HENCE_APP_NAME&version=$HENCE_APP_VERSION&origin=DHR" \
    -w "|%{http_code}")

  VERSION=$(echo $RESPONSE | cut -d '|' -f 1)
  if [[ ! $VERSION =~ [0-9.-] ]]; then
    return
  fi

  STATUS=$(echo $RESPONSE | cut -d '|' -f 2)

  if [ "$STATUS" = "200" ]; then
    COLOR="\e[0;30;42m"
    MSG="Your container is up to date!"
  elif [ "$STATUS" = "201" ]; then
    COLOR="\e[0;30;43m"
    MSG="New version available: run docker pull hence/$HENCE_APP_NAME:$VERSION to update."
  fi

  if [ "$MSG" ]; then
    printf "\n$COLOR*** $MSG ***\e[0m\n\n"
  fi
}

# We call tail before the logs are there so we need
# to keep retrying
wait_and_tail_logs(){
  LOGS_DIR=$HENCE_APP_VOL_PREFIX/logs
  retries=0

  while [ $retries -lt 10 ]
  do
    if [ "$(ls -A $LOGS_DIR)" ]; then
      CURRENT_USER=$(id -u -n)
      if [ $CURRENT_USER = $HENCE_APP_USER ]; then
        tail -f -n 1000 $LOGS_DIR/*.log &
      else
        su $HENCE_APP_USER:$HENCE_APP_USER tail -f -n 1000 $LOGS_DIR/*.log &
        # gosu $HENCE_APP_USER:$HENCE_APP_USER tail -f -n 1000 $LOGS_DIR/*.log &
      fi
      return
    else
      sleep 1
    fi
    retries=$((retries+1))
  done
  exit -1
}

# Load custom hence-utils for the application
if [ -f "/hence-utils-custom.sh" ]; then
  . /hence-utils-custom.sh
fi
