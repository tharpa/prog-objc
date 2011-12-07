// First program example

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  
  __block int foo = 10;

  void (^printFoo)(void) = ^(void) {
    NSLog(@"foo = %i", foo);
    foo = 20;
  };

  foo = 15;
  
  printFoo();
  NSLog(@"foo = %i", foo);

  [pool drain];
  return 0;
}
