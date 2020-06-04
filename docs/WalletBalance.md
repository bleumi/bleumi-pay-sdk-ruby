# BleumiPay::WalletBalance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance** | **String** | Token balance for the wallet | 
**token_balance** | **String** | Token balance for the wallet in Ethereum format | 
**token_decimals** | **Integer** | Token decimal places | 
**block_num** | **String** | Block in which the balance was last updated | 
**safety** | **String** | Safety level indicator | 

## Code Sample

```ruby
require 'BleumiPay'

instance = BleumiPay::WalletBalance.new(balance: null,
                                 token_balance: null,
                                 token_decimals: null,
                                 block_num: null,
                                 safety: null)
```


