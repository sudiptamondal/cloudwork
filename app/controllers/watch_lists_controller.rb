class WatchListsController < InheritedResources::Base

  private

    def watch_list_params
      params.require(:watch_list).permit(:title, :type, :have_it)
    end

end
