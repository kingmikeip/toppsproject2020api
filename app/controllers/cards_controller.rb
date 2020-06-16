class CardsController < ApplicationController
  before_action :set_card, only: [:show, :update, :destroy]
  before_action :set_user_cards, only: [:show_user_cards]
  before_action :set_artist, only: [:show_artist]
  before_action :set_player, only: [:show_player]

  # GET /cards
  def index
    @cards = Card.all

    render json: @cards
  end

  # GET /cards/1
  def show
    render json: @card
  end

  # GET /cards/user/1
  def show_user_cards
    render json: @cards
  end

  # GET /cards/artist/:artist

  def show_artist
    render json: @cards
  end

  # GET /cards/player/:player
  def show_player
    render json: @cards
  end

  # POST /cards
  def create
    @card = Card.new(card_params)

    if @card.save
      render json: @card, status: :created, location: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards/1
  def update
    if @card.update(card_params)
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    def set_user_cards
      @cards = Card.where('user_id = ?', params[:id])
    end

    def set_artist
      @cards = Card.where('artist = ?', params[:artist])
    end

    def set_player
      @cards = Card.where('player = ?', params[:player])
    end


    # Only allow a trusted parameter "white list" through.
    def card_params
      params.require(:card).permit(:card_number, :number_owned, :avg_price_paid, :total_price_paid, :player, :artist, :print_run, :is_artist_proof, :is_one_of_one, :is_in_hand, :user_id, :is_wish_list_item, :value_per_card, :value_total, :photo_url)
    end
end
