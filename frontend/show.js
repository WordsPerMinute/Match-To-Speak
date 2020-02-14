const params = new URLSearchParams(document.location.search)
const user_id = params.get("user_id")

// get entire user object to do stuff with throughout the page

//populate left sidebar with user info
fetch(`http://localhost:3000/accounts/${user_id}`)
  .then(response => response.json())
  .then(userObject => {
    const {user, teacher_list, learner_list} = userObject

    displayProfileLeft(user)
    displayMatches(user, teacher_list, learner_list)

})


function displayProfileLeft(user){
  let userSidebar = document.querySelector('#user_info')
  let userNewDiv = document.createElement('div')
  userNewDiv.classList.add('profile-container')

  userNewDiv.innerHTML = `
    <h3 id="profile-header">Your profile</h3>
    <img src="${user.photo_url}"/>
    <p>${user.name}</p>
    <p>${user.bio}</p>
    <p>${user.email}</p>
    <p>${user.zip}</p>
    <p>Learning: ${user.learning}</p>
    <p>Teaching: ${user.teaching}</p>
  `
  userSidebar.append(userNewDiv)
  }


function displayMatches(user, teacherList, learnerList){
  let matchTeacherSection = document.querySelector('#teaching-matches-section')
  let matchLearnerSection = document.querySelector('#learning-matches-section')
  let matchTeachersDiv = document.createElement('div')
  let matchLearnersDiv = document.createElement('div')

  matchTeachersDiv.innerHTML = `
    <h2 class="match-header">These matches are teaching ${user.learning}</h2>
  `

  teacherList.forEach(teacher => {
    console.log(teacher.name)
  })


  matchLearnersDiv.innerHTML = `
    <h2 class="match-header">These matches are learning ${user.teaching}</h2>
  `
  matchTeacherSection.append(matchTeachersDiv)
  matchLearnerSection.append(matchLearnersDiv)
  makeCards(matchTeachersDiv, teacherList, matchLearnersDiv, learnerList)
  }

function makeCards(teacherDiv, teacherList, learnerDiv, learnerList){

  teacherList.forEach(teacher => {
    let teacherCardDiv = document.createElement('div')
    teacherCardDiv.classList.add('card')
    teacherCardDiv.innerHTML = `
      <h3>${teacher.name}</h3>
      <img src="${teacher.photo_url}">
      <p>${teacher.bio}</p>
      <p>${teacher.zip}</p>
      <button type="button">Message</button>
      <button type="button" onclick="window.location.href = 'mailto:${teacher.email}';">Email</button>
    `
    teacherDiv.append(teacherCardDiv)
  })

  learnerList.forEach(learner => {
    let learnerCardDiv = document.createElement('div')
    learnerCardDiv.classList.add('card')

    learnerCardDiv.innerHTML = `
      <h3>${learner.name}</h3>
      <img src="${learner.photo_url}">
      <p>${learner.bio}</p>
      <p>${learner.zip}</p>
      <button type="button">Message</button>
      <button type="button" onclick="window.location.href = 'mailto:${learner.email}';">Email</button>
    `
    learnerDiv.append(learnerCardDiv)
  })



}




//add button to pull a user's teacher matches
// fetch(`http://localhost:3000/accounts/${user_id}`)
//   .then(response => response.json())
//   .then(user => {
//     const inputUserLanguage = document.createElement('input')
//     const selectAppend = document.querySelector('#see-teacher-matches')
//     const searchButton = document.createElement('input')
//
//     inputUserLanguage.type = "hidden"
//     inputUserLanguage.value = user.learning
//     inputUserLanguage.name = "user_learning"
//
//
//     searchButton.type = "submit"
//     searchButton.value = "See my teacher matches!"
//
//     selectAppend.append(inputUserLanguage)
//     selectAppend.append(searchButton)
//   })
  //





  //


  // select a power to add
  // fetch(`http://localhost:4000/powers/`)
  //   .then(response => response.json())
  //   .then(powers => powers.forEach(power => {
  //     const powerOption = document.createElement('option')
  //     const selectAppend = document.querySelector('.selectPower')
  //
  //     powerOption.value = power.id
  //     powerOption.innerText = power.name
  //
  //     selectAppend.append(powerOption)
  //   }))
