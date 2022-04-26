class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '宿泊施設' },
    { id: 3, name: '自然' },
    { id: 4, name: '歴史・文化' },
    { id: 5, name: '温泉・健康' },
    { id: 6, name: 'スポーツ・レクリエーション' },
    { id: 7, name: '祭り・イベント' },
    { id: 8, name: '買い物・飲食' }
  ]

  include ActiveHash::Associations
  has_many :videos
end
