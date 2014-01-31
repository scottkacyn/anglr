class Article < ActiveRecord::Base
  belongs_to :publisher
  acts_as_taggable_on :categories, :authors, :tags
end
