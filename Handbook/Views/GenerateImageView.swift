import Foundation
import SwiftUI

struct GenerateImageView : View {
    
    var law: LawContent
    var content: String
    
    @Binding var searchText: String
    
    var contentView : some View {
        VStack(alignment: .leading){
            if let title = law.Titles.first {
                LawContentTitleView(text: title)
            }
            Divider()
            LawContentLineView(text: content, searchText: $searchText)
        }.padding(.top, 8)
    }

    var body: some View {
        VStack {
            contentView
            Button(action: {
                UIImageWriteToSavedPhotosAlbum(contentView.snapshotWithQRCode(), nil, nil, nil)
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
