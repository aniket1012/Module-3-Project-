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
  <div class="category-grid-item" id="${category.id}"> ${category.name} </div>`

  category.round_of_questions.forEach(question => {
    questionGrid.innerHTML += `
    <div class='question-grid-item' id=${question.id}>${question.question}
    <br>
    <button class="trueBtn"> True </button> 
    <button class="falseBtn"> False </button>
    </div>`
    
  })
    // const trueBtn = document.querySelectorAll('.trueBtn')
    // const falseBtn = document.querySelectorAll('.trueBtn')

}

 {
  questionGrid.addEventListener('click', (e) => {
    if (e.target.className === 'trueBtn') {
      if(e.target.innerText === question.correct_answer) {
        alert("u got it bro")
      }
    }
  })




