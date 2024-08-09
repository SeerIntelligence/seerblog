---
layout: post
title: "QubesOS and Reasonable privacy"
category: privacy
--- 

TL;DR Yes, QubesOS is good and absolutely worth the effort.

Qubes is a fascinating subject. It is the antidote to "man-made horrors beyond your comprehension"

### What is it?

Qubes is a Linux distribution based on the Xen hypervisor, it is essentially a building block for efficient management of smaller virtual operating systems.
We can use these smaller operating systems to achieve a 'reasonable' amount of privacy. With every VM isolated you can ensure a secure and private experience, prompting the title of a "Reasonably secure operating system". 

### Should I use Qubes?

Do you want to? Does it make you feel safer? then go for it. There are not many situations where using something like Qubes OS is a necessity, Although with that being said I can think of a few of the top of my head (Journalists, Political activists, Whatever the fuck Edward snowden was doing, etc).
But using it does not equate to being any of the above, in fact most people who use Qubes OS have nothing to "run from" or hide, they just use it because it makes them feel private, and it's not a placebo either; it really is effective. Let me elaborate.

### The identity problem

Most of us, believe it or not, manage more than one identity. And keeping those identities separate is an issue that Qubes solves with much efficiency. 
A second identity does not necessarily have to be a secret family in El Salvador, it can be a different set of beliefs, a different set of ideas or just a different person for work. You wouldn't want your boss to know what you're browsing in your own time, thus making you a different person from the identity that you have in your workplace. But a secret family in El Salvador does work too.

This 'identity problem' becomes more serious when the needs of a certain identity prompt a breach in the entirety of your privacy. Say, Your workplace requires you to have Whatsapp, Let's also say that you don't want to have Whatsapp for understandable reasons. Now you've got a problem, Now you have to install Whatsapp on your brand new de-googled privacy friendly phone that you configured using Seer intelligence's upcoming phone privacy guide (For the sake of the argument, you're a time traveler.)

Now depending on your threat model, there are a few solutions to this problem; The simplest one being a work phone which many companies do not have, but even with that sorted you're still running a Meta service on your home network, which is suboptimal if you're paranoid like me.

Say you're a real privacy freak, and you still need to run Whatsapp, One very optimal solution to this is an android isolated virtual machine, or, if you're me. you'd use Limbo or Waydroid, or even a virtual machine that runs on android ([Insular](https://f-droid.org/packages/com.oasisfeng.island.fdroid/)) Whatever you use, the answer is an isolated virtual machine, because isolated virtual machines are good :D.


### Xen hypervisor, KVM and Android

Yes, you can run android apps in Qubes OS, And no KVM is not a necessarily better alternative to Xen, Qubes actually has a pretty sophisticated article explaining why, which I will footnote.[^1]

But a very simplified answer to that question is that Xen offers a smaller attack surface compared to KVM due to a smaller TCB, which essentially means a less trusting interface; therefore a smaller attack surface.

Running Android apps on Qubes is a suboptimal solution, mainly because android virtual machines in general just... suck, But it still is the most optimal solution to the proposed identity problem, so we can't really complain.

### The browser problem 

Web browsers are the main foothold for privacy invasion by a large margin, this is due to cross site cookies, invasive web development, creepy ads and all those milfs in your area.

From a privacy standpoint, browser isolation is the way to go, although methods like Firefox containers do help mitigate these *invasions*, they still cannot hold a candle to a virtual machine running just a browser, Especially when the browser itself is not particularly trustworthy (Chrome, for example.)
When a system like Qubes achieves this effect so effortlessly, there's no reason to trust the browser to begin with.

Qubes allows for virtual machines to run individual applications in a "Qube", a Qube can run a single or multiple applications, it can also optionally self destruct after being used, ensuring no data is recoverable.

### Last words

Qubes is an amazing operating system, the way that it manages to isolate software and allow multiple online identities is phenomenal, artistic even, You should definitely try it, even if it's just for fun or as a learning experience, don't even get me started on network Qubes and how it handles VPNs, allowing you to tunnel entire virtual machines with ease and create complicated proxy setups.

Overall, it's very sophisticated and it really makes you *feel* the security. 10/10 Would recommnend.



[^1]: [www.qubes-os.org/attachment/doc/arch-spec-0.3.pdf](https://www.qubes-os.org/attachment/doc/arch-spec-0.3.pdf) Section 3.2
