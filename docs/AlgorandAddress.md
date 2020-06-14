# BleumiPay::AlgorandAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alg_mainnet** <br> (Optional)| [**Hash&lt;String, AlgorandWalletAddress&gt;**](AlgorandWalletAddress.md) | A dictionary which gives the address of the wallet generated for Algorand MainNet |
**alg_testnet** <br> (Optional)| [**Hash&lt;String, AlgorandWalletAddress&gt;**](AlgorandWalletAddress.md) | A dictionary which gives the address of the wallet generated for Algorand TestNet |

## Example

```json
{
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
}
```
