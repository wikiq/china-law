import SwiftUI

extension View {
    
    func snapView() -> some View {
        self
            .background(Color.white // any non-transparent background
              .shadow(radius: 4)
            )
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            .frame(width: UIScreen.screenWidth)
            .ignoresSafeArea()
            .fixedSize(horizontal: true, vertical: true)
    }

    func snapshot() -> UIImage {
        let controller = UIHostingController(rootView: self.snapView())

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
                VStack {
                    Spacer()
                    Text("扫描下载 *中国法律快查手册* APP")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
                Image(uiImage: generateQRCode(from: AppStoreLink))
                    .interpolation(.none)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
                    .padding(.trailing, 8)
            }
            Spacer()
        }.snapshot()
    }
}
