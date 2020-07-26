require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)

require 'router'
require 'gossip'
require 'controller'
require 'view'

Router.new.perform
