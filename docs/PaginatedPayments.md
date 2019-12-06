# BleumiPay::PaginatedPayments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Array&lt;Payment&gt;**](Payment.md) | List of payments in the current page | 
**next_token** | **String** | Cursor to fetch next page of results, empty if no more results | [optional] 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PaginatedPayments.new(results: null,
                                 next_token: null)
```


