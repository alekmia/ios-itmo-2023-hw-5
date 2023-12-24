import SwiftUI

struct Screen_1_1: View {
    @State private var url: String = "vk.com"

    var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("QR-код")
                    .font(.system(size: 21, weight: .bold, design: .default))
                TextField("vk.com", text: $url)
                    .frame(height: 44)
                    .padding(.horizontal, 12)
                    .background(Color(red: 242/255, green: 243/255, blue: 245/255))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.12), lineWidth: 0.5)
                    )
                    .padding(.bottom, 44)
                Image("Group")
                
            }
            .padding(.horizontal, 20)
            .frame(minHeight: 0, maxHeight: .infinity)
            
            HStack {
                Button(action: {
                }) {
                    Text("PNG")
                        .font(.system(size: 17, weight: .bold, design: .default))
                        .padding()
                        .frame(width: UIScreen.main.bounds.width * 0.46, height: 44)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: {
                }) {
                    Text("SVG")
                        .font(.system(size: 17, weight: .bold, design: .default))
                        .padding()
                        .frame(width: UIScreen.main.bounds.width * 0.46, height: 44)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
            
    }

}

//#Preview {
//    Screen_1_1()
//}
