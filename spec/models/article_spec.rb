require 'rspec/given'
require 'spec_helper'

describe Article do
  Given(:article) { Article.new content: 'foo' }
  When { article.save }
  Then { article.should_not be_new_record }
end
