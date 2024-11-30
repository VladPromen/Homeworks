program qwerty;
var x, y, xl, yl, xn, yn, q: integer;
begin
  while q>=0 do begin
    if q mod 2=0 then begin
      xl:=xn;
      readln(xn);
    end
    else begin
      yl:=yn;
      readln(yn);
    end;
    if ((x mod 2=0) or (y mod 2=0)) and not ((x=0) and (x=0)) then begin   
      if (((abs(x)=abs(y)) and (x>=y)) or (y-2=-x)) and (((x<0) and (xn=0)) or ((x>0) and (xn=1))) and (((y<0) and (yn=0)) or ((y>0) and (yn=1))) then
        if (q mod 2=0) and (xn=xl) then break
        else if (q mod 2=1) and (yn=yl) then break;
      if ((abs(x)>abs(y)) or (((y=-x) or (1-x=y)) and (x<0))) and (x mod 2=0) and (xn=xl) and (q mod 2=0) then break
      else if (abs(x)<abs(y)) and (y mod 2=0) and not ((x=1-y) or ((x=0) and (y=2))) and (yn=yl) and (q mod 2=1) then break;
    end;
    if q mod 2=0 then
      if xn=1 then x:=x+1 
      else x:=x-1
    else 
      if yn=1 then y:=y+1 
      else y:=y-1;
    q:=q+1;
  end;
end.