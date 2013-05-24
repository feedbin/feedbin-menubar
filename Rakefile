# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'
require 'bubble-wrap/core'
require 'bubble-wrap/http'
require 'bubble-wrap/reactor'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Feedbin Notifier'

  # Hide from Dock
  app.info_plist['LSUIElement'] = '1'
  
  # TODO move credentials to keychain
  app.info_plist['FEEDBIN_USER'] = ENV['FEEDBIN_USER']
  app.info_plist['FEEDBIN_PASSWORD'] = ENV['FEEDBIN_PASSWORD']
end
