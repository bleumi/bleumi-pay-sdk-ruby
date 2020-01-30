=begin
#Bleumi Pay REST API

#A simple and powerful REST API to integrate ERC-20, Ethereum, xDai, Algorand payments and/or payouts into your business or application

Contact: info@bleumi.com

=end
module BleumiPay
    class RequestValidator

        def self.default
            @@default ||= RequestValidator.new
        end

        def eth_address?(str)
            # We use !! to convert the return value to a boolean
            !!(str =~ /^0x[a-fA-F0-9]{40}$/)
        end

        def algo_address?(str)
            # We use !! to convert the return value to a boolean
            !!(str =~ /^[A-Z2-7+=*]{58}$/)
        end

        def is_not_empty(str)
            if (str == nil || str == "") then
                return false
            end    
            return true
        end    

        def check_eth_addr(name, input)
            if !((eth_address?(input))||(input == "ETH")||(input == "XDAI")||(input == "XDAIT")) then
                return "`#{name}` is not a valid Ethereum address"
            end
            return nil
        end

        def check_alg_addr(name, input)
            if !((algo_address?(input))||(input == "ALGO")) then
                return "`#{name}` is not a valid Algorand address"
            end
            return nil
        end

        def is_algo_network(chain)
            return ((chain == "alg_mainnet")||(chain == "alg_testnet")) 
        end

        def check_req_param(name, input)
            if (input == nil || input == "")
                return "Missing required parameter `#{name}`"
            end
            return nil
        end

        def check_network_addr(name, input, chain, mandatory)
            if mandatory then
                msg = check_req_param(name, input)
                if is_not_empty(msg) then
                    return msg 
                end    
            end
            if is_not_empty(input) then
                msg = nil
                if is_algo_network(chain) then
                    msg =  check_alg_addr(name, input)
                else
                    msg =  check_eth_addr(name, input)
                end    
                if is_not_empty(msg) then
                    return msg 
                end
            end   
            return nil
        end

        def validate_create_payment_request(params, chain)
            # check if chain is provided 
            msg = check_req_param("Chain", chain)
            if is_not_empty(msg) then
                return msg 
            end
            # check if buyer_address is valid address in the network  
            msg = check_network_addr("BuyerAddress", params.buyer_address, chain, mandatory=true)
            if is_not_empty(msg) then
                return msg 
            end
            # check if transfer_address is valid address in the network  
            msg = check_network_addr("TransferAddress", params.transfer_address, chain, mandatory=true)
            if is_not_empty(msg) then
                return msg 
            end

            # check if token is valid address in the network (if provided) 
            if is_not_empty(params.token) then
                msg = check_network_addr("Token", params.token, chain, mandatory=false)
                if is_not_empty(msg) then
                    return msg 
                end
            end    
            return nil
        end
        
        def validate_refund_payment_request(params, chain)
            # check if chain is provided 
            msg = check_req_param("Chain", chain)
            if is_not_empty(msg) then
                return msg 
            end
            # check if token is valid address in the network 
            msg = check_network_addr("Token", params.token, chain, mandatory=true)
            if is_not_empty(msg) then
                return msg 
            end
            return nil
        end
        
        def validate_settle_payment_request(params, chain)
            # check if chain is provided 
            msg = check_req_param("Chain", chain)
            if is_not_empty(msg) then
                return msg 
            end
            # check if token is valid address in the network 
            msg = check_network_addr("Token", params.token, chain, mandatory=true)
            if is_not_empty(msg) then
                return msg 
            end
            # check if amount to settle is provided
            msg = check_req_param("Amount", params.amount)
            if is_not_empty(msg) then
                return msg 
            end
            return nil
        end
        
        def validate_create_checkout_url_request(params)
            # check if id is provided while creating checkout url
            msg = check_req_param("Id", params.id)
            if is_not_empty(msg) then
                return msg 
            end
            
            # check if currency is provided while creating checkout url
            msg = check_req_param("Currency", params.currency)
            if is_not_empty(msg) then
                return msg 
            end
            
            # check if amount is provided while creating checkout url
            msg = check_req_param("Amount", params.amount)
            if is_not_empty(msg) then
                return msg 
            end
            
            # check if cancel_url is provided while creating checkout url
            msg = check_req_param("CancelUrl", params.cancel_url)
            if is_not_empty(msg) then
                return msg 
            end
            
            # check if success_url is provided while creating checkout url
            msg = check_req_param("SuccessUrl", params.success_url)
            if is_not_empty(msg) then
                return msg 
            end

            # check if token is valid address in the network (if provided) 
            if is_not_empty(params.token) then
                
                # check if chain is provided in the request, when token is provided, this is required 
                msg = check_req_param("Chain", params.chain)
                if is_not_empty(msg) then
                    return msg 
                end

                # check if token is valid address in the network (if provided) 
                msg = check_network_addr("Token", params.token, params.chain, mandatory=false)
                if is_not_empty(msg) then
                    return msg 
                end

                # check if buyer_address is valid address in the network (if provided) 
                if is_not_empty(params.buyer_address) then
                    msg = check_network_addr("BuyerAddress", params.buyer_address, params.chain, mandatory=false)
                    if is_not_empty(msg) then
                        return msg 
                    end
                end    
            end   
            return nil
        end
        
        def validate_checkout_payment_params(params)
            
            # check if hmac_alg is provided while creating checkout payment parameters request
            msg = check_req_param("HmacAlg", params.hmac_alg)
            if is_not_empty(msg) then
                return msg 
            end
            
            # check if hmac_input is provided while creating checkout payment parameters request
            msg = check_req_param("HmacInput", params.hmac_input)
            if is_not_empty(msg) then
                return msg 
            end
            
            # check if hmac_key_id is provided while creating checkout payment parameters request
            msg = check_req_param("HmacKeyId", params.hmac_key_id)
            if is_not_empty(msg) then
                return msg 
            end
            
            # check if hmac_value is provided while creating checkout payment parameters request
            msg = check_req_param("HmacValue", params.hmac_value)
            if is_not_empty(msg) then
                return msg 
            end
            return nil
        end
        
        def validate_create_payout_request(params, chain)
            msg = check_req_param("Chain", chain)
            if is_not_empty(msg) then
                return msg 
            end
            # check if token is valid address in the network 
            msg = check_network_addr("Token", params.token, chain, mandatory=true)
            if is_not_empty(msg) then
                return msg 
            end

            payouts = params.payouts
            if payouts.length == 0 then 
                return "Payouts not defined."
            end

            for payout in payouts
                # check if payout.transfer_address is valid address in the network  
                msg = check_network_addr("TransferAddress", payout.transfer_address, chain, mandatory=true)
                if is_not_empty(msg) then
                    return msg 
                end

                # check if payout.amount is provided for payout
                msg = check_req_param("Amount", payout.amount)
                if is_not_empty(msg) then
                    return msg 
                end

                if is_algo_network(chain) then
                    # check if payout.authorization is provided for Algorand payout
                    msg = check_req_param("Authorization", payout.authorization)
                    if is_not_empty(msg) then
                        return msg 
                    end
                end 
            end
            return nil
        end
    end
end
