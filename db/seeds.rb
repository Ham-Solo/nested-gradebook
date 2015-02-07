# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#####Teachers --Teacher.create(name: '', email: '', password: '')
Teacher.create(name: 'Tyrion Lanisster', email: 'gold@rock.com', password: 'westman')
Teacher.create(name: 'Bob Barker', email: 'price@right.com', password: 'guess')
Teacher.create(name: 'Rob Johnston', email: 'robby@ecu.edu', password: 'pirates')

########Parents --Parent.create(name: '', email: '', password: '')
Parent.create(name: 'Carl Carlson', email: 'springfield@somestate.com', password: 'lenny')
Parent.create(name: 'Ronda Bazemore', email: 'ron@howard.com', password: 'kiki')
Parent.create(name: 'Perrin Wolf', email: 'hammer@wot.com', password: 'hopper')


######Students  --Student.create(name: '', email: '', password: '', parent_id: Parent.find_by_name('').id, teacher_id: Teacher.find_by_name('').id )
Student.create(name: 'Lakeshia Carlson', email: 'lkc@nyu.edu', password: 'flower', parent_id: Parent.find_by_name('Carl Carlson').id, teacher_id: Teacher.find_by_name('Bob Barker').id )
Student.create(name: 'Tristan Bazemore', email: 'tristan@nyu.edu', password: 'photo', parent_id: Parent.find_by_name('Ronda Bazemore').id, teacher_id: Teacher.find_by_name('Rob Johnston').id )
Student.create(name: 'Rand Wolf', email: 'fire@wot.com', password: 'power', parent_id: Parent.find_by_name('Perrin Wolf').id, teacher_id: Teacher.find_by_name('Tyrion Lanisster').id )
Student.create(name: 'Mat Wolf', email: 'gambke@wot.com', password: 'lucky', parent_id: Parent.find_by_name('Perrin Wolf').id, teacher_id: Teacher.find_by_name('Tyrion Lanisster').id )
######Subjects --Subject.create(name: '')
Subject.create(name: 'Math')
Subject.create(name: 'Biology')
Subject.create(name: 'Computer Science')
Subject.create(name: 'PE')
Subject.create(name: 'History')
Subject.create(name: 'British Lit')

#######Assignments --Assignment.create(name: '', subject_id: )
Assignment.create(name: 'Test #1', subject_id: Subject.find_by_name('PE').id )
Assignment.create(name: 'HW Assignment #3', subject_id: Subject.find_by_name('History').id )
Assignment.create(name: 'Test 4', subject_id: Subject.find_by_name('Computer Science').id )
Assignment.create(name: 'Physical Test', subject_id: Subject.find_by_name('PE').id )
Assignment.create(name: 'HW Assignment #4', subject_id: Subject.find_by_name('British Lit').id )
Assignment.create(name: 'Final Exam', subject_id: Subject.find_by_name('Biology').id )
Assignment.create(name: 'Make up Quiz # 2', subject_id: Subject.find_by_name('Math').id )

####Grades --Grade.create(score: , assignment_id: Assignment.find_by_name('').id, student_id: Student.find_by_name('').id )
Grade.create(score: 75 , assignment_id: Assignment.find_by_name('HW Assignment #4').id, student_id: Student.find_by_name('Mat Wolf').id )
Grade.create(score: 88 , assignment_id: Assignment.find_by_name('Physical Test').id, student_id: Student.find_by_name('Lakeshia Carlson').id )
Grade.create(score: 92, assignment_id: Assignment.find_by_name('HW Assignment #4').id, student_id: Student.find_by_name('Lakeshia Carlson').id )
Grade.create(score: 55, assignment_id: Assignment.find_by_name('Make up Quiz # 2').id, student_id: Student.find_by_name('Tristan Bazemore').id )
Grade.create(score: 77, assignment_id: Assignment.find_by_name('Test #1').id, student_id: Student.find_by_name('Lakeshia Carlson').id )
Grade.create(score: 82, assignment_id: Assignment.find_by_name('Physical Test').id, student_id: Student.find_by_name('Lakeshia Carlson').id )
Grade.create(score: 56, assignment_id: Assignment.find_by_name('HW Assignment #4').id, student_id: Student.find_by_name('Mat Wolf').id )
Grade.create(score: 100, assignment_id: Assignment.find_by_name('Test #1').id, student_id: Student.find_by_name('Lakeshia Carlson').id )
Grade.create(score: 98, assignment_id: Assignment.find_by_name('Make up Quiz # 2').id, student_id: Student.find_by_name('Tristan Bazemore').id )
Grade.create(score: 44, assignment_id: Assignment.find_by_name('Final Exam').id, student_id: Student.find_by_name('Lakeshia Carlson').id )
Grade.create(score: 55, assignment_id: Assignment.find_by_name('HW Assignment #4').id, student_id: Student.find_by_name('Tristan Bazemore').id )
Grade.create(score: 66, assignment_id: Assignment.find_by_name('Final Exam').id, student_id: Student.find_by_name('Rand Wolf').id )
Grade.create(score: 75, assignment_id: Assignment.find_by_name('Physical Test').id, student_id: Student.find_by_name('Rand Wolf').id )
Grade.create(score: 15, assignment_id: Assignment.find_by_name('Test 4').id, student_id: Student.find_by_name('Rand Wolf').id )
