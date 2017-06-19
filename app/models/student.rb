class Student < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Student.create! row.to_hash
    end
  end
end
