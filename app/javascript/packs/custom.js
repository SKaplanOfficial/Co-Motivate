window.onload = function() {
    var pass_toggle = document.getElementById("change-password-toggle")
    if (pass_toggle) pass_toggle.addEventListener("click", ToggleUpdatePasswordForm, false)

    var category_selection = document.getElementById("category_selection")
    if (category_selection) category_selection.addEventListener("change", SelectCategory, false)

    var topic_selection = document.getElementById("topic_selection")
    if (topic_selection) topic_selection.addEventListener("change", SelectTopic, false)

    var goal_selection = document.getElementById("goal_selection")
    if (goal_selection) goal_selection.addEventListener("change", SelectGoal, false)
}

function ToggleUpdatePasswordForm() {
    const form = document.getElementById('change-password-form')
    if (form.style.display === 'block') {
        form.style.display = 'none'
    } else {
        form.style.display = 'block'
    }
}

function SelectCategory() {
    const next_block = document.getElementById("goal-pick-topic")
    next_block.style.display = 'block'
}

function SelectTopic() {
    const next_block = document.getElementById("goal-pick-goal")
    next_block.style.display = 'block'
}

function SelectGoal() {
    const cat_seed = document.getElementById("goal-cat-seed")
    const topic_seed = document.getElementById("goal-topic-seed")
    const type_seed = document.getElementById("goal-type-seed")

    cat_seed.value = 
}