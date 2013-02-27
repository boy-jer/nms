class HomeController < ApplicationController
  before_filter :authenticate_user!, except: [:index]	
  
  def index
# Total data statistics
  	@stats = News.any_of({:status => "1"},{:status => "2"}).count 
  	@pub = News.where(:status => "1").count
  	@unpub = News.where(:status => "2").count
# Total Data statistics end

# Todays statistics
#   @todaystats = News.where(:created_at => Date.today).count
    @todaystats = News.where(created_at: DateTime.now.beginning_of_day..DateTime.now.end_of_day).count    
    @todaypub = News.where(:status => "1", :publish_date => Date.today).count
    @todaysinput = News.where(created_at: DateTime.now.beginning_of_day..DateTime.now.end_of_day)    
    @todaypubs = News.where(:status => "1", :publish_date => Date.today)
#

# Total stats begin 
  	@kri = News.where(:category => "Kriminal").count
  	@nah = News.where(:category => "Nah Ini Dia").count
  	@meg = News.where(:category => "Megapolitan").count
  	@nas = News.where(:category => "Nasional").count
  	@ipt = News.where(:category => "Iptek").count
  	@kes = News.where(:category => "Kesehatan").count
  	@spo = News.where(:category => "Sport").count
  	@sel = News.where(:category => "Selebriti").count
  	@nus = News.where(:category => "Nusantara").count
  	@int = News.where(:category => "Internasional").count
  	@edu = News.where(:category => "Edukasi").count
  	@wis = News.where(:category => "Wisata").count
  	@sor = News.where(:category => "Sorot").count
  	@opi = News.where(:category => "Opini").count
# total stats end

# total published stats begin
    @pubkri = News.where(:category => "Kriminal", :status =>"1").count
    @pubnah = News.where(:category => "Nah Ini Dia", :status =>"1").count
    @pubmeg = News.where(:category => "Megapolitan", :status =>"1").count
    @pubnas = News.where(:category => "Nasional", :status =>"1").count
    @pubipt = News.where(:category => "Iptek", :status =>"1").count
    @pubkes = News.where(:category => "Kesehatan", :status =>"1").count
    @pubspo = News.where(:category => "Sport", :status =>"1").count
    @pubsel = News.where(:category => "Selebriti", :status =>"1").count
    @pubnus = News.where(:category => "Nusantara", :status =>"1").count
    @pubint = News.where(:category => "Internasional", :status =>"1").count
    @pubedu = News.where(:category => "Edukasi", :status =>"1").count
    @pubwis = News.where(:category => "Wisata", :status =>"1").count
    @pubsor = News.where(:category => "Sorot", :status =>"1").count
    @pubopi = News.where(:category => "Opini", :status =>"1").count
# Total published stats end

# Total unpublished stats begin
    @unpubkri = News.where(:category => "Kriminal", :status =>"2").count
    @unpubnah = News.where(:category => "Nah Ini Dia", :status =>"2").count
    @unpubmeg = News.where(:category => "Megapolitan", :status =>"2").count
    @unpubnas = News.where(:category => "Nasional", :status =>"2").count
    @unpubipt = News.where(:category => "Iptek", :status =>"2").count
    @unpubkes = News.where(:category => "Kesehatan", :status =>"2").count
    @unpubspo = News.where(:category => "Sport", :status =>"2").count
    @unpubsel = News.where(:category => "Selebriti", :status =>"2").count
    @unpubnus = News.where(:category => "Nusantara", :status =>"2").count
    @unpubint = News.where(:category => "Internasional", :status =>"2").count
    @unpubedu = News.where(:category => "Edukasi", :status =>"2").count
    @unpubwis = News.where(:category => "Wisata", :status =>"2").count
    @unpubsor = News.where(:category => "Sorot", :status =>"2").count
    @unpubopi = News.where(:category => "Opini", :status =>"2").count
# total unpublished stats end
  end
  
end
