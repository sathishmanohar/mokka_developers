class Reply < ActiveRecord::Base
  attr_accessible :body
  belongs_to :topic
end
