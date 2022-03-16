import Foundation
import SwiftUI

struct GenerateImageView : View {
    
    var law: LawContent
    var content: String
    
    var snapview : some View {
        VStack {
            ForEach(law.Titles, id:\.self) { txt in
                LawContentTitleView(text: txt)
            }
            Divider()
            LawContentLineView(text: content, searchText: Binding.constant(""))
        }
        .background(Color.white)
    }

    var body: some View {
        VStack {
            snapview
            Button(action: {
                UIImageWriteToSavedPhotosAlbum(snapview.snapshotWithQRCode(), nil, nil, nil)
            }) {
                Text("生成")
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }.padding()
    }
    
}
