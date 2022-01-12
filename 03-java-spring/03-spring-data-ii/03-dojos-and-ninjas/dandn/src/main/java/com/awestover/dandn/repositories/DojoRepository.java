package com.awestover.dandn.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.awestover.dandn.models.Dojo;

//...
@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long>{
 // this method retrieves all the books from the database
 List<Dojo> findAll();
 // this method finds books with descriptions containing the search string
 //List<Language> findByDescriptionContaining(String search);
 // this method counts how many titles contain a certain string
 //Long countByTitleContaining(String search);
 // this method deletes a book that starts with a specific title
 //Long deleteByTitleStartingWith(String search);
}

