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

/// User-configurable options for the `SearchPointOfInterestCategory` operation.
internal struct SearchPointOfInterestCategoryOptions: RequestOptions {
    /// Boolean. If the typeahead flag is set, the query will be interpreted as a partial input and the search will enter predictive mode
    internal let isTypeAhead: Bool?
    /// Maximum number of responses that will be returned. Default: 10, minimum: 1 and maximum: 100
    internal let top: Int32?
    /// Starting offset of the returned results within the full result set. Default: 0, minimum: 0 and maximum: 1900
    internal let skip: Int32?
    /// A comma-separated list of category set IDs which could be used to restrict the result to specific Points of Interest categories. ID order does not matter. When multiple category identifiers are provided, only POIs that belong to (at least) one of the categories from the provided list will be returned. The list of supported categories can be discovered using  [POI Categories API](https://aka.ms/AzureMapsPOICategoryTree). Usage examples:
    /// * **categorySet=7315** (Search Points of Interest from category Restaurant)
    /// * **categorySet=7315025,7315017** (Search Points of Interest of category either Italian or French Restaurant)
    internal let categoryFilter: [Int32]?
    /// Comma separated string of country codes, e.g. FR,ES. This will limit the search to the specified countries
    internal let countryFilter: [String]?
    /// Latitude where results should be biased. E.g. 37.337
    internal let lat: Double?
    /// Longitude where results should be biased. E.g. -121.89
    internal let lon: Double?
    /// The radius in meters to for the results to be constrained to the defined area
    internal let radiusInMeters: Int32?
    /// Top left position of the bounding box. E.g. 37.553,-122.453
    internal let topLeft: String?
    /// Bottom right position of the bounding box. E.g. 37.553,-122.453
    internal let btmRight: String?
    /// Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    internal let language: String?
    /// Indexes for which extended postal codes should be included in the results.
    /// Available indexes are:
    ///  **Addr** = Address ranges
    ///  **Geo** = Geographies
    ///  **PAD** = Point Addresses
    ///  **POI** = Points of Interest
    ///  **Str** = Streets
    ///  **XStr** = Cross Streets (intersections)
    /// Value should be a comma separated list of index types (in any order) or **None** for no indexes.
    /// By default extended postal codes are included for all indexes except Geo. Extended postal code lists for geographies can be quite long so they have to be explicitly requested when needed.
    /// Usage examples:
    ///  extendedPostalCodesFor=POI
    ///  extendedPostalCodesFor=PAD,Addr,POI
    ///  extendedPostalCodesFor=None
    /// Extended postal code is returned as an **extendedPostalCode** property of an address. Availability is region-dependent.
    internal let extendedPostalCodesFor: [SearchIndexes]?
    /// A comma-separated list of brand names which could be used to restrict the result to specific brands. Item order does not matter. When multiple brands are provided, only results that belong to (at least) one of the provided list will be returned. Brands that contain a "," in their name should be put into quotes.
    /// Usage examples:
    ///  brandSet=Foo
    ///  brandSet=Foo,Bar
    ///  brandSet="A,B,C Comma",Bar
    internal let brandFilter: [String]?
    /// A comma-separated list of connector types which could be used to restrict the result to Electric Vehicle Station supporting specific connector types. Item order does not matter. When multiple connector types are provided, only results that belong to (at least) one of the provided list will be returned.
    /// Available connector types are:
    ///   * `StandardHouseholdCountrySpecific` - These are the standard household connectors for a certain region. They are all AC single phase and the standard Voltage and standard Amperage. See also: [Plug & socket types - World Standards](https://www.worldstandards.eu/electricity/plugs-and-sockets).
    ///   * `IEC62196Type1` - Type 1 connector as defined in the IEC 62196-2 standard. Also called Yazaki after the original manufacturer or SAE J1772 after the standard that first published it. Mostly used in combination with 120V single phase or up to 240V single phase infrastructure.
    ///   * `IEC62196Type1CCS` - Type 1 based combo connector as defined in the IEC 62196-3 standard. The connector is based on the Type 1 connector – as defined in the IEC 62196-2 standard – with two additional direct current (DC) contacts to allow DC fast charging.
    ///   * `IEC62196Type2CableAttached` - Type 2 connector as defined in the IEC 62196-2 standard. Provided as a cable and plug attached to the charging point.
    ///   * `IEC62196Type2Outlet` - Type 2 connector as defined in the IEC 62196-2 standard. Provided as a socket set into the charging point.
    ///   * `IEC62196Type2CCS` - Type 2 based combo connector as defined in the IEC 62196-3 standard. The connector is based on the Type 2 connector – as defined in the IEC 62196-2 standard – with two additional direct current (DC) contacts to allow DC fast charging.
    ///   * `IEC62196Type3` - Type 3 connector as defined in the IEC 62196-2 standard. Also called Scame after the original manufacturer. Mostly used in combination with up to 240V single phase or up to 420V three phase infrastructure.
    ///   * `Chademo` - CHAdeMO connector named after an association formed by the Tokyo Electric Power Company and industrial partners. Because of this is is also known as the TEPCO's connector. It supports fast DC charging.
    ///   * `IEC60309AC1PhaseBlue` - Industrial Blue connector is a connector defined in the IEC 60309 standard. It is sometime referred to as by some combination of the standard, the color and the fact that is a single phase connector. The connector usually has the "P+N+E, 6h" configuration.
    ///   * `IEC60309DCWhite` - Industrial White connector is a DC connector defined in the IEC 60309 standard.
    ///   * `Tesla` - The Tesla connector is the regionally specific Tesla Supercharger connector. I.e. it refers to either Tesla's proprietary connector, sometimes referred to as Tesla Port mostly limited to North America or the modified Type 2 (DC over Type 2) in Europe.
    /// Usage examples:
    ///  connectorSet=IEC62196Type2CableAttached
    ///  connectorSet=IEC62196Type2Outlet,IEC62196Type2CableAttached
    internal let electricVehicleConnectorFilter: [ElectricVehicleConnector]?
    /// The View parameter (also called the "user region" parameter) allows you to show the correct maps for a certain country/region for geopolitically disputed regions. Different countries have different views of such regions, and the View parameter allows your application to comply with the view required by the country your application will be serving. By default, the View parameter is set to “Unified” even if you haven’t defined it in  the request. It is your responsibility to determine the location of your users, and then set the View parameter correctly for that location. Alternatively, you have the option to set ‘View=Auto’, which will return the map data based on the IP  address of the request. The View parameter in Azure Maps must be used in compliance with applicable laws, including those  regarding mapping, of the country where maps, images and other data and third party content that you are authorized to  access via Azure Maps is made available. Example: view=IN.
    /// Please refer to [Supported Views](https://aka.ms/AzureMapsLocalizationViews) for details and to see the available Views.
    internal let localizedMapView: LocalizedMapView?
    /// Hours of operation for a POI (Points of Interest). The availability of hours of operation will vary based on the data available. If not passed, then no opening hours information will be returned.
    /// Supported value: nextSevenDays
    internal let operatingHours: OperatingHoursRange?

