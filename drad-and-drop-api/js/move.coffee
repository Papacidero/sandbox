dragElement                        = document.querySelector '.draggable'
dropElement                        = document.querySelector '.droppable'
minusElement                       = document.querySelector '.minus'
plusElement                        = document.querySelector '.plus'
numberElement                      = document.querySelectorAll '.number'

# Drag
dragElement.addEventListener 'dragstart', (event) ->
    dragElement.classList.add 'dragAnim'

dragElement.addEventListener 'dragend', (event) ->
    dragElement.classList.remove 'dragAnim'

    
dropElement.addEventListener 'dragover', (event) ->
    event.preventDefault();
    
dropElement.addEventListener 'drop', (event) ->
        dropElement.classList.add 'dragAnim'
        setTimeout (->
            dropElement.classList.remove 'dragAnim'
        ), 500
        numberElement[1].innerHTML =  parseInt(numberElement[1].innerHTML)+parseInt(numberElement[0].innerHTML)
        checkNegativeNumber()


dropElement.addEventListener 'dragstart', (event) ->
        dropElement.classList.add 'dragAnim'
    
dropElement.addEventListener 'dragend', (event) ->
        dropElement.classList.remove 'dragAnim'
        numberElement[1].innerHTML =  parseInt(numberElement[1].innerHTML)-parseInt(numberElement[0].innerHTML)
        checkNegativeNumber()
    
# Plus / Minus
minusElement.addEventListener 'click', (event) ->
    numberElement[0].innerHTML = parseInt(numberElement[0].innerHTML)-1
    checkNegativeNumber();
    
plusElement.addEventListener 'click', (event) ->
    numberElement[0].innerHTML = parseInt(numberElement[0].innerHTML)+1
    
checkNegativeNumber = () ->
   if parseInt(numberElement[1].innerHTML) < 0
       numberElement[1].innerHTML = 0
    
   if parseInt(numberElement[0].innerHTML) < 1
       numberElement[0].innerHTML = 1