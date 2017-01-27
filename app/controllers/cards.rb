get '/decks/:deck_id' do
  @round = Round.create(player_id: session[:user_id], deck_id: params[:deck_id])
  session[:round] = @round.id


  redirect "/decks/#{params[:deck_id]}/cards"
end

get '/decks/:deck_id/cards' do
  session[:cards] = Card.where(deck_id: params[:deck_id]).shuffle
  session[:current_card] = session[:cards].first
  # @first_card = session[:cards].first

  redirect "/decks/#{params[:deck_id]}/cards/#{session[:current_card].id}"
end

get 'decks/:deck_id/cards/:card_id' do
  @card = Card.find_by(id: params[:card_id])

  erb :'decks/cards/show'
end

post '/decks/:deck_id/cards' do
  if params[:answer] == session[:current_card].answer
    Guess.create(round_id: session[:round], card_id: session[:current_card].id, correct?: true)
    session[:cards] -= [session[:current_card]]
  else
    Guess.create(round_id: session[:round], card_id: session[:current_card].id, correct?: false)
    session[:cards] -= [session[:current_card]]
    session[:cards] << session[:current_card]
  end

  session[:current_card] = session[:cards].first

  redirect "/decks/#{params[:deck_id]}/cards/#{session[:current_card].id}"

end

