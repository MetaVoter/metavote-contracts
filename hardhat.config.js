/** @type import('hardhat/config').HardhatUserConfig */

require('@nomiclabs/hardhat-ethers');

module.exports = {
  solidity: "0.8.17",
  networks: {
    'truffle-dashboard': {
      url: "http://localhost:24012/rpc"
    }
  }
};
