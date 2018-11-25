# class MenuItemSerializer < ActiveModel::Serializer
#     include Rails.application.routes.url_helpers
#     attributes :id, :name, :unit_price, :position
#     has_many :order_items
#     def photo_url
#       if object.photo.attached?
#          rails_blob_path(object.photo, only_path: true)
#       end
#     end
# end