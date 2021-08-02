class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '肉系'},
    { id: 3, name: '魚系'},
    { id: 4, name: 'カップ'},
    { id: 5, name: 'コロッケ'},
    { id: 6, name: '米飯'},
    { id: 7, name: '麺類'},
    { id: 8, name: 'お惣菜'},
    { id: 9, name: 'ピザ'},
    { id: 10, name: 'グラタン・ドリア'},
    { id: 11, name: '食材'},
    { id: 12, name: 'スイーツ'}
  ]

  include ActiveHash::Associations
  has_many :products

end