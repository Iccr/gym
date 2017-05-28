class ExercisesSerializer < ActiveModel::Serializer
  # Table name: exercises
  #
  #  id         :integer          not null, primary key
  #  name       :string
  #  created_at :datetime         not null
  #  updated_at :datetime         not null
  #

  attributes :id, :name
end
