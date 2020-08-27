# var + xss = vaxser (Just came up with it)

Extracts `var`'s from endpoints' HTML source and appends it to the urls as a parameter that can be used for a XSS payload

# Usage

`cat urls.txt | vaxser.sh`

# Output

![](https://i.imgur.com/YqbbLQU.png)

# Dependencies 

concurl (https://github.com/tomnomnom/concurl)

