require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'mongo'
require 'mongoid'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

Mongoid.load! '/home/mlz/projects/mongoid_acts_as_tree/config/mongoid.yml', :test

Dir["#{File.dirname(__FILE__)}/models/*.rb"].each {|file| require file}

class Test::Unit::TestCase
	# Drop all columns after each test case.
	def teardown
		Mongoid::session(:default).collections.each do |coll|
			coll.drop
		end
	end

	# Make sure that each test case has a teardown
	# method to clear the db after each test.
	def inherited(base)
		base.define_method teardown do
			super
		end
	end

	def eql_arrays?(first, second)
		first.map{|i| i._id}.to_set == second.map{|i| i._id}.to_set
	end
end
