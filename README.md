# Honours Project: Ada RISC-V Minimal Runtime

This repository contains the code for my honours project, wherein we can run a minimal Ada runtime, emulated on a RISC-V soft-SoC running on Renode and generated using Litex.

## Dependencies
Both Renode, and the Ada packge manager Alire need to be installed in order to run this project. Instructions can be found at the below links. Additionally, LiteX can be optionally installed if you want to edit the included soft-SoC.

Required:  
https://github.com/renode/renode/blob/master/README.md#installation.  
https://github.com/alire-project/alire/blob/master/doc/getting-started.md

Optional:  
https://github.com/enjoy-digital/litex/wiki/Installation


## Compiling the Examples

To compile all the example programs, run the following from within the container:

  ```
  $ cd ~/jtakefman_honours_project_300171459
  $ alr build
  ```


## Running the Examples

After you have compiled the examples, you can run them on Renode using the instructions below.

### Running Blinky

From within the container, invoke renode:

  ```
  $ cd ~/jtakefman_honours_project_300171459/src/blinky
  $ renode vexriscv.resc
  ```

You will see the LED state changing back and forth in the console.
