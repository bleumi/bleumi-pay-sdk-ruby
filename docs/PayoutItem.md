# BleumiPay::PayoutItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **String** | Unique identifier for this payout | 
**status** | **Boolean** | <b>null</b> - Operation in progress </br> <b>true</b> - Operation confirmed by network </br> <b>false</b> - Operation rejected by network </br> | 
**hash** | **String** | Transaction hash of the operation submitted to the network. This field is blank when the operation is in progress. | 
**created_at** | **Integer** | UNIX timestamp when the payout was created | 
**updated_at** | **Integer** | UNIX timestamp when the lastest operation was performed | 
**inputs** | [**PayoutItemInputs**](PayoutItemInputs.md) | Inputs provided for this payout creation | 


## Example

```json
{
    "txid": "12345-6789-10",
    "status": false,
    "hash": "<N/A>",
    "createdAt": 1574501464,
    "updatedAt": 1574501769,
    "inputs": {
    "salt": "0x6f3b4b923b133a82dddef57139b6bbd622e7343128983518557cd13201c5462b",
    "token": "0x84df8548086ec9025e9c93297058bed706e90ddd",
    "payouts": [
        {
        "transferAddress": "0xD15BDD17175825742A5904b21008dd3A019a060E",
        "amount": "15"
        },
        {
        "transferAddress": "0x7Dc30B85084aA1608e5C1Ce39c804Be177e40A07",
        "amount": "21"
        }
    ]
    }
}
```