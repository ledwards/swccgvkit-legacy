class BuilderController < ApplicationController
  
  before_filter :index
  in_place_edit_for :cardlist, :title
  in_place_edit_for :line_item, :quantity
  
  def index    
    if !session[:user_id].nil?
      @user = User.find(session[:user_id])
    else
      @user = User.find(2)
    end
    @cart = find_cart
    @cardlists = find_cardlists
    #@prawnto_options[:prawn] = { :page_size => "A4" }
    @prawnto_options[:prawn] = { :page_size => get_page_size }
  end
  
  def new_cardlist
    session[:cart] = new_cart
    @cart = session[:cart]
    respond_to { |format| format.js }
  end
  
  def load_cardlist
    set_cart(Cardlist.find(params[:id]))
    respond_to { |format| format.js }
  end
  
  def delete_cardlist
    about_to_be_deleted = Cardlist.find(params[:id])
    if about_to_be_deleted.user.id = @user.id
      if @cart == about_to_be_deleted
        @cart.clear
      end
      if about_to_be_deleted.destroy
        @notice = "Cardlist deleted."
      else
        @notice = "Error deleting cardlist."
      end
    end
    respond_to { |format| format.js }
  end
  
  def clear_cart
    @cart.clear
    @notice = "Cardlist cleared."
    respond_to { |format| format.js }
  end
  
  def save_cart
    if @cart.title.nil?
      @cart.title = "Click here to add title"
    end
    @cart.user_id = @user.id
    if @cart.save
      set_cart(Cardlist.new)
      @notice = "Cardlist saved."
    else
      @notice = "Error saving cardlist."
    end
    respond_to { |format| format.js }
  end

  def add_to_cart
    card = Card.find(params[:id])
    @current_item = @cart.add_card(card)
    if @cart.id != @user.id
      @cart.user = @user
      @cart.save
    end
    respond_to { |format| format.js }
  end
  
  def remove_from_cart
    card = Card.find(params[:id])
    @cart.remove_card(card)
    @notice = "Card sucessfully deleted."
    respond_to { |format| format.js }
  end
  
  def auto_complete_for_search_query
    #search_term = params["search"]["query"]
    #@cards = Card.find_by_contents("*"+search_term+"*", {:limit => 4})
    #@cards = Card.find(:all, :conditions => ['LOWER(title) LIKE ?', search_term + '%'])
    #if @cards.nil?
    #  @cards = []
    #else
    #  @cards = @cards.first(1)
    #end
    @cards = []
    render :partial => "auto_complete_results"
  end
  
  def search
    # This search is performed on click for the Search button
    unless params[:search][:query].empty?
      @search_results = get_cards_by_search_term(params["search"]["query"])
      session[:search_term] = params["search"]["query"]
      respond_to { |format| format.js }
    end
  end
  
  def browse
    # This returns all possible search results
    @search_results = get_cards_by_search_term("")
    respond_to { |format| format.js }
  end
  
  def register
    new_user = User.new(:name => params[:name],
                        :password => params[:password],
                        :password_confirmation => params[:password_confirmation])
                        
    if request.post? and new_user.save
      @user = new_user
      session[:user_id] = new_user.id
      @user.add_cardlist(@cart)
      index
      #@cardlists = @user.cardlists
      @cart.save
      @notice = "User #{@user.name} created"
    else
      if User.find_by_name(params[:name])
        @notice = "User name unavailable."
      elsif params[:password] != params[:password_confirmation]
        @notice = "Passwords do not match."
      else
        @notice = "Registration failed."
      end
    end
    
    respond_to { |format| format.js }
    
  end

  def login
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        @notice = "Welcome, #{user.name.capitalize}"
        index
      else
        session[:user_id] = 2
        @user = User.find(session[:user_id])
        @notice = "Login failed."
      end
      respond_to { |format| format.js }
    end
  end

  def logout
    @user = User.find(2)
    session[:user_id] = 2
    session[:user_name] = "Guest"
    set_cart(nil)
    index
    respond_to { |format| format.js }
  end
  
  def set_page_size
    @prawnto_options[:prawn][:page_size] = params[:page_size]
    session[:page_size] = @prawnto_options[:prawn][:page_size]
    respond_to { |format| format.js }
  end
  
  def about
    respond_to { |format| format.html }
  end
  
  def settings
    respond_to { |format| format.html }
  end
  
  private
  
  def find_cart
    session[:cart] ||= new_cart
  end
  
  def find_cardlists
    @user.cardlists ||= [find_cart]
  end
  
  def new_cart
    Cardlist.create({:user_id => @user.id, :title => "New Cardlist"})
  end
  
  def set_cart(cardlist)
    session[:cart] = cardlist
    @cart = cardlist
  end
  
  def get_cards_by_search_term(term)
    Card.find_with_ferret("*"+term+"*", {:limit => :all})
  end
  
  def get_page_size
    default_page_size = "LETTER"
    session[:page_size] ||= default_page_size
  end

end
