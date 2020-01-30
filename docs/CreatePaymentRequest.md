# BleumiPay::CreatePaymentRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID identifying the payment | 
**buyer_address** | **String** | Address of buyer. Refund operations on this wallet will use this address. You can set this to your address to manually handle refunds (outside of Bleumi Pay) to your buyer. <br/> <b>Warning!</b> - This address must be able to receive payments from smart contracts.| 
**transfer_address** | **String** | Your deposit address. Settle operations on this wallet will use this address. <br/> <b>Warning!</b> - This address must be able to receive payments from smart contracts.| 
**token** <br> (Optional) | **String** | (Only for Algorand Standard Asset) Asset id which will be used for payment. |
## Example

```json
{
    "id": "1",
    "buyerAddress": "0xD15BDD17175825742A5904b21008dd3A019a060E",
    "transferAddress": "0x7Dc30B85084aA1608e5C1Ce39c804Be177e40A07"
}
```