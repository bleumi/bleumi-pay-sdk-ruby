# BleumiPay::PaginatedPayoutItems

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Array&lt;PayoutItem&gt;**](PayoutItem.md) | List of payouts of the payment in the current page | 
**next_token** (Optional) | **String** | Cursor to fetch next page of results, empty if no more results |  

## Example

```json
{
  "results": [
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
            "amount": "21",
            "transferAddress": "0x7Dc30B85084aA1608e5C1Ce39c804Be177e40A07"
          }
        ]
      }
    },
    {
      "txid": "12345-6789",
      "status": true,
      "hash": "0xbb7b393f61fdd8cf1337010003c46115fbf451b29e40098b9af1ff55ee9465b2",
      "createdAt": 1574501339,
      "updatedAt": 1574501659,
      "inputs": {
        "salt": "0x09d6f6e0c0c781a6c49153db62c72e4d8b159f742a42e8c4cfb18fc2b9c44224",
        "token": "0x84df8548086ec9025e9c93297058bed706e90ddd",
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
    }
  ]
}
```