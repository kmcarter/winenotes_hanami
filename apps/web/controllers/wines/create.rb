module Web::Controllers::Wines
  class Create
    include Web::Action

    expose :wine

    def call(params)
      @wine = WineRepository.create(Wine.new(params[:wine]))

      redirect_to '/wines'
    end
  end
end
