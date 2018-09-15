# ZeppelinOS Workshop

### Setup

a) Make sure you have the [ZeppelinOS CLI](https://github.com/zeppelinos/zos/tree/master/packages/cli) installed. If not, run

```sh
npm install -g zos
```
> You can install it locally withouth the `-g` flag, but then you'll have to preppend `npx` to every command

b) Next, clone this repository and `cd` into it
```sh
git clone git@github.com:martriay/zos-workshop.git
cd zos-workshop/
```

c) Install the dependencies

```sh
npm install
```
> You can also use [`yarn`](https://yarnpkg.com/en/), npm's smarter cousin

d) Start [ganache](https://truffleframework.com/ganache) to simulate a local ethereum blockchain

```sh
npx ganache-cli
```

### Upgradeability Excercise

1. Rewrite the `Wallet` contract to work with initializers
2. Deploy your first upgradeable dapp: `add`, `push` and `create`
3. Make your first upgrade: `bump`, `add`, `push` and `update`

### Challenges
* **OnlyOwner**: The transfer method allows anyone to move the wallet's token, fix the bug and upgrade it
* **NFT wallet**: Add support for [ERC721](http://erc721.org/) transfers
* **Governance**: Yield upgradeability control to a multisig wallet


### Further reading

* [Getting started with ZeppelinOS](https://blog.zeppelinos.org/getting-started-with-zeppelinos)
* [Towards frictionless upgradeability: constructors for upgradeable contracts](https://blog.zeppelinos.org/towards-frictionless-upgradeability/)
* [ZeppelinOS stdlib: taking advantage onchain dependencies](https://docs.zeppelinos.org/docs/using.html)
* [Exploring upgradeability governance in ZeppelinOS with a Gnosis MultiSig](https://blog.zeppelinos.org/exploring-upgradeability-governance-in-zeppelinos-with-a-gnosis-multisig/)