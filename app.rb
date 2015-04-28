require('sinatra')
require('sinatra/reloader')
require('./lib/digipet')
also_reload('lib/**/*.rb')

get('/') do
  @pet_info = DigiPet.pet_info()
  @pet_name = params.fetch(@pet_info[0])
  @pet_food = params.fetch(@pet_info[1])
  @pet_sleep = params.fetch(@pet_info[2])
  @pet_activity = params.fetch(@pet_info[3])
  erb(:index)
end

post('/actions') do
  act_made  = params.fetch("act_made")
  feed = DigiPet.feed()
  go_sleep = DigiPet.go_sleep()
  play = DigiPet.play()
  erb(:success)
end
