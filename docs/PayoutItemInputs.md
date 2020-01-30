# BleumiPay::PayoutItemInputs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**salt** | **String** | Unique identifier generated for the txid of the payout (specified during Create a Payout). | 
**token** | **String** | Token used for the payout | <b>ETH</b> - for Ethereum  <br/> <b>XDAI</b> - for xDai <br/> <b>XDAIT</b> - for xDai Testnet <br/> <b>ALGO</b> - for Algo <br/> <b>&lt;asset id&gt;</b> - for Algorand Standard Asset payouts <br/> <b> &lt;contract address of ERC-20 token&gt;</b> - for ERC-20 payouts; Please refer to [ERC-20 Tokens](https://pay.bleumi.com/docs/#erc-20) for contract address;  | 
**payouts** | [**Array&lt;Payout&gt;**](Payout.md) | Array of payments to be made in this payout. This is an atomic transaction (i.e. either all payments are processed or all of them are rejected). | 

## Example

```json
{
    "salt": "0x6f3b4b923b133a82dddef57139b6bbd622e7343128983518557cd13201c5462b",
    "token": "0x84df8548086ec9025e9c93297058bed706e90ddd",
    "payouts": [
        {
        "transferAddress": "0xD15BDD17175825742A5904b21008dd3A019a060E",
        "amount": "15"
        },
        {
        "amount": "21",
        "transferAddress": "0x7Dc30B85084aA1608e5C1Ce39c804Be177e40A07"
        }
    ]
}
```
