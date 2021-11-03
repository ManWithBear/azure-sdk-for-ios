// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation

public enum JsonFormat: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)
    /// [The JavaScript Object Notation Data Interchange Format](https://tools.ietf.org/html/rfc8259)
    case json

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .json:
            return "json"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "json":
            self = .json
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

public enum ResponseFormat: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)
    /// [The JavaScript Object Notation Data Interchange Format](https://tools.ietf.org/html/rfc8259)
    case json
    /// [The Extensible Markup Language](https://www.w3.org/TR/xml/)
    case xml

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .json:
            return "json"
        case .xml:
            return "xml"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "json":
            self = .json
        case "xml":
            self = .xml
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

public enum SearchIndexes: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)
    /// Address range interpolation
    case address
    /// Geographies
    case geographies
    /// Point Addresses
    case pointAddresses
    /// Points of interest
    case pointsOfInterest
    /// Streets
    case streets
    /// Cross Streets (Intersections)
    case crossStreets

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .address:
            return "Addr"
        case .geographies:
            return "Geo"
        case .pointAddresses:
            return "PAD"
        case .pointsOfInterest:
            return "POI"
        case .streets:
            return "Str"
        case .crossStreets:
            return "Xstr"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "addr":
            self = .address
        case "geo":
            self = .geographies
        case "pad":
            self = .pointAddresses
        case "poi":
            self = .pointsOfInterest
        case "str":
            self = .streets
        case "xstr":
            self = .crossStreets
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

public enum ElectricVehicleConnector: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)
    /// These are the standard household connectors for a certain region. They are all AC single phase and the standard Voltage and standard Amperage.
    /// See also: [Plug & socket types - World Standards](https://www.worldstandards.eu/electricity/plugs-and-sockets)
    case standardHouseholdCountrySpecific
    /// Type 1 connector as defined in the IEC 62196-2 standard. Also called Yazaki after the original manufacturer or SAE J1772 after the standard that first published it. Mostly used in combination with 120V single phase or up to 240V single phase infrastructure.
    case iEC62196Type1
    /// Type 1 based combo connector as defined in the IEC 62196-3 standard. The connector is based on the Type 1 connector – as defined in the IEC 62196-2 standard – with two additional direct current (DC) contacts to allow DC fast charging.
    case iEC62196Type1CCS
    /// Type 2 connector as defined in the IEC 62196-2 standard. Provided as a cable and plug attached to the charging point
    case iEC62196Type2CableAttached
    /// Type 2 connector as defined in the IEC 62196-2 standard. Provided as a socket set into the charging point.
    case iEC62196Type2Outlet
    /// Type 2 based combo connector as defined in the IEC 62196-3 standard. The connector is based on the Type 2 connector – as defined in the IEC 62196-2 standard – with two additional direct current (DC) contacts to allow DC fast charging.
    case iEC62196Type2CCS
    /// Type 3 connector as defined in the IEC 62196-2 standard. Also called Scame after the original manufacturer. Mostly used in combination with up to 240V single phase or up to 420V three phase infrastructure.
    case iEC62196Type3
    /// CHAdeMO connector named after an association formed by the Tokyo Electric Power Company and industrial partners. Because of this is is also known as the TEPCO's connector. It supports fast DC charging.
    case chademo
    /// Industrial Blue connector is a connector defined in the IEC 60309 standard. It is sometime referred to as by some combination of the standard, the color and the fact that is a single phase connector. The connector usually has the "P+N+E, 6h" configuration.
    case iEC60309AC1PhaseBlue
    /// Industrial White connector is a DC connector defined in the IEC 60309 standard.
    case iEC60309DCWhite
    /// The Tesla connector is the regionally specific Tesla Supercharger connector. I.e. it refers to either Tesla's proprietary connector, sometimes referred to as Tesla Port mostly limited to North America or the modified Type 2 (DC over Type 2) in Europe.
    case tesla

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .standardHouseholdCountrySpecific:
            return "StandardHouseholdCountrySpecific"
        case .iEC62196Type1:
            return "IEC62196Type1"
        case .iEC62196Type1CCS:
            return "IEC62196Type1CCS"
        case .iEC62196Type2CableAttached:
            return "IEC62196Type2CableAttached"
        case .iEC62196Type2Outlet:
            return "IEC62196Type2Outlet"
        case .iEC62196Type2CCS:
            return "IEC62196Type2CCS"
        case .iEC62196Type3:
            return "IEC62196Type3"
        case .chademo:
            return "Chademo"
        case .iEC60309AC1PhaseBlue:
            return "IEC60309AC1PhaseBlue"
        case .iEC60309DCWhite:
            return "IEC60309DCWhite"
        case .tesla:
            return "Tesla"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "standardhouseholdcountryspecific":
            self = .standardHouseholdCountrySpecific
        case "iec62196type1":
            self = .iEC62196Type1
        case "iec62196type1ccs":
            self = .iEC62196Type1CCS
        case "iec62196type2cableattached":
            self = .iEC62196Type2CableAttached
        case "iec62196type2outlet":
            self = .iEC62196Type2Outlet
        case "iec62196type2ccs":
            self = .iEC62196Type2CCS
        case "iec62196type3":
            self = .iEC62196Type3
        case "chademo":
            self = .chademo
        case "iec60309ac1phaseblue":
            self = .iEC60309AC1PhaseBlue
        case "iec60309dcwhite":
            self = .iEC60309DCWhite
        case "tesla":
            self = .tesla
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

