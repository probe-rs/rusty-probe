# The Rusty Probe

This is an open hardware probe for the Serial Wire Debug (SWD) and JTAG protocol.
Based on the RP2040 MCU.

## Firmware

The firmware is available here and is open-source: ...

## Features

* The 10-pin Cortex-Debug connector is used.
* The programming connector is the Tag Connect TC2030, however for just loading firmware the USB bootloader is recommended.
* Castellated vias for all programming pins, power and 2 GPIOs.
* USB-C connector.
* Target 5V and `Vtarget` is protected with an diode circuit to not have current flow from the target to the host.
* The probe support 1.8v - 3.3v signal voltage and can track `Vtarget`.
* The key pin on the Cortex-Debug can be connected to the protected 5V.

The schematic can be found in the GitHub actions, full production files are generated for each commit.

![alt text](rs-probe.jpg "probe")

## Cable Assembly

The rs-probe package sold on our [shop](https://shop.probe.rs) contains two 10 wire ribbon cables and 4 10p connector.

![alt text](docs/cable-asssembly-instructions.png "cable assembly")

## License

This work is licensed under [CERN-OHL-P](cern_ohl_p_v2.txt).
