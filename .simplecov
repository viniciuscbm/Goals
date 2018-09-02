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
end
