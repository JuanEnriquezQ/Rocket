//
//  Network.swift
//  Rocket
//
//  Created by Juan Enriquez on 17/08/21.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
  
  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://api.spacex.land/graphql/")!)
  
  
  func requestData(queryType: ApolloCellType, completionHandler: @escaping (Any?, Error?) -> Void ) {
    
    switch queryType {
      case .nextLaunch:
        Network.shared.apollo
          .fetch(query: LaunchNextQuery()) { [weak self] result in
            guard let _ = self else {
              return
            }
                  
            switch result {
            case .success(let graphQLResult):
              completionHandler(graphQLResult.data?.launchNext, nil)
            case .failure(let error):
              completionHandler(nil, error)
            }
        }
        
    case .company:
      Network.shared.apollo
        .fetch(query: GetSpaceXQuery()) { [weak self] result in
          guard let _ = self else {
            return
          }
                
          switch result {
          case .success(let graphQLResult):
            completionHandler(graphQLResult.data?.company, nil)
          case .failure(let error):
            completionHandler(nil, error)
          }
      }
    case .rockets:
      Network.shared.apollo
        .fetch(query: GetRocktsQuery()) { [weak self] result in
          guard let _ = self else {
            return
          }
                
          switch result {
          case .success(let graphQLResult):
            completionHandler(graphQLResult.data?.rockets, nil)
          case .failure(let error):
            completionHandler(nil, error)
          }
      }
    case .roadster:
      Network.shared.apollo
        .fetch(query: GetRoadsterQuery()) { [weak self] result in
          guard let _ = self else {
            return
          }
                
          switch result {
          case .success(let graphQLResult):
            completionHandler(graphQLResult.data?.roadster, nil)
          case .failure(let error):
            completionHandler(nil, error)
          }
      }
    case .lastLaunch:
      Network.shared.apollo
        .fetch(query: LastLaunchQuery()) { [weak self] result in
          guard let _ = self else {
            return
          }
                
          switch result {
          case .success(let graphQLResult):
            completionHandler(graphQLResult.data?.launchLatest, nil)
          case .failure(let error):
            completionHandler(nil, error)
          }
      }
    }
  }
}
