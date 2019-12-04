package com.rakesh.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rakesh.dao.StudentDao;
import com.rakesh.model.Student;

@Service
@Transactional
public class StudentService {

	
	@Autowired(required =true)
	StudentDao sd;
	
	public void save(Student student) {
		sd.save(student);
		
	}
	
	public List<Student> listAllStudents(){
		return (List<Student>)sd.findAll();
	}
	
	public void delete(Long id) {
		sd.deleteById(id);
		
	}
	public Student get(Long id) {
		return sd.findById(id).get();
	}
	public List<Student> search(String keyword) {
	    return sd.search(keyword);
	}
}