public enum GeographicEntityType: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)

    case country

    case countrySubdivision

    case countrySecondarySubdivision

    case countryTertiarySubdivision

    case municipality

    case municipalitySubdivision

    case neighbourhood

    case postalCodeArea

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .country:
            return "Country"
        case .countrySubdivision:
            return "CountrySubdivision"
        case .countrySecondarySubdivision:
            return "CountrySecondarySubdivision"
        case .countryTertiarySubdivision:
            return "CountryTertiarySubdivision"
        case .municipality:
            return "Municipality"
        case .municipalitySubdivision:
            return "MunicipalitySubdivision"
        case .neighbourhood:
            return "Neighbourhood"
        case .postalCodeArea:
            return "PostalCodeArea"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "country":
            self = .country
        case "countrysubdivision":
            self = .countrySubdivision
        case "countrysecondarysubdivision":
            self = .countrySecondarySubdivision
        case "countrytertiarysubdivision":
            self = .countryTertiarySubdivision
        case "municipality":
            self = .municipality
        case "municipalitysubdivision":
            self = .municipalitySubdivision
        case "neighbourhood":
            self = .neighbourhood
        case "postalcodearea":
            self = .postalCodeArea
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

public enum LocalizedMapView: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)
    /// United Arab Emirates (Arabic View)
    case aE
    /// Argentina (Argentinian View)
    case aR
    /// Bahrain (Arabic View)
    case bH
    /// India (Indian View)
    case iN
    /// Iraq (Arabic View)
    case iQ
    /// Jordan (Arabic View)
    case jO
    /// Kuwait (Arabic View)
    case kW
    /// Lebanon (Arabic View)
    case lB
    /// Morocco (Moroccan View)
    case mA
    /// Oman (Arabic View)
    case oM
    /// Pakistan (Pakistani View)
    case pK
    /// Palestinian Authority (Arabic View)
    case pS
    /// Qatar (Arabic View)
    case qA
    /// Saudi Arabia (Arabic View)
    case sA
    /// Syria (Arabic View)
    case sY
    /// Yemen (Arabic View)
    case yE
    /// Return the map data based on the IP address of the request.
    case auto
    /// Unified View (Others)
    case unified

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .aE:
            return "AE"
        case .aR:
            return "AR"
        case .bH:
            return "BH"
        case .iN:
            return "IN"
        case .iQ:
            return "IQ"
        case .jO:
            return "JO"
        case .kW:
            return "KW"
        case .lB:
            return "LB"
        case .mA:
            return "MA"
        case .oM:
            return "OM"
        case .pK:
            return "PK"
        case .pS:
            return "PS"
        case .qA:
            return "QA"
        case .sA:
            return "SA"
        case .sY:
            return "SY"
        case .yE:
            return "YE"
        case .auto:
            return "Auto"
        case .unified:
            return "Unified"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "ae":
            self = .aE
        case "ar":
            self = .aR
        case "bh":
            self = .bH
        case "in":
            self = .iN
        case "iq":
            self = .iQ
        case "jo":
            self = .jO
        case "kw":
            self = .kW
        case "lb":
            self = .lB
        case "ma":
            self = .mA
        case "om":
            self = .oM
        case "pk":
            self = .pK
        case "ps":
            self = .pS
        case "qa":
            self = .qA
        case "sa":
            self = .sA
        case "sy":
            self = .sY
        case "ye":
            self = .yE
        case "auto":
            self = .auto
        case "unified":
            self = .unified
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

