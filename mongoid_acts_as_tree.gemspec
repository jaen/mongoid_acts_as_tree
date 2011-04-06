# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongoid_acts_as_tree}
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jakob Vidmar, Aliaksandr Rahalevich"]
  s.date = %q{2011-04-06}
  s.description = %q{Port of the old, venerable ActsAsTree with a bit of a twist}
  s.email = %q{saksmlz@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "CHANGELOG",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/mongoid/acts/tree/children.rb",
    "lib/mongoid/acts/tree/fields.rb",
    "lib/mongoid/acts_as_tree.rb",
    "mongoid_acts_as_tree.gemspec",
    "test/helper.rb",
    "test/models/category.rb",
    "test/models/ordered_category.rb",
    "test/models/sub_category.rb",
    "test/models/sub_category_2.rb",
    "test/test_children.rb",
    "test/test_order.rb",
    "test/test_tree.rb"
  ]
  s.homepage = %q{http://github.com/saks/mongoid_acts_as_tree}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{ActsAsTree plugin for Mongoid}
  s.test_files = [
    "test/helper.rb",
    "test/models/category.rb",
    "test/models/ordered_category.rb",
    "test/models/sub_category.rb",
    "test/models/sub_category_2.rb",
    "test/test_children.rb",
    "test/test_order.rb",
    "test/test_tree.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, [">= 2.0.1"])
      s.add_runtime_dependency(%q<bson>, [">= 1.3.0"])
      s.add_development_dependency(%q<shoulda>, [">= 2.11.3"])
    else
      s.add_dependency(%q<mongoid>, [">= 2.0.1"])
      s.add_dependency(%q<bson>, [">= 1.3.0"])
      s.add_dependency(%q<shoulda>, [">= 2.11.3"])
    end
  else
    s.add_dependency(%q<mongoid>, [">= 2.0.1"])
    s.add_dependency(%q<bson>, [">= 1.3.0"])
    s.add_dependency(%q<shoulda>, [">= 2.11.3"])
  end
end

