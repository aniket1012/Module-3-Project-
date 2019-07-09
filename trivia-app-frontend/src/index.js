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
  // for (let i = 0; i < 5; i++) {
    category.round_of_questions.forEach(q => {
      questionGrid.innerHTML += `
         <div class="question-grid-item" id=${q.id}>${q.question}
         <br>
         <button class="trueBtn" data-answer=${q.correct_answer}>True</button>
         <button class="falseBtn" data-answer=${q.correct_answer}>False</button>
         </div>
         `
    })
  // const trueBtn = document.querySelectorAll('.trueBtn')
  // const falseBtn = document.querySelectorAll('.falseBtn')
} //end addNameToCategory

questionGrid.addEventListener('click', (e) => {
  if (e.target.className === 'trueBtn') {
    if(e.target.innerText === e.target.dataset.answer) {
      alert("truth!!!")
      console.log("the answer was true and you clicked true");
    }
  }
  if (e.target.className === 'falseBtn') {
    if(e.target.innerText === e.target.dataset.answer) {
      alert("FALSE!!!")
      console.log("the answer was false and you clicked false");
    }
  }
})
