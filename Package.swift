import PackageDescription

let package = Package(
    name: "BluetoothLinux",
    targets: [
        Target(
            name: "ScanTest",
            dependencies: [.Target(name: "BluetoothLinux")]),
        Target(
            name: "iBeaconTest",
            dependencies: [.Target(name: "BluetoothLinux")]),
        Target(
            name: "L2CAPServerTest",
            dependencies: [.Target(name: "BluetoothLinux")]),
        Target(
            name: "GATTServerTest",
            dependencies: [.Target(name: "BluetoothLinux")]),
        Target(
            name: "GATTClientTest",
            dependencies: [.Target(name: "BluetoothLinux")]),
        Target(
            name: "LEScanTest",
            dependencies: [.Target(name: "BluetoothLinux")]),
        Target(
            name: "LECreateConnection",
            dependencies: [.Target(name: "BluetoothLinux")]),
        Target(
            name: "BluetoothLinux",
            dependencies: [
                .Target(name: "CSwiftBluetoothLinux")
            ]),
        Target(
            name: "CSwiftBluetoothLinux"),
        Target(
            name: "CSwiftBluetoothLinuxTest"),
        Target(
            name: "BluetoothLinuxTests",
            dependencies: [
                .Target(name: "BluetoothLinux"),
                .Target(name: "CSwiftBluetoothLinuxTest")
            ])
    ],
    dependencies: [
        .Package(url: "https://github.com/PureSwift/Bluetooth.git", majorVersion: 1)
    ]
)
