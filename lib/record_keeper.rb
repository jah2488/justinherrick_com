require 'json'
class RecordKeeper
  FILENOTFOUND = '{ "Error" : "Not Found" }'

  def all(type)
    all_raw(type).map { |entry| JSON.parse(entry) }
  end

  def all_raw(type)
    Dir["#{type}/*"].map { |name| find_raw(name) }
  end

  def find(file_name)
    JSON.parse(find_raw(file_name))
  end

  def find_raw(file_name)
    open("posts", file_name)
  end

  private
  def open(type, file_name)
    name = [file_name.gsub("-","_"), file_name.gsub("_","-")].uniq.find { |f| File.exists?(f) }
    begin
      File.open(name).read.chomp
    rescue StandardError
      FILENOTFOUND
    end
  end
end
