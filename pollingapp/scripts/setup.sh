#1. open folder hellosolidity inside hardhat_template folder

#2. cd into backend
cd backend

#3. make sure node is installed, validate the by checking version
npm -v

#4. install hardhat if not installed
npm install --save-dev hardhat

#5. do npm install
npm install

#6. compile smartcontracts, skip sudo on windows powershell
sudo npx hardhat compile

#7. create the blockchain node, skip sudo on windows powershell
sudo npx hardhat node

#8. split the new terminal window, skip sudo on windows powershell
sudo npx hardhat run scripts/deploy.js --network localhost

#9. now configure the metamask wallet and import accounts

#10. cd into frontend and copy the abi and contract address in contract.js from HelloSolidity.json
cd ..
cd frontend

#11. install react dependencies
npm install

#12. run the react side
npm start 

#==================== L2 Setup Instruction #====================

#13 move to folder outside fullstack-polling-dapp-L2 to checkout optimism
git clone https://github.com/ethereum-optimism/optimism.git

#14 move inside optimism
cd optimism

#15 make sure docker is installed, validate the by checking version
docker --version

#16 start local optimism instance
#L1: http://127.0.0.1:8545
#L2: http://127.0.0.1:8545
docker-compose up

#17 Deploy Your Contract Locally
npx hardhat run scripts/deploy.js --network optimismLocal