public enum OperatingHoursRange: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)
    /// Shows the hours of operation for the next week, starting with the current day in the local time of the POI.
    case nextSevenDays

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .nextSevenDays:
            return "nextSevenDays"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "nextsevendays":
            self = .nextSevenDays
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

/// The type of query being returned: NEARBY or NON_NEAR.
public enum QueryType: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)
    /// Search was performed around a certain latitude and longitude with a defined radius
    case nearby
    /// Search was performed globally, without biasing to a certain latitude and longitude, and no defined radius
    case global

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .nearby:
            return "NEARBY"
        case .global:
            return "NON_NEAR"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "nearby":
            self = .nearby
        case "non_near":
            self = .global
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

/// One of:
/// * POI
/// * Street
/// * Geography
/// * Point Address
/// * Address Range
/// * Cross Street
public enum SearchAddressResultType: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)

    case pOI

    case street

    case geography

    case pointAddress

    case addressRange

    case crossStreet

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .pOI:
            return "POI"
        case .street:
            return "Street"
        case .geography:
            return "Geography"
        case .pointAddress:
            return "Point Address"
        case .addressRange:
            return "Address Range"
        case .crossStreet:
            return "Cross Street"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "poi":
            self = .pOI
        case "street":
            self = .street
        case "geography":
            self = .geography
        case "point address":
            self = .pointAddress
        case "address range":
            self = .addressRange
        case "cross street":
            self = .crossStreet
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

/// The type of entry point. Value can be either _main_ or _minor_.
public enum EntryPointType: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)

    case main

    case minor

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .main:
            return "main"
        case .minor:
            return "minor"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "main":
            self = .main
        case "minor":
            self = .minor
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

/// Types of match for a reverse address search operation.
public enum MatchType: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)

    case addressPoint

    case houseNumberRange

    case street

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .addressPoint:
            return "AddressPoint"
        case .houseNumberRange:
            return "HouseNumberRange"
        case .street:
            return "Street"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "addresspoint":
            self = .addressPoint
        case "housenumberrange":
            self = .houseNumberRange
        case "street":
            self = .street
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

public enum PointOfInterestExtendedPostalCodes: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)

    case pOI

    case none

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .pOI:
            return "POI"
        case .none:
            return "None"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "poi":
            self = .pOI
        case "none":
            self = .none
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

/// Describes the possible uses of a road.
public enum RoadUseType: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)

    case limitedAccess

    case arterial

    case terminal

    case ramp

    case rotary

    case localStreet

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .limitedAccess:
            return "LimitedAccess"
        case .arterial:
            return "Arterial"
        case .terminal:
            return "Terminal"
        case .ramp:
            return "Ramp"
        case .rotary:
            return "Rotary"
        case .localStreet:
            return "LocalStreet"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "limitedaccess":
            self = .limitedAccess
        case "arterial":
            self = .arterial
        case "terminal":
            self = .terminal
        case "ramp":
            self = .ramp
        case "rotary":
            self = .rotary
        case "localstreet":
            self = .localStreet
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

/// Specifies the `GeoJSON` type. Must be one of the nine valid GeoJSON object types - Point, MultiPoint, LineString, MultiLineString, Polygon, MultiPolygon, GeometryCollection, Feature and FeatureCollection.
public enum GeoJsonObjectType: String, Codable, RequestStringConvertible {
    /// `GeoJSON Point` geometry.
    case geoJsonPoint = "Point"
    /// `GeoJSON MultiPoint` geometry.
    case geoJsonMultiPoint = "MultiPoint"
    /// `GeoJSON LineString` geometry.
    case geoJsonLineString = "LineString"
    /// `GeoJSON MultiLineString` geometry.
    case geoJsonMultiLineString = "MultiLineString"
    /// `GeoJSON Polygon` geometry.
    case geoJsonPolygon = "Polygon"
    /// `GeoJSON MultiPolygon` geometry.
    case geoJsonMultiPolygon = "MultiPolygon"
    /// `GeoJSON GeometryCollection` geometry.
    case geoJsonGeometryCollection = "GeometryCollection"
    /// `GeoJSON Feature` object.
    case geoJsonFeature = "Feature"
    /// `GeoJSON FeatureCollection` object.
    case geoJsonFeatureCollection = "FeatureCollection"

    public var requestString: String {
        return rawValue
    }
}
