package com.techelevator.dao;

import com.techelevator.model.Question;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class JdbcQuestionTests extends BaseDaoTests{
    protected static final Question QUESTION_1 = new Question(1, "question1", "answer1");
    protected static final Question QUESTION_2 = new Question(2, "question2", "answer2");
    protected static final Question QUESTION_3 = new Question(3, "question3", "answer3");
    private JdbcQuestionDao dao;

    @Before
    public void setup(){
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        dao = new JdbcQuestionDao(jdbcTemplate);
    }
//    @Test
//    public void get_question_returns_one_question(){
//        Question questions = dao.getQuestion();
//        Assert.assertEquals(1, questions);
//    }
    @Test
    public void getQuestionById_returns_question(){
        Question testquestion1 = dao.getQuestionById(QUESTION_1.getId());
        Assert.assertEquals(1, testquestion1.getId());
    }


}

