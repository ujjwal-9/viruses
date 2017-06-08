## Function of Virus

This is a silent running resource starvation script.


A resource starvation attack, also known as a disk space attack, is one in which an attacker is able to consume a particular resource until it is exhausted. For example, an attacker might continuously issue requests to your Web site to create baskets or create users. If this occurs, you will run out of disk capacity.

To mitigate resource starvation attacks that use baskets, use a stored procedure to purge idle baskets, and run this using the SQL task scheduler, as shown in the following pseudo-code:

```
while (select outdated baskets not end of file)
    delete top 20 outdated baskets
end while
```

This procedure is done in a loop, and you delete only the top 20 outdated baskets to prevent locking up the baskets table. If this occurs, other transactions become blocked, and your SQL server will consequently crash.

### Credits
This resource is from microsoft website [this](https://msdn.microsoft.com/en-us/library/ee798408(v=cs.20).aspx)