# Feedback from Matt (mms)

## Overview

I think it is important to share that I am proud of you for making and sharing a video.  That was a big step.

From my review of the code, you are very close to the solution.  I think a few conceptual tweaks will get you to the finish line.  You aren't far off.

I'm just guessing, but the evidence is showing me that you worked on a lot of fronts, but didn't quite complete anything.  For instance, you worked on managing your list of possible answers, but stopped just short of making it usable via the app.  You have everything in place (routes, controller, model, views), but your app does not provide a way to navigate to this list and/or manage the possible answers via the app.

It is important to take small steps and complete one task before moving on.  That way you have something to show - at all times.

I think you are missing an important concept.  What does this app need?  It needs a repository of answers to choose from.  When a user asks a question, we select an random answer from that repository and assign it to the question.  That's it.

1. What is your repository of possible Answers?  
2. How will you manage that repository of answers via this app, specifically what routes, controllers, models, and views?
3. How will you associate the selected answer with the posed question and persist the two together for viewing at a later date/time?
4. What controller action will perform, and persist, that association?  How?

There is evidence that you were munging these two concepts together (a repository of possible answers vs the answer selected to be associated with this question).  
1. How do we show the list of possible answers? "/answers" -> answers#index
2. How do we show which answer is associated with a particular question?  Currently, you are attempting to do this via "answers#show".  Is there a better place to show the answer that is associated with a particular question?

## Project Workflow: How effectively did you plan, execute, and present this project?

Did not meet expectations:  Planning looks sufficient, failure happened somewhere in execution.
I must admit, I am disappointed that you were troubled enough to feel like you couldn't give a presentation, and yet you didn't file a single issue throughout project week.

## Technical Requirements: How well does your app demonstrate a grasp of the technologies introduced in class?

Did not meet expectations: I'm not sure where the disconnect is, but we are losing you somewhere.  There is a lot of good code, but it's not adding up to something usable.  We need to work together to identify what the issue(s) is and how we can correct for it.  I think asking for assistance will be a big help.

## Creativity / Interface: How memorable and enjoyable to use is your app?

Did not meet expectations: I was expecting you to have a lot of fun with this; text fading in and out, etc.

## Code Quality: How able would an uninformed programmer be to reuse and extend your code?

Meets expectations: The code that exists is pretty clean and solid.  There were just a couple of questionable places.  But... it looks like they were enough to really throw you off.

## Deployment and Functionality: How accessible is your app to those who may want to explore it?

Did not meet: Deployed? Yes.  I typed in a question, pressed "Create Question", and got "We're sorry, but something went wrong." :(

## Conclusion

Let's figure out what happened and how we can avoid it next time.  You deserve credit more all this work.  Let's make sure you can deomnstrate some results for your efforts.
