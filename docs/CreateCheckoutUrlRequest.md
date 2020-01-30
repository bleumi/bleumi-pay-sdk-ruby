# BleumiPay::CreateCheckoutUrlRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier for this payment. <br> <b>Warning!</b> - Do not reuse this id with the [Create a Payment](https://pay.bleumi.com/docs/#create-a-payment) endpoint. |
**currency** | **String** | Currency Code<br><br> When you configure custom tokens for the Hosted Checkout in your account in the <a href="https://pay.bleumi.com/app/" target="_blank">Bleumi Pay Dashboard</a>, please use:<br> - ISO 4217 Alphabetic Code for fiat, gold, silver, etc.<br> - Token Symbol for crypto |
**amount** | **String** | Token amount for this payment | 
**cancel_url** | **String** | Buyer will be redirected to this URL upon canceling the payment. | 
**success_url** | **String** | Buyer will be redirected to this URL upon successfully completing the payment and the following data is passed as GET parameters, <ul style="font-weight: 500"><li><b>id</b> - Unique identifier of the checkout URL</li><li><b>hmac_input</b> - Payment parameters used to generate HMAC. The format is described below.</li> <li><b>hmac_keyId</b> - Key ID used to generate HMAC</li> <li><b>hmac_alg</b> - Algorithm used to generate HMAC</li> <li><b>hmac_value</b> - HMAC generated for hmac.input</li></ul> | 
**buyer_address** <br>(Optional)| **String** | Address of buyer. Refund operations on this payment will use this address. You can set this to your address to manually handle refunds (outside of Bleumi Pay) to your buyer. This address must be able to receive payments from smart contracts. |  
**chain** <br>(Optional)| [**Chain**](Chain.md) | (Required if specifying 'token') Network in which the hosted checkout is to be created. Please refer to the [Supported Networks.](https://pay.bleumi.com/docs/#supported-networks) | 
**token** <br>(Optional)| **String** | If this field is not specified, a list of tokens configured for the provided currency code for the Hosted Checkout in your account in the <a href="https://pay.bleumi.com/app/" target="_blank">Bleumi Pay Dashboard</a> is sent to the buyer. The buyer can complete the payment using any one of token from this list. <br><br> Set the token which must be used by the buyer for this payment. The token provided must be set in your portal for the provided currency code. The token is assumed to be 1:1 with the currency unit. <br><br>  <b>ETH</b> - for Ethereum<br> <b>XDAI</b> - for xDai<br> <b>XDAIT</b> - for xDai Testnet<br> <b>ALGO</b> - for Algo<br>  <b>&lt;asset id&gt;</b> - for Algorand Standard Asset<br> <b>&lt;contract address of ERC-20 token&gt;</b> - for ERC-20; Please refer to [ERC-20 Tokens](https://pay.bleumi.com/docs/#erc-20) for contract address; |
**base64_transform** <br>(Optional)| **Boolean** | Base64 encode hmac_input GET parameter passed to the successUrl | 

## Example

```json
{
    "id": "4",
    "currency": "USD",
    "amount": "10",
    "cancelUrl": "https://demo.store/api/cancelOrder",
    "successUrl": "https://demo.store/api/completeOrder",
    "token":"0x115615dbd0f835344725146fa6343219315f15e5",
    "chain":"goerli",
    "buyerAddress":"0x713883BF69B786f0A7aB6E2248a70C50577F6b34"
}
```