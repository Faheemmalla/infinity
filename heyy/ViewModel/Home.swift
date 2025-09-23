import SwiftUI

struct Home: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    @StateObject var ModelData = HomeViewModel()
    @State var width = ((UIApplication.shared.connectedScenes.first as? UIWindowScene)?
        .screen.bounds.width ?? 0 - 45) / 2
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                
                ForEach(ModelData.items, id: \.album_name) { album in
                    NavigationLink(destination: destinationView(for: album)) {
                        CustomView(columns: $columns) {
                            Image(album.album_cover)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: width, height: width)
                                .cornerRadius(15)
                        } detail: {
                            VStack(alignment: .leading, spacing: 10) {
                                Text(album.album_name)
                                    .fontWeight(.heavy)
                                
                                Text(album.album_author)
                                    .font(.caption)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
        // 🚫 Removed toolbar toggle since only grid view remains
    }
    
    @ViewBuilder
    func destinationView(for album: Album) -> some View {
        switch album.album_name {
        case "Midnight Vibes":
            Topic1View()
        case "Ocean Dreams":
            Topic2View()
        case "City Lights":
            Topic3View()
        case "Golden Hour":
            Topic4View()
        case "Skyline Beats":
            Topic5View()
        case "Retro Nights":
            RetroNightsPage()
        case "Chill Zone":
            ChillZonePage()
        case "Electric Pulse":
            ElectricPulsePage()
        case "Lost in Space":
            LostInSpacePage()
        case "Morning Breeze":
            MorningBreezePage()
        case "Desert Storm":
            DesertStormPage()
        case "Rainy Moods":
            RainyMoodsPage()
        case "Wanderlust":
            WanderlustPage()
        case "Silent Echoes":
            SilentEchoesPage()
        case "Neon Nights":
            NeonNightsPage()
        default:
            Text("Coming Soon 🚀")
        }
    }
}
