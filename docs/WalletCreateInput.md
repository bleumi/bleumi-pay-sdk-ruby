# BleumiPay::WalletCreateInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID identifying the wallet; specified here to create the wallet by your system | 
**buyer_address** | [**EthAddress**](EthAddress.md) |  | 
**transfer_address** | [**EthAddress**](EthAddress.md) |  | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::WalletCreateInput.new(id: null,
                                 buyer_address: null,
                                 transfer_address: null)
```


