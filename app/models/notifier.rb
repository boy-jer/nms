class Notifier
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :entry_name, type: String
  field :agent_name, type: String
  field :notification_message, type: String
  field :kwitansi_log, type: String
  field :payment_amount, type: BigDecimal
  field :via_bank, type: String
  field :bank_account, type: String
  field :status_checked, type: String
#  field :created_at, type: DateTime
#  field :updated_at, type: DateTime
end
