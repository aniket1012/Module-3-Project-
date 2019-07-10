const BASE_URL = "http://localhost:3000"
const QUESTIONS_URL = `${BASE_URL}/questions`
const categoryContainer = document.querySelector('#categories')
const mainSection = document.querySelector('main')
const questionGrid = document.querySelector('.question-grid-container')

const category1 = document.querySelector('#category1')

function getCategories() {
  fetch("http://localhost:3000/categories")
  .then(resp => resp.json())
  .then(categories => {
    categories.forEach(category => {
      addNameToCategory(category)
    })
  })
}
getCategories()

function addNameToCategory(category) {
  categoryContainer.innerHTML += `
  <div class="category-grid-item" id="${category.id}"> ${category.name} </div>
  `
  category.round_of_questions.forEach(q => {
    questionGrid.innerHTML += `
      <div class="question-grid-item" id=${q.id}>
        <div class="flip-card-inner">
          <div class="flip-card-front toggle-flip">
            "$100"
          </div>
          <div class="flip-card-back">
            ${q.question}
            <br>
            <button class="trueBtn" data-answer=${q.correct_answer}>True</button>
            <button class="falseBtn" data-answer=${q.correct_answer}>False</button>
          </div>
        </div>
      </div>
    `
  })
} //end addNameToCategory



questionGrid.addEventListener('click', (e) => {
  if (e.target.className === 'trueBtn') {
    if(e.target.innerText === e.target.dataset.answer) {
      e.target.parentElement.innerHTML = `<img width="70px" src="./assets/images/green-check.png">`
      console.log(e.target.parentElement)
      // e.target.parentElement.innerHTML = `<div style="font-size:40px;margin:auto;margin-top:10%;">✅</p>`
    }
  }
  if (e.target.className === 'falseBtn') {
    if(e.target.innerText === e.target.dataset.answer) {
      e.target.parentElement.innerHTML = `<img width="70px" src="./assets/images/green-check.png">`
      // e.target.parentElement.innerHTML = `<p style="font-size:40px;margin:auto;">✅</p>`
    }
  }
  if (e.target.className === 'trueBtn') {
    if(e.target.innerText !== e.target.dataset.answer) {
      e.target.parentElement.innerHTML = `<img width="95px" src="./assets/images/red-x.png">`
      // e.target.parentElement.innerText = "Incorrect answer :( ❌"
    }
  }
  if (e.target.className === 'falseBtn') {
    if(e.target.innerText !== e.target.dataset.answer) {
      e.target.parentElement.innerHTML = `<img width="95px" src="./assets/images/red-x.png">`
      // e.target.parentElement.innerText = "Incorrect answer :( ❌"
    }
  }
})
