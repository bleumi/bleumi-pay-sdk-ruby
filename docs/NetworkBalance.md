# BleumiPay::NetworkBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainnet** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) |  | [optional] 
**xdai** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) |  | [optional] 
**goerli** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) |  | [optional] 
**kovan** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) |  | [optional] 
**rinkeby** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) |  | [optional] 
**ropsten** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) |  | [optional] 
**xdai_testnet** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) |  | [optional] 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::NetworkBalance.new(mainnet: null,
                                 xdai: null,
                                 goerli: null,
                                 kovan: null,
                                 rinkeby: null,
                                 ropsten: null,
                                 xdai_testnet: null)
```


