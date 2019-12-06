# BleumiPay::PaginatedPaymentOperations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Array&lt;PaymentOperation&gt;**](PaymentOperation.md) | List of operations of the payment in the current page | 
**next_token** | **String** | Cursor to fetch next page of results, empty if no more results | [optional] 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PaginatedPaymentOperations.new(results: null,
                                 next_token: null)
```


