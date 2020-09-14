function Rectangle(borderColor = "black", borderPx="1", borderStyle="solid", 
backgroundColor, position="fixed", top, left, width, height, zIndex, content="&nbsp"){

    this.border = `border:${borderPx}px ${borderStyle} ${borderColor};`;
    this.backgroundColor = `background-color:${backgroundColor};`;
    this.position = `position:${position};`;
    this.top = `top:${top}vh;`;
    this.left = `left:${left}vw;`;
    this.width = `width:${width}vw;`;
    this.height = `height:${height}vh;`;
    this.zIndex = `z-index:${zIndex};`;
    this.content = `${content}`;

    this.toString = function(){
        return `<div ${this.getStyle()}>${this.content}</div>`
    }

    this.getStyle = function(){
        return `style='${this.border} ${this.backgroundColor} ${this.position} ${this.top} ${this.left}
        ${this.width} ${this.height} ${this.zIndex}'`
    }
}