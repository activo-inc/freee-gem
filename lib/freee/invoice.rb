module Freee
  class Invoice < Freee::Base
    def self.create(params)
      Freee.client.post('/iv/invoices', :invoice, params)
    end
  end
end
