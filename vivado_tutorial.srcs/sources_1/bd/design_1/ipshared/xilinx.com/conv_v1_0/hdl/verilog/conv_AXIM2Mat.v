// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module conv_AXIM2Mat (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        m_axi_fb_AWVALID,
        m_axi_fb_AWREADY,
        m_axi_fb_AWADDR,
        m_axi_fb_AWID,
        m_axi_fb_AWLEN,
        m_axi_fb_AWSIZE,
        m_axi_fb_AWBURST,
        m_axi_fb_AWLOCK,
        m_axi_fb_AWCACHE,
        m_axi_fb_AWPROT,
        m_axi_fb_AWQOS,
        m_axi_fb_AWREGION,
        m_axi_fb_AWUSER,
        m_axi_fb_WVALID,
        m_axi_fb_WREADY,
        m_axi_fb_WDATA,
        m_axi_fb_WSTRB,
        m_axi_fb_WLAST,
        m_axi_fb_WID,
        m_axi_fb_WUSER,
        m_axi_fb_ARVALID,
        m_axi_fb_ARREADY,
        m_axi_fb_ARADDR,
        m_axi_fb_ARID,
        m_axi_fb_ARLEN,
        m_axi_fb_ARSIZE,
        m_axi_fb_ARBURST,
        m_axi_fb_ARLOCK,
        m_axi_fb_ARCACHE,
        m_axi_fb_ARPROT,
        m_axi_fb_ARQOS,
        m_axi_fb_ARREGION,
        m_axi_fb_ARUSER,
        m_axi_fb_RVALID,
        m_axi_fb_RREADY,
        m_axi_fb_RDATA,
        m_axi_fb_RLAST,
        m_axi_fb_RID,
        m_axi_fb_RUSER,
        m_axi_fb_RRESP,
        m_axi_fb_BVALID,
        m_axi_fb_BREADY,
        m_axi_fb_BRESP,
        m_axi_fb_BID,
        m_axi_fb_BUSER,
        image_in_dout,
        image_in_empty_n,
        image_in_read,
        img_rows_V_dout,
        img_rows_V_empty_n,
        img_rows_V_read,
        img_cols_V_dout,
        img_cols_V_empty_n,
        img_cols_V_read,
        img_data_stream_V_din,
        img_data_stream_V_full_n,
        img_data_stream_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b1;
