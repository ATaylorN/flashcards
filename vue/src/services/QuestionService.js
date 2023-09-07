import axios from 'axios';

export default {
    getQuestion(){
        console.log('I am here')
        return axios.get('/questions');
    },
    getAllQuestions(){
        console.log('Dont worry, Im still working')
        return axios.get('/questions/getAll');
    },
    getQuestionById(id){
        console.log('Youre doing great!')
        return axios.get(`/questions/${id}`);
    }
}