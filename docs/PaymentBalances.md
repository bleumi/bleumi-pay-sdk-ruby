# BleumiPay::PaymentBalances

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ethereum** <br> (Optional) | [**EthereumBalance**](EthereumBalance.md) | A dictionary which gives the token balances in each Ethereum network |
**algorand** <br> (Optional) | [**AlgorandBalance**](AlgorandBalance.md) | A dictionary which gives the token balances in each Algorand network |

## Example

```json
{
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
}
```