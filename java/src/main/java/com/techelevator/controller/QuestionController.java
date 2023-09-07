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
public QuestionController (QuestionDao questionDao){
    this.questionDao = questionDao;
}

@ResponseStatus(HttpStatus.OK)
@RequestMapping(value="", method = RequestMethod.GET)
    public Question getQuestion(){
    Question question = null;
    try{
       question = questionDao.getQuestion();
    }catch (RuntimeException e){
        throw new RuntimeException("Couldn't get question!");
    }
    return question;
}

@ResponseStatus(HttpStatus.OK)
@RequestMapping(value="/getAll", method = RequestMethod.GET)
    public List<Question> getAllQuestions(){
    List<Question> questions = new ArrayList<>();
    try{
        questions = questionDao.getAllQuestions();
    } catch (RuntimeException e){
        throw new RuntimeException("Couldn't get questions!");
    }
    return questions;
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
