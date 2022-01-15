# Xcode Colorful Logger - Logify

Simply, <b>Logify</b> provides instant <b>colorful logs</b> to improve log tracking and bug tracing.

<img width="682" alt="Screen Shot 2022-01-15 at 19 29 43" src="https://user-images.githubusercontent.com/16462769/149638902-607c0e39-c96d-4d83-ae8a-be5ea71213a0.png">

# Why I need to use Logify?

As discussed before in a lot of developer forums, Xcode doesn't support console coloring since Xcode 8. Because Apple has removed plug-ins from Xcode - I think the reason is security for developers - and has introduced Xcode extensions. And Xcode extensions are not providing any solution to colorize the terminal. In a short, there is no built-in support to achieve this.

# Well, what type of solutions we have?

Thanks god that Xcode supports unicode. So you can add related emojis as a prefix to your logs. But it's a limited solution, definitely.

# How Logify works and colorize logs of my Xcode project?

It's not a magic that Logify reads the system logs related with your app from the Console app. It filters the result with the parameters of both `subsystem` and `category` set in your valuable Xcode project, sure in the logger manager.

# What is next?

It's brand new tool which is still being developed. All PRs and issues are accepted. Feel free to contact with me to discuss anything.

# Author

Furkan Kaplan https://github.com/furkankaplan <br>
Twitter  : [@kaplan_dev](https://twitter.com/kaplan_dev) <br>
LinkedIn : [@furkankaplan07](https://www.linkedin.com/in/furkankaplan07/) <br>
Email    : **furkankaplan@outlook.com**
