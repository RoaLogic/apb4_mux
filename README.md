# apb4_mux
Fully parameterized APB4 Slave multiplexer. The APB4 Mux enables a single APB4 Master to communicate with multiple APB4 slaves (peripherals).


![Example Implementation](assets/img/APB4-Mux-Sys.png)

## Documentation

- [Datasheet](DATASHEET)

## Features

- AHB-Lite Interface with programmable address and data width
- User defined number of Interrupt Sources & Targets
- User defined priority level per Interrupt Source
- Interrupt masking per target via Priority Threshold support
- User defined Interrupt Pending queue depth per source

## Compatibility

Compliant to the RISC-V Privilege Level 1.9, 1.9.1, 1.10 specifications

## Interfaces

- APB4


## License

Released under the RoaLogic [Non-Commerical License](/LICENSE.md)

## Dependencies
Requires the Roa Logic [AHB3Lite Package](). This is are included as a submodule.
After cloning the RV12 git repository, perform a 'git submodule init' to download the submodule.