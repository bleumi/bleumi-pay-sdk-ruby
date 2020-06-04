# BleumiPay::PaymentOperationInputs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addr** | **String** | Address of the wallet | 
**amount** <br> (Optional) | **String** | Amount (Only for settle operation) | 
**token** | **String** | <b>ETH</b> - for Ethereum  <br/> <b>XDAI</b> - for xDai <br/> <b>XDAIT</b> - for xDai Testnet <br/> <b>ALGO</b> - for Algo <br/> <b>RBTC</b> - for R-BTC <br/> <b> &lt;asset id&gt;</b> - for Algorand Standard Asset <br/> <b> &lt;contract address of ERC-20 token&gt;</b> - for ERC-20 Tokens. Please refer to [ERC-20 Tokens](https://pay.bleumi.com/docs/#erc-20) for contract address; <br/> <b> &lt;contract address of RSK ERC-20 token&gt;</b> - for RSK ERC-20 Tokens. Please refer to [RSK ERC-20 Tokens](https://pay.bugnet.work/docs/#rsk-tokens-erc-20) for contract address;|
**token_decimals** <br> (Optional) | **Integer** | Token decimal places (Only for settle operation) | 

## Settle Operation Example

```json
{
    "addr": "0xbec374e0acb4b7b6fde45b11287e61beb108e868",
    "amount": "10",
    "token": "0x115615dbd0f835344725146fa6343219315f15e5",
    "token_amount": "10000000",
    "token_decimals": 6
}
```

## Refund Operation Example

```json
{
    "addr": "0xbe1fa332f24ba568108ba55a25eccf93d882f54e",
    "token": "XDAIT"
}
```