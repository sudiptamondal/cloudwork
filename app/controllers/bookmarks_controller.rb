class BookmarksController < InheritedResources::Base

  private

    def bookmark_params
      params.require(:bookmark).permit(:text, :url)
    end

end
