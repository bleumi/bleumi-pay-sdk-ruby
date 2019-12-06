# BleumiPay::CreatePayoutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **String** | Unique identifier for this payout | 
**token** | [**Token**](Token.md) |  | 
**payouts** | [**Array&lt;Payout&gt;**](Payout.md) | Array of payments to be made in this payout. This is an atomic transaction (i.e. either all payments are processed or all of them are rejected). | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::CreatePayoutRequest.new(txid: null,
                                 token: null,
                                 payouts: null)
```


