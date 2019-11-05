# Bleumi Pay SDK for Ruby

The Bleumi Pay SDK is a one-stop shop to help you integrate ECR-20 payments into your business or application. The SDK bundles [Bleumi Pay API](https://pay.bleumi.com/docs/#introduction) into one SDK to ease implementation and support.

bleumi-pay-sdk-ruby is a Ruby library that provides an interface between your Rubu=y application and [Bleumi Pay API](https://pay.bleumi.com/docs/#introduction). This tutorial covers the basics, including examples, needed to use the SDK.

## Getting Started

### Pre-requisites

#### Development Environment

Ruby 1.9+

#### Obtain An API Key

Bleumi Pay SDK uses API keys to authenticate requests. You can obtain an API key through the [Bleumi Pay developer portal](https://pay.bleumi.com/app/).

### Install Package

[![Gem](https://img.shields.io/gem/v/bleumi_pay_sdk_ruby.svg?style=flat)](http://rubygems.org/gems/bleumi_pay_sdk_ruby)


To install,
```bash
gem 'bleumi_pay_sdk_ruby', '~> 1.0.1'
```

### Install from Git

Add the following in the Gemfile:

    gem 'bleumi_pay_sdk_ruby', :git => 'https://github.com/bleumi/bleumi_pay_sdk_ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

### Run Sample Code

The following code creates a wallet to accept payment from the buyer specific for the ECR-20 Token.

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
  #Create an unique wallet address to accept payments for an ERC-20 token from a buyer
  result = api_instance.create_wallet(wallet_create_input, opts)
  p result
rescue BleumiPay::ApiError => e
  puts "Exception when calling Erc20PaymentsApi->create_wallet: #{e}"
end

```

More examples can be found under each method in [SDK Classes](README.md#sdk-classes) section.

## SDK Classes

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
Erc20PaymentsApi | [**create_wallet**](docs/Erc20PaymentsApi.md#create_wallet) | **POST** /v1/payment/erc20/wallet | Create an unique wallet address to accept payments for an ERC-20 token from a buyer
Erc20PaymentsApi | [**get_wallet**](docs/Erc20PaymentsApi.md#get_wallet) | **GET** /v1/payment/erc20/wallet/{id} | Return a specific wallet
Erc20PaymentsApi | [**get_wallet_operation**](docs/Erc20PaymentsApi.md#get_wallet_operation) | **GET** /v1/payment/erc20/wallet/{id}/operation/{txid} | Return a specific operation of the wallet
Erc20PaymentsApi | [**get_wallet_operations**](docs/Erc20PaymentsApi.md#get_wallet_operations) | **GET** /v1/payment/erc20/wallet/{id}/operation | Return the list of operations performed by the mechant on a specific wallet
Erc20PaymentsApi | [**list_wallets**](docs/Erc20PaymentsApi.md#list_wallets) | **GET** /v1/payment/erc20/wallet | Returns a list of wallets
Erc20PaymentsApi | [**refund_wallet**](docs/Erc20PaymentsApi.md#refund_wallet) | **POST** /v1/payment/erc20/wallet/{id}/refund | Refund wallet
Erc20PaymentsApi | [**settle_wallet**](docs/Erc20PaymentsApi.md#settle_wallet) | **POST** /v1/payment/erc20/wallet/{id}/settle | Settle a wallet, amount received will be transferred even if less than payment amount


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

Code licensed under the [MIT License](docs/MITLicense.md).