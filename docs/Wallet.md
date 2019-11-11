# BleumiPay::Wallet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID identifying the wallet |
**chain** | **String** | Ethereum network of the wallet. Please refer to the [Supported Ethereum Networks.](https://pay.bleumi.com/docs/#supported-ethereum-networks) |
**addr** | **String** | Wallet address | 
**balances** | [**Hash&lt;String, WalletBalance&gt;**](WalletBalance.md) | A dictionary which gives the balance, token-digits and token-balance for each ERC-20 token in the wallet. |
**inputs** | [**WalletInputs**](WalletInputs.md) | Parameters required to interact with the  [Payment Processor](https://pay.bleumi.com/docs/#payment-processor-address) |
**created_at** | **Integer** | The created UNIX timestamp of the wallet |
**updated_at** | **Integer** | The last updated UNIX timestamp of the wallet |
