# clone repository
rm -rf build/*
git clone git@gitlab.com:martin2201/binance-screener.git
cd binance-screener
# install packages
npm i
# build app and server
npm run gui:build
npm run server:build
# copy build and server files to build folder
cp _bin/ ../build/_bin/ -R
cp _public/ ../build/_public/ -R
# remove repository
cd ..
rm -rf binance-screener
