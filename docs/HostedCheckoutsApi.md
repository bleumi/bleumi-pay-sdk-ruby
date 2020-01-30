# BleumiPay::HostedCheckoutsApi


## create_checkout_url

> CreateCheckoutUrlResponse create_checkout_url(create_checkout_url_request)

This method generates a unique checkout URL to accept payment.

### Example

```ruby
# load the gem
require 'bleumi_pay_sdk_ruby'
# setup authorization
BleumiPay.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::HostedCheckoutsApi.new
create_checkout_url_request = BleumiPay::CreateCheckoutUrlRequest.new # CreateCheckoutUrlRequest | Specify checkout URL creation parameters.

begin

create_checkout_url_request = BleumiPay::CreateCheckoutUrlRequest.new # CreatePayoutRequest | Specify payout creation parameters.
create_checkout_url_request.id = '<ID>' # Eg. 1
create_checkout_url_request.currency = "<CURRENCY>" # Eg. USD
create_checkout_url_request.amount = "<AMOUNT>" # Eg. 10
create_checkout_url_request.success_url = "<SUCCESS_URL>" # Eg. https://demo.store/api/completeOrder
create_checkout_url_request.cancel_url = "<CANCEL_URL>" # Eg. https://demo.store/api/cancelOrder
create_checkout_url_request.token = '<TOKEN>' # Replace <TOKEN> with ETH or XDAI or ERC-20 Token Contract Address or XDAIT
create_checkout_url_request.chain = BleumiPay::Chain::GOERLI #
create_checkout_url_request.buyer_address = '<BUYER_ADDR>' # Replace <BUYER_ADDR> with the buyer's Ethereum Address


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

Field | Type | Description
----- | ----- | -----
id | string | Unique identifier generated for this checkout URL
url | string | URL for buyer to complete payment

### Format - hmac.input GET parameter passed in successUrl

The hmac.input GET parameter passed to successUrl contains payment parameters as a pipe ('|') separated string in the following order,
<ul style="font-weight: 500">
        <li><b>Chain</b> - Please refer documentation for <a href="https://pay.bleumi.com/docs/#supported-networks" target="_blank">Supported Networks</a> </li>
        <li><b>Wallet Address</b></li>
        <li><b>Token</b><br> 
            <i>ETH</i> - for Ethereum<br> 
            <i>XDAI</i> - for xDai<br> 
            <i>XDAIT</i> - for xDai Testnet<br> 
            <i>ALGO</i> - for Algo <br> 
            <i>&lt;asset id&gt;</i> - for Algorand Standard Asset <br> 
            <i>&lt;contract address of ERC-20 token&gt;</i> - for ERC-20; Please refer to <a href="https://pay.bleumi.com/docs/#erc-20" target="_blank">ERC-20 Tokens</a> for contract address; </li>
        <li><b>Amount</b> - Token amount for the payment</li>
        <li><b>Number of block confirmations</b><br> 
            <i>12</i> - for ETH<br> 
            <i>0</i> - for XDAI<br> 
            <i>0</i> - for XDAIT<br> 
            <i>0</i> - for ALGO<br> 
            <i>0</i> - for Algorand Standard Asset<br> 
            <i>12</i> - for ERC-20<br>
        </li>
    </li>
</ul>

<aside class="notice">
Call [Validate a Checkout Payment](#validate_checkout_payment) method to validate the GET parameters passed in successUrl and then cross-check the payment parameters of hmac.input GET parameter with your database.
</aside>


### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema
ValidationError <br> <i>no_tokens_defined</i> | Please configure tokens for the Hosted Checkout in your account in the <a href="https://pay.bleumi.com/app/" target="_blank">Bleumi Pay Dashboard</a>
ValidationError <br> <i>no_tokens_defined_for_currency</i> | No tokens have been defined in your account for the specified currency
ValidationError <br> <i>invalid_token</i> | The token provided is not valid for the specified currency


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
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
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


### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
ValidationError <br> <i>no_tokens_defined</i> | No tokens have been defined in your account


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
  config.api_key['x-api-key'] = '<YOUR_API_KEY>'
end

api_instance = BleumiPay::HostedCheckoutsApi.new

begin
  validate_checkout_request = BleumiPay::ValidateCheckoutRequest.new # ValidateCheckoutRequest | Specify validation of checkout parameters.
  validate_checkout_request.hmac_alg = '<ALD>' # Eg. HMAC-SHA256-HEX
  validate_checkout_request.hmac_input = '<INPUT>' # Eg. goerli|0xbeaea438bc2e19d097906b597219c288e8eb7b2e|0x115615dbd0f835344725146fa6343219315f15e5|10|12
  validate_checkout_request.hmac_key_id = '<VER>' # Eg. v1
  validate_checkout_request.hmac_value = '<HMAC_VALUE>' # Eg. bdf82eb42efac09150d62ac1bcadd2fd0f64852ded2b571567c905217adf246a
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

Field | Type | Description
----- | ----- | -----
valid | boolean | <b>true</b> - The data has been generated by Bleumi Pay <br> <b>false</b> - The data has not been generated by Bleumi Pay, the payment must be treated as unpaid

### 400 Errors

The following table is a list of possible error codes that can be returned, along with additional information about how to resolve them for a response with 400 status code.

errorCode <br> <i>errorMessage</i> | Description
---- | ----
ValidationError <br> <i>&lt;details&gt;</i> | Details on input which does not conform to the above schema