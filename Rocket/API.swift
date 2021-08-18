// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetRocktsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetRockts {
      rockets {
        __typename
        boosters
        company
        cost_per_launch
        description
        height {
          __typename
          feet
          meters
        }
        name
        wikipedia
      }
    }
    """

  public let operationName: String = "GetRockts"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("rockets", type: .list(.object(Rocket.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(rockets: [Rocket?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "rockets": rockets.flatMap { (value: [Rocket?]) -> [ResultMap?] in value.map { (value: Rocket?) -> ResultMap? in value.flatMap { (value: Rocket) -> ResultMap in value.resultMap } } }])
    }

    public var rockets: [Rocket?]? {
      get {
        return (resultMap["rockets"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Rocket?] in value.map { (value: ResultMap?) -> Rocket? in value.flatMap { (value: ResultMap) -> Rocket in Rocket(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Rocket?]) -> [ResultMap?] in value.map { (value: Rocket?) -> ResultMap? in value.flatMap { (value: Rocket) -> ResultMap in value.resultMap } } }, forKey: "rockets")
      }
    }

    public struct Rocket: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Rocket"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("boosters", type: .scalar(Int.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("cost_per_launch", type: .scalar(Int.self)),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("height", type: .object(Height.selections)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("wikipedia", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(boosters: Int? = nil, company: String? = nil, costPerLaunch: Int? = nil, description: String? = nil, height: Height? = nil, name: String? = nil, wikipedia: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Rocket", "boosters": boosters, "company": company, "cost_per_launch": costPerLaunch, "description": description, "height": height.flatMap { (value: Height) -> ResultMap in value.resultMap }, "name": name, "wikipedia": wikipedia])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var boosters: Int? {
        get {
          return resultMap["boosters"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "boosters")
        }
      }

      public var company: String? {
        get {
          return resultMap["company"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "company")
        }
      }

      public var costPerLaunch: Int? {
        get {
          return resultMap["cost_per_launch"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "cost_per_launch")
        }
      }

      public var description: String? {
        get {
          return resultMap["description"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var height: Height? {
        get {
          return (resultMap["height"] as? ResultMap).flatMap { Height(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "height")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var wikipedia: String? {
        get {
          return resultMap["wikipedia"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "wikipedia")
        }
      }

      public struct Height: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Distance"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("feet", type: .scalar(Double.self)),
            GraphQLField("meters", type: .scalar(Double.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(feet: Double? = nil, meters: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Distance", "feet": feet, "meters": meters])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var feet: Double? {
          get {
            return resultMap["feet"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "feet")
          }
        }

        public var meters: Double? {
          get {
            return resultMap["meters"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "meters")
          }
        }
      }
    }
  }
}

public final class LaunchNextQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query LaunchNext {
      launchNext {
        __typename
        id
        launch_date_local
        launch_site {
          __typename
          site_name
          site_name_long
        }
        launch_year
        mission_name
        rocket {
          __typename
          rocket_name
          rocket_type
        }
        telemetry {
          __typename
          flight_club
        }
        details
      }
    }
    """

  public let operationName: String = "LaunchNext"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("launchNext", type: .object(LaunchNext.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(launchNext: LaunchNext? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "launchNext": launchNext.flatMap { (value: LaunchNext) -> ResultMap in value.resultMap }])
    }

    public var launchNext: LaunchNext? {
      get {
        return (resultMap["launchNext"] as? ResultMap).flatMap { LaunchNext(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "launchNext")
      }
    }

    public struct LaunchNext: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Launch"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("launch_date_local", type: .scalar(String.self)),
          GraphQLField("launch_site", type: .object(LaunchSite.selections)),
          GraphQLField("launch_year", type: .scalar(String.self)),
          GraphQLField("mission_name", type: .scalar(String.self)),
          GraphQLField("rocket", type: .object(Rocket.selections)),
          GraphQLField("telemetry", type: .object(Telemetry.selections)),
          GraphQLField("details", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, launchDateLocal: String? = nil, launchSite: LaunchSite? = nil, launchYear: String? = nil, missionName: String? = nil, rocket: Rocket? = nil, telemetry: Telemetry? = nil, details: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Launch", "id": id, "launch_date_local": launchDateLocal, "launch_site": launchSite.flatMap { (value: LaunchSite) -> ResultMap in value.resultMap }, "launch_year": launchYear, "mission_name": missionName, "rocket": rocket.flatMap { (value: Rocket) -> ResultMap in value.resultMap }, "telemetry": telemetry.flatMap { (value: Telemetry) -> ResultMap in value.resultMap }, "details": details])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var launchDateLocal: String? {
        get {
          return resultMap["launch_date_local"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "launch_date_local")
        }
      }

      public var launchSite: LaunchSite? {
        get {
          return (resultMap["launch_site"] as? ResultMap).flatMap { LaunchSite(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "launch_site")
        }
      }

      public var launchYear: String? {
        get {
          return resultMap["launch_year"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "launch_year")
        }
      }

      public var missionName: String? {
        get {
          return resultMap["mission_name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mission_name")
        }
      }

      public var rocket: Rocket? {
        get {
          return (resultMap["rocket"] as? ResultMap).flatMap { Rocket(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "rocket")
        }
      }

      public var telemetry: Telemetry? {
        get {
          return (resultMap["telemetry"] as? ResultMap).flatMap { Telemetry(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "telemetry")
        }
      }

      public var details: String? {
        get {
          return resultMap["details"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "details")
        }
      }

      public struct LaunchSite: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchSite"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("site_name", type: .scalar(String.self)),
            GraphQLField("site_name_long", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(siteName: String? = nil, siteNameLong: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchSite", "site_name": siteName, "site_name_long": siteNameLong])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var siteName: String? {
          get {
            return resultMap["site_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_name")
          }
        }

        public var siteNameLong: String? {
          get {
            return resultMap["site_name_long"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_name_long")
          }
        }
      }

      public struct Rocket: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchRocket"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("rocket_name", type: .scalar(String.self)),
            GraphQLField("rocket_type", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(rocketName: String? = nil, rocketType: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchRocket", "rocket_name": rocketName, "rocket_type": rocketType])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var rocketName: String? {
          get {
            return resultMap["rocket_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_name")
          }
        }

        public var rocketType: String? {
          get {
            return resultMap["rocket_type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_type")
          }
        }
      }

      public struct Telemetry: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchTelemetry"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("flight_club", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(flightClub: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchTelemetry", "flight_club": flightClub])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var flightClub: String? {
          get {
            return resultMap["flight_club"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "flight_club")
          }
        }
      }
    }
  }
}
