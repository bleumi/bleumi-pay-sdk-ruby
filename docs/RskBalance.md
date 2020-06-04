# BleumiPay::RskBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rsk** <br>(Optional) | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in RSK MainNet  |
**rsk_testnet** <br>(Optional) | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in RSK TestNet  |

## Example - TestNet

```json
{
    "balances": {
        "rsk": {
            "rsk_testnet": {
                "0x1efeabf46ca3270a9a41d324350692664f1ea105": {
                    "blockNum": "889362",
                    "token_balance": "300",
                    "balance": "3",
                    "safety": "high",
                    "token_decimals": 2
                }
            }
        }
    }
}
```
