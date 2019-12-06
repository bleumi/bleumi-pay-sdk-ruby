<img src="https://pay.bleumi.com/wp-content/uploads/2019/04/logo_dark_bleumi_invoice_6797x1122.png" height="30">

# Bleumi Pay SDK for Ruby

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://raw.githubusercontent.com/bleumi/bleumi-pay-sdk-ruby/master/LICENSE)

The Bleumi Pay SDK is a one-stop shop to help you integrate ECR-20 payments into your business or application. The SDK bundles [Bleumi Pay API](https://pay.bleumi.com/docs/#introduction) into one SDK to ease implementation and support.

bleumi-pay-sdk-ruby is a Ruby library that provides an interface between your Rubu=y application and [Bleumi Pay API](https://pay.bleumi.com/docs/#introduction). This tutorial covers the basics, including examples, needed to use the SDK.

## Getting Started

### Pre-requisites

#### Development Environment

Ruby 1.9+

#### Obtain An API Key

Bleumi Pay SDK uses API keys to authenticate requests. You can obtain an API key through the [Bleumi Pay Dashboard](https://pay.bleumi.com/app/).

### Install Package

[![Gem](https://img.shields.io/gem/v/bleumi_pay_sdk_ruby.svg?style=flat)](http://rubygems.org/gems/bleumi_pay_sdk_ruby)


To install,
```bash
gem install bleumi_pay_sdk_ruby
```

### Install from Git

Add the following in the Gemfile:

    gem 'bleumi_pay_sdk_ruby', :git => 'https://github.com/bleumi/bleumi_pay_sdk_ruby.git'


### Run Sample Code

The following code generates a wallet to accept payment from the buyer specific for the ECR-20 Token.


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
  chain: BleumiPay::Chain.new # Chain | Ethereum network in which payment is to be created. Please refer documentation for Supported Networks
}

begin
  
  create_payment_request.id = '<ID>'
  create_payment_request.buyer_address = BleumiPay::EthAddress.new('<BUYER_ADDR>') # Replace <BUYER_ADDR> with the Buyer's Enthereum Network Address
  create_payment_request.transfer_address = BleumiPay::EthAddress.new('<MERCHANT_ADDR>') # Replace <MERCHANT_ADDR> with the Merchant's Enthereum Network Address

  #Create a payout.
  result = api_instance.create_payment(create_payment_request, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling PayoutsApi->create_payment: #{e}"
end
```

More examples can be found under each method in [SDK Classes](#sdk-classes) section.

## SDK Classes

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
BleumiPay::PaymentsApi | [**create_payment**](docs/PaymentsApi.md#create_payment) | **POST** /v1/payment | Generate a unique wallet address in the specified network to accept payment
BleumiPay::PaymentsApi | [**get_payment**](docs/PaymentsApi.md#get_payment) | **GET** /v1/payment/{id} | Retrieve the wallet addresses & token balances for a given payment
BleumiPay::PaymentsApi | [**list_payments**](docs/PaymentsApi.md#list_payments) | **GET** /v1/payment | Retrieve all payments created.
BleumiPay::PaymentsApi | [**settle_payment**](docs/PaymentsApi.md#settle_payment) | **POST** /v1/payment/{id}/settle | Settle a specific amount of a token for a given payment to the transferAddress and remaining balance (if any) will be refunded to the buyerAddress
BleumiPay::PaymentsApi | [**refund_payment**](docs/PaymentsApi.md#refund_payment) | **POST** /v1/payment/{id}/refund | Refund the balance of a token for a given payment to the buyerAddress
BleumiPay::PaymentsApi | [**get_payment_operation**](docs/PaymentsApi.md#get_payment_operation) | **GET** /v1/payment/{id}/operation/{txid} | Retrieve a payment operation for a specific payment.
BleumiPay::PaymentsApi | [**list_payment_operations**](docs/PaymentsApi.md#list_payment_operations) | **GET** /v1/payment/{id}/operation | Retrieve all payment operations for a specific payment.
BleumiPay::HostedCheckoutsApi | [**create_checkout_url**](docs/HostedCheckoutsApi.md#create_checkout_url) | **POST** /v1/payment/hc | Generate a unique checkout URL to accept payment.
BleumiPay::HostedCheckoutsApi | [**list_tokens**](docs/HostedCheckoutsApi.md#list_tokens) | **GET** /v1/payment/hc/tokens | Retrieve all tokens configured for the Hosted Checkout in your account in the [Bleumi Pay Dashboard](https://pay.bleumi.com/app/).
BleumiPay::HostedCheckoutsApi | [**validate_checkout_payment**](docs/HostedCheckoutsApi.md#validate_checkout_payment) | **POST** /v1/payment/hc/validate | Validate the GET parameters passed by Hosted Checkout in successUrl upon successfully completing payment.
BleumiPay::PayoutsApi | [**create_payout**](docs/PayoutsApi.md#create_payout) | **POST** /v1/payout | Create a payout.
*BleumiPay::PayoutsApi* | [**list_payouts**](docs/PayoutsApi.md#list_payouts) | **GET** /v1/payout | Returns a list of payouts


## Documentation for Models

 - [BleumiPay::BadRequest](docs/BadRequest.md)
 - [BleumiPay::Chain](docs/Chain.md)
 - [BleumiPay::CheckoutToken](docs/CheckoutToken.md)
 - [BleumiPay::CreateCheckoutUrlRequest](docs/CreateCheckoutUrlRequest.md)
 - [BleumiPay::CreateCheckoutUrlResponse](docs/CreateCheckoutUrlResponse.md)
 - [BleumiPay::CreatePaymentRequest](docs/CreatePaymentRequest.md)
 - [BleumiPay::CreatePaymentResponse](docs/CreatePaymentResponse.md)
 - [BleumiPay::CreatePayoutRequest](docs/CreatePayoutRequest.md)
 - [BleumiPay::CreatePayoutResponse](docs/CreatePayoutResponse.md)
 - [BleumiPay::EthAddress](docs/EthAddress.md)
 - [BleumiPay::NetworkBalance](docs/NetworkBalance.md)
 - [BleumiPay::PaginatedPaymentOperations](docs/PaginatedPaymentOperations.md)
 - [BleumiPay::PaginatedPayments](docs/PaginatedPayments.md)
 - [BleumiPay::PaginatedPayoutItems](docs/PaginatedPayoutItems.md)
 - [BleumiPay::Payment](docs/Payment.md)
 - [BleumiPay::PaymentAddresses](docs/PaymentAddresses.md)
 - [BleumiPay::PaymentBalances](docs/PaymentBalances.md)
 - [BleumiPay::PaymentOperation](docs/PaymentOperation.md)
 - [BleumiPay::PaymentOperationInputs](docs/PaymentOperationInputs.md)
 - [BleumiPay::PaymentOperationResponse](docs/PaymentOperationResponse.md)
 - [BleumiPay::PaymentRefundRequest](docs/PaymentRefundRequest.md)
 - [BleumiPay::PaymentSettleRequest](docs/PaymentSettleRequest.md)
 - [BleumiPay::Payout](docs/Payout.md)
 - [BleumiPay::PayoutItem](docs/PayoutItem.md)
 - [BleumiPay::PayoutItemInputs](docs/PayoutItemInputs.md)
 - [BleumiPay::Token](docs/Token.md)
 - [BleumiPay::ValidateCheckoutRequest](docs/ValidateCheckoutRequest.md)
 - [BleumiPay::ValidateCheckoutResponse](docs/ValidateCheckoutResponse.md)
 - [BleumiPay::WalletAddress](docs/WalletAddress.md)
 - [BleumiPay::WalletBalance](docs/WalletBalance.md)


## Limitations

 - [Bleumi Pay API Limits](https://pay.bleumi.com/docs/#api-limits)

## License

Copyright 2019 Bleumi, Inc.

Code licensed under the [MIT License](LICENSE).