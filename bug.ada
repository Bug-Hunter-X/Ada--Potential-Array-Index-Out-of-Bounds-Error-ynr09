```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in Arr'Range loop
      -- This will cause an error if Arr is not initialized.
      -- Ada does not perform automatic bounds checking for array indexing
      if Arr(I) > 5 then
         Put_Line("Value greater than 5: " & Arr(I)'Img);
      end if;
   end loop;
end Example;
```