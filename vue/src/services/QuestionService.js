import axios from 'axios';

export default {
    getQuestion(){
        console.log('I am here')
        return axios.get('/questions');
    }
}