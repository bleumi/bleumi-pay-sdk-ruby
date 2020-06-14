# BleumiPay::RskAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rsk** <br> (Optional)| [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) | A dictionary which gives the address of the wallet generated for Rsk MainNet |
**rsk_testnet** <br> (Optional)| [**Hash&lt;String, EthereumWalletAddress&gt;**](EthereumWalletAddress.md) | A dictionary which gives the address of the wallet generated for Rsk TestNet | 

## Example

```json
 {
    "rsk": {
        "rsk_testnet": {
            "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41|0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41": {
              "inputs": {
                "salt": "0x5d5fe1e5024cb6e9175da30a963919054db612f2f857cbfe3151747e96267f58",
                "walletProxy": "0xe5f208073c717c076271b695324112779c6f8820",
                "walletLibrary": "0x8cdf9b11ad8db65f94197d21d25fbff107cd02de",
                "buyer": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41",
                "merchant": "0x5db2d6542d55b2aec1f10d0c0df3b0169bf41e41"
              },
              "addr": "0xbe17b427aad1a29bff91e1e85d8324bc34b033b0"
            }
          }
        }
    }
```