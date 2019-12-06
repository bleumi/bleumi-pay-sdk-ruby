# BleumiPay::CheckoutToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | The chain in which the token is defined | 
**transfer_address** | **String** | The destination address when payments are received in this token | 
**name** | **String** | Name of the token | 
**symbol** | **String** | Symbol of the token | 
**decimals** | **Integer** | Token decimal places | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::CheckoutToken.new(chain: null,
                                 transfer_address: null,
                                 name: null,
                                 symbol: null,
                                 decimals: null)
```


