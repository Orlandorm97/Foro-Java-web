export const ts_ethers_metamask_unilogin = `import UniLogin from '@unilogin/provider'
import {providers, utils} from 'ethers'

const ulProvider = UniLogin.createPicker(window.ethereum)
const provider = new providers.Web3Provider(ulProvider)
const signer = provider.getSigner()
const transaction = await signer.sendTransaction({
  to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
  value: utils.parseEther('0.003'),
})
`
export const ts_web3_metamask_unilogin = `import UniLogin from '@unilogin/provider'
import Web3 from 'web3'

const ulProvider = UniLogin.createPicker(window.ethereum)
const web3 = new Web3(ulProvider)
const [account] = await web3.eth.requestAccounts()
const tx = await web3.eth.sendTransaction({
  from: account,
  to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
  value: web3.utils.toWei('0.003'),
})
`

export const ts_web3_dep_metamask_unilogin = `import UniLogin from '@unilogin/provider'
import Web3 from 'web3'

const ulProvider = UniLogin.createPicker(window.ethereum)
const web3 = new Web3(ulProvider)
const [account] = await web3.currentProvider.enable()
const tx = await web3.eth.sendTransaction({
  from: account,
  to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
  value: web3.utils.toWei('0.003'),
})
`

export const ts_ethers_unilogin = `import UniLogin from '@unilogin/provider'
import {providers, utils} from 'ethers'

const ulProvider = UniLogin.create('mainnet')
const provider = new providers.Web3Provider(ulProvider)
const signer = provider.getSigner()
const transaction = await signer.sendTransaction({
  to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
  value: utils.parseEther('0.003'),
})
`

export const ts_web3_unilogin = `import UniLogin from '@unilogin/provider'
import Web3 from 'web3'

const ulProvider = UniLogin.create('mainnet')
const web3 = new Web3(ulProvider)
const [account] = await web3.eth.requestAccounts()
const tx = await web3.eth.sendTransaction({
  from: account,
  to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
  value: web3.utils.toWei('0.003'),
})
`

export const ts_web3_dep_unilogin = `import UniLogin from '@unilogin/provider'
import Web3 from 'web3'

const ulProvider = UniLogin.create('mainnet')
const web3 = new Web3(ulProvider)
const [account] = await web3.currentProvider.enable()
const tx = await web3.eth.sendTransaction({
  from: account,
  to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
  value: web3.utils.toWei('0.003'),
})
`

export const js_ethers_metamask_unilogin = `const UniLogin = require('@unilogin/provider')
const {providers, utils} = require('ethers')

const ulProvider = UniLogin.createPicker(window.ethereum)
const provider = new providers.Web3Provider(ulProvider)
const signer = provider.getSigner()
signer.sendTransaction({
  to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
  value: utils.parseEther('0.003'),
}).then(console.log)
`

export const js_web3_metamask_unilogin = `const UniLogin = require('@unilogin/provider')
const Web3 = require('web3')

const ulProvider = UniLogin.createPicker(window.ethereum)
const web3 = new Web3(ulProvider)
web3.eth.requestAccounts()
  .then(accounts => web3.eth.sendTransaction({
    from: accounts[0],
    to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
    value: web3.utils.toWei('0.003'),
  }).then(console.log))
`

export const js_web3_dep_metamask_unilogin = `const UniLogin = require('@unilogin/provider')
const Web3 = require('web3')

const ulProvider = UniLogin.createPicker(window.ethereum)
const web3 = new Web3(ulProvider)
web3.currentProvider.enable()
  .then(accounts => web3.eth.sendTransaction({
    from: accounts[0],
    to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
    value: web3.utils.toWei('0.003'),
  }).then(console.log))
`

export const js_ethers_unilogin = `const UniLogin = require('@unilogin/provider')
const {providers, utils} = require('ethers')

const ulProvider = UniLogin.create('mainnet')
const provider = new providers.Web3Provider(ulProvider)
const signer = provider.getSigner()
signer.sendTransaction({
  to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
  value: utils.parseEther('0.003'),
}).then(console.log)
`

export const js_web3_unilogin = `const UniLogin = require('@unilogin/provider')
const Web3 = require('web3')

const ulProvider = UniLogin.create('mainnet')
const web3 = new Web3(ulProvider)
web3.eth.requestAccounts()
  .then(accounts => web3.eth.sendTransaction({
    from: accounts[0],
    to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
    value: web3.utils.toWei('0.003'),
  }).then(console.log))
`

export const js_web3_dep_unilogin = `const UniLogin = require('@unilogin/provider')
const Web3 = require('web3')

const ulProvider = UniLogin.create('mainnet')
const web3 = new Web3(ulProvider)
web3.currentProvider.enable()
  .then(accounts => web3.eth.sendTransaction({
    from: accounts[0],
    to: '0xF80fd6F5eF91230805508bB28d75248024E50F6F',
    value: web3.utils.toWei('0.003'),
  }).then(console.log))
`
