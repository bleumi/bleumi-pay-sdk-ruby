# BleumiPay::HostedCheckoutsApi

All URIs are relative to *https://api.pay.bleumi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_checkout_url**](HostedCheckoutsApi.md#create_checkout_url) | **POST** /v1/payment/hc | Generate a unique checkout URL to accept payment.
[**list_tokens**](HostedCheckoutsApi.md#list_tokens) | **GET** /v1/payment/hc/tokens | Retrieve all tokens configured for the Hosted Checkout in your account in the [Bleumi Pay Dashboard](https://pay.bleumi.com/app/).
[**validate_checkout_payment**](HostedCheckoutsApi.md#validate_checkout_payment) | **POST** /v1/payment/hc/validate | Validate the GET parameters passed by Hosted Checkout in successUrl upon successfully completing payment.



## create_checkout_url

> CreateCheckoutUrlResponse create_checkout_url(create_checkout_url_request)

Generate a unique checkout URL to accept payment.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = BleumiPay::HostedCheckoutsApi.new
create_checkout_url_request = BleumiPay::CreateCheckoutUrlRequest.new # CreateCheckoutUrlRequest | Specify checkout URL creation parameters.

begin
  #Generate a unique checkout URL to accept payment.
  result = api_instance.create_checkout_url(create_checkout_url_request)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling HostedCheckoutsApi->create_checkout_url: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_checkout_url_request** | [**CreateCheckoutUrlRequest**](CreateCheckoutUrlRequest.md)| Specify checkout URL creation parameters. | 

### Return type

[**CreateCheckoutUrlResponse**](CreateCheckoutUrlResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_tokens

> Array&lt;CheckoutToken&gt; list_tokens

Retrieve all tokens configured for the Hosted Checkout in your account in the [Bleumi Pay Dashboard](https://pay.bleumi.com/app/).

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = BleumiPay::HostedCheckoutsApi.new

begin
  #Retrieve all tokens configured for the Hosted Checkout in your account in the [Bleumi Pay Dashboard](https://pay.bleumi.com/app/).
  result = api_instance.list_tokens
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling HostedCheckoutsApi->list_tokens: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CheckoutToken&gt;**](CheckoutToken.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## validate_checkout_payment

> ValidateCheckoutResponse validate_checkout_payment(validate_checkout_request)

Validate the GET parameters passed by Hosted Checkout in successUrl upon successfully completing payment.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = BleumiPay::HostedCheckoutsApi.new
validate_checkout_request = BleumiPay::ValidateCheckoutRequest.new # ValidateCheckoutRequest | Specify validation of checkout parameters.

begin
  #Validate the GET parameters passed by Hosted Checkout in successUrl upon successfully completing payment.
  result = api_instance.validate_checkout_payment(validate_checkout_request)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling HostedCheckoutsApi->validate_checkout_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_checkout_request** | [**ValidateCheckoutRequest**](ValidateCheckoutRequest.md)| Specify validation of checkout parameters. | 

### Return type

[**ValidateCheckoutResponse**](ValidateCheckoutResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

