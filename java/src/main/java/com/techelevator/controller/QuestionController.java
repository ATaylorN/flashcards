package com.techelevator.controller;

import com.techelevator.dao.QuestionDao;
import com.techelevator.model.Question;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin
@RequestMapping(value="/questions")
public class QuestionController {
private QuestionDao questionDao;

@ResponseStatus(HttpStatus.OK)
@RequestMapping(value="", method = RequestMethod.GET)
    public List<Question> getQuestion(){
    List<Question> question = new ArrayList<>();
    try{
       question = questionDao.getQuestion();
    }catch (RuntimeException e){
        throw new RuntimeException("Couldn't get question!");
    }
    return question;
}
@RequestMapping(value="/{id}", method=RequestMethod.GET)
    public Question getQuestionById(@PathVariable int id){
    Question question = null;
    try{
        question = questionDao.getQuestionById(id);
    }catch (RuntimeException e){
        throw new RuntimeException("Couldn't get question by id!");
    }
    return question;
}





}
