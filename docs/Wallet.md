# BleumiPay::Wallet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID identifying the wallet; specified when it was created by your system | 
**chain** | **String** | Ethereum network in which wallet is to be created. Please refer to the [network list](https://pay.bleumi.com/docs/#supported-ethereum-networks) | 
**addr** | **String** | Wallet address | 
**balances** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | The current token balance | 
**inputs** | [**WalletInputs**](WalletInputs.md) |  | 
**created_at** | **Integer** | UNIX timestamp when the wallet was created | 
**updated_at** | **Integer** | UNIX timestamp when the lastest operation was performed | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::Wallet.new(id: null,
                                 chain: null,
                                 addr: null,
                                 balances: null,
                                 inputs: null,
                                 created_at: null,
                                 updated_at: null)
```


