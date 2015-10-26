module NewsService
  class ApplicationController < ActionController::Base
    private

    def detect_layout
      NewsService.detect_layout_proc[self]
    end
  end
end
