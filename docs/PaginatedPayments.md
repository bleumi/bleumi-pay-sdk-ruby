# BleumiPay::PaginatedPayments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Array&lt;Payment&gt;**](Payment.md) | List of payments in the current page | 
**next_token** <br> (Optional) | **String** | Cursor to fetch next page of results, empty if no more results |

## Example

```json
{
  "results": [
 {
      "id": "1412",
      "addresses": {
        "algorand": {
          "alg_testnet": {
            "inputs": {
              "merchant": "CQRMTAHZJA3SIEOTEMZXCAIZKUWE2CCLBCFYQI4NINU43IOTEWT4LOT4IY",
              "salt": "b1929e6dd3956e0a3abeedb2bd53adc6sHQp0Ksuc4Zyf3Elzdgogqah2hA80y/61+rgF3vRE3YWu/JFPJfM8w==",
              "gas": "ZGXGUNO47C2E7EUO2B3UAY6DETVBI5E2RFDKT4KC3VTWNENE7IVF2F43WY",
              "programBytes": "ASYGIBQiyYD5SDckEdMjM3EBGVUsTQhLCIuII41Dac2h0yWnIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIMmuajXc+LRPko7Qd0BjwyTqFHSaiUap8ULdZ2aRpPoqA3BheQVheGZlciASpk2P8CvJS+NGPcbU9eXjbT2KyTUtTvztmxRR3ShmODEHKBIxBygSETEJKRIxCSgSMQkoEhExCSoSEREQMQ8rEhAxFCgSMRQoEhExFSkSMRUoEjEVKBIRERAxDycEEhARMQUBJwUSEDEUMQASEQ==",
              "buyer": "CQRMTAHZJA3SIEOTEMZXCAIZKUWE2CCLBCFYQI4NINU43IOTEWT4LOT4IY"
            },
            "addr": "BE4XD5QRRXOSAMWJRFHUVZ6DHIP2GQ6YHOHNEP3V3OPEM7SQ4PZMT6WTD4"
          }
        }
      },
      "balances": {
        "algorand": {
          "alg_testnet": {
            "127647": {
              "blockNum": "5388041",
              "token_balance": "10000000",
              "balance": "10",
              "safety": "high",
              "token_decimals": 6
            },
            "ALGO": {
              "blockNum": "5388035",
              "token_balance": "209000",
              "balance": "0.209",
              "safety": "high",
              "token_decimals": 6
            }
          }
        }
      },
      "createdAt": 1583731367,
      "updatedAt": 1583731695
    },
    {
      "id": "1411",
      "addresses": {
        "ethereum": {
          "goerli": {
            "inputs": {
              "walletLibrary": "0xb33893fdf59b634653fcbed27b5d38d86710fc40",
              "merchant": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41",
              "salt": "0xc866b93db0433948f8a47ecb98aac4690999112f8da7ee31a2106cfdd789c2d0",
              "walletProxy": "0xfaac6b338f79cfd8a53dfec95263f12ef046a049",
              "buyer": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41"
            },
            "addr": "0xbe22e5c3347b25d16918a841fada2bd76a70d9ac"
          }
        }
      },
      "balances": {
        "ethereum": {
          "goerli": {
            "0x84df8548086ec9025e9c93297058bed706e90ddd": {
              "balance": "4",
              "token_decimals": 18,
              "blockNum": "2313213",
              "safety": "high",
              "token_balance": "4000000000000000000"
            },
            "0x115615dbd0f835344725146fa6343219315f15e5": {
              "balance": "9",
              "token_decimals": 6,
              "blockNum": "2313213",
              "safety": "high",
              "token_balance": "9000000"
            }
          }
        }
      },
      "createdAt": 1583730573,
      "updatedAt": 1583730823
    }
  ]
}
```