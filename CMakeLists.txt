project(sfos-bepo CXX)
cmake_minimum_required(VERSION 3.5)

find_package (Qt5 COMPONENTS Core Network Qml Gui Quick REQUIRED)

include(FindPkgConfig)
pkg_search_module(SAILFISH sailfishapp REQUIRED)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_executable(sfos-bepo src/sfos-bepo.cpp)
target_compile_definitions(sfos-bepo PRIVATE
    $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>
)
target_include_directories(sfos-bepo PRIVATE
    $<BUILD_INTERFACE:
    ${SAILFISH_INCLUDE_DIRS}>
    )
target_link_libraries(sfos-bepo
    Qt5::Quick
    ${SAILFISH_LDFLAGS}
)

install(TARGETS sfos-bepo
    RUNTIME DESTINATION bin
)
install(DIRECTORY qml
    DESTINATION share/sfos-bepo
)
install(DIRECTORY translations
    DESTINATION share/sfos-bepo
    FILES_MATCHING PATTERN "*.qm"
)
install(FILES sfos-bepo.desktop
    DESTINATION share/applications
)
install(FILES icons/86x86/sfos-bepo.png
    DESTINATION share/icons/hicolor/86x86/apps
)
install(FILES icons/108x108/sfos-bepo.png
    DESTINATION share/icons/hicolor/108x108/apps
)
install(FILES icons/128x128/sfos-bepo.png
    DESTINATION share/icons/hicolor/128x128/apps
)
install(FILES icons/172x172/sfos-bepo.png
    DESTINATION share/icons/hicolor/172x172/apps
)
install(FILES
    layouts_bepo.conf
    fr_bepo.qml
    DESTINATION
    /usr/share/maliit/plugins/com/jolla/layouts/
)
add_custom_target(distfiles
    SOURCES
        sfos-bepo.desktop
        layouts_bepo.conf
        fr_bepo.qml
        qml/sfos-bepo.qml
        qml/cover/CoverPage.qml
        qml/pages/FirstPage.qml
        rpm/sfos-bepo.changes.in
        rpm/sfos-bepo.changes.run.in
        rpm/sfos-bepo.spec
        rpm/sfos-bepo.yaml
        ${TsFiles})

# Tell Qt Creator where the application executable(s) would be located on the
# device.
#
# It is not necessary to list other deployables than executables (runtime
# targets) here. The deployment process of Sailfish OS projects is opaque to
# Qt Creator and the information contained in QtCreatorDeployment.txt is only
# used to locate the executable associated with the active run configuration
# on the device in order to run it.
#
# Search the Qt Creator Manual to learn about the QtCreatorDeployment.txt file
# format.
file(WRITE "${CMAKE_BINARY_DIR}/QtCreatorDeployment.txt"
    "${CMAKE_INSTALL_PREFIX}
${CMAKE_BINARY_DIR}/sfos-bepo:bin
")

