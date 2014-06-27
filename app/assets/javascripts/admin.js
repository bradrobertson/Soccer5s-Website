// Use this to customize the wymeditor boot process
// Just mirror the options specified in boot_wym.js with the new options here.
// This will completely override anything specified in boot_wym.js for that key.
// e.g. skin: 'something_else'
if (typeof(custom_wymeditor_boot_options) == "undefined") {
  custom_wymeditor_boot_options = {
    classesItems: [
      {name: 'text-align', rules:[{name: 'left', title: '{Left}'}, {name: 'center', title: '{Center}'}, {name: 'right', title: '{Right}'}, {name: 'justify', title: '{Justify}'}], join: '-', title: '{Text_Align}'},
      {name: 'image-align', rules:[{name: 'left', title: '{Left}'}, {name: 'right', title: '{Right}'}], join: '-', title: '{Image_Align}'},
      {name: 'font-color', rules:[{name: 'white', title: 'White'}, {name: 'yellow', title: 'Yellow'}, {name: 'green', title: 'Green'}, {name: 'black', title: 'Black'}], join: '-', title: 'Font Colour'},
      {name: 'font-style', rules:[{name: 'button', title: 'Button'}], join: '-', title: 'Font Stye'},
      {name: 'font-size', rules: [{name: '12px', title: '12px'},{name: '14px', title: '14px'},{name: '16px', title: '16px'},{name: '18px', title: '18px'},{name: '20px', title: '20px'},{name: '24px', title: '24px'}], join: '-', title: 'Font Size'}
    ]
  };
}
