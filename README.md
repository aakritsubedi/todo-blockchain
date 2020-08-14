# Build Blockchain App
### Ethereum Todo List

### Todo list in the web application

- To access the todo list, you would use a web browser that would communicate with a web server over the Internet. The server contains all of the code and data for the todo list.

![WEB APP: TODO List](https://raw.githubusercontent.com/aakritsubedi/todo-blockchain/master/README_IMG/web-application-diagram.png)

- Here is a list of what you would find on the server:
  - Client side files in HTML, CSS, and JavaScript
  - Back end code responsible for the application&#39;s business logic
  - Database that stores the tasks in the todo list
- This server is a centralized entity that has full control over every aspect of the application. Anyone with full access to the server can change any part of the code or the data at any time.

### Todo list in the blockchain application

- A blockchain application works quite differently. All of the code and the data to the todo list does not lie on a centralized server. Instead, it is distributed across the blockchain. All of the code and the data is shared and unchangeable on the blockchain.

![Blockchain APP: TODO List](https://raw.githubusercontent.com/aakritsubedi/todo-blockchain/master/README_IMG/blockchain-application-diagram.png)

- To access the blockchain todo list, we&#39;ll use a web browser to talk to the client side application, which will be written in HTML, CSS, and JavaScript. Instead of talking to a back end web server, the client side application will talk directly to the blockchain. In blockchain, it contains all the business login written in Ethereum Smart Contract for the todo list and all the todo list is stored in the blockchain itself.

### Q. What is blockchain ??

Ans: A blockchain is a peer-to-peer network of computers, or nodes, that talk to one another. It&#39;s a distributed network where all of the participants share the responsibility of running the network. Each network participant maintains a copy of the code and the data on the blockchain. All of this data is contained in bundles of records called &quot; **blocks**&quot; which are &quot; **chained together**&quot; to make up the blockchain. All of the nodes on the network ensure that this data is secure and unchangeable, unlike a centralized application where the code and data can be changed at any time. That&#39;s what makes the blockchain so powerful!

Because the blockchain is responsible for storing data, it fundamentally is a database. And because it&#39;s a network of computers that talk to one another, it&#39;s a network.

We can think of it as a network and a database all in one.

### Q. What is a Smart Contract ??

Ans: All of the code on the blockchain is contained in smart contracts, which are programs that run on the blockchain. They are the building blocks of blockchain applications.

Smart contracts are written in a programming language called Solidity, which looks a lot like JavaScript. All of the code in the smart contract is immutable, or unchangeable. Once we deploy the smart contract to the blockchain, we won&#39;t be able to change or update any of the code. This is a design feature that ensures that the code is trustless and secure.

They act as an interface for reading and writing data from the blockchain, as well as executing business logic. They&#39;re publicly accessible, meaning anyone with access to the blockchain can access their interface.

### Q. How Blockchain Todo List Works ?

- a client side application for the todo list that will talk directly to the blockchain.
- the Ethereum blockchain, which we can access by connecting our client side application to a single Ethereum node.
- a smart contract in Solidity that powers the todo list.
- deploy it to the Ethereum blockchain.
- connect to the blockchain network with our personal account using an Ethereum wallet in order to interact with the todo list application.

### Installing Dependencies

Install all of the dependencies we need to build our project.

#### Ganache Personal Blockchain

This guide will use the desktop version of Ganache. Ganache will provide a personal blockchain to be used for local development and testing of smart contracts.

Link: [https://www.trufflesuite.com/ganache](https://www.trufflesuite.com/ganache)

##### Install Ganache

- In Ubuntu, open a browser and navigate to [https://github.com/trufflesuite/ganache/releases](https://github.com/trufflesuite/ganache/releases)
- Download the latest Linux release which will be the \*.AppImage file.
 For example ganache-1.3.0-x86\_64.AppImage.
- Once the download is complete, open a new terminal and change into the directory with the \*.AppImage file.
- Use chmod to make the file executable:

chmod a+x ganache-1.3.0-x86\_64.AppImage

- Now run the file

./ganache-1.3.0-x86\_64.AppImage

- You will be prompted if you want to integrate the application into your system. For convenience, click Yes. This will allow you to launch Ganache later from Ubuntu Application menu.
- Ganache will launch and prompt if you want to enable Google Analytics tracking to help the developers improve the software. Toggle this off if you wish, then click Continue.

- The main Ganache window will open and you will notice there are already a number of addresses with a balance of 100 ETH each. Ganache provides a personal blockchain that you can start developing against immediately.
- The main Ganache window will open and you will notice there are already a number of addresses with a balance of 100 ETH each. Ganache provides a personal blockchain that you can start developing against immediately.

#### Install NodeJS and npm

Install NodeJS and it&#39;s package manager, npm:

sudo apt install nodejs npm

#### Install Tuffle
The Truffle Framework, which provides a suite of tools for developing Ethereum smart contacts with the Solidity programming language.

- Once npm is install, you can install Truffle with this command:

npm install -g truffle

- Verify the installation by checking the truffle version:

truffle version

#### Install Metamask Chrome Extension

To turn your web browser into a blockchain browser. Most major web browsers do not currently connect to blockchain networks, so we&#39;ll have to install a browser extension that allows them to do this.

Link:
[https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en)

Metamask will also allow us to manage our personal account when we connect to the blockchain, as well as manage our Ether funds that we&#39;ll need to pay for transactions.

### Project Setup

- create a project directory and navigate into the directory
- Now we initialize a new truffle project to develop our project like this:

$ truffle init

-