# BleumiPay::CreatePayoutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **String** | Unique identifier for this payout | 
**token** | **String** | <b>ETH</b> - for Ethereum  <br/> <b>XDAI</b> - for xDai <br/> <b>XDAIT</b> - for xDai Testnet <br/> <b>ALGO</b> - for Algo <br/> <b>&lt;asset id&gt;</b> - for Algorand Standard Asset payouts <br/> <b> &lt;contract address of ERC-20 token&gt;</b> - for ERC-20 payouts; Please refer to Please refer to [ERC-20 Tokens](https://pay.bleumi.com/docs/#erc-20) for contract address; | 
**payouts** | [**Array&lt;Payout&gt;**](Payout.md) | Array of payments to be made in this payout. This is an atomic transaction (i.e. either all payments are processed or all of them are rejected). | 

## Example

```json
{
    "txid": "12345-6789",
    "token": "0x84df8548086EC9025E9C93297058Bed706E90DDD",
    "payouts": [
        {
            "transferAddress": "0xD15BDD17175825742A5904b21008dd3A019a060E",
            "amount": "1"
        },
        {
            "transferAddress": "0x7Dc30B85084aA1608e5C1Ce39c804Be177e40A07",
            "amount": "1"
        }
    ]
}
```