document.addEventListener("DOMContentLoaded", () => {
  if (document.querySelector(".js-newTraining")) {
    document.getElementById('starts_at').datepicker();
    console.log('Add Training');
  };
});