    /// A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    /// Highly recommended for correlating client-side activites with requests received by the server.
    internal let clientRequestId: String?

    /// A token used to make a best-effort attempt at canceling a request.
    internal let cancellationToken: CancellationToken?

    /// A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    internal var dispatchQueue: DispatchQueue?

    /// A `PipelineContext` object to associate with the request.
    internal var context: PipelineContext?

    /// Initialize a `SearchPointOfInterestCategoryOptions` structure.
    /// - Parameters:
    ///   - isTypeAhead: Boolean. If the typeahead flag is set, the query will be interpreted as a partial input and the search will enter predictive mode
    ///   - top: Maximum number of responses that will be returned. Default: 10, minimum: 1 and maximum: 100
    ///   - skip: Starting offset of the returned results within the full result set. Default: 0, minimum: 0 and maximum: 1900
    ///   - categoryFilter: A comma-separated list of category set IDs which could be used to restrict the result to specific Points of Interest categories. ID order does not matter. When multiple category identifiers are provided, only POIs that belong to (at least) one of the categories from the provided list will be returned. The list of supported categories can be discovered using  [POI Categories API](https://aka.ms/AzureMapsPOICategoryTree). Usage examples:
    /// * **categorySet=7315** (Search Points of Interest from category Restaurant)
    /// * **categorySet=7315025,7315017** (Search Points of Interest of category either Italian or French Restaurant)
    ///   - countryFilter: Comma separated string of country codes, e.g. FR,ES. This will limit the search to the specified countries
    ///   - lat: Latitude where results should be biased. E.g. 37.337
    ///   - lon: Longitude where results should be biased. E.g. -121.89
    ///   - radiusInMeters: The radius in meters to for the results to be constrained to the defined area
    ///   - topLeft: Top left position of the bounding box. E.g. 37.553,-122.453
    ///   - btmRight: Bottom right position of the bounding box. E.g. 37.553,-122.453
    ///   - language: Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    ///   - extendedPostalCodesFor: Indexes for which extended postal codes should be included in the results.
    /// Available indexes are:
    ///  **Addr** = Address ranges
    ///  **Geo** = Geographies
    ///  **PAD** = Point Addresses
    ///  **POI** = Points of Interest
    ///  **Str** = Streets
    ///  **XStr** = Cross Streets (intersections)
    /// Value should be a comma separated list of index types (in any order) or **None** for no indexes.
    /// By default extended postal codes are included for all indexes except Geo. Extended postal code lists for geographies can be quite long so they have to be explicitly requested when needed.
    /// Usage examples:
    ///  extendedPostalCodesFor=POI
    ///  extendedPostalCodesFor=PAD,Addr,POI
    ///  extendedPostalCodesFor=None
    /// Extended postal code is returned as an **extendedPostalCode** property of an address. Availability is region-dependent.
    ///   - brandFilter: A comma-separated list of brand names which could be used to restrict the result to specific brands. Item order does not matter. When multiple brands are provided, only results that belong to (at least) one of the provided list will be returned. Brands that contain a "," in their name should be put into quotes.
    /// Usage examples:
    ///  brandSet=Foo
    ///  brandSet=Foo,Bar
    ///  brandSet="A,B,C Comma",Bar
    ///   - electricVehicleConnectorFilter: A comma-separated list of connector types which could be used to restrict the result to Electric Vehicle Station supporting specific connector types. Item order does not matter. When multiple connector types are provided, only results that belong to (at least) one of the provided list will be returned.
    /// Available connector types are:
    ///   * `StandardHouseholdCountrySpecific` - These are the standard household connectors for a certain region. They are all AC single phase and the standard Voltage and standard Amperage. See also: [Plug & socket types - World Standards](https://www.worldstandards.eu/electricity/plugs-and-sockets).
    ///   * `IEC62196Type1` - Type 1 connector as defined in the IEC 62196-2 standard. Also called Yazaki after the original manufacturer or SAE J1772 after the standard that first published it. Mostly used in combination with 120V single phase or up to 240V single phase infrastructure.
    ///   * `IEC62196Type1CCS` - Type 1 based combo connector as defined in the IEC 62196-3 standard. The connector is based on the Type 1 connector – as defined in the IEC 62196-2 standard – with two additional direct current (DC) contacts to allow DC fast charging.
    ///   * `IEC62196Type2CableAttached` - Type 2 connector as defined in the IEC 62196-2 standard. Provided as a cable and plug attached to the charging point.
    ///   * `IEC62196Type2Outlet` - Type 2 connector as defined in the IEC 62196-2 standard. Provided as a socket set into the charging point.
    ///   * `IEC62196Type2CCS` - Type 2 based combo connector as defined in the IEC 62196-3 standard. The connector is based on the Type 2 connector – as defined in the IEC 62196-2 standard – with two additional direct current (DC) contacts to allow DC fast charging.
    ///   * `IEC62196Type3` - Type 3 connector as defined in the IEC 62196-2 standard. Also called Scame after the original manufacturer. Mostly used in combination with up to 240V single phase or up to 420V three phase infrastructure.
    ///   * `Chademo` - CHAdeMO connector named after an association formed by the Tokyo Electric Power Company and industrial partners. Because of this is is also known as the TEPCO's connector. It supports fast DC charging.
    ///   * `IEC60309AC1PhaseBlue` - Industrial Blue connector is a connector defined in the IEC 60309 standard. It is sometime referred to as by some combination of the standard, the color and the fact that is a single phase connector. The connector usually has the "P+N+E, 6h" configuration.
    ///   * `IEC60309DCWhite` - Industrial White connector is a DC connector defined in the IEC 60309 standard.
    ///   * `Tesla` - The Tesla connector is the regionally specific Tesla Supercharger connector. I.e. it refers to either Tesla's proprietary connector, sometimes referred to as Tesla Port mostly limited to North America or the modified Type 2 (DC over Type 2) in Europe.
    /// Usage examples:
    ///  connectorSet=IEC62196Type2CableAttached
    ///  connectorSet=IEC62196Type2Outlet,IEC62196Type2CableAttached
    ///   - localizedMapView: The View parameter (also called the "user region" parameter) allows you to show the correct maps for a certain country/region for geopolitically disputed regions. Different countries have different views of such regions, and the View parameter allows your application to comply with the view required by the country your application will be serving. By default, the View parameter is set to “Unified” even if you haven’t defined it in  the request. It is your responsibility to determine the location of your users, and then set the View parameter correctly for that location. Alternatively, you have the option to set ‘View=Auto’, which will return the map data based on the IP  address of the request. The View parameter in Azure Maps must be used in compliance with applicable laws, including those  regarding mapping, of the country where maps, images and other data and third party content that you are authorized to  access via Azure Maps is made available. Example: view=IN.
    /// Please refer to [Supported Views](https://aka.ms/AzureMapsLocalizationViews) for details and to see the available Views.
    ///   - operatingHours: Hours of operation for a POI (Points of Interest). The availability of hours of operation will vary based on the data available. If not passed, then no opening hours information will be returned.
    /// Supported value: nextSevenDays
    ///   - clientRequestId: A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    ///   - context: A `PipelineContext` object to associate with the request.
    internal init(
        isTypeAhead: Bool? = nil,
        top: Int32? = nil,
        skip: Int32? = nil,
        categoryFilter: [Int32]? = nil,
        countryFilter: [String]? = nil,
        lat: Double? = nil,
        lon: Double? = nil,
        radiusInMeters: Int32? = nil,
        topLeft: String? = nil,
        btmRight: String? = nil,
        language: String? = nil,
        extendedPostalCodesFor: [SearchIndexes]? = nil,
        brandFilter: [String]? = nil,
        electricVehicleConnectorFilter: [ElectricVehicleConnector]? = nil,
        localizedMapView: LocalizedMapView? = nil,
        operatingHours: OperatingHoursRange? = nil,
        clientRequestId: String? = nil,
        cancellationToken: CancellationToken? = nil,
        dispatchQueue: DispatchQueue? = nil,
        context: PipelineContext? = nil
    ) {
        self.isTypeAhead = isTypeAhead
        self.top = top
        self.skip = skip
        self.categoryFilter = categoryFilter
        self.countryFilter = countryFilter
        self.lat = lat
        self.lon = lon
        self.radiusInMeters = radiusInMeters
        self.topLeft = topLeft
        self.btmRight = btmRight
        self.language = language
        self.extendedPostalCodesFor = extendedPostalCodesFor
        self.brandFilter = brandFilter
        self.electricVehicleConnectorFilter = electricVehicleConnectorFilter
        self.localizedMapView = localizedMapView
        self.operatingHours = operatingHours
        self.clientRequestId = clientRequestId
        self.cancellationToken = cancellationToken
        self.dispatchQueue = dispatchQueue
        self.context = context
    }
}
