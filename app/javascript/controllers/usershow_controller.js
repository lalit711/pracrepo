    // app/javascript/controllers/my_controller.js
import { Controller } from "@hotwired/stimulus";
export default class extends Controller {
    static values = 
    { user: Object }
  connect() {
    console.log(this.userValue);
    // Your JavaScript logic here
  }
  greet() {
    alert("Hello bhaiyas!");
  }
  showname(){
    // alert(` hello ${this.nameValue}`)
    alert(`Hello ${this.userValue.name}`)
    console.log(`you age is ${this.userValue.age}`)
  }
}