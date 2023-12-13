module Freee
  class Invoice < Freee::Base
    def self.create(params)
      client = Freee.client
      client.headers["Content-Type"] = 'application/json'
      client.headers['Accept'] = 'application/json'

      client.post('/iv/invoices', :invoice, params)
    end

    def self.find(id, company_id)
      Freee.client.get("/iv/invoices/#{id}?company_id=#{company_id}", :invoice)
    end
  end
end
