library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity interlock is    
	Port (
			clk	:	in STD_LOGIC:='0';				
			d1,d2,d3,d4,d5,d6,d7,d8	:	in 	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
			s1,s2,s3,s4,s5,s6,s7,s8	:	out	STD_LOGIC_VECTOR(3 downto 0) := (others => '0')
			);
end interlock;
 
architecture Behavioral of interlock is

	constant b0		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0000";
	constant b1		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0001";
	constant b2		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0010";
	constant b3		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0100";
	constant b4		:	STD_LOGIC_VECTOR(3 downto 0) :=	"1000";
	
	signal start1	:	STD_LOGIC	:=	'0'; 
	signal last_1	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal start2	:	STD_LOGIC	:=	'0'; 
	signal last_2	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal start3	:	STD_LOGIC	:=	'0'; 
	signal last_3	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal start4	:	STD_LOGIC	:=	'0'; 
	signal last_4	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal start5	:	STD_LOGIC	:=	'0'; 
	signal last_5	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal start6	:	STD_LOGIC	:=	'0'; 
	signal last_6	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal start7	:	STD_LOGIC	:=	'0'; 
	signal last_7	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal start8	:	STD_LOGIC	:=	'0'; 
	signal last_8	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	
	

	function func_interlock
		(
			dn:in STD_LOGIC_VECTOR(3 downto 0);
			signal last: STD_LOGIC_VECTOR(3 downto 0)
		) 
			return STD_LOGIC_VECTOR is
			variable priority : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
		begin			
			case last is
				when b0 => priority := "1111";
				when others => priority := "0000";
			end case;
			case dn is
				when b0 => return b0;
				when b1 => return b1;
				when b2 => return b2;
				when b3 => return b3;
				when b4 => return b4;
				when others => return b1 and priority + last;
			end case;
	end func_interlock;
	
	
begin

