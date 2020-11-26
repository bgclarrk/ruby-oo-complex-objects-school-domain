# code here!

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @student_name = name
        @student_grade = grade
        if @roster[@student_grade] == nil
            @roster[@student_grade] = []
            @roster[@student_grade] << "#{@student_name}"
        else
            @roster[@student_grade] << "#{@student_name}"
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end

end