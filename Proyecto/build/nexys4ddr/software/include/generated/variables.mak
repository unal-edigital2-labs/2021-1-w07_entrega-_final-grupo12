PACKAGES=libcompiler_rt libbase libfatfs liblitespi liblitedram libliteeth liblitesdcard liblitesata bios
PACKAGE_DIRS=/home/camilo/install_litex/litex/litex/soc/software/libcompiler_rt /home/camilo/install_litex/litex/litex/soc/software/libbase /home/camilo/install_litex/litex/litex/soc/software/libfatfs /home/camilo/install_litex/litex/litex/soc/software/liblitespi /home/camilo/install_litex/litex/litex/soc/software/liblitedram /home/camilo/install_litex/litex/litex/soc/software/libliteeth /home/camilo/install_litex/litex/litex/soc/software/liblitesdcard /home/camilo/install_litex/litex/litex/soc/software/liblitesata /home/camilo/install_litex/litex/litex/soc/software/bios
LIBS=libcompiler_rt libbase-nofloat libfatfs liblitespi liblitedram libliteeth liblitesdcard liblitesata
TRIPLE=riscv64-unknown-elf
CPU=picorv32
CPUFLAGS=-mno-save-restore -march=rv32im     -mabi=ilp32 -D__picorv32__ 
CPUENDIANNESS=little
CLANG=0
CPU_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/cores/cpu/picorv32
SOC_DIRECTORY=/home/camilo/install_litex/litex/litex/soc
COMPILER_RT_DIRECTORY=/home/camilo/install_litex/pythondata-software-compiler_rt/pythondata_software_compiler_rt/data
export BUILDINC_DIRECTORY
BUILDINC_DIRECTORY=/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/build/nexys4ddr/software/include
LIBCOMPILER_RT_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/libcompiler_rt
LIBBASE_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/libbase
LIBFATFS_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/libfatfs
LIBLITESPI_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/liblitespi
LIBLITEDRAM_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/liblitedram
LIBLITEETH_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/libliteeth
LIBLITESDCARD_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/liblitesdcard
LIBLITESATA_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/liblitesata
BIOS_DIRECTORY=/home/camilo/install_litex/litex/litex/soc/software/bios