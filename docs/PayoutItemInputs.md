# BleumiPay::PayoutItemInputs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**salt** | **String** | Unique identifier generated for the txid of the payout (specified during Create a Payout). | 
**token** | **String** | Token used for the payout | 
**payouts** | [**Array&lt;Payout&gt;**](Payout.md) | Array of payments to be made in this payout. This is an atomic transaction (i.e. either all payments are processed or all of them are rejected). | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PayoutItemInputs.new(salt: null,
                                 token: null,
                                 payouts: null)
```


