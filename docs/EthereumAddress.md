# BleumiPay::EthereumAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainnet** | [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) | A dictionary which gives the address of the wallet generated for Ethereum MainNet |
**goerli** | [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) | A dictionary which gives the address of the wallet generated for Goerli TestNet |
**xdai** | [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) | A dictionary which gives the address of the wallet generated for xDAI MainNet |
**xdai_testnet** | [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) | A dictionary which gives the address of the wallet generated for xDAI TestNet |

## Example

```json
{
      "xdai_testnet": {
        "0x13e4acefe6a6700604929946e70e6443e4e73447|0x13e4acefe6a6700604929946e70e6443e4e73447":{
          "addr": "0xbe1fa332f24ba568108ba55a25eccf93d882f54e",
          "inputs": {
            "buyer": "0x13e4acefe6a6700604929946e70e6443e4e73447",
            "walletLibrary": "0xb33893fdf59b634653fcbed27b5d38d86710fc40",
            "merchant": "0x13e4acefe6a6700604929946e70e6443e4e73447",
            "salt": "0x4d5afc486391108fd9af8e33cec2caa8038899c7974fae22a3c3bb0d127ab8a7",
            "walletProxy": "0xfaac6b338f79cfd8a53dfec95263f12ef046a049"
          }
        }
      }
}
```