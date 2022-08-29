class Person
  # your code here
  # attr_accessor :name, :hair_color
  # , :eye_color, :height,
  # :weight, :handed, :complexion, :t_shirt_size,
  # :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)

    end
  end

end
bob_attributes = { 
   name: "Bob",
   hair_color: "Brown",
   birthday:23,
   eye_color:"black",
   height:54,
   weight:56,
   handed:"right",
   complexion:"white",
   t_shirt_size:34,
   wrist_size:43 ,
   glove_size:33,
   pant_length:3,
   pant_width:3
}
# bob_attributes = { name: "Bob", hair_color: "Brown" }

bob = Person.new(bob_attributes)
 puts bob.name       # => "Bob"
 puts bob.hair_color # => "Brown"
 puts bob.weight # => "Brown"

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
 puts susan.name      # => "Susan"
 puts susan.height    # => "5'11""
susan.eye_color # => "Green"
