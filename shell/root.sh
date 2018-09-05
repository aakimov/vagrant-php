#!/usr/bin/env bash
# composer version
composer_version="1.0.0-beta1"
# php version
php_version="5.6"
# system packages
packages=(curl php$php_version unzip vim)
# php extensions
extensions=(bcmath cli curl gd intl mbstring mcrypt mysql soap xsl zip)

# install packages
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install ${packages[@]} ${extensions[@]/#/php$php_version-} -y

# install composer
curl -sS https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php --install-dir=/usr/bin --filename=composer --version=$composer_version
rm composer-setup.php
