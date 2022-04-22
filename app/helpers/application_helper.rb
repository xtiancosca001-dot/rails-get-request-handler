module ApplicationHelper
    def processRequest(userName, pwd, prodID, apiToken)
        #Handles URL Requests
        url = prodID != "" ? "https://#{userName}.c3.imonggo.com/api/products/#{prodID}.json" : "https://#{userName}.c3.imonggo.com/api/products.json" 
        uri = URI(url)
        req = Net::HTTP::Get.new(uri)

        #API Token Handling
        req.basic_auth apiToken, pwd

        # Handles HTTP Requests
        res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') {|http|
            http.request(req)
        }
        res.body
    end
    
end
