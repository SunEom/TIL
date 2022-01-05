//
//  SceneDelegate.swift
//  SwiftUIDemo2
//
//  Created by 엄태양 on 2022/01/05.
//

import SwiftUI
import Foundation

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // 애플리케이션이 실행된 직후 사용자의 화면에 보여지기 전에 호출
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let contentView = ContentView()

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let timerData = TimerData()
            window.rootViewController = UIHostingController(rootView: contentView.environmentObject(timerData))
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    // 애플리케이션이 연결이 해제될때 호출 (종료)
    func sceneDidDisconnect(_ scene: UIScene) {

    }

    // App Switcher 에서 선택 될경우
    // App Switcher -> 홈 버튼을 두번 누르거나 아이폰 화면 하단에서 위로 스와이프 했을경우
    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    // 다른 화면으로 전환 했을경우
    func sceneWillResignActive(_ scene: UIScene) {

    }

    // 애플리케이션이 포그라운드로 진입 했을경우
    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    // 애플리케이션이 백그라운드로 짆입 했을경우
    func sceneDidEnterBackground(_ scene: UIScene) {

    }

}
