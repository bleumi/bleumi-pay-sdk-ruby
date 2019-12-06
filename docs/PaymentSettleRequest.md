# BleumiPay::PaymentSettleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | [**Token**](Token.md) | <b>ETH</b> - for Ethereum  <br/> <b>XDAI</b> - for xDai <br/> <b>XDAIT</b> - for xDai Testnet <br/> <b> &lt;contract address of ERC-20 token&gt;</b> - for ERC-20 Tokens  | 
**amount** | **String** | Amount to be settled | 

## Example

```json
{
    "amount": "5",
    "token": "0x84df8548086ec9025e9c93297058bed706e90ddd"
}
```