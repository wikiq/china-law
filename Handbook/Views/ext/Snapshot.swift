import SwiftUI

extension View {
    
    func snapshot() -> UIImage {
        let rootView = self
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            .frame(width: UIScreen.screenWidth)
            .ignoresSafeArea()
            .fixedSize(horizontal: true, vertical: true)
        
        print(rootView)
        let controller = UIHostingController(rootView: rootView)

        let targetSize = controller.view.intrinsicContentSize
        
        controller.view.bounds = CGRect(origin: .zero, size: targetSize)
        controller.view.backgroundColor = .clear

        let renderer = UIGraphicsImageRenderer(size: targetSize)

        return renderer.image { _ in
            controller.view.drawHierarchy(in: controller.view.bounds, afterScreenUpdates: true)
        }
    }
    
    func snapshotWithQRCode() -> UIImage {
        return VStack {
            self
            HStack {
                Spacer()
                Image(uiImage: generateQRCode(from: AppStoreLink))
                    .interpolation(.none)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 100)
            }
            Spacer()
        }.snapshot()
    }
}
