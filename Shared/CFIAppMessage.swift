import Foundation

@frozen public enum CFIAppMessage: Codable {
    
    case subscribe(String)
    case mode(CFITunnelMode)
    case proxies
    case healthCheck(String)
    case select(String, String)
    case logLevel(CFILogLevel)
    
    func data() throws -> Data {
        try JSONEncoder().encode(self)
    }
}
