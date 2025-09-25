import Foundation
import Ignite

struct BlogPage: ArticlePage {
	@Environment(\.articles) var articles
	var body: some HTML {
		Text(article.title)
			.font(.title1)
		Grid(alignment: .leading) {
			if let image = article.image {
				Image(image, description: article.imageDescription)
					.resizable()
					.cornerRadius(20)
					.width(12)
			}
			Text(article.text).width(8)
		}
		Link("Back", target: "/blog")
	}
}
