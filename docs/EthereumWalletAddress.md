# BleumiPay::EthereumWalletAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addr** | **String** | Wallet address for the payment in the network |
**inputs** | [**EthereumWalletInputs**](EthereumWalletInputs.md) | Inputs used for the wallet creation |

## Example

```json
{
    "addr": "0xbe7b6dd3a81b9ae6b27b9a4690af39690095c791",
    "inputs": {
        "buyer": "0x713883bf69b786f0a7ab6e2248a70c50577f6b34",
        "merchant": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41",
        "salt": "0x5fca1a8d4c6e8786f915a57a9bdde2be9d643b93f366ffa713384fe75762e4aa",
        "walletLibrary": "0xb33893fdf59b634653fcbed27b5d38d86710fc40",
        "walletProxy": "0xfaac6b338f79cfd8a53dfec95263f12ef046a049"
    }
}
```