import SwiftUI

struct Screen_2_1: View {
    let images = ["vinyl", "yeat"]
    
    var body: some View {
        VStack {
            HStack {
                Image("back")
                Spacer()
                Image("Cart")
                Image("More")
                    .padding(.trailing, 4)
            }
            
            TabView {
                ForEach(images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .onAppear() {
                setupAppearance()
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Yeat Lyfё Vinyl")
                        .font(.system(size: 20, weight: .regular, design: .default))
                    HStack {
                        Text("40000 ₽")
                            .font(.system(size: 20, weight: .medium, design: .default))
                        Text("1000000 ₽")
                            .font(.system(size: 16, weight: .regular, design: .default))
                            .foregroundColor(Color(red: 129/255, green: 140/255, blue: 153/255))
                            .strikethrough()
                            .padding(.top, 4)
                    }
                }
                .padding(.leading, 12)
                Spacer()
                Image("bookmark")
            }
            Divider()
                .padding(.horizontal, 10)
                .foregroundColor(Color(red: 129/255, green: 140/255, blue: 153/255))
            VStack(alignment: .leading) {
                Text("Доставка")
                    .font(.system(size: 16, weight: .regular, design: .default))
                Text("Доставим 6 августа, Санкт-Петербург — 140 ₽.")
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .foregroundColor(Color(red: 129/255, green: 140/255, blue: 153/255))
                Text("Бесплатная доставка от 15 000 ₽.")
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .foregroundColor(Color(red: 129/255, green: 140/255, blue: 153/255))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.leading, 12)
            
            Spacer()
            
            Button(action: {
            }) {
                Text("Добавить в корзину")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 0.94, height: 44)
                    .background(Color(red: 38/255, green: 136/255, blue: 235/255))
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Button(action: {
            }) {
                Text("Написать")
                    .font(.system(size: 17, weight: .medium, design: .default))
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 0.94, height: 44)
                    .background(Color(red: 242/255, green: 243/255, blue: 245/255))
                    .foregroundColor(Color(red: 38/255, green: 136/255, blue: 235/255))
                    .cornerRadius(10)
            }.padding(.top, 4)
        }
    }
}

func setupAppearance() {
    UIPageControl.appearance().currentPageIndicatorTintColor = .gray
    UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.2)
}

//#Preview {
//    Screen_2_1()
//}
