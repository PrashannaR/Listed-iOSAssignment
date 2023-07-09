//
//  PreviewProvider.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 09/07/2023.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview{
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() { }
    
    let vm = HomeViewModel()
    
    let chartData : [String : Int] = [
        "2023-06-07": 3,
        "2023-06-08": 5,
        "2023-06-09": 11,
        "2023-06-10": 4,
        "2023-06-11": 9,
        "2023-06-12": 4,
        "2023-06-13": 20,
        "2023-06-14": 2,
        "2023-06-15": 7,
        "2023-06-16": 24,
        "2023-06-17": 2,
        "2023-06-18": 4,
        "2023-06-19": 16,
        "2023-06-20": 11,
        "2023-06-21": 29,
        "2023-06-22": 6,
        "2023-06-23": 3,
        "2023-06-24": 8,
        "2023-06-25": 7,
        "2023-06-26": 5,
        "2023-06-27": 2,
        "2023-06-28": 1,
        "2023-06-29": 13,
        "2023-06-30": 26,
        "2023-07-01": 1,
        "2023-07-02": 4,
        "2023-07-03": 2,
        "2023-07-04": 3,
        "2023-07-05": 61,
        "2023-07-06": 3,
        "2023-07-07": 1,
    ]
    
    let link = Link(id: 146150, webLink: "https://inopenapp.com/4o5qk", smartLink: "inopenapp.com/4o5qk", title: "651   Flats for Rent in Kormangla Bangalore, Bangalore Karnataka Without Brokerage - NoBroker Rental Properties in Kormangla Bangalore Karnataka Without Brokerage", totalClicks: 94, originalImage: "https://assets.nobroker.in/nb-new/public/List-Page/ogImage.png", timesAgo: "3 month ago", createdAt: "2023-03-15T07:33:50.000Z", urlPrefix: "", urlSuffix: "4o5qk", app: "nobroker")
    
    let links : [Link] = [
        Link(id: 146150, webLink: "https://inopenapp.com/4o5qk", smartLink: "inopenapp.com/4o5qk", title: "651   Flats for Rent in Kormangla Bangalore, Bangalore Karnataka Without Brokerage - NoBroker Rental Properties in Kormangla Bangalore Karnataka Without Brokerage", totalClicks: 94, originalImage: "https://assets.nobroker.in/nb-new/public/List-Page/ogImage.png", timesAgo: "3 month ago", createdAt: "2023-03-15T07:33:50.000Z", urlPrefix: "", urlSuffix: "4o5qk", app: "nobroker")
    ]
    
    let dashboard = Dashboard(status: true, statusCode: 200, message: "success", supportWhatsappNumber: "8297368106", extraIncome: 59.9, totalLinks: 178, totalClicks: 1141, todayClicks: 1, topSource: "Direct", topLocation: "Surat", startTime: "17:00", linksCreatedToday: 0, appliedCampaign: 0, data: DataClass(
        recentLinks: [
            Link(id: 146150, webLink: "https://inopenapp.com/4o5qk", smartLink: "inopenapp.com/4o5qk", title: "651   Flats for Rent in Kormangla Bangalore, Bangalore Karnataka Without Brokerage - NoBroker Rental Properties in Kormangla Bangalore Karnataka Without Brokerage", totalClicks: 94, originalImage: "https://assets.nobroker.in/nb-new/public/List-Page/ogImage.png", timesAgo: "3 month ago", createdAt: "2023-03-15T07:33:50.000Z", urlPrefix: "", urlSuffix: "4o5qk", app: "nobroker"),
        ],
        topLinks: [
            Link(id: 146150, webLink: "https://inopenapp.com/4o5qk", smartLink: "inopenapp.com/4o5qk", title: "651   Flats for Rent in Kormangla Bangalore, Bangalore Karnataka Without Brokerage - NoBroker Rental Properties in Kormangla Bangalore Karnataka Without Brokerage", totalClicks: 94, originalImage: "https://assets.nobroker.in/nb-new/public/List-Page/ogImage.png", timesAgo: "3 month ago", createdAt: "2023-03-15T07:33:50.000Z", urlPrefix: "", urlSuffix: "4o5qk", app: "nobroker"),
        ],
        overallurlChart: [
            "2023-06-07": 3,
            "2023-06-08": 5,
            "2023-06-09": 11,
            "2023-06-10": 4,
            "2023-06-11": 9,
            "2023-06-12": 4,
            "2023-06-13": 20,
            "2023-06-14": 2,
            "2023-06-15": 7,
            "2023-06-16": 24,
            "2023-06-17": 2,
            "2023-06-18": 4,
            "2023-06-19": 16,
            "2023-06-20": 11,
            "2023-06-21": 29,
            "2023-06-22": 6,
            "2023-06-23": 3,
            "2023-06-24": 8,
            "2023-06-25": 7,
            "2023-06-26": 5,
            "2023-06-27": 2,
            "2023-06-28": 1,
            "2023-06-29": 13,
            "2023-06-30": 26,
            "2023-07-01": 1,
            "2023-07-02": 4,
            "2023-07-03": 2,
            "2023-07-04": 3,
            "2023-07-05": 61,
            "2023-07-06": 3,
            "2023-07-07": 1,
        ]))
    
    
}
