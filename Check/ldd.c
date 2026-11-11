#include <linux/init.h>
#include <linux/module.h>
MODULE_LICENSE("GPL"); 

MODULE_AUTHOR("smwalihaiderzaidi-code WALI");

MODULE_DESCRIPTION  ("Our first dynamically loadable kernel module"); //!


static int my_module_init (void) 
{
    printk( "Hello, World! (from Wali!!) \n");
return 0;
}

static void my_module_exit (void)
{
    printk("Good, Bye! (from Wali!!)\n");
}

module_init (my_module_init);
module_exit (my_module_exit);
