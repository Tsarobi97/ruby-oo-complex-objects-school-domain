require 'pry'
class School

attr_accessor :name, :roster, :grade


    def initialize(name)
        @name = name
        @roster = {} #built out to contain KEYS of grade levels + values (array of students)
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        self.roster.sort.each do |grade_array|
            sorted_hash[grade_array[0]] = grade_array[1].sort
        end
        sorted_hash
      end   
    end


