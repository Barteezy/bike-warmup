class Buyer < ActiveRecord::Base

  def shops_without_favorite
    fav_bike = Bike.find_by(:brand => self.favorite_brand)
    no_fav_shops = Shop.where("id != ?", fav_bike.shop_id)
    no_fav_shops.map { |no_fav_shop| no_fav_shop.name }
  end

end