parameter    ap_ST_st2_fsm_1 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_fb_AWVALID;
input   m_axi_fb_AWREADY;
output  [31:0] m_axi_fb_AWADDR;
output  [0:0] m_axi_fb_AWID;
output  [31:0] m_axi_fb_AWLEN;
output  [2:0] m_axi_fb_AWSIZE;
output  [1:0] m_axi_fb_AWBURST;
output  [1:0] m_axi_fb_AWLOCK;
output  [3:0] m_axi_fb_AWCACHE;
output  [2:0] m_axi_fb_AWPROT;
output  [3:0] m_axi_fb_AWQOS;
output  [3:0] m_axi_fb_AWREGION;
output  [0:0] m_axi_fb_AWUSER;
output   m_axi_fb_WVALID;
input   m_axi_fb_WREADY;
output  [7:0] m_axi_fb_WDATA;
output  [0:0] m_axi_fb_WSTRB;
output   m_axi_fb_WLAST;
output  [0:0] m_axi_fb_WID;
output  [0:0] m_axi_fb_WUSER;
output   m_axi_fb_ARVALID;
input   m_axi_fb_ARREADY;
output  [31:0] m_axi_fb_ARADDR;
output  [0:0] m_axi_fb_ARID;
output  [31:0] m_axi_fb_ARLEN;
output  [2:0] m_axi_fb_ARSIZE;
output  [1:0] m_axi_fb_ARBURST;
output  [1:0] m_axi_fb_ARLOCK;
output  [3:0] m_axi_fb_ARCACHE;
output  [2:0] m_axi_fb_ARPROT;
output  [3:0] m_axi_fb_ARQOS;
output  [3:0] m_axi_fb_ARREGION;
output  [0:0] m_axi_fb_ARUSER;
input   m_axi_fb_RVALID;
output   m_axi_fb_RREADY;
input  [7:0] m_axi_fb_RDATA;
input   m_axi_fb_RLAST;
input  [0:0] m_axi_fb_RID;
input  [0:0] m_axi_fb_RUSER;
input  [1:0] m_axi_fb_RRESP;
input   m_axi_fb_BVALID;
output   m_axi_fb_BREADY;
input  [1:0] m_axi_fb_BRESP;
input  [0:0] m_axi_fb_BID;
input  [0:0] m_axi_fb_BUSER;
input  [31:0] image_in_dout;
input   image_in_empty_n;
output   image_in_read;
input  [11:0] img_rows_V_dout;
input   img_rows_V_empty_n;
output   img_rows_V_read;
input  [11:0] img_cols_V_dout;
input   img_cols_V_empty_n;
output   img_cols_V_read;
output  [7:0] img_data_stream_V_din;
input   img_data_stream_V_full_n;
output   img_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_fb_ARVALID;
reg m_axi_fb_RREADY;
reg image_in_read;
reg img_rows_V_read;
reg img_cols_V_read;
reg img_data_stream_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm = 2'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_21;
reg   [31:0] image_in_read_reg_66;
reg    ap_sig_bdd_111;
reg   [11:0] img_rows_V_read_reg_71;
reg   [11:0] img_cols_V_read_reg_76;
wire    grp_conv_Array2Mat_fu_52_ap_start;
wire    grp_conv_Array2Mat_fu_52_ap_done;
wire    grp_conv_Array2Mat_fu_52_ap_idle;
wire    grp_conv_Array2Mat_fu_52_ap_ready;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_AWVALID;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_AWREADY;
wire   [31:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWADDR;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWID;
wire   [31:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWLEN;
wire   [2:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWSIZE;
wire   [1:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWBURST;
wire   [1:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWLOCK;
wire   [3:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWCACHE;
wire   [2:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWPROT;
wire   [3:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWQOS;
wire   [3:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWREGION;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_AWUSER;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_WVALID;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_WREADY;
wire   [7:0] grp_conv_Array2Mat_fu_52_m_axi_fb_WDATA;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_WSTRB;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_WLAST;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_WID;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_WUSER;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_ARVALID;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_ARREADY;
wire   [31:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARADDR;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARID;
wire   [31:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARLEN;
wire   [2:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARSIZE;
wire   [1:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARBURST;
wire   [1:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARLOCK;
wire   [3:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARCACHE;
wire   [2:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARPROT;
wire   [3:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARQOS;
wire   [3:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARREGION;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_ARUSER;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_RVALID;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_RREADY;
wire   [7:0] grp_conv_Array2Mat_fu_52_m_axi_fb_RDATA;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_RLAST;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_RID;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_RUSER;
wire   [1:0] grp_conv_Array2Mat_fu_52_m_axi_fb_RRESP;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_BVALID;
wire    grp_conv_Array2Mat_fu_52_m_axi_fb_BREADY;
wire   [1:0] grp_conv_Array2Mat_fu_52_m_axi_fb_BRESP;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_BID;
wire   [0:0] grp_conv_Array2Mat_fu_52_m_axi_fb_BUSER;
wire   [31:0] grp_conv_Array2Mat_fu_52_image_in1;
wire   [11:0] grp_conv_Array2Mat_fu_52_img_rows_V_read;
wire   [11:0] grp_conv_Array2Mat_fu_52_img_cols_V_read;
wire   [7:0] grp_conv_Array2Mat_fu_52_img_data_stream_V_din;
wire    grp_conv_Array2Mat_fu_52_img_data_stream_V_full_n;
wire    grp_conv_Array2Mat_fu_52_img_data_stream_V_write;
reg    grp_conv_Array2Mat_fu_52_ap_start_ap_start_reg = 1'b0;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_182;
reg   [1:0] ap_NS_fsm;


conv_Array2Mat grp_conv_Array2Mat_fu_52(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_conv_Array2Mat_fu_52_ap_start ),
    .ap_done( grp_conv_Array2Mat_fu_52_ap_done ),
    .ap_idle( grp_conv_Array2Mat_fu_52_ap_idle ),
    .ap_ready( grp_conv_Array2Mat_fu_52_ap_ready ),
    .m_axi_fb_AWVALID( grp_conv_Array2Mat_fu_52_m_axi_fb_AWVALID ),
    .m_axi_fb_AWREADY( grp_conv_Array2Mat_fu_52_m_axi_fb_AWREADY ),
    .m_axi_fb_AWADDR( grp_conv_Array2Mat_fu_52_m_axi_fb_AWADDR ),
    .m_axi_fb_AWID( grp_conv_Array2Mat_fu_52_m_axi_fb_AWID ),
    .m_axi_fb_AWLEN( grp_conv_Array2Mat_fu_52_m_axi_fb_AWLEN ),
    .m_axi_fb_AWSIZE( grp_conv_Array2Mat_fu_52_m_axi_fb_AWSIZE ),
    .m_axi_fb_AWBURST( grp_conv_Array2Mat_fu_52_m_axi_fb_AWBURST ),
    .m_axi_fb_AWLOCK( grp_conv_Array2Mat_fu_52_m_axi_fb_AWLOCK ),
    .m_axi_fb_AWCACHE( grp_conv_Array2Mat_fu_52_m_axi_fb_AWCACHE ),
    .m_axi_fb_AWPROT( grp_conv_Array2Mat_fu_52_m_axi_fb_AWPROT ),
    .m_axi_fb_AWQOS( grp_conv_Array2Mat_fu_52_m_axi_fb_AWQOS ),
    .m_axi_fb_AWREGION( grp_conv_Array2Mat_fu_52_m_axi_fb_AWREGION ),
    .m_axi_fb_AWUSER( grp_conv_Array2Mat_fu_52_m_axi_fb_AWUSER ),
    .m_axi_fb_WVALID( grp_conv_Array2Mat_fu_52_m_axi_fb_WVALID ),
    .m_axi_fb_WREADY( grp_conv_Array2Mat_fu_52_m_axi_fb_WREADY ),
    .m_axi_fb_WDATA( grp_conv_Array2Mat_fu_52_m_axi_fb_WDATA ),
    .m_axi_fb_WSTRB( grp_conv_Array2Mat_fu_52_m_axi_fb_WSTRB ),
    .m_axi_fb_WLAST( grp_conv_Array2Mat_fu_52_m_axi_fb_WLAST ),
    .m_axi_fb_WID( grp_conv_Array2Mat_fu_52_m_axi_fb_WID ),
    .m_axi_fb_WUSER( grp_conv_Array2Mat_fu_52_m_axi_fb_WUSER ),
    .m_axi_fb_ARVALID( grp_conv_Array2Mat_fu_52_m_axi_fb_ARVALID ),
    .m_axi_fb_ARREADY( grp_conv_Array2Mat_fu_52_m_axi_fb_ARREADY ),
    .m_axi_fb_ARADDR( grp_conv_Array2Mat_fu_52_m_axi_fb_ARADDR ),
    .m_axi_fb_ARID( grp_conv_Array2Mat_fu_52_m_axi_fb_ARID ),
    .m_axi_fb_ARLEN( grp_conv_Array2Mat_fu_52_m_axi_fb_ARLEN ),
    .m_axi_fb_ARSIZE( grp_conv_Array2Mat_fu_52_m_axi_fb_ARSIZE ),
    .m_axi_fb_ARBURST( grp_conv_Array2Mat_fu_52_m_axi_fb_ARBURST ),
    .m_axi_fb_ARLOCK( grp_conv_Array2Mat_fu_52_m_axi_fb_ARLOCK ),
    .m_axi_fb_ARCACHE( grp_conv_Array2Mat_fu_52_m_axi_fb_ARCACHE ),
    .m_axi_fb_ARPROT( grp_conv_Array2Mat_fu_52_m_axi_fb_ARPROT ),
    .m_axi_fb_ARQOS( grp_conv_Array2Mat_fu_52_m_axi_fb_ARQOS ),
    .m_axi_fb_ARREGION( grp_conv_Array2Mat_fu_52_m_axi_fb_ARREGION ),
    .m_axi_fb_ARUSER( grp_conv_Array2Mat_fu_52_m_axi_fb_ARUSER ),
    .m_axi_fb_RVALID( grp_conv_Array2Mat_fu_52_m_axi_fb_RVALID ),
    .m_axi_fb_RREADY( grp_conv_Array2Mat_fu_52_m_axi_fb_RREADY ),
    .m_axi_fb_RDATA( grp_conv_Array2Mat_fu_52_m_axi_fb_RDATA ),
    .m_axi_fb_RLAST( grp_conv_Array2Mat_fu_52_m_axi_fb_RLAST ),
    .m_axi_fb_RID( grp_conv_Array2Mat_fu_52_m_axi_fb_RID ),
    .m_axi_fb_RUSER( grp_conv_Array2Mat_fu_52_m_axi_fb_RUSER ),
    .m_axi_fb_RRESP( grp_conv_Array2Mat_fu_52_m_axi_fb_RRESP ),
    .m_axi_fb_BVALID( grp_conv_Array2Mat_fu_52_m_axi_fb_BVALID ),
    .m_axi_fb_BREADY( grp_conv_Array2Mat_fu_52_m_axi_fb_BREADY ),
    .m_axi_fb_BRESP( grp_conv_Array2Mat_fu_52_m_axi_fb_BRESP ),
    .m_axi_fb_BID( grp_conv_Array2Mat_fu_52_m_axi_fb_BID ),
    .m_axi_fb_BUSER( grp_conv_Array2Mat_fu_52_m_axi_fb_BUSER ),
    .image_in1( grp_conv_Array2Mat_fu_52_image_in1 ),
    .img_rows_V_read( grp_conv_Array2Mat_fu_52_img_rows_V_read ),
    .img_cols_V_read( grp_conv_Array2Mat_fu_52_img_cols_V_read ),
    .img_data_stream_V_din( grp_conv_Array2Mat_fu_52_img_data_stream_V_din ),
    .img_data_stream_V_full_n( grp_conv_Array2Mat_fu_52_img_data_stream_V_full_n ),
    .img_data_stream_V_write( grp_conv_Array2Mat_fu_52_img_data_stream_V_write )
);



always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_conv_Array2Mat_fu_52_ap_done))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_grp_conv_Array2Mat_fu_52_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_conv_Array2Mat_fu_52_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_111)) begin
            grp_conv_Array2Mat_fu_52_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_conv_Array2Mat_fu_52_ap_ready)) begin
            grp_conv_Array2Mat_fu_52_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_111)) begin
        image_in_read_reg_66 <= image_in_dout;
        img_cols_V_read_reg_76 <= img_cols_V_dout;
        img_rows_V_read_reg_71 <= img_rows_V_dout;
    end
end

always @ (ap_done_reg or grp_conv_Array2Mat_fu_52_ap_done or ap_sig_cseq_ST_st2_fsm_1) begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_conv_Array2Mat_fu_52_ap_done)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

always @ (grp_conv_Array2Mat_fu_52_ap_done or ap_sig_cseq_ST_st2_fsm_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_logic_0 == grp_conv_Array2Mat_fu_52_ap_done))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_21) begin
    if (ap_sig_bdd_21) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_182) begin
    if (ap_sig_bdd_182) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_111) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_111)) begin
        image_in_read = ap_const_logic_1;
    end else begin
        image_in_read = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_111) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_111)) begin
        img_cols_V_read = ap_const_logic_1;
    end else begin
        img_cols_V_read = ap_const_logic_0;
    end
