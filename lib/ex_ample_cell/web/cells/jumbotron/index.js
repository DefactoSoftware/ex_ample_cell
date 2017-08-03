import { Cell, Builder } from "cells-js";

class JumbotronCell extends Cell {
  initialize() {
    this.element.addEventListener("mouseover", this.changeColor);
  }

  changeColor = () => {
    this.element.style.backgroundColor =
      "#" + Math.floor(Math.random() * 16777215).toString(16);
  };
}

Builder.register(JumbotronCell, "JumbotronCell");

export default JumbotronCell;
