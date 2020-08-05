# femtoRV32i- RV16ic processor
 
**********************************************************************Computer Architecture**********************************************************************
***************************************************************************CSCE 3301-01**************************************************************************
****************************************************************************Fall 2019****************************************************************************
*************************************************************************MS4 Readme File*************************************************************************
***********************************************************************November 19th, 2019***********************************************************************
*******************************************************************************For*******************************************************************************
************************************************************************Dr. Cherif Salama************************************************************************

Students Names:

Abdelhakim Badawy 		
- abdelhakimbadawy@aucegypt.edu
Marwan Eid         		
- marwanadel99@aucegypt.edu
Mohammed Abuelwafa	 	
- mohammedabuelwafa@aucegypt.edu

Release Notes:
Issues:
- A load instruction followed by a store instruction, where the destination register of the load instruction is the source register of the store instruction to be stored,
needs either a stall in the pipeline or a forwarding unit to be implemented in the memory stage for it to forward from the memory to the memory.


Assumptions:
- Instructions are saved in hexadecimal text file and loaded in the memory using the $readmemh() Verilog system task.
- Instructions are loaded in the first segment of the memory; data are loaded next. We use the address of the first data segment loaded in the memory which is 200 as an offset that we use later to access data.
- The instructions are terminated by an EBREAK instructon in order for it to stop the PC from incrementing.
- Test results are submitted in the form of a simulation waveform file.
- The memory is treated as an instruction memory during the positive edges of the slow clock which correspond to the fetching stage of the pipeline and as a data memory during the negative edges
of the clock which corresponds to the memory stage of the pipelines.

What works:
- Everything required works: the pipelined datapath.
- Two bonus features work:
	- Supporting the compressed instructions.
	- Supporting integer division and multiplication.

What does not work:
- A load instruction is followed by a store instruction and destination register of the load instruction is the source register of the store instruction to be stored does not behave correctly;
either stalling the pipeline till the value is loaded or implementing another forwarding unit in the memory stage for it to forward the data from the memory to the memory in case a current
store instruction is dependent on a previous load instruction.
- Testing on the FPGA did not work as expected.