end

always @ (grp_conv_Array2Mat_fu_52_img_data_stream_V_write or ap_sig_cseq_ST_st2_fsm_1) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        img_data_stream_V_write = grp_conv_Array2Mat_fu_52_img_data_stream_V_write;
    end else begin
        img_data_stream_V_write = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_111) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_111)) begin
        img_rows_V_read = ap_const_logic_1;
    end else begin
        img_rows_V_read = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st1_fsm_0 or grp_conv_Array2Mat_fu_52_m_axi_fb_ARVALID or ap_sig_cseq_ST_st2_fsm_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) | (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        m_axi_fb_ARVALID = grp_conv_Array2Mat_fu_52_m_axi_fb_ARVALID;
    end else begin
        m_axi_fb_ARVALID = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st1_fsm_0 or grp_conv_Array2Mat_fu_52_m_axi_fb_RREADY or ap_sig_cseq_ST_st2_fsm_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) | (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        m_axi_fb_RREADY = grp_conv_Array2Mat_fu_52_m_axi_fb_RREADY;
    end else begin
        m_axi_fb_RREADY = ap_const_logic_0;
    end
end
always @ (ap_CS_fsm or ap_sig_bdd_111 or grp_conv_Array2Mat_fu_52_ap_done) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_111) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(ap_const_logic_0 == grp_conv_Array2Mat_fu_52_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end



always @ (ap_start or ap_done_reg or image_in_empty_n or img_rows_V_empty_n or img_cols_V_empty_n) begin
    ap_sig_bdd_111 = ((image_in_empty_n == ap_const_logic_0) | (img_rows_V_empty_n == ap_const_logic_0) | (img_cols_V_empty_n == ap_const_logic_0) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_182 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_21 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

assign grp_conv_Array2Mat_fu_52_ap_start = grp_conv_Array2Mat_fu_52_ap_start_ap_start_reg;

assign grp_conv_Array2Mat_fu_52_image_in1 = image_in_read_reg_66;

assign grp_conv_Array2Mat_fu_52_img_cols_V_read = img_cols_V_read_reg_76;

assign grp_conv_Array2Mat_fu_52_img_data_stream_V_full_n = img_data_stream_V_full_n;

assign grp_conv_Array2Mat_fu_52_img_rows_V_read = img_rows_V_read_reg_71;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_ARREADY = m_axi_fb_ARREADY;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_AWREADY = ap_const_logic_0;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_BID = ap_const_lv1_0;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_BRESP = ap_const_lv2_0;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_BUSER = ap_const_lv1_0;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_BVALID = ap_const_logic_0;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_RDATA = m_axi_fb_RDATA;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_RID = m_axi_fb_RID;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_RLAST = m_axi_fb_RLAST;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_RRESP = m_axi_fb_RRESP;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_RUSER = m_axi_fb_RUSER;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_RVALID = m_axi_fb_RVALID;

assign grp_conv_Array2Mat_fu_52_m_axi_fb_WREADY = ap_const_logic_0;

assign img_data_stream_V_din = grp_conv_Array2Mat_fu_52_img_data_stream_V_din;

assign m_axi_fb_ARADDR = grp_conv_Array2Mat_fu_52_m_axi_fb_ARADDR;

assign m_axi_fb_ARBURST = grp_conv_Array2Mat_fu_52_m_axi_fb_ARBURST;

assign m_axi_fb_ARCACHE = grp_conv_Array2Mat_fu_52_m_axi_fb_ARCACHE;

assign m_axi_fb_ARID = grp_conv_Array2Mat_fu_52_m_axi_fb_ARID;

assign m_axi_fb_ARLEN = grp_conv_Array2Mat_fu_52_m_axi_fb_ARLEN;

assign m_axi_fb_ARLOCK = grp_conv_Array2Mat_fu_52_m_axi_fb_ARLOCK;

assign m_axi_fb_ARPROT = grp_conv_Array2Mat_fu_52_m_axi_fb_ARPROT;

assign m_axi_fb_ARQOS = grp_conv_Array2Mat_fu_52_m_axi_fb_ARQOS;

assign m_axi_fb_ARREGION = grp_conv_Array2Mat_fu_52_m_axi_fb_ARREGION;

assign m_axi_fb_ARSIZE = grp_conv_Array2Mat_fu_52_m_axi_fb_ARSIZE;

assign m_axi_fb_ARUSER = grp_conv_Array2Mat_fu_52_m_axi_fb_ARUSER;

assign m_axi_fb_AWADDR = ap_const_lv32_0;

assign m_axi_fb_AWBURST = ap_const_lv2_0;

assign m_axi_fb_AWCACHE = ap_const_lv4_0;

assign m_axi_fb_AWID = ap_const_lv1_0;

assign m_axi_fb_AWLEN = ap_const_lv32_0;

assign m_axi_fb_AWLOCK = ap_const_lv2_0;

assign m_axi_fb_AWPROT = ap_const_lv3_0;

assign m_axi_fb_AWQOS = ap_const_lv4_0;

assign m_axi_fb_AWREGION = ap_const_lv4_0;

assign m_axi_fb_AWSIZE = ap_const_lv3_0;

assign m_axi_fb_AWUSER = ap_const_lv1_0;

assign m_axi_fb_AWVALID = ap_const_logic_0;

assign m_axi_fb_BREADY = ap_const_logic_0;

assign m_axi_fb_WDATA = ap_const_lv8_0;

assign m_axi_fb_WID = ap_const_lv1_0;

assign m_axi_fb_WLAST = ap_const_logic_0;

assign m_axi_fb_WSTRB = ap_const_lv1_0;

assign m_axi_fb_WUSER = ap_const_lv1_0;

assign m_axi_fb_WVALID = ap_const_logic_0;


endmodule //conv_AXIM2Mat

