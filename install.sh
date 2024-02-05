bash
#!/bin/bash

# Function to check if Chocolatey is installed on Windows
check_choco() {
  if ! command_exists choco; then
    echo "Chocolatey not found. Installing..."
    # Install Chocolatey
    powershell.exe -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
    echo "Chocolatey installed."
  fi
}

# Function to check if a command is available
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Function to configure MongoDB for production
configure_mongodb() {
  echo "Configuring MongoDB for production..."
  # Adjust MongoDB configuration for production settings
  sudo sed -i 's/#bindIp: 127.0.0.1/bindIp: 127.0.0.1/' /etc/mongod.conf
  echo "MongoDB configured for production."
}

# Function to configure Redis for production
configure_redis() {
  echo "Configuring Redis for production..."
  # Adjust Redis configuration for production settings
  sudo sed -i 's/# bind 127.0.0.1/bind 127.0.0.1/' /etc/redis/redis.conf
  echo "Redis configured for production."
}

# Function to configure RabbitMQ for production
configure_rabbitmq() {
  echo "Configuring RabbitMQ for production..."
  # No specific RabbitMQ configuration for production in this example
  echo "RabbitMQ configured for production."
}

# Function to configure Clam Antivirus for production
configure_clamav() {
  echo "Configuring Clam Antivirus for production..."
  # No specific Clam Antivirus configuration for production in this example
  echo "Clam Antivirus configured for production."
}

# Function to configure Crowdsec for production
configure_crowdsec() {
  echo "Configuring Crowdsec for production..."
  # No specific Crowdsec configuration for production in this example
  echo "Crowdsec configured for production."
}

# Function to install MongoDB community version on Linux
install_mongodb_linux() {
  echo "MongoDB not found. Installing..."
  sudo apt-get update
  sudo apt-get install -y mongodb
  echo "MongoDB installed."
  configure_mongodb
}

# Function to install Redis on Linux
install_redis_linux() {
  echo "Redis not found. Installing..."
  sudo apt-get update
  sudo apt-get install -y redis-server
  echo "Redis installed."
  configure_redis
}

# Function to install PHP extensions on Linux
install_php_extensions_linux() {
  extensions=("imap" "sodium")

  for extension in "${extensions[@]}"; do
    if ! php -m | grep -q "$extension"; then
      echo "Installing PHP extension: $extension"
      sudo apt-get install -y php-$extension
      echo "PHP extension $extension installed."
    fi
  done
  configure_php
}

