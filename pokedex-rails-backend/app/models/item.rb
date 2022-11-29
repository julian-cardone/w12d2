# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  pokemon_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord

  validates :name, length: { in: 1...255 }
  validates :price, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :image_url, presence: true
  validates :happiness, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  belongs_to :pokemon
end
