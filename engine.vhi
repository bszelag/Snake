
-- VHDL Instantiation Created from source file engine.vhd -- 12:45:29 03/31/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT engine
	PORT(
		Clk : IN std_logic;
		Clk_50 : IN std_logic;
		DI : IN std_logic_vector(1 downto 0);
		D_Type : IN std_logic_vector(1 downto 0);
		DI_Rdy : IN std_logic;
		X : IN std_logic_vector(5 downto 0);
		Y : IN std_logic_vector(5 downto 0);
		pixelX : IN std_logic_vector(9 downto 0);
		pixelY : IN std_logic_vector(9 downto 0);
		dataInArray : IN std_logic_vector(12 downto 0);          
		XMem : OUT std_logic_vector(5 downto 0);
		YMem : OUT std_logic_vector(5 downto 0);
		RGB : OUT std_logic_vector(2 downto 0);
		dataOutArray : OUT std_logic_vector(12 downto 0);
		writeMem : OUT std_logic;
		outPointsA : OUT std_logic_vector(13 downto 0);
		outPointsB : OUT std_logic_vector(13 downto 0);
		Start : OUT std_logic
		);
	END COMPONENT;

	Inst_engine: engine PORT MAP(
		Clk => ,
		Clk_50 => ,
		DI => ,
		D_Type => ,
		DI_Rdy => ,
		X => ,
		Y => ,
		XMem => ,
		YMem => ,
		pixelX => ,
		pixelY => ,
		RGB => ,
		dataInArray => ,
		dataOutArray => ,
		writeMem => ,
		outPointsA => ,
		outPointsB => ,
		Start => 
	);


