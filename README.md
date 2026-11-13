# job-search-coach

A job-search coach for Claude. It talks through your situation the way a good career counselor would: it asks a
couple of questions at a time, says what it thinks is wrong, checks that with you, and then works on the fix with
you. You get a plan for the next two weeks, sized to the time you actually have, and you don't get a 40-item
checklist.

It finds the **one stage** where your search is stuck:

0. Not enough applications yet: still polishing, not sending
1. Applying, no interviews: direction, how well you match the posting, how and when you apply
2. Interviews aren't advancing: understanding the role, motivation, answer structure, practice
3. Final rounds without offers, or deciding on an offer
4. Accepted: a ramp-up plan

It's built for new grads and international students (OPT, STEM OPT, H-1B), and it works for career switchers and
laid-off workers too. It takes the stress seriously: it acknowledges it, doesn't add fear, and gives you small
steps you can finish. It's a coach, not a therapist or an immigration lawyer, and it says so when that matters.

It replies in the language you write in (English, 中文, 日本語, 한국어, …) and targets the US job market. Each
conversation ends with a progress card you can paste next time.

## Install

```
/plugin marketplace add job2-ai/job-search-coach
/plugin install job-search-coach@job-search-coach
```

## Use on claude.ai

Download `job-search-diagnosis.zip` from the latest [release](https://github.com/job2-ai/job-search-coach/releases),
then in claude.ai go to **Customize → Skills → + → Upload a skill**. Code execution must be on. Skills work on every
plan, including Free. To build the zip yourself: `./scripts/package-claude-ai.sh`.

## Use

Just tell it what's going on:

> I've sent about 150 applications for SWE new grad roles over 6 weeks and only got 3 OAs and 1 recruiter call. I need H-1B sponsorship.

It asks a few questions, shows your numbers against rough benchmarks, names the stuck stage, and plans the next two
weeks with you. Then it starts on one task right away, like rewriting a resume bullet or a mock interview question.
Want a report without the conversation? Paste your numbers and say "just give me the report".

The funnel benchmarks are heuristics, not published statistics. They're used to compare your stages with each
other.

## Privacy

The plugin is instructions only. It makes no network calls, runs no scripts, and sends your data nowhere beyond
the Claude conversation you're already in.

## License

MIT
