--- Returns environment variables to set
--- @param ctx table Context object with path field (install directory)
--- @return table Array of environment variable definitions
function PLUGIN:EnvKeys(ctx)
    local mainPath = ctx.path
    local version = mainPath:match("([^/\\]+)$")

    return {
        {
            key = "PATH",
            value = mainPath .. "/bin",
        },
        -- LEIN_HOME is where users keep ~/.lein settings, so leave it alone and
        -- point lein at the standalone jar installed by this plugin instead.
        {
            key = "LEIN_JAR",
            value = mainPath .. "/self-installs/leiningen-" .. version .. "-standalone.jar",
        },
    }
end
