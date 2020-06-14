# BleumiPay::ValidateCheckoutRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hmac_input** | **String** | Payment Details. Passed as GET parameter in successUrl. | 
**hmac_key_id** | **String** | KeyId used to generate the HMAC. Passed as GET parameter in successUrl. | 
**hmac_alg** | **String** | Algorithm used to generate the HMAC. Passed as GET parameter in successUrl. | 
**hmac_value** | **String** | HMAC passed as GET parameter in successUrl. | 

## Example

```json
{
    "hmac_input": "rsk_testnet|0xbed61c55cc290b55c1c4c327148bdede56a831f4|0xb9f624160bb2755aa25366cc307ed27e39a4f296|10|0|0x16e54beb3ea4b4206b62ca32b1d2cf4ad15d9af2234564c2166ff3ccc817d5c1",
    "hmac_keyId": "v1",
    "hmac_alg": "HMAC-SHA256-HEX",
    "hmac_value": "c782cbad4394383599b7cf9f9d62990f289649b35edd82cd1c7d58dd65e9fc03"
}
```