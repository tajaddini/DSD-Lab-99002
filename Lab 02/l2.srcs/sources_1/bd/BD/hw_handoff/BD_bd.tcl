
################################################################
# This is a generated script based on design: BD
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BD_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020iclg400-1L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name BD

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {BD_CLK} \
   CONFIG.FREQ_HZ {10000000} \
 ] $CLK
  set Door_out [ create_bd_port -dir I -from 0 -to 0 Door_out ]
  set Ent [ create_bd_port -dir I -from 0 -to 0 Ent ]
  set People [ create_bd_port -dir O -from 3 -to 0 -type data People ]
  set T [ create_bd_port -dir I -from 0 -to 0 T ]

  # Create instance: and_1, and set properties
  set and_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 and_1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $and_1

  # Create instance: and_2, and set properties
  set and_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 and_2 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $and_2

  # Create instance: and_3, and set properties
  set and_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 and_3 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $and_3

  # Create instance: and_4, and set properties
  set and_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 and_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $and_4

  # Create instance: and_5, and set properties
  set and_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 and_5 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $and_5

  # Create instance: not_1, and set properties
  set not_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 not_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $not_1

  # Create instance: not_2, and set properties
  set not_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 not_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $not_2

  # Create instance: people_counter, and set properties
  set people_counter [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 people_counter ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Count_Mode {UPDOWN} \
   CONFIG.Output_Width {4} \
   CONFIG.SCLR {true} \
 ] $people_counter

  # Create instance: slice_0, and set properties
  set slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {4} \
 ] $slice_0

  # Create instance: slice_1, and set properties
  set slice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_1

  # Create instance: slice_2, and set properties
  set slice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_2

  # Create instance: slice_3, and set properties
  set slice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_3

  # Create instance: xor_1, and set properties
  set xor_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 xor_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $xor_1

  # Create port connections
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins people_counter/CLK]
  connect_bd_net -net Door_out_1 [get_bd_ports Door_out] [get_bd_pins xor_1/Op2]
  connect_bd_net -net Ent_1 [get_bd_ports Ent] [get_bd_pins and_4/Op1]
  connect_bd_net -net T_1 [get_bd_ports T] [get_bd_pins and_5/Op2] [get_bd_pins not_2/Op1]
  connect_bd_net -net and_1_Res [get_bd_pins and_1/Res] [get_bd_pins and_3/Op1]
  connect_bd_net -net and_2_Res [get_bd_pins and_2/Res] [get_bd_pins and_3/Op2]
  connect_bd_net -net and_3_Res [get_bd_pins and_3/Res] [get_bd_pins not_1/Op1]
  connect_bd_net -net and_4_Res [get_bd_pins and_4/Res] [get_bd_pins people_counter/UP] [get_bd_pins xor_1/Op1]
  connect_bd_net -net and_5_Res [get_bd_pins and_4/Op2] [get_bd_pins and_5/Res]
  connect_bd_net -net not_1_Res [get_bd_pins and_5/Op1] [get_bd_pins not_1/Res]
  connect_bd_net -net not_2_Res [get_bd_pins not_2/Res] [get_bd_pins people_counter/SCLR]
  connect_bd_net -net people_counter_Q [get_bd_ports People] [get_bd_pins people_counter/Q] [get_bd_pins slice_0/Din] [get_bd_pins slice_1/Din] [get_bd_pins slice_2/Din] [get_bd_pins slice_3/Din]
  connect_bd_net -net slice_0_Dout [get_bd_pins and_1/Op1] [get_bd_pins slice_0/Dout]
  connect_bd_net -net slice_1_Dout [get_bd_pins and_1/Op2] [get_bd_pins slice_1/Dout]
  connect_bd_net -net slice_2_Dout [get_bd_pins and_2/Op1] [get_bd_pins slice_2/Dout]
  connect_bd_net -net slice_3_Dout [get_bd_pins and_2/Op2] [get_bd_pins slice_3/Dout]
  connect_bd_net -net xor_1_Res [get_bd_pins people_counter/CE] [get_bd_pins xor_1/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


