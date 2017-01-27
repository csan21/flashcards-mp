get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    set_session(@user)
    redirect '/'
  else
    @errors = ["login invalid"]
    erb :'sessions/new'
  end
end

delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end
