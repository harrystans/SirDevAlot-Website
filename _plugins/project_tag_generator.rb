module Jekyll
  class ProjectTagPage < Page
    def initialize(site, base, dir, tag, projects)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.data = {
        'layout' => 'project_tag_page',
        'title' => "#{tag}",
        'tag' => tag,
        'projects' => projects,
        'permalink' => "/project-tag/#{Jekyll::Utils.slugify(tag)}/"
      }
    end
  end

  class ProjectTagPageGenerator < Generator
    safe true

    def generate(site)
      return unless site.collections.key?('projects')

      # Collect all tags from projects
      tag_projects = {}
      site.collections['projects'].docs.each do |project|
        tags = project.data['tags'] || []
        tags.each do |tag|
          tag_projects[tag] ||= []
          tag_projects[tag] << project
        end
      end

      # Generate a page for each tag
      tag_projects.each do |tag, projects|
        slug = Jekyll::Utils.slugify(tag)
        site.pages << ProjectTagPage.new(
          site,
          site.source,
          "project-tag/#{slug}",
          tag,
          projects.sort_by { |p| p.data['date'] || Time.now }.reverse
        )
      end
    end
  end
end
