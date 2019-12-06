# BleumiPay::CreateCheckoutUrlRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for this payment. | 
**currency** | **String** | Currency Code | 
**amount** | **String** | Set the token which must be used by the buyer for this payment. | 
**cancel_url** | **String** | Buyer will be redirected to this URL upon canceling the payment. | 
**success_url** | **String** | Buyer will be redirected to this URL upon successfully completing the payment. | 
**buyer_address** | [**EthAddress**](EthAddress.md) |  | [optional] 
**chain** | [**Chain**](Chain.md) |  | [optional] 
**token** | [**Token**](Token.md) |  | [optional] 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::CreateCheckoutUrlRequest.new(id: null,
                                 currency: null,
                                 amount: null,
                                 cancel_url: null,
                                 success_url: null,
                                 buyer_address: null,
                                 chain: null,
                                 token: null)
```


