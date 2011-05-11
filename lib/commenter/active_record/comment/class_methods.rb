module Commenter
  module ActiveRecord
    module Comment
      def self.included base
        base.extend ClassMethods
      end      
      
      module ClassMethods
        # Allows one to customize the default settings.
        # ==== Options
      	# * +commentable_label+ - The commentable (parent object) label method. Optional. Defaults to: label.
      	# * +comment_label+ - The comment label method. Optional. Defaults to: label.
        def is_comment options = {}
          self.send :include, InstanceMethods

          # Default Options
          write_inheritable_attribute :commenter_options, options
          class_inheritable_reader :commenter_options
          
          # Associations
    			belongs_to :commentable, :polymorphic => true
        end
      end
    end
  end
end
