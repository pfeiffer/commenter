require "rubygems"
require "bundler/setup"
require "rails"
require "active_record"
require "commenter"

@tmp_dir = File.join File.dirname(__FILE__), "tmp"
@db_file = File.join @tmp_dir, "test.db"
@log_file = File.join @tmp_dir, "test.log"

RSpec.configure do |config|
  config.before :suite do
    Dir.mkdir(@tmp_dir) unless File.exists? @tmp_dir
    File.delete(@db_file) if File.exists? @db_file
    File.delete(@log_file) if File.exists? @log_file
    # CreateSchema.suppress_messages {CreateSchema.migrate :up}
  end
end

Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each {|file| require file}
