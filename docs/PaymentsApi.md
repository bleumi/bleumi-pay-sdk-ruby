# BleumiPay::PaymentsApi


## create_payment

> CreatePaymentResponse create_payment(create_payment_request, opts)

This method generates a unique wallet address in the specified network to accept payment.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::PayoutsApi.new
create_payment_request = BleumiPay::CreatePaymentRequest.new # CreatePaymentRequest | 
opts = {
  chain: BleumiPay::Chain::GOERLI # Chain | Network in which payment is to be created.
}

begin
  
  create_payment_request.id = '<ID>'
  create_payment_request.buyer_address = '<BUYER_ADDR>' # Replace <BUYER_ADDR> with the Buyer's Enthereum Network Address
  create_payment_request.transfer_address = '<MERCHANT_ADDR>' # Replace <MERCHANT_ADDR> with the Merchant's Enthereum Network Address

  #Create a payout.
  result = api_instance.create_payment(create_payment_request, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling create_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md)| Specify checkout URL creation parameters. | 

### Return type

[**CreatePaymentResponse**](CreatePaymentResponse.md)

Field | Type | Description
----- | ----- | -----
addr | string | Wallet address
inputs | dictionary | A dictionary containing the network specific details used to create the wallet

**Note:** Bleumi recommends each merchant to keep a copy of the `inputs` map to ensure access to wallet funds at all times.

### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ---- 
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema
ValidationError <br> <i>wallet_already_exists&#124;&lt;addr&gt;</i> | A wallet with address &lt;addr&gt; has already been created with the specified payment 'id' for the given network

## get_payment

> Payment get_payment(id)

This method retrieves the wallet addresses & token balances for a given payment.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::PaymentsApi.new
id = '<ID>' # String | Unique identifier of the payment (specified during create payment) to retrieve

begin
  #Retrieve the wallet addresses & token balances for a given payment
  result = api_instance.get_payment(id)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling get_payment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#create_payment)) to retrieve | 

### Return type

[**Payment**](Payment.md)

Field | Type | Description
----- | ----- | -----
addresses | dictionary | A dictionary which gives the address of the wallet generated for each network
balances | dictionary | A dictionary which gives the token balances in each network
createdAt | integer | The created UNIX timestamp of the payment
updatedAt | integer | The last updated UNIX timestamp of the payment

### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema


## list_payments

> PaginatedPayments list_payments(opts)

This method retrieves all payments created.

### Pagination

The list of payments is returned as an array in the 'results' field. The list is restricted to a maximum of 10 per page.

If there are more than 10 payments, a cursor is returned in the 'nextToken' field. Passing this as the 'nextToken' query parameter will fetch the next page.

When the value of 'nextToken' field is an empty string, there are no more payments.


### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::PaymentsApi.new
opts = {
  next_token: '', # String | Cursor to start results from (optional) |
  sort_by: '<SORT_BY>', # String | Sort payments by (optional) | Eg. "createdAt"
  sort_order: '<SORT_ORDER>', # String | Sort Order for payment (optional) | Eg. "ascending"
  start_at: '<START_TIMESTAMP>', # String | Get wallets from this timestamp (optional) | Eg. 1577836800 for 1-JAN-2020
  end_at: nil # String | Get wallets till this timestamp (optional) 
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
 **sort_by** | **String**| Sort payments by | [optional] 'createdAt' - results will be sorted by created time. <br>'updatedAt' - results will be sorted by last updated time.
 **sort_order** | **String**| Sort payments by | [optional] 'ascending' - results will be sorted in ascending order. <br>'descending' - results will be sorted in ascending order.
 **start_at** | **String**| Get payments from this timestamp (unix) | [optional] 
 **end_at** | **String**| Get payments till this timestamp (unix) | [optional] 

### Return type

[**PaginatedPayments**](PaginatedPayments.md)

Parameter | Type | Description
--------- | ------- | -----------
nextToken |  | Cursor to fetch next set of results (if next set is available)
results[] |  | Array of payments, output format is similar to the response of the [Retrieve a Payment](#get_payment) endpoint

### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
MalformedRequest <br> <i>nextToken_invalid</i> | 'nextToken' value is invalid
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema

## settle_payment

> PaymentOperationResponse settle_payment(id, payment_settle_request, opts)

This method settles a specific amount of a token for a given payment to the transferAddress (specified during [Create a Payment](#create_payment)) and remaining balance (if any) will be refunded to the buyerAddress (specified during [Create a Payment](#create_payment)).


### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::PaymentsApi.new

opts = {
  chain: BleumiPay::Chain::GOERLI # Chain | Network in which payment is to be created.
}

begin
  id = '<ID>' # String | Unique identifier of the payment (specified during create payment)
  payment_settle_request = BleumiPay::PaymentSettleRequest.new # PaymentSettleRequest | Request body - used to specify the amount to settle.
  payment_settle_request.amount = '<AMT>' # String | Replace <AMT> with settle amount
  payment_settle_request.token = '<TOKEN>' # String | Replace <TOKEN> with "ALGO" or "ETH" or "XDAI" or "XDAIT" or ERC-20 'Token Contract Address' or 'Algorand Standard Asset token'
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
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#create_payment)) | 
 **payment_settle_request** | [**PaymentSettleRequest**](PaymentSettleRequest.md)| Request body - used to specify the amount to settle. | 
 **chain** | [**Chain**](Chain.md)| Network in which payment is to be created. | [optional] 

### Return type

[**PaymentOperationResponse**](PaymentOperationResponse.md)

### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema
ValidationError <br> <i>no_gas_accounts</i> | No active gas accounts present in account, please activate atleast one account from the developer portal
ValidationError <br> <i>prev_tx_inprogress</i> | A previous operation is still being processed for this wallet
ValidationError <br> <i>invalid_token</i> | Provided token is not valid for the specified 'net' & 'chain'

## refund_payment

> PaymentOperationResponse refund_payment(id, payment_refund_request, opts)

This method refunds the balance of a token for a given payment to the buyerAddress (specified during [Create a Payment](#create_payment)).

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::PaymentsApi.new

opts = {
  chain: BleumiPay::Chain::GOERLI # Chain | Network in which payment is to be created.
}

begin
  id = '<ID>' # String | Unique identifier of the payment (specified during create payment)
  payment_refund_request = BleumiPay::PaymentRefundRequest.new # PaymentRefundRequest | Request body - used to specify the token to refund.
  payment_refund_request.token = '<TOKEN>' # String | Replace <TOKEN> with "ALGO" or "ETH" or "XDAI" or "XDAIT" or ERC-20 'Token Contract Address' or 'Algorand Standard Asset token'

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
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#create_payment)) | 
 **payment_refund_request** | [**PaymentRefundRequest**](PaymentRefundRequest.md)| Request body - used to specify the token to refund. | 
 **chain** | [**Chain**](Chain.md)| Ethereum network in which payment is to be created. | [optional] 

### Return type

[**PaymentOperationResponse**](PaymentOperationResponse.md)


Parameter | Type | Description
--------- | ------- | -----------
txid |  | Unique identifier for the refund operation

### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema
ValidationError <br> <i>no_gas_accounts</i> | No active gas accounts present in account, please activate atleast one account from the developer portal
ValidationError <br> <i>prev_tx_inprogress</i> | A previous operation is still being processed for this wallet
ValidationError <br> <i>invalid_token</i> | Provided address is not a valid ERC-20 token


## get_payment_operation

> PaymentOperation get_payment_operation(id, txid)

This method retrieves a payment operation for a specific payment.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::PaymentsApi.new
id = '<ID>' # String | Unique identifier of the payment (specified during create payment)
txid = '<TXID>' # String | ID of a specific operation of the payment

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
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#create_payment)) | 
 **txid** | **String**| ID of a specific operation of the payment | 

### Return type

[**PaymentOperation**](PaymentOperation.md)


## list_payment_operations

> PaginatedPaymentOperations list_payment_operations(id, opts)

This method retrieves all payment operations for a specific payment.

### Pagination

The list of operations is returned as an array in the 'results' field. The list is restricted to a maximum of 10 operations per page.

If there are more than 10 operations for a wallet, a cursor is passed in the 'nextToken' field. Passing this as the 'nextToken' query parameter will fetch the next page. 

When the value of 'nextToken' field is an empty string, there are no more operations.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::PaymentsApi.new
id = '<ID>' # String | Unique identifier of the payment (specified during Create payment)
opts = {
  next_token: '' # String | Cursor to start results from
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
 **id** | **String**| Unique identifier of the payment (specified during [Create a Payment](#create_payment)) | 
 **next_token** | **String**| Cursor to start results from | [optional] 

### Return type

[**PaginatedPaymentOperations**](PaginatedPaymentOperations.md)

Parameter | Type | Description
--------- | ------- | -----------
nextToken |  | Cursor to fetch next set of results (if next set is available)
results[] |  | Array of payment operations, output format is similar to the response of the [Retrieve a Payment Operation](#get_payment_operation) endpoint

### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
MalformedRequest <br> <i>nextToken_invalid</i> | 'nextToken' value is invalid
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema