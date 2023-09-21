import Foundation

class SaveRouter : PresenterToRouterSaveProtocol {
    static func createModule(ref: SaveViewController) {
        ref.savePresenterObject = SavePresenter()
        ref.savePresenterObject?.saveInterector = SaveInterector()
    }
}
