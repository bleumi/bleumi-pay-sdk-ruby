# BleumiPay::PaymentOperation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **String** | Transaction ID of the operation | [optional] 
**chain** | **String** | Network in which the operation was carried out | 
**func_name** | **String** | The name of the function invoked on the [payment processor](https://pay.bleumi.com/docs/#payment-processor) | 
**status** | **Boolean** | null - Operation in progress ; true - Operation completed successfuly ; false - Operation failed to process | 
**inputs** | [**PaymentOperationInputs**](PaymentOperationInputs.md) |  | 
**hash** | **String** | Transaction hash of operation submitted to the network. This field is blank when operation is in progress. | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PaymentOperation.new(txid: null,
                                 chain: null,
                                 func_name: null,
                                 status: null,
                                 inputs: null,
                                 hash: null)
```


