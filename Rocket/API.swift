// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetRoadsterQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetRoadster {
      roadster {
        __typename
        details
        name
        wikipedia
        earth_distance_km
        speed_kph
        launch_date_utc
        launch_mass_kg
      }
    }
    """

  public let operationName: String = "GetRoadster"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("roadster", type: .object(Roadster.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(roadster: Roadster? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "roadster": roadster.flatMap { (value: Roadster) -> ResultMap in value.resultMap }])
    }

    public var roadster: Roadster? {
      get {
        return (resultMap["roadster"] as? ResultMap).flatMap { Roadster(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "roadster")
      }
    }

    public struct Roadster: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Roadster"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("details", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("wikipedia", type: .scalar(String.self)),
          GraphQLField("earth_distance_km", type: .scalar(Double.self)),
          GraphQLField("speed_kph", type: .scalar(Double.self)),
          GraphQLField("launch_date_utc", type: .scalar(String.self)),
          GraphQLField("launch_mass_kg", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(details: String? = nil, name: String? = nil, wikipedia: String? = nil, earthDistanceKm: Double? = nil, speedKph: Double? = nil, launchDateUtc: String? = nil, launchMassKg: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Roadster", "details": details, "name": name, "wikipedia": wikipedia, "earth_distance_km": earthDistanceKm, "speed_kph": speedKph, "launch_date_utc": launchDateUtc, "launch_mass_kg": launchMassKg])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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

      public var earthDistanceKm: Double? {
        get {
          return resultMap["earth_distance_km"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "earth_distance_km")
        }
      }

      public var speedKph: Double? {
        get {
          return resultMap["speed_kph"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "speed_kph")
        }
      }

      public var launchDateUtc: String? {
        get {
          return resultMap["launch_date_utc"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "launch_date_utc")
        }
      }

      public var launchMassKg: Int? {
        get {
          return resultMap["launch_mass_kg"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "launch_mass_kg")
        }
      }
    }
  }
}

public final class GetRocktsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetRockts {
      rockets {
        __typename
        active
        boosters
        company
        cost_per_launch
        country
        description
        diameter {
          __typename
          meters
        }
        height {
          __typename
          meters
        }
        mass {
          __typename
          kg
        }
        name
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
          GraphQLField("active", type: .scalar(Bool.self)),
          GraphQLField("boosters", type: .scalar(Int.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("cost_per_launch", type: .scalar(Int.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("diameter", type: .object(Diameter.selections)),
          GraphQLField("height", type: .object(Height.selections)),
          GraphQLField("mass", type: .object(Mass.selections)),
          GraphQLField("name", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(active: Bool? = nil, boosters: Int? = nil, company: String? = nil, costPerLaunch: Int? = nil, country: String? = nil, description: String? = nil, diameter: Diameter? = nil, height: Height? = nil, mass: Mass? = nil, name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Rocket", "active": active, "boosters": boosters, "company": company, "cost_per_launch": costPerLaunch, "country": country, "description": description, "diameter": diameter.flatMap { (value: Diameter) -> ResultMap in value.resultMap }, "height": height.flatMap { (value: Height) -> ResultMap in value.resultMap }, "mass": mass.flatMap { (value: Mass) -> ResultMap in value.resultMap }, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var active: Bool? {
        get {
          return resultMap["active"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "active")
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

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var diameter: Diameter? {
        get {
          return (resultMap["diameter"] as? ResultMap).flatMap { Diameter(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "diameter")
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

      public var mass: Mass? {
        get {
          return (resultMap["mass"] as? ResultMap).flatMap { Mass(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "mass")
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

      public struct Diameter: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Distance"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("meters", type: .scalar(Double.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(meters: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Distance", "meters": meters])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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

      public struct Height: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Distance"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("meters", type: .scalar(Double.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(meters: Double? = nil) {
          self.init(unsafeResultMap: ["__typename": "Distance", "meters": meters])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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

      public struct Mass: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Mass"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("kg", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(kg: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Mass", "kg": kg])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var kg: Int? {
          get {
            return resultMap["kg"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "kg")
          }
        }
      }
    }
  }
}

public final class GetSpaceXQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetSpaceX {
      company {
        __typename
        ceo
        employees
        founded
        founder
        headquarters {
          __typename
          state
          city
        }
        vehicles
        name
        links {
          __typename
          elon_twitter
          twitter
          website
        }
        summary
      }
    }
    """

  public let operationName: String = "GetSpaceX"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("company", type: .object(Company.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(company: Company? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "company": company.flatMap { (value: Company) -> ResultMap in value.resultMap }])
    }

    public var company: Company? {
      get {
        return (resultMap["company"] as? ResultMap).flatMap { Company(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "company")
      }
    }

    public struct Company: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Info"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("ceo", type: .scalar(String.self)),
          GraphQLField("employees", type: .scalar(Int.self)),
          GraphQLField("founded", type: .scalar(Int.self)),
          GraphQLField("founder", type: .scalar(String.self)),
          GraphQLField("headquarters", type: .object(Headquarter.selections)),
          GraphQLField("vehicles", type: .scalar(Int.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("links", type: .object(Link.selections)),
          GraphQLField("summary", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(ceo: String? = nil, employees: Int? = nil, founded: Int? = nil, founder: String? = nil, headquarters: Headquarter? = nil, vehicles: Int? = nil, name: String? = nil, links: Link? = nil, summary: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Info", "ceo": ceo, "employees": employees, "founded": founded, "founder": founder, "headquarters": headquarters.flatMap { (value: Headquarter) -> ResultMap in value.resultMap }, "vehicles": vehicles, "name": name, "links": links.flatMap { (value: Link) -> ResultMap in value.resultMap }, "summary": summary])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var ceo: String? {
        get {
          return resultMap["ceo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "ceo")
        }
      }

      public var employees: Int? {
        get {
          return resultMap["employees"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "employees")
        }
      }

      public var founded: Int? {
        get {
          return resultMap["founded"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "founded")
        }
      }

      public var founder: String? {
        get {
          return resultMap["founder"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "founder")
        }
      }

      public var headquarters: Headquarter? {
        get {
          return (resultMap["headquarters"] as? ResultMap).flatMap { Headquarter(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "headquarters")
        }
      }

      public var vehicles: Int? {
        get {
          return resultMap["vehicles"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "vehicles")
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

      public var links: Link? {
        get {
          return (resultMap["links"] as? ResultMap).flatMap { Link(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "links")
        }
      }

      public var summary: String? {
        get {
          return resultMap["summary"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "summary")
        }
      }

      public struct Headquarter: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Address"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("state", type: .scalar(String.self)),
            GraphQLField("city", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(state: String? = nil, city: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Address", "state": state, "city": city])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var state: String? {
          get {
            return resultMap["state"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "state")
          }
        }

        public var city: String? {
          get {
            return resultMap["city"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "city")
          }
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["InfoLinks"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("elon_twitter", type: .scalar(String.self)),
            GraphQLField("twitter", type: .scalar(String.self)),
            GraphQLField("website", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(elonTwitter: String? = nil, twitter: String? = nil, website: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "InfoLinks", "elon_twitter": elonTwitter, "twitter": twitter, "website": website])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var elonTwitter: String? {
          get {
            return resultMap["elon_twitter"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "elon_twitter")
          }
        }

        public var twitter: String? {
          get {
            return resultMap["twitter"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "twitter")
          }
        }

        public var website: String? {
          get {
            return resultMap["website"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "website")
          }
        }
      }
    }
  }
}

public final class LastLaunchQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query LastLaunch {
      launchLatest {
        __typename
        launch_date_local
        launch_site {
          __typename
          site_id
          site_name_long
          site_name
        }
        mission_name
        rocket {
          __typename
          rocket_type
          rocket_name
        }
        details
      }
    }
    """

  public let operationName: String = "LastLaunch"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("launchLatest", type: .object(LaunchLatest.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(launchLatest: LaunchLatest? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "launchLatest": launchLatest.flatMap { (value: LaunchLatest) -> ResultMap in value.resultMap }])
    }

    public var launchLatest: LaunchLatest? {
      get {
        return (resultMap["launchLatest"] as? ResultMap).flatMap { LaunchLatest(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "launchLatest")
      }
    }

    public struct LaunchLatest: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Launch"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("launch_date_local", type: .scalar(String.self)),
          GraphQLField("launch_site", type: .object(LaunchSite.selections)),
          GraphQLField("mission_name", type: .scalar(String.self)),
          GraphQLField("rocket", type: .object(Rocket.selections)),
          GraphQLField("details", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(launchDateLocal: String? = nil, launchSite: LaunchSite? = nil, missionName: String? = nil, rocket: Rocket? = nil, details: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Launch", "launch_date_local": launchDateLocal, "launch_site": launchSite.flatMap { (value: LaunchSite) -> ResultMap in value.resultMap }, "mission_name": missionName, "rocket": rocket.flatMap { (value: Rocket) -> ResultMap in value.resultMap }, "details": details])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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
            GraphQLField("site_id", type: .scalar(String.self)),
            GraphQLField("site_name_long", type: .scalar(String.self)),
            GraphQLField("site_name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(siteId: String? = nil, siteNameLong: String? = nil, siteName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchSite", "site_id": siteId, "site_name_long": siteNameLong, "site_name": siteName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var siteId: String? {
          get {
            return resultMap["site_id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_id")
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

        public var siteName: String? {
          get {
            return resultMap["site_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_name")
          }
        }
      }

      public struct Rocket: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchRocket"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("rocket_type", type: .scalar(String.self)),
            GraphQLField("rocket_name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(rocketType: String? = nil, rocketName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchRocket", "rocket_type": rocketType, "rocket_name": rocketName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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

        public var rocketName: String? {
          get {
            return resultMap["rocket_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_name")
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
