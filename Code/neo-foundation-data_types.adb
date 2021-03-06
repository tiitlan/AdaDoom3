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
package body Neo.Foundation.Data_Types
  is
  ----------------------
  -- Protected_Status --
  ----------------------
    protected body Protected_Status
      is
        function Is_Doing_Something
          return Boolean
          is
          begin
            return Status;
          end Is_Doing_Something;
        procedure Set_Is_Doing_Something(
          New_Status : in Boolean)
          is
          begin
            Status := New_Status;
          end Set_Is_Doing_Something;
      end Protected_Status;
  -----------------------------
  -- Is_Low_Order_Byte_First --
  -----------------------------
    function Is_Low_Order_Byte_First
      return Boolean
      is
      begin
        return DOES_MACHINE_ORDER_LOW_BYTE_FIRST;
      end Is_Low_Order_Byte_First;
  ------------------------------
  -- Is_High_Order_Byte_First --
  ------------------------------
    function Is_High_Order_Byte_First
      return Boolean
      is
      begin
        return not Is_Low_Order_Byte_First;
      end Is_High_Order_Byte_First;
  -----------------------------
  -- To_Access_Character_1_C --
  -----------------------------
    function To_Access_Character_1_C(
      Item : in String_1_C)
      return Access_Character_1_C
      is
      begin
        return To_Unchecked_Access_Character_1_C(Item(Item'First)'Address);
      end To_Access_Character_1_C;
  -----------------------------
  -- To_Access_Character_2_C --
  -----------------------------
    function To_Access_Character_2_C(
      Item : in String_2)
      return Access_Character_2_C
      is
      begin
        return To_Unchecked_Access_Character_2_C(To_String_2_C(Item)'Address);
      end To_Access_Character_2_C;
  --------------------------------------
  -- To_Access_Constant_Character_2_C --
  --------------------------------------
    function To_Access_Constant_Character_2_C(
      Item : in String_2_C)
      return Access_Constant_Character_2_C
      is
      begin
        return To_Unchecked_Access_Constant_Character_2_C(Item(Item'First)'Address);
      end To_Access_Constant_Character_2_C;
    function To_Access_Constant_Character_2_C(
      Item : in String_2)
      return Access_Constant_Character_2_C
      is
      begin
        return To_Access_Constant_Character_2_C(To_C(Item));
      end To_Access_Constant_Character_2_C;
  --------------------------------------
  -- To_Access_Constant_Character_1_C --
  --------------------------------------
    function To_Access_Constant_Character_1_C2(
      Item : in String_1_C)
      return Access_Constant_Character_1_C
      is
      begin
        return To_Unchecked_Access_Constant_Character_1_C(Item(Item'First)'Address);
      end To_Access_Constant_Character_1_C2;
    function To_Access_Constant_Character_1_C(
      Item : in String_1)
      return Access_Constant_Character_1_C
      is
      begin
        return To_Access_Constant_Character_1_C2(To_C(Item));
      end To_Access_Constant_Character_1_C;
  -------------------
  -- To_String_1_C --
  -------------------
    function To_String_1_C(
      Item : in String_1)
      return String_1_C
      is
      begin
        return To_C(Item);
      end To_String_1_C;
    function To_String_1_C(
      Item : in String_2)
      return String_1_C
      is
      begin
        return To_C("");--To_String_1(Item));
      end To_String_1_C;
  -----------------
  -- To_String_1 --
  -----------------
    function To_String_1(
      Item : in String_1_C)
      return String_1
      is
      begin
        return "";
      end To_String_1;
    function To_String_1(
      Item : in String_2)
      return String_1
      is
      begin
        return "";
      end To_String_1;
  -------------------
  -- To_String_2_C --
  -------------------
    function To_String_2_C(
      Item : in String_1_C)
      return String_2_C
      is
      Result : String_2_C(1..Item'length) := (others => NULL_CHARACTER_2_C);
      begin
        for I in Result'range loop
          Result(I) := Character_2_C'val(Character_1_C'pos(Item(I)));
        end loop;
        return Result;
      end To_String_2_C;
    function To_String_2_C(
      Item : in String_2)
      return String_2_C
      is
      begin
        return To_C(Item & NULL_CHARACTER_2);
      end To_String_2_C;
  -----------------
  -- To_String_2 --
  -----------------
    function To_String_2(
      Item : in String_1_C)
      return String_2
      is
      begin
        return To_String_2(To_String_2_C(Item));
      end To_String_2;
    function To_String_2(
      Item : in String_2_C)
      return String_2
      is
      Last : Integer_Size_C := 1;
      begin
        for I in 1..Item'last loop
          if Item(Integer_Size_C(I)) = NULL_CHARACTER_2_C then
            if I = 1 then
              raise C_String_Is_Empty;
            end if;
            Last := I;
            exit;
          end if;
          if I = Item'last then
            raise C_String_Is_Not_Null_Terminated;
          end if;
        end loop;
        --------------
        Create_Result:
        --------------
          declare
          Result : String_2(1..Item'length - 1) := (others => NULL_CHARACTER_2);
          begin
            for I in Result'range loop
              Result(I) := Character_2'val(Character_2_C'pos(Item(Integer_Size_C(I))));
            end loop;
            return Result;
          end Create_Result;
      end To_String_2;
    function To_String_2(
      Item : in String_1)
      return String_2
      is
      Result : String_2(Item'First..Item'Last) := (others => Character_2'Val(0));
      begin
        for I in Item'Range loop
          Result(I) := Character_2'Val(Character_1'Pos(Item(I)));
        end loop;
        return Result;
      end To_String_2;
    function To_String_2(
      Item : in Access_Constant_Character_2_C)
      return String_2
      is
      Length  : Integer_4_Signed              := 0;
      Pointer : Access_Constant_Character_2_C := Item;
      begin
        while Pointer.all /= Character_2_C'Val(0) loop
          Length  := Length + 1;
          Pointer :=
            To_Unchecked_Access_Constant_Character_2_C(
              To_Unchecked_Address(
                To_Unchecked_Integer_Address(Pointer) + Character_2_C'Size / Byte'Size));
        end loop;
        --------------
        Create_Result:
        --------------
          declare
          Result : String_2(1..Length) := (others => Character_2'Val(0));
          begin
            Pointer := Item;
            for I in 1..Result'Length loop
              Result(I) := Character_2(Pointer.All);
              Pointer   :=
                To_Unchecked_Access_Constant_Character_2_C(
                  To_Unchecked_Address(
                    To_Unchecked_Integer_Address(Pointer) + Character_2_C'Size / Byte'Size));
            end loop;
            return Result;
          end Create_Result;
      end To_String_2;
  -------------
  -- To_Bits --
  -------------
    -- function To_Bits(
    --   Number        : in Float_4_Real;
    --   Exponent_Bits : in Integer_4_Positive;
    --   Mantissa_Bits : in Integer_4_Positive)
    --   return Integer_4_Unsigned
    --   is
    --   pragma Assert(
    --     Exponent_Bits >= 2 and Exponent_Bits <= 8 and
    --     Mantissa_Bits >= 2 and Mantissa_Bits <= 23,
    --     "Parameters don't fit required specification.");
    --   Maximum_Bits : Integer_4_Unsigned := Shift_Left(Shift_Left(1, Exponent_Bits - 1) - 1, Mantissa_Bits) or (Shift_Left(1, Mantissa_Bits) - 1);
    --   Minimum_Bits : Integer_4_Unsigned := Shift_Left(Shift_Left(1, Exponent_Bits)     - 2, Mantissa_Bits) or 1;
    --   begin
  end Neo.Foundation.Data_Types;


