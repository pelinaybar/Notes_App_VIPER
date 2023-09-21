import Foundation

class DetailsRouter : PresenterToRouterDetailsProtocol {
    static func createModule(ref: DetailsViewController) {
        ref.detailsPresenterObject = DetailsPresenter()
        ref.detailsPresenterObject?.detailsInterector = DetailsInterector()
    }
}
