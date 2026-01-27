
class Resource
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end


class Employee
  def initialize(name)
    @name = name
    @permissions = {}   
  end

  def name
    @name
  end


  def set_permission(resource, perms)
    @permissions[resource.name] = perms
  end

  
  [:read, :write, :delete].each do |perm|
    define_method("#{perm}?") do |resource|
      allowed = @permissions[resource.name]

      if allowed.nil?
        false
      else
        allowed.include?(perm)
      end
    end
  end
end


file1 = Resource.new("project_file.txt")
repo1 = Resource.new("backend_repo")

emp1 = Employee.new("Raj")


emp1.set_permission(file1, [:read, :write])
emp1.set_permission(repo1, [:read])

puts "Read file?   #{emp1.read?(file1)}"     
puts "Write file?  #{emp1.write?(file1)}"    
puts "Delete file? #{emp1.delete?(file1)}"   

puts "Read repo?   #{emp1.read?(repo1)}"     
puts "Write repo?  #{emp1.write?(repo1)}"    
puts "Delete repo? #{emp1.delete?(repo1)}"   
