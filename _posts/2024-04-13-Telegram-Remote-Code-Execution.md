---
layout: post
title: "Telegram RCE"
category: security
---


`TLDR: My analysis shows the vulnerability is most likely fake.`

You wake up one morning and it's April 8th, You open twitter and you see this fella on twitter
claiming to have found a method of executing remote code on Telegram's desktop application. "Well, fuck" you say.


[Here](https://twitter.com/telegram/status/1777677055837995151) you can see Telegram's response to the original tweet, which happens to be taken down at the time of this writing.
Companies have a habit of making shit up to cover their faults in security, so how can you trust this response to be accurate and genuine?
Truth is, you can't. Without proper malware and technique analysis, not much can be said about the "vulnerability" and its implications, and we don't have much to work on besides a video and some wacky twitter takes.

One of the reasons I agree with Telegram's dismissal of the vulnerability is that the issue that is most likely represented in the video, happens to be something that has been addressed in a previous commit by ["John-Peterson" on 26th of April, 2022](https://github.com/desktop-app/lib_webview/commit/77b1712a8fba6f1a2e6655039b89e50b31a218b4)

I also found a PoC made by CyberJujutsu, which I was not able to reproduce no matter how hard I tried, and they didn't seem to look particularly honest and reputable. You can find the original video [HERE](https://www.youtube.com/watch?v=VHJHs-B9fZ8), other users reported this vulnerability to exist, however they said that the vulnerability does not work as demonstrated, and Telegram shows you something along the lines of "This is an exe file that might be highly dangerous" A string I was not able to find on [github.com/telegramdesktop](https://github.com/telegramdesktop), So I'm calling BS on that too.
All in all, without being able to reproduce the fault within our systems, and seeing no one actually fall victim to it, I am concluding the vulnerability to be a hoax, as Telegram's official account reported.
