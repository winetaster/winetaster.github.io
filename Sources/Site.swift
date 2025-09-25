import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
			try await site.publish(buildDirectoryPath: "docs")
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "WineTaster 3"
    var titleSuffix = " – for iOS, macOS, and Vision Pro"
    var url = URL(static: "https://www.winetaster.pro")
    var builtInIconsEnabled = true

    var author = "Justin Purnell"

    var homePage = Home()
	var staticPages: [any StaticPage] {
		Privacy()
		About()
		Blog()
		Support()
	}
	
    var layout = MainLayout()
	
	var articlePages: [any ArticlePage] {
		Story()
		BlogPage()
	}
}
