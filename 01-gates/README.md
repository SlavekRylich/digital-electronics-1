# Lab 1: Slavek Rylich

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![gates01 - three equations](https://user-images.githubusercontent.com/124887798/218251952-ce429484-83eb-4b8f-93be-978548c79bab.jpg)


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
    f_orig_o <= (not(b_i) and a_i) or (c_i and not(b_i or not(a_i)));
    f_nand_o <= (not( not( not(b_i) and a_i) and not(c_i and (not(b_i) and a_i))));
    f_nor_o  <= ( not(b_i or not(a_i)) or not(not(c_i) or (b_i or not(a_i))));
end architecture dataflow;
```

3. Complete table with logic functions' values:

   | **c** | **b** |**a** | **f_ORIG** | **f_(N)AND** | **f_(N)OR** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 | 0 | 0 | 0 | 0 |
   | 0 | 0 | 1 | 1 | 1 | 1 |
   | 0 | 1 | 0 | 0 | 0 | 0 |
   | 0 | 1 | 1 | 0 | 0 | 0 |
   | 1 | 0 | 0 | 0 | 0 | 0 |
   | 1 | 0 | 1 | 1 | 1 | 1 |
   | 1 | 1 | 0 | 0 | 0 | 0 |
   | 1 | 1 | 1 | 0 | 0 | 0 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![image](https://user-images.githubusercontent.com/124887798/218252420-eaa7dfa0-aa09-468d-b542-b8988b05ea8a.png)

2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/YG87
