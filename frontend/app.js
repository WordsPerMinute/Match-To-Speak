let cta = document.querySelector(".cta");
cta.addEventListener('click', showLogin);
let check = 0;
let loginButton = document.querySelector(".login-btn");
loginButton.addEventListener("click", login);
let signupButton = document.querySelector(".signup-btn");
signupButton.addEventListener("click", signUp);

function showLogin(e) {
    let text = e.target.nextElementSibling;
    let loginText = e.target.parentElement;
    text.classList.toggle('show-hide');
    loginText.classList.toggle('expand');
    if(check == 0)
    {
        cta.innerHTML = "<i class=\"fas fa-chevron-up\"></i>";
        check++;
    }
    else
    {
        cta.innerHTML = "<i class=\"fas fa-chevron-down\"></i>";
        check = 0;
    }
}

function login(event){
    console.log("loginnnng mama")
    let username = document.getElementById("username");
    let password = document.getElementById("password");
    let body = {
        email: username.value,
        password: password.value
    }

    let jsonBody = JSON.stringify(body);
    console.log('jsonBody', jsonBody);

    fetch('http://localhost:3000/authenticate', {
        method: "POST",
        body: jsonBody,
        headers: {
            "Content-Type": "application/json"
        }
    })
        .then(response => response.json())
        .then(data => {
            console.log(data);
            document.cookie = `auth_token=${data.auth_token}`;
            //getItems();
            window.location.href = 'http://localhost:3001/home.html';
        });
}

function signUp(event) {
    let username = document.getElementById("username");
    let password = document.getElementById("password");

    let body = {
        email: username.value,
        password: password.value
    }

    let jsonBody = JSON.stringify(body);

    fetch('http://localhost:3000/register', {
        method: 'POST',
        body: jsonBody,
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.json())
    .then(data => {
        if (data.user) {
            login();
        }
    })
}

// function getItems() {
//     fetch('http://localhost:3000/items', {
//         headers: {
//             'Authorization': getCookie('auth_token')
//         }
//     })
//     .then(response => response.json())
//     .then(data => {
//         console.log('data', data);
//     })
//     .catch(err => console.log('err', err));
// }

// Finds a cookie by name, or returns null if it doesn't exist
function getCookie(name) {
    var v = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    return v ? v[2] : null;
}
