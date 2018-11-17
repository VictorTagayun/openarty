////////////////////////////////////////////////////////////////////////////////
//
// Filename:	./iscachable.v
//
// Project:	OpenArty, an entirely open SoC based upon the Arty platform
//
// DO NOT EDIT THIS FILE!
// Computer Generated: This file is computer generated by AUTOFPGA. DO NOT EDIT.
// DO NOT EDIT THIS FILE!
//
// CmdLine:	autofpga autofpga -d -o . global.txt bkram.txt buserr.txt dlyarbiter.txt clock.txt gpio.txt spio.txt icape.txt mdio.txt gps.txt pic.txt pwrcount.txt rtcdate.txt rtcgps.txt clrspio.txt version.txt wbuconsole.txt zipmaster.txt sdspi.txt
//
// Creator:	Dan Gisselquist, Ph.D.
//		Gisselquist Technology, LLC
//
////////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2017-2018, Gisselquist Technology, LLC
//
// This program is free software (firmware): you can redistribute it and/or
// modify it under the terms of  the GNU General Public License as published
// by the Free Software Foundation, either version 3 of the License, or (at
// your option) any later version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTIBILITY or
// FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
// for more details.
//
// You should have received a copy of the GNU General Public License along
// with this program.  (It's in the $(ROOT)/doc directory.  Run make with no
// target there if the PDF file isn't present.)  If not, see
// <http://www.gnu.org/licenses/> for a copy.
//
// License:	GPL, v3, as defined and found on www.gnu.org,
//		http://www.gnu.org/licenses/gpl.html
//
//
////////////////////////////////////////////////////////////////////////////////
//
//
`default_nettype none
//
module iscachable(i_addr, o_cachable);
	localparam		AW = 19;
	input	wire	[AW-1:0]	i_addr;
	output	wire			o_cachable;

	always @(*)
	begin
		o_cachable = 1'b0;
		// Bus master: zip
		// Bus master: wb
		// Bus master: wb_dio
		// Bus master: wb_sio
		// bkram
		if ((i_addr[18:0] & 19'h40000) == 19'h40000)
			o_cachable = 1'b1;
	end

endmodule