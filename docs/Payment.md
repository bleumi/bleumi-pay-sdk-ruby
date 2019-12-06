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
        "addr": "0xbe1fa332f24ba568108ba55a25eccf93d882f54e"
      },
      "rinkeby": {
        "addr": "0xbea2f9d56c3cc7f2c7e17d294200dd75708eecd8"
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
          "token_balance": "1000000000000000"
        }
      }
    }
  },
  "createdAt": 1574493617,
  "updatedAt": 1574494588
}
```