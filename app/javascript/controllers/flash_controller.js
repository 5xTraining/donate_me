import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []

  close(e) {
    e.preventDefault()
    this.element.remove()
  }
}
