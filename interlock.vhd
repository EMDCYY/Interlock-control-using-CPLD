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
	constant b3		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0011";
	constant b4		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0100";
	constant b5		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0101";
	constant b6		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0110";
	constant b7		:	STD_LOGIC_VECTOR(3 downto 0) :=	"0111";
	constant b8		:	STD_LOGIC_VECTOR(3 downto 0) :=	"1000";
	constant b9		:	STD_LOGIC_VECTOR(3 downto 0) :=	"1001";
	constant b10	:	STD_LOGIC_VECTOR(3 downto 0) :=	"1010";
	constant b11	:	STD_LOGIC_VECTOR(3 downto 0) :=	"1011";
	constant b12	:	STD_LOGIC_VECTOR(3 downto 0) :=	"1100";
	constant b13	:	STD_LOGIC_VECTOR(3 downto 0) :=	"1101";
	constant b14	:	STD_LOGIC_VECTOR(3 downto 0) :=	"1110";
	constant b15	:	STD_LOGIC_VECTOR(3 downto 0) :=	"1111";

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
--			case last is
--				when b0 => priority := "1111";
--				when others => priority := "0000";
--			end case;
			case dn is
				when b0 => return b0;
				when b1 => return b1;
				when b2 => return b2;
				
				when b3 => 
					case last is
						when b2 => return b2;
						when others => return b1;
					end case;	
				
				when b4 => return b4;
				
				when b5 => 
					case last is
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b6 => 
					case last is
						when b4 => return b4;
						when others => return b2;
					end case;
				
				when b7 => 
					case last is
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
				
				when b8 => return b8;				
				
				when b9 => 
					case last is
						when b8 => return b8;
						when others => return b1;
					end case;
					
				when b10 => 
					case last is
						when b8 => return b8;
						when others => return b2;
					end case;
					
				when b11 => 
					case last is
						when b8 => return b8;
						when b2 => return b2;
						when others => return b1;
					end case;
				
				when b12 => 
					case last is
						when b8 => return b8;
						when others => return b4;
					end case;
					
				when b13 => 
					case last is
						when b8 => return b8;
						when b4 => return b4;
						when others => return b1;
					end case;
					
				when b14 => 
					case last is
						when b8 => return b8;
						when b4 => return b4;
						when others => return b2;
					end case;
					
				when b15 => 
					case last is
						when b8 => return b8;
						when b4 => return b4;
						when b2 => return b2;
						when others => return b1;
					end case;
					
				when others => return b0;
			end case;
	end func_interlock;
	
begin

process(clk)
	begin
		if(clk'event and clk='1') then
			last_s1	<= func_interlock(d1, last_s1) and "1111";  
			s1			<= func_interlock(d1, last_s1) and "1111";
			last_s2	<= func_interlock(d2, last_s2) and "1111";
			s2			<= func_interlock(d2, last_s2) and "1111";
			last_s3	<= func_interlock(d3, last_s3) and "1111";
			s3			<= func_interlock(d3, last_s3) and "1111";
			last_s4	<= func_interlock(d4, last_s4) and "1111";
			s4			<= func_interlock(d4, last_s4) and "1111";
			last_s5	<= func_interlock(d5, last_s5) and "1111";
			s5			<= func_interlock(d5, last_s5) and "1111";
			last_s6	<= func_interlock(d6, last_s6) and "1111";
			s6			<= func_interlock(d6, last_s6) and "1111";
			last_s7	<= func_interlock(d7, last_s7) and "1111";
			s7			<= func_interlock(d7, last_s7) and "1111";
			last_s8	<= func_interlock(d8, last_s8) and "1111";
			s8			<= func_interlock(d8, last_s8) and "1111";
		end if;
end process;
	
end Behavioral;