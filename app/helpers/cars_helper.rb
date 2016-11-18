module CarsHelper

  def setup_car(car)
    car.model ||= Model.new
    car
  end

  def sortable(column, title = nil)
      title ||= column.titleize
      direction = (column == params[:sort] && params[:direction] == "desc") ? "asc" : "desc"
      title = "#{title} (#{direction})"
      link_to title, {sort: column, direction: direction }
    end
end
