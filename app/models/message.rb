class Message < ActiveRecord::Base
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  validates :age, :numericality => { :greater_than => 3 }
  validates :body , length: { minimum: 2, maximum: 30 } , presence: true
end