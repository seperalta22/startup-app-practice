document.addEventListener("turbo:load", () => {
  const alert = document.querySelector(".alert");

  if (alert) {
    setTimeout(() => {
      alert.classList.remove("opacity-100");
      alert.classList.add("opacity-0");
    }, 5000);
    setTimeout(() => {
      alert.style.display = "none";
    }, 6000);
  }
});
