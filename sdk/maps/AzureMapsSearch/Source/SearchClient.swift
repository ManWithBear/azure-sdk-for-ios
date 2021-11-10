
// --------------------------------------------------------------------------
//
// Copyright (c) Microsoft Corporation. All rights reserved.
//
// The MIT License (MIT)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the ""Software""), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED *AS IS*, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.
//
// --------------------------------------------------------------------------

import AzureCore
import Foundation

public class SearchClient {
    private let service: Search
    
    public init(
        endpoint: URL? = nil,
        credential: TokenCredential,
        withOptions options: SearchClientOptions
    ) throws {
        self.service = try SearchClientInternal(
            url: nil,
            authPolicy: SharedTokenCredentialPolicy(credential: credential, scopes: []),
            withOptions: options
        ).search
    }
    
    public func fuzzySearch(
        query: String,
        withOptions options: FuzzySearchOptions? = nil,
        completionHandler: @escaping HTTPResultHandler<SearchAddressResult>
    ) {
        self.service.fuzzySearch(format: .json, query: query, withOptions: options, completionHandler: completionHandler)
    }
    
    
    
    public func fuzzy(
        searchBatch: BatchRequest,
        withOptions options: FuzzySearchBatchOptions? = nil
    ) -> LROPoller<SearchAddressBatchProcessResult, FuzzySearchBatchOptions> {
        return LROPoller(client: self.service.client, withOptions: options) { (completionHandler: @escaping HTTPResultHandler<SearchAddressBatchProcessResult?>) in
            self.service.fuzzy(searchBatch: searchBatch, format: .json, withOptions: options, completionHandler: completionHandler)
        }
    }

    /// **Reverse Geocode to an Address**
    /// **Applies to**: S0 and S1 pricing tiers.
    /// There may be times when you need to translate a  coordinate (example: 37.786505, -122.3862) into a human understandable street address. Most often  this is needed in tracking applications where you  receive a GPS feed from the device or asset and  wish to know what address where the coordinate is  located. This endpoint will return address  information for a given coordinate.
    /// - Parameters:
    ///    - query : The applicable query specified as a comma separated string composed by latitude followed by longitude e.g. "47.641268,-122.125679".
    ///    - options: A list of options for the operation
    ///    - completionHandler: A completion handler that receives a status code on
    ///     success.
    public func reverseSearchAddress(
        query: [Double],
        withOptions options: ReverseSearchAddressOptions? = nil,
        completionHandler: @escaping HTTPResultHandler<ReverseSearchAddressResult>
    ) {
        self.service.reverseSearchAddress(format: .json, query: query, withOptions: options, completionHandler: completionHandler)
    }

    /// **Nearby Search**
    /// **Applies to**: S0 and S1 pricing tiers.
    /// If you have a use case for only retrieving POI results around a specific location, the nearby search method may be the right choice. This endpoint will only return POI results, and does not take in a search query parameter.
    /// - Parameters:
    ///    - lat : Latitude where results should be biased. E.g. 37.337.
    ///    - lon : Longitude where results should be biased. E.g. -121.89.
    ///    - options: A list of options for the operation
    ///    - completionHandler: A completion handler that receives a status code on
    ///     success.
    public func searchNearbyPointOfInterest(
        lat: Double,
        lon: Double,
        withOptions options: SearchNearbyPointOfInterestOptions? = nil,
        completionHandler: @escaping HTTPResultHandler<SearchAddressResult>
    ) {
        self.service.searchNearbyPointOfInterest(format: .json, lat: lat, lon: lon, withOptions: options, completionHandler: completionHandler)
    }
}
