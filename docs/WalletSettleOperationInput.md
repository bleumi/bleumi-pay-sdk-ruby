# BleumiPay::WalletSettleOperationInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | [**EthAddress**](EthAddress.md) |  | 
**amount** | **String** | Amount to be settled | 

## Code Sample

```ruby
require 'BleumiPay'
token = BleumiPay::EthAddress.new('<TOKEN_ADDR>')
amount = '<AMT>'
instance = BleumiPay::WalletSettleOperationInput.new(token, amount)
```


