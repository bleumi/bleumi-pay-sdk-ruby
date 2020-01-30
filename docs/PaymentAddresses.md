# BleumiPay::PaymentAddresses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ethereum** | [**Hash&lt;String, WalletAddress&gt;**](WalletAddress.md) | A dictionary which gives the address of the wallet generated for each Ethereum network  | 
**algorand** | [**Hash&lt;String, WalletAddress&gt;**](WalletAddress.md) | A dictionary which gives the address of the wallet generated for each Algorand network  | 

## Example

```json
{
    "ethereum": {
        "xdai_testnet": {
        "addr": "0xbe1fa332f24ba568108ba55a25eccf93d882f54e"
        },
        "rinkeby": {
        "addr": "0xbea2f9d56c3cc7f2c7e17d294200dd75708eecd8"
        }
    }
}
```