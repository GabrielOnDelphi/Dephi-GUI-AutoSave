# GUI-AutoSave

Do you have forms with lots of controls (checkboxes, radio buttons, etc) and you want to save their status to disk on shutdown and resume the program (GUI) exactly from where you left on application startup? You can do it with a single call to: SaveForm/LoadForm.

FULL description here: 
https://gabrielmoraru.com/one-function-to-rule-them-all-saving-the-whole-gui-to-disk-with-one-single-procedure-call/

_________________

This Delphi application will demonstrate:

  1. How to save the state of all GUI controls on application shutdown and then restore them loaded on application startup:
       * checkboxes
       * radiobuttons
       * cubic custom controls
       * form's position
       * controls on the second form

  2. How to send messages to the AppLog (a app-wide message logging system).

_________________

  This demo app requires the LightSaber Core and Log library:   
   * https://github.com/GabrielOnDelphi/Delphi-LightSaber-CoreLib   
   * https://github.com/GabrielOnDelphi/Delphi-LightSaber-LogLib     
