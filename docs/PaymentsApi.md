# BleumiPay::PaymentsApi

All URIs are relative to *https://api.pay.bleumi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment**](PaymentsApi.md#create_payment) | **POST** /v1/payment | Generate a unique wallet address in the specified network to accept payment
[**get_payment**](PaymentsApi.md#get_payment) | **GET** /v1/payment/{id} | Retrieve the wallet addresses &amp; token balances for a given payment
[**get_payment_operation**](PaymentsApi.md#get_payment_operation) | **GET** /v1/payment/{id}/operation/{txid} | Retrieve a payment operation for a specific payment.
[**list_payment_operations**](PaymentsApi.md#list_payment_operations) | **GET** /v1/payment/{id}/operation | Retrieve all payment operations for a specific payment.
[**list_payments**](PaymentsApi.md#list_payments) | **GET** /v1/payment | Retrieve all payments created.
[**refund_payment**](PaymentsApi.md#refund_payment) | **POST** /v1/payment/{id}/refund | Refund the balance of a token for a given payment to the buyerAddress
[**settle_payment**](PaymentsApi.md#settle_payment) | **POST** /v1/payment/{id}/settle | Settle a specific amount of a token for a given payment to the transferAddress and remaining balance (if any) will be refunded to the buyerAddress



## create_payment

> CreatePaymentResponse create_payment(create_payment_request, opts)

Generate a unique wallet address in the specified network to accept payment

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

api_instance = BleumiPay::PaymentsApi.new
create_payment_request = BleumiPay::CreatePaymentRequest.new # CreatePaymentRequest | 
opts = {
  chain: BleumiPay::Chain.new # Chain | Ethereum network in which payment is to be created. Please refer documentation for Supported Networks
}

begin
  #Generate a unique wallet address in the specified network to accept payment
  result = api_instance.create_payment(create_payment_request, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PaymentsApi->create_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md)|  | 
 **chain** | [**Chain**](.md)| Ethereum network in which payment is to be created. Please refer documentation for Supported Networks | [optional] 

### Return type

[**CreatePaymentResponse**](CreatePaymentResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment

> Payment get_payment(id)

Retrieve the wallet addresses & token balances for a given payment

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

api_instance = BleumiPay::PaymentsApi.new
id = 'id_example' # String | Unique identifier of the payment (specified during [Create a Payment](#createPayment)) to retrieve

begin
  #Retrieve the wallet addresses & token balances for a given payment
  result = api_instance.get_payment(id)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#createPayment)) to retrieve | 

### Return type

[**Payment**](Payment.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_operation

> PaymentOperation get_payment_operation(id, txid)

Retrieve a payment operation for a specific payment.

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

api_instance = BleumiPay::PaymentsApi.new
id = 'id_example' # String | Unique identifier of the payment (specified during [Create a Payment](#createPayment))
txid = 'txid_example' # String | ID of a specific operation of the payment

begin
  #Retrieve a payment operation for a specific payment.
  result = api_instance.get_payment_operation(id, txid)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_operation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#createPayment)) | 
 **txid** | **String**| ID of a specific operation of the payment | 

### Return type

[**PaymentOperation**](PaymentOperation.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_operations

> PaginatedPaymentOperations list_payment_operations(id, opts)

Retrieve all payment operations for a specific payment.

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

api_instance = BleumiPay::PaymentsApi.new
id = 'id_example' # String | Unique identifier of the payment (specified during [Create a Payment](#createPayment))
opts = {
  next_token: 'next_token_example' # String | Cursor to start results from
}

begin
  #Retrieve all payment operations for a specific payment.
  result = api_instance.list_payment_operations(id, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PaymentsApi->list_payment_operations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#createPayment)) | 
 **next_token** | **String**| Cursor to start results from | [optional] 

### Return type

[**PaginatedPaymentOperations**](PaginatedPaymentOperations.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payments

> PaginatedPayments list_payments(opts)

Retrieve all payments created.

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

api_instance = BleumiPay::PaymentsApi.new
opts = {
  next_token: 'next_token_example', # String | Cursor to start results from
  sort_by: 'sort_by_example', # String | Sort payments by
  start_at: 'start_at_example', # String | Get payments from this timestamp (unix)
  end_at: 'end_at_example' # String | Get payments till this timestamp (unix)
}

begin
  #Retrieve all payments created.
  result = api_instance.list_payments(opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PaymentsApi->list_payments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_token** | **String**| Cursor to start results from | [optional] 
 **sort_by** | **String**| Sort payments by | [optional] 
 **start_at** | **String**| Get payments from this timestamp (unix) | [optional] 
 **end_at** | **String**| Get payments till this timestamp (unix) | [optional] 

### Return type

[**PaginatedPayments**](PaginatedPayments.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refund_payment

> PaymentOperationResponse refund_payment(id, payment_refund_request, opts)

Refund the balance of a token for a given payment to the buyerAddress

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

api_instance = BleumiPay::PaymentsApi.new
id = 'id_example' # String | Unique identifier of the payment (specified during [Create a Payment](#createPayment))
payment_refund_request = BleumiPay::PaymentRefundRequest.new # PaymentRefundRequest | Request body - used to specify the token to refund.
opts = {
  chain: BleumiPay::Chain.new # Chain | Ethereum network in which payment is to be created.
}

begin
  #Refund the balance of a token for a given payment to the buyerAddress
  result = api_instance.refund_payment(id, payment_refund_request, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PaymentsApi->refund_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#createPayment)) | 
 **payment_refund_request** | [**PaymentRefundRequest**](PaymentRefundRequest.md)| Request body - used to specify the token to refund. | 
 **chain** | [**Chain**](.md)| Ethereum network in which payment is to be created. | [optional] 

### Return type

[**PaymentOperationResponse**](PaymentOperationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## settle_payment

> PaymentOperationResponse settle_payment(id, payment_settle_request, opts)

Settle a specific amount of a token for a given payment to the transferAddress and remaining balance (if any) will be refunded to the buyerAddress

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

api_instance = BleumiPay::PaymentsApi.new
id = 'id_example' # String | Unique identifier of the payment (specified during [Create a Payment](#createPayment))
payment_settle_request = BleumiPay::PaymentSettleRequest.new # PaymentSettleRequest | Request body - used to specify the amount to settle.
opts = {
  chain: BleumiPay::Chain.new # Chain | Ethereum network in which payment is to be created.
}

begin
  #Settle a specific amount of a token for a given payment to the transferAddress and remaining balance (if any) will be refunded to the buyerAddress
  result = api_instance.settle_payment(id, payment_settle_request, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PaymentsApi->settle_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#createPayment)) | 
 **payment_settle_request** | [**PaymentSettleRequest**](PaymentSettleRequest.md)| Request body - used to specify the amount to settle. | 
 **chain** | [**Chain**](.md)| Ethereum network in which payment is to be created. | [optional] 

### Return type

[**PaymentOperationResponse**](PaymentOperationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

