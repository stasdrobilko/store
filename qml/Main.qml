import Felgo 3.0
import QtQuick 2.0
import QtLocation 5.11
App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"
    NavigationStack {
        Page{
            id: _page
            titleItem: Image{
                source: "../assets/new_logo.png"
                width: _page.width*0.08
                height: _page.height*0.08
                anchors.centerIn: _page
            }
        }
    }
    Navigation {

        navigationMode: navigationModeTabsAndDrawer
        NavigationItem {
            id: main
            title: "Главная"
            icon: IconType.home
            NavigationStack {
                Page{
                    title: "Главная"
                    AppListView{
                        delegate: SimpleRow{}
                        model: [
                            {
                                text:"Каталог товаров"
                            },
                            {
                                text:"Услуги по исследованию полей"
                            },
                            {
                                text:"Контакты"
                            },
                            {
                                text:"О компании"
                            }
                        ]
                    }
                }
            }
        }
        NavigationItem {
            title: "Корзина"
            icon: IconType.shoppingcart
            NavigationStack {
                Page{
                    title: "Корзина"
                }
            }
        }
        NavigationItem {
            title: "Настройки"
            icon: IconType.cog
            NavigationStack {
                Page{
                    title: "Настройки"
                    AppMap{
                    anchors.fill: parent
                    }
                }
            }
        }
        NavigationItem {
            title: "Выход"
            icon: IconType.signout

        }
    }
}
