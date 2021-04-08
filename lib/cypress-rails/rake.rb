require "pathname"
CLI = Pathname.new(File.dirname(__FILE__)).join("../../exe/cypress-rails")

desc "Initialize cypress.json"
task :"cypress:init" do
  system "#{CLI} init"
end

desc "Open interactive Cypress app for developing tests"
task :"cypress:open" do
  trap("SIGINT") {} # avoid traceback
  system "#{CLI} open"
end

desc "Open interactive Cypress app for developing tests"
task :"cypress:open-ct" do
  trap("SIGINT") {} # avoid traceback
  system "#{CLI} open-ct"
end

desc "Run Cypress tests headlessly"
task :"cypress:run" do
  abort unless system "#{CLI} run"
end

desc "Run Cypress tests headlessly"
task :"cypress:run-ct" do
  abort unless system "#{CLI} run-ct"
end
