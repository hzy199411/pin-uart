
# FPGA settings
FPGA_TOP = fpga
FPGA_FAMILY = "Agilex 7"
FPGA_DEVICE = AGFC023R25A2E2VR0

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
