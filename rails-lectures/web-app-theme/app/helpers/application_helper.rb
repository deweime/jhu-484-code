# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def setup_engineer(engineer)
      returning(engineer) do |e|
        e.project_assignments.build if e.project_assignments.empty?
        e.resources.build if e.project_assignments.empty?
      end
  end
  
  def page_title
       @page_title || "605.484 Rails Views"
  end
  
  def image? (file_type)
      %w[application/pdf application/jpg 
            application/png application/gif 
            application/tiff].include?(file_type)
  end
  
end
