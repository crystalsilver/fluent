/// Supports running `Migration`s.
public protocol MigrationSupporting: QuerySupporting {
    /// Prepares this connection for handling `Migration`s.
    ///
    /// - parameters:
    ///     - conn: Connection to prepare on.
    /// - returns: A future that will be completed when the preparation is finished.
    static func prepareMigrationMetadata(on conn: Connection) -> Future<Void>
    
    /// Un-prepares this connection for handlign `Migration`s.
    ///
    /// - parameters:
    ///     - conn: Connection to revert on.
    /// - returns: A future that will be completed when the reversion is finished.
    static func revertMigrationMetadata(on conn: Connection) -> Future<Void>
}
