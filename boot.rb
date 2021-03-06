require 'rubygems'
require 'bundler/setup'

require 'logger'
require 'digest'
require 'sinatra'
require 'slim'
require 'base62'

module Zero

  def self.root
    File.expand_path('../', __FILE__)
  end

  def self.env
    ENV['ZERO_ENV'] || ENV['RACK_ENV'] || 'development'
  end

  def self.development?
    self.env == 'development'
  end

  def self.production?
    self.env == 'production'
  end

  def self.test?
    self.env == 'test'
  end

end
