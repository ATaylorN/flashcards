package com.techelevator.dao;

import com.techelevator.model.Question;

import java.util.List;

public interface QuestionDao {
    Question getQuestion();
    Question getQuestionById(int id);
}
