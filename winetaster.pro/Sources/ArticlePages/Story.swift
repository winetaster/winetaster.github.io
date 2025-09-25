import Foundation
import Ignite

struct Story: ArticlePage {
	var body: some HTML {
		Text(article.title)
			.font(.title1)

		if let image = article.image {
			Image(image, description: article.imageDescription)
				.resizable()
				.cornerRadius(20)
				.frame(maxHeight: 300)
		}

		Text(article.text)
	}
}
