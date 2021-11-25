//
//  Representative.swift
//  Vote Know How
//
//  Created by Dominick Hera on 11/7/21.
//

import Foundation

class Representative: NSObject, Decodable
{
    var id: String
    var title: String
    var shortTitle: String
    var api_uri: URL?
    var firstName: String
    var middleName: String?
    var lastName: String
    var suffix: String?
    var dateOfBirth: Date?
    var gender: String
    var party: String
    var leadershipRole: String?
    var twitterAccount: String?
    var facebookAccount: String?
    var youtubeAccount: String?
    var govTrackID: String?
    var cspanID: String?
    var voteSmartID: String?
    var icpsrID: String?
    var crpID: String?
    var googleEntityID: String?
    var fecCandidateID: String?
    var url: URL?
    var rssURL: URL?
    var contactForm: URL?
    var inOffice: Bool
    var cookPvi: String?
    var dwNominate: Float?
    var idealPoint: Float?
    var seniority: Int
    var totalVotes: Int
    var missedVotes: Int
    var totalPresent: Int
    var lastUpdated: Date?
    var ocdID: String?
    var office: String?
    var phone: String?
    var fax: String?
    var state: String
    var missedVotesPercent: Float?
    var votesWithPartyPercent: Float?
    var votesAgainstPartyPercent: Float?
    
    enum CodingKeys: String, CodingKey
    {
        case id
        case title
        case shortTitle = "short_title"
        case api_uri
        case firstName = "first_name"
        case middleName = "middle_name"
        case lastName = "last_name"
        case suffix
        case dateOfBirth = "date_of_birth"
        case gender
        case party
        case leadershipRole = "leadership_role"
        case twitterAccount = "twitter_account"
        case facebookAccount = "facebook_account"
        case youtubeAccount = "youtube_account"
        case govTrackID = "govtrack_id"
        case cspanID = "cspan_id"
        case voteSmartID = "votesmart_id"
        case icpsrID = "icpsr_id"
        case crpID = "crp_id"
        case googleEntityID = "google_entity_id"
        case fecCandidateID = "fec_candidate_id"
        case url
        case rssURL = "rss_url"
        case contactForm = "contact_form"
        case inOffice = "in_office"
        case cookPvi = "cook_pvi"
        case dwNominate = "dw_nominate"
        case idealPoint = "ideal_point"
        case seniority
        case totalVotes = "total_votes"
        case missedVotes = "missed_votes"
        case totalPresent = "total_present"
        case lastUpdated = "last_updated"
        case ocdID = "ocd_id"
        case office
        case phone
        case fax
        case state
        case missedVotesPercent = "missed_votes_pct"
        case votesWithPartyPercent = "votes_with_party_pct"
        case votesAgainstPartyPercent = "votes_against_party_pct"
    }
        
    required init(from decoder: Decoder) throws
    {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(String.self, forKey: .id)
        title = try values.decode(String.self, forKey: .title)
        shortTitle = try values.decode(String.self, forKey: .shortTitle)
        api_uri = try values.decodeIfPresent(URL.self, forKey: .api_uri)
        firstName = try values.decode(String.self, forKey: .firstName)
        middleName = try values.decodeIfPresent(String.self, forKey: .middleName)
        lastName = try values.decode(String.self, forKey: .lastName)
        suffix = try values.decodeIfPresent(String.self, forKey: .suffix)
        gender = try values.decode(String.self, forKey: .gender)
        party = try values.decode(String.self, forKey: .party)
        leadershipRole = try values.decodeIfPresent(String.self, forKey: .leadershipRole)
        twitterAccount = try values.decodeIfPresent(String.self, forKey: .twitterAccount)
        facebookAccount = try values.decodeIfPresent(String.self, forKey: .facebookAccount)
        youtubeAccount = try values.decodeIfPresent(String.self, forKey: .youtubeAccount)
        govTrackID = try values.decodeIfPresent(String.self, forKey: .govTrackID)
        cspanID = try values.decodeIfPresent(String.self, forKey: .cspanID)
        voteSmartID = try values.decodeIfPresent(String.self, forKey: .voteSmartID)
        icpsrID = try values.decodeIfPresent(String.self, forKey: .icpsrID)
        crpID = try values.decodeIfPresent(String.self, forKey: .crpID)
        googleEntityID = try values.decodeIfPresent(String.self, forKey: .googleEntityID)
        fecCandidateID = try values.decodeIfPresent(String.self, forKey: .fecCandidateID)
        url = try values.decodeIfPresent(URL.self, forKey: .url)
        rssURL = try values.decodeIfPresent(URL.self, forKey: .rssURL)
        contactForm = try values.decodeIfPresent(URL.self, forKey: .contactForm)
        inOffice = try values.decode(Bool.self, forKey: .inOffice)
        cookPvi = try values.decodeIfPresent(String.self, forKey: .cookPvi)
        dwNominate = try values.decodeIfPresent(Float.self, forKey: .dwNominate)
        idealPoint = try values.decodeIfPresent(Float.self, forKey: .idealPoint)
        seniority = try values.decode(Int.self, forKey: .seniority)
        totalVotes = try values.decode(Int.self, forKey: .totalVotes)
        missedVotes = try values.decode(Int.self, forKey: .missedVotes)
        totalPresent = try values.decode(Int.self, forKey: .totalPresent)
        ocdID = try values.decodeIfPresent(String.self, forKey: .ocdID)
        office = try values.decodeIfPresent(String.self, forKey: .office)
        phone = try values.decodeIfPresent(String.self, forKey: .phone)
        fax = try values.decodeIfPresent(String.self, forKey: .fax)
        state = try values.decode(String.self, forKey: .state)
        missedVotesPercent = try values.decodeIfPresent(Float.self, forKey: .missedVotesPercent)
        votesWithPartyPercent = try values.decodeIfPresent(Float.self, forKey: .votesWithPartyPercent)
        votesAgainstPartyPercent = try values.decodeIfPresent(Float.self, forKey: .votesAgainstPartyPercent)
    }

//    var dateOfBirth: Date?
//    var lastUpdated: Date?
}
