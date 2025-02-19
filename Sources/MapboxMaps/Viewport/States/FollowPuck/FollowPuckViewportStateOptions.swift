/// Configuration options for ``FollowPuckViewportState``.
///
/// Each of the ``CameraOptions``-related properties is optional, so that the state can be configured to
/// only modify certain aspects of the camera if desired. This can be used, to achieve effects like allowing
/// zoom gestures to work simultaneously with ``FollowPuckViewportState``.
///
/// - SeeAlso: ``ViewportOptions/transitionsToIdleUponUserInteraction``
@_spi(Experimental) public struct FollowPuckViewportStateOptions: Hashable {

    /// The value to use for ``CameraOptions/padding`` when setting the camera. If `nil`, padding
    /// will not be modified.
    public var padding: UIEdgeInsets?

    /// The value to use for ``CameraOptions/zoom`` when setting the camera. If `nil`, zoom will
    /// not be modified.
    public var zoom: CGFloat?

    /// Indicates how to obtain the value to use for ``CameraOptions/bearing`` when setting the
    /// camera. If `nil`, bearing will not be modified.
    public var bearing: FollowPuckViewportStateBearing?

    /// The value to use for ``CameraOptions/pitch`` when setting the camera. If `nil`, pitch will
    /// not be modified.
    public var pitch: CGFloat?

    /// :nodoc:
    @available(*, deprecated, message: "This option is no longer used and will be removed in a future release.")
    public var animationDuration: TimeInterval = 1

    /// Memberwise initializer for `FollowPuckViewportStateOptions`.
    ///
    /// All parameters have default values.
    ///
    /// - Parameters:
    ///   - padding: Defaults to `UIEdgeInsets.zero`.
    ///   - zoom: Defaults to 16.35.
    ///   - bearing: Defaults to ``FollowPuckViewportStateBearing/heading``.
    ///   - pitch: Defaults to 45.
    public init(padding: UIEdgeInsets? = .zero,
                zoom: CGFloat? = 16.35,
                bearing: FollowPuckViewportStateBearing? = .heading,
                pitch: CGFloat? = 45) {
        self.padding = padding
        self.zoom = zoom
        self.bearing = bearing
        self.pitch = pitch
    }

    /// :nodoc:
    @available(*,
                deprecated,
                message: "animationDuration parameter is ignored. This initializer will be removed in a future release.",
                renamed: "init(padding:zoom:bearing:pitch:)")
    public init(padding: UIEdgeInsets? = .zero,
                zoom: CGFloat? = 16.35,
                bearing: FollowPuckViewportStateBearing? = .heading,
                pitch: CGFloat? = 45,
                animationDuration: TimeInterval = 1) {
        self.padding = padding
        self.zoom = zoom
        self.bearing = bearing
        self.pitch = pitch
    }

    /// Combines all fields into `hasher`
    public func hash(into hasher: inout Hasher) {
        hasher.combine(padding?.top)
        hasher.combine(padding?.left)
        hasher.combine(padding?.bottom)
        hasher.combine(padding?.right)
        hasher.combine(zoom)
        hasher.combine(bearing)
        hasher.combine(pitch)
    }
}
