# BleumiPay::NetworkBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainnet** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in MainNet | [optional] 
**xdai** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in xDAI | [optional] 
**goerli** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in Goerli TestNet | [optional] 
**kovan** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in Kovan TestNet | [optional] 
**rinkeby** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in Rinkeby TestNet | [optional] 
**ropsten** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in Ropsten TestNet | [optional] 
**xdai_testnet** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the token balances in xDAI TestNet | [optional] 

## Example

```json
{
    "xdai_testnet": {
        "XDAIT": {
            "balance": "1",
            "token_decimals": 15,
            "blockNum": "1698324",
            "token_balance": "1000000000000000"
        }
    }
}

```