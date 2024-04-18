//
//  DividerView.swift
//  Moonshot
//
//  Created by MaćKo on 18/04/2024.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.white.opacity(0.2))
            .padding(.vertical)
    }
}

#Preview {
    DividerView()
}
