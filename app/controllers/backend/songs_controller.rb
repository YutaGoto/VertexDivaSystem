class Backend::SongsController < Backend::ApplicationController
  before_action :check_login

  def new
    @song = Song.new
    @composers = Composer.all
  end

  def create
    @song = Song.new(song_params)
    if @song.save!
      redirect_to backend_song_path @song.id
    else
      render :new
    end
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
    @composers = Composer.all
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(song_params)
      redirect_to backend_song_path @song.id
    else
      render :new
    end
  end

  def destloy
    @song = Song.find(params[:id])
  end

  def to_csv
    csv_data = CSV.generate do |csv|
      csv << [
        'ID',
        '曲名',
      ]
      Song.all.each do |song|
        csv << [
          song.id,
          song.name
        ]
      end
    end
  end

  private

  def song_params
    params.require(:song).permit(
      :title,
      :title_kana,
      :release_date,
      :composer_id,
      :illustration_id,
      difficulty_ids: [],
      vocalist_ids: []
    )
  end
end
