# Lab 2: Slávek Rylich

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![image](https://user-images.githubusercontent.com/124887798/220182534-9854779a-64fc-4dba-bcb0-ff822e3272da.png)

   Less than:

   ![image](https://user-images.githubusercontent.com/124887798/220182575-1536d086-4220-4d46-b67d-8c4a1eec617a.png)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![image](https://user-images.githubusercontent.com/124887798/220182696-4b1ad189-884c-4f09-b2cd-2e0fe59f6c9f.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx84**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started";

        -- BCD ID student test case ...
        s_b <= "1000"; s_a <= "0100"; wait for 100 ns;
        -- ... and its expected outputs
        assert (( s_B_greater_A = '1') and
                ( s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If true, then do not report anything
        -- If false, then report the following error
        report "Input combination b=8, a=4 FAILED" severity error;
        
        

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   [[https://www.edaplayground.com/...](https://www.edaplayground.com/...)](https://www.edaplayground.com/x/vtZE)
