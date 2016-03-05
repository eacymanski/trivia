module ApplicationHelper
  def category_options
    Category.all.map {|category| [category.name, category.id]}
  end
end
