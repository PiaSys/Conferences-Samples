//
//  GraphManager.swift
//  PiaSysTechBitesGraphSDK
//
//  Created by Paolo Pialorsi on 30/12/21.
//

import Foundation
import MSGraphClientSDK
import MSGraphClientModels

class GraphManager {

    // Implement singleton pattern
    static let instance = GraphManager()

    private let client: MSHTTPClient?

    public var userTimeZone: String

    private init() {
        client = MSClientFactory.createHTTPClient(with: AuthenticationManager.instance)
        userTimeZone = "UTC"
    }

    public func getEvents(completion: @escaping([MSGraphEvent]?, Error?) -> Void) {
        // GET /me
        let eventsRequest = NSMutableURLRequest(url: URL(string: "\(MSGraphBaseURL)/me/events")!)
        let eventsDataTask = MSURLSessionDataTask(request: eventsRequest, client: self.client, completion: {
            (data: Data?, response: URLResponse?, graphError: Error?) in
            guard let eventsData = data, graphError == nil else {
                completion(nil, graphError)
                return
            }

            do {
                // Deserialize response as events collection
                let events = try MSCollection(data: eventsData)
                var eventArray: [MSGraphEvent] = []

                events.value.forEach({
                    (rawEvent: Any) in
                    // Convert JSON to a dictionary
                    guard let eventDict = rawEvent as? [String: Any] else {
                        return
                    }

                    // Deserialize event from the dictionary
                    let event = MSGraphEvent(dictionary: eventDict)!
                    eventArray.append(event)
                })

                completion(eventArray, nil)
            } catch {
                completion(nil, error)
            }
        })

        // Execute the request
        eventsDataTask?.execute()
    }
}
