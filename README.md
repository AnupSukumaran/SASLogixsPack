# SASLogixsPack

A description of this package.

## Example to use the "splitFirstAndlastComma(char:) " string extension function

```
let newStrArr = "Hello, World, World, World, I am so lonely".splitFirstAndlastComma(char: ",") // ["Hello","World, World, World","I am so lonely"]

```
## How to use the SASUniqeDeviceIDCreator Section
### Call the "DeviceIDCreated.getUUID()" at viewDidLoad()
```
    override func viewDidLoad() {
        super.viewDidLoad()
        if let uiqueID = DeviceIDCreated.getUUID() {
            print("uiqueID = \(String(describing: uiqueID))")
        }      
    }
  
```
