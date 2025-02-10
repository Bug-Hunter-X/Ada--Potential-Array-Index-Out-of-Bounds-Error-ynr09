```ada
procedure Example_Safe is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in Arr'Range loop
      -- Explicitly check array bounds
      if I in Arr'Range then
         if Arr(I) > 5 then
            Put_Line("Value greater than 5: " & Arr(I)'Img);
         end if;
      else
         Put_Line("Index out of bounds");
      end if;
   end loop;
end Example_Safe;
```