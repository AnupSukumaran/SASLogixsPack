# SASLogixsPack

A description of this package.

## Example to use the "splitFirstAndlastComma(char:) " string extension function

```
let newStrArr = "Hello, World, World, World, I am so lonely".splitFirstAndlastComma(char: ",") // ["Hello","World, World, World","I am so lonely"]

```
## How to use the "SASUniqeDeviceIDCreator.swift"
### Call the "DeviceIDCreated.getUUID(appID:)" at viewDidLoad()
```
    override func viewDidLoad() {
        super.viewDidLoad()
        if let uiqueID = DeviceIDCreated.getUUID(appID: "com.Qaptive-Tech.UUIDTest") {
            print("uiqueID = \(String(describing: uiqueID))")
        }      
    }
  
```
## How to use the "SASSuperAlert .swift"
### Call the "showSuperAlertView" as shown below
```
    var actionCompBlk1: (() -> ()) = {
        UIAlertController.alertWindow.isHidden = true
        if let url = URL(string:ituneAppLink ) {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    func createdFunctionToCallTheSuperAlert() {
            
            UIAlertController().showSuperAlertView(title: "TITLE", message: "MESSAGE", actionTitles: ["BUTTON_TITLE_1"], actions: [actionCompBlk1])
        
    }
        
  
```
