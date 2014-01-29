class Article < ActiveRecord::Base
  belongs_to :author
  acts_as_taggable_on :categories
end
