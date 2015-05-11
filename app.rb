require 'sinatra'
require 'sinatra/reloader'
require("sinatra/activerecord")
also_reload 'lib/**/*.rb'
require './lib/division'
require './lib/employee'
require 'pg'


get('/') do
  erb(:index)
end

get('/divisions') do
  @divisions = Division.all()
  erb(:divisions)
end

get('/divisions/new') do
  erb(:division_form)
end


get('/divisions/:id') do
  erb(:division_list)
end

post('/divisions') do
  section = params.fetch('division_section')
  Division.create({:section => section})
  @divisions = Division.all()
  erb(:divisions)
end

patch('/divisions/:id/update') do
  @division = Division.find(params.fetch('id'))
  section = params.fetch('division_new_section')
  @division.update({:section => section})
  @divisions = Division.all()
  erb(:divisions)
end
