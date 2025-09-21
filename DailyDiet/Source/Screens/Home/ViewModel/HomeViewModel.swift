//
//  HomeViewModel.swift
//  DailyDiet
//
//  Created by pablo henrique on 21/09/25.
//

import Foundation

class HomeViewModel {
    
    let api = Api()
    
    func getSnacks(completion: @escaping (Result<[SnackModel], Error>) -> Void) {
        
        guard let url = URL(string: api.url + "snacks") else {
            fatalError("Invalid URL")
        }
        
        var request = URLRequest(url: url)
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("❌ Erro:", error.localizedDescription)
                return
            }
            
            if let data = data {
                do {
                    let snacks = try JSONDecoder().decode([SnackModel].self, from: data)
                    completion(.success(snacks))
                } catch {
                    completion(.failure(error))
                }
            }
        }
        
        task.resume()
        
    }
}
