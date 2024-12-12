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

#1 move to folder outside fullstack-polling-dapp-L2 to checkout zkSync-local
git clone https://github.com/matter-labs/local-setup.git zkSync-local

#2 move inside optimism
cd zkSync-local

#3 start local zksync instance
#L1: http://127.0.0.1:8545
#L2: http://127.0.0.1:8545
#rich wallets: https://github.com/matter-labs/local-setup/blob/main/rich-wallets.json
./start.sh

#5 Observe the console on
npx hardhat console --network zkSyncLocal


#6 Setup metamask wallet
#network name: zkSync Local rpc: http://127.0.0.1:3050 chainId: 270  currency: ETH 

#7 cd to pollingapp/backend to install dependencies
npm install --save-dev hardhat
npm install @nomicfoundation/hardhat-ethers 
npm install @matterlabs/hardhat-zksync-solc   
npm install @matterlabs/hardhat-zksync-deploy --save-dev 
npm install zksync-ethers
npm install

#8 update hardhat.config.js
#9 update deploy.js

#10 Deploy Your Contract Locally
npx hardhat run scripts/deploy.js --network zkSyncLocal


#11 End the zksync instances
docker ps
docker stop zksync-local-zksync-1 zksync-local-reth-1 zksync-local-postgres-1 zkcli-in-memory-node-zksync-1 buildx_buildkit_mybuilder0

