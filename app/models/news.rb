require 'carrierwave/mongoid'
class News
  include Mongoid::Document
  include Mongoid::Timestamps
  #attr_accessible :photo, :photo_cache

  field :submitted_by, type: String
  field :category, type: String
  field :publish_date, type: Date
  field :title, type: String
  field :header, type: String
  field :content, type: String
  field :status, type: String
  field :published_by, type: String
  field :last_edited_by, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime

  mount_uploader :photo, PhotoUploader

#begin
#  def self.chart_data
#    kriminal = News.where(:category => "Kriminal").count
#    nah = News.where(:category => "Nah Ini Dia").count
#    mega = News.where(:category => "Megapolitan").count
#      {
#        crime: kriminal,
#        nahinidia: nah,
#        megap: mega
#      }
#  end=end


end
