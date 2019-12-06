# BleumiPay::PaymentOperationInputs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addr** | **String** | Address of the wallet | 
**amount** | **String** | Amount (Only for settle operation) | 
**token** | **String** | ETH - for Ethereum ; XDAI - for xDai ; XDAIT - for xDai Testnet ; &lt;contract address of ERC-20 token&gt; - for ERC-20 Tokens  | 
**token_amount** | **String** | Token amount to be settled in network format (Only for settle operation) | 
**token_decimals** | **Integer** | Token decimal places (Only for settle operation) | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::PaymentOperationInputs.new(addr: null,
                                 amount: null,
                                 token: null,
                                 token_amount: null,
                                 token_decimals: null)
```


