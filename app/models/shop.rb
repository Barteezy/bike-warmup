class Shop < ActiveRecord::Base

  has_many :buyers, through: :bikes
  has_many :bikes

  def bike_names
    bikes.map{ |bike| bike.name}
  end

  def buyers_names
    buyers.map { |buyer| buyer.first_name}
  end

end