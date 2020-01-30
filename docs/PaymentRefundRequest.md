# BleumiPay::PaymentRefundRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | <b>ETH</b> - for Ethereum  <br/> <b>XDAI</b> - for xDai <br/> <b>XDAIT</b> - for xDai Testnet <br/> <b>ALGO</b> - for Algo <br/> <b>&lt;asset id&gt;</b> - for Algorand Standard Asset payouts <br/> <b> &lt;contract address of ERC-20 token&gt;</b> - for ERC-20 payouts; Please refer to [ERC-20 Tokens](https://pay.bleumi.com/docs/#erc-20) for contract address;  | 

## Example

```json
{
    "token": "XDAIT"
}
```