import axios from "axios";

const API_URL = "http://localhost:8081";

function registApi(user) {
  return new Promise((resolve, reject) => {
    axios
      .post(`${ API_URL }/regist`, user)
      .then((response) => {
        resolve(response.data);
      })
      .catch((e) => {
        reject(e);
      });
  });
}

function loginApi(user) {
  return new Promise((resolve, reject) => {
    axios.post(`${API_URL}/login`, user)
      .then((response) => {
        resolve(response.data);
      })
      .catch((e) => {
        reject(e);
    })
  })
}

export { registApi, loginApi };