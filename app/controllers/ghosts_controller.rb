class GhostsController < ApplicationController

  def index
    @ghosts = Ghost.all
  end

  def show
    @ghost = Ghost.find(params[:id])
    @haunting = Haunting.new
  end

  def new
    @ghost = Ghost.new
  end

  def create
    @ghost = Ghost.new(ghost_params)
    @ghost.user = current_user
    if @ghost.save
      redirect_to ghost_path(@ghost)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def ghost_params
    params.require(:ghost).permit(:name, :era, :category, :description, :price, photos: [])
  end

end


#   def new
#     @bookmark = Bookmark.new
#     @list = List.find(params[:list_id])
#   end

#   def create
#     @list = List.find(params[:list_id])
#     @bookmark = Bookmark.new(bookmark_params)
#     @bookmark.list = @list
#     if @bookmark.save
#       redirect_to list_path(@list)
#     else
#       render 'new'
#     end
#   end

#   def destroy
#     @bookmark = Bookmark.find(params[:id])
#     list = @bookmark.list
#     @bookmark.destroy
#     redirect_to list_path(list)
#   end

# ---------------------

# def index
#     @lists = List.all
#   end

#   def show
#     @list = List.find(params[:id])
#     @movies = @list.movies
#   end

#   def new
#     @list = List.new
#   end

#   def create
#     @list = List.new(list_params)
#     if @list.save
#       redirect_to list_path(@list)
#     else
#       render 'new'
#     end
#   end

