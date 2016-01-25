actions = %w(index new create show edit update destroy)
actions.each do |action|
  Action.create(name: action)
end
