get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @new_user = User.create(params[:user])
  if @new_user.save
    set_session(@new_user)
    redirect '/'
  else
    @errors = @new_user.errors.full_messages
    erb :'users/new'
  end
end
