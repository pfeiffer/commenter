module ActsAsComment
	module ClassMethods
    # Allows one to customize the default settings.
    # ==== Options
  	# * +commentable_label+ - The commentable (parent object) label method. Optional. Defaults to: label.
  	# * +comment_label+ - The comment label method. Optional. Defaults to: label.
		def acts_as_comment options = {}
      write_inheritable_attribute :acts_as_comment_options, options
      class_inheritable_reader :acts_as_comment_options
			belongs_to :commentable, :polymorphic => true
		end
	end
end

module ActsAsCommentable
	module ClassMethods
    def acts_as_commentable
      has_many :comments, :as => :commentable, :dependent => :destroy
    end
  end
end
