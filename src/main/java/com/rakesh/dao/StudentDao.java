package com.rakesh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.rakesh.model.Student;

@Repository
public interface StudentDao  extends CrudRepository<Student, Long>{

	@Query(value = "SELECT c FROM Student c WHERE c.name LIKE '%' || :keyword || '%'"
            + " OR c.mobile LIKE '%' || :keyword || '%'"
            + " OR c.course LIKE '%' || :keyword || '%'")
    public List<Student> search(@Param("keyword") String keyword);

}
