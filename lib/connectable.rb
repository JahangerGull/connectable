require "connectable/version"

module Connectable

  def hello
    puts "Hello"
  end

  def followers(candidate_to_follow )
    Connectable.redis.hset(self, "User", candidate_to_follow)
    Connectable.redis.hset(candidate_to_follow, "User", self)
  end

  def followers_list
    Connectable.redis.get self
  end

  def following_list

  end

  module ClassMethods

  end

end

require 'connectable/module_methods'