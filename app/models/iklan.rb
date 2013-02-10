class Iklan
  include Mongoid::Document
  include Mongoid::Timestamps

  field :invoice, type: Integer
  field :entry_name, type: String
  field :customer_name, type: String
  field :input_date, type: Date
  field :publish_date, type: Date
  field :type, type: String
  field :category, type: String
  field :segmentation, type: String
  field :content, type: String
  field :character, type: String
  field :discount, type: String
  field :price, type: BigDecimal
  field :session, type: String
  field :confirmed, type: String
end
