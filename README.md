# ClaudeSwarm (Archived)

**This project is no longer maintained.** Claude Code has natively adopted the multi-agent orchestration pattern that ClaudeSwarm pioneered, making this project redundant.

## What Happened?

ClaudeSwarm assembled 35 specialised AI agents (orchestrators, framework specialists, workflow agents, quality reviewers) that collaborated via Claude Code's sub-agent system to convert ideas into production-ready software.

Since then, **Claude Code has built all of these agents directly into the product**. Every agent this project defined -- `tech-lead-orchestrator`, `spec-orchestrator`, `code-reviewer`, `code-archaeologist`, `performance-optimizer`, all the Django/Rails/Laravel/React/Vue specialists, and more -- now ships as a native `subagent_type` in Claude Code's Agent tool.

You don't need to install anything. Just use Claude Code.

## What To Use Instead

Claude Code's built-in agents are available out of the box. Examples:

```bash
# These just work now, no setup required
claude "use the code-reviewer agent to review this PR"
claude "use the spec-orchestrator to plan and build a task management app"
claude "use the tech-lead-orchestrator to coordinate adding payments to my app"
claude "use the performance-optimizer to find bottlenecks in my database queries"
```

For custom agents beyond the built-ins, Claude Code supports user-defined agents at `~/.claude/agents/*.md` and project-level agents at `.claude/agents/*.md`. See the [Claude Code documentation](https://docs.anthropic.com/en/docs/claude-code) for details.

## What Might Still Be Useful

While every agent in this project now has a built-in equivalent, a few things here don't ship with Claude Code and could still serve as inspiration:

- **The `agent-workflow` skill** ([commands/agent-workflow.md](commands/agent-workflow.md)) -- a quality-gated pipeline that chains `spec-analyst` -> `spec-architect` -> `spec-developer` -> `spec-validator` -> `spec-tester` with automatic iteration when quality scores fall below 95%. Claude Code's built-in agents exist independently; this skill wires them into an automated workflow. You'd need to install it as a [Claude Code skill](https://docs.anthropic.com/en/docs/claude-code) at `~/.claude/skills/agent-workflow/SKILL.md` (not `commands/` as this project's install script does -- that path is outdated).

- **The CLAUDE.md orchestration template** ([CLAUDE.md](CLAUDE.md)) -- documents how to coordinate agents with structured handoffs, quality gate thresholds, and phased workflows. Could be adapted for your own project's CLAUDE.md to guide Claude on when to use which built-in agent.

- **The workflow documentation** ([docs/workflows.md](docs/workflows.md), [docs/best-practices.md](docs/best-practices.md)) -- patterns for parallel agent execution, dependency management, cost control, and quality iteration that apply regardless of whether agents are custom or built-in.

## Historical Context

This project was built in mid-2025 when Claude Code's sub-agent system was new and had no built-in specialist agents. ClaudeSwarm demonstrated that a coordinated swarm of domain experts with quality gates could dramatically improve development output. The patterns it established -- orchestrator-driven routing, three-phase quality gates, structured agent handoffs -- were validated by their adoption into Claude Code itself.

## Acknowledgements

Built with inspiration from [claude-sub-agent](https://github.com/zhsama/claude-sub-agent) and [awesome-claude-agents](https://github.com/vijaythecoder/awesome-claude-agents). Thanks to the Anthropic team for Claude Code and for making this project unnecessary.

## License

MIT License -- see [LICENSE](LICENSE) for details.
