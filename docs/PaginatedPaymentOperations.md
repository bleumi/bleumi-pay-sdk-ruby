# BleumiPay::PaginatedPaymentOperations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Array&lt;PaymentOperation&gt;**](PaymentOperation.md) | List of operations of the payment in the current page | 
**next_token** | **String** | Cursor to fetch next page of results, empty if no more results | [optional] 


## Example

```json
{
  "results": [
    {
      "txid": "1574502150086",
      "chain": "xdai_testnet",
      "funcName": "createAndRefundWallet",
      "inputs": {
        "addr": "0xbe1fa332f24ba568108ba55a25eccf93d882f54e",
        "token": "XDAIT"
      },
      "status": true,
      "hash": "0x79dca6990b9ef4b07db158dbae9969033d058954edaa24e0d52aef80ef05eca8"
    }
  ]
}
```
