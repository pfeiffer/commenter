module Commenter
  module ActiveRecord
    module Commentable
      def self.included base
        base.extend ClassMethods
      end      
      
      module ClassMethods
        def is_commentable options = {}
          options.reverse_merge! :as => :commentable, :dependent => :destroy, :order => :created_at 
          has_many :comments, options
        end
      end
    end
  end
end
