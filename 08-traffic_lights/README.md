# Lab 8: Slavek Rylich

### Traffic light controller

1. Listing of VHDL code of the completed process `p_traffic_fsm`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    p_traffic_fsm : process (clk) is
  begin

    if (rising_edge(clk)) then
      if (rst = '1') then                    -- Synchronous reset
        sig_state <= WEST_STOP;              -- Init state
        sig_cnt   <= (others => '0');        -- Clear delay counter
      elsif (sig_en = '1') then
        -- Every 250 ms, CASE checks the value of sig_state
        -- local signal and changes to the next state 
        -- according to the delay value.
        
        -- Speed button solution
        if (speed_button = '1') then
               -- Must be safe switch to west_go
               
               case sig_state is
                when WEST_STOP =>
                      -- Move to WEST_GO
                      sig_state <= WEST_GO;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
        
                  when WEST_GO =>
                      -- Move to WEST_GO
                      sig_state <= WEST_GO;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    
                  when WEST_WAIT =>
                      -- Move to WEST_GO
                      sig_state <= WEST_GO;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    
                  when SOUTH_STOP =>
                      -- Move to WEST_GO
                      sig_state <= WEST_GO;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    
                  when SOUTH_GO =>
                      -- First move to the yellow state of SOUTH lights
                      sig_state <= SOUTH_WAIT;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    
                   when SOUTH_WAIT =>
                    -- Count to 1 secs
                    if (sig_cnt < c_DELAY_1SEC) then
                      sig_cnt <= sig_cnt + 1;
                    else
                      -- Move to WEST_GO
                      sig_state <= WEST_GO;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    end if;
        
                  when others =>
                    -- It is a good programming practice to use the
                    -- OTHERS clause, even if all CASE choices have
                    -- been made.
                    sig_state <= WEST_STOP;
                    sig_cnt   <= (others => '0');
        
               end case;
               
           elsif (speed_button = '0') then
                case sig_state is
                
                  when WEST_STOP =>
                    -- Count to 2 secs
                    if (sig_cnt < c_DELAY_2SEC) then
                      sig_cnt <= sig_cnt + 1;
                    else
                      -- Move to the next state
                      sig_state <= WEST_GO;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    end if;
        
                  when WEST_GO =>
                    -- Count to 4 secs
                    if (sig_cnt < c_DELAY_4SEC) then
                      sig_cnt <= sig_cnt + 1;
                    else
                      -- Move to the next state
                      sig_state <= WEST_WAIT;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    end if;
                    
                  when WEST_WAIT =>
                    -- Count to 1 secs
                    if (sig_cnt < c_DELAY_1SEC) then
                      sig_cnt <= sig_cnt + 1;
                    else
                      -- Move to the next state
                      sig_state <= SOUTH_STOP;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    end if;
                    
                  when SOUTH_STOP =>
                    -- Count to 2 secs
                    if (sig_cnt < c_DELAY_2SEC) then
                      sig_cnt <= sig_cnt + 1;
                    else
                      -- Move to the next state
                      sig_state <= SOUTH_GO;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    end if;
                    
                  when SOUTH_GO =>
                    -- Count to 4 secs
                    if (sig_cnt < c_DELAY_4SEC) then
                      sig_cnt <= sig_cnt + 1;
                    else
                      -- Move to the next state
                      sig_state <= SOUTH_WAIT;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    end if;
                    
                   when SOUTH_WAIT =>
                    -- Count to 1 secs
                    if (sig_cnt < c_DELAY_1SEC) then
                      sig_cnt <= sig_cnt + 1;
                    else
                      -- Move to the next state
                      sig_state <= WEST_STOP;
                      -- Reset delay counter value
                      sig_cnt   <= (others => '0');
                    end if;
        
                  when others =>
                    -- It is a good programming practice to use the
                    -- OTHERS clause, even if all CASE choices have
                    -- been made.
                    sig_state <= WEST_STOP;
                    sig_cnt   <= (others => '0');
        
                end case; 
          end if; -- Speed butoon
      end if; -- Synchronous reset
    end if; -- Rising edge
  end process p_traffic_fsm;
```

2. Screenshot with simulated time waveforms. The full functionality of the entity must be verified. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![image](https://user-images.githubusercontent.com/124887798/229077277-78c96ee9-adac-4048-a988-618f85d91142.png)

3. Figure of Moor-based state diagram of the traffic light controller with *speed button* to ensure a synchronous transition to the `WEST_GO` state. The image can be drawn on a computer or by hand. Always name all states, transitions, and input signals!

   ![SmartSelect_20230331_120554_Samsung Notes](https://user-images.githubusercontent.com/124887798/229091887-0c9824b9-9729-4d2c-8c61-00e0a7a44dfb.jpg)
