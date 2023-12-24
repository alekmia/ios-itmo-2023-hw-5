import SwiftUI

struct Screen_1_2: View {

    var body: some View {
        ZStack {
            Color(red: 242/255, green: 243/255, blue: 245/255)
            
            VStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.all)
                Spacer()
            }
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(height: 170)
                        .padding(.top, 110)
                    VStack(alignment: .leading, spacing: 10) {
                        Image("Avatar")
                            .padding(.leading, 12)
                            .padding(.top, 40)
                        Text("VK Tech")
                            .font(.system(size: 21, weight: .semibold, design: .default))
                            .foregroundColor(Color.black)
                            .padding(.leading, 12)
                        (Text("VK Tech — проект экосистемы VK, в основе решений которого многолетний опыт развития интернет-сервисов и технологий на базе от компании...")
                            .foregroundColor(Color.gray) + Text(" Ещё")
                            .foregroundColor(Color.blue))
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .padding(.horizontal, 12)
                        
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                }
                Spacer()
            }
        }
    }
}

//#Preview {
//    Screen_1_2()
//}
