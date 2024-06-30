
# FPGA settings
FPGA_TOP = fpga
FPGA_FAMILY = "Stratix 10"
FPGA_DEVICE = 1SGHF43VGAC

# Files for synthesis
SYN_FILES = rtl/fpga.v
SYN_FILES += rtl/pin_uart.v

# IP files
#IP_TCL_FILES += ip/int_osc.tcl

# QSF files
QSF_FILES = fpga.qsf

# SDC files
SDC_FILES = fpga.sdc

include ../common/quartus_pro.mk

program: fpga
	quartus_pgm --no_banner --mode=jtag -o "P;$(FPGA_TOP).sof@1"
