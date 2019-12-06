# BleumiPay::PayoutsApi

All URIs are relative to *https://api.pay.bleumi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payout**](PayoutsApi.md#create_payout) | **POST** /v1/payout | Create a payout.
[**list_payouts**](PayoutsApi.md#list_payouts) | **GET** /v1/payout | Returns a list of payouts



## create_payout

> CreatePayoutResponse create_payout(create_payout_request, opts)

Create a payout.

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

api_instance = BleumiPay::PayoutsApi.new
create_payout_request = BleumiPay::CreatePayoutRequest.new # CreatePayoutRequest | Request body - used to specify payout creation parameters.
opts = {
  chain: BleumiPay::Chain.new # Chain | Ethereum network in which payment is to be created. Please refer documentation for Supported Networks
}

begin
  #Create a payout.
  result = api_instance.create_payout(create_payout_request, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PayoutsApi->create_payout: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payout_request** | [**CreatePayoutRequest**](CreatePayoutRequest.md)| Request body - used to specify payout creation parameters. | 
 **chain** | [**Chain**](.md)| Ethereum network in which payment is to be created. Please refer documentation for Supported Networks | [optional] 

### Return type

[**CreatePayoutResponse**](CreatePayoutResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_payouts

> PaginatedPayoutItems list_payouts(opts)

Returns a list of payouts

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

api_instance = BleumiPay::PayoutsApi.new
opts = {
  next_token: 'next_token_example', # String | Cursor to start results from
  sort_by: 'sort_by_example', # String | Sort payments by
  start_at: 'start_at_example', # String | Get payouts from this timestamp (unix)
  end_at: 'end_at_example' # String | Get payouts till this timestamp (unix)
}

begin
  #Returns a list of payouts
  result = api_instance.list_payouts(opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PayoutsApi->list_payouts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_token** | **String**| Cursor to start results from | [optional] 
 **sort_by** | **String**| Sort payments by | [optional] 
 **start_at** | **String**| Get payouts from this timestamp (unix) | [optional] 
 **end_at** | **String**| Get payouts till this timestamp (unix) | [optional] 

### Return type

[**PaginatedPayoutItems**](PaginatedPayoutItems.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

