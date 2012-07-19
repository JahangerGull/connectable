require "redis"

module Connectable

  class << self

    def redis
      @redis ||= Redis.new
    end

    def redis=(redis)
      @redis = redis
    end

    def setup(&block)
      yield self unless block.blank?
      true
    end
  end

end