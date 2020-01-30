# BleumiPay::Payout

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transfer_address** | **String** | Address of receiver. This address must be able to receive payments from smart contracts. | 
**amount** | **String** | Amount of token to transfer |
**authorization** <br> (Optional)| **String** | (Only for Algorand) Base64 serialization of an encoded LogicSig signed by the source of the payout |

## Example

```json
{
    "transferAddress": "0xD15BDD17175825742A5904b21008dd3A019a060E",
    "amount": "1"
}
```