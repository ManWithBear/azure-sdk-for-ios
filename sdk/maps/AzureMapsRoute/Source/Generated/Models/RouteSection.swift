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
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// Route sections contain additional information about parts of a route. Each section contains at least the elements `startPointIndex`, `endPointIndex`, and `sectionType`.
public struct RouteSection: Codable, Swift.Error {
    // MARK: Properties

    /// Index of the first point (offset 0) in the route this section applies to.
    public let startPointIndex: Int32?
    /// Index of the last point (offset 0) in the route this section applies to.
    public let endPointIndex: Int32?
    /// Section types of the reported route response
    public let sectionType: ResponseSectionType?
    /// Travel mode for the calculated route. The value will be set to `other` if the requested mode of transport is not possible in this section
    public let travelMode: ResponseTravelMode?
    /// Type of the incident. Can currently be JAM, ROAD_WORK, ROAD_CLOSURE, or OTHER. See "tec" for detailed information.
    public let simpleCategory: SimpleCategory?
    /// Effective speed of the incident in km/h, averaged over its entire length.
    public let effectiveSpeedInKmh: Int32?
    /// Delay in seconds caused by the incident.
    public let delayInSeconds: Int32?
    /// The magnitude of delay caused by the incident. These values correspond to the values of the response field ty of the [Get Traffic Incident Detail API](https://docs.microsoft.com/rest/api/maps/traffic/gettrafficincidentdetail).
    public let delayMagnitude: DelayMagnitude?
    /// Details of the traffic event, using definitions in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard. Can contain effectCode and causes elements.
    public let tec: RouteSectionTec?

    // MARK: Initializers

    /// Initialize a `RouteSection` structure.
    /// - Parameters:
    ///   - startPointIndex: Index of the first point (offset 0) in the route this section applies to.
    ///   - endPointIndex: Index of the last point (offset 0) in the route this section applies to.
    ///   - sectionType: Section types of the reported route response
    ///   - travelMode: Travel mode for the calculated route. The value will be set to `other` if the requested mode of transport is not possible in this section
    ///   - simpleCategory: Type of the incident. Can currently be JAM, ROAD_WORK, ROAD_CLOSURE, or OTHER. See "tec" for detailed information.
    ///   - effectiveSpeedInKmh: Effective speed of the incident in km/h, averaged over its entire length.
    ///   - delayInSeconds: Delay in seconds caused by the incident.
    ///   - delayMagnitude: The magnitude of delay caused by the incident. These values correspond to the values of the response field ty of the [Get Traffic Incident Detail API](https://docs.microsoft.com/rest/api/maps/traffic/gettrafficincidentdetail).
    ///   - tec: Details of the traffic event, using definitions in the [TPEG2-TEC](https://www.iso.org/standard/63116.html) standard. Can contain effectCode and causes elements.
    public init(
        startPointIndex: Int32? = nil, endPointIndex: Int32? = nil, sectionType: ResponseSectionType? = nil,
        travelMode: ResponseTravelMode? = nil, simpleCategory: SimpleCategory? = nil, effectiveSpeedInKmh: Int32? = nil,
        delayInSeconds: Int32? = nil, delayMagnitude: DelayMagnitude? = nil, tec: RouteSectionTec? = nil
    ) {
        self.startPointIndex = startPointIndex
        self.endPointIndex = endPointIndex
        self.sectionType = sectionType
        self.travelMode = travelMode
        self.simpleCategory = simpleCategory
        self.effectiveSpeedInKmh = effectiveSpeedInKmh
        self.delayInSeconds = delayInSeconds
        self.delayMagnitude = delayMagnitude
        self.tec = tec
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case startPointIndex = "startPointIndex"
        case endPointIndex = "endPointIndex"
        case sectionType = "sectionType"
        case travelMode = "travelMode"
        case simpleCategory = "simpleCategory"
        case effectiveSpeedInKmh = "effectiveSpeedInKmh"
        case delayInSeconds = "delayInSeconds"
        case delayMagnitude = "magnitudeOfDelay"
        case tec = "tec"
    }

    /// Initialize a `RouteSection` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.startPointIndex = try? container.decode(Int32.self, forKey: .startPointIndex)
        self.endPointIndex = try? container.decode(Int32.self, forKey: .endPointIndex)
        self.sectionType = try? container.decode(ResponseSectionType.self, forKey: .sectionType)
        self.travelMode = try? container.decode(ResponseTravelMode.self, forKey: .travelMode)
        self.simpleCategory = try? container.decode(SimpleCategory.self, forKey: .simpleCategory)
        self.effectiveSpeedInKmh = try? container.decode(Int32.self, forKey: .effectiveSpeedInKmh)
        self.delayInSeconds = try? container.decode(Int32.self, forKey: .delayInSeconds)
        self.delayMagnitude = try? container.decode(DelayMagnitude.self, forKey: .delayMagnitude)
        self.tec = try? container.decode(RouteSectionTec.self, forKey: .tec)
    }

    /// Encode a `RouteSection` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if startPointIndex != nil { try? container.encode(startPointIndex, forKey: .startPointIndex) }
        if endPointIndex != nil { try? container.encode(endPointIndex, forKey: .endPointIndex) }
        if sectionType != nil { try? container.encode(sectionType, forKey: .sectionType) }
        if travelMode != nil { try? container.encode(travelMode, forKey: .travelMode) }
        if simpleCategory != nil { try? container.encode(simpleCategory, forKey: .simpleCategory) }
        if effectiveSpeedInKmh != nil { try? container.encode(effectiveSpeedInKmh, forKey: .effectiveSpeedInKmh) }
        if delayInSeconds != nil { try? container.encode(delayInSeconds, forKey: .delayInSeconds) }
        if delayMagnitude != nil { try? container.encode(delayMagnitude, forKey: .delayMagnitude) }
        if tec != nil { try? container.encode(tec, forKey: .tec) }
    }
}
