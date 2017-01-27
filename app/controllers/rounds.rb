get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])
  @guesses = Guess.where(round_id: params[:id])

  erb :'rounds/show'
end
