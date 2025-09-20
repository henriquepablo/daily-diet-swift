//
//  NewSnackViewModel.swift
//  DailyDiet
//
//  Created by pablo henrique on 20/09/25.
//

import Foundation


class NewSnackViewModel {
    
    let api = Api()
    
    func addNewSnack(name: String, description: String, data: String, hour: String, hasDiet: Bool, completion: @escaping (Bool) -> Void) {
        
        guard let url = URL(string: api.url + "createSnack") else {
            fatalError("Invalid URL")
        }
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let snack = Snack(name: name, description: description, data: data, hour: hour, hasDiet: hasDiet)
        
        do {
            let jsonData = try JSONEncoder().encode(snack)
            request.httpBody = jsonData
        } catch {
            print("Erro ao criar JSON:", error.localizedDescription)
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("❌ Erro:", error.localizedDescription)
                completion(false)
                return
            }
            
            if let data = data {
                print("✅ Resposta:", String(data: data, encoding: .utf8) ?? "")
            }
            
            completion(true)
        }
        
        task.resume()
    }
    
}

struct Snack: Codable {
    var name: String
    var description: String
    var data: String
    var hour: String
    var hasDiet: Bool
}
