import Foundation

class Adres {
    private var straat: String
    private var huisnummer: String
    private var postcode: String
    private var plaats: String
    
    public init(straat: String, huisnummer: String, postcode: String, plaats: String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.plaats = plaats
    }
    
}
