helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def set_session(user)
    session[:user_id] = user.id
  end

  def correct_on_first_try(guesses)
    guess_hash = guesses.group('card_id').count
    guess_hash.select{ |key,value| value == 1}.count
  end
end
