//
//  DashboardModel.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 09/07/2023.
//

import Foundation

// API Info
/*
 url: https://api.inopenapp.com/api/v1/dashboardNew

 token: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI

 JSON Response:

 {
     "status": true,
     "statusCode": 200,
     "message": "success",
     "support_whatsapp_number": "8297368106",
     "extra_income": 59.9,
     "total_links": 178,
     "total_clicks": 1141,
     "today_clicks": 1,
     "top_source": "Direct",
     "top_location": "Surat",
     "startTime": "17:00",
     "links_created_today": 0,
     "applied_campaign": 0,
     "data": {
         "recent_links": [
             {
                 "url_id": 146150,
                 "web_link": "https://inopenapp.com/4o5qk",
                 "smart_link": "inopenapp.com/4o5qk",
                 "title": "651   Flats for Rent in Kormangla Bangalore, Bangalore Karnataka Without Brokerage - NoBroker Rental Properties in Kormangla Bangalore Karnataka Without Brokerage",
                 "total_clicks": 94,
                 "original_image": "https://assets.nobroker.in/nb-new/public/List-Page/ogImage.png",
                 "thumbnail": null,
                 "times_ago": "3 month ago",
                 "created_at": "2023-03-15T07:33:50.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": null,
                 "url_suffix": "4o5qk",
                 "app": "nobroker"
             },
             {
                 "url_id": 146110,
                 "web_link": "https://inopenapp.com/estt3",
                 "smart_link": "inopenapp.com/estt3",
                 "title": "Dailyhunt",
                 "total_clicks": 46,
                 "original_image": "https://m.dailyhunt.in/assets/img/apple-touch-icon-72x72.png?mode=pwa&ver=2.0.76",
                 "thumbnail": null,
                 "times_ago": "4 month ago",
                 "created_at": "2023-03-09T08:00:05.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": null,
                 "url_suffix": "estt3",
                 "app": "dailyhunt"
             },
             {
                 "url_id": 146061,
                 "web_link": "https://inopenapp.com/7113t",
                 "smart_link": "inopenapp.com/7113t",
                 "title": "MSI Katana GF66 Thin, Intel 12th Gen. i5-12450H, 40CM FHD 144Hz Gaming Laptop (16GB/512GB NVMe SSD/Windows 11 Home/Nvidia RTX3050Ti 4GB GDDR6/Black/2.25Kg), 12UD-640IN : Amazon.in: Computers & Accessories",
                 "total_clicks": 22,
                 "original_image": "https://m.media-amazon.com/images/I/81c+XOq0b+L._SY450_.jpg",
                 "thumbnail": null,
                 "times_ago": "4 month ago",
                 "created_at": "2023-02-23T11:45:54.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": null,
                 "url_suffix": "7113t",
                 "app": "amazon"
             },
             {
                 "url_id": 145873,
                 "web_link": "https://inopenapp.com/juixo",
                 "smart_link": "inopenapp.com/juixo",
                 "title": "Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!",
                 "total_clicks": 17,
                 "original_image": "https://www.flipkart.com/apple-touch-icon-57x57.png",
                 "thumbnail": null,
                 "times_ago": "4 month ago",
                 "created_at": "2023-02-20T04:59:00.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": null,
                 "url_suffix": "juixo",
                 "app": "flipkart"
             },
             {
                 "url_id": 144236,
                 "web_link": "https://inopenapp.com/h2hok",
                 "smart_link": "inopenapp.com/h2hok",
                 "title": "Programming Jokes & MeMes | The gods have spoken",
                 "total_clicks": 18,
                 "original_image": "https://scontent-iad3-2.xx.fbcdn.net/v/t39.30808-6/325385014_1393046418172272_8557035725717444936_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=7fc0be&_nc_ohc=YYNdHpdCbiAAX9iHO5V&_nc_ht=scontent-iad3-2.xx&oh=00_AfCk2FYoD4WCCp3bqnjBxcxhQ8MEAxCw9xyInnM5sBO0VA&oe=63CD146D",
                 "thumbnail": null,
                 "times_ago": "5 month ago",
                 "created_at": "2023-01-18T05:40:39.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": null,
                 "url_suffix": "h2hok",
                 "app": "facebook"
             }
         ],
         "top_links": [
             {
                 "url_id": 98953,
                 "web_link": "https://boyceavenue.inopenapp.com/boyce-avenue",
                 "smart_link": "boyceavenue.inopenapp.com/boyce-avenue",
                 "title": "Can't Help Falling In Love - Elvis Presley (Boyce Avenue acoustic cover) on Spotify & Apple",
                 "total_clicks": 289,
                 "original_image": "https://i.ytimg.com/vi/G0WTFfZqjz0/maxresdefault.jpg",
                 "thumbnail": null,
                 "times_ago": "1 yr ago",
                 "created_at": "2022-01-12T13:57:49.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": "boyceavenue",
                 "url_suffix": "boyce-avenue",
                 "app": "youtube"
             },
             {
                 "url_id": 140627,
                 "web_link": "https://amazon.inopenapp.com/b01n5qh183",
                 "smart_link": "amazon.inopenapp.com/b01n5qh183",
                 "title": "Match Women's Long Sleeve Flannel Plaid Shirt at Amazon Women’s Clothing store",
                 "total_clicks": 100,
                 "original_image": "https://m.media-amazon.com/images/I/51rE6aQt2fL._AC_.jpg",
                 "thumbnail": null,
                 "times_ago": "9 month ago",
                 "created_at": "2022-09-23T19:59:49.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": "amazon",
                 "url_suffix": "b01n5qh183",
                 "app": "amazon"
             },
             {
                 "url_id": 146150,
                 "web_link": "https://inopenapp.com/4o5qk",
                 "smart_link": "inopenapp.com/4o5qk",
                 "title": "651   Flats for Rent in Kormangla Bangalore, Bangalore Karnataka Without Brokerage - NoBroker Rental Properties in Kormangla Bangalore Karnataka Without Brokerage",
                 "total_clicks": 94,
                 "original_image": "https://assets.nobroker.in/nb-new/public/List-Page/ogImage.png",
                 "thumbnail": null,
                 "times_ago": "3 month ago",
                 "created_at": "2023-03-15T07:33:50.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": null,
                 "url_suffix": "4o5qk",
                 "app": "nobroker"
             },
             {
                 "url_id": 98954,
                 "web_link": "https://inopenapp.com/facebook/fbd42",
                 "smart_link": "inopenapp.com/facebook/fbd42",
                 "title": "Website Designing & Development",
                 "total_clicks": 72,
                 "original_image": "https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=1230016080686733",
                 "thumbnail": null,
                 "times_ago": "1 yr ago",
                 "created_at": "2022-01-12T14:01:32.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": null,
                 "url_suffix": "facebook/fbd42",
                 "app": "facebook"
             },
             {
                 "url_id": 81169,
                 "web_link": "https://dream.inopenapp.com/vid",
                 "smart_link": "dream.inopenapp.com/vid",
                 "title": "YouTube",
                 "total_clicks": 70,
                 "original_image": "https://www.youtube.com/img/desktop/yt_1200.png",
                 "thumbnail": null,
                 "times_ago": "1 yr ago",
                 "created_at": "2021-12-17T10:36:05.000Z",
                 "domain_id": "inopenapp.com/",
                 "url_prefix": "dream",
                 "url_suffix": "vid",
                 "app": "youtube"
             }
         ],
         "overall_url_chart": {
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
             "2023-07-07": 1
         }
     }
 }

 */


