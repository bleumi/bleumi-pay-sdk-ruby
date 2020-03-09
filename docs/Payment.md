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
  "id": "1432",
  "addresses": {
    "ethereum": {
      "goerli": {
        "inputs": {
          "walletLibrary": "0xb33893fdf59b634653fcbed27b5d38d86710fc40",
          "merchant": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41",
          "salt": "0xa497eadc72a5ca6af3ade21d8cdf5e76d15a08e5c2097095b7079a959e5a9be7",
          "walletProxy": "0xfaac6b338f79cfd8a53dfec95263f12ef046a049",
          "buyer": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41"
        },
        "addr": "0xbea9ba68eb642c21b1966310a33d0dbfa7f61ade"
      },
      "xdai_testnet": {
        "inputs": {
          "walletProxy": "0xfaac6b338f79cfd8a53dfec95263f12ef046a049",
          "buyer": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41",
          "walletLibrary": "0xb33893fdf59b634653fcbed27b5d38d86710fc40",
          "merchant": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41",
          "salt": "0x870a006007a88ad69c1ce6561b13e4a22f0cd64596f2a2671f5860c63d353ea6"
        },
        "addr": "0xbe537259a1af5d5c649351ddae0f6bdf69adb1fe"
      }
    }
  },
  "balances": {
    "ethereum": {
      "goerli": {
        "0x115615dbd0f835344725146fa6343219315f15e5": {
          "balance": "0",
          "token_decimals": 6,
          "blockNum": "2314477",
          "token_balance": "0"
        }
      },
      "xdai_testnet": {
        "XDAIT": {
          "token_decimals": 15,
          "blockNum": "2314454",
          "token_balance": "5000000000000000",
          "balance": "5"
        }
      }
    }
  },
  "createdAt": 1583748155,
  "updatedAt": 1583748766
}
```