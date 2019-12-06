# BleumiPay::CheckoutToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chain** | **String** | The chain in which the token is defined | 
**transfer_address** | **String** | The destination address when payments are received in this token | 
**name** | **String** | Name of the token | 
**symbol** | **String** | Symbol of the token | 
**decimals** | **String** | The decimal places supported | 

## Example

```json
{
      "chain": "ropsten",
      "transferAddress": "0xd15bdd17175825742a5904b21008dd3a019a060e",
      "name": "USD p18",
      "symbol": "USD18",
      "decimals": 18
}
```