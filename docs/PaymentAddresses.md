# BleumiPay::PaymentAddresses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ethereum** | [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) | A dictionary which gives the address of the wallet generated for each Ethereum network  | 
**algorand** | [**Hash&lt;String, AlgorandWalletAddress&gt;**](AlgorandWalletAddress.md) | A dictionary which gives the address of the wallet generated for each Algorand network  | 

## Example

```json
{
    "ethereum": {
      "goerli": {
        "addr": "0xbe7b6dd3a81b9ae6b27b9a4690af39690095c791",
        "inputs": {
          "buyer": "0x713883bf69b786f0a7ab6e2248a70c50577f6b34",
          "walletLibrary": "0xb33893fdf59b634653fcbed27b5d38d86710fc40",
          "merchant": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41",
          "salt": "0x5fca1a8d4c6e8786f915a57a9bdde2be9d643b93f366ffa713384fe75762e4aa",
          "walletProxy": "0xfaac6b338f79cfd8a53dfec95263f12ef046a049"
        }
      }
    },
    "algorand": {
      "alg_testnet": {
          "addr": "BEGKKXKFVAIU2PJK274A6GJDQK7J323RLEPMRRFKSDARTX2LFYR6S6VNLM",
        "inputs": {
          "merchant": "CQRMTAHZJA3SIEOTEMZXCAIZKUWE2CCLBCFYQI4NINU43IOTEWT4LOT4IY",
          "salt": "dbc9d66dca9185c04c8fb6dc201db8f572ICevWSmBwaIL+TZExKWDigc4PDAQwy125SrvxoMHoWHNbS79Dp+w==",
          "gas": "CQRMTAHZJA3SIEOTEMZXCAIZKUWE2CCLBCFYQI4NINU43IOTEWT4LOT4IY",
          "programBytes": "ASYGIBQiyYD5SDckEdMjM3EBGVUsTQhLCIuII41Dac2h0yWnILdvTiLCnUM8XlhBk4uR9z6d2XovOsvEq11pH4nuIBD5IAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3BheQVheGZlciBdtOnkjuxx1Dec/b84B7gMkevLMHGQmt2Q5eDcnAU/KzEHKBIxBykSETEJKhIxCSgSMQkpEhExCSgSEREQMQ8rEhAxFCgSMRQpEhExFSoSMRUoEjEVKRIRERAxDycEEhARMQUBJwUSEDEUMQASEQ==",
          "buyer": "W5XU4IWCTVBTYXSYIGJYXEPXH2O5S6RPHLF4JK25NEPYT3RACD4Z3EBS4A"
        }
      }
    }
  }
```