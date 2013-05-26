pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~main.adb");
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E089 : Short_Integer; pragma Import (Ada, E089, "system__stack_usage_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__soft_links_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "system__fat_llf_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exception_table_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "ada__io_exceptions_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "ada__strings_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "ada__strings__maps_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "ada__tags_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__streams_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "interfaces__c_E");
   E069 : Short_Integer; pragma Import (Ada, E069, "interfaces__c__strings_E");
   E033 : Short_Integer; pragma Import (Ada, E033, "system__exceptions_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "system__task_info_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "ada__calendar_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "ada__calendar__delays_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__secondary_stack_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "system__finalization_root_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "ada__finalization_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__storage_pools_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "system__finalization_masters_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "system__storage_pools__subpools_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "ada__strings__wide_maps_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "ada__strings__wide_unbounded_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "system__os_lib_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "system__pool_global_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "system__file_control_block_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "ada__wide_text_io_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "system__file_io_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "system__tasking__protected_objects_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "ada__text_io_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "neo__foundation__data_types_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "neo__foundation__text_io_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "neo__foundation__package_testing_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "neo__system_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "neo__system__memory_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "neo__system__processor_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "neo__system__text_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "neo__windows_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
      LE_Set : Boolean;
      pragma Import (Ada, LE_Set, "__gnat_library_exception_set");
   begin
      E165 := E165 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "neo__foundation__text_io__finalize_spec");
      begin
         F1;
      end;
      E147 := E147 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ada__text_io__finalize_spec");
      begin
         F2;
      end;
      E192 := E192 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__file_io__finalize_body");
      begin
         E151 := E151 - 1;
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__wide_text_io__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__file_control_block__finalize_spec");
      begin
         E157 := E157 - 1;
         F5;
      end;
      E159 := E159 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__pool_global__finalize_spec");
      begin
         F6;
      end;
      E183 := E183 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "ada__strings__wide_unbounded__finalize_spec");
      begin
         F7;
      end;
      E125 := E125 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "ada__strings__wide_maps__finalize_spec");
      begin
         F8;
      end;
      E127 := E127 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__storage_pools__subpools__finalize_spec");
      begin
         F9;
      end;
      E131 := E131 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__finalization_masters__finalize_spec");
      begin
         F10;
      end;
      E138 := E138 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "system__finalization_root__finalize_spec");
      begin
         F11;
      end;
      if LE_Set then
         declare
            LE : Ada.Exceptions.Exception_Occurrence;
            pragma Import (Ada, LE, "__gnat_library_exception");
            procedure Raise_From_Controlled_Operation (X : Ada.Exceptions.Exception_Occurrence);
            pragma Import (Ada, Raise_From_Controlled_Operation, "__gnat_raise_from_controlled_operation");
         begin
            Raise_From_Controlled_Operation (LE);
         end;
      end if;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Zero_Cost_Exceptions : Integer;
      pragma Import (C, Zero_Cost_Exceptions, "__gl_zero_cost_exceptions");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Zero_Cost_Exceptions := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      Finalize_Library_Objects := finalize_library'access;

      System.Stack_Usage'Elab_Spec;
      E089 := E089 + 1;
      System.Soft_Links'Elab_Spec;
      System.Fat_Llf'Elab_Spec;
      E203 := E203 + 1;
      System.Exception_Table'Elab_Body;
      E027 := E027 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E143 := E143 + 1;
      Ada.Strings'Elab_Spec;
      E111 := E111 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E136 := E136 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E033 := E033 + 1;
      System.Task_Info'Elab_Spec;
      E085 := E085 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E210 := E210 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E208 := E208 + 1;
      E069 := E069 + 1;
      E067 := E067 + 1;
      Ada.Tags'Elab_Body;
      E009 := E009 + 1;
      E115 := E115 + 1;
      System.Soft_Links'Elab_Body;
      E017 := E017 + 1;
      System.Secondary_Stack'Elab_Body;
      E021 := E021 + 1;
      System.Finalization_Root'Elab_Spec;
      E138 := E138 + 1;
      Ada.Finalization'Elab_Spec;
      E135 := E135 + 1;
      System.Storage_Pools'Elab_Spec;
      E140 := E140 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E131 := E131 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E127 := E127 + 1;
      Ada.Strings.Wide_Maps'Elab_Spec;
      E125 := E125 + 1;
      Ada.Strings.Wide_Unbounded'Elab_Spec;
      E183 := E183 + 1;
      System.Os_Lib'Elab_Body;
      E154 := E154 + 1;
      System.Pool_Global'Elab_Spec;
      E159 := E159 + 1;
      System.File_Control_Block'Elab_Spec;
      E157 := E157 + 1;
      Ada.Wide_Text_Io'Elab_Spec;
      System.File_Io'Elab_Body;
      E151 := E151 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E059 := E059 + 1;
      Ada.Wide_Text_Io'Elab_Body;
      E192 := E192 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E147 := E147 + 1;
      Neo.Foundation.Data_Types'Elab_Spec;
      E007 := E007 + 1;
      Neo.Foundation.Text_Io'Elab_Spec;
      E165 := E165 + 1;
      Neo.Foundation.Package_Testing'Elab_Spec;
      E163 := E163 + 1;
      Neo.System'Elab_Spec;
      Neo.System.Processor'Elab_Spec;
      E196 := E196 + 1;
      E219 := E219 + 1;
      Neo.System.Processor'Elab_Body;
      E206 := E206 + 1;
      Neo.System.Memory'Elab_Body;
      E200 := E200 + 1;
      E194 := E194 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   .\neo.o
   --   .\neo-foundation.o
   --   .\neo-foundation-data_types.o
   --   .\neo-foundation-text_io.o
   --   .\neo-foundation-package_testing.o
   --   .\main.o
   --   .\neo-windows.o
   --   .\neo-system-text.o
   --   .\neo-system-processor.o
   --   .\neo-system-memory.o
   --   .\neo-system.o
   --   -L.\
   --   -L./Windows\
   --   -L./x86-64\
   --   -L./GNAT\
   --   -LC:/MinGW/lib/gcc/mingw32/4.7.2/adalib/
   --   -lgdi32
   --   -lhid
   --   -lsetupapi
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
