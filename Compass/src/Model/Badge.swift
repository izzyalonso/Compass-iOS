//
//  Badge.swift
//  Compass
//
//  Created by Ismael Alonso on 6/30/16.
//  Copyright © 2016 Tennessee Data Commons. All rights reserved.
//

import ObjectMapper


class Badge: TDCBase{
    private var name: String = "";
    private var description: String = "";
    private var imageUrl: String = "";
    private var userCount: Int = -1;
    
    
    required init?(_ map: Map){
        super.init(map);
    }
    
    override func mapping(map: Map){
        super.mapping(map);
        name <- map["name"];
        description <- map["description"];
        imageUrl <- map["image"];
        userCount <- map["users_count"];
    }
    
    func getName() -> String{
        return name;
    }
    
    func getDescription() -> String{
        return description;
    }
    
    func getImageUrl() -> String{
        return imageUrl;
    }
    
    func getUserCount() -> Int{
        return userCount;
    }
}