class Company < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'マルハニチロ'},
    { id: 3, name: 'ニチレイ'},
    { id: 4, name: '日本水産'},
    { id: 5, name: '味の素'},
    { id: 6, name: '日清食品'}
  ]

  include ActiveHash::Associations
  has_many :products


end