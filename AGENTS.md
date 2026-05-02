<!-- BEGIN:nextjs-agent-rules -->
# This is NOT the Next.js you know

This version has breaking changes — APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` before writing any code. Heed deprecation notices.
<!-- END:nextjs-agent-rules -->

# Backup & Notification Policy
1. Whenever the user requests a "backup", create a compressed archive of the project.
2. Use a sequential identifier (v1, v2, v3...). Check `BACKUP_LOG.md` for the current count.
3. Generate a detailed report of changes (diffs, additions, fixes) since the last backup.
4. Prepare an email report for: ncarrillok@gmail.com.
5. **Auto-Deployment**: After every modification or implementation of a new feature, automatically run the deployment process to Cloudflare Pages (`npx @cloudflare/next-on-pages && npx wrangler pages deploy .vercel/output/static --project-name crosti-management`).
6. **Cloud Sync**: Copy the compressed archive to Google Drive: `/Users/nelsoncarrillokosak/Library/CloudStorage/GoogleDrive-ncarrillok@gmail.com/Mi unidad/Backups_Antigravity/`.

# Communication & Tool Policy
1. **Clarification First**: If you don't fully understand a prompt, ask for clarification immediately instead of assuming.
2. **Restricted Browser**: Do NOT use the browser subagent or any browser tools to resolve questions or verify work without explicit authorization from the user.
