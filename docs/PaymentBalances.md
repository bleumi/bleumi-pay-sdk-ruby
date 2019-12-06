# BleumiPay::PaymentBalances

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ethereum** | [**Hash&lt;String, NetworkBalance&gt;**](NetworkBalance.md) | A dictionary which gives the token balances in each network | [optional] 

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