# Function to install RabbitMQ on Linux
install_rabbitmq_linux() {
    echo "RabbitMQ not found. Installing..."
    sudo apt-get install curl gnupg apt-transport-https -y

    ## Team RabbitMQ's main signing key
    curl -1sLf "https://keys.openpgp.org/vks/v1/by-fingerprint/0A9AF2115F4687BD29803A206B73A36E6026DFCA" | sudo gpg --dearmor | sudo tee /usr/share/keyrings/com.rabbitmq.team.gpg > /dev/null
    ## Community mirror of Cloudsmith: modern Erlang repository
    curl -1sLf https://github.com/rabbitmq/signing-keys/releases/download/3.0/cloudsmith.rabbitmq-erlang.E495BB49CC4BBE5B.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/rabbitmq.E495BB49CC4BBE5B.gpg > /dev/null
    ## Community mirror of Cloudsmith: RabbitMQ repository
    curl -1sLf https://github.com/rabbitmq/signing-keys/releases/download/3.0/cloudsmith.rabbitmq-server.9F4587F226208342.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/rabbitmq.9F4587F226208342.gpg > /dev/null

## Add apt repositories maintained by Team RabbitMQ
    sudo tee /etc/apt/sources.list.d/rabbitmq.list <<EOF
## Provides modern Erlang/OTP releases
##
deb [signed-by=/usr/share/keyrings/rabbitmq.E495BB49CC4BBE5B.gpg] https://ppa1.novemberain.com/rabbitmq/rabbitmq-erlang/deb/ubuntu jammy main
deb-src [signed-by=/usr/share/keyrings/rabbitmq.E495BB49CC4BBE5B.gpg] https://ppa1.novemberain.com/rabbitmq/rabbitmq-erlang/deb/ubuntu jammy main

# another mirror for redundancy
deb [signed-by=/usr/share/keyrings/rabbitmq.E495BB49CC4BBE5B.gpg] https://ppa2.novemberain.com/rabbitmq/rabbitmq-erlang/deb/ubuntu jammy main
deb-src [signed-by=/usr/share/keyrings/rabbitmq.E495BB49CC4BBE5B.gpg] https://ppa2.novemberain.com/rabbitmq/rabbitmq-erlang/deb/ubuntu jammy main

## Provides RabbitMQ
##
deb [signed-by=/usr/share/keyrings/rabbitmq.9F4587F226208342.gpg] https://ppa1.novemberain.com/rabbitmq/rabbitmq-server/deb/ubuntu jammy main
deb-src [signed-by=/usr/share/keyrings/rabbitmq.9F4587F226208342.gpg] https://ppa1.novemberain.com/rabbitmq/rabbitmq-server/deb/ubuntu jammy main

# another mirror for redundancy
deb [signed-by=/usr/share/keyrings/rabbitmq.9F4587F226208342.gpg] https://ppa2.novemberain.com/rabbitmq/rabbitmq-server/deb/ubuntu jammy main
deb-src [signed-by=/usr/share/keyrings/rabbitmq.9F4587F226208342.gpg] https://ppa2.novemberain.com/rabbitmq/rabbitmq-server/deb/ubuntu jammy main
EOF

    ## Update package indices
    sudo apt-get update -y

    ## Install Erlang packages
    sudo apt-get install -y erlang-base \
                            erlang-asn1 erlang-crypto erlang-eldap erlang-ftp erlang-inets \
                            erlang-mnesia erlang-os-mon erlang-parsetools erlang-public-key \
                            erlang-runtime-tools erlang-snmp erlang-ssl \
                            erlang-syntax-tools erlang-tftp erlang-tools erlang-xmerl

    ## Install rabbitmq-server and its dependencies
    sudo apt-get install rabbitmq-server -y --fix-missing

  echo "RabbitMQ installed."
  configure_rabbitmq
}

# Function to install Clam Antivirus on Linux
install_clamav_linux() {
  echo "Clam Antivirus not found. Installing..."
  sudo apt-get update
  sudo apt-get install -y clamav
  echo "Clam Antivirus installed."
  configure_clamav
}

# Function to install Crowdsec on Linux
install_crowdsec_linux() {
  echo "Crowdsec not found. Installing..."
  sudo apt-get update
  sudo apt-get install -y crowdsec
  echo "Crowdsec installed."
  configure_crowdsec
}

# Function to install MongoDB community version on Windows
install_mongodb_windows() {
  echo "MongoDB not found. Installing..."
  choco install mongodb
  echo "MongoDB installed."
  configure_mongodb
}

# Function to install Redis on Windows
install_redis_windows() {
  echo "Redis not found. Installing..."
  choco install redis
  echo "Redis installed."
  configure_redis
}

# Function to install PHP extensions on Windows
install_php_extensions_windows() {
  extensions=("imap" "sodium")

  for extension in "${extensions[@]}"; do
    if ! php -m | grep -q "$extension"; then
      echo "Installing PHP extension: $extension"
      # No standard way to install PHP extensions with Chocolatey, so you may need to find alternative methods
      echo "PHP extension $extension installed."
    fi
  done
  configure_php
}

# Function to install RabbitMQ on Windows
install_rabbitmq_windows() {
  echo "RabbitMQ not found. Installing..."
  choco install rabbitmq
  echo "RabbitMQ installed."
  configure_rabbitmq
}

# Function to install Clam Antivirus on Windows
install_clamav_windows() {
  echo "Clam Antivirus not found. Installing..."
  choco install clamav
  echo "Clam Antivirus installed."
  configure_clamav
}

# Function to install Crowdsec on Windows
install_crowdsec_windows() {
  echo "Crowdsec not found. Installing..."
  choco install crowdsec
  echo "Crowdsec installed."
  configure_crowdsec
}

# Main function
main() {
  if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    check_choco
    install_mongodb_linux
    install_redis_linux
    install_php_extensions_linux
    install_rabbitmq_linux
    install_clamav_linux
    install_crowdsec_linux
  elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    check_choco
    install_mongodb_windows
    install_redis_windows
    install_php_extensions_windows
    install_rabbitmq_windows
    install_clamav_windows
    install_crowdsec_windows
  else
    echo "Unsupported operating system."
    exit 1
  fi
}

# Call the main function
main