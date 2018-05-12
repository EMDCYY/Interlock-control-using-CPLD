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

	signal last_s1	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal last_s2	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal last_s3	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal last_s4	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal last_s5	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal last_s6	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal last_s7	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal last_s8	:	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

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

process(clk)
	begin
		if(clk'event and clk='1') then
			last_s1 <= func_interlock(d1, last_s1);  s1<= last_s1 and "1111";
			last_s2 <= func_interlock(d2, last_s2);  s2<= last_s2 and "1111";
			last_s3 <= func_interlock(d3, last_s3);  s3<= last_s3 and "1111";
			last_s4 <= func_interlock(d4, last_s4);  s4<= last_s4 and "1111";
			last_s5 <= func_interlock(d5, last_s5);  s5<= last_s5 and "1111";
			last_s6 <= func_interlock(d6, last_s6);  s6<= last_s6 and "1111";
			last_s7 <= func_interlock(d7, last_s7);  s7<= last_s7 and "1111";
			last_s8 <= func_interlock(d8, last_s8);  s8<= last_s8 and "1111";
		end if;
end process;
	
end Behavioral;