# newgrad-job-diagnosis

A Claude Code plugin that finds **where** a new grad's job search is breaking, then prescribes only the next two
weeks of work for that stage. It doesn't hand you a 40-item checklist.

Stages:

0. Not enough volume: still polishing, not sending
1. Applying, no interviews: direction, JD match, application records
2. Interviews stall: role understanding, motivation, answer structure, mock review
3. Can't close, or evaluating an offer
4. Accepted: ramp-up plan

It replies in the language you write in (English, 中文, 日本語, …) and targets the US job market.

## Install

```
/plugin marketplace add job2-ai/newgrad-job-diagnosis
/plugin install newgrad-job-diagnosis@newgrad-job-diagnosis
```

## Use

Just describe your situation:

> I've sent about 150 applications for SWE new grad roles over 6 weeks and only got 3 OAs and 1 recruiter call. I need H-1B sponsorship.

You'll get: the stuck stage (with your numbers), the evidence, what to keep, 3–5 ordered tasks with done-checks, and
what to bring back for a re-check. Paste your resume and a couple of JDs for a concrete resume/JD match check.

The funnel benchmarks are heuristics, not published statistics. They're used to compare your stages with each
other.

## License

MIT
