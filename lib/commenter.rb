require File.join(File.dirname(__FILE__), "commenter", "class_methods.rb")
require File.join(File.dirname(__FILE__), "commenter", "instance_methods.rb")

module ActsAsComment
  def self.included base
    base.extend ClassMethods
  end
  include InstanceMethods
end

module ActsAsCommentable
  def self.included base
    base.extend ClassMethods
  end
end

ActiveRecord::Base.class_eval { include ActsAsComment, ActsAsCommentable }
