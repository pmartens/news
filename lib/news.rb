require "news/engine"

module News

  # Layout to use for this engine
  mattr_accessor :layout

  # Controller from which the contact form extends.
  mattr_accessor :controller

  # index path to redirect
  mattr_accessor :index_path

  def self.layout
     @@layout ||= "application"
  end

  def self.controller
     @@controller ||= "ApplicationController"
  end

  def self.index_path
    @@index_path ||= "/"
  end

end
