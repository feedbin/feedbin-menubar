# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Feedbin Notifier'
  app.info_plist['FEEDBIN_USER'] = ENV['FEEDBIN_USER']
  app.info_plist['FEEDBIN_PASSWORD'] = ENV['FEEDBIN_PASSWORD']
end
