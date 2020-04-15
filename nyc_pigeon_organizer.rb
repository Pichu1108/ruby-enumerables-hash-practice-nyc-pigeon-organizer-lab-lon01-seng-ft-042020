
def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |color_gender_live, attributes|
    attributes.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name]||= {}
        pigeon_list[name][color_gender_live] ||= []
        pigeon_list[name][color_gender_live].push(attribute_value.to_s)
      end
    end
  end

  pigeon_list
end
