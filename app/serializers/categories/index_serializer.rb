class Categories::IndexSerializer < ActiveModel::Serializer
  attributes :id, :title, :skills

  def skills
    object.skills.each.map do |skill|
      Skills::IndexSerializer.new(skill)
    end
  end
end
