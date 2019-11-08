# frozen_string_literal: true
Skill.destroy_all
Category.destroy_all

[
  {
    name: 'FRONT END',
    technologies: [
      { name: 'html' },
      { name: 'html5' },
      { name: 'java script' },
      { name: 'J query' },
      { name: 'CSS3' }
    ]
  },
  {
    name: 'BACK END',
    technologies: [
      { name: 'Ruby on Rails' },
      { name: 'PHP' },
      { name: 'Angular2' },
      { name: 'Node.js' },
      { name: '.Net' }
    ]
  },
  {
    name: 'DATABASE',
    technologies: [
      { name: 'mySQL' },
      { name: 'MongoDB' },
      { name: 'CouchDB' },
      { name: 'MS SQL' }
    ]
  },
  {
    name: 'VERSION CONTROL',
    technologies: [
      { name: 'GIT' },
      { name: 'grunt' },
      { name: 'Xdebug' },
      { name: 'Subversion' }
    ]
  },
  {
    name: 'PROJECT MGMT TOOLS',
    technologies: [
      { name: 'Basecamp' },
      { name: 'Jira' },
      { name: 'Trello' },
      { name: 'Redmin' },
      { name: 'Teamwork' }
    ]
  }
].each do |category|
  new_category = Category.create(title: category[:name])
  category[:technologies].each do |skill|
    Skill.create(category: new_category, title: skill[:name])
  end
end
