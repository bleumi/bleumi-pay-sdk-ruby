# BleumiPay::WalletCreateInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for this wallet |
**buyer_address** | [**EthAddress**](EthAddress.md) | Ethereum address of buyer. Refund operations on this wallet will use this address. |
**transfer_address** | [**EthAddress**](EthAddress.md) | The Ethereum network address of merchant. |