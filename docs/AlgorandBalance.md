# BleumiPay::AlgorandBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alg_mainnet** <br>(Optional)| [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the Wallet balances in each Algorand MainNet |   
**alg_testnet** <br>(Optional)| [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the Wallet balances in each Algorand TestNet | 

## Example - Algorand TestNet

```json 
{
    "balances": {
        "algorand": {
            "alg_testnet": {
                "ALGO": {
                    "blockNum": "4457461",
                    "token_balance": "10000000",
                    "balance": "10",
                    "token_decimals": 6
                }
            }
        }
    }
}
```