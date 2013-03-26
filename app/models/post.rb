# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :content, :title

  default_scope order: 'created_at DESC'

  validates :title, :content, presence: true
  validates :title, length: { maximum: 100 }
end
