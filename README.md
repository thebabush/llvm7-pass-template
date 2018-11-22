## At a glance ##

A step-by-step tutorial for building an out-of-source LLVM pass based on Adrian Sampson's "LLVM for Grad Students"

## Setup ##

LLVM is an umbrella project for building compilers and code transformation tools.
In this tutorial we'll build a trivial out-of-source LLVM pass.

We assume the system is running Ubuntu 18.04, has a recent version of CMake and
has a working compiler toolchain (GCC or LLVM).
This instructions should work on other Ubuntu versions without modification,
but that hasn't been tested by the author.

In order to install LLVM 7 without compiling it, head over to
[apt.llvm.org](https://apt.llvm.org/) and follow the instructions to add
LLVM's Ubuntu repository to your source list.

After that:

```sh
sudo apt update
sudo apt install clang-7
```

## Building the Pass ##

Run `./build.sh`.

This will basically create `./build/` and run cmake on it.

## Testing the Pass ##

Run `./test.sh`.

This will compile `./test/test.c` into human-readable LLVM IR, run the pass on
it and show the final IR.

You should also see the message `I saw a function called main!` at the
beginning of the output.

### Further resources

This tutorial is based on the following resources

- Adrian Sampson's blog entry "LLVM for Grad Students" ([link](http://adriansampson.net/blog/llvm.html))
- LLVM documentation: Writing an LLVM pass ([link](http://llvm.org/docs/WritingAnLLVMPass.html))
- LLVM documentation: Building LLVM with CMake ([link](http://llvm.org/docs/CMake.html#cmake-out-of-source-pass))

