public extension String {
   
    func indexIntFromStart(char: Character) -> Int? {
        return firstIndex(of: char)?.utf16Offset(in: self)
    }
    
    func indexIntFromEnd(char: Character) -> Int? {
        return lastIndex(of: char)?.utf16Offset(in: self)
    }
    
    func rangeFromStart(char: Character) -> String.Index?? {
        return firstIndex(of: char)
    }
    
    func rangeFromEnd(char: Character) -> String.Index?? {
        return lastIndex(of: char)
    }
    
    func splitFirstAndlastComma(char: Character) -> [String] {
        var strArr = [String]()
        
        if let s1 = self.firstIndex(of: char) {
            let firstString = self[self.startIndex..<s1]
            strArr.append(String(firstString))
        }
        
        
        
        if let s1 = self.firstIndex(of: char), let s2 = self.lastIndex(of: char) {
            let middleString = self[s1..<s2].suffix(self.count - 2)
            if middleString.count > 0 {
                let newMiddleString = middleString.suffix(middleString.count - 2)
                strArr.append(String(newMiddleString))
            }
            
        }
        
        if let s1 = self.lastIndex(of: char) {
            let lastString = self[s1..<self.endIndex]
            let newLastString = lastString.suffix(lastString.count - 2)
            strArr.append(String(newLastString))
        }
        
        return strArr
    }
    
}
