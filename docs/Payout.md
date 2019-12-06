# BleumiPay::Payout

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transfer_address** | **String** | Address of receiver. This address must be able to receive payments from smart contracts. | 
**amount** | **String** | Amount of token to transfer | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::Payout.new(transfer_address: null,
                                 amount: null)
```


