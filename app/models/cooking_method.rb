class CookingMethod < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'レンジ調理'},
    { id: 3, name: 'フライパン調理'},
    { id: 4, name: '自然解凍'}
    { id: 5, name: 'フライ調理'}
    { id: 6, name: 'ボイル調理'}
    { id: 7, name: 'トースター'}
    { id: 8, name: '蒸し調理'}

  ]
end