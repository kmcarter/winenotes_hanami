module Web::Controllers::Wines
  class Index
    include Web::Action

    expose :wines

    def call(params)
      @wines = WineRepository.all
    end
  end
end
