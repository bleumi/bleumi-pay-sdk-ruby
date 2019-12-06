# BleumiPay::PaginatedPayments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Array&lt;Payment&gt;**](Payment.md) | List of payments in the current page | 
**next_token** | **String** | Cursor to fetch next page of results, empty if no more results | [optional] 

## Example

```json
{
  "results": [
    {
      "id": "2",
      "addresses": {
        "ethereum": {
          "ropsten": {
            "addr": "0xbe02daaf993b29302c2e983b63eca1465c227245"
          }
        }
      },
      "balances": {
        "ethereum": {
          "ropsten": {
            "0x84df8548086ec9025e9c93297058bed706e90ddd": {
              "blockNum": "6831652",
              "token_balance": "0",
              "balance": "0",
              "token_decimals": 18
            }
          }
        }
      },
      "createdAt": 1574493797,
      "updatedAt": 1574502335
    },
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
              "blockNum": "1698324",
              "token_balance": "1000000000000000",
              "balance": "1",
              "token_decimals": 15
            }
          }
        }
      },
      "createdAt": 1574493617,
      "updatedAt": 1574494588
    }
  ]
}
```