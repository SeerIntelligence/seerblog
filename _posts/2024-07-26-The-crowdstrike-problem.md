---
layout: post
title: "The Crowdstrike problem: could it be avoided?"
category: privacy
--- 

TLDR: No, but I discuss how it might be minimized and why crashing was the better outcome.


## The reliability problem

Although software can theoretically be perfected, there are two other factors that are not possible to perfect; one being human error and the other being environment.
Due to the complex nature of Crowdstrie Falcon and it being ring zero software, it is very important for it to be thoroughly tested. however this is often not how it works.
Thorough testing does not solve much of the environmental issues of running a ring zero software like Faclon, due to it running on GNU/Linux the Falcon team would face an entire arsenal of minor environmental differences, and although thorough testing does minimize the chance of critical errors, it does not in any way **ensure** the intended behavior of the said software.
All that being said, considering they did cause a similar outage on Redhat two months prior you'd think they would be more careful next time but what do I know about commercial software, I am but a humble narrator.

## Crashing was the better outcome, actually.

Imagine living in a parallel universe where the Falcon outage didn't happen like it did in our version of earth, but it silently crashed without causing a BSOD or making any kind of noise.
Well, in an instant, millions of computers would lose their most critical line of defense, The crash would certainly be noticed; but instead of taking the network down with it, it'd expose entire companies to hellfire as technicians worked on fixing the version, which had to be done manually.
For threat actors, that would seem like a fun time. All things considered, the BSOD was the most favorable outcome.
Your av software is the last piece of software you'd want compromised, so there's that.

## The ring zero problem

Ring zero software is really dump in principle, but quite necessary one might argue.
