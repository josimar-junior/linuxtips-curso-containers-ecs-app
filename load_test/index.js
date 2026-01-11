import http from 'k6/http'

export const options = {
    vus: 5,
    duration: '3000s'
}
const params = {
    headers: {
        'Content-Type': 'application/json',
        'Host': 'chip.linuxtips.demo'
    }
}

export default function () {
    http.get('http://linuxtips-ecs-cluster-fargate-lb-50596455.us-east-1.elb.amazonaws.com/burn/cpu', params)
}