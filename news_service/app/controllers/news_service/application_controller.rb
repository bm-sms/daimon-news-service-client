module NewsService
  class ApplicationController < parent_controller[]
    private

    def detect_layout
      NewsService.detect_layout_proc[self]
    end
  end
end
