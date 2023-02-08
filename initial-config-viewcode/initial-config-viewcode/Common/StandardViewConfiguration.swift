import Foundation

protocol StandardViewConfiguration {
    func buildHierarchy()
    func setupConstraints()
    func configureViews()
}

extension StandardViewConfiguration {
    
    func configureViews() {}
    func applyViewCode() {
        buildHierarchy()
        setupConstraints()
        configureViews()
    }
}
