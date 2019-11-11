# Bleumi Pay SDK for Ruby

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://raw.githubusercontent.com/bleumi/bleumi-pay-sdk-ruby/master/LICENSE.txt)

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
# Load the gem
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

buyer_address = BleumiPay::EthAddress.new('<BUYER_ADDR>') # Replace <BUYER_ADDR> with the Buyer's Enthereum Network Address
transfer_address = BleumiPay::EthAddress.new('<MERCHANT_ADDR>') # Replace <MERCHANT_ADDR> with the Merchant's Enthereum Network Address

wallet_create_input.id = '<ID>'
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

More examples can be found under each method in [SDK Classes](#sdk-classes) section.

## SDK Classes

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
Erc20PaymentsApi | [**generate_wallet**](docs/Erc20PaymentsApi.md#generate_wallet) | **POST** /v1/payment/erc20/wallet | Generates an unique wallet address to accept payments for an ERC-20 token.
Erc20PaymentsApi | [**get_wallet**](docs/Erc20PaymentsApi.md#get_wallet) | **GET** /v1/payment/erc20/wallet/{id} | Retrieve a wallet.
Erc20PaymentsApi | [**list_wallets**](docs/Erc20PaymentsApi.md#list_wallets) | **GET** /v1/payment/erc20/wallet | Retrieve all wallets.
Erc20PaymentsApi | [**settle_wallet**](docs/Erc20PaymentsApi.md#settle_wallet) | **POST** /v1/payment/erc20/wallet/{id}/settle | This method settles a specific amount of an ERC-20 token of a wallet to the transferAddress specified during [Generate Wallet](/docs/Erc20PaymentsApi.md#generatewallet)
Erc20PaymentsApi | [**refund_wallet**](docs/Erc20PaymentsApi.md#refund_wallet) | **POST** /v1/payment/erc20/wallet/{id}/refund | This method refunds the balance of an ERC-20 token of a wallet to the buyerAddress specified during [Generate Wallet](/docs/Erc20PaymentsApi.md#generatewallet).
Erc20PaymentsApi | [**get_wallet_operation**](docs/Erc20PaymentsApi.md#get_wallet_operation) | **GET** /v1/payment/erc20/wallet/{id}/operation/{txid} | Retrieve an operation of a wallet
Erc20PaymentsApi | [**list_wallet_operations**](docs/Erc20PaymentsApi.md#list_wallet_operations) | **GET** /v1/payment/erc20/wallet/{id}/operation | Retrieve all operations of a wallet.

## Documentation for Models

 - [BadRequest](docs/BadRequest.md)
 - [EthAddress](docs/EthAddress.md)
 - [EthNetwork](docs/EthNetwork.md)
 - [PaginatedWalletOperations](docs/PaginatedWalletOperations.md)
 - [PaginatedWallets](docs/PaginatedWallets.md)
 - [Wallet](docs/Wallet.md)
 - [WalletBalance](docs/WalletBalance.md)
 - [WalletCreateInput](docs/WalletCreateInput.md)
 - [WalletCreateOutput](docs/WalletCreateOutput.md)
 - [WalletInputs](docs/WalletInputs.md)
 - [WalletOperation](docs/WalletOperation.md)
 - [WalletOperationInputs](docs/WalletOperationInputs.md)
 - [WalletOperationOutput](docs/WalletOperationOutput.md)
 - [WalletRefundOperationInput](docs/WalletRefundOperationInput.md)
 - [WalletSettleOperationInput](docs/WalletSettleOperationInput.md)

## Limitations

 - [Bleumi Pay API Limits](https://pay.bleumi.com/docs/#api-limits)

## License

Copyright 2019 Bleumi, Inc.

Code licensed under the [MIT License](License.md).
