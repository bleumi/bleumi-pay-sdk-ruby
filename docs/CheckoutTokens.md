# BleumiPay::CheckoutTokens

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usd** | [**Hash&lt;String, CheckoutToken&gt;**](CheckoutToken.md) | Provides the details of the tokens configured for USD | [optional] 
**eur** | [**Hash&lt;String, CheckoutToken&gt;**](CheckoutToken.md) | Provides the details of the tokens configured for EUR | [optional] 

## Example

```json
{
  "USD": {
    "0x84df8548086ec9025e9c93297058bed706e90ddd": {
      "chain": "ropsten",
      "transferAddress": "0xd15bdd17175825742a5904b21008dd3a019a060e",
      "name": "USD p18",
      "symbol": "USD18",
      "decimals": 18
    }
  }
}
```