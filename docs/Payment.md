# BleumiPay::Payment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID identifying the payment; specified when it was created by your system | 
**addresses** | [**PaymentAddresses**](PaymentAddresses.md) |  | 
**balances** | [**PaymentBalances**](PaymentBalances.md) |  | 
**created_at** | **Integer** | UNIX timestamp when the payment was created | 
**updated_at** | **Integer** | UNIX timestamp when the lastest operation was performed | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::Payment.new(id: null,
                                 addresses: null,
                                 balances: null,
                                 created_at: null,
                                 updated_at: null)
```


