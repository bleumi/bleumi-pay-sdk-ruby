# BleumiPay::PaymentBalances

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ethereum** | [**EthereumBalance**](EthereumBalance.md) | A dictionary which gives the token balances in each Ethereum network |
**algorand** | [**AlgorandBalance**](AlgorandBalance.md) | A dictionary which gives the token balances in each Algorand network |
**rsk** | [**RskBalance**](RskBalance.md) | A dictionary which gives the token balances in each RSK network  |

## Example

```json
{
    "ethereum": {
        "goerli": {
            "0x84df8548086ec9025e9c93297058bed706e90ddd":
                {
                    "balance": "4",
                    "token_decimals": 18,
                    "blockNum": "2313213",
                    "safety": "high",
                    "token_balance": "4000000000000000000"
                },
            "0x115615dbd0f835344725146fa6343219315f15e5":
                {
                    "balance": "9",
                    "token_decimals": 6,
                    "blockNum": "2313213",
                    "safety": "high",
                    "token_balance": "9000000"
                }
        }
    }
}
```