#SingleInstance on
SetWorkingDir %A_ScriptDir%
; 部分一致
SetTitleMatchMode,2
#WinActivateForce

class Circler {
  __New(windowNames){
    this._boundaryLow := 1
    this._boundaryHigh := windowNames.maxindex()
    this._currentIndex := 1
    this._windowNames :=windowNames
  }

  next(){
    newv := this._currentIndex + 1
    if(this._boundaryHigh < newv){
      newv := this._boundaryLow
    }
    this._currentIndex := newv
  }

  prev(){
    newv := this._currentIndex - 1
    if(newv < this._boundaryLow){
      newv := this._boundaryHigh
    }
    this._currentIndex := newv
  }

  getCurrentNames(){
    windowName := this._windowNames[this._currentIndex]
    return windowName
  }
}

activate(circler) {
  windowName := circler.getCurrentNames()
  WinActivate, %windowName%
}

#Include %A_ScriptDir%\config.ahk
circler := new Circler(w1)

#left::
  circler.prev()
  activate(circler)
return

#right::
  circler.next()
  activate(circler)
return

#up::Reload
#down::run,"%editorPath%" %A_ScriptFullPath%

return
