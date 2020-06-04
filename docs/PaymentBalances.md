# BleumiPay::PaymentBalances

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ethereum** | [**EthereumBalance**](EthereumBalance.md) |  | [optional] 
**algorand** | [**AlgorandBalance**](AlgorandBalance.md) |  | [optional] 
**rsk** | [**RskBalance**](RskBalance.md) |  | [optional] 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PaymentBalances.new(ethereum: null,
                                 algorand: null,
                                 rsk: null)
```


