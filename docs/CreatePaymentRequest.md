# BleumiPay::CreatePaymentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID identifying the payment | 
**buyer_address** | [**EthAddress**](EthAddress.md) |  | 
**transfer_address** | [**EthAddress**](EthAddress.md) |  | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::CreatePaymentRequest.new(id: null,
                                 buyer_address: null,
                                 transfer_address: null)
```


