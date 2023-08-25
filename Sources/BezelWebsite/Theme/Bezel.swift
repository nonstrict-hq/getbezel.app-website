//
//  File.swift
//  
//
//  Created by Mathijs Kadijk on 25/01/2023.
//

import Foundation
import Publish
import Plot

extension Theme where Site == BezelWebsite {
    static var bezel: Self {
        Theme(
            htmlFactory: BezelWebsiteHTMLFactory(),
            resourcePaths: []
        )
    }

    private struct BezelWebsiteHTMLFactory: HTMLFactory {
        func makeIndexHTML(for index: Publish.Index, context: Publish.PublishingContext<BezelWebsite>) throws -> Plot.HTML {
            var indexWithImage = index
            indexWithImage.imagePath = context.site.imagePath
            return HTML(
                .head(for: indexWithImage, on: context.site),
                .body(
                    .attribute(named: "class", value: "bg-gray-900"),
                    .component(Header()),
                    .component(HeroAlt()),
                    .component(Footer())
                )
            )
        }

        func makeSectionHTML(for section: Publish.Section<BezelWebsite>, context: Publish.PublishingContext<BezelWebsite>) throws -> Plot.HTML {
            HTML(.body(.text("TODO")))
        }
        
        func makeItemHTML(for item: Publish.Item<BezelWebsite>, context: Publish.PublishingContext<BezelWebsite>) throws -> Plot.HTML {
            HTML(.body(.text("TODO")))
        }
        
        func makePageHTML(for page: Publish.Page, context: Publish.PublishingContext<BezelWebsite>) throws -> Plot.HTML {
            var pageWithImage = page
            pageWithImage.imagePath = context.site.imagePath
            return HTML(
                .head(for: pageWithImage, on: context.site),
                .body(
                    .attribute(named: "class", value: "bg-gray-900"),
                    .component(Header()),
                    .component(Pricing()),
                    .component(Footer())
                )
            )
        }
        
        func makeTagListHTML(for page: Publish.TagListPage, context: Publish.PublishingContext<BezelWebsite>) throws -> Plot.HTML? {
            HTML(.body(.text("TODO")))
        }
        
        func makeTagDetailsHTML(for page: Publish.TagDetailsPage, context: Publish.PublishingContext<BezelWebsite>) throws -> Plot.HTML? {
            HTML(.body(.text("TODO")))
        }
    }
}