--Group 1
process(clk)
	begin
		if(clk'event and clk='1') then
			case last_1 is
				when b0 => priority <= "1111";
				when others => priority <= "0000";
			end case;
			case d1 is
				when b0 => last_1 <= b0;
				when b1 => last_1 <= b1;
				when b2 => last_1 <= b2;
				when b3 => last_1 <= b3;
				when b4 => last_1 <= b4;
				when others => last_1 <= b1 and priority + last_1;
			end case;
			s1	<= last_1;				
		end if;
end process;
	
--Group 2
process(clk)
	begin
		if(clk'event and clk='1') then
			if (start2 = '0' and last_2 = b0) then
				case d2 is
					when b0 => last_2 <= b0;
					when b1 => last_2 <= b1;
					when b2 => last_2 <= b2;
					when b3 => last_2 <= b3;
					when b4 => last_2 <= b4;
					when others => last_2 <= b1;
				end case;
				s2	<= last_2;
			else			
				case d2 is
					when b0 => last_2 <= b0;
					when b1 => last_2 <= b1;
					when b2 => last_2 <= b2;
					when b3 => last_2 <= b3;
					when b4 => last_2 <= b4;
					when others => last_2 <= last_2;
				end case;
				s2	<= last_2;
				start2 <= '1';
			end if;				
		end if;
end process;

--Group 3	
process(clk)
	begin
		if(clk'event and clk='1') then
			if (start3 = '0' and last_3 = b0) then
				case d3 is
					when b0 => last_3 <= b0;
					when b1 => last_3 <= b1;
					when b2 => last_3 <= b2;
					when b3 => last_3 <= b3;
					when b4 => last_3 <= b4;
					when others => last_3 <= b1;
				end case;
				s3	<= last_3;
			else			
				case d3 is
					when b0 => last_3 <= b0;
					when b1 => last_3 <= b1;
					when b2 => last_3 <= b2;
					when b3 => last_3 <= b3;
					when b4 => last_3 <= b4;
					when others => last_3 <= last_3;
				end case;
				s3	<= last_3;
				start3 <= '1';
			end if;				
		end if;
end process;
	
--Group 4
process(clk)
	begin
		if(clk'event and clk='1') then
			if (start4 = '0' and last_4 = b0) then
				case d4 is
					when b0 => last_4 <= b0;
					when b1 => last_4 <= b1;
					when b2 => last_4 <= b2;
					when b3 => last_4 <= b3;
					when b4 => last_4 <= b4;
					when others => last_4 <= b1;
				end case;
				s4	<= last_4;
			else			
				case d4 is
					when b0 => last_4 <= b0;
					when b1 => last_4 <= b1;
					when b2 => last_4 <= b2;
					when b3 => last_4 <= b3;
					when b4 => last_4 <= b4;
					when others => last_4 <= last_4;
				end case;
				s4	<= last_4;
				start4 <= '1';
			end if;				
		end if;
end process;

--Group 5	
process(clk)
	begin
		if(clk'event and clk='1') then
			if (start5 = '0' and last_5 = b0) then
				case d5 is
					when b0 => last_5 <= b0;
					when b1 => last_5 <= b1;
					when b2 => last_5 <= b2;
					when b3 => last_5 <= b3;
					when b4 => last_5 <= b4;
					when others => last_5 <= b1;
				end case;
				s5	<= last_5;
			else			
				case d5 is
					when b0 => last_5 <= b0;
					when b1 => last_5 <= b1;
					when b2 => last_5 <= b2;
					when b3 => last_5 <= b3;
					when b4 => last_5 <= b4;
					when others => last_5 <= last_5;
				end case;
				s5	<= last_5;
				start5 <= '1';
			end if;				
		end if;
end process;

--Group 6	
process(clk)
	begin
		if(clk'event and clk='1') then
			if (start6 = '0' and last_6 = b0) then
				case d6 is
					when b0 => last_6 <= b0;
					when b1 => last_6 <= b1;
					when b2 => last_6 <= b2;
					when b3 => last_6 <= b3;
					when b4 => last_6 <= b4;
					when others => last_6 <= b1;
				end case;
				s6	<= last_6;
			else			
				case d6 is
					when b0 => last_6 <= b0;
					when b1 => last_6 <= b1;
					when b2 => last_6 <= b2;
					when b3 => last_6 <= b3;
					when b4 => last_6 <= b4;
					when others => last_6 <= last_6;
				end case;
				s6	<= last_6;
				start6 <= '1';
			end if;				
		end if;
end process;

--Group 7	
process(clk)
	begin
		if(clk'event and clk='1') then
			if (start7 = '0' and last_7 = b0) then
				case d1 is
					when b0 => last_7 <= b0;
					when b1 => last_7 <= b1;
					when b2 => last_7 <= b2;
					when b3 => last_7 <= b3;
					when b4 => last_7 <= b4;
					when others => last_7 <= b1;
				end case;
				s7	<= last_7;
			else			
				case d1 is
					when b0 => last_7 <= b0;
					when b1 => last_7 <= b1;
					when b2 => last_7 <= b2;
					when b3 => last_7 <= b3;
					when b4 => last_7 <= b4;
					when others => last_7 <= last_7;
				end case;
				s7	<= last_7;
				start7 <= '1';
			end if;				
		end if;
end process;

--Group 8	
process(clk)
	begin
		if(clk'event and clk='1') then
			if (start8 = '0' and last_8 = b0) then
				case d8 is
					when b0 => last_8 <= b0;
					when b1 => last_8 <= b1;
					when b2 => last_8 <= b2;
					when b3 => last_8 <= b3;
					when b4 => last_8 <= b4;
					when others => last_8 <= b1;
				end case;
				s8	<= last_8;
			else			
				case d8 is
					when b0 => last_8 <= b0;
					when b1 => last_8 <= b1;
					when b2 => last_8 <= b2;
					when b3 => last_8 <= b3;
					when b4 => last_8 <= b4;
					when others => last_8 <= last_8;
				end case;
				s8	<= last_8;
				start8 <= '1';
			end if;				
		end if;
end process;
 
end Behavioral;