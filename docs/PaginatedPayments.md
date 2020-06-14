# BleumiPay::PaginatedPayments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Array&lt;Payment&gt;**](Payment.md) | List of payments in the current page | 
**next_token** <br> (Optional) | **String** | Cursor to fetch next page of results, empty if no more results |

## Example

```json
{
  "results": [
    {
      "id": "2",
      "addresses": {
        "ethereum": {
          "goerli": {
            "0x13e4acefe6a6700604929946e70e6443e4e73447|0x13e4acefe6a6700604929946e70e6443e4e73447": {
              "addr": "0xbe02daaf993b29302c2e983b63eca1465c227245",
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
          "goerli": {
            "0x84df8548086ec9025e9c93297058bed706e90ddd": {
              "blockNum": "6831652",
              "token_balance": "0",
              "balance": "0",
              "token_decimals": 18,
              "safety": "high"
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
        },
        "algorand": {
          "alg_testnet": {
            "IZYYKSQO3GRZQ4SMAUVV5SVK6N7WUIDBZJCVZEVCHJ2XO22ARMQ3IEEGAQ|QTYQRYMFCS5FT63RUZXBR3MKEEQLHKMHMGMYS4UAPM5CKK27KELGP62QUY": {
              "addr": "BE2CX2DSRWNNQH6YEAEIDCXKESHJMJTL7BA7U74RUXBEOPLYV4JQA26XXI",
              "inputs": {
                "merchant": "IZYYKSQO3GRZQ4SMAUVV5SVK6N7WUIDBZJCVZEVCHJ2XO22ARMQ3IEEGAQ",
                "salt": "b73cb93c774b6c5fa4fcf2e02acff50fK9gTTRyoF64g1YANSZcydHjzXbRyfCPQNxpDIBegczRdb6Oosfr18g==",
                "gas": "ARHKCC34GGEDB7ZZE73QMAUKWNXAK3SZWDRECYRVN6AXTPQ7JTFSRDEYCI",
                "programBytes": "ASYHIEZxhUoO2aOYckwFK17KqvN/aiBhykVckqI6dXdrQIshIITxCOGFFLpZ+3GmbhjtiiEgs6mHYZmJcoB7OiUrX1EWIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAROoQt8MYgw/zkn9wYCirNuBW5ZsOJBYjVvgXm+H0zLA3BheQVheGZlciDb1gr1RfLUa+ziM7438kcaEMopE3DXemdxEpiWWKhvkzEHKBIxBykSETEJKhIxCSgSMQkpEhExCSsSEREQMQ8nBBIQMRQoEjEUKRIRMRUqEjEVKBIxFSkSEREQMQ8nBRIQETEFAScGEhAxFDEAEhE=",
                "buyer": "QTYQRYMFCS5FT63RUZXBR3MKEEQLHKMHMGMYS4UAPM5CKK27KELGP62QUY"
              }
            }
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
              "token_decimals": 15,
              "safety": "low"
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