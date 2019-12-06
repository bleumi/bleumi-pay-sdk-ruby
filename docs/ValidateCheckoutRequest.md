# BleumiPay::ValidateCheckoutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hmac_input** | **String** | Payment Details. Passed as GET parameter in successUrl. | 
**hmac_key_id** | **String** | KeyId used to generate the HMAC. Passed as GET parameter in successUrl. | 
**hmac_alg** | **String** | Algorithm used to generate the HMAC. Passed as GET parameter in successUrl. | 
**hmac_value** | **String** | HMAC passed as GET parameter in successUrl. | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::ValidateCheckoutRequest.new(hmac_input: null,
                                 hmac_key_id: null,
                                 hmac_alg: null,
                                 hmac_value: null)
```


