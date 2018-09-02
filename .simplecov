require "simplecov"

SimpleCov.start 'rails' do
  add_group "Models", "app/models"
  add_group "Controllers", "app/controllers"
  add_group "Views", "app/views"

  add_filter "jobs"
  add_filter "channels"
  add_filter "assets"
  add_filter "helpers"
  add_filter "mailers"
  add_filter "bin"
  add_filter "config"
  add_filter "coverage"
  add_filter "db"
  add_filter "lib"
  add_filter "public"
  add_filter "spec"
  add_filter "store"
  add_filter "test"
  add_filter "tmp"
  add_filter "vendor"
end
