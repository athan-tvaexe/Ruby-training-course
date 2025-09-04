# Module to automatically set created_at and updated_at timestamps.
module Timestamp
  def self.included(base)
    # The 'base' argument is the class that includes this module (e.g., Record).
    base.class_eval do
      attr_accessor :created_at, :updated_at

      # Hook into the initialize method of the base class.
      # This ensures the timestamps are set when a new object is created.
      def initialize(*args, &block)
        @created_at = Time.now
        @updated_at = Time.now
        super
      end
    end
  end
end