struct Dashboard: Codable {
    let status: Bool?
    let statusCode: Int?
    let message, supportWhatsappNumber: String?
    let extraIncome: Double?
    let totalLinks, totalClicks, todayClicks: Int?
    let topSource, topLocation, startTime: String?
    let linksCreatedToday, appliedCampaign: Int?
    let data: DataClass?

    enum CodingKeys: String, CodingKey {
        case status, statusCode, message
        case supportWhatsappNumber = "support_whatsapp_number"
        case extraIncome = "extra_income"
        case totalLinks = "total_links"
        case totalClicks = "total_clicks"
        case todayClicks = "today_clicks"
        case topSource = "top_source"
        case topLocation = "top_location"
        case startTime
        case linksCreatedToday = "links_created_today"
        case appliedCampaign = "applied_campaign"
        case data
    }
}

// MARK: - DataClass

struct DataClass: Codable {
    let recentLinks, topLinks: [Link]?
    let overallurlChart: [String: Int]?

    enum CodingKeys: String, CodingKey {
        case recentLinks = "recent_links"
        case topLinks = "top_links"
        case overallurlChart = "overall_url_chart"
    }
}

// MARK: - Linlk

struct Link:Identifiable, Codable {
    let id: Int?
    let webLink: String?
    let smartLink, title: String?
    let totalClicks: Int?
    let originalImage: String?
    let timesAgo, createdAt: String?
    let urlPrefix: String?
    let urlSuffix, app: String?

    enum CodingKeys: String, CodingKey {
        case id = "url_id"
        case webLink = "web_link"
        case smartLink = "smart_link"
        case title
        case totalClicks = "total_clicks"
        case originalImage = "original_image"
        case timesAgo = "times_ago"
        case createdAt = "created_at"
        case urlPrefix = "url_prefix"
        case urlSuffix = "url_suffix"
        case app
    }
}
