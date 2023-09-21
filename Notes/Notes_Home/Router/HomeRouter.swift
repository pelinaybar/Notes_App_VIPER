import Foundation

class HomeRouter : PresenterToRouterHomeProtocol {
    static func createModule(ref: HomeViewController) {
        let presenter = HomePresenter()
        
        ref.homePresenterObject = presenter
        
        ref.homePresenterObject?.homeInterector = HomeInterector()
        ref.homePresenterObject?.homeView = ref
        
        ref.homePresenterObject?.homeInterector?.homePresenter = presenter
    }
}
