//
//  BlogCategoryApiController.swift
//  
//
//  Created by Chad Rutherford on 7/10/20.
//

import Fluent
import Vapor

struct BlogCategoryApiController: ListContentController, GetContentController, CreateContentController, UpdateContentController {
	typealias Model = BlogCategoryModel
}
