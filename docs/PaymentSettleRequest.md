# BleumiPay::PaymentSettleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | <b>ETH</b> - for Ethereum  <br/> <b>XDAI</b> - for xDai <br/> <b>XDAIT</b> - for xDai Testnet <br/> <b>ALGO</b> - for Algo <br/> <b>RBTC</b> - for R-BTC <br/> <b> &lt;asset id&gt;</b> - for Algorand Standard Asset <br/> <b> &lt;contract address of ERC-20 token&gt;</b> - for ERC-20 Tokens. Please refer to [ERC-20 Tokens](https://pay.bleumi.com/docs/#erc-20) for contract address; <br/> <b> &lt;contract address of RSK ERC-20 token&gt;</b> - for RSK ERC-20 Tokens. Please refer to [RSK ERC-20 Tokens](https://pay.bugnet.work/docs/#rsk-tokens-erc-20) for contract address;|
**amount** | **String** | Amount to be settled | 

## Example

```json
{
    "amount": "5",
    "token": "0x84df8548086ec9025e9c93297058bed706e90ddd"
}
```