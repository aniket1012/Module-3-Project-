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
  for (let i = 0; i < 2; i++) {
    questionGrid.innerHTML += `
     <div class="question-grid-item">${category.easy_questions[i].question}</div>
    `
  }
  // category.easy_questions.forEach(q => {
  //   questionGrid.innerHTML += `
  //     <div class="question-grid-item">$100</div>
  //   `
  // })

}
