# clone repository
git clone git@gitlab.com:martin2201/binance-screener.git
cd binance-screener
# clean repository
sudo git clean -fxd
git reset --hard HEAD
# update repository
git pull
# install packages
npm i
# build app and server
npm run gui:build
npm run server:build
# copy build and server files to build folder
# no copy happens because of problem with an app
# remove repository
