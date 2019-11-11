# BleumiPay::Erc20PaymentsApi

## generate_wallet

> WalletCreateOutput generate_wallet(wallet_create_input, opts)

Generate an unique wallet address to accept payments for an ERC-20 token from a buyer.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# Setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::Erc20PaymentsApi.new
wallet_create_input = BleumiPay::WalletCreateInput.new # WalletCreateInput |
opts = {
  chain: BleumiPay::EthNetwork::ROPSTEN # EthNetwork | Ethereum network in which wallet is to be created.
}

buyer_address = BleumiPay::EthAddress.new('<BUYER_ADDR>') # Replace <BUYER_ADDR> with the Buyer Address
transfer_address = BleumiPay::EthAddress.new('<MERCHANT_ADDR>') # Replace <MERCHANT_ADDR> with the Merchant's Enthereum Network Address

wallet_create_input.id = '<ID>' # String | Unique ID identifying the wallet in your system
wallet_create_input.buyer_address = buyer_address
wallet_create_input.transfer_address = transfer_address

begin
  #Generate an unique wallet address to accept payments for an ERC-20 token from a buyer
  result = api_instance.generate_wallet(wallet_create_input, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling Erc20PaymentsApi->generate_wallet: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet_create_input** | [**WalletCreateInput**](WalletCreateInput.md)| Specify the parameters for the wallet generation.  |
 **chain** | [**EthNetwork**](EthNetwork.md)| Ethereum network in which the wallet is to be created. Please refer to the [Supported Ethereum Networks](https://pay.bleumi.com/docs/#supported-ethereum-networks) |

### Return type

[**WalletCreateOutput**](WalletCreateOutput.md)

## get_wallet

> Wallet get_wallet(id)

This method retrieves a wallet.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::Erc20PaymentsApi.new
id = '<ID>' # String | The ID of the wallet to get the details

begin
  #Return a specific wallet
  result = api_instance.get_wallet(id)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling Erc20PaymentsApi->get_wallet: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique ID identifying the wallet in your system |

### Return type

[**Wallet**](Wallet.md)


## list_wallets

> PaginatedWallets list_wallets(opts)

This method retrieves a list of wallets.

### Pagination

The list of wallets is returned as an array in the 'results' field. The list is restricted to a maximum of 100 wallets per page.

If there are more than 100 wallets generated for an ethereum network, a cursor is returned in the 'nextToken' field. Passing this as the 'nextToken' query parameter will fetch the next page.

When the value of 'nextToken' field is an empty string, there are no more wallets.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::Erc20PaymentsApi.new
opts = {
  next_token: '', # String | Cursor to start results from
  sort_by: '<SORT_BY>', # String | Sort wallets by (optional) | Eg. "createdAt"
  start_at: '<START_TIMESTAMP>', # String | Get wallets from this timestamp (optional) | Eg. 1546300800 for 1-JAN-2019
  end_at: '' # String | Get wallets till this timestamp (optional) 
}

begin
  #Returns a list of wallets
  result = api_instance.list_wallets(opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling Erc20PaymentsApi->list_wallets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_token** | **String**| The token to fetch the next page, supply blank value to get the first page of wallet operations | [optional]
 **sort_by** | **String**| Sort wallets by | [optional] 'createdAt' - results will be sorted by created time in ascending order. 'updatedAt' - results will be sorted by last updated time in ascending order.
 **start_at** | **String**| Get wallets from this timestamp | [optional] Get wallets from this timestamp (UNIX). Will be compared to created or updated time based on the value of sortBy parameter.
 **end_at** | **String**| Get wallets till this timestamp | [optional] Get wallets till this timestamp (UNIX). Will be compared to created or updated time based on the value of sortBy parameter.

### Return type

[**PaginatedWallets**](PaginatedWallets.md)


## settle_wallet

> WalletOperationOutput settle_wallet(id, wallet_settle_operation_input)

This method settles a specific amount of an ERC-20 token of a wallet to the transferAddress specified during [Generate Wallet](#generate_wallet). And remaining balance (if any) will be refunded to the buyerAddress specified during [Generate Wallet](#generate_wallet).

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::Erc20PaymentsApi.new
id = '<ID>' # String | Unique ID identifying this record in your system
wallet_settle_operation_input = BleumiPay::WalletSettleOperationInput.new 
wallet_settle_operation_input.amount = '<AMT>' # String | Replace <AMT> with settle amount
wallet_settle_operation_input.token = BleumiPay::EthAddress.new('<TOKEN_ADDR>') # String | Replace <TOKEN_ADDR> with ECR-20 token address

begin
  #Settle a wallet, amount received will be transferred even if less than payment amount
  result = api_instance.settle_wallet(id, wallet_settle_operation_input)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling Erc20PaymentsApi->settle_wallet: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the wallet (specified during [Generate Wallet](#generatewallet)) to settle
 **wallet_settle_operation_input** | [**WalletSettleOperationInput**](WalletSettleOperationInput.md)| Specify the token and amount to settle. |

### Return type

[**WalletOperationOutput**](WalletOperationOutput.md)

## refund_wallet

> WalletOperationOutput refund_wallet(id, wallet_refund_operation_input)

This method refunds the balance of an ERC-20 token of a wallet to the buyerAddress specified during [Generate Wallet](#generate_wallet).

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::Erc20PaymentsApi.new
id = '<ID>' # String | Unique ID identifying this record in your system
wallet_refund_operation_input = BleumiPay::WalletRefundOperationInput.new 
wallet_refund_operation_input.token = BleumiPay::EthAddress.new('<TOKEN_ADDR>') # String | Replace <TOKEN_ADDR> with ECR-20 token address

begin
  #Refund wallet
  result = api_instance.refund_wallet(id, wallet_refund_operation_input)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling Erc20PaymentsApi->refund_wallet: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the wallet (specified during [Generate Wallet](#generate_wallet)) to refund |
 **wallet_refund_operation_input** | [**WalletRefundOperationInput**](WalletRefundOperationInput.md)| Specify the token to refund. |

### Return type

[**WalletOperationOutput**](WalletOperationOutput.md)


## get_wallet_operation

> WalletOperation get_wallet_operation(id, txid)

This method retrieves an operation of a wallet.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::Erc20PaymentsApi.new
id = '<ID>' # String | Unique ID identifying the wallet in your system
txid = '<TXID>' # String | ID of a specific operation of the wallet

begin
  #Return a specific operation of the wallet
  result = api_instance.get_wallet_operation(id, txid)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling Erc20PaymentsApi->get_wallet_operation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the wallet (specified during [Generate Wallet](#generate_wallet)) |
 **txid** | **String**| Transaction ID of the operation (returned during [Refund Wallet](#refundwallet) / [Settle Wallet](#settlewallet)) to retrieve |

### Return type

[**WalletOperation**](WalletOperation.md)



## list_wallet_operations

> PaginatedWalletOperations list_wallet_operations(id, opts)

This method retrieves all operations of a wallet.

### Pagination

The list of operations is returned as an array in the 'results' field. The list is restricted to a maximum of 100 operations per page.

If there are more than 100 operations for a wallet, a cursor is passed in the 'nextToken' field. Passing this as the 'nextToken' query parameter will fetch the next page.

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

api_instance = BleumiPay::Erc20PaymentsApi.new
id = '<ID>' # String | Unique ID identifying the wallet in your system
opts = {
  next_token: '' # String | Cursor to start results from
}

begin
  #Return the list of operations performed by the mechant on a specific wallet
  result = api_instance.list_wallet_operations(id, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling Erc20PaymentsApi->list_wallet_operations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the wallet (specified during [Generate Wallet](#generate_wallet)) |
 **next_token** | **String**| The token to fetch the next page, supply blank value to get the first page of wallet operations | [optional]

### Return type

[**PaginatedWalletOperations**](PaginatedWalletOperations.md)