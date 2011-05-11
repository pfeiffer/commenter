module Commenter
  module ActiveRecord
    module Commentable
      def self.included base
        base.extend ClassMethods
      end      
      
      module ClassMethods
        def is_commentable
          has_many :comments, :as => :commentable, :dependent => :destroy, :order => :created_at
        end
      end
    end
  end
end
