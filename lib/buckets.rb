require 'singleton'

class Buckets
  attr_accessor :layout
  include Singleton

  def before_filter(*filters)
    @before_filters = filters
  end

  def before_filters
    @before_filters
  end

  def self.configure
    yield Buckets.instance
  end

  def self.layout
    Buckets.instance.layout ? Buckets.instance.layout : 'buckets'
  end
end
