json.models @application.models do |model|

  json.name model.name

  json.fields model.fields do |field|
    json.(field, :name, :attr_type, :default, :required)
  end

  json.actions model.actions do |action|
    json.(action, :name)
  end

end
