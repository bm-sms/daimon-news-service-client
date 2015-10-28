NewsService.controller(:posts) do
  def index
    super

    @message = '本日は晴天なり'
  end
end
