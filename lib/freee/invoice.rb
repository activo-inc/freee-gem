module Freee
  class Invoice < Freee::Base
    def self.create(params)
      client = Freee.client
      client.header["Content-Type"] = 'application/json'
      client.headers['Accept'] = 'application/json'

      client.post('/iv/invoices', :invoice, params)
    end
  end
end
