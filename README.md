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
plan, including Free. To build the zip yourself (claude.ai needs the skill folder at the zip's root):

```
cd skills && zip -r ../job-search-diagnosis.zip job-search-diagnosis -x '*.DS_Store'
```

## Use

Just tell it what's going on:

> I've sent about 150 applications for SWE new grad roles over 6 weeks and only got 3 OAs and 1 recruiter call. I need H-1B sponsorship.

It asks a few questions, shows your numbers against benchmarks from hiring data, names the stuck stage, and plans the next two
weeks with you. Then it starts on one task right away, like rewriting a resume bullet or a mock interview question.
Want a report without the conversation? Paste your numbers and say "just give me the report".

## Evidence

The coaching is built on job-search research, not on anyone's say-so. Every rule and number is listed with its source
in [`references/evidence.md`](skills/job-search-diagnosis/references/evidence.md). Highlights:

- Job-search programs worked only when they paired skills with motivation, giving 2.67× the odds of a job
  (Liu, Huang & Wang 2014, *Psychological Bulletin*). So every plan here pairs a skill task with a motivation step.
- Active employer contact predicts interviews more than preparation does, and more applications barely predict a
  better job (Van Hooft et al. 2021, *J Applied Psychology*; 378 samples).
- Preparing for rejection ahead of time is part of the JOBS program, whose randomized trials improved reemployment
  and mental health (Caplan et al. 1989; Vinokur et al. 2000).
- A learning-goal framing and if-then plans help people keep searching (Van Hooft & Noordzij 2009; Van Hooft et al.
  2005).
- Referrals: referred applicants were more than twice as likely to be interviewed (Brown, Setren & Topa 2016,
  *J Labor Economics*).
- Funnel benchmarks come from 2024–2026 hiring-platform data (Gem, Ashby; vendor data) and field experiments
  (Kroft, Lange & Notowidigdo 2013, *QJE*). They're typical rates, not targets.
- Wellbeing: distress during a search is common and situational (Paul & Moser 2009). Expressive and
  self-compassion writing helped job seekers (Spera et al. 1994; Kreemers et al. 2020).

It won't repeat popular claims nobody has evidence for, like "75% of résumés are rejected by ATS".

## Privacy

The plugin is instructions only. It makes no network calls, runs no scripts, and sends your data nowhere beyond
the Claude conversation you're already in.

## License

MIT
