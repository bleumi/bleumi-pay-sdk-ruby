# BleumiPay::PaymentAddresses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ethereum** | [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) |  | [optional] 
**algorand** | [**Hash&lt;String, AlgorandWalletAddress&gt;**](AlgorandWalletAddress.md) |  | [optional] 
**rsk** | [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) |  | [optional] 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PaymentAddresses.new(ethereum: null,
                                 algorand: null,
                                 rsk: null)
```


