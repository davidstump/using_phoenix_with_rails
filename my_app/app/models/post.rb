class Post < ActiveRecord::Base
  after_initialize :readonly!
end
