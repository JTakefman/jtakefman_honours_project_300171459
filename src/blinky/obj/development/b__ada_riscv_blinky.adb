pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__ada_riscv_blinky.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__ada_riscv_blinky.adb");
pragma Suppress (Overflow_Check);

package body ada_main is



   procedure adainit is
   begin
      null;

   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_ada_riscv_blinky");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /home/jordan-takefman/dev/honours_project_ada/minimal_test/ada_riscv_renode/src/blinky/obj/development/ada_riscv_blinky.o
   --   -L/home/jordan-takefman/dev/honours_project_ada/minimal_test/ada_riscv_renode/src/blinky/obj/development/
   --   -L/home/jordan-takefman/dev/honours_project_ada/minimal_test/ada_riscv_renode/src/blinky/obj/development/
   --   -L/home/jordan-takefman/.local/share/alire/toolchains/gnat_riscv64_elf_13.2.1_938f208c/riscv64-elf/lib/gnat/light-rv32i/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
