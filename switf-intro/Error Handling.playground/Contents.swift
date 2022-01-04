let connectionOK = true
let connectionSpeed = 30.00
let fileFound = false

enum FileTransferError: Error {
    case noConnection
    case lowBandwidth
    case fileNotFound
}

func transferFile() throws {
    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed > 30 else {
        throw FileTransferError.lowBandwidth
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
}

func sendFile() -> String {
    
//    defer {
//        removeTmpFiles()
//        closeConnection()
//    }
    
    do {
        try transferFile()
    } catch FileTransferError.noConnection {
        return "No Network Connection"
    } catch FileTransferError.lowBandwidth {
        return "File Transfer Speed too Low"
    } catch FileTransferError.fileNotFound {
        return "File Not Found"
    } catch {
        return "Unknown error"
    }
    
    return "Successful transfer"
}
git 
print(sendFile())

//do {
//    try filemgr.createDirectory(at: newDir, withIntermediateDirectories: true, attributes: nil)
//    catch let error {
//        print("Error: \(error.localizedDescription)")
//    }
//}
