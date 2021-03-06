# cronotab.rb — Crono configuration file
#
# Here you can specify periodic jobs and schedule.
# You can use ActiveJob's jobs from `app/jobs/`
# You can use any class. The only requirement is that
# class should have a method `perform` without arguments.
#
# class TestJob
#   def perform
#     puts 'Test!'
#   end
# end
#
Crono.perform(TestJob).every 1.minutes
#
#require 'rake'
# Be sure to change AppName to your application name!
#pdit_backend::Application.load_tasks

#class Test
#  def perform
#    Rake::Task['crono:hello'].invoke
#  end
#end

#Crono.perform(Test).every 60.seconds