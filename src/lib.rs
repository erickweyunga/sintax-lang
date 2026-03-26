use zed_extension_api::{self as zed, LanguageServerId, Result};

struct SintaxExtension;

impl zed::Extension for SintaxExtension {
    fn new() -> Self {
        SintaxExtension
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        // Look for `sintax` on PATH
        let path = worktree
            .which("sintax")
            .ok_or_else(|| "sintax not found on PATH. Install with: go install github.com/erickweyunga/sintax@latest".to_string())?;

        Ok(zed::Command {
            command: path,
            args: vec!["lsp".to_string()],
            env: Default::default(),
        })
    }
}

zed::register_extension!(SintaxExtension);
