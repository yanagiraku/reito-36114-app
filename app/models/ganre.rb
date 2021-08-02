class Ganre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'お弁当向け'},
    { id: 3, name: '食卓向け'},
    { id: 4, name: '食材・スイーツ'}
  ]

  include ActiveHash::Associations
  has_many :products

end