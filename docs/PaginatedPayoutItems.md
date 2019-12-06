# BleumiPay::PaginatedPayoutItems

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Array&lt;PayoutItem&gt;**](PayoutItem.md) | List of payouts of the payment in the current page | 
**next_token** | **String** | Cursor to fetch next page of results, empty if no more results | [optional] 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PaginatedPayoutItems.new(results: null,
                                 next_token: null)
```


