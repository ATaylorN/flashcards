package com.techelevator.dao;

import com.techelevator.model.Question;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcQuestionDao implements QuestionDao {
    private final JdbcTemplate jdbcTemplate;

    public JdbcQuestionDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }
    @Override
    public Question getQuestion() {
        Question question = null;
        String sql = "SELECT question_id, question, answer FROM questions ORDER BY random() LIMIT 1;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        if (results.next()) {
            return mapRowToQuestion(results);
        } else {
            return null;
        }
    }

    @Override
    public List<Question> getAllQuestions(){
        List<Question> questions = new ArrayList<>();
        String sql = "SELECT question_id, question, answer FROM questions;";
        try {
            SqlRowSet rows = jdbcTemplate.queryForRowSet(sql);
            while (rows.next()){
                questions.add(mapRowToQuestion(rows));
            }
        } catch (RuntimeException e){
            throw new RuntimeException("Could load questions!");
        }
        return questions;
    }

    @Override
    public Question getQuestionById(int id) {
        String sql = "SELECT question_id, question, answer FROM questions WHERE question_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
        if (results.next()){
            return mapRowToQuestion(results);
        } else {
            return null;
        }
    }
    private Question mapRowToQuestion(SqlRowSet row){
        Question question = new Question();
        question.setId(row.getInt("question_id"));
        question.setQuestion(row.getString("question"));
        question.setAnswer(row.getString("answer"));
        return question;
    }



}
