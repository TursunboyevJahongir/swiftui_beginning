//
//  ConfirmationDialog.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jahongir on 20/09/22.
//

import SwiftUI

struct DialogButton {
    enum ButtonType {
        case destructive
        case cancel
        case `default`
    }
    
    let title: String
    let type: ButtonType
    let action: () -> Void

    public init(title: String, type: ButtonType, action: @escaping () -> Void) {
        self.title = title
        self.type = type
        self.action = action
    }
}

struct ConfirmationDialog: ViewModifier {
    @Binding var isPresented: Bool

    let title: String
    let message: String?
    let buttons: [DialogButton]
    let horizontalSizeClass: UserInterfaceSizeClass?
    let onDismiss: () -> Void
    
    func body(content: Content) -> some View {
        content.if(horizontalSizeClass == .some(.regular)) { content in
            content.popover(isPresented: $isPresented, content: popoverContent)
        }.if(horizontalSizeClass == .some(.compact)) { content in
            content.actionSheet(isPresented: $isPresented) {
                ActionSheet(title: Text(self.title), message: Text(self.message ?? ""), buttons: sheetButtons)
            }
        }
    }
    
    private var sheetButtons: [ActionSheet.Button] {
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = .teal
        
        return buttons.map { button -> ActionSheet.Button in
            switch button.type {
            case .cancel:
                return .cancel(button.action)
            case .`default`:
                return .default(Text(button.title), action: button.action)
            case .destructive:
                return .destructive(Text(button.title), action: button.action)
            }
        }
    }

    private var popoverButtons: [Button<Text>] {
        return buttons.map { button in
            switch button.type {
            case .cancel:
                return Button(action: {
                    button.action()
                }, label: {
                    Text(button.title)
                    .bold()
                    .foregroundColor(Color.teal)
                })
            case .`default`:
                return Button(action: {
                    button.action()
                }, label: {
                    Text(button.title)
                    .foregroundColor(Color.teal)
                })
            case .destructive:
                return Button(action: {
                    button.action()
                }, label: {
                    Text(button.title)
                    .foregroundColor(Color(UIColor.systemRed))
                })
            }
        }
    }
    
    private func popoverContent() -> some View {
        return VStack(alignment: .center, spacing: 10) {
            Text(title)
            .font(.footnote)
            .foregroundColor(Color.secondary)
            .bold()
            .padding(.top)
            if message != nil {
                Text(message ?? "")
                .font(.footnote)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            }
            ForEach((0 ..< popoverButtons.count), id: \.self) { index in
                Group {
                    Divider()
                    self.popoverButtons[index]
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
        .frame(width: 200)
        .padding(10)
        .onDisappear {
            self.onDismiss()
        }
    }
