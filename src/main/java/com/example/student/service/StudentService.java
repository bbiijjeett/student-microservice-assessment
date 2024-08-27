package com.example.student.service;

import com.example.student.model.Student;

import java.util.List;
import java.util.Optional;

public interface StudentService {
    List<Student> getAllStudents();
    Optional<Student> getStudentById(Integer id);
    Student saveStudent(Student student);
    Student updateStudent(Student student);
    void deleteStudent(Integer id);
}
