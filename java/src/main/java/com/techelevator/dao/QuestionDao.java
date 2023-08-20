package com.techelevator.dao;

import com.techelevator.model.Question;

import java.util.List;

public interface QuestionDao {
    List<Question> getQuestion();
    Question getQuestionById(int id);
}
