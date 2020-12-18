project(sfos-bepo CXX)
cmake_minimum_required(VERSION 3.5)

install(FILES
    layouts_bepo.conf
    fr_bepo.qml
    DESTINATION
    /usr/share/maliit/plugins/com/jolla/layouts/
)
add_custom_target(distfiles
    SOURCES
        sfos-bepo.desktop
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

