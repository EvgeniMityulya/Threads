//
//  ProfileView.swift
//  Threads
//
//  Created by Евгений Митюля on 9/15/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Bio and stats
                VStack(spacing: 20) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 12) {
                            // Fullname and Username
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Person Name")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Text("Person username")
                                    .font(.subheadline)
                            }
                            
                            Text("Person description")
                                .font(.footnote)
                            
                            Text("2 followers")
                                .font(.caption)
                                .foregroundStyle(Color(.gray))
                        }
                        
                        Spacer()
                        
                        CircularProfileImageView()
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.white))
                            .frame(width: 352, height: 32)
                            .background(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                    // user content list view
                    VStack {
                        HStack {
                            ForEach(ProfileThreadFilter.allCases) { filter in
                                VStack {
                                    Text(filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                    
                                    if selectedFilter == filter {
                                        Rectangle()
                                            .foregroundStyle(Color(.black))
                                            .frame(width: filterBarWidth, height: 1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    } else {
                                        Rectangle()
                                            .foregroundStyle(.clear)
                                            .frame(width: filterBarWidth, height: 1)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        selectedFilter = filter
                                    }
                                }
                            }
                        }
                        
                        LazyVStack {
                            ForEach(0 ... 10, id: \.self) { thread in
                                ThreadCell()
                            }
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding(.horizontal)
            .scrollIndicators(.never)
        }
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
}
