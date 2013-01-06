Post = Struct.new(:title, :body, :date, :tags) do

  def self.from_hash(attributes)
    instance = self.new
    attributes.each do |key, value|
      instance[key] = value
    end
    instance
  end

  def slug
    title.downcase.strip.gsub(/\s/,"-").gsub(/[^\w-]/,'')
  end

  def attributes
    Hash[members.zip(members.map { |name| self[name] })]
  end

end
