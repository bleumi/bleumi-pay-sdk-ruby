# BleumiPay::WalletRefundOperationInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | [**EthAddress**](EthAddress.md) |  | 

## Code Sample

```ruby
require 'BleumiPay'

token = BleumiPay::EthAddress.new('<TOKEN_ADDR>')

instance = BleumiPay::WalletRefundOperationInput.new(token)
```
