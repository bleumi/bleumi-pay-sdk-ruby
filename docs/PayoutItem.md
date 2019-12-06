# BleumiPay::PayoutItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **String** | Unique identifier for this payout | 
**status** | **Boolean** | null- Operation in progress ; true - Operation confirmed by network; false - Operation rejected by network; | 
**hash** | **String** | Transaction hash of the operation submitted to the network. This field is blank when the operation is in progress. | 
**created_at** | **Integer** | UNIX timestamp when the payout was created | 
**updated_at** | **Integer** | UNIX timestamp when the lastest operation was performed | 
**inputs** | [**PayoutItemInputs**](PayoutItemInputs.md) |  | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PayoutItem.new(txid: null,
                                 status: null,
                                 hash: null,
                                 created_at: null,
                                 updated_at: null,
                                 inputs: null)
```


