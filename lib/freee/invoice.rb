module Freee
  class Invoice < Freee::Base
    def self.create(params)
      Freee.client.post('/invoices', :invoice, params)
    end
  end
end
