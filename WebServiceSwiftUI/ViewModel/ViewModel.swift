//
//  ViewModel.swift
//  WebServiceSwiftUI
//
//  Created by Mark Joselli on 11/05/22.
//

import Foundation
import Alamofire

class ViewModel: ObservableObject {
    
    @Published var chuckModel:ChuckModel = ChuckModel()
    
    init( ) {
        getChuckMessage()
    }
    
    func getChuckMessage() {
        let url = URL(string: "https://api.chucknorris.io/jokes/random")!
        
        AF.request(url)
            .responseDecodable(of: ChuckModel.self){ response in
                if response.error != nil{
                    print(response.error as Any)
                }else{
                    self.chuckModel = response.value!
                }
                
            }
        
    }
    
}
