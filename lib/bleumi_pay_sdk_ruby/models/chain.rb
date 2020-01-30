=begin
#Bleumi Pay REST API

#A simple and powerful REST API to integrate ERC-20, Ethereum, xDai, Algorand payments and/or payouts into your business or application

The version of the OpenAPI document: 1.0.0
Contact: info@bleumi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'date'

module BleumiPay
  class Chain
    MAINNET = "mainnet".freeze
    GOERLI = "goerli".freeze
    XDAI = "xdai".freeze
    XDAI_TESTNET = "xdai_testnet".freeze
    ALG_MAINNET = "alg_mainnet".freeze
    ALG_TESTNET = "alg_testnet".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = Chain.constants.select { |c| Chain::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Chain" if constantValues.empty?
      value
    end
  end
end
