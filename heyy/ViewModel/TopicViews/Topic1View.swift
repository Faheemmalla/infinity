import SwiftUI

struct Topic1View: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                // 🔹 Image Section
                Image("SQUARELOGO")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)
                    .padding(.horizontal)
                VStack(alignment: .leading, spacing: 12) {
                    Text("Properties")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("A square is a regular quadrilateral with four equal sides and four right angles. It is a special case of both a rectangle and a rhombus.")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .lineSpacing(4)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color(.systemGray6), Color(.systemGray5)]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .shadow(color: .black.opacity(0.08), radius: 6, x: 0, y: 3)
                )
                .padding(.horizontal)
                VStack(alignment: .leading, spacing: 12) {
                    Text("Formula")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    VStack(spacing: 10) {
                        // Main Formula
                        Text("Area = a²")
                            .font(.system(size: 36, weight: .bold, design: .serif))
                            .foregroundColor(.blue)
                            .padding(.bottom, 4)
                        Text("Where:")
                            .font(.headline)
                            .foregroundColor(.primary)
                        VStack(alignment: .leading, spacing: 6) {
                            HStack(alignment: .top, spacing: 8) {
                                Text("• a")
                                    .font(.system(size: 18, weight: .semibold, design: .serif))
                                    .foregroundColor(.green)
                                Text("= Side length of the square")
                                    .font(.body)
                                    .foregroundColor(.secondary)
                            }
                            
                            HStack(alignment: .top, spacing: 8) {
                                Text("• Area")
                                    .font(.system(size: 18, weight: .semibold, design: .serif))
                                    .foregroundColor(.yellow)
                                Text("= Space enclosed within the square")
                                    .font(.body)
                                    .foregroundColor(.secondary)
                            }
                            
                            HStack(alignment: .top, spacing: 8) {
                                Text("• Perimeter")
                                    .font(.system(size: 18, weight: .semibold, design: .serif))
                                    .foregroundColor(.red)
                                Text("= 4 × a (sum of all four sides)")
                                    .font(.body)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.top, 4)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(.systemGray6))
                            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                    )
                }
                .padding(.horizontal)
                
                Spacer(minLength: 50)
            }
        }
        .navigationBarBackButtonHidden()
        .navigationTitle("SQUARE")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image("backLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .padding(6)
                }
            }
        }
    }
}

#Preview {
    ContentView2()
}
