# newgrad-job-diagnosis

A Claude Code plugin that finds **where** a new grad's job search is breaking, then prescribes only the next two
weeks of work for that stage. It doesn't hand you a 40-item checklist.

Stages:

0. Not enough volume: still polishing, not sending
1. Applying, no interviews: direction, JD match, application records
2. Interviews stall: role understanding, motivation, answer structure, mock review
3. Can't close, or evaluating an offer
4. Accepted: ramp-up plan

It replies in the language you write in (English, 中文, 日本語, 한국어, …) and targets the US job market.

## Install

```
/plugin marketplace add job2-ai/newgrad-job-diagnosis
/plugin install newgrad-job-diagnosis@newgrad-job-diagnosis
```

## Use on claude.ai

Download `job-search-diagnosis.zip` from the latest [release](https://github.com/job2-ai/newgrad-job-diagnosis/releases),
then in claude.ai go to **Customize → Skills → + → Upload a skill**. Code execution must be on. Skills work on every
plan, including Free. To build the zip yourself: `./scripts/package-claude-ai.sh`.

## Use

Just describe your situation:

> I've sent about 150 applications for SWE new grad roles over 6 weeks and only got 3 OAs and 1 recruiter call. I need H-1B sponsorship.

You'll get: the stuck stage (with your numbers), the evidence, what to keep, 3–5 ordered tasks with done-checks, and
what to bring back for a re-check. Paste your resume and a couple of JDs for a concrete resume/JD match check.

The funnel benchmarks are heuristics, not published statistics. They're used to compare your stages with each
other.

## Privacy

The plugin is instructions only. It makes no network calls, runs no scripts, and sends your data nowhere beyond
the Claude conversation you're already in.

## License

MIT
