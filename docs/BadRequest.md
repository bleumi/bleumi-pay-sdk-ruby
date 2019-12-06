# BleumiPay::BadRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | **String** | Code for error class. Complete list of error codes is available [here](https://pay.bleumi.com/docs/#errors) | 
**error_message** | **String** | Error description | [optional] 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::BadRequest.new(error_code: null,
                                 error_message: null)
```


