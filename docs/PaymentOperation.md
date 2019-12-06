# BleumiPay::PaymentOperation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **String** | Transaction ID of the operation | [optional] 
**chain** | **String** | Network in which the operation was carried out | 
**func_name** | **String** | Name of the function invoked on the Payment Processor.<br/><br/>Functions available:<br/> - createAndSettleWallet<br/> - createAndRefundWallet
**status** | **Boolean** | <b>null</b> - operation in progress <br/> <b>true</b> - operation completed successfuly <br/> <b>false</b> - operation failed to process | 
**inputs** | [**PaymentOperationInputs**](PaymentOperationInputs.md) | The inputs provided during this operation creation | 
**hash** | **String** | Transaction hash of operation submitted to the network. This field is blank when operation is in progress. | 

## Settle Opeation Example

```json
{
      "txid": "1574828863297",
      "chain": "ropsten",
      "funcName": "createAndSettleWallet",
      "inputs": {
        "addr": "0xbec374e0acb4b7b6fde45b11287e61beb108e868",
        "amount": "10",
        "token": "0x115615dbd0f835344725146fa6343219315f15e5",
        "token_amount": "10000000",
        "token_decimals": 6
      },
      "status": true,
      "hash": "0xc347fd450cd80da133401c3b290832e478236a7cbb98eda9e44c108ebc601bb9"
}
```

## Refund Operation Example

```json
{
  "chain": "xdai_testnet",
  "funcName": "createAndRefundWallet",
  "inputs": {
    "addr": "0xbe1fa332f24ba568108ba55a25eccf93d882f54e",
    "token": "XDAIT"
  },
  "status": true,
  "hash": "0x79dca6990b9ef4b07db158dbae9969033d058954edaa24e0d52aef80ef05eca8"
}
```
