# BleumiPay::Payment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID identifying the payment; specified when it was created by your system | 
**addresses** | [**PaymentAddresses**](PaymentAddresses.md) | A dictionary which gives the address of the wallet generated for each network | 
**balances** | [**PaymentBalances**](PaymentBalances.md) | A dictionary which gives the token balances in each network | 
**created_at** | **Integer** | UNIX timestamp when the payment was created | 
**updated_at** | **Integer** | UNIX timestamp when the lastest operation was performed | 

## Example

```json
{
  "id": "1",
  "addresses": {
    "ethereum": {
      "xdai_testnet": {
        "0x13e4acefe6a6700604929946e70e6443e4e73447|0x13e4acefe6a6700604929946e70e6443e4e73447": {
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
  },
  "balances": {
    "ethereum": {
      "xdai_testnet": {
        "XDAIT": {
          "balance": "1",
          "token_decimals": 15,
          "blockNum": "1698324",
          "token_balance": "1000000000000000",
          "safety": "high"
        }
      }
    }
  },
  "createdAt": 1574493617,
  "updatedAt": 1574494588
}
```
