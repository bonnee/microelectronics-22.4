
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_REG_NBIT5 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_REG_NBIT5;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT5.all;

entity FD_4 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_4;

architecture SYN_PLUTO of FD_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1000 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1000);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT5.all;

entity FD_3 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_PLUTO of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1001 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1001);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT5.all;

entity FD_2 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_PLUTO of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1002 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1002);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT5.all;

entity FD_1 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_PLUTO of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1003 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1003);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT5.all;

entity FD_0 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_PLUTO of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1004 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n1, Q => Q, QN => n_1004);
   U3 : INV_X1 port map( A => RESET, ZN => n1);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_REG_NBIT5.all;

entity REG_NBIT5 is

   port( D : in std_logic_vector (4 downto 0);  CK, RESET : in std_logic;  Q : 
         out std_logic_vector (4 downto 0));

end REG_NBIT5;

architecture SYN_async of REG_NBIT5 is

   component FD_1
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_4
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   FD_I_1 : FD_0 port map( D => D(0), CK => CK, RESET => RESET, Q => Q(0));
   FD_I_2 : FD_4 port map( D => D(1), CK => CK, RESET => RESET, Q => Q(1));
   FD_I_3 : FD_3 port map( D => D(2), CK => CK, RESET => RESET, Q => Q(2));
   FD_I_4 : FD_2 port map( D => D(3), CK => CK, RESET => RESET, Q => Q(3));
   FD_I_5 : FD_1 port map( D => D(4), CK => CK, RESET => RESET, Q => Q(4));

end SYN_async;
