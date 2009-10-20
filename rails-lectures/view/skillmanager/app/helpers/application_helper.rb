# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def setup_engineer(engineer)
      returning(engineer) do |e|
        e.project_assignments.build if e.project_assignments.empty?
      end
  end
end
