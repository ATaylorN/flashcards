import axios from 'axios';

export default {
    getQuestion(){
        return axios.get('/questions');
    }
}