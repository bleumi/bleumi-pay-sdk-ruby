# BleumiPay::WalletOperation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID of the wallet; specified when it was created by your system | [optional] 
**func_name** | **String** | The name of the function invoked on the payment processor  | 
**status** | **Boolean** | &lt;b&gt;null&lt;/b&gt; - operation in progress &lt;br/&gt; &lt;b&gt;true&lt;/b&gt; - operation completed successfuly &lt;br/&gt; &lt;b&gt;false&lt;/b&gt; - operation failed to process | 
**inputs** | [**WalletOperationInputs**](WalletOperationInputs.md) |  | 
**hash** | **String** | Transaction hash of operation submitted to the network. This field is blank when operation is in progress. | 
