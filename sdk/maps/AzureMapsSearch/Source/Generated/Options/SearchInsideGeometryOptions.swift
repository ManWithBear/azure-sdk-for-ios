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

/// User-configurable options for the `SearchInsideGeometry` operation.
internal struct SearchInsideGeometryOptions: RequestOptions {
    /// Maximum number of responses that will be returned. Default: 10, minimum: 1 and maximum: 100
    internal let top: Int32?
    /// Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    internal let language: String?
    /// A comma-separated list of category set IDs which could be used to restrict the result to specific Points of Interest categories. ID order does not matter. When multiple category identifiers are provided, only POIs that belong to (at least) one of the categories from the provided list will be returned. The list of supported categories can be discovered using  [POI Categories API](https://aka.ms/AzureMapsPOICategoryTree). Usage examples:
    /// * **categorySet=7315** (Search Points of Interest from category Restaurant)
    /// * **categorySet=7315025,7315017** (Search Points of Interest of category either Italian or French Restaurant)
    internal let categoryFilter: [Int32]?
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
    /// A comma separated list of indexes which should be utilized for the search. Item order does not matter. Available indexes are: Addr = Address range interpolation, Geo = Geographies, PAD = Point Addresses, POI = Points of interest, Str = Streets, Xstr = Cross Streets (intersections)
    internal let idxSet: [SearchIndexes]?
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

    /// Initialize a `SearchInsideGeometryOptions` structure.
    /// - Parameters:
    ///   - top: Maximum number of responses that will be returned. Default: 10, minimum: 1 and maximum: 100
    ///   - language: Language in which search results should be returned. Should be one of supported IETF language tags, case insensitive. When data in specified language is not available for a specific field, default language is used.
    /// Please refer to [Supported Languages](https://docs.microsoft.com/azure/azure-maps/supported-languages) for details.
    ///   - categoryFilter: A comma-separated list of category set IDs which could be used to restrict the result to specific Points of Interest categories. ID order does not matter. When multiple category identifiers are provided, only POIs that belong to (at least) one of the categories from the provided list will be returned. The list of supported categories can be discovered using  [POI Categories API](https://aka.ms/AzureMapsPOICategoryTree). Usage examples:
    /// * **categorySet=7315** (Search Points of Interest from category Restaurant)
    /// * **categorySet=7315025,7315017** (Search Points of Interest of category either Italian or French Restaurant)
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
    ///   - idxSet: A comma separated list of indexes which should be utilized for the search. Item order does not matter. Available indexes are: Addr = Address range interpolation, Geo = Geographies, PAD = Point Addresses, POI = Points of interest, Str = Streets, Xstr = Cross Streets (intersections)
    ///   - localizedMapView: The View parameter (also called the "user region" parameter) allows you to show the correct maps for a certain country/region for geopolitically disputed regions. Different countries have different views of such regions, and the View parameter allows your application to comply with the view required by the country your application will be serving. By default, the View parameter is set to “Unified” even if you haven’t defined it in  the request. It is your responsibility to determine the location of your users, and then set the View parameter correctly for that location. Alternatively, you have the option to set ‘View=Auto’, which will return the map data based on the IP  address of the request. The View parameter in Azure Maps must be used in compliance with applicable laws, including those  regarding mapping, of the country where maps, images and other data and third party content that you are authorized to  access via Azure Maps is made available. Example: view=IN.
    /// Please refer to [Supported Views](https://aka.ms/AzureMapsLocalizationViews) for details and to see the available Views.
    ///   - operatingHours: Hours of operation for a POI (Points of Interest). The availability of hours of operation will vary based on the data available. If not passed, then no opening hours information will be returned.
    /// Supported value: nextSevenDays
    ///   - clientRequestId: A client-generated, opaque value with 1KB character limit that is recorded in analytics logs.
    ///   - cancellationToken: A token used to make a best-effort attempt at canceling a request.
    ///   - dispatchQueue: A dispatch queue on which to call the completion handler. Defaults to `DispatchQueue.main`.
    ///   - context: A `PipelineContext` object to associate with the request.
    internal init(
        top: Int32? = nil,
        language: String? = nil,
        categoryFilter: [Int32]? = nil,
        extendedPostalCodesFor: [SearchIndexes]? = nil,
        idxSet: [SearchIndexes]? = nil,
        localizedMapView: LocalizedMapView? = nil,
        operatingHours: OperatingHoursRange? = nil,
        clientRequestId: String? = nil,
        cancellationToken: CancellationToken? = nil,
        dispatchQueue: DispatchQueue? = nil,
        context: PipelineContext? = nil
    ) {
        self.top = top
        self.language = language
        self.categoryFilter = categoryFilter
        self.extendedPostalCodesFor = extendedPostalCodesFor
        self.idxSet = idxSet
        self.localizedMapView = localizedMapView
        self.operatingHours = operatingHours
        self.clientRequestId = clientRequestId
        self.cancellationToken = cancellationToken
        self.dispatchQueue = dispatchQueue
        self.context = context
    }
}
