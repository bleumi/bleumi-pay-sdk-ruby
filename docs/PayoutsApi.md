# BleumiPay::PayoutsApi

Payouts are available only for the Ethereum, xDAI and RSK networks today and require you to set up a Private Payment Processor and link it to your account. Please contact support@bleumi.com if you want to enable payouts for your account.

## create_payout

> CreatePayoutResponse create_payout(create_payout_request, opts)

This method makes a payout from your Private Payment Processor.

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

opts = {
  chain: BleumiPay::Chain::GOERLI # Chain | Network in which payment is to be created.
}

begin

  create_payout_request = BleumiPay::CreatePayoutRequest.new # CreatePayoutRequest | Request body - used to specify payout creation parameters.
  # This example shows 2 payouts being created
  # Creating Payout-1
  payout1 = BleumiPay::Payout.new
  payout1.amount = '<PAYOUT_AMT_1>' # str | Replace <PAYOUT_AMT_1>  with the 1st payout's amount
  payout1.transfer_address = '<PAYOUT_ADDR_1>' # str | Replace <PAYOUT_ADDR_1>  with the 1st payout's receiver's address
  # Creating Payout-2
  payout2 = BleumiPay::Payout.new
  payout2.amount = '<PAYOUT_AMT_2>' # str | Replace <PAYOUT_AMT_2>  with the 2nd payout's amount
  payout2.transfer_address = '<PAYOUT_ADDR_2>' # str | Replace <PAYOUT_ADDR_2>  with the 2nd payout's receiver's address
  # Creating a payouts array with both the payouts created above 
  payouts = [payout1, payout2]

  create_payout_request.txid = '<TXID>' # str | Replace with unique payout ID 
  create_payout_request.token = '<TOKEN>' # str | Replace <TOKEN>  by anyone of the following values: 'ETH' or 'XDAI' or 'XDAIT' or ECR-20 Contract Address or 'RBTC' or RSK ECR-20 Contract Address or 'Asset ID' of Algorand Standard Asset.
  create_payout_request.payouts = payouts # setting the payouts array to the payout create request
  
  #Create a payout.
  result = api_instance.create_payout(create_payout_request, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling create_payout: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_payout_request** | [**CreatePayoutRequest**](CreatePayoutRequest.md)| Specify payout creation parameters. |
 **chain** | [**Chain**](Chain.md)| Network in which the payout is to be made. Please refer documentation for [Supported Networks](https://pay.bleumi.com/docs/#supported-networks) |


### Return type

[**CreatePayoutResponse**](CreatePayoutResponse.md)

Field | Type | Description
----- | ----- | -----
salt | string | Unique id generated for the given txid

### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema
ValidationError <br> <i>invalid_token</i> | Provided token is not valid for the specified 'chain'
ValidationError <br> <i>no_gas_accounts</i> | No active gas accounts present in your account. Please activate at least one gas account from the <a href="https://pay.bleumi.com/app/" target="_blank">Bleumi Pay Dashboard</a>.
ValidationError <br> <i>txid_already_exists</i> | The 'txid' provided has been used previously
ValidationError <br> <i>not_whitelisted&#124;&lt;addr&gt;</i> | The &lt;addr&gt; provided has not been whitelisted in your Private Payment Processor
ValidationError <br> <i>payouts_requires_private_payment_processor</i> | Private Payment Processor is not set up and linked to your account


## list_payouts

> PaginatedPayoutItems list_payouts(opts)

The list of payouts is returned as an array in the 'results' field. The list is restricted to a maximum of 10 payouts per page.

If there are more than 10 payouts, a cursor is returned in the 'nextToken' field. Passing this as the 'nextToken' query parameter will fetch the next page. 

When the value of 'nextToken' field is an empty string, there are no more payouts.

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
opts = {
  next_token: '', # String | Cursor to start results from
  sort_by: '<SORT_BY>', # String | Sort payouts by (optional) | Eg. "createdAt"
  start_at: '<START_TIMESTAMP>', # String | Get payouts from this timestamp (optional) | Eg. 1577836800 for 1-JAN-2020
  end_at: '' # String | Get payouts till this timestamp (optional) 
}

begin
  #Returns a list of payouts
  result = api_instance.list_payouts(opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling list_payouts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **next_token** | **String**| Cursor to start results from | [optional] 
 **sort_by** | **String**| Sort payouts by | [optional] 'createdAt' - results will be sorted by created time in ascending order. <br>'updatedAt' - results will be sorted by last updated time in ascending order.
 **start_at** | **String**| Get payouts from this timestamp (unix) | [optional] 
 **end_at** | **String**| Get payouts till this timestamp (unix) | [optional] 

### Return type

[**PaginatedPayoutItems**](PaginatedPayoutItems.md)

