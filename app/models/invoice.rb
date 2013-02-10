class Invoice
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :invoice, type: Integer

end
