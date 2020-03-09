# BleumiPay::AlgorandWalletAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addr** | **String** | Wallet address for the payment in the network | 
**inputs** | [**AlgorandWalletInputs**](AlgorandWalletInputs.md) | Inputs used for the wallet creation | 


## Example

```json
 {
    "addr": "BEGKKXKFVAIU2PJK274A6GJDQK7J323RLEPMRRFKSDARTX2LFYR6S6VNLM",
    "inputs": {
        "buyer": "W5XU4IWCTVBTYXSYIGJYXEPXH2O5S6RPHLF4JK25NEPYT3RACD4Z3EBS4A",
        "merchant": "CQRMTAHZJA3SIEOTEMZXCAIZKUWE2CCLBCFYQI4NINU43IOTEWT4LOT4IY",
        "salt": "dbc9d66dca9185c04c8fb6dc201db8f572ICevWSmBwaIL+TZExKWDigc4PDAQwy125SrvxoMHoWHNbS79Dp+w==",
        "gas": "CQRMTAHZJA3SIEOTEMZXCAIZKUWE2CCLBCFYQI4NINU43IOTEWT4LOT4IY",
        "programBytes": "ASYGIBQiyYD5SDckEdMjM3EBGVUsTQhLCIuII41Dac2h0yWnILdvTiLCnUM8XlhBk4uR9z6d2XovOsvEq11pH4nuIBD5IAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3BheQVheGZlciBdtOnkjuxx1Dec/b84B7gMkevLMHGQmt2Q5eDcnAU/KzEHKBIxBykSETEJKhIxCSgSMQkpEhExCSgSEREQMQ8rEhAxFCgSMRQpEhExFSoSMRUoEjEVKRIRERAxDycEEhARMQUBJwUSEDEUMQASEQ=="
    }
}
```