class AddValueForDirectorToMovies < ActiveRecord::Migration
  def up
    Movie.all.each do |m|
      m.update_attribute :director, "Brad Graham"
    end
  end
end
