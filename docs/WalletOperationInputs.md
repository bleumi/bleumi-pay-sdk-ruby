# BleumiPay::WalletOperationInputs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Amount to be settled | 
**token** | **String** | Address of the ERC-20 token | 
**token_amount** | **String** | Amount in full precision | 
**token_decimals** | **String** |  | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::WalletOperationInputs.new(amount: null,
                                 token: null,
                                 token_amount: null,
                                 token_decimals: null)
```
