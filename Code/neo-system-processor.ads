--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
with
  Interfaces,
  System,
  System.Multiprocessors,
  Neo.Foundation.Data_Types,
  Neo.Foundation.Package_Testing;
use
  Interfaces,
  System,
  System.Multiprocessors,
  Neo.Foundation.Data_Types,
  Neo.Foundation.Package_Testing;
package Neo.System.Processor
  is
  ----------------
  -- Exceptions --
  ----------------
    Invalid_Operation    : Exception;
    Denormalized_Operand : Exception;
    Divide_By_Zero       : Exception;
    Numeric_Overflow     : Exception;
    Numeric_Underflow    : Exception;
    Inexact_Result       : Exception;
    Stack_Fault          : Exception;
  ------------------
  -- Enumerations --
  ------------------
    type Enumerated_Vendor
      is(
      Generic_Vendor,
      ARM_Licenced_Vendor,
      Intel_Vendor,
      Apple_IBM_Motorola_Vendor,
      Advanced_Micro_Devices_Vendor);
    type Enumerated_Precision
      is(
      Single_Precision,           -- 24 bits
      Double_Precision,           -- 53 bits
      Double_Extended_Precision); -- 64 bits
    type Enumerated_Rounding
      is(
      Up_Rounding,
      Down_Rounding,
      Nearest_Rounding,
      Truncate_Rounding);
  -------------
  -- Records --
  -------------
    type Record_Specifics(
      Vendor : Enumerated_Vendor)
      is record
        case Vendor is
          when ARM_Licenced_Vendor =>
            Has_NEON                                       : Boolean := False;
            Has_Vector_Floating_Point                      : Boolean := False;
          when Apple_IBM_Motorola_Vendor =>
            Has_Vector_Multimedia_Instructions             : Boolean := False;
            Has_Vector_Scalar_Instructions                 : Boolean := False;
            Has_Altivec_Additional_Registers               : Boolean := False;
            Has_Altivec                                    : Boolean := False;
          when Intel_Vendor | Advanced_Micro_Devices_Vendor =>
            Has_Multi_Media_Extensions                     : Boolean := False;
            Has_Streaming_SIMD_Extensions_1                : Boolean := False;
            Has_Streaming_SIMD_Extensions_2                : Boolean := False;
            Has_Streaming_SIMD_Extensions_3                : Boolean := False;
            Has_Streaming_SIMD_Extensions_3_Supplement     : Boolean := False;
            Has_Streaming_SIMD_Extensions_4_1              : Boolean := False;
            Has_Streaming_SIMD_Extensions_4_2              : Boolean := False;
            Has_Carryless_Multiplication_Of_Two_64_Bit     : Boolean := False;
            Has_Advanced_Vector_Extensions_Enabled         : Boolean := False;
            Has_Advanced_Vector_Extensions_1               : Boolean := False;
            Has_Advanced_Vector_Extensions_2               : Boolean := False;
            Has_Advanced_Encryption_Service                : Boolean := False;
            Has_Advanced_State_Operations                  : Boolean := False;
            Has_Bit_Manipulation_Extensions_1              : Boolean := False;
            Has_Bit_Manipulation_Extensions_2              : Boolean := False;
            Has_Fused_Multiply_Add_3                       : Boolean := False;
            Has_Fused_Multiply_Add_4                       : Boolean := False;
            Has_Hyperthreading                             : Boolean := False;
            Has_High_Precision_Convert                     : Boolean := False;
            Has_Half_Precision_Floating_Point_Convert      : Boolean := False;
            Has_Extended_States_Enabled                    : Boolean := False;
            Has_Population_Count                           : Boolean := False;
            Has_Context_ID_Manager                         : Boolean := False;
            Has_Conditional_Move                           : Boolean := False;
            Has_Leading_Zero_Count                         : Boolean := False;
            Has_Extended_Operation_Support                 : Boolean := False;
            case Vendor is
              when Advanced_Micro_Devices_Vendor =>
                Has_Streaming_SIMD_Extensions_4_Supplement : Boolean := False;
                Has_3DNow                                  : Boolean := False;
                Has_3DNow_Supplement                       : Boolean := False;
                Has_Multi_Media_Extensions_Supplement      : Boolean := False;
              when others =>
                null;
            end case;
          when others =>
            null;
        end case;
      end record;
  -----------------
  -- Subprograms --
  -----------------
    procedure Initialize;
    procedure Test;
    procedure Check_Exceptions;
    procedure Clear_Stack;
    function Is_Stack_Empty
      return Boolean;
    procedure Put_Stack;
    procedure Put_Trace;
    procedure Set_Rounding(
      Rounding : in Enumerated_Rounding);
    procedure Set_Precision(
      Precision : in Enumerated_Precision);
    function Get_Number_Of_Cores
      return Integer_8_Unsigned;
    function Get_Speed_In_Megahertz
      return Integer_8_Unsigned;
    function Get_Vendor
      return Enumerated_Vendor;
    function Get_Specifics
      return Record_Specifics;
    function Get_Clock_Ticks
      return Integer_8_Unsigned;
    function Compare_And_Exchange(
      Destination : out Integer_4_Unsigned;
      Comparand   : in  Integer_4_Unsigned;
      Item        : in  Integer_4_Unsigned)
      return Integer_4_Unsigned;
-------
private
-------
  ---------------
  -- Constants --
  ---------------
    DELAY_FOR_PROCESSOR_SPEED_TIMING : constant Duration         := 0.1;
    TRACE_LIMIT                      : constant Integer_4_Signed := 1_000;
  --------------------
  -- Implementation --
  --------------------
    package Implementation_For_Compiler
      is
        procedure Put_Trace;
      end Implementation_For_Compiler;
    package Implementation_For_Operating_System
      is
        function Get_Clock_Ticks
          return Integer_8_Unsigned;
        function Get_Number_of_Cores
          return Integer_8_Unsigned;
        function Get_Speed_In_Megahertz
          return Integer_8_Unsigned;
      end Implementation_For_Operating_System;
    package Implementation_For_Architecture
      is
        procedure Initialize;
        function Get_Vendor
          return Enumerated_Vendor;
        function Get_Specifics
          return Record_Specifics;
        function Get_Number_of_Cores
          return Integer_8_Unsigned;
        procedure Check_Exceptions;
        procedure Set_Rounding(
          Rounding : in Enumerated_Rounding);
        procedure Set_Precision(
          Precision : in Enumerated_Precision);
        function Get_Clock_Ticks
          return Integer_8_Unsigned;
        procedure Put_Stack;
        procedure Put_Trace;
        function Is_Stack_Empty
          return Boolean;
        procedure Clear_Stack;
        function Compare_And_Exchange(
          Destination : out Integer_4_Unsigned;
          Comparand   : in  Integer_4_Unsigned;
          Item        : in  Integer_4_Unsigned)
          return Integer_4_Unsigned;
      end Implementation_For_Architecture;
  end Neo.System.Processor;

