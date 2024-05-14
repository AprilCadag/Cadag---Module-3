# Cadag--Module-3
This Solidity contract, named gimoToken, represents a basic example of an ERC20 token smart contract. It inherits from the ERC20 contract provided by OpenZeppelin, which implements the ERC20 standard interface for fungible tokens on the Ethereum blockchain.

## Description
This Solidity contract, named gimoToken, is a simple example of an ERC20 token smart contract. It allows users to create a new token with a specified name, symbol, and total supply. The contract's admin, set during deployment, has special privileges to generate (mint) additional tokens and allocate them to specific addresses using the generateTokens function. Users can also burn (destroy) their own tokens using the burnTokens function. The contract supports token transfers between addresses through the transfer function, ensuring that the recipient address is valid. Additionally, it enables delegated transfers using the transferFrom function, where a spender is authorized to transfer tokens from the sender's account to another recipient. This contract serves as a basic framework for managing ERC20 tokens on the Ethereum blockchain, demonstrating fundamental Solidity syntax and common patterns in a straightforward manner.

## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

1. Open Remix IDE: Go to Remix IDE.
2. Create a New File: Create a new Solidity file (e.g., gimoToken.sol).
3. Copy and Paste the Contract Code: Paste the modified contract code into the file.
4. Compile the Contract: Click on the "Solidity Compiler" tab and compile the contract.
5. Deploy the Contract:
6. Go to the "Deploy & Run Transactions" tab.
7. Select the appropriate environment (e.g., JavaScript VM for local testing or Injected Web3 for MetaMask).
8. Enter the constructor parameters (tokenName, tokenSymbol, initialSupply).
9. Click "Deploy".

## Author
April Cadag

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
