// Generated directly from C++ by cpp_transpiler.
Primary_Chromaticity_Ptr_in_mkvmuxer :: Class_Unique_Ptr_Class_Primary_Chromaticity;

PIECEWISE_CONSTRUCT: Piecewise_Construct_T;

K_EBML_UNKNOWN_VALUE: Uint64;

K_MAX_TRACK_NUMBER_storage: u64;

K_MAX_BLOCK_TIMECODE: Int64;

MKVMUXER_SEEK_HEAD_K_SEEK_ENTRY_COUNT: s32;

MKVMUXER_TRACKS_K_AV1_CODEC_ID: [6] s8;

K_DOC_TYPE_MATROSKA: [9] s8;

K_DOC_TYPE_WEBM: [5] s8;

MKVMUXER_TRACKS_K_WEB_VTT_SUBTITLES_ID: [19] s8;

MKVMUXER_TRACKS_K_WEB_VTT_METADATA_ID: [18] s8;

MKVMUXER_TRACKS_K_WEB_VTT_DESCRIPTIONS_ID: [22] s8;

MKVMUXER_TRACKS_K_WEB_VTT_CAPTIONS_ID: [18] s8;

MKVMUXER_TRACKS_K_VP9_CODEC_ID: [6] s8;

MKVMUXER_TRACKS_K_VP8_CODEC_ID: [6] s8;

MKVMUXER_TRACKS_K_VORBIS_CODEC_ID: [9] s8;

MKVMUXER_TRACKS_K_OPUS_CODEC_ID: [7] s8;

MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT: u64;

MKVMUXER_SEGMENT_K_DEFAULT_DOC_TYPE_VERSION: u32;

MKVMUXER_SEGMENT_K_DEFAULT_MAX_CLUSTER_DURATION: u64;

E_PARSE_FAILED_storage: s32;

E_FILE_FORMAT_INVALID_storage: s32;

E_BUFFER_NOT_FULL_storage: s32;

MKVMUXER_PRIMARY_CHROMATICITY_K_CHROMATICITY_MIN: float32;

MKVMUXER_PRIMARY_CHROMATICITY_K_CHROMATICITY_MAX: float32;

MKVMUXER_MASTERING_METADATA_K_MIN_LUMINANCE: float32;

MKVMUXER_MASTERING_METADATA_K_MIN_LUMINANCE_MAX: float32;

MKVMUXER_MASTERING_METADATA_K_MAX_LUMINANCE_MAX: float32;

MKVMUXER_MASTERING_METADATA_K_VALUE_NOT_PRESENT: float32;

get_track_by_index :: (using tracks: *Mkvmuxer_Tracks, index: u32) -> *Mkvmuxer_Track {
    if track_entries == null {
        return cast(*Mkvmuxer_Track) null;
    }

    if index >= track_entries_size {
        return cast(*Mkvmuxer_Track) null;
    }

    return track_entries[index];
}

key :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H5383162374263181388
) -> *u64 {
    return cast,no_check(*u64) (key(node));
}

key :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891
) -> *u64 {
    return cast,no_check(*u64) (key_2(x));
}

key_2 :: (
    node: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H15905145181564765690
) -> *u64 {
    return cast,no_check(*u64) (call_2(
        *(Struct_Std_Select1st_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame.{}),
        valptr(node)
    ));
}

valptr :: (
    using struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame
) -> *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame {
    return cast,no_check(*Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (ptr_3(*storage));
}

ptr_3 :: (
    using struct_aligned_membuf_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame {
    return cast(*Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) addr(struct_aligned_membuf_struct_pair_const_unsigned_long_class_list_class_frame);
}

addr :: (
    using struct_aligned_membuf_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> *void {
    return cast(*void) *storage;
}

call_2 :: (
    using struct_select1st_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Select1st_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    x: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame
) -> *Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_First_Type {
    return *x.first;
}

get_insert_hint_unique_pos :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    position: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H10700294200669716772,
    k: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H4072827160894027326
) -> Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base {
    local_position: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H10700294200669716772 = position;

    if local_position.node == end(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074) {
        if size_9(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074) > 0 &&
            key_compare(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
                (cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) rightmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
            )).*
            ),
                k
            ) {
            temporary_g0: Res = ---;
            init_174(
                *temporary_g0,
                (ifx true { temporary___g1: *Rb_Tree_Node_Base = null; *temporary___g1; }),
                rightmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
            )
            );
            return temporary_g0;
        } else {
            return get_insert_unique_pos(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
                k
            );
        }
    } else if key_compare(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        k,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
        local_position.node
    )
    ) {
        before :=
            make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
                local_position.node
            );
        if local_position.node == (cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) leftmost(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074)).* {
            temporary_g2: Res = ---;
            init_175(
                *temporary_g2,
                leftmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
            ),
                leftmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
            )
            );
            return temporary_g2;
        } else if key_compare(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
            (decrement(*before)).node
        ),
            k
        ) {
            if class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h4330373251577733672(
                before.node
            ) == null {
                temporary_g3: Res = ---;
                init_174(
                    *temporary_g3,
                    (ifx true { temporary___g4: *Rb_Tree_Node_Base = null; *temporary___g4; }),
                    *before.node
                );
                return temporary_g3;
            } else {
                temporary_g5: Res = ---;
                init_175(*temporary_g5, *local_position.node, *local_position.node);
                return temporary_g5;
            }
        } else {
            return get_insert_unique_pos(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
                k
            );
        }
    } else if key_compare(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
        local_position.node
    ),
        k
    ) {
        after :=
            make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
                local_position.node
            );
        if local_position.node == (cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) rightmost(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
        )).* {
            temporary_g6: Res = ---;
            init_174(
                *temporary_g6,
                (ifx true { temporary___g7: *Rb_Tree_Node_Base = null; *temporary___g7; }),
                rightmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
            )
            );
            return temporary_g6;
        } else if key_compare(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            k,
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
            (increment(*after)).node
        )
        ) {
            if class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h4330373251577733672(
                local_position.node
            ) == null {
                temporary_g8: Res = ---;
                init_174(
                    *temporary_g8,
                    (ifx true { temporary___g9: *Rb_Tree_Node_Base = null; *temporary___g9; }),
                    *local_position.node
                );
                return temporary_g8;
            } else {
                temporary_g10: Res = ---;
                init_175(*temporary_g10, *after.node, *after.node);
                return temporary_g10;
            }
        } else {
            return get_insert_unique_pos(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
                k
            );
        }
    } else {
        temporary_g11: Res = ---;
        init_176(
            *temporary_g11,
            *local_position.node,
            (ifx true { temporary___g12: *Rb_Tree_Node_Base = null; *temporary___g12; })
        );
        return temporary_g11;
    }
}

get_insert_unique_pos :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    k: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H4072827160894027326
) -> Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base {
    x :=
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (begin(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
        ));
    y :=
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (end(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
        ));
    comp: bool = true;
    while x != null {
        y =
            cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (x);
        comp =
            key_compare(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
                k,
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
                x
            )
            );
        x =
            cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) ((ifx comp then cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h9008921827953174583(
                x
            )) else cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h4330373251577733672(
                x
            ))));
    }
    j :=
        make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
            y
        );
    if comp {
        if equals_2(
            *j,
            (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = begin_2(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074); *temporary___g1; })
        ) {
            temporary_g13: Res_in_stl_tree = ---;
            init_175(*temporary_g13, *x, *y);
            return temporary_g13;
        } else {
            ((cast(**Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(decrement(*j))).*).*;
        }
    }
    if key_compare(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
        j.node
    ),
        k
    ) {
        temporary_g14: Res_in_stl_tree = ---;
        init_175(*temporary_g14, *x, *y);
        return temporary_g14;
    }
    temporary_g15: Res_in_stl_tree = ---;
    init_176(*temporary_g15, *j.node, (ifx true { temporary___g4: *Rb_Tree_Node_Base = null; *temporary___g4; }));
    return temporary_g15;
}

end :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 {
    return cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (base_ptr(*(((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header)));
}

base_ptr :: (using rb_tree_node_base: *Rb_Tree_Node_Base) -> Std_Rb_Tree_Node_Base_Base_Ptr {
    return rb_tree_node_base;
}

begin :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 {
    return (((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header).parent;
}

class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129 :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646
) -> *u64 {
    return cast,no_check(*u64) (key_2(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) cpp_transpiler_base_to_derived(cast(*void) x, 0)
    ));
}

key_compare :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    k1: *u64,
    k2: *u64
) -> bool {
    #assert true; // validated by the C++ frontend

    return call_3(*(((cast(*Struct_Rb_Tree_Key_Compare_Struct_Less_Unsigned_Long) *impl).*).key_compare), k1, k2);
}

call_3 :: (using struct_less_unsigned_long: *Struct_Less_Unsigned_Long, x: *u64, y: *u64) -> bool {
    return x.* < y.*;
}

decrement :: (
    using struct_rb_tree_iterator_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame {
    node = cast,no_check(Std_Rb_Tree_Iterator_Base_Ptr) std_Rb_tree_decrement(node);
    return struct_rb_tree_iterator_struct_pair_const_unsigned_long_class_list_class_frame;
}

begin_2 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 {
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
        (((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header).left
    );
}

equals_2 :: (
    x: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame,
    y: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> bool {
    return x.node == y.node;
}

class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h4330373251577733672 :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 {
    return x.right;
}

class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h9008921827953174583 :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 {
    return x.left;
}

increment :: (
    using struct_rb_tree_iterator_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame {
    node = cast,no_check(Std_Rb_Tree_Iterator_Base_Ptr) std_Rb_tree_increment(node);
    return struct_rb_tree_iterator_struct_pair_const_unsigned_long_class_list_class_frame;
}

rightmost :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 {
    return *((((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header).right);
}

leftmost :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 {
    return *((((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header).left);
}

size_9 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> Std_Rb_Tree_Size_Type {
    return ((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).node_count;
}

lower_bound :: (
    using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame,
    x: *Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type
) -> Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Iterator {
    return lower_bound(*t, x);
}

lower_bound :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    k: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H4072827160894027326
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 {
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
        lower_bound(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        begin(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074),
        end(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074),
        k
    )
    );
}

lower_bound :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646,
    y: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646,
    k: *u64
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 {
    while x != null {
        if !key_compare(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
            x
        ),
            k
        ) {
            y =
                cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (x);
            x =
                cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h9008921827953174583(
                    x
                ));
        } else {
            x =
                cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) (class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h4330373251577733672(
                    x
                ));
        }
    }
    return y;
}

begin :: (
    using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame
) -> Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Iterator {
    return begin_2(*t);
}

begin :: (
    using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame
) -> Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Iterator {
    return make_class_gnu_cxx_normal_iterator_struct_std_list_iterator_class_mkvmuxer_frame_class_s_h2387288532399407780(
        *(((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).start)
    );
}

check_len :: (
    using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame,
    n: Std_Vector_Size_Type,
    s: *s8
) -> Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Size_Type {
    if max_size_3(class_vector_struct_list_iterator_class_frame) - size_10(class_vector_struct_list_iterator_class_frame) < n {
        std_throw_length_error(s);
    }

    LEN :=
        size_10(class_vector_struct_list_iterator_class_frame) +
            max(size_10(class_vector_struct_list_iterator_class_frame), n);
    return ifx LEN < size_10(class_vector_struct_list_iterator_class_frame) || LEN > max_size_3(class_vector_struct_list_iterator_class_frame) then max_size_3(class_vector_struct_list_iterator_class_frame) else LEN;
}

size_10 :: (
    using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame
) -> Std_Vector_Size_Type {
    dif :=
        ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).finish -
            ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).start;
    if dif < 0 {
        c_transpiler_unreachable();
    }
    return cast,no_check(Std_Vector_Size_Type) dif;
}

max_size_3 :: (
    using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame
) -> Std_Vector_Size_Type {
    return max_size_4(
        get_tp_allocator(
        cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame
    )
    );
}

get_tp_allocator :: (
    using struct_vector_base_struct_list_iterator_class_frame_class_allocator_struct_list_iterator_class_frame: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame
) -> *Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Tp_Alloc_Type {
    return cast(*Class_Allocator_Struct_List_Iterator_Class_Frame) *impl;
}

max_size_4 :: (
    a: *Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Tp_Alloc_Type
) -> Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Size_Type {
    DIFFMAX: u64 =
        (cast,no_check(u64) (ifx cast,no_check(s64) (-cast(s32) 1) < 0 then ((((cast(s64) 1) << (((((cast,no_check(s32) GNU_CXX_IS_INTEGER_NONSTRICT_LONG_WIDTH) - cast(s32) (cast,no_check(s64) (-cast(s32) 1) < 0)) - 1)) & 63)) - 1) << 1) + 1 else ~(cast(s64) 0))) /
            8;
    ALLOCMAX := max_size_5(a);
    return min(DIFFMAX, ALLOCMAX);
}

max_size_5 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Allocator_Type
) -> Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Size_Type {
    return max_size_6(
        cast(*Class_New_Allocator_Struct_List_Iterator_Class_Frame) ((cast(**Class_Allocator_Struct_List_Iterator_Class_Frame) *(a)).*)
    );
}

max_size_6 :: inline (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame
) -> Std_New_Allocator_Size_Type {
    return max_size_7(class_new_allocator_struct_list_iterator_class_frame);
}

max_size_7 :: inline (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame
) -> Std_New_Allocator_Size_Type {
    return (cast,no_check(u64) (9223372036854775807)) / 8;
}

allocate_3 :: (
    using struct_vector_base_struct_list_iterator_class_frame_class_allocator_struct_list_iterator_class_frame: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame,
    n: u64
) -> Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer {
    return ifx n != 0 then cast,no_check(Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (allocate_4(cast(*Class_Allocator_Struct_List_Iterator_Class_Frame) *impl, n)) else cast,no_check(Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (null);
}

allocate_4 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Allocator_Type,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) -> Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer {
    return cast,no_check(Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (allocate_5(
        cast(*Class_New_Allocator_Struct_List_Iterator_Class_Frame) ((cast(**Class_Allocator_Struct_List_Iterator_Class_Frame) *(a)).*),
        n,
        null
    ));
}

allocate_5 :: (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame,
    n: Std_New_Allocator_Size_Type,
    unnamed_2145: *void
) -> *Struct_List_Iterator_Class_Frame {
    #assert true; // validated by the C++ frontend

    if cast(s64) (n > max_size_7(class_new_allocator_struct_list_iterator_class_frame)) != 0 {
        if n > (cast(u64) 18446744073709551615) / 8 {
            std_throw_bad_array_new_length();
        }
        std_throw_bad_alloc();
    } else {
        return cast(*Struct_List_Iterator_Class_Frame) c_transpiler_cpp_operator_new((n * 8));
    }
    return unreachable_value(*Struct_List_Iterator_Class_Frame);
}

end :: (using class_list_class_frame: *Class_List_Class_Frame) -> Std_List_Mkvmuxer_Frame_Iterator {
    return make_struct_std_list_iterator_class_mkvmuxer_frame(
        base(*(((cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame).impl).node))
    );
}

base :: (using list_node_header: *List_Node_Header) -> *List_Node_Base {
    return cast(*List_Node_Base) list_node_header;
}

index_explicit :: (
    using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame,
    k: *Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type
) -> *Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Mapped_Type {
    i :=
        lower_bound(
            class_map_unsigned_long_class_list_class_frame,
            k
        );

    if equals_2(
        *i,
        (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = end(class_map_unsigned_long_class_list_class_frame); *temporary___g1; })
    ) || call_3(
        (ifx true { temporary___g4: Struct_Less_Unsigned_Long = key_comp(class_map_unsigned_long_class_list_class_frame); *temporary___g4; }),
        k,
        *((multiply(*i)).first)
    ) {
        i = emplace_hint_unique(
            *t,
            make_struct_std_rb_tree_const_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
            *i
        ),
            *PIECEWISE_CONSTRUCT,
            (ifx true { temporary___g7: Class_Tuple_Const_Unsigned_Long = (ifx true {
    temporary_g16: Class_Tuple_Const_Unsigned_Long = ---;
    init_195(*temporary_g16, k);
    temporary_g16;
})
; *temporary___g7; }),
            (ifx true { temporary___g9: Class_Tuple = Class_Tuple.{}; *temporary___g9; })
        );
    }

    return *((multiply(*i)).second);
}

multiply :: (
    using struct_rb_tree_iterator_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Reference {
    return valptr_2(
        cast(Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Node_Ptr) cpp_transpiler_base_to_derived(cast(*void) node, 0)
    );
}

valptr_2 :: (
    using struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame
) -> *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame {
    return cast,no_check(*Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (ptr_4(*storage));
}

ptr_4 :: (
    using struct_aligned_membuf_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame {
    return cast(*Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) addr_2(struct_aligned_membuf_struct_pair_const_unsigned_long_class_list_class_frame);
}

addr_2 :: (
    using struct_aligned_membuf_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> *void {
    return cast(*void) *storage;
}

emplace_hint_unique :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    pos: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H10700294200669716772,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Const_Unsigned_Long,
    args_value: *Class_Tuple
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 {
    z: Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H5383162374263181388 = ---;
    defer deinit_91(*z);
    init_184(
        *z,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        args,
        args_value_inner,
        args_value
    );
    res :=
        get_insert_hint_unique_pos(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            pos,
            key(*z)
        );
    if res.second != null {
        return insert(*z, res);
    }
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(res.first);
}

insert :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H5383162374263181388,
    p: Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 {
    local_p: Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base = p;
    it_ :=
        insert_node(
            t,
            local_p.first,
            local_p.second,
            node
        );
    node =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) (cast(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) null);
    return it_;
}

insert_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646,
    p: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646,
    z: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 {
    insert_left :=
        x != null || p == end(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
        ) || key_compare(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            key(z),
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
            p
        )
        );

    base_z: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) base_ptr(
            cast(*Rb_Tree_Node_Base) z
        );
    struct_node_traits_struct_pair_const_unsigned_long_class_list_class_frame_struct_pair_co_h15922609541747874460(
        insert_left,
        base_z,
        p,
        *(((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header)
    );
    ((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).node_count += 1;
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(base_z);
}

struct_node_traits_struct_pair_const_unsigned_long_class_list_class_frame_struct_pair_co_h15922609541747874460 :: (
    INSERT_LEFT: bool,
    x: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base,
    p: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base,
    header: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base
) {
    std_Rb_tree_insert_and_rebalance(INSERT_LEFT, x, p, header);
    return;
}

key_comp :: (
    using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame
) -> Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Compare {
    return key_comp(*t);
}

key_comp :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> Struct_Less_Unsigned_Long {
    return ((cast(*Struct_Rb_Tree_Key_Compare_Struct_Less_Unsigned_Long) *impl).*).key_compare;
}

end :: (
    using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame
) -> Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Iterator {
    return end_2(*t);
}

end_2 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 {
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
        end(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074)
    );
}

decrement_2 :: (
    using struct_list_iterator_class_frame: *Struct_List_Iterator_Class_Frame
) -> *Struct_List_Iterator_Class_Frame {
    node = cast,no_check(*List_Node_Base) node.prev;
    return struct_list_iterator_class_frame;
}

begin :: (using class_list_class_frame: *Class_List_Class_Frame) -> Std_List_Mkvmuxer_Frame_Iterator {
    return make_struct_std_list_iterator_class_mkvmuxer_frame(
        ((cast(*List_Node_Base) (*(((cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame).impl).node))).*).next
    );
}

get_node_allocator :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame
) -> *Std_List_Base_Mkvmuxer_Frame_Std_Allocator_Mkvmuxer_Frame_Node_Alloc_Type {
    return cast(*Class_Allocator_Struct_List_Node_Class_Frame) *impl;
}

std_allocate_guarded_obj :: (
    result: *Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame,
    a: *Class_Allocator_Struct_List_Node_Class_Frame
) {
    {
        temporary_g17: Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame = ---;
        std_allocate_guarded(*temporary_g17, a);
        init_182(result, *temporary_g17);
        deinit_90(*temporary_g17);
    }
}

std_allocate_guarded :: (
    result: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame,
    a: *Class_Allocator_Struct_List_Node_Class_Frame
) {
    init_183(result, a, allocate_6(a, 1));
}

allocate_6 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Allocator_Type,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) -> Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer {
    return cast,no_check(Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer) (allocate_7(
        cast(*Class_New_Allocator_Struct_List_Node_Class_Frame) ((cast(**Class_Allocator_Struct_List_Node_Class_Frame) *(a)).*),
        n,
        null
    ));
}

allocate_7 :: (
    using class_new_allocator_struct_list_node_class_frame: *Class_New_Allocator_Struct_List_Node_Class_Frame,
    n: Std_New_Allocator_Size_Type,
    unnamed_2906: *void
) -> *Struct_List_Node_Class_Frame {
    #assert true; // validated by the C++ frontend

    if cast(s64) (n > max_size_8(class_new_allocator_struct_list_node_class_frame)) != 0 {
        if n > (cast(u64) 18446744073709551615) / 24 {
            std_throw_bad_array_new_length();
        }
        std_throw_bad_alloc();
    } else {
        return cast(*Struct_List_Node_Class_Frame) c_transpiler_cpp_operator_new((n * 24));
    }
    return unreachable_value(*Struct_List_Node_Class_Frame);
}

max_size_8 :: inline (
    using class_new_allocator_struct_list_node_class_frame: *Class_New_Allocator_Struct_List_Node_Class_Frame
) -> Std_New_Allocator_Size_Type {
    return (cast,no_check(u64) (9223372036854775807)) / 24;
}

insert_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002,
    p: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002,
    z: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11735114844526877280 {
    insert_left :=
        x != null || p == end(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
        ) || key_compare(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
            key_3(z),
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(
            p
        )
        );

    base_z: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) base_ptr(
            cast(*Rb_Tree_Node_Base) z
        );
    struct_node_traits_struct_pair_const_unsigned_long_unsigned_long_struct_pair_const_unsig_h14680563887509272066(
        insert_left,
        base_z,
        p,
        *(((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header)
    );
    ((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).node_count += 1;
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long(base_z);
}

class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137 :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002
) -> *u64 {
    return cast,no_check(*u64) (key(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) cpp_transpiler_base_to_derived(cast(*void) x, 0)
    ));
}

key :: (
    node: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H14127289816513323478
) -> *u64 {
    return cast,no_check(*u64) (call_4(*(Struct_Std_Select1st_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long.{}), valptr(node)));
}

valptr :: (
    using struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long {
    return cast,no_check(*Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (ptr_5(*storage));
}

ptr_5 :: (
    using struct_aligned_membuf_struct_pair_const_unsigned_long_unsigned_long: *Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long {
    return cast(*Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) addr(struct_aligned_membuf_struct_pair_const_unsigned_long_unsigned_long);
}

addr :: (
    using struct_aligned_membuf_struct_pair_const_unsigned_long_unsigned_long: *Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *void {
    return cast(*void) *storage;
}

call_4 :: (
    using struct_select1st_struct_pair_const_unsigned_long_unsigned_long: *Struct_Std_Select1st_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long,
    x: *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *Std_Pair_Const_Unsigned_Long_Unsigned_Long_First_Type {
    return *x.first;
}

key_3 :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903
) -> *u64 {
    return cast,no_check(*u64) (key(x));
}

key_compare :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    k1: *u64,
    k2: *u64
) -> bool {
    #assert true; // validated by the C++ frontend

    return call_3(*(((cast(*Struct_Rb_Tree_Key_Compare_Struct_Less_Unsigned_Long) *impl).*).key_compare), k1, k2);
}

end :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 {
    return cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (base_ptr(*(((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header)));
}

struct_node_traits_struct_pair_const_unsigned_long_unsigned_long_struct_pair_const_unsig_h14680563887509272066 :: (
    INSERT_LEFT: bool,
    x: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base,
    p: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base,
    header: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base
) {
    std_Rb_tree_insert_and_rebalance(INSERT_LEFT, x, p, header);
    return;
}

key :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H6684199253886259110
) -> *u64 {
    return cast,no_check(*u64) (key_3(node));
}

get_insert_hint_unique_pos :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    position: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11529203739292262000,
    k: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H5778776668768484458
) -> Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base {
    local_position: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11529203739292262000 = position;

    if local_position.node == end(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396) {
        if size_11(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
        ) > 0 &&
            key_compare(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(
                (cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) rightmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
            )).*
            ),
                k
            ) {
            temporary_g18: Res_in_stl_tree_2 = ---;
            init_174(
                *temporary_g18,
                (ifx true { temporary___g1: *Rb_Tree_Node_Base = null; *temporary___g1; }),
                rightmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
            )
            );
            return temporary_g18;
        } else {
            return get_insert_unique_pos(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
                k
            );
        }
    } else if key_compare(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        k,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(
        local_position.node
    )
    ) {
        before :=
            make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long(
                local_position.node
            );
        if local_position.node == (cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) leftmost(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
        )).* {
            temporary_g19: Res_in_stl_tree_2 = ---;
            init_175(
                *temporary_g19,
                leftmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
            ),
                leftmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
            )
            );
            return temporary_g19;
        } else if key_compare(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(
            (decrement_3(*before)).node
        ),
            k
        ) {
            if class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h12910976823974790776(
                before.node
            ) == null {
                temporary_g20: Res_in_stl_tree_2 = ---;
                init_174(
                    *temporary_g20,
                    (ifx true { temporary___g4: *Rb_Tree_Node_Base = null; *temporary___g4; }),
                    *before.node
                );
                return temporary_g20;
            } else {
                temporary_g21: Res_in_stl_tree_2 = ---;
                init_175(*temporary_g21, *local_position.node, *local_position.node);
                return temporary_g21;
            }
        } else {
            return get_insert_unique_pos(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
                k
            );
        }
    } else if key_compare(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(
        local_position.node
    ),
        k
    ) {
        after :=
            make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long(
                local_position.node
            );
        if local_position.node == (cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) rightmost(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
        )).* {
            temporary_g22: Res_in_stl_tree_2 = ---;
            init_174(
                *temporary_g22,
                (ifx true { temporary___g7: *Rb_Tree_Node_Base = null; *temporary___g7; }),
                rightmost(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
            )
            );
            return temporary_g22;
        } else if key_compare(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
            k,
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(
            (increment_2(*after)).node
        )
        ) {
            if class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h12910976823974790776(
                local_position.node
            ) == null {
                temporary_g23: Res_in_stl_tree_2 = ---;
                init_174(
                    *temporary_g23,
                    (ifx true { temporary___g9: *Rb_Tree_Node_Base = null; *temporary___g9; }),
                    *local_position.node
                );
                return temporary_g23;
            } else {
                temporary_g24: Res_in_stl_tree_2 = ---;
                init_175(*temporary_g24, *after.node, *after.node);
                return temporary_g24;
            }
        } else {
            return get_insert_unique_pos(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
                k
            );
        }
    } else {
        temporary_g25: Res_in_stl_tree_2 = ---;
        init_176(
            *temporary_g25,
            *local_position.node,
            (ifx true { temporary___g12: *Rb_Tree_Node_Base = null; *temporary___g12; })
        );
        return temporary_g25;
    }
}

get_insert_unique_pos :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    k: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H5778776668768484458
) -> Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base {
    x :=
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (begin(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
        ));
    y :=
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (end(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
        ));
    comp: bool = true;
    while x != null {
        y =
            cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (x);
        comp =
            key_compare(
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
                k,
                class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(
                x
            )
            );
        x =
            cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) ((ifx comp then cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h10317171962513837895(
                x
            )) else cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h12910976823974790776(
                x
            ))));
    }
    j :=
        make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long(
            y
        );
    if comp {
        if equals_3(
            *j,
            (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long = begin_3(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
        ); *temporary___g1; })
        ) {
            temporary_g26: Res_in_stl_tree_3 = ---;
            init_175(*temporary_g26, *x, *y);
            return temporary_g26;
        } else {
            ((cast(**Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) *(decrement_3(*j))).*).*;
        }
    }
    if key_compare(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(
        j.node
    ),
        k
    ) {
        temporary_g27: Res_in_stl_tree_3 = ---;
        init_175(*temporary_g27, *x, *y);
        return temporary_g27;
    }
    temporary_g28: Res_in_stl_tree_3 = ---;
    init_176(*temporary_g28, *j.node, (ifx true { temporary___g4: *Rb_Tree_Node_Base = null; *temporary___g4; }));
    return temporary_g28;
}

begin :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 {
    return (((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header).parent;
}

decrement_3 :: (
    using struct_rb_tree_iterator_struct_pair_const_unsigned_long_unsigned_long: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long {
    node = cast,no_check(Std_Rb_Tree_Iterator_Base_Ptr) std_Rb_tree_decrement(node);
    return struct_rb_tree_iterator_struct_pair_const_unsigned_long_unsigned_long;
}

begin_3 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11735114844526877280 {
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long(
        (((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header).left
    );
}

equals_3 :: (
    x: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long,
    y: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> bool {
    return x.node == y.node;
}

class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h12910976823974790776 :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 {
    return x.right;
}

class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h10317171962513837895 :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 {
    return x.left;
}

increment_2 :: (
    using struct_rb_tree_iterator_struct_pair_const_unsigned_long_unsigned_long: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long {
    node = cast,no_check(Std_Rb_Tree_Iterator_Base_Ptr) std_Rb_tree_increment(node);
    return struct_rb_tree_iterator_struct_pair_const_unsigned_long_unsigned_long;
}

rightmost :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 {
    return *((((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header).right);
}

leftmost :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 {
    return *((((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).header).left);
}

size_11 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> Std_Rb_Tree_Size_Type {
    return ((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).node_count;
}

lower_bound :: (
    using class_map_unsigned_long_unsigned_long: *Class_Map_Unsigned_Long_Unsigned_Long,
    x: *Std_Map_Unsigned_Long_Unsigned_Long_Key_Type
) -> Std_Map_Unsigned_Long_Unsigned_Long_Iterator {
    return lower_bound(*t, x);
}

lower_bound :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    k: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H5778776668768484458
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11735114844526877280 {
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long(
        lower_bound(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        begin(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396),
        end(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396),
        k
    )
    );
}

lower_bound :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002,
    y: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002,
    k: *u64
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 {
    while x != null {
        if !key_compare(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h5658210507768599137(x),
            k
        ) {
            y =
                cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (x);
            x =
                cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h10317171962513837895(
                    x
                ));
        } else {
            x =
                cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) (class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_select1_h12910976823974790776(
                    x
                ));
        }
    }
    return y;
}

find_2 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    k: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H4072827160894027326
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 {
    j :=
        make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
            lower_bound(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            begin(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
        ),
            end(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
        ),
            k
        )
        );
    return ifx equals_2(
        *j,
        (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = end_2(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074); *temporary___g1; })
    ) || key_compare(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        k,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_struc_h15592813660946966129(
        j.node
    )
    ) then end_2(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074) else j;
}

end :: (
    using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping
) -> Std_Vector_Mkvmuxer_Block_Addition_Mapping_Const_Iterator {
    return make_class_gnu_cxx_normal_iterator_const_class_mkvmuxer_block_addition_mapping_class_std_h2234329072318249296(
        *(((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).finish)
    );
}

begin :: (
    using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping
) -> Std_Vector_Mkvmuxer_Block_Addition_Mapping_Const_Iterator {
    return make_class_gnu_cxx_normal_iterator_const_class_mkvmuxer_block_addition_mapping_class_std_h2234329072318249296(
        *(((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).start)
    );
}

check_len :: (
    using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping,
    n: Std_Vector_Size_Type,
    s: *s8
) -> Std_Vector_Mkvmuxer_Block_Addition_Mapping_Size_Type {
    if max_size_9(class_vector_class_block_addition_mapping) - size_12(class_vector_class_block_addition_mapping) < n {
        std_throw_length_error(s);
    }

    LEN :=
        size_12(class_vector_class_block_addition_mapping) +
            max(size_12(class_vector_class_block_addition_mapping), n);
    return ifx LEN < size_12(class_vector_class_block_addition_mapping) || LEN > max_size_9(class_vector_class_block_addition_mapping) then max_size_9(class_vector_class_block_addition_mapping) else LEN;
}

size_12 :: (
    using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping
) -> Std_Vector_Size_Type {
    dif :=
        ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).finish -
            ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).start;
    if dif < 0 {
        c_transpiler_unreachable();
    }
    return cast,no_check(Std_Vector_Size_Type) dif;
}

max_size_9 :: (
    using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping
) -> Std_Vector_Size_Type {
    return max_size_10(
        get_tp_allocator(
        cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping
    )
    );
}

get_tp_allocator :: (
    using struct_vector_base_class_block_addition_mapping_class_allocator_class_block_addition_mapping: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping
) -> *Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Tp_Alloc_Type {
    return cast(*Class_Allocator_Class_Block_Addition_Mapping) *impl;
}

max_size_10 :: (
    a: *Std_Vector_Mkvmuxer_Block_Addition_Mapping_Tp_Alloc_Type
) -> Std_Vector_Mkvmuxer_Block_Addition_Mapping_Size_Type {
    DIFFMAX: u64 =
        (cast,no_check(u64) (ifx cast,no_check(s64) (-cast(s32) 1) < 0 then ((((cast(s64) 1) << (((((cast,no_check(s32) GNU_CXX_IS_INTEGER_NONSTRICT_LONG_WIDTH) - cast(s32) (cast,no_check(s64) (-cast(s32) 1) < 0)) - 1)) & 63)) - 1) << 1) + 1 else ~(cast(s64) 0))) /
            40;
    ALLOCMAX := max_size_11(a);
    return min(DIFFMAX, ALLOCMAX);
}

max_size_11 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Allocator_Type
) -> Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Size_Type {
    return max_size_12(
        cast(*Class_New_Allocator_Class_Block_Addition_Mapping) ((cast(**Class_Allocator_Class_Block_Addition_Mapping) *(a)).*)
    );
}

max_size_12 :: inline (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping
) -> Std_New_Allocator_Size_Type {
    return max_size_13(class_new_allocator_class_block_addition_mapping);
}

max_size_13 :: inline (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping
) -> Std_New_Allocator_Size_Type {
    return (cast,no_check(u64) (9223372036854775807)) / 40;
}

allocate_8 :: (
    using struct_vector_base_class_block_addition_mapping_class_allocator_class_block_addition_mapping: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping,
    n: u64
) -> Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer {
    return ifx n != 0 then cast,no_check(Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) (allocate_9(cast(*Class_Allocator_Class_Block_Addition_Mapping) *impl, n)) else cast,no_check(Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) (null);
}

allocate_9 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Allocator_Type,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) -> Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer {
    return cast,no_check(Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) (allocate_10(
        cast(*Class_New_Allocator_Class_Block_Addition_Mapping) ((cast(**Class_Allocator_Class_Block_Addition_Mapping) *(a)).*),
        n,
        null
    ));
}

allocate_10 :: (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping,
    n: Std_New_Allocator_Size_Type,
    unnamed_4407: *void
) -> *Block_Addition_Mapping {
    #assert true; // validated by the C++ frontend

    if cast(s64) (n > max_size_13(class_new_allocator_class_block_addition_mapping)) != 0 {
        if n > (cast(u64) 18446744073709551615) / 40 {
            std_throw_bad_array_new_length();
        }
        std_throw_bad_alloc();
    } else {
        return cast(*Block_Addition_Mapping) c_transpiler_cpp_operator_new((n * 40));
    }
    return unreachable_value(*Block_Addition_Mapping);
}

get_track_by_number :: (tracks: *Mkvmuxer_Tracks, track_number: u64) -> *Mkvmuxer_Track {
    COUNT := cast,no_check(s32) track_entries_size(tracks);
    if 0 < COUNT {
        for i: 0..COUNT - 1 {
            if number(tracks.track_entries[i]) == track_number {
                return tracks.track_entries[i];
            }
        }
    }

    return cast(*Mkvmuxer_Track) null;
}

get_track_by_number :: (using segment: *Mkvmuxer_Segment, track_number: u64) -> *Mkvmuxer_Track {
    return get_track_by_number(*tracks, track_number);
}

update_chunk_name :: (using segment: *Mkvmuxer_Segment, ext: *s8, name: **s8) -> bool {
    if name == null || ext == null {
        return false;
    }

    ext_chk: [64] s8 = ---;

    snprintf(ext_chk.data, 64, c_string("_%06d.%s"), chunk_count, ext);

    CHUNKING_BASE_NAME_LENGTH := cstring_length(chunking_base_name);
    EXT_CHK_LENGTH := cstring_length(ext_chk.data);
    LENGTH := CHUNKING_BASE_NAME_LENGTH + EXT_CHK_LENGTH + 1;
    STR := cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(LENGTH, size_of(s8)));
    if STR == null {
        return false;
    }

    copy_memory(STR, chunking_base_name, CHUNKING_BASE_NAME_LENGTH);
    copy_memory(*STR[CHUNKING_BASE_NAME_LENGTH], ext_chk.data, EXT_CHK_LENGTH);
    STR[CHUNKING_BASE_NAME_LENGTH + EXT_CHK_LENGTH] = 0;

    {
        cpp_transpiler_delete_g29 := cast,no_check(*s8) (name.*);
        if cpp_transpiler_delete_g29 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g29);
        }
    }
    name.* = cast,no_check(*s8) (STR);

    return true;
}

add_generic_frame :: (segment: *Mkvmuxer_Segment, frame: *Frame) -> bool {
    if frame == null {
        return false;
    }

    if !check_header_info(segment) {
        return false;
    }

    if timestamp(frame) < segment.last_timestamp {
        return false;
    }

    if get_track_by_number(*segment.tracks, track_number(frame)) == null {
        return false;
    }

    if discard_padding(frame) != 0 {
        segment.doc_type_version = 4;
    }

    if segment.cluster_list_size > 0 {
        TIMECODE_SCALE := timecode_scale(*segment.segment_info);
        FRAME_TIMECODE := timestamp(frame) / TIMECODE_SCALE;

        LAST_CLUSTER := cast,no_check(*Mkvmuxer_Cluster) (segment.cluster_list[segment.cluster_list_size - 1]);
        LAST_CLUSTER_TIMECODE := timecode(LAST_CLUSTER);

        REL_TIMECODE := FRAME_TIMECODE - LAST_CLUSTER_TIMECODE;
        if REL_TIMECODE > cast,no_check(u64) cast(s64) 0x7fff {
            segment.force_new_cluster = true;
        }
    }

    if segment.has_video && track_is_audio(*segment.tracks, track_number(frame)) && !segment.force_new_cluster {
        NEW_FRAME := cast,no_check(*Frame) (cast(*Frame) cpp_transpiler_allocate_raw(size_of(Frame)));
        init_6(NEW_FRAME);
        if NEW_FRAME == null || !copy_from(NEW_FRAME, frame) {
            {
                cpp_transpiler_delete_g30 := cast,no_check(*Frame) (NEW_FRAME);
                if cpp_transpiler_delete_g30 != null {
                    deinit_3(cpp_transpiler_delete_g30);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g30);
                }
            }
            return false;
        }
        if !queue_frame(segment, NEW_FRAME) {
            {
                cpp_transpiler_delete_g31 := cast,no_check(*Frame) (NEW_FRAME);
                if cpp_transpiler_delete_g31 != null {
                    deinit_3(cpp_transpiler_delete_g31);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g31);
                }
            }
            return false;
        }
        segment.track_frames_written[track_number(frame) - 1] += 1;
        return true;
    }

    if !do_new_cluster_processing(segment, track_number(frame), timestamp(frame), is_key(frame)) {
        return false;
    }

    if segment.cluster_list_size < 1 {
        return false;
    }

    CLUSTER: *Mkvmuxer_Cluster = cast,no_check(*Mkvmuxer_Cluster) segment.cluster_list[segment.cluster_list_size - 1];
    if CLUSTER == null {
        return false;
    }

    frame_created: bool = false;
    if !can_be_simple_block(frame) && !is_key(frame) && !reference_block_timestamp_set(frame) {
        NEW_FRAME := cast,no_check(*Frame) (cast(*Frame) cpp_transpiler_allocate_raw(size_of(Frame)));
        init_6(NEW_FRAME);
        if NEW_FRAME == null || !copy_from(NEW_FRAME, frame) {
            {
                cpp_transpiler_delete_g32 := cast,no_check(*Frame) (NEW_FRAME);
                if cpp_transpiler_delete_g32 != null {
                    deinit_3(cpp_transpiler_delete_g32);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g32);
                }
            }
            return false;
        }
        set_reference_block_timestamp(
            NEW_FRAME,
            cast,no_check(s64) (segment.last_track_timestamp[track_number(frame) - 1])
        );
        frame = cast,no_check(*Frame) (NEW_FRAME);
        frame_created = true;
    }

    if !add_frame(CLUSTER, frame) {
        return false;
    }

    if segment.new_cuepoint && segment.cues_track == track_number(frame) {
        if is_key(frame) && !add_cue_point(segment, timestamp(frame), segment.cues_track) {
            return false;
        } else {
            segment.new_cuepoint = false;
        }
    }

    segment.last_timestamp = timestamp(frame);
    assignment_0: u64 = timestamp(frame);
    ((cast,no_check(*u64) *(segment.last_track_timestamp[track_number(frame) - 1])).*) = assignment_0;
    segment.last_block_duration = duration(frame);
    segment.track_frames_written[track_number(frame) - 1] += 1;

    if frame_created {
        {
            cpp_transpiler_delete_g33 := cast,no_check(*Frame) (frame);
            if cpp_transpiler_delete_g33 != null {
                deinit_3(cpp_transpiler_delete_g33);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g33);
            }
        }
    }
    return true;
}

add_cue_point :: (using segment: *Mkvmuxer_Segment, timestamp: u64, track: u64) -> bool {
    if cluster_list_size < 1 {
        return false;
    }

    CLUSTER := cast,no_check(*Mkvmuxer_Cluster) (cluster_list[cluster_list_size - 1]);
    if CLUSTER == null {
        return false;
    }

    CUE :=
        cast,no_check(*Mkvmuxer_Cue_Point) (cast(*Mkvmuxer_Cue_Point) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Cue_Point)
        ));
    init_9(CUE);
    if CUE == null {
        return false;
    }

    CUE.time = timestamp / timecode_scale(*segment_info);
    CUE.block_number = cast,no_check(u64) blocks_added(CLUSTER);
    CUE.cluster_pos = cast,no_check(u64) position_for_cues(CLUSTER);
    CUE.track = track;
    if !add_cue(*cues, CUE) {
        {
            cpp_transpiler_delete_g34 := cast,no_check(*Mkvmuxer_Cue_Point) (CUE);
            if cpp_transpiler_delete_g34 != null {
                deinit_4(cpp_transpiler_delete_g34);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g34);
            }
        }
        return false;
    }

    new_cuepoint = false;
    return true;
}

add_cue :: (using cues: *Mkvmuxer_Cues, cue: *Mkvmuxer_Cue_Point) -> bool {
    if cue == null {
        return false;
    }

    if cue_entries_size + 1 > cue_entries_capacity {
        NEW_CAPACITY := (ifx cue_entries_capacity == 0 then 2 else cue_entries_capacity * 2);

        if NEW_CAPACITY < 1 {
            return false;
        }

        CUES :=
            cast,no_check(**Mkvmuxer_Cue_Point) (cast(**Mkvmuxer_Cue_Point) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) NEW_CAPACITY,
                size_of(*Mkvmuxer_Cue_Point)
            ));
        if CUES == null {
            return false;
        }

        {
            i: s32 = 0;
            while i < cue_entries_size {
                CUES[i] = cast,no_check(*Mkvmuxer_Cue_Point) (cue_entries[i]);
                i += 1;
            }
        }

        {
            cpp_transpiler_delete_g35 := cast,no_check(**Mkvmuxer_Cue_Point) (cue_entries);
            if cpp_transpiler_delete_g35 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g35);
            }
        }

        cue_entries = cast,no_check(**Mkvmuxer_Cue_Point) (CUES);
        cue_entries_capacity = NEW_CAPACITY;
    }

    cue.output_block_number = output_block_number;
    cue_entries[cue_entries_size] = cast,no_check(*Mkvmuxer_Cue_Point) (cue);
    cue_entries_size += 1;
    return true;
}

add_frame :: (using cluster: *Mkvmuxer_Cluster, FRAME: *Frame) -> bool {
    return queue_or_write_frame(cluster, FRAME);
}

queue_or_write_frame :: (using cluster: *Mkvmuxer_Cluster, FRAME: *Frame) -> bool {
    if FRAME == null || !is_valid(FRAME) {
        return false;
    }

    if !write_last_frame_with_duration {
        return do_write_frame(cluster, FRAME);
    }

    track_number_value := track_number(FRAME);
    FRAME_TO_STORE := cast,no_check(*Frame) (cast(*Frame) cpp_transpiler_allocate_raw(size_of(Frame)));
    init_6(FRAME_TO_STORE);
    if FRAME_TO_STORE == null {
        return false;
    }
    copy_from(FRAME_TO_STORE, FRAME);
    push_back(index_explicit(*stored_frames, *track_number_value), *FRAME_TO_STORE);

    frames_to_erase: Class_Vector_Struct_List_Iterator_Class_Frame = ---;
    defer deinit_92(*frames_to_erase);
    init_198(*frames_to_erase);
    {
        current_track_iterator :=
            begin(
                index_explicit(*stored_frames, *track_number_value)
            );
        end_value: Std_List_Mkvmuxer_Frame_Iterator =
            ((cast(**Struct_List_Iterator_Class_Frame) *(decrement_2(
                (ifx true { temporary___g1: Std_List_Mkvmuxer_Frame_Iterator = end(index_explicit(*stored_frames, *track_number_value)); *temporary___g1; })
            ))).*).*;
        while not_equal(*current_track_iterator, *end_value) {
            FRAME_TO_WRITE := cast,no_check(*Frame) ((cast(**Frame) multiply_3(*current_track_iterator)).*);
            okay_to_write: bool = true;
            {
                track_iterator := begin(*stored_frames);
                while not_equal(
                    *track_iterator,
                    (ifx true { temporary___g4: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = end(*stored_frames); *temporary___g4; })
                ) {
                    if (get_pointer(*track_iterator)).first == track_number_value {
                        ((cast(**Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(increment(*track_iterator))).*).*;
                        continue;
                    }
                    if timestamp(
                        (cast(*Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type) front(*((get_pointer(*track_iterator)).second))).*
                    ) < timestamp(FRAME_TO_WRITE) {
                        okay_to_write = false;
                        break;
                    }
                    ((cast(**Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(increment(*track_iterator))).*).*;
                }
            }
            if okay_to_write {
                WROTE_FRAME := do_write_frame(cluster, FRAME_TO_WRITE);
                {
                    cpp_transpiler_delete_g36 := cast,no_check(*Frame) (FRAME_TO_WRITE);
                    if cpp_transpiler_delete_g36 != null {
                        deinit_3(cpp_transpiler_delete_g36);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g36);
                    }
                }
                if !WROTE_FRAME {
                    return false;
                }
                push_back(*frames_to_erase, *current_track_iterator);
            } else {
                break;
            }
            ((cast(**Struct_List_Iterator_Class_Frame) *(increment_4(*current_track_iterator))).*).*;
        }
    }
    {
        iterator := begin(*frames_to_erase);
        while not_equal(
            *iterator,
            (ifx true { temporary___g7: Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame = end(*frames_to_erase); *temporary___g7; })
        ) {
            erase(
                index_explicit(*stored_frames, *track_number_value),
                make_struct_std_list_const_iterator_class_mkvmuxer_frame(multiply_2(*iterator))
            );
            ((cast(**Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame) *(increment_3(*iterator))).*).*;
        }
    }
    return true;
}

multiply_2 :: inline (
    using class_normal_iterator_struct_list_iterator_class_frame_class_vector_struct_list_iterator_class_frame: *Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame
) -> Gnu_Cxx_Normal_Iterator_Std_List_Iterator_Mkvmuxer_Frame_Std_Vector_Std_List_Itera_H6449094776022228433 {
    return current;
}

erase :: (
    using class_list_class_frame: *Class_List_Class_Frame,
    position: Std_List_Mkvmuxer_Frame_Const_Iterator
) -> Std_List_Mkvmuxer_Frame_Iterator {
    local_position: Std_List_Mkvmuxer_Frame_Const_Iterator = position;
    ret := make_struct_std_list_iterator_class_mkvmuxer_frame(local_position.node.next);
    erase(class_list_class_frame, const_cast(*local_position));
    return ret;
}

const_cast :: (
    using struct_list_const_iterator_class_frame: *Struct_List_Const_Iterator_Class_Frame
) -> Std_List_Const_Iterator_Mkvmuxer_Frame_Iterator {
    return make_struct_std_list_iterator_class_mkvmuxer_frame(node);
}

erase :: (using class_list_class_frame: *Class_List_Class_Frame, position: Std_List_Mkvmuxer_Frame_Iterator) {
    local_position: Std_List_Mkvmuxer_Frame_Iterator = position;
    dec_size(cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame, 1);
    unhook(local_position.node);
    n: *Node =
        cast,no_check(*Node) (cast(*Struct_List_Node_Class_Frame) cpp_transpiler_base_to_derived(
            cast(*void) local_position.node,
            0
        ));
    destroy_node(cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame, node_ptr(n));
}

node_ptr :: (
    using struct_list_node_class_frame: *Struct_List_Node_Class_Frame
) -> Std_List_Node_Mkvmuxer_Frame_Node_Ptr {
    return struct_list_node_class_frame;
}

destroy_node :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame,
    p: Std_List_Base_Mkvmuxer_Frame_Std_Allocator_Mkvmuxer_Frame_Node_Ptr
) {
    destroy_2(cast(*Class_Allocator_Struct_List_Node_Class_Frame) *impl, valptr(p));



    put_node(class_list_base_class_frame_class_allocator_class_frame, p);
}

put_node :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame,
    p: Std_List_Base_Mkvmuxer_Frame_Std_Allocator_Mkvmuxer_Frame_Node_Ptr
) {
    deallocate_2(cast(*Class_Allocator_Struct_List_Node_Class_Frame) *impl, p, 1);
}

deallocate_2 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Allocator_Type,
    p: Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) {
    deallocate_3(
        cast(*Class_New_Allocator_Struct_List_Node_Class_Frame) ((cast(**Class_Allocator_Struct_List_Node_Class_Frame) *(a)).*),
        p,
        n
    );
}

deallocate_3 :: (
    using class_new_allocator_struct_list_node_class_frame: *Class_New_Allocator_Struct_List_Node_Class_Frame,
    p: *Struct_List_Node_Class_Frame,
    n: Std_New_Allocator_Size_Type
) {
    c_transpiler_cpp_operator_delete(cast(*void) p);
}

valptr :: (using struct_list_node_class_frame: *Struct_List_Node_Class_Frame) -> **Frame {
    return cast,no_check(**Frame) (ptr_6(*storage));
}

ptr_6 :: (using struct_aligned_membuf_class_frame: *Struct_Aligned_Membuf_Class_Frame) -> **Frame {
    return cast(**Frame) addr(struct_aligned_membuf_class_frame);
}

addr :: (using struct_aligned_membuf_class_frame: *Struct_Aligned_Membuf_Class_Frame) -> *void {
    return cast(*void) *storage;
}

destroy_2 :: inline (a: *Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Allocator_Type, p: **Frame) {
    destroy_3(
        cast(*Class_New_Allocator_Struct_List_Node_Class_Frame) ((cast(**Class_Allocator_Struct_List_Node_Class_Frame) *(a)).*),
        p
    );
}

destroy_3 :: inline (
    using class_new_allocator_struct_list_node_class_frame: *Class_New_Allocator_Struct_List_Node_Class_Frame,
    p: **Frame
) {
}

dec_size :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame,
    n: u64
) {
    c_transpiler_compound_sub(*(((cast(*List_Size) cpp_transpiler_derived_to_base(cast(*void) *impl.node, 16)).*).size), (n), u64, u64);
}

increment_3 :: inline (
    using class_normal_iterator_struct_list_iterator_class_frame_class_vector_struct_list_iterator_class_frame: *Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame
) -> *Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame {
    current += 1;
    return class_normal_iterator_struct_list_iterator_class_frame_class_vector_struct_list_iterator_class_frame;
}

end :: (
    using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame
) -> Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Iterator {
    return make_class_gnu_cxx_normal_iterator_struct_std_list_iterator_class_mkvmuxer_frame_class_s_h2387288532399407780(
        *(((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).finish)
    );
}

not_equal :: inline (
    lhs: *Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame,
    rhs: *Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame
) -> bool {
    return (cast(**Struct_List_Iterator_Class_Frame) base(lhs)).* != (cast(**Struct_List_Iterator_Class_Frame) base(rhs)).*;
}

base :: inline (
    using class_normal_iterator_struct_list_iterator_class_frame_class_vector_struct_list_iterator_class_frame: *Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame
) -> **Struct_List_Iterator_Class_Frame {
    return *current;
}

push_back :: (
    using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame,
    x: *Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Value_Type
) {
    if ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).finish != ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).end_of_storage {
        construct_4(
            cast(*Class_Allocator_Struct_List_Iterator_Class_Frame) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl)),
            ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).finish,
            x
        );
        ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).finish += 1;
    } else {
        realloc_append(class_vector_struct_list_iterator_class_frame, x);
    }
}

realloc_append :: (
    using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame,
    args: *Struct_List_Iterator_Class_Frame
) {
    LEN :=
        check_len(
            class_vector_struct_list_iterator_class_frame,
            1,
            c_string("vector::_M_realloc_append")
        );
    if LEN <= 0 {
        c_transpiler_unreachable();
    }
    old_start :=
        cast,no_check(Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).start);
    old_finish :=
        cast,no_check(Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).finish);
    ELEMS := size_10(class_vector_struct_list_iterator_class_frame);
    new_start :=
        cast,no_check(Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (allocate_3(
            cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame,
            LEN
        ));
    new_finish := cast,no_check(Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (new_start);

    {
        guard: Struct_Vector_Struct_List_Iterator_Class_Frame_Guard_Alloc = ---;
        defer deinit_97(*guard);
        init_203(
            *guard,
            new_start,
            LEN,
            cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame
        );

        construct_4(
            cast(*Class_Allocator_Struct_List_Iterator_Class_Frame) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl)),
            std_to_address(new_start + ELEMS),
            args
        );

        new_finish =
            cast,no_check(Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer) std_relocate_a(
                old_start,
                old_finish,
                new_start,
                get_tp_allocator_2(
                cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame
            )
            );
        new_finish += 1;
        guard.storage = cast,no_check(Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (old_start);
        guard.len =
            cast,no_check(Std_Vector_Size_Type) (((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).end_of_storage -
                old_start);
    }

    assignment_1: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer =
        cast,no_check(Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (new_start);
    ((cast,no_check(*Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) *(((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).start)).*) = assignment_1;
    assignment_2: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer =
        cast,no_check(Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (new_finish);
    ((cast,no_check(*Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) *(((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).finish)).*) = assignment_2;
    assignment_3: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer =
        cast,no_check(Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) ((new_start +
            LEN));
    ((cast,no_check(*Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) *(((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).end_of_storage)).*) = assignment_3;
}

get_tp_allocator_2 :: (
    using struct_vector_base_struct_list_iterator_class_frame_class_allocator_struct_list_iterator_class_frame: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame
) -> *Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Tp_Alloc_Type {
    return cast(*Class_Allocator_Struct_List_Iterator_Class_Frame) *impl;
}

std_relocate_a :: (
    first: *Struct_List_Iterator_Class_Frame,
    last: *Struct_List_Iterator_Class_Frame,
    result: *Struct_List_Iterator_Class_Frame,
    alloc_: *Class_Allocator_Struct_List_Iterator_Class_Frame
) -> *Struct_List_Iterator_Class_Frame {
    return cast,no_check(*Struct_List_Iterator_Class_Frame) (std_relocate_a_1(std_niter_base_2(first), std_niter_base_2(last), std_niter_base_2(result), alloc_));
}

std_niter_base_2 :: inline (it_: *Struct_List_Iterator_Class_Frame) -> *Struct_List_Iterator_Class_Frame {
    return it_;
}

std_relocate_a_1 :: (
    first: *Struct_List_Iterator_Class_Frame,
    last: *Struct_List_Iterator_Class_Frame,
    result: *Struct_List_Iterator_Class_Frame,
    alloc_: *Class_Allocator_Struct_List_Iterator_Class_Frame
) -> *Struct_List_Iterator_Class_Frame {
    #assert true; // validated by the C++ frontend
    cur := cast,no_check(*Struct_List_Iterator_Class_Frame) (result);
    while first != last {
        std_relocate_object_a(cur, first, alloc_);
        first += 1;
        cur += 1;
    }
    return cur;
}

std_relocate_object_a :: (
    dest: *Struct_List_Iterator_Class_Frame,
    orig: *Struct_List_Iterator_Class_Frame,
    alloc_: *Class_Allocator_Struct_List_Iterator_Class_Frame
) {
    construct_2(alloc_, dest, orig);
    destroy_4(alloc_, orig);
}

destroy_4 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Allocator_Type,
    p: *Struct_List_Iterator_Class_Frame
) {
    destroy_5(
        cast(*Class_New_Allocator_Struct_List_Iterator_Class_Frame) ((cast(**Class_Allocator_Struct_List_Iterator_Class_Frame) *(a)).*),
        p
    );
}

destroy_5 :: inline (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame,
    p: *Struct_List_Iterator_Class_Frame
) {
}

construct_2 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Allocator_Type,
    p: *Struct_List_Iterator_Class_Frame,
    args: *Struct_List_Iterator_Class_Frame
) {
    construct_3(
        cast(*Class_New_Allocator_Struct_List_Iterator_Class_Frame) ((cast(**Class_Allocator_Struct_List_Iterator_Class_Frame) *(a)).*),
        p,
        args
    );
}

construct_3 :: inline (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame,
    p: *Struct_List_Iterator_Class_Frame,
    args: *Struct_List_Iterator_Class_Frame
) {
    (ifx true {
    cpp_transpiler_new_g37 :=
        cast,no_check(*Struct_List_Iterator_Class_Frame) (cast(*Struct_List_Iterator_Class_Frame) cast(*void) p);
    cpp_transpiler_new_g37.* = ((cast(**Struct_List_Iterator_Class_Frame) *(args)).*).*;
    cpp_transpiler_new_g37;
})
;
}

class_vector_struct_list_iterator_class_frame_use_relocate :: () -> bool {
    return class_vector_struct_list_iterator_class_frame_nothrow_relocate(
        (cast(*Struct_Std_Integral_Constant_Bool_True) (*(Struct_Is_Move_Insertable_Class_Allocator_Struct_List_Iterator_Class_Frame.{}))).*
    );
}

class_vector_struct_list_iterator_class_frame_nothrow_relocate :: (unnamed_6048: True_Type) -> bool {
    return true;
}

std_to_address :: inline (ptr: *Struct_List_Iterator_Class_Frame) -> *Struct_List_Iterator_Class_Frame {
    #assert true; // validated by the C++ frontend
    return ptr;
}

construct_4 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Allocator_Type,
    p: *Struct_List_Iterator_Class_Frame,
    args: *Struct_List_Iterator_Class_Frame
) {
    construct_5(
        cast(*Class_New_Allocator_Struct_List_Iterator_Class_Frame) ((cast(**Class_Allocator_Struct_List_Iterator_Class_Frame) *(a)).*),
        p,
        args
    );
}

construct_5 :: inline (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame,
    p: *Struct_List_Iterator_Class_Frame,
    args: *Struct_List_Iterator_Class_Frame
) {
    (ifx true {
    cpp_transpiler_new_g38 :=
        cast,no_check(*Struct_List_Iterator_Class_Frame) (cast(*Struct_List_Iterator_Class_Frame) cast(*void) p);
    cpp_transpiler_new_g38.* = ((cast(**Struct_List_Iterator_Class_Frame) *(args)).*).*;
    cpp_transpiler_new_g38;
})
;
}

multiply_3 :: (
    using struct_list_iterator_class_frame: *Struct_List_Iterator_Class_Frame
) -> Std_List_Iterator_Mkvmuxer_Frame_Reference {
    return valptr(cast(*Std_List_Iterator_Mkvmuxer_Frame_Node) cpp_transpiler_base_to_derived(cast(*void) node, 0));
}

do_write_frame :: (using cluster: *Mkvmuxer_Cluster, FRAME: *Frame) -> bool {
    if FRAME == null || !is_valid(FRAME) {
        return false;
    }

    if !pre_write_block(cluster) {
        return false;
    }

    ELEMENT_SIZE := mkvmuxer_WriteFrame(writer, FRAME, cluster);
    if ELEMENT_SIZE == 0 {
        return false;
    }

    post_write_block(cluster, ELEMENT_SIZE);
    assignment_4: Std_Map_Unsigned_Long_Unsigned_Long_Mapped_Type = timestamp(FRAME);
    ((cast,no_check(*Std_Map_Unsigned_Long_Unsigned_Long_Mapped_Type) *(((cast(**Std_Map_Unsigned_Long_Unsigned_Long_Mapped_Type) *(index_explicit_2(
        *last_block_timestamp,
        (ifx true { temporary___g1: Std_Map_Unsigned_Long_Unsigned_Long_Key_Type = track_number(FRAME); *temporary___g1; })
    ))).*).*)).*) = assignment_4;
    return true;
}

index_explicit_2 :: (
    using class_map_unsigned_long_unsigned_long: *Class_Map_Unsigned_Long_Unsigned_Long,
    k: *Std_Map_Unsigned_Long_Unsigned_Long_Key_Type
) -> *Std_Map_Unsigned_Long_Unsigned_Long_Mapped_Type {
    i := lower_bound(class_map_unsigned_long_unsigned_long, k);

    if equals_3(
        *i,
        (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long = end(class_map_unsigned_long_unsigned_long); *temporary___g1; })
    ) || call_3(
        (ifx true { temporary___g4: Struct_Less_Unsigned_Long = key_comp(class_map_unsigned_long_unsigned_long); *temporary___g4; }),
        k,
        *((multiply_4(*i)).first)
    ) {
        i = emplace_hint_unique(
            *t,
            make_struct_std_rb_tree_const_iterator_struct_std_pair_const_unsigned_long_unsigned_long(*i),
            *PIECEWISE_CONSTRUCT,
            (ifx true { temporary___g7: Class_Tuple_Unsigned_Long = std_forward_as_tuple(k); *temporary___g7; }),
            (ifx true { temporary___g9: Class_Tuple = Class_Tuple.{}; *temporary___g9; })
        );
    }
    return *((multiply_4(*i)).second);
}

multiply_4 :: (
    using struct_rb_tree_iterator_struct_pair_const_unsigned_long_unsigned_long: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Reference {
    return valptr_3(
        cast(Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Node_Ptr) cpp_transpiler_base_to_derived(cast(*void) node, 0)
    );
}

valptr_3 :: (
    using struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long {
    return cast,no_check(*Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (ptr_7(*storage));
}

ptr_7 :: (
    using struct_aligned_membuf_struct_pair_const_unsigned_long_unsigned_long: *Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long {
    return cast(*Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) addr_3(struct_aligned_membuf_struct_pair_const_unsigned_long_unsigned_long);
}

addr_3 :: (
    using struct_aligned_membuf_struct_pair_const_unsigned_long_unsigned_long: *Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *void {
    return cast(*void) *storage;
}

std_forward_as_tuple :: (args: *u64) -> Class_Tuple_Unsigned_Long {
    temporary_g39: Class_Tuple_Unsigned_Long = ---;
    init_172(
        *temporary_g39,
        (ifx true { temporary___g1: Class_Tuple_Unsigned_Long = (ifx true {
    temporary_g40: Class_Tuple_Unsigned_Long = ---;
    init_177(*temporary_g40, args);
    temporary_g40;
})
; *temporary___g1; })
    );
    return temporary_g39;
}

emplace_hint_unique :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    pos: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11529203739292262000,
    args_value_inner: *Piecewise_Construct_T,
    args_value: *Class_Tuple_Unsigned_Long,
    args: *Class_Tuple
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11735114844526877280 {
    z: Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H6684199253886259110 = ---;
    defer deinit_88(*z);
    init_169(
        *z,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        args_value_inner,
        args_value,
        args
    );
    res :=
        get_insert_hint_unique_pos(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
            pos,
            key(*z)
        );
    if res.second != null {
        return insert(*z, res);
    }
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long(res.first);
}

insert :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H6684199253886259110,
    p: Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11735114844526877280 {
    local_p: Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base = p;
    it_ :=
        insert_node(
            t,
            local_p.first,
            local_p.second,
            node
        );
    node =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903) (cast(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903) null);
    return it_;
}

key_comp :: (
    using class_map_unsigned_long_unsigned_long: *Class_Map_Unsigned_Long_Unsigned_Long
) -> Std_Map_Unsigned_Long_Unsigned_Long_Key_Compare {
    return key_comp(*t);
}

key_comp :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> Struct_Less_Unsigned_Long {
    return ((cast(*Struct_Rb_Tree_Key_Compare_Struct_Less_Unsigned_Long) *impl).*).key_compare;
}

end :: (
    using class_map_unsigned_long_unsigned_long: *Class_Map_Unsigned_Long_Unsigned_Long
) -> Std_Map_Unsigned_Long_Unsigned_Long_Iterator {
    return end_3(*t);
}

end_3 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11735114844526877280 {
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long(
        end(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396)
    );
}

post_write_block :: (using cluster: *Mkvmuxer_Cluster, element_size: u64) {
    add_payload_size(cluster, element_size);
    blocks_added += 1;
}

add_payload_size :: (using cluster: *Mkvmuxer_Cluster, size: u64) {
    payload_size += size;
}

pre_write_block :: (using cluster: *Mkvmuxer_Cluster) -> bool {
    if finalized {
        return false;
    }

    if !header_written {
        if !write_cluster_header(cluster) {
            return false;
        }
    }

    return true;
}

write_cluster_header :: (cluster: *Mkvmuxer_Cluster) -> bool {
    if cluster.finalized {
        return false;
    }

    if mkvmuxer_WriteID(cluster.writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CLUSTER) != 0 {
        return false;
    }

    cluster.size_position = cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(cluster.writer);

    if mkvmuxer_SerializeInt(cluster.writer, cast,no_check(Int64) cast(u64) 0x1ffffffffffffff, 8) != 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(
        cluster.writer,
        cast,no_check(Uint64) LIBWEBM_K_MKV_TIMECODE,
        timecode(cluster),
        (ifx cluster.fixed_size_timecode then cast(Uint64) 8 else 0)
    ) {
        return false;
    }
    add_payload_size(
        cluster,
        mkvmuxer_EbmlElementSize(
        cast,no_check(Uint64) LIBWEBM_K_MKV_TIMECODE,
        timecode(cluster),
        (ifx cluster.fixed_size_timecode then cast(Uint64) 8 else 0)
    )
    );
    cluster.header_written = true;

    return true;
}

is_valid :: (using _frame: *Frame) -> bool {
    if length == 0 || frame == null {
        return false;
    }
    if additional_length != 0 && additional == null || additional != null && additional_length == 0 {
        return false;
    }
    if track_number == 0 || track_number > cast(u64) 126 {
        return false;
    }
    if !can_be_simple_block(_frame) && !is_key && !reference_block_timestamp_set {
        return false;
    }
    return true;
}

can_be_simple_block :: (using _frame: *Frame) -> bool {
    return additional == null && discard_padding == 0 && duration == 0;
}

front :: (using class_list_class_frame: *Class_List_Class_Frame) -> Std_List_Mkvmuxer_Frame_Reference {
    if cast(s64) (empty(class_list_class_frame)) != 0 {
        std_glibcxx_assert_fail(
            c_string("/../lib64/gcc/x86_64-pc-linux-gnu/16/../../../../include/c++/16/bits/stl_list.h"),
            1650,
            c_string("reference std::list<mkvmuxer::Frame *>::front() [_Tp = mkvmuxer::Frame *, _Alloc = std::allocator<mkvmuxer::Frame *>]"),
            c_string("!this->empty()")
        );
    }
    return cast,no_check(Std_List_Mkvmuxer_Frame_Reference) (multiply_3(
        (ifx true { temporary___g1: Struct_List_Iterator_Class_Frame = begin(class_list_class_frame); *temporary___g1; })
    ));
}

empty :: (using class_list_class_frame: *Class_List_Class_Frame) -> bool {
    return ((cast(*List_Node_Base) (*(((cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame).impl).node))).*).next == base(
        cast(*List_Node_Base) (*(((cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame).impl).node))
    );
}

base :: (using list_node_base: *List_Node_Base) -> *List_Node_Base {
    return list_node_base;
}

get_pointer :: (
    using struct_rb_tree_iterator_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Pointer {
    return cast,no_check(Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Pointer) (valptr_2(
        cast(Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Node_Ptr) cpp_transpiler_base_to_derived(cast(*void) node, 0)
    ));
}

not_equal :: (
    x: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame,
    y: *Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> bool {
    return x.node != y.node;
}

increment_4 :: (
    using struct_list_iterator_class_frame: *Struct_List_Iterator_Class_Frame
) -> *Struct_List_Iterator_Class_Frame {
    node = cast,no_check(*List_Node_Base) node.next;
    return struct_list_iterator_class_frame;
}

not_equal :: (x: *Struct_List_Iterator_Class_Frame, y: *Struct_List_Iterator_Class_Frame) -> bool {
    return x.node != y.node;
}

push_back :: (using class_list_class_frame: *Class_List_Class_Frame, x: *Std_List_Mkvmuxer_Frame_Value_Type) {
    insert(class_list_class_frame, end(class_list_class_frame), x);
}

insert :: (
    using class_list_class_frame: *Class_List_Class_Frame,
    position: Std_List_Mkvmuxer_Frame_Iterator,
    args: **Frame
) {
    local_position: Std_List_Mkvmuxer_Frame_Iterator = position;
    tmp := cast,no_check(Std_List_Mkvmuxer_Frame_Node_Ptr) (create_node(class_list_class_frame, args));
    hook(cast(*List_Node_Base) tmp, local_position.node);
    inc_size(cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame, 1);
}

inc_size :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame,
    n: u64
) {
    c_transpiler_compound_add(*(((cast(*List_Size) cpp_transpiler_derived_to_base(cast(*void) *impl.node, 16)).*).size), (n), u64, u64);
}

create_node :: (
    using class_list_class_frame: *Class_List_Class_Frame,
    args: **Frame
) -> Std_List_Mkvmuxer_Frame_Node_Ptr {
    alloc_: *Std_List_Base_Mkvmuxer_Frame_Std_Allocator_Mkvmuxer_Frame_Node_Alloc_Type =
        cast,no_check(*Std_List_Base_Mkvmuxer_Frame_Std_Allocator_Mkvmuxer_Frame_Node_Alloc_Type) get_node_allocator(
            cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame
        );
    temporary_g41: Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame = ---;
    std_allocate_guarded_obj(*temporary_g41, alloc_);
    guard: Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame = ---;
    defer deinit_89(*guard);
    init_180(*guard, *temporary_g41);
    deinit_89(*temporary_g41);
    construct_6(alloc_, valptr(get_pointer_2(*guard)), args);
    return cast,no_check(Std_List_Mkvmuxer_Frame_Node_Ptr) (release(cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) *guard));
}

release :: (
    using struct_allocated_ptr_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame
) -> Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer {
    return cast,no_check(Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer) (std_exchange(*ptr, (ifx true { temporary___g1: *void = cast(*void) 0; *temporary___g1; })));
}

std_exchange :: (obj: **Struct_List_Node_Class_Frame, new_val: **void) -> *Struct_List_Node_Class_Frame {
    old_val :=
        cast,no_check(*Struct_List_Node_Class_Frame) ((cast(*Std_Remove_Reference_Std_List_Node_Mkvmuxer_Frame_Type) obj).*);
    assignment_5: *Struct_List_Node_Class_Frame =
        cast,no_check(*Struct_List_Node_Class_Frame) (cast(*Struct_List_Node_Class_Frame) null);
    ((cast,no_check(**Struct_List_Node_Class_Frame) *((cast(**Struct_List_Node_Class_Frame) obj).*)).*) = assignment_5;
    return old_val;
}

get_pointer_2 :: (
    using struct_allocated_obj_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame
) -> *Std_Allocated_Obj_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type {
    return cast,no_check(*Std_Allocated_Obj_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type) (get_2(
        cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) struct_allocated_obj_class_allocator_struct_list_node_class_frame
    ));
}

get_2 :: (
    using struct_allocated_ptr_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame
) -> *Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type {
    return cast,no_check(*Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type) (std_to_address(ptr));
}

std_to_address :: inline (ptr: *Struct_List_Node_Class_Frame) -> *Struct_List_Node_Class_Frame {
    #assert true; // validated by the C++ frontend
    return ptr;
}

construct_6 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Allocator_Type,
    p: **Frame,
    args: **Frame
) {
    construct_7(
        cast(*Class_New_Allocator_Struct_List_Node_Class_Frame) ((cast(**Class_Allocator_Struct_List_Node_Class_Frame) *(a)).*),
        p,
        args
    );
}

construct_7 :: inline (
    using class_new_allocator_struct_list_node_class_frame: *Class_New_Allocator_Struct_List_Node_Class_Frame,
    p: **Frame,
    args: **Frame
) {
    (ifx true {
    cpp_transpiler_new_g42 := cast,no_check(**Frame) (cast(**Frame) cast(*void) p);
    cpp_transpiler_new_g42.* = cast,no_check(*Frame) ((cast(**Frame) args).*);
    cpp_transpiler_new_g42;
})
;
}

copy_from :: (_frame_frame: *Frame, _frame: *Frame) -> bool {
    {
        cpp_transpiler_delete_g43 := cast,no_check(*u8) (_frame_frame.frame);
        if cpp_transpiler_delete_g43 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g43);
        }
    }
    _frame_frame.frame = cast,no_check(*u8) (cast(*u8) null);
    _frame_frame.length = 0;
    if length_2(_frame) > 0 && frame(_frame) != null && !init_7(_frame_frame, frame(_frame), length_2(_frame)) {
        return false;
    }
    _frame_frame.add_id = 0;
    {
        cpp_transpiler_delete_g44 := cast,no_check(*u8) (_frame_frame.additional);
        if cpp_transpiler_delete_g44 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g44);
        }
    }
    _frame_frame.additional = cast,no_check(*u8) (cast(*u8) null);
    _frame_frame.additional_length = 0;
    if additional_length(_frame) > 0 &&
        additional(_frame) != null &&
        !add_additional_data(_frame_frame, additional(_frame), additional_length(_frame), add_id(_frame)) {
        return false;
    }
    _frame_frame.duration = duration(_frame);
    _frame_frame.duration_set = duration_set(_frame);
    _frame_frame.is_key = is_key(_frame);
    _frame_frame.track_number = track_number(_frame);
    _frame_frame.timestamp = timestamp(_frame);
    _frame_frame.discard_padding = discard_padding(_frame);
    _frame_frame.reference_block_timestamp = reference_block_timestamp(_frame);
    _frame_frame.reference_block_timestamp_set = reference_block_timestamp_set(_frame);
    return true;
}

add_additional_data :: (using _frame: *Frame, _additional: *u8, _length: u64, _add_id: u64) -> bool {
    DATA := cast,no_check(*u8) (cast(*u8) cpp_transpiler_allocate_array_raw(_length, size_of(u8)));
    if DATA == null {
        return false;
    }

    {
        cpp_transpiler_delete_g45 := cast,no_check(*u8) (additional);
        if cpp_transpiler_delete_g45 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g45);
        }
    }
    additional = cast,no_check(*u8) (DATA);
    additional_length = _length;
    add_id = _add_id;

    copy_memory(additional, _additional, additional_length);
    return true;
}

init_7 :: (using _frame_frame: *Frame, _frame: *u8, _length: u64) -> bool {
    DATA := cast,no_check(*u8) (cast(*u8) cpp_transpiler_allocate_array_raw(_length, size_of(u8)));
    if DATA == null {
        return false;
    }

    {
        cpp_transpiler_delete_g46 := cast,no_check(*u8) (frame);
        if cpp_transpiler_delete_g46 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g46);
        }
    }
    frame = cast,no_check(*u8) (DATA);
    length = _length;

    copy_memory(frame, _frame, length);
    return true;
}

set_reference_block_timestamp :: (using _frame: *Frame, _reference_block_timestamp: s64) {
    reference_block_timestamp = _reference_block_timestamp;
    reference_block_timestamp_set = true;
}

do_new_cluster_processing :: (
    using segment: *Mkvmuxer_Segment,
    track_number: u64,
    frame_timestamp_ns: u64,
    is_key: bool
) -> bool {
    while true {
        RESULT := test_frame(segment, track_number, frame_timestamp_ns, is_key);
        if RESULT < 0 {
            return false;
        }

        force_new_cluster = false;

        if RESULT > 0 && !make_new_cluster(segment, frame_timestamp_ns) {
            return false;
        }

        FRAME_COUNT := write_frames_all(segment);
        if FRAME_COUNT < 0 {
            return false;
        }

        if RESULT <= 1 {
            return true;
        }
    }
    return unreachable_value(bool);
}

test_frame :: (using segment: *Mkvmuxer_Segment, track_number: u64, frame_timestamp_ns: u64, is_key: bool) -> s32 {
    if force_new_cluster {
        return 1;
    }

    if cluster_list_size <= 0 {
        return 1;
    }

    TIMECODE_SCALE := timecode_scale(*segment_info);
    FRAME_TIMECODE := frame_timestamp_ns / TIMECODE_SCALE;

    LAST_CLUSTER := cast,no_check(*Mkvmuxer_Cluster) (cluster_list[cluster_list_size - 1]);
    LAST_CLUSTER_TIMECODE := timecode(LAST_CLUSTER);

    if FRAME_TIMECODE < LAST_CLUSTER_TIMECODE {
        return -1;
    }

    DELTA_TIMECODE := cast,no_check(s64) (FRAME_TIMECODE - LAST_CLUSTER_TIMECODE);

    if DELTA_TIMECODE > cast(s64) 0x7fff {
        return 2;
    }

    if is_key && track_is_video(*tracks, track_number) {
        return 1;
    }

    DELTA_NS := (cast,no_check(u64) DELTA_TIMECODE) * TIMECODE_SCALE;

    if max_cluster_duration > 0 && DELTA_NS >= max_cluster_duration {
        return 1;
    }

    CLUSTER_SIZE := payload_size(LAST_CLUSTER);

    if max_cluster_size > 0 && CLUSTER_SIZE >= max_cluster_size {
        return 1;
    }

    return 0;
}

track_is_video :: (using tracks: *Mkvmuxer_Tracks, track_number: u64) -> bool {
    TRACK := cast,no_check(*Mkvmuxer_Track) (get_track_by_number(tracks, track_number));

    if type(TRACK) == cast,no_check(u64) MKVMUXER_TRACKS_K_VIDEO {
        return true;
    }

    return false;
}

write_frames_all :: (using segment: *Mkvmuxer_Segment) -> s32 {
    if frames == null {
        return 0;
    }

    if cluster_list_size < 1 {
        return -1;
    }

    CLUSTER: *Mkvmuxer_Cluster = cast,no_check(*Mkvmuxer_Cluster) cluster_list[cluster_list_size - 1];

    if CLUSTER == null {
        return -1;
    }

    {
        i: s32 = 0;
        while i < frames_size {
            frame := cast,no_check(**Frame) (*frames[i]);

            if discard_padding((cast(**Frame) frame).*) != 0 {
                doc_type_version = 4;
            }
            if !add_frame(CLUSTER, (cast(**Frame) frame).*) {
                {
                    cpp_transpiler_delete_g47 := cast,no_check(*Frame) ((cast(**Frame) frame).*);
                    if cpp_transpiler_delete_g47 != null {
                        deinit_3(cpp_transpiler_delete_g47);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g47);
                    }
                }
                i += 1;
                continue;
            }

            if new_cuepoint && cues_track == track_number((cast(**Frame) frame).*) {
                if is_key((cast(**Frame) frame).*) && !add_cue_point(segment, timestamp((cast(**Frame) frame).*), cues_track) {
                    {
                        cpp_transpiler_delete_g48 := cast,no_check(*Frame) ((cast(**Frame) frame).*);
                        if cpp_transpiler_delete_g48 != null {
                            deinit_3(cpp_transpiler_delete_g48);
                            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g48);
                        }
                    }
                    i += 1;
                    continue;
                } else {
                    new_cuepoint = false;
                }
            }

            if timestamp((cast(**Frame) frame).*) > last_timestamp {
                last_timestamp = timestamp((cast(**Frame) frame).*);
                assignment_6: u64 = timestamp((cast(**Frame) frame).*);
                ((cast,no_check(*u64) *(last_track_timestamp[track_number((cast(**Frame) frame).*) - 1])).*) = assignment_6;
            }

            {
                cpp_transpiler_delete_g49 := cast,no_check(*Frame) ((cast(**Frame) frame).*);
                if cpp_transpiler_delete_g49 != null {
                    deinit_3(cpp_transpiler_delete_g49);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g49);
                }
            }
            (cast(**Frame) frame).* = cast,no_check(*Frame) (cast(*Frame) null);
            i += 1;
        }
    }

    RESULT: s32 = frames_size;
    frames_size = 0;

    return RESULT;
}

make_new_cluster :: (using segment: *Mkvmuxer_Segment, frame_timestamp_ns: u64) -> bool {
    NEW_SIZE := cluster_list_size + 1;

    if NEW_SIZE > cluster_list_capacity {
        NEW_CAPACITY := (ifx cluster_list_capacity <= 0 then 1 else cluster_list_capacity * 2);
        CLUSTERS :=
            cast,no_check(**Mkvmuxer_Cluster) (cast(**Mkvmuxer_Cluster) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) NEW_CAPACITY,
                size_of(*Mkvmuxer_Cluster)
            ));
        if CLUSTERS == null {
            return false;
        }

        {
            i: s32 = 0;
            while i < cluster_list_size {
                CLUSTERS[i] = cast,no_check(*Mkvmuxer_Cluster) cluster_list[i];
                i += 1;
            }
        }

        {
            cpp_transpiler_delete_g50 := cast,no_check(**Mkvmuxer_Cluster) (cluster_list);
            if cpp_transpiler_delete_g50 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g50);
            }
        }

        cluster_list = cast,no_check(**Mkvmuxer_Cluster) CLUSTERS;
        cluster_list_capacity = NEW_CAPACITY;
    }

    if !write_frames_less_than(segment, frame_timestamp_ns) {
        return false;
    }

    if cluster_list_size > 0 {
        OLD_CLUSTER: *Mkvmuxer_Cluster = cast,no_check(*Mkvmuxer_Cluster) cluster_list[cluster_list_size - 1];

        if OLD_CLUSTER == null || !finalize(OLD_CLUSTER, true, frame_timestamp_ns) {
            return false;
        }
    }

    if output_cues {
        new_cuepoint = true;
    }

    if chunking && cluster_list_size > 0 {
        close_2(chunk_writer_cluster);
        chunk_count += 1;

        if !update_chunk_name(segment, c_string("chk"), *chunk_name) {
            return false;
        }
        if !open_2(chunk_writer_cluster, chunk_name) {
            return false;
        }
    }

    TIMECODE_SCALE := timecode_scale(*segment_info);
    FRAME_TIMECODE := frame_timestamp_ns / TIMECODE_SCALE;

    cluster_timecode := FRAME_TIMECODE;

    if frames_size > 0 {
        F := cast,no_check(*Frame) (frames[0]);
        NS := timestamp(F);
        TC := NS / TIMECODE_SCALE;

        if TC < cluster_timecode {
            cluster_timecode = TC;
        }
    }

    cluster := cast,no_check(**Mkvmuxer_Cluster) (*cluster_list[cluster_list_size]);
    OFFSET := max_offset(segment);
    assignment_7: *Mkvmuxer_Cluster =
        cast,no_check(*Mkvmuxer_Cluster) ((ifx true {
        cpp_transpiler_new_g51 :=
            cast,no_check(*Mkvmuxer_Cluster) (cast(*Mkvmuxer_Cluster) cpp_transpiler_allocate_raw(
                size_of(Mkvmuxer_Cluster)
            ));
        init_43(
            cpp_transpiler_new_g51,
            cluster_timecode,
            OFFSET,
            timecode_scale(*segment_info),
            accurate_cluster_duration,
            fixed_size_cluster_timecode
        );
        cpp_transpiler_new_g51;
    })
    );
    ((cast,no_check(**Mkvmuxer_Cluster) *((cast(**Mkvmuxer_Cluster) cluster).*)).*) = assignment_7;
    if (cast(**Mkvmuxer_Cluster) cluster).* == null {
        return false;
    }

    if !init_44((cast(**Mkvmuxer_Cluster) cluster).*, writer_cluster) {
        return false;
    }

    cluster_list_size = NEW_SIZE;
    return true;
}

init_44 :: (using cluster: *Mkvmuxer_Cluster, ptr_writer: *I_Mkv_Writer) -> bool {
    if ptr_writer == null {
        return false;
    }
    writer = cast,no_check(*I_Mkv_Writer) ptr_writer;
    return true;
}

max_offset :: (using segment: *Mkvmuxer_Segment) -> s64 {
    if writer_header == null {
        return -1;
    }

    offset := (cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer_header) - payload_pos);

    if chunking {
        {
            i: s32 = 0;
            while i < cluster_list_size {
                CLUSTER: *Mkvmuxer_Cluster = cast,no_check(*Mkvmuxer_Cluster) cluster_list[i];
                c_transpiler_compound_add(*(offset), (size_8(CLUSTER)), u64, u64);
                i += 1;
            }
        }

        if writer_cues != null {
            c_transpiler_compound_add(*(offset), (cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer_cues)), Int64, Int64);
        }
    }

    return offset;
}

size_8 :: (using cluster: *Mkvmuxer_Cluster) -> u64 {
    ELEMENT_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_CLUSTER,
            cast(Uint64) 0xffffffffffffffff
        ) + payload_size);
    return ELEMENT_SIZE;
}

finalize :: (cluster: *Mkvmuxer_Cluster, set_last_frame_duration: bool, duration: u64) -> bool {
    if cluster.writer == null || cluster.finalized {
        return false;
    }

    if cluster.write_last_frame_with_duration {
        while !empty(*cluster.stored_frames) {
            frame: *Frame =
                cast,no_check(*Frame) ((cast(*Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type) front(
                    *((get_pointer(
                    (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = begin(*cluster.stored_frames); *temporary___g1; })
                )).second)
                )).*);

            {
                frames_iterator: Cluster_Frame_Map_Iterator =
                    ((cast(**Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(increment(
                        (ifx true { temporary___g4: Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Iterator = begin(*cluster.stored_frames); *temporary___g4; })
                    ))).*).*;
                while not_equal(
                    *frames_iterator,
                    (ifx true { temporary___g7: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = end(*cluster.stored_frames); *temporary___g7; })
                ) {
                    if timestamp(
                        (cast(*Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type) front(*((get_pointer(*frames_iterator)).second))).*
                    ) < timestamp(frame) {
                        frame =
                            cast,no_check(*Frame) ((cast(*Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type) front(*((get_pointer(*frames_iterator)).second))).*);
                    }
                    ((cast(**Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(increment(*frames_iterator))).*).*;
                }
            }

            if (set_last_frame_duration && (size_13(
                index_explicit_3(
                *cluster.stored_frames,
                (ifx true { temporary___g9: Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type = track_number(frame); *temporary___g9; })
            )
            ) == 1)) && !duration_set(frame) {
                set_duration(frame, duration - timestamp(frame));
                if !is_key(frame) && !reference_block_timestamp_set(frame) {
                    set_reference_block_timestamp(
                        frame,
                        cast,no_check(s64) (((cast(**Std_Map_Unsigned_Long_Unsigned_Long_Mapped_Type) *(index_explicit_2(
                        *cluster.last_block_timestamp,
                        (ifx true { temporary___g12: Std_Map_Unsigned_Long_Unsigned_Long_Key_Type = track_number(frame); *temporary___g12; })
                    ))).*).*)
                    );
                }
            }

            WROTE_FRAME := do_write_frame(cluster, frame);
            pop_front(
                index_explicit_3(
                *cluster.stored_frames,
                (ifx true { temporary___g52: Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type = track_number(frame); *temporary___g52; })
            )
            );
            if empty(
                index_explicit_3(
                *cluster.stored_frames,
                (ifx true { temporary___g53: Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type = track_number(frame); *temporary___g53; })
            )
            ) {
                erase(
                    *cluster.stored_frames,
                    (ifx true { temporary___g54: Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type = track_number(frame); *temporary___g54; })
                );
            }
            {
                cpp_transpiler_delete_g55 := cast,no_check(*Frame) (frame);
                if cpp_transpiler_delete_g55 != null {
                    deinit_3(cpp_transpiler_delete_g55);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g55);
                }
            }
            if !WROTE_FRAME {
                return false;
            }
        }
    }

    if cluster.size_position == -1 {
        return false;
    }

    if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Seekable(cluster.writer) {
        POS := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(cluster.writer);

        if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(cluster.writer, cluster.size_position) != 0 {
            return false;
        }

        if mkvmuxer_WriteUIntSize(cluster.writer, payload_size(cluster), 8) != 0 {
            return false;
        }

        if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(cluster.writer, POS) != 0 {
            return false;
        }
    }

    cluster.finalized = true;

    return true;
}

erase :: (
    using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame,
    x: *Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type
) -> Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Size_Type {
    return erase_unique(*t, x);
}

erase_unique :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    x: *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H4072827160894027326
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9910553738716115928 {
    it_ :=
        find_2(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            x
        );
    if equals_2(
        *it_,
        (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = end_2(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074); *temporary___g1; })
    ) {
        return 0;
    }

    erase_aux(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        make_struct_std_rb_tree_const_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(*it_)
    );
    return 1;
}

erase_aux :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    position: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H10700294200669716772
) {
    local_position: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H10700294200669716772 = position;
    y: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) rebalance_for_erase(
            local_position.node,
            *(((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(
            cast(*void) *impl,
            8
        )).*).header)
        );
    drop_node(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        node_ptr(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) cpp_transpiler_base_to_derived(cast(*void) y, 0)
    )
    );
    ((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).node_count -= 1;
}

node_ptr :: (
    using struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame
) -> *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame {
    return struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame;
}

rebalance_for_erase :: (
    Z: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base,
    header: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base
) -> *Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H6122849054575192992 {
    return cast,no_check(*Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H6122849054575192992) (std_Rb_tree_rebalance_for_erase(Z, header));
}

drop_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    p: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891
) {
    destroy_node(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        p
    );
    put_node(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074, p);
}

put_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    p: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891
) {
    deallocate_4(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
    ),
        p,
        1
    );
}

get_node_allocator :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H3042249295452611784 {
    return cast(*Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *impl;
}

deallocate_4 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_Li_H13077661779444050177,
    p: Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Pointer,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) {
    deallocate_5(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(a)).*),
        p,
        n
    );
}

deallocate_5 :: (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame,
    p: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    n: Std_New_Allocator_Size_Type
) {
    c_transpiler_cpp_operator_delete(cast(*void) p);
}

destroy_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    p: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891
) {
    destroy_6(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
    ),
        valptr_2(p)
    );
}

destroy_6 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_Li_H13077661779444050177,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame
) {
    destroy_7(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(a)).*),
        p
    );
}

destroy_7 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame
) {
    deinit_75(p);
}

deinit_75 :: (
    using struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame
) {
    cpp_transpiler_subobject_cleanup_g56: bool = ---;
    defer deinit_77(*second);
}

index_explicit_3 :: (
    using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame,
    k: *Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type
) -> *Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Mapped_Type {
    i :=
        lower_bound(
            class_map_unsigned_long_class_list_class_frame,
            k
        );

    if equals_2(
        *i,
        (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = end(class_map_unsigned_long_class_list_class_frame); *temporary___g1; })
    ) || call_3(
        (ifx true { temporary___g4: Struct_Less_Unsigned_Long = key_comp(class_map_unsigned_long_class_list_class_frame); *temporary___g4; }),
        k,
        *((multiply(*i)).first)
    ) {
        i = emplace_hint_unique(
            *t,
            make_struct_std_rb_tree_const_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(
            *i
        ),
            *PIECEWISE_CONSTRUCT,
            (ifx true { temporary___g7: Class_Tuple_Unsigned_Long = std_forward_as_tuple(k); *temporary___g7; }),
            (ifx true { temporary___g9: Class_Tuple = Class_Tuple.{}; *temporary___g9; })
        );
    }
    return *((multiply(*i)).second);
}

emplace_hint_unique :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    pos: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H10700294200669716772,
    args_value_inner: *Piecewise_Construct_T,
    args_value: *Class_Tuple_Unsigned_Long,
    args: *Class_Tuple
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 {
    z: Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H5383162374263181388 = ---;
    defer deinit_91(*z);
    init_204(
        *z,
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        args_value_inner,
        args_value,
        args
    );
    res :=
        get_insert_hint_unique_pos(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            pos,
            key(*z)
        );
    if res.second != null {
        return insert(*z, res);
    }
    return make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame(res.first);
}

pop_front :: (using class_list_class_frame: *Class_List_Class_Frame) {
    if cast(s64) (empty(class_list_class_frame)) != 0 {
        std_glibcxx_assert_fail(
            c_string("/../lib64/gcc/x86_64-pc-linux-gnu/16/../../../../include/c++/16/bits/stl_list.h"),
            1788,
            c_string("void std::list<mkvmuxer::Frame *>::pop_front() [_Tp = mkvmuxer::Frame *, _Alloc = std::allocator<mkvmuxer::Frame *>]"),
            c_string("!this->empty()")
        );
    }
    erase(class_list_class_frame, begin(class_list_class_frame));
}

set_duration :: (using _frame: *Frame, _duration: u64) {
    duration = _duration;
    duration_set = true;
}

size_13 :: (using class_list_class_frame: *Class_List_Class_Frame) -> Std_List_Size_Type {
    return get_size(cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame);
}

get_size :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame
) -> u64 {
    return ((cast(*List_Size) cpp_transpiler_derived_to_base(cast(*void) *impl.node, 16)).*).size;
}

empty :: (
    using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame
) -> bool {
    return empty(*t);
}

empty :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> bool {
    return ((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) *impl, 8)).*).node_count == 0;
}

write_frames_less_than :: (using segment: *Mkvmuxer_Segment, timestamp_value: u64) -> bool {
    if frames_size > 0 && cluster_list_size > 0 {
        if frames == null {
            return false;
        }

        CLUSTER: *Mkvmuxer_Cluster = cast,no_check(*Mkvmuxer_Cluster) cluster_list[cluster_list_size - 1];
        if CLUSTER == null {
            return false;
        }

        shift_left: s32 = 0;

        {
            i: s32 = 1;
            while i < frames_size {
                FRAME_CURR := cast,no_check(*Frame) (frames[i]);

                if timestamp(FRAME_CURR) > timestamp_value {
                    break;
                }

                FRAME_PREV := cast,no_check(*Frame) (frames[i - 1]);
                if discard_padding(FRAME_PREV) != 0 {
                    doc_type_version = 4;
                }
                if !add_frame(CLUSTER, FRAME_PREV) {
                    {
                        cpp_transpiler_delete_g57 := cast,no_check(*Frame) (FRAME_PREV);
                        if cpp_transpiler_delete_g57 != null {
                            deinit_3(cpp_transpiler_delete_g57);
                            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g57);
                        }
                    }
                    shift_left += 1;
                    i += 1;
                    continue;
                }

                if new_cuepoint && cues_track == track_number(FRAME_PREV) {
                    if !add_cue_point(segment, timestamp(FRAME_PREV), cues_track) {
                        {
                            cpp_transpiler_delete_g58 := cast,no_check(*Frame) (FRAME_PREV);
                            if cpp_transpiler_delete_g58 != null {
                                deinit_3(cpp_transpiler_delete_g58);
                                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g58);
                            }
                        }
                        shift_left += 1;
                        i += 1;
                        continue;
                    }
                }

                shift_left += 1;
                if timestamp(FRAME_PREV) > last_timestamp {
                    last_timestamp = timestamp(FRAME_PREV);
                    assignment_8: u64 = timestamp(FRAME_PREV);
                    ((cast,no_check(*u64) *(last_track_timestamp[track_number(FRAME_PREV) - 1])).*) = assignment_8;
                }

                {
                    cpp_transpiler_delete_g59 := cast,no_check(*Frame) (FRAME_PREV);
                    if cpp_transpiler_delete_g59 != null {
                        deinit_3(cpp_transpiler_delete_g59);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g59);
                    }
                }
                i += 1;
            }
        }

        if shift_left > 0 {
            if shift_left >= frames_size {
                return false;
            }

            NEW_FRAMES_SIZE := frames_size - shift_left;
            if 0 < NEW_FRAMES_SIZE {
                for i: 0..NEW_FRAMES_SIZE - 1 {
                    frames[i] = cast,no_check(*Frame) (frames[i + shift_left]);
                }
            }

            frames_size = NEW_FRAMES_SIZE;
        }
    }

    return true;
}

queue_frame :: (using segment: *Mkvmuxer_Segment, frame: *Frame) -> bool {
    NEW_SIZE := frames_size + 1;

    if NEW_SIZE > frames_capacity {
        NEW_CAPACITY := (ifx frames_capacity == 0 then 2 else frames_capacity * 2);

        if NEW_CAPACITY < 1 {
            return false;
        }

        FRAMES :=
            cast,no_check(**Frame) (cast(**Frame) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) NEW_CAPACITY,
                size_of(*Frame)
            ));
        if FRAMES == null {
            return false;
        }

        {
            i: s32 = 0;
            while i < frames_size {
                FRAMES[i] = cast,no_check(*Frame) frames[i];
                i += 1;
            }
        }

        {
            cpp_transpiler_delete_g60 := cast,no_check(**Frame) (frames);
            if cpp_transpiler_delete_g60 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g60);
            }
        }
        frames = cast,no_check(**Frame) FRAMES;
        frames_capacity = NEW_CAPACITY;
    }

    frames[frames_size] = cast,no_check(*Frame) frame;
    frames_size += 1;

    return true;
}

track_is_audio :: (using tracks: *Mkvmuxer_Tracks, track_number: u64) -> bool {
    TRACK := cast,no_check(*Mkvmuxer_Track) (get_track_by_number(tracks, track_number));

    if type(TRACK) == cast,no_check(u64) MKVMUXER_TRACKS_K_AUDIO {
        return true;
    }

    return false;
}

check_header_info :: (using segment: *Mkvmuxer_Segment) -> bool {
    if !header_written {
        if !write_segment_header(segment) {
            return false;
        }

        if !add_seek_entry(*seek_head, cast,no_check(u32) (LIBWEBM_K_MKV_CLUSTER), cast,no_check(u64) max_offset(segment)) {
            return false;
        }

        if output_cues && cues_track == 0 {
            {
                i: u32 = 0;
                while i < track_entries_size(*tracks) {
                    TRACK := cast,no_check(*Mkvmuxer_Track) (get_track_by_index(*tracks, i));
                    if TRACK == null {
                        return false;
                    }

                    if track_is_video(*tracks, number(TRACK)) {
                        cues_track = number(TRACK);
                        break;
                    }
                    i += 1;
                }
            }

            if cues_track == 0 {
                TRACK := cast,no_check(*Mkvmuxer_Track) (get_track_by_index(*tracks, 0));
                if TRACK == null {
                    return false;
                }

                cues_track = number(TRACK);
            }
        }
    }
    return true;
}

add_seek_entry :: (using seek_head: *Mkvmuxer_Seek_Head, id: u32, pos: u64) -> bool {
    {
        i: s32 = 0;
        while i < cast(s32) 5 {
            if seek_entry_id[i] == 0 {
                seek_entry_id[i] = id;
                seek_entry_pos[i] = pos;
                return true;
            }
            i += 1;
        }
    }
    return false;
}

write_segment_header :: (using segment: *Mkvmuxer_Segment) -> bool {
    update_doc_type_version(segment);

    DOC_TYPE :=
        cast,no_check(*s8) ((ifx doc_type_is_webm(segment) then cast,no_check(*s8) (K_DOC_TYPE_WEBM.data) else cast,no_check(*s8) (K_DOC_TYPE_MATROSKA.data)));
    if !mkvmuxer_WriteEbmlHeader(writer_header, cast,no_check(u64) doc_type_version, DOC_TYPE) {
        return false;
    }
    doc_type_version_written = doc_type_version;
    ebml_header_size = cast,no_check(s32) cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer_header);

    if mkvmuxer_WriteID(writer_header, cast,no_check(Uint64) LIBWEBM_K_MKV_SEGMENT) != 0 {
        return false;
    }

    size_position = cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer_header);

    if mkvmuxer_SerializeInt(writer_header, cast,no_check(Int64) cast(u64) 0x1ffffffffffffff, 8) != 0 {
        return false;
    }

    payload_pos = cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer_header);

    if cast,no_check(s32) mode == cast,no_check(s32) MKVMUXER_SEGMENT_K_FILE &&
        cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Seekable(writer_header) {
        segment_info.duration = 1.0;

        if !write(*seek_head, writer_header) {
            return false;
        }
    }

    if !add_seek_entry(*seek_head, cast,no_check(u32) (LIBWEBM_K_MKV_INFO), cast,no_check(u64) max_offset(segment)) {
        return false;
    }
    if !write(*segment_info, writer_header) {
        return false;
    }

    if !add_seek_entry(*seek_head, cast,no_check(u32) (LIBWEBM_K_MKV_TRACKS), cast,no_check(u64) max_offset(segment)) {
        return false;
    }
    if !write(*tracks, writer_header) {
        return false;
    }

    if count(*chapters) > 0 {
        if !add_seek_entry(*seek_head, cast,no_check(u32) (LIBWEBM_K_MKV_CHAPTERS), cast,no_check(u64) max_offset(segment)) {
            return false;
        }
        if !write(*chapters, writer_header) {
            return false;
        }
    }

    if count(*tags) > 0 {
        if !add_seek_entry(*seek_head, cast,no_check(u32) (LIBWEBM_K_MKV_TAGS), cast,no_check(u64) max_offset(segment)) {
            return false;
        }
        if !write(*tags, writer_header) {
            return false;
        }
    }

    if chunking &&
        (cast,no_check(s32) mode == cast,no_check(s32) MKVMUXER_SEGMENT_K_LIVE ||
            !cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Seekable(writer_header)) {
        if chunk_writer_header == null {
            return false;
        }

        close_2(chunk_writer_header);
    }

    header_written = true;

    return true;
}

write :: (using _tags: *Mkvmuxer_Tags, writer: *I_Mkv_Writer) -> bool {
    if writer == null {
        return false;
    }

    payload_size: u64 = 0;

    {
        idx: s32 = 0;
        while idx < tags_count {
            tag := cast,no_check(*Tag) (*tags[idx]);
            payload_size += write(tag, cast(*I_Mkv_Writer) null);
            idx += 1;
        }
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TAGS, payload_size) {
        return false;
    }

    START := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    {
        idx: s32 = 0;
        while idx < tags_count {
            tag := cast,no_check(*Tag) (*tags[idx]);

            TAG_SIZE := write(tag, writer);
            if TAG_SIZE == 0 {
                return false;
            }
            idx += 1;
        }
    }

    STOP := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if STOP >= START && cast,no_check(u64) (STOP - START) != payload_size {
        return false;
    }

    return true;
}

write :: (using tag: *Tag, writer: *I_Mkv_Writer) -> u64 {
    payload_size: u64 = 0;

    {
        idx: s32 = 0;
        while idx < simple_tags_count {
            st := cast,no_check(*Tag_Simple_Tag) (*simple_tags[idx]);
            payload_size += write(st, cast(*I_Mkv_Writer) null);
            idx += 1;
        }
    }

    TAG_SIZE := (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TAG, payload_size) + payload_size);

    if writer == null {
        return TAG_SIZE;
    }

    START := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TAG, payload_size) {
        return 0;
    }

    {
        idx: s32 = 0;
        while idx < simple_tags_count {
            st := cast,no_check(*Tag_Simple_Tag) (*simple_tags[idx]);

            if write(st, writer) == 0 {
                return 0;
            }
            idx += 1;
        }
    }

    STOP := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if STOP >= START && cast,no_check(u64) (STOP - START) != TAG_SIZE {
        return 0;
    }

    return TAG_SIZE;
}

write :: (using simple_tag: *Tag_Simple_Tag, writer: *I_Mkv_Writer) -> u64 {
    payload_size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TAG_NAME, tag_name);

    c_transpiler_compound_add(*(payload_size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TAG_STRING, tag_string)), Uint64, Uint64);

    SIMPLE_TAG_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_SIMPLE_TAG, payload_size) +
            payload_size);

    if writer == null {
        return SIMPLE_TAG_SIZE;
    }

    START := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_SIMPLE_TAG, payload_size) {
        return 0;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TAG_NAME, tag_name) {
        return 0;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TAG_STRING, tag_string) {
        return 0;
    }

    STOP := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if STOP >= START && cast,no_check(u64) (STOP - START) != SIMPLE_TAG_SIZE {
        return 0;
    }

    return SIMPLE_TAG_SIZE;
}

count :: (using _tags: *Mkvmuxer_Tags) -> s32 {
    return tags_count;
}

write :: (using _chapters: *Mkvmuxer_Chapters, writer: *I_Mkv_Writer) -> bool {
    if writer == null {
        return false;
    }

    PAYLOAD_SIZE := write_edition(_chapters, cast(*I_Mkv_Writer) null);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTERS, PAYLOAD_SIZE) {
        return false;
    }

    START := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if write_edition(_chapters, writer) == 0 {
        return false;
    }

    STOP := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if STOP >= START && cast,no_check(u64) (STOP - START) != PAYLOAD_SIZE {
        return false;
    }

    return true;
}

write_edition :: (using _chapters: *Mkvmuxer_Chapters, writer: *I_Mkv_Writer) -> u64 {
    payload_size: u64 = 0;

    {
        idx: s32 = 0;
        while idx < chapters_count {
            chapter := cast,no_check(*Chapter) (*chapters[idx]);
            payload_size += write_atom(chapter, cast(*I_Mkv_Writer) null);
            idx += 1;
        }
    }

    EDITION_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_EDITION_ENTRY, payload_size) +
            payload_size);

    if writer == null {
        return EDITION_SIZE;
    }

    START := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_EDITION_ENTRY, payload_size) {
        return 0;
    }

    {
        idx: s32 = 0;
        while idx < chapters_count {
            chapter := cast,no_check(*Chapter) (*chapters[idx]);

            CHAPTER_SIZE := write_atom(chapter, writer);
            if CHAPTER_SIZE == 0 {
                return 0;
            }
            idx += 1;
        }
    }

    STOP := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if STOP >= START && cast,no_check(u64) (STOP - START) != EDITION_SIZE {
        return 0;
    }

    return EDITION_SIZE;
}

write_atom :: (using chapter: *Chapter, writer: *I_Mkv_Writer) -> u64 {
    payload_size :=
        (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_STRING_UID, id) + mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_UID, uid) +
            mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_TIME_START, start_timecode) + mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_TIME_END, end_timecode));

    {
        idx: s32 = 0;
        while idx < displays_count {
            d := cast,no_check(*Chapter_Display) (*displays[idx]);
            payload_size += write_display(d, cast(*I_Mkv_Writer) null);
            idx += 1;
        }
    }

    ATOM_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_ATOM, payload_size) +
            payload_size);

    if writer == null {
        return ATOM_SIZE;
    }

    START := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_ATOM, payload_size) {
        return 0;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_STRING_UID, id) {
        return 0;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_UID, uid) {
        return 0;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_TIME_START, start_timecode) {
        return 0;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_TIME_END, end_timecode) {
        return 0;
    }

    {
        idx: s32 = 0;
        while idx < displays_count {
            d := cast,no_check(*Chapter_Display) (*displays[idx]);

            if write_display(d, writer) == 0 {
                return 0;
            }
            idx += 1;
        }
    }

    STOP := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if STOP >= START && cast,no_check(u64) (STOP - START) != ATOM_SIZE {
        return 0;
    }

    return ATOM_SIZE;
}

write_display :: (using display: *Chapter_Display, writer: *I_Mkv_Writer) -> u64 {
    payload_size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHAP_STRING, title);

    if language != null {
        c_transpiler_compound_add(*(payload_size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHAP_LANGUAGE, language)), Uint64, Uint64);
    }

    if country != null {
        c_transpiler_compound_add(*(payload_size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHAP_COUNTRY, country)), Uint64, Uint64);
    }

    DISPLAY_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_DISPLAY,
            payload_size
        ) + payload_size);

    if writer == null {
        return DISPLAY_SIZE;
    }

    START := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAPTER_DISPLAY, payload_size) {
        return 0;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAP_STRING, title) {
        return 0;
    }

    if language != null {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAP_LANGUAGE, language) {
            return 0;
        }
    }

    if country != null {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHAP_COUNTRY, country) {
            return 0;
        }
    }

    STOP := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    if STOP >= START && cast,no_check(u64) (STOP - START) != DISPLAY_SIZE {
        return 0;
    }

    return DISPLAY_SIZE;
}

count :: (using _chapters: *Mkvmuxer_Chapters) -> s32 {
    return chapters_count;
}

write :: (tracks: *Mkvmuxer_Tracks, writer: *I_Mkv_Writer) -> bool {
    size: u64 = 0;
    COUNT := cast,no_check(s32) track_entries_size(tracks);
    if 0 < COUNT {
        for i: 0..COUNT - 1 {
            TRACK := cast,no_check(*Mkvmuxer_Track) (get_track_by_index(tracks, cast,no_check(u32) i));

            if TRACK == null {
                return false;
            }

            size += cpp_transpiler_dispatch_mkvmuxer_Track_Size(TRACK);
        }
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TRACKS, size) {
        return false;
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if 0 < COUNT {
        for i: 0..COUNT - 1 {
            TRACK := cast,no_check(*Mkvmuxer_Track) (get_track_by_index(tracks, cast,no_check(u32) i));
            if !cpp_transpiler_dispatch_mkvmuxer_Track_Write(TRACK, writer) {
                return false;
            }
        }
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 || STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) size {
        return false;
    }

    tracks.wrote_tracks = true;
    return true;
}

write :: (using track: *Mkvmuxer_Track, writer: *I_Mkv_Writer) -> bool {
    if writer == null {
        return false;
    }

    if type == 0 || codec_id == null {
        return false;
    }

    if compare_cstrings(codec_id, cast(*s8) *(MKVMUXER_TRACKS_K_AV1_CODEC_ID)) == 0 && codec_private == null {
        return false;
    }

    PAYLOAD_SIZE := cpp_transpiler_dispatch_mkvmuxer_Track_PayloadSize(track);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_ENTRY, PAYLOAD_SIZE) {
        return false;
    }

    size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_NUMBER, number);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_UID, uid)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_TYPE, type)), Uint64, Uint64);
    if codec_id != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_ID, codec_id)), Uint64, Uint64);
    }
    if codec_private != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_PRIVATE, codec_private, codec_private_length)), Uint64, Uint64);
    }
    if language != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_LANGUAGE, language)), Uint64, Uint64);
    }
    if name != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_NAME, name)), Uint64, Uint64);
    }
    if max_block_additional_id != 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_MAX_BLOCK_ADDITION_ID, max_block_additional_id)), Uint64, Uint64);
    }
    if codec_delay != 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_DELAY, codec_delay)), Uint64, Uint64);
    }
    if seek_pre_roll != 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_PRE_ROLL, seek_pre_roll)), Uint64, Uint64);
    }
    if default_duration != 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DEFAULT_DURATION, default_duration)), Uint64, Uint64);
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_NUMBER, number) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_UID, uid) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_TYPE, type) {
        return false;
    }
    if max_block_additional_id != 0 {
        if !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_MAX_BLOCK_ADDITION_ID,
            max_block_additional_id
        ) {
            return false;
        }
    }
    if codec_delay != 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_DELAY, codec_delay) {
            return false;
        }
    }
    if seek_pre_roll != 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_PRE_ROLL, seek_pre_roll) {
            return false;
        }
    }
    if default_duration != 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DEFAULT_DURATION, default_duration) {
            return false;
        }
    }
    if codec_id != null {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_ID, codec_id) {
            return false;
        }
    }
    if codec_private != null {
        if !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_PRIVATE,
            codec_private,
            codec_private_length
        ) {
            return false;
        }
    }
    if language != null {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_LANGUAGE, language) {
            return false;
        }
    }
    if name != null {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_NAME, name) {
            return false;
        }
    }

    stop_position := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if stop_position < 0 || stop_position - PAYLOAD_POSITION != cast,no_check(s64) size {
        return false;
    }
    {
        range1 := cast,no_check(*Class_Vector_Class_Block_Addition_Mapping) (*block_addition_mappings);
        begin1 := begin(range1);
        end1 := end(range1);
        while not_equal(*begin1, *end1) {
            block_addition_mapping: *Block_Addition_Mapping =
                cast,no_check(*Block_Addition_Mapping) multiply_5(
                    *begin1
                );
            if !write(block_addition_mapping, writer) {
                return false;
            }
            ((cast(**Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping) *(increment_5(*begin1))).*).*;
        }
    }
    if content_encoding_entries_size > 0 {
        content_encodings_size: u64 = 0;
        {
            i: u32 = 0;
            while i < content_encoding_entries_size {
                ENCODING := cast,no_check(*Mkvmuxer_Content_Encoding) (content_encoding_entries[i]);
                content_encodings_size += size_5(ENCODING);
                i += 1;
            }
        }

        if !mkvmuxer_WriteEbmlMasterElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODINGS,
            content_encodings_size
        ) {
            return false;
        }

        {
            i: u32 = 0;
            while i < content_encoding_entries_size {
                ENCODING := cast,no_check(*Mkvmuxer_Content_Encoding) (content_encoding_entries[i]);
                if !write(ENCODING, writer) {
                    return false;
                }
                i += 1;
            }
        }
    }

    stop_position = cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if stop_position < 0 {
        return false;
    }
    return true;
}

write :: (using content_encoding: *Mkvmuxer_Content_Encoding, writer: *I_Mkv_Writer) -> bool {
    ENCRYPTION_SIZE := encryption_size(content_encoding);
    ENCODING_SIZE := encoding_size(content_encoding, 0, ENCRYPTION_SIZE);
    SIZE :=
        (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING, ENCODING_SIZE) +
            ENCODING_SIZE);

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING, ENCODING_SIZE) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING_ORDER, encoding_order) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING_SCOPE, encoding_scope) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING_TYPE, encoding_type) {
        return false;
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCRYPTION, ENCRYPTION_SIZE) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENC_ALGO, enc_algo) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(
        writer,
        cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENC_KEY_ID,
        enc_key_id,
        enc_key_id_length
    ) {
        return false;
    }

    if !write(*enc_aes_settings, writer) {
        return false;
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 || STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) SIZE {
        return false;
    }

    return true;
}

encryption_size :: (using content_encoding: *Mkvmuxer_Content_Encoding) -> u64 {
    AES_SIZE := size_4(*enc_aes_settings);

    encryption_size :=
        mkvmuxer_EbmlElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENC_KEY_ID,
            enc_key_id,
            enc_key_id_length
        );
    c_transpiler_compound_add(*(encryption_size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENC_ALGO, enc_algo)), Uint64, Uint64);

    return encryption_size + AES_SIZE;
}

size_4 :: (using content_enc_aes_settings: *Content_Enc_AES_Settings) -> u64 {
    PAYLOAD := payload_size(content_enc_aes_settings);
    SIZE :=
        (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENC_AES_SETTINGS, PAYLOAD) +
            PAYLOAD);
    return SIZE;
}

payload_size :: (using content_enc_aes_settings: *Content_Enc_AES_Settings) -> u64 {
    size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_AES_SETTINGS_CIPHER_MODE, cipher_mode);
    return size;
}

encoding_size :: (
    using content_encoding: *Mkvmuxer_Content_Encoding,
    compression_size: u64,
    encryption_size: u64
) -> u64 {
    if compression_size != 0 {
        return 0;
    }

    encoding_size: u64 = 0;

    if encryption_size > 0 {
        c_transpiler_compound_add(*(encoding_size), ((mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCRYPTION, encryption_size) + encryption_size)), Uint64, Uint64);
    }
    c_transpiler_compound_add(*(encoding_size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING_TYPE, encoding_type)), Uint64, Uint64);
    c_transpiler_compound_add(*(encoding_size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING_SCOPE, encoding_scope)), Uint64, Uint64);
    c_transpiler_compound_add(*(encoding_size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING_ORDER, encoding_order)), Uint64, Uint64);

    return encoding_size;
}

write :: (using content_enc_aes_settings: *Content_Enc_AES_Settings, writer: *I_Mkv_Writer) -> bool {
    PAYLOAD := payload_size(content_enc_aes_settings);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENC_AES_SETTINGS, PAYLOAD) {
        return false;
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_AES_SETTINGS_CIPHER_MODE, cipher_mode) {
        return false;
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 || STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) PAYLOAD {
        return false;
    }

    return true;
}

size_5 :: (using content_encoding: *Mkvmuxer_Content_Encoding) -> u64 {
    ENCRYPTION_SIZE := encryption_size(content_encoding);
    ENCODING_SIZE := encoding_size(content_encoding, 0, ENCRYPTION_SIZE);
    ENCODINGS_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODING,
            ENCODING_SIZE
        ) + ENCODING_SIZE);

    return ENCODINGS_SIZE;
}

payload_size :: (using track: *Mkvmuxer_Track) -> u64 {
    size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_NUMBER, number);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_UID, uid)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_TYPE, type)), Uint64, Uint64);
    if codec_id != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_ID, codec_id)), Uint64, Uint64);
    }
    if codec_private != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_PRIVATE, codec_private, codec_private_length)), Uint64, Uint64);
    }
    if language != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_LANGUAGE, language)), Uint64, Uint64);
    }
    if name != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_NAME, name)), Uint64, Uint64);
    }
    if max_block_additional_id != 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_MAX_BLOCK_ADDITION_ID, max_block_additional_id)), Uint64, Uint64);
    }
    if codec_delay != 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CODEC_DELAY, codec_delay)), Uint64, Uint64);
    }
    if seek_pre_roll != 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_PRE_ROLL, seek_pre_roll)), Uint64, Uint64);
    }
    if default_duration != 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DEFAULT_DURATION, default_duration)), Uint64, Uint64);
    }
    {
        range1 := cast,no_check(*Class_Vector_Class_Block_Addition_Mapping) (*block_addition_mappings);
        begin1 := begin(range1);
        end1 := end(range1);
        while not_equal(*begin1, *end1) {
            block_addition_mapping: *Block_Addition_Mapping =
                cast,no_check(*Block_Addition_Mapping) multiply_5(
                    *begin1
                );
            size += size_6(block_addition_mapping);
            ((cast(**Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping) *(increment_5(*begin1))).*).*;
        }
    }
    if content_encoding_entries_size > 0 {
        content_encodings_size: u64 = 0;
        {
            i: u32 = 0;
            while i < content_encoding_entries_size {
                ENCODING := cast,no_check(*Mkvmuxer_Content_Encoding) (content_encoding_entries[i]);
                content_encodings_size += size_5(ENCODING);
                i += 1;
            }
        }

        c_transpiler_compound_add(*(size), ((mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CONTENT_ENCODINGS, content_encodings_size) + content_encodings_size)), Uint64, Uint64);
    }

    return size;
}

size_7 :: (using track: *Mkvmuxer_Track) -> u64 {
    size := cpp_transpiler_dispatch_mkvmuxer_Track_PayloadSize(track);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TRACK_ENTRY, size)), Uint64, Uint64);
    return size;
}

write :: (using segment_info: *Mkvmuxer_Segment_Info, writer: *I_Mkv_Writer) -> bool {
    if writer == null || muxing_app == null || writing_app == null {
        return false;
    }

    size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TIMECODE_SCALE, timecode_scale);
    if c_transpiler_float_greater(duration, 0.0) {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DURATION, cast,no_check(float32) duration)), Uint64, Uint64);
    }
    if date_utc != -9223372036854775807 - 1 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlDateElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DATE_UTC)), Uint64, Uint64);
    }
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_MUXING_APP, muxing_app)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_WRITING_APP, writing_app)), Uint64, Uint64);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_INFO, size) {
        return false;
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_TIMECODE_SCALE, timecode_scale) {
        return false;
    }

    if c_transpiler_float_greater(duration, 0.0) {
        duration_pos = cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DURATION, cast,no_check(float32) duration) {
            return false;
        }
    }

    if date_utc != -9223372036854775807 - 1 {
        mkvmuxer_WriteEbmlDateElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DATE_UTC, date_utc);
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_MUXING_APP, muxing_app) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_WRITING_APP, writing_app) {
        return false;
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 || STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) size {
        return false;
    }

    return true;
}

write :: (using seek_head: *Mkvmuxer_Seek_Head, writer: *I_Mkv_Writer) -> bool {
    ENTRY_SIZE := (cast,no_check(u64) cast(s32) 5) * max_entry_size(seek_head);
    SIZE := mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_HEAD, ENTRY_SIZE);

    start_pos = cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

    BYTES_WRITTEN := mkvmuxer_WriteVoidElement(writer, (SIZE + ENTRY_SIZE));
    if BYTES_WRITTEN == 0 {
        return false;
    }

    return true;
}

max_entry_size :: (using seek_head: *Mkvmuxer_Seek_Head) -> u64 {
    MAX_ENTRY_PAYLOAD_SIZE :=
        (mkvmuxer_EbmlElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_ID,
            cast(Uint64) 4294967295
        ) + mkvmuxer_EbmlElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_POSITION,
            cast(Uint64) 18446744073709551615
        ));
    MAX_ENTRY_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK,
            MAX_ENTRY_PAYLOAD_SIZE
        ) + MAX_ENTRY_PAYLOAD_SIZE);

    return MAX_ENTRY_SIZE;
}

doc_type_is_webm :: (using segment: *Mkvmuxer_Segment) -> bool {
    K_NUM_CODEC_IDS: s32 = 9;

    k_webm_codec_ids :=
        *s8.[
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_OPUS_CODEC_ID.data),
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_VORBIS_CODEC_ID.data),
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_AV1_CODEC_ID.data),
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_VP8_CODEC_ID.data),
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_VP9_CODEC_ID.data),
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_WEB_VTT_CAPTIONS_ID.data),
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_WEB_VTT_DESCRIPTIONS_ID.data),
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_WEB_VTT_METADATA_ID.data),
            cast,no_check(*s8) (MKVMUXER_TRACKS_K_WEB_VTT_SUBTITLES_ID.data)
        ];

    NUM_TRACKS := cast,no_check(s32) track_entries_size(*tracks);
    if 0 < NUM_TRACKS {
        for track_index: 0..NUM_TRACKS - 1 {
            TRACK := cast,no_check(*Mkvmuxer_Track) (get_track_by_index(*tracks, cast,no_check(u32) track_index));
            temporary_g61: Class_Allocator_Char = ---;
            init(*temporary_g61);
            temporary_g62: String = ---;
            init(*temporary_g62, codec_id(TRACK), *temporary_g61);
            CODEC_ID: String = ---;
            defer deinit(*CODEC_ID);
            init_2(*CODEC_ID, *temporary_g62);
            deinit(*temporary_g62);
            deinit(*temporary_g61);
            id_is_webm: bool = false;
            if 0 < K_NUM_CODEC_IDS {
                for id_index: 0..K_NUM_CODEC_IDS - 1 {
                    if equals_4(*CODEC_ID, k_webm_codec_ids[id_index]) {
                        id_is_webm = true;
                        break;
                    }
                }
            }

            if !id_is_webm {
                return false;
            }
        }
    }

    return true;
}

equals_4 :: (lhs: *Class_Basic_String_Char, rhs: *s8) -> bool {
    return size(lhs) == length(rhs) && compare(data_2(lhs), rhs, size(lhs)) == 0;
}

data_2 :: (using class_basic_string_char: *Class_Basic_String_Char) -> *s8 {
    return cast,no_check(*s8) (data(class_basic_string_char));
}

compare :: (s1: *Std_Char_Traits_Char_Char_Type, s2: *Std_Char_Traits_Char_Char_Type, n: u64) -> s32 {
    if n == 0 {
        return 0;
    }

    return c_transpiler_memcmp(cast(*void) s1, cast(*void) s2, n);
}

mkvmuxer_WriteEbmlHeader :: (writer: *I_Mkv_Writer, doc_type_version: u64, DOC_TYPE: *s8) -> bool {
    size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_EBML_VERSION, cast(Uint64) 1);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_EBML_READ_VERSION, cast(Uint64) 1)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_EBML_MAX_ID_LENGTH, cast(Uint64) 4)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_EBML_MAX_SIZE_LENGTH, cast(Uint64) 8)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DOC_TYPE, DOC_TYPE)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DOC_TYPE_VERSION, doc_type_version)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DOC_TYPE_READ_VERSION, cast(Uint64) 2)), Uint64, Uint64);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_EBML, size) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_EBML_VERSION, cast(Uint64) 1) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_EBML_READ_VERSION, cast(Uint64) 1) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_EBML_MAX_ID_LENGTH, cast(Uint64) 4) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_EBML_MAX_SIZE_LENGTH, cast(Uint64) 8) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DOC_TYPE, DOC_TYPE) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DOC_TYPE_VERSION, doc_type_version) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DOC_TYPE_READ_VERSION, cast(Uint64) 2) {
        return false;
    }

    return true;
}

update_doc_type_version :: (using segment: *Mkvmuxer_Segment) {
    {
        index: u32 = 0;
        while index < track_entries_size(*tracks) {
            track := cast,no_check(*Mkvmuxer_Track) (get_track_by_index(*tracks, index));
            if track == null {
                break;
            }
            if (codec_delay(track) != 0 || seek_pre_roll(track) != 0) && doc_type_version < 4 {
                doc_type_version = 4;
                break;
            }
            index += 1;
        }
    }
}

add_track :: (using tracks: *Mkvmuxer_Tracks, track: *Mkvmuxer_Track, number_value: s32) -> bool {
    if number_value < 0 || wrote_tracks {
        return false;
    }

    if number_value > 0x7e {
        return false;
    }

    track_num := cast,no_check(u32) number_value;

    if track_num > 0 {
        {
            i: u32 = 0;
            while i < track_entries_size {
                if number(track_entries[i]) == cast,no_check(u64) track_num {
                    return false;
                }
                i += 1;
            }
        }
    }

    COUNT := track_entries_size + 1;

    TRACK_ENTRIES :=
        cast,no_check(**Mkvmuxer_Track) (cast(**Mkvmuxer_Track) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) COUNT,
            size_of(*Mkvmuxer_Track)
        ));
    if TRACK_ENTRIES == null {
        return false;
    }

    {
        i: u32 = 0;
        while i < track_entries_size {
            TRACK_ENTRIES[i] = cast,no_check(*Mkvmuxer_Track) (track_entries[i]);
            i += 1;
        }
    }

    {
        cpp_transpiler_delete_g63 := cast,no_check(**Mkvmuxer_Track) (track_entries);
        if cpp_transpiler_delete_g63 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g63);
        }
    }

    if track_num == 0 {
        track_num = COUNT;

        exit: bool = false;
        while true {
            exit = true;
            {
                i: u32 = 0;
                while i < track_entries_size {
                    if number(TRACK_ENTRIES[i]) == cast,no_check(u64) track_num {
                        track_num += 1;
                        exit = false;
                        break;
                    }
                    i += 1;
                }
            }
            if exit break;
        }
    }
    track.number = cast,no_check(u64) track_num;

    track_entries = cast,no_check(**Mkvmuxer_Track) (TRACK_ENTRIES);
    track_entries[track_entries_size] = cast,no_check(*Mkvmuxer_Track) (track);
    track_entries_size = COUNT;
    return true;
}

set_codec_id :: (using track: *Mkvmuxer_Track, _codec_id: *s8) {
    if _codec_id != null {
        {
            cpp_transpiler_delete_g64 := cast,no_check(*s8) (codec_id);
            if cpp_transpiler_delete_g64 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g64);
            }
        }

        LENGTH := cstring_length(_codec_id) + 1;
        codec_id = cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(LENGTH, size_of(s8)));
        if codec_id != null {
            copy_memory(codec_id, _codec_id, LENGTH - 1);
            codec_id[LENGTH - 1] = 0;
        }
    }
}

add_tag :: (using _tags: *Mkvmuxer_Tags) -> *Tag {
    if !expand_tags_array(_tags) {
        return cast(*Tag) null;
    }

    tag := cast,no_check(*Tag) (*tags[c_transpiler_post_increment(*(tags_count))]);

    return (cast(**Tag) *(tag)).*;
}

expand_tags_array :: (using _tags: *Mkvmuxer_Tags) -> bool {
    if tags_size > tags_count {
        return true;
    }

    SIZE := (ifx tags_size == 0 then 1 else 2 * tags_size);

    TAGS := cast,no_check(*Tag) (cast(*Tag) cpp_transpiler_allocate_array_raw(cast,no_check(u64) SIZE, size_of(Tag)));
    {
        cpp_transpiler_array_index_g65: u64 = 0;
        while cpp_transpiler_array_index_g65 < cpp_transpiler_array_count(cast(*void) TAGS) {
            init_39(TAGS + cpp_transpiler_array_index_g65);
            cpp_transpiler_array_index_g65 += 1;
        }
    }
    if TAGS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < tags_count {
            src := cast,no_check(*Tag) (*tags[idx]);
            DST := cast,no_check(*Tag) ((TAGS + idx));
            shallow_copy(src, DST);
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g66 := cast,no_check(*Tag) (tags);
        if cpp_transpiler_delete_g66 != null {
            cpp_transpiler_delete_index_g67 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g66);
            while cpp_transpiler_delete_index_g67 > 0 {
                cpp_transpiler_delete_index_g67 -= 1;
                deinit_24(cpp_transpiler_delete_g66 + cpp_transpiler_delete_index_g67);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g66);
        }
    }

    tags = cast,no_check(*Tag) (TAGS);
    tags_size = SIZE;

    return true;
}

shallow_copy :: (using tag: *Tag, dst: *Tag) {
    dst.simple_tags = cast,no_check(*Tag_Simple_Tag) (simple_tags);
    dst.simple_tags_size = simple_tags_size;
    dst.simple_tags_count = simple_tags_count;
}

add_chapter :: (using _chapters: *Mkvmuxer_Chapters, seed: *u32) -> *Chapter {
    if !expand_chapters_array(_chapters) {
        return cast(*Chapter) null;
    }

    chapter := cast,no_check(*Chapter) (*chapters[c_transpiler_post_increment(*(chapters_count))]);
    init_34(chapter, seed);

    return (cast(**Chapter) *(chapter)).*;
}

init_34 :: (using chapter: *Chapter, seed: *u32) {
    id = cast,no_check(*s8) (cast(*s8) null);
    start_timecode = 0;
    end_timecode = 0;
    displays = cast,no_check(*Chapter_Display) (cast(*Chapter_Display) null);
    displays_size = 0;
    displays_count = 0;
    uid = mkvmuxer_MakeUID(seed);
}

expand_chapters_array :: (using _chapters: *Mkvmuxer_Chapters) -> bool {
    if chapters_size > chapters_count {
        return true;
    }

    SIZE := (ifx chapters_size == 0 then 1 else 2 * chapters_size);

    CHAPTERS :=
        cast,no_check(*Chapter) (cast(*Chapter) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) SIZE,
            size_of(Chapter)
        ));
    {
        cpp_transpiler_array_index_g68: u64 = 0;
        while cpp_transpiler_array_index_g68 < cpp_transpiler_array_count(cast(*void) CHAPTERS) {
            init_33(CHAPTERS + cpp_transpiler_array_index_g68);
            cpp_transpiler_array_index_g68 += 1;
        }
    }
    if CHAPTERS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < chapters_count {
            src := cast,no_check(*Chapter) (*chapters[idx]);
            DST := cast,no_check(*Chapter) ((CHAPTERS + idx));
            shallow_copy(src, DST);
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g69 := cast,no_check(*Chapter) (chapters);
        if cpp_transpiler_delete_g69 != null {
            cpp_transpiler_delete_index_g70 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g69);
            while cpp_transpiler_delete_index_g70 > 0 {
                cpp_transpiler_delete_index_g70 -= 1;
                deinit_22(cpp_transpiler_delete_g69 + cpp_transpiler_delete_index_g70);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g69);
        }
    }

    chapters = cast,no_check(*Chapter) (CHAPTERS);
    chapters_size = SIZE;

    return true;
}

shallow_copy :: (using chapter: *Chapter, dst: *Chapter) {
    dst.id = cast,no_check(*s8) (id);
    dst.start_timecode = start_timecode;
    dst.end_timecode = end_timecode;
    dst.uid = uid;
    dst.displays = cast,no_check(*Chapter_Display) (displays);
    dst.displays_size = displays_size;
    dst.displays_count = displays_count;
}

finalize :: (using seek_head: *Mkvmuxer_Seek_Head, writer: *I_Mkv_Writer) -> bool {
    if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Seekable(writer) {
        if start_pos == -1 {
            return false;
        }

        payload_size: u64 = 0;
        entry_size: [5] u64 = ---;

        {
            i: s32 = 0;
            while i < cast(s32) 5 {
                if seek_entry_id[i] != 0 {
                    entry_size[i] =
                        mkvmuxer_EbmlElementSize(
                            cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_ID,
                            cast,no_check(Uint64) seek_entry_id[i]
                        );
                    c_transpiler_compound_add(*(entry_size[i]), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_POSITION, seek_entry_pos[i])), Uint64, Uint64);

                    c_transpiler_compound_add(*(payload_size), ((mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK, entry_size[i]) + entry_size[i])), Uint64, Uint64);
                }
                i += 1;
            }
        }

        if payload_size == 0 {
            return true;
        }

        POS := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
        if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer, start_pos) != 0 {
            return false;
        }

        if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_HEAD, payload_size) {
            return false;
        }

        {
            i: s32 = 0;
            while i < cast(s32) 5 {
                if seek_entry_id[i] != 0 {
                    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK, entry_size[i]) {
                        return false;
                    }

                    if !mkvmuxer_WriteEbmlElement(
                        writer,
                        cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_ID,
                        cast,no_check(Uint64) seek_entry_id[i]
                    ) {
                        return false;
                    }

                    if !mkvmuxer_WriteEbmlElement(
                        writer,
                        cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_POSITION,
                        seek_entry_pos[i]
                    ) {
                        return false;
                    }
                }
                i += 1;
            }
        }

        TOTAL_ENTRY_SIZE := (cast,no_check(u64) cast(s32) 5) * max_entry_size(seek_head);
        TOTAL_SIZE :=
            (mkvmuxer_EbmlMasterElementSize(
                cast,no_check(Uint64) LIBWEBM_K_MKV_SEEK_HEAD,
                TOTAL_ENTRY_SIZE
            ) + TOTAL_ENTRY_SIZE);
        SIZE_LEFT :=
            cast,no_check(s64) (TOTAL_SIZE -
                cast,no_check(u64) (cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer) - start_pos));

        BYTES_WRITTEN := mkvmuxer_WriteVoidElement(writer, cast,no_check(Uint64) SIZE_LEFT);
        if BYTES_WRITTEN == 0 {
            return false;
        }

        if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer, POS) != 0 {
            return false;
        }
    }

    return true;
}

write :: (using cues: *Mkvmuxer_Cues, writer: *I_Mkv_Writer) -> bool {
    if writer == null {
        return false;
    }

    size: u64 = 0;
    {
        i: s32 = 0;
        while i < cue_entries_size {
            CUE := cast,no_check(*Mkvmuxer_Cue_Point) (get_cue_by_index(cues, i));

            if CUE == null {
                return false;
            }

            size += size_2(CUE);
            i += 1;
        }
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CUES, size) {
        return false;
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    {
        i: s32 = 0;
        while i < cue_entries_size {
            CUE := cast,no_check(*Mkvmuxer_Cue_Point) (get_cue_by_index(cues, i));

            if !write(CUE, writer) {
                return false;
            }
            i += 1;
        }
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 {
        return false;
    }

    if STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) size {
        return false;
    }

    return true;
}

write :: (using cue_point: *Mkvmuxer_Cue_Point, writer: *I_Mkv_Writer) -> bool {
    if writer == null || track < 1 || cluster_pos < 1 {
        return false;
    }

    size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_CLUSTER_POSITION, cluster_pos);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TRACK, track)), Uint64, Uint64);
    if output_block_number && block_number > 1 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_BLOCK_NUMBER, block_number)), Uint64, Uint64);
    }
    TRACK_POS_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TRACK_POSITIONS, size) +
            size);
    PAYLOAD_SIZE := (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TIME, time) + TRACK_POS_SIZE);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_POINT, PAYLOAD_SIZE) {
        return false;
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TIME, time) {
        return false;
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TRACK_POSITIONS, size) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TRACK, track) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_CLUSTER_POSITION, cluster_pos) {
        return false;
    }
    if output_block_number && block_number > 1 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_BLOCK_NUMBER, block_number) {
            return false;
        }
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 {
        return false;
    }

    if STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) PAYLOAD_SIZE {
        return false;
    }

    return true;
}

get_cue_by_index :: (using cues: *Mkvmuxer_Cues, index: s32) -> *Mkvmuxer_Cue_Point {
    if cue_entries == null {
        return cast(*Mkvmuxer_Cue_Point) null;
    }

    if index >= cue_entries_size {
        return cast(*Mkvmuxer_Cue_Point) null;
    }

    return cue_entries[index];
}

size_2 :: (using cue_point: *Mkvmuxer_Cue_Point) -> u64 {
    PAYLOAD_SIZE := payload_size(cue_point);
    return (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_POINT, PAYLOAD_SIZE) + PAYLOAD_SIZE);
}

payload_size :: (using cue_point: *Mkvmuxer_Cue_Point) -> u64 {
    size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_CLUSTER_POSITION, cluster_pos);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TRACK, track)), Uint64, Uint64);
    if output_block_number && block_number > 1 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_BLOCK_NUMBER, block_number)), Uint64, Uint64);
    }
    TRACK_POS_SIZE :=
        (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TRACK_POSITIONS, size) +
            size);
    PAYLOAD_SIZE := (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUE_TIME, time) + TRACK_POS_SIZE);

    return PAYLOAD_SIZE;
}

finalize :: (using segment_info: *Mkvmuxer_Segment_Info, writer: *I_Mkv_Writer) -> bool {
    if writer == null {
        return false;
    }

    if c_transpiler_float_greater(duration, 0.0) {
        if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Seekable(writer) {
            if duration_pos == -1 {
                return false;
            }

            POS := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);

            if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer, duration_pos) != 0 {
                return false;
            }

            if !mkvmuxer_WriteEbmlElement(
                writer,
                cast,no_check(Uint64) LIBWEBM_K_MKV_DURATION,
                cast,no_check(float32) duration
            ) {
                return false;
            }

            if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer, POS) != 0 {
                return false;
            }
        }
    }

    return true;
}

move_cues_before_clusters :: (using segment: *Mkvmuxer_Segment) {
    CURRENT_CUE_SIZE := size_3(*cues);
    cue_size: u64 = 0;
    {
        i: s32 = 0;
        while i < cue_entries_size(*cues) {
            cue_size += size_2(get_cue_by_index(*cues, i));
            i += 1;
        }
    }
    {
        i: s32 = 0;
        while i < cue_entries_size(*cues) {
            move_cues_before_clusters_helper(segment, CURRENT_CUE_SIZE, i, *cue_size);
            i += 1;
        }
    }

    cluster_index: s32 = 0;
    cues_index: s32 = 0;
    {
        i: s32 = 0;
        while i < cast(s32) 5 {
            if get_id(*seek_head, i) == LIBWEBM_K_MKV_CLUSTER {
                cluster_index = i;
            }
            if get_id(*seek_head, i) == LIBWEBM_K_MKV_CUES {
                cues_index = i;
            }
            i += 1;
        }
    }
    set_seek_entry(
        *seek_head,
        cues_index,
        cast,no_check(u32) (LIBWEBM_K_MKV_CUES),
        get_position(*seek_head, cluster_index)
    );
    set_seek_entry(
        *seek_head,
        cluster_index,
        cast,no_check(u32) (LIBWEBM_K_MKV_CLUSTER),
        size_3(*cues) + get_position(*seek_head, cues_index)
    );
}

get_position :: (using seek_head: *Mkvmuxer_Seek_Head, index: s32) -> u64 {
    if index < 0 || index >= cast(s32) 5 {
        return cast(u64) 18446744073709551615;
    }
    return seek_entry_pos[index];
}

size_3 :: (using cues: *Mkvmuxer_Cues) -> u64 {
    size: u64 = 0;
    {
        i: s32 = 0;
        while i < cue_entries_size {
            size += size_2(get_cue_by_index(cues, i));
            i += 1;
        }
    }
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CUES, size)), Uint64, Uint64);
    return size;
}

set_seek_entry :: (using seek_head: *Mkvmuxer_Seek_Head, index: s32, id: u32, position: u64) -> bool {
    if index < 0 || index >= cast(s32) 5 {
        return false;
    }
    seek_entry_id[index] = id;
    seek_entry_pos[index] = position;
    return true;
}

get_id :: (using seek_head: *Mkvmuxer_Seek_Head, index: s32) -> u32 {
    if index < 0 || index >= cast(s32) 5 {
        return 4294967295;
    }
    return seek_entry_id[index];
}

move_cues_before_clusters_helper :: (using segment: *Mkvmuxer_Segment, diff: u64, index: s32, cues_size: *u64) {
    CUE_POINT := cast,no_check(*Mkvmuxer_Cue_Point) (get_cue_by_index(*cues, index));
    if CUE_POINT == null {
        return;
    }
    OLD_CUE_POINT_SIZE := size_2(CUE_POINT);
    CLUSTER_POS := cluster_pos(CUE_POINT) + diff;
    CUE_POINT.cluster_pos = CLUSTER_POS;

    CUE_POINT_SIZE_DIFF := size_2(CUE_POINT) - OLD_CUE_POINT_SIZE;
    CUE_SIZE_DIFF :=
        cast,no_check(u64) (mkvmuxer_GetCodedUIntSize((cues_size.* + CUE_POINT_SIZE_DIFF)) -
            mkvmuxer_GetCodedUIntSize(cues_size.*));
    cues_size.* += CUE_POINT_SIZE_DIFF;
    diff = CUE_SIZE_DIFF + CUE_POINT_SIZE_DIFF;
    if diff > 0 {
        {
            i: s32 = 0;
            while i < cue_entries_size(*cues) {
                move_cues_before_clusters_helper(segment, diff, i, cues_size);
                i += 1;
            }
        }
    }
}

init_49 :: (using segment_info: *Mkvmuxer_Segment_Info) -> bool {
    major: s32 = ---;
    minor: s32 = ---;
    build: s32 = ---;
    revision: s32 = ---;
    mkvmuxer_GetVersion(*major, *minor, *build, *revision);
    temp: [256] s8 = ---;

    snprintf(temp.data, (cast,no_check(u64) (256)) / 1, c_string("libwebm-%d.%d.%d.%d"), major, minor, build, revision);

    APP_LEN := cstring_length(temp.data) + 1;

    {
        cpp_transpiler_delete_g71 := cast,no_check(*s8) (muxing_app);
        if cpp_transpiler_delete_g71 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g71);
        }
    }

    muxing_app = cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(APP_LEN, size_of(s8)));
    if muxing_app == null {
        return false;
    }

    copy_memory(muxing_app, temp.data, APP_LEN - 1);
    muxing_app[APP_LEN - 1] = 0;

    set_writing_app(segment_info, temp.data);
    if writing_app == null {
        return false;
    }
    return true;
}

set_writing_app :: (using segment_info: *Mkvmuxer_Segment_Info, app: *s8) {
    if app != null {
        LENGTH := cstring_length(app) + 1;
        temp_str := cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(LENGTH, size_of(s8)));
        if temp_str == null {
            return;
        }

        copy_memory(temp_str, app, LENGTH - 1);
        temp_str[LENGTH - 1] = 0;

        {
            cpp_transpiler_delete_g72 := cast,no_check(*s8) (writing_app);
            if cpp_transpiler_delete_g72 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g72);
            }
        }
        writing_app = cast,no_check(*s8) (temp_str);
    }
}

create_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Unsigned_Long,
    args_value: *Class_Tuple
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891 {
    tmp :=
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) (get_node(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
        ));
    construct_node(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        tmp,
        args,
        args_value_inner,
        args_value
    );
    return tmp;
}

get_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891 {
    return cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) (allocate_11(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
    ),
        1
    ));
}

allocate_11 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_Li_H13077661779444050177,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) -> Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Pointer {
    return cast,no_check(Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Pointer) (allocate_12(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(a)).*),
        n,
        null
    ));
}

allocate_12 :: (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame,
    n: Std_New_Allocator_Size_Type,
    unnamed_18203: *void
) -> *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame {
    #assert true; // validated by the C++ frontend

    if cast(s64) (n > max_size_14(class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame)) != 0 {
        if n > (cast(u64) 18446744073709551615) / 64 {
            std_throw_bad_array_new_length();
        }
        std_throw_bad_alloc();
    } else {
        return cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) c_transpiler_cpp_operator_new((n * 64));
    }
    return unreachable_value(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame);
}

max_size_14 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) -> Std_New_Allocator_Size_Type {
    return (cast,no_check(u64) (9223372036854775807)) / 64;
}

construct_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    node: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Unsigned_Long,
    args_value: *Class_Tuple
) {
    cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H15905145181564765690) cast(*void) node;
    construct_8(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
    ),
        valptr_2(node),
        args,
        args_value_inner,
        args_value
    );
}

construct_8 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_Li_H13077661779444050177,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Unsigned_Long,
    args_value: *Class_Tuple
) {
    construct_9(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(a)).*),
        p,
        args,
        args_value_inner,
        args_value
    );
}

construct_9 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Unsigned_Long,
    args_value: *Class_Tuple
) {
    (ifx true {
    cpp_transpiler_new_g73 :=
        cast,no_check(*Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (cast(*Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) cast(*void) p);
    init_205(
        cpp_transpiler_new_g73,
        ((cast(**Piecewise_Construct_T) *(args)).*).*,
        (ifx true {
    temporary_g74: Class_Tuple_Unsigned_Long = ---;
    init_172(*temporary_g74, args_value_inner);
    temporary_g74;
})
,
        ((cast(**Class_Tuple) *(args_value)).*).*
    );
    cpp_transpiler_new_g73;
})
;
}

deallocate_6 :: (
    using struct_vector_base_struct_list_iterator_class_frame_class_allocator_struct_list_iterator_class_frame: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame,
    p: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer,
    n: u64
) {
    if p != null {
        deallocate_7(cast(*Class_Allocator_Struct_List_Iterator_Class_Frame) *impl, p, n);
    }
}

deallocate_7 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Allocator_Type,
    p: Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) {
    deallocate_8(
        cast(*Class_New_Allocator_Struct_List_Iterator_Class_Frame) ((cast(**Class_Allocator_Struct_List_Iterator_Class_Frame) *(a)).*),
        p,
        n
    );
}

deallocate_8 :: (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame,
    p: *Struct_List_Iterator_Class_Frame,
    n: Std_New_Allocator_Size_Type
) {
    c_transpiler_cpp_operator_delete(cast(*void) p);
}

create_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Const_Unsigned_Long,
    args_value: *Class_Tuple
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891 {
    tmp :=
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) (get_node(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
        ));
    construct_node(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        tmp,
        args,
        args_value_inner,
        args_value
    );
    return tmp;
}

construct_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    node: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Const_Unsigned_Long,
    args_value: *Class_Tuple
) {
    cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H15905145181564765690) cast(*void) node;
    construct_10(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074
    ),
        valptr_2(node),
        args,
        args_value_inner,
        args_value
    );
}

construct_10 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_Li_H13077661779444050177,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Const_Unsigned_Long,
    args_value: *Class_Tuple
) {
    construct_11(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) *(a)).*),
        p,
        args,
        args_value_inner,
        args_value
    );
}

construct_11 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Const_Unsigned_Long,
    args_value: *Class_Tuple
) {
    (ifx true {
    cpp_transpiler_new_g75 :=
        cast,no_check(*Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (cast(*Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) cast(*void) p);
    init_185(
        cpp_transpiler_new_g75,
        ((cast(**Piecewise_Construct_T) *(args)).*).*,
        (ifx true {
    temporary_g76: Class_Tuple_Const_Unsigned_Long = ---;
    init_193(*temporary_g76, args_value_inner);
    temporary_g76;
})
,
        ((cast(**Class_Tuple) *(args_value)).*).*
    );
    cpp_transpiler_new_g75;
})
;
}

init_126 :: (using list_node_header: *List_Node_Header) {
    assignment_10: *List_Node_Base =
        cast,no_check(*List_Node_Base) ((ifx true { assignment_9: *List_Node_Base = cast,no_check(*List_Node_Base) (cast(*List_Node_Base) list_node_header); ((cast,no_check(**List_Node_Base) *((cast(*List_Node_Base) list_node_header).prev)).*) = assignment_9; assignment_9; }));
    ((cast,no_check(**List_Node_Base) *((cast(*List_Node_Base) list_node_header).next)).*) = assignment_10;
    assign_47(
        cast(*List_Size) cpp_transpiler_derived_to_base(cast(*void) list_node_header, 16),
        (ifx true { temporary___g1: List_Size = List_Size.{}; *temporary___g1; })
    );
}

assign_47 :: inline (using list_size: *List_Size, unnamed_18813: *List_Size) -> *List_Size {
    list_size.* = ((cast(**List_Size) *(unnamed_18813)).*).*;
    return list_size;
}

operator_bool :: (
    using struct_allocated_ptr_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame
) -> bool {
    return ptr != null;
}

create_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Unsigned_Long,
    args_value: *Class_Tuple
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903 {
    tmp :=
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903) (get_node(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
        ));
    construct_node(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        tmp,
        args,
        args_value_inner,
        args_value
    );
    return tmp;
}

get_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903 {
    return cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903) (allocate_13(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
    ),
        1
    ));
}

get_node_allocator :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> *Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H8696784080890226228 {
    return cast(*Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) *impl;
}

allocate_13 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Allocator_Type,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) -> Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Pointer {
    return cast,no_check(Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Pointer) (allocate_14(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) *(a)).*),
        n,
        null
    ));
}

allocate_14 :: (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long,
    n: Std_New_Allocator_Size_Type,
    unnamed_19016: *void
) -> *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long {
    #assert true; // validated by the C++ frontend

    if cast(s64) (n > max_size_15(class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long)) != 0 {
        if n > (cast(u64) 18446744073709551615) / 48 {
            std_throw_bad_array_new_length();
        }
        std_throw_bad_alloc();
    } else {
        return cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) c_transpiler_cpp_operator_new((n * 48));
    }
    return unreachable_value(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long);
}

max_size_15 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) -> Std_New_Allocator_Size_Type {
    return (cast,no_check(u64) (9223372036854775807)) / 48;
}

construct_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    node: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Unsigned_Long,
    args_value: *Class_Tuple
) {
    cast(*Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H14127289816513323478) cast(*void) node;
    construct_12(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
    ),
        valptr_3(node),
        args,
        args_value_inner,
        args_value
    );
}

construct_12 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Allocator_Type,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Unsigned_Long,
    args_value: *Class_Tuple
) {
    construct_13(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) *(a)).*),
        p,
        args,
        args_value_inner,
        args_value
    );
}

construct_13 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long,
    args: *Piecewise_Construct_T,
    args_value_inner: *Class_Tuple_Unsigned_Long,
    args_value: *Class_Tuple
) {
    (ifx true {
    cpp_transpiler_new_g77 :=
        cast,no_check(*Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (cast(*Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) cast(*void) p);
    init_170(
        cpp_transpiler_new_g77,
        ((cast(**Piecewise_Construct_T) *(args)).*).*,
        (ifx true {
    temporary_g78: Class_Tuple_Unsigned_Long = ---;
    init_172(*temporary_g78, args_value_inner);
    temporary_g78;
})
,
        ((cast(**Class_Tuple) *(args_value)).*).*
    );
    cpp_transpiler_new_g77;
})
;
}

drop_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    p: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903
) {
    destroy_node(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        p
    );
    put_node(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        p
    );
}

put_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    p: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903
) {
    deallocate_9(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
    ),
        p,
        1
    );
}

deallocate_9 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Allocator_Type,
    p: Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Pointer,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) {
    deallocate_10(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) *(a)).*),
        p,
        n
    );
}

deallocate_10 :: (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long,
    p: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long,
    n: Std_New_Allocator_Size_Type
) {
    c_transpiler_cpp_operator_delete(cast(*void) p);
}

destroy_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    p: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903
) {
    destroy_8(
        get_node_allocator(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
    ),
        valptr_3(p)
    );
}

destroy_8 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Allocator_Type,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long
) {
    destroy_9(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) ((cast(**Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) *(a)).*),
        p
    );
}

destroy_9 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long,
    p: *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long
) {
}

clear_5 :: (using tag: *Tag) {
    while simple_tags_count > 0 {
        st := cast,no_check(*Tag_Simple_Tag) (*simple_tags[c_transpiler_pre_decrement(*(simple_tags_count))]);
        clear_4(st);
    }

    {
        cpp_transpiler_delete_g79 := cast,no_check(*Tag_Simple_Tag) (simple_tags);
        if cpp_transpiler_delete_g79 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g79);
        }
    }
    simple_tags = cast,no_check(*Tag_Simple_Tag) (cast(*Tag_Simple_Tag) null);

    simple_tags_size = 0;
}

clear_4 :: (using simple_tag: *Tag_Simple_Tag) {
    mkvmuxer_anonymous_namespace_str_cpy(cast(*s8) null, *tag_name);
    mkvmuxer_anonymous_namespace_str_cpy(cast(*s8) null, *tag_string);
}

mkvmuxer_anonymous_namespace_str_cpy :: (src: *s8, dst_ptr: **s8) -> bool {
    if dst_ptr == null {
        return false;
    }

    dst := cast,no_check(**s8) (dst_ptr);

    {
        cpp_transpiler_delete_g80 := cast,no_check(*s8) ((cast(**s8) dst).*);
        if cpp_transpiler_delete_g80 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g80);
        }
    }
    (cast(**s8) dst).* = cast,no_check(*s8) (cast(*s8) null);

    if src == null {
        return true;
    }

    SIZE := cstring_length(src) + 1;

    assignment_11: *s8 = cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(SIZE, size_of(s8)));
    ((cast,no_check(**s8) *((cast(**s8) dst).*)).*) = assignment_11;
    if (cast(**s8) dst).* == null {
        return false;
    }

    copy_memory((cast(**s8) dst).*, src, SIZE - 1);
    ((cast(**s8) dst).*)[SIZE - 1] = 0;
    return true;
}

set_tag_string :: (using simple_tag: *Tag_Simple_Tag, _tag_string: *s8) -> bool {
    return mkvmuxer_anonymous_namespace_str_cpy(_tag_string, *tag_string);
}

set_tag_name :: (using simple_tag: *Tag_Simple_Tag, _tag_name: *s8) -> bool {
    return mkvmuxer_anonymous_namespace_str_cpy(_tag_name, *tag_name);
}

init_38 :: (using simple_tag: *Tag_Simple_Tag) {
    tag_name = cast,no_check(*s8) (cast(*s8) null);
    tag_string = cast,no_check(*s8) (cast(*s8) null);
}

expand_simple_tags_array :: (using tag: *Tag) -> bool {
    if simple_tags_size > simple_tags_count {
        return true;
    }

    SIZE := (ifx simple_tags_size == 0 then 1 else 2 * simple_tags_size);

    SIMPLE_TAGS :=
        cast,no_check(*Tag_Simple_Tag) (cast(*Tag_Simple_Tag) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) SIZE,
            size_of(Tag_Simple_Tag)
        ));
    if SIMPLE_TAGS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < simple_tags_count {
            SIMPLE_TAGS[idx] = simple_tags[idx];
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g81 := cast,no_check(*Tag_Simple_Tag) (simple_tags);
        if cpp_transpiler_delete_g81 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g81);
        }
    }

    simple_tags = cast,no_check(*Tag_Simple_Tag) (SIMPLE_TAGS);
    simple_tags_size = SIZE;

    return true;
}

clear_3 :: (using chapter: *Chapter) {
    mkvmuxer_anonymous_namespace_str_cpy(cast(*s8) null, *id);

    while displays_count > 0 {
        d := cast,no_check(*Chapter_Display) (*displays[c_transpiler_pre_decrement(*(displays_count))]);
        clear_2(d);
    }

    {
        cpp_transpiler_delete_g82 := cast,no_check(*Chapter_Display) (displays);
        if cpp_transpiler_delete_g82 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g82);
        }
    }
    displays = cast,no_check(*Chapter_Display) (cast(*Chapter_Display) null);

    displays_size = 0;
}

clear_2 :: (using display: *Chapter_Display) {
    mkvmuxer_anonymous_namespace_str_cpy(cast(*s8) null, *title);
    mkvmuxer_anonymous_namespace_str_cpy(cast(*s8) null, *language);
    mkvmuxer_anonymous_namespace_str_cpy(cast(*s8) null, *country);
}

set_country :: (using display: *Chapter_Display, _country: *s8) -> bool {
    return mkvmuxer_anonymous_namespace_str_cpy(_country, *country);
}

set_language :: (using display: *Chapter_Display, _language: *s8) -> bool {
    return mkvmuxer_anonymous_namespace_str_cpy(_language, *language);
}

set_title :: (using display: *Chapter_Display, _title: *s8) -> bool {
    return mkvmuxer_anonymous_namespace_str_cpy(_title, *title);
}

init_32 :: (using display: *Chapter_Display) {
    title = cast,no_check(*s8) (cast(*s8) null);
    language = cast,no_check(*s8) (cast(*s8) null);
    country = cast,no_check(*s8) (cast(*s8) null);
}

expand_displays_array :: (using chapter: *Chapter) -> bool {
    if displays_size > displays_count {
        return true;
    }

    SIZE := (ifx displays_size == 0 then 1 else 2 * displays_size);

    DISPLAYS :=
        cast,no_check(*Chapter_Display) (cast(*Chapter_Display) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) SIZE,
            size_of(Chapter_Display)
        ));
    if DISPLAYS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < displays_count {
            DISPLAYS[idx] = displays[idx];
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g83 := cast,no_check(*Chapter_Display) (displays);
        if cpp_transpiler_delete_g83 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g83);
        }
    }

    displays = cast,no_check(*Chapter_Display) (DISPLAYS);
    displays_size = SIZE;

    return true;
}

release :: (
    using class_unique_ptr_class_projection: *Class_Unique_Ptr_Class_Projection
) -> Std_Unique_Ptr_Mkvmuxer_Projection_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Projection_Pointer) (release(cast(*Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection) *t));
}

release :: (
    using class_uniq_ptr_impl_class_projection_struct_default_delete_class_projection: *Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection
) -> Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer {
    p :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) ptr_8(
            class_uniq_ptr_impl_class_projection_struct_default_delete_class_projection
        )).*);
    (cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) ptr_8(class_uniq_ptr_impl_class_projection_struct_default_delete_class_projection)).* =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) (cast(Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) null);
    return p;
}

ptr_8 :: (
    using class_uniq_ptr_impl_class_projection_struct_default_delete_class_projection: *Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection
) -> *Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer {
    return cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) (std_get_4(*t));
}

std_get_4 :: (
    t: *Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type) (std_get_helper_3(
        cast(*Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection) ((cast(**Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection) *(t)).*)
    ));
}

std_get_helper_3 :: (
    t: *Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection
) -> **Mkvmuxer_Projection {
    return cast,no_check(**Mkvmuxer_Projection) (m_head_4(t));
}

m_head_4 :: (t: *Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection) -> **Mkvmuxer_Projection {
    return cast,no_check(**Mkvmuxer_Projection) (m_head_5(
        cast(*Struct_Head_Base_0_Class_Projection) ((cast(**Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection) *(t)).*)
    ));
}

m_head_5 :: (b: *Struct_Head_Base_0_Class_Projection) -> **Mkvmuxer_Projection {
    return *b.head_impl;
}

get_pointer_3 :: (
    using class_unique_ptr_class_projection: *Class_Unique_Ptr_Class_Projection
) -> Std_Unique_Ptr_Mkvmuxer_Projection_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Projection_Pointer) (get_3(class_unique_ptr_class_projection));
}

get_3 :: (
    using class_unique_ptr_class_projection: *Class_Unique_Ptr_Class_Projection
) -> Std_Unique_Ptr_Mkvmuxer_Projection_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Projection_Pointer) (ptr_9(cast(*Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection) *t));
}

ptr_9 :: (
    using class_uniq_ptr_impl_class_projection_struct_default_delete_class_projection: *Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection
) -> Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer {
    return (cast(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type) std_get_5(*t)).*;
}

std_get_5 :: (
    t: *Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type) (std_get_helper_4(
        cast(*Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection) ((cast(**Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection) *(t)).*)
    ));
}

std_get_helper_4 :: (
    t: *Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection
) -> **Mkvmuxer_Projection {
    return cast,no_check(**Mkvmuxer_Projection) (m_head_6(t));
}

m_head_6 :: (t: *Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection) -> **Mkvmuxer_Projection {
    return cast,no_check(**Mkvmuxer_Projection) (m_head_7(
        cast(*Struct_Head_Base_0_Class_Projection) ((cast(**Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection) *(t)).*)
    ));
}

m_head_7 :: (b: *Struct_Head_Base_0_Class_Projection) -> **Mkvmuxer_Projection {
    return *b.head_impl;
}

set_pose_roll :: (using projection: *Mkvmuxer_Projection, _pose_roll: float32) {
    pose_roll = _pose_roll;
}

set_pose_pitch :: (using projection: *Mkvmuxer_Projection, _pose_pitch: float32) {
    pose_pitch = _pose_pitch;
}

set_pose_yaw :: (using projection: *Mkvmuxer_Projection, _pose_yaw: float32) {
    pose_yaw = _pose_yaw;
}

set_type :: (using projection: *Mkvmuxer_Projection, _type: Projection_Projection_Type_in_mkvmuxer) {
    type = _type;
}

set_projection_private :: (using projection: *Mkvmuxer_Projection, data: *u8, data_length: u64) -> bool {
    if data == null || data_length == 0 {
        return false;
    }

    if data_length != data_length {
        return false;
    }

    new_private_data := cast,no_check(*u8) (cast(*u8) cpp_transpiler_allocate_array_raw(data_length, size_of(u8)));
    if new_private_data == null {
        return false;
    }

    {
        cpp_transpiler_delete_g84 := cast,no_check(*u8) (private_data);
        if cpp_transpiler_delete_g84 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g84);
        }
    }
    private_data = cast,no_check(*u8) (new_private_data);
    private_data_length = data_length;
    copy_memory(private_data, data, data_length);

    return true;
}

operator_bool :: (using class_unique_ptr_class_projection: *Class_Unique_Ptr_Class_Projection) -> bool {
    return ifx get_3(class_unique_ptr_class_projection) == null then false else true;
}

get_deleter_2 :: (
    using class_unique_ptr_class_projection: *Class_Unique_Ptr_Class_Projection
) -> *Std_Unique_Ptr_Mkvmuxer_Projection_Deleter_Type {
    return cast,no_check(*Std_Unique_Ptr_Mkvmuxer_Projection_Deleter_Type) (deleter_2(cast(*Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection) *t));
}

deleter_2 :: (
    using class_uniq_ptr_impl_class_projection_struct_default_delete_class_projection: *Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection
) -> *Struct_Default_Delete_Class_Projection {
    return cast,no_check(*Struct_Default_Delete_Class_Projection) (std_get_6(*t));
}

std_get_6 :: (
    t: *Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection
) -> *Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type {
    return cast,no_check(*Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type) (std_get_helper_5(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Projection) ((cast(**Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection) *(t)).*)
    ));
}

std_get_helper_5 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Projection
) -> *Struct_Default_Delete_Class_Projection {
    return cast,no_check(*Struct_Default_Delete_Class_Projection) (m_head_8(t));
}

m_head_8 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Projection
) -> *Struct_Default_Delete_Class_Projection {
    return cast,no_check(*Struct_Default_Delete_Class_Projection) (m_head_9(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Class_Projection) ((cast(**Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Projection) *(t)).*)
    ));
}

m_head_9 :: (b: *Struct_Head_Base_1_Struct_Default_Delete_Class_Projection) -> *Struct_Default_Delete_Class_Projection {
    return *b.head_impl;
}

call_5 :: (
    using struct_default_delete_class_projection: *Struct_Default_Delete_Class_Projection,
    ptr: *Mkvmuxer_Projection
) {
    #assert true; // validated by the C++ frontend
    #assert true; // validated by the C++ frontend
    {
        cpp_transpiler_delete_g85 := cast,no_check(*Mkvmuxer_Projection) (ptr);
        if cpp_transpiler_delete_g85 != null {
            deinit_12(cpp_transpiler_delete_g85);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g85);
        }
    }
}

release :: (
    using class_unique_ptr_class_colour: *Class_Unique_Ptr_Class_Colour
) -> Std_Unique_Ptr_Mkvmuxer_Colour_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Colour_Pointer) (release(cast(*Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour) *t));
}

release :: (
    using class_uniq_ptr_impl_class_colour_struct_default_delete_class_colour: *Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour
) -> Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer {
    p :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) ptr_10(
            class_uniq_ptr_impl_class_colour_struct_default_delete_class_colour
        )).*);
    (cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) ptr_10(class_uniq_ptr_impl_class_colour_struct_default_delete_class_colour)).* =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) (cast(Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) null);
    return p;
}

ptr_10 :: (
    using class_uniq_ptr_impl_class_colour_struct_default_delete_class_colour: *Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour
) -> *Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer {
    return cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) (std_get_7(*t));
}

std_get_7 :: (
    t: *Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type) (std_get_helper_6(
        cast(*Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) ((cast(**Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour) *(t)).*)
    ));
}

std_get_helper_6 :: (t: *Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) -> **Mkvmuxer_Colour {
    return cast,no_check(**Mkvmuxer_Colour) (m_head_10(t));
}

m_head_10 :: (t: *Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) -> **Mkvmuxer_Colour {
    return cast,no_check(**Mkvmuxer_Colour) (m_head_11(
        cast(*Struct_Head_Base_0_Class_Colour) ((cast(**Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) *(t)).*)
    ));
}

m_head_11 :: (b: *Struct_Head_Base_0_Class_Colour) -> **Mkvmuxer_Colour {
    return *b.head_impl;
}

get_pointer_4 :: (
    using class_unique_ptr_class_colour: *Class_Unique_Ptr_Class_Colour
) -> Std_Unique_Ptr_Mkvmuxer_Colour_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Colour_Pointer) (get_4(class_unique_ptr_class_colour));
}

get_4 :: (
    using class_unique_ptr_class_colour: *Class_Unique_Ptr_Class_Colour
) -> Std_Unique_Ptr_Mkvmuxer_Colour_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Colour_Pointer) (ptr_11(cast(*Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour) *t));
}

ptr_11 :: (
    using class_uniq_ptr_impl_class_colour_struct_default_delete_class_colour: *Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour
) -> Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer {
    return (cast(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type) std_get_8(*t)).*;
}

std_get_8 :: (
    t: *Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type) (std_get_helper_7(
        cast(*Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) ((cast(**Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour) *(t)).*)
    ));
}

std_get_helper_7 :: (t: *Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) -> **Mkvmuxer_Colour {
    return cast,no_check(**Mkvmuxer_Colour) (m_head_12(t));
}

m_head_12 :: (t: *Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) -> **Mkvmuxer_Colour {
    return cast,no_check(**Mkvmuxer_Colour) (m_head_13(
        cast(*Struct_Head_Base_0_Class_Colour) ((cast(**Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) *(t)).*)
    ));
}

m_head_13 :: (b: *Struct_Head_Base_0_Class_Colour) -> **Mkvmuxer_Colour {
    return *b.head_impl;
}

set_max_fall :: (using colour: *Mkvmuxer_Colour, _max_fall: u64) {
    max_fall = _max_fall;
}

set_max_cll :: (using colour: *Mkvmuxer_Colour, _max_cll: u64) {
    max_cll = _max_cll;
}

set_primaries :: (using colour: *Mkvmuxer_Colour, _primaries: u64) {
    primaries = _primaries;
}

set_transfer_characteristics :: (using colour: *Mkvmuxer_Colour, _transfer_characteristics: u64) {
    transfer_characteristics = _transfer_characteristics;
}

set_range :: (using colour: *Mkvmuxer_Colour, _range: u64) {
    range = _range;
}

set_chroma_siting_vert :: (using colour: *Mkvmuxer_Colour, _chroma_siting_vert: u64) {
    chroma_siting_vert = _chroma_siting_vert;
}

set_chroma_siting_horz :: (using colour: *Mkvmuxer_Colour, _chroma_siting_horz: u64) {
    chroma_siting_horz = _chroma_siting_horz;
}

set_cb_subsampling_vert :: (using colour: *Mkvmuxer_Colour, _cb_subsampling_vert: u64) {
    cb_subsampling_vert = _cb_subsampling_vert;
}

set_cb_subsampling_horz :: (using colour: *Mkvmuxer_Colour, _cb_subsampling_horz: u64) {
    cb_subsampling_horz = _cb_subsampling_horz;
}

set_chroma_subsampling_vert :: (using colour: *Mkvmuxer_Colour, _chroma_subsampling_vert: u64) {
    chroma_subsampling_vert = _chroma_subsampling_vert;
}

set_chroma_subsampling_horz :: (using colour: *Mkvmuxer_Colour, _chroma_subsampling_horz: u64) {
    chroma_subsampling_horz = _chroma_subsampling_horz;
}

set_bits_per_channel :: (using colour: *Mkvmuxer_Colour, _bits_per_channel: u64) {
    bits_per_channel = _bits_per_channel;
}

set_matrix_coefficients :: (using colour: *Mkvmuxer_Colour, _matrix_coefficients: u64) {
    matrix_coefficients = _matrix_coefficients;
}

set_mastering_metadata :: (using colour: *Mkvmuxer_Colour, _mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> bool {
    mm_ptr: Class_Unique_Ptr_Class_Mastering_Metadata = ---;
    defer deinit_85(*mm_ptr);
    init_148(
        *mm_ptr,
        (ifx true {
    cpp_transpiler_new_g86 :=
        cast,no_check(*Mkvmuxer_Mastering_Metadata) (cast(*Mkvmuxer_Mastering_Metadata) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Mastering_Metadata)
        ));
    init_21(cpp_transpiler_new_g86);
    cpp_transpiler_new_g86;
})

    );
    if !operator_bool(*mm_ptr) {
        return false;
    }

    set_luminance_max(get_pointer_5(*mm_ptr), luminance_max(_mastering_metadata));
    set_luminance_min(get_pointer_5(*mm_ptr), luminance_min(_mastering_metadata));

    if !set_chromaticity(
        get_pointer_5(*mm_ptr),
        r(_mastering_metadata),
        g(_mastering_metadata),
        b(_mastering_metadata),
        white_point(_mastering_metadata)
    ) {
        return false;
    }

    {
        cpp_transpiler_delete_g87 := cast,no_check(*Mkvmuxer_Mastering_Metadata) (mastering_metadata);
        if cpp_transpiler_delete_g87 != null {
            deinit_10(cpp_transpiler_delete_g87);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g87);
        }
    }
    mastering_metadata = cast,no_check(*Mkvmuxer_Mastering_Metadata) release(*mm_ptr);
    return true;
}

release :: (
    using class_unique_ptr_class_mastering_metadata: *Class_Unique_Ptr_Class_Mastering_Metadata
) -> Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Pointer) (release(cast(*Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *t));
}

release :: (
    using class_uniq_ptr_impl_class_mastering_metadata_struct_default_delete_class_mastering_metadata: *Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer {
    p :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) ptr_12(
            class_uniq_ptr_impl_class_mastering_metadata_struct_default_delete_class_mastering_metadata
        )).*);
    (cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) ptr_12(class_uniq_ptr_impl_class_mastering_metadata_struct_default_delete_class_mastering_metadata)).* =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) (cast(Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) null);
    return p;
}

ptr_12 :: (
    using class_uniq_ptr_impl_class_mastering_metadata_struct_default_delete_class_mastering_metadata: *Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> *Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer {
    return cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) (std_get_9(*t));
}

std_get_9 :: (
    t: *Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type) (std_get_helper_8(
        cast(*Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) ((cast(**Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *(t)).*)
    ));
}

std_get_helper_8 :: (
    t: *Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> **Mkvmuxer_Mastering_Metadata {
    return cast,no_check(**Mkvmuxer_Mastering_Metadata) (m_head_14(t));
}

m_head_14 :: (
    t: *Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> **Mkvmuxer_Mastering_Metadata {
    return cast,no_check(**Mkvmuxer_Mastering_Metadata) (m_head_15(
        cast(*Struct_Head_Base_0_Class_Mastering_Metadata) ((cast(**Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *(t)).*)
    ));
}

m_head_15 :: (b: *Struct_Head_Base_0_Class_Mastering_Metadata) -> **Mkvmuxer_Mastering_Metadata {
    return *b.head_impl;
}

set_chromaticity :: (
    using mastering_metadata: *Mkvmuxer_Mastering_Metadata,
    _r: *Mkvmuxer_Primary_Chromaticity,
    _g: *Mkvmuxer_Primary_Chromaticity,
    _b: *Mkvmuxer_Primary_Chromaticity,
    _white_point: *Mkvmuxer_Primary_Chromaticity
) -> bool {
    r_ptr: Primary_Chromaticity_Ptr_in_mkvmuxer = ---;
    defer deinit_74(*r_ptr);
    init_119(*r_ptr, cast(*void) 0);
    if _r != null {
        if !mkvmuxer_anonymous_namespace_copy_chromaticity(_r, *r_ptr) {
            return false;
        }
    }
    g_ptr: Primary_Chromaticity_Ptr_in_mkvmuxer = ---;
    defer deinit_74(*g_ptr);
    init_119(*g_ptr, cast(*void) 0);
    if _g != null {
        if !mkvmuxer_anonymous_namespace_copy_chromaticity(_g, *g_ptr) {
            return false;
        }
    }
    b_ptr: Primary_Chromaticity_Ptr_in_mkvmuxer = ---;
    defer deinit_74(*b_ptr);
    init_119(*b_ptr, cast(*void) 0);
    if _b != null {
        if !mkvmuxer_anonymous_namespace_copy_chromaticity(_b, *b_ptr) {
            return false;
        }
    }
    wp_ptr: Primary_Chromaticity_Ptr_in_mkvmuxer = ---;
    defer deinit_74(*wp_ptr);
    init_119(*wp_ptr, cast(*void) 0);
    if _white_point != null {
        if !mkvmuxer_anonymous_namespace_copy_chromaticity(_white_point, *wp_ptr) {
            return false;
        }
    }

    r = cast,no_check(*Mkvmuxer_Primary_Chromaticity) release(*r_ptr);
    g = cast,no_check(*Mkvmuxer_Primary_Chromaticity) release(*g_ptr);
    b = cast,no_check(*Mkvmuxer_Primary_Chromaticity) release(*b_ptr);
    white_point = cast,no_check(*Mkvmuxer_Primary_Chromaticity) release(*wp_ptr);
    return true;
}

release :: (
    using class_unique_ptr_class_primary_chromaticity: *Class_Unique_Ptr_Class_Primary_Chromaticity
) -> Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Pointer) (release(cast(*Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *t));
}

release :: (
    using class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer {
    p :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ptr_2(
            class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity
        )).*);
    (cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ptr_2(class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity)).* =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) (cast(Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) null);
    return p;
}

mkvmuxer_anonymous_namespace_copy_chromaticity :: (
    src: *Mkvmuxer_Primary_Chromaticity,
    dst: *Primary_Chromaticity_Ptr_in_mkvmuxer
) -> bool {
    if dst == null {
        return false;
    }

    reset(
        dst,
        (ifx true {
    cpp_transpiler_new_g88 :=
        cast,no_check(*Mkvmuxer_Primary_Chromaticity) (cast(*Mkvmuxer_Primary_Chromaticity) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Primary_Chromaticity)
        ));
    init_19(cpp_transpiler_new_g88, x(src), y(src));
    cpp_transpiler_new_g88;
})

    );
    if dst == null {
        return false;
    }

    return true;
}

get_pointer_5 :: (
    using class_unique_ptr_class_mastering_metadata: *Class_Unique_Ptr_Class_Mastering_Metadata
) -> Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Pointer) (get_5(class_unique_ptr_class_mastering_metadata));
}

get_5 :: (
    using class_unique_ptr_class_mastering_metadata: *Class_Unique_Ptr_Class_Mastering_Metadata
) -> Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Pointer) (ptr_13(cast(*Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *t));
}

ptr_13 :: (
    using class_uniq_ptr_impl_class_mastering_metadata_struct_default_delete_class_mastering_metadata: *Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer {
    return (cast(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type) std_get_10(*t)).*;
}

std_get_10 :: (
    t: *Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type) (std_get_helper_9(
        cast(*Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) ((cast(**Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *(t)).*)
    ));
}

std_get_helper_9 :: (
    t: *Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> **Mkvmuxer_Mastering_Metadata {
    return cast,no_check(**Mkvmuxer_Mastering_Metadata) (m_head_16(t));
}

m_head_16 :: (
    t: *Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> **Mkvmuxer_Mastering_Metadata {
    return cast,no_check(**Mkvmuxer_Mastering_Metadata) (m_head_17(
        cast(*Struct_Head_Base_0_Class_Mastering_Metadata) ((cast(**Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *(t)).*)
    ));
}

m_head_17 :: (b: *Struct_Head_Base_0_Class_Mastering_Metadata) -> **Mkvmuxer_Mastering_Metadata {
    return *b.head_impl;
}

set_luminance_min :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata, _luminance_min: float32) {
    luminance_min = _luminance_min;
}

set_luminance_max :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata, _luminance_max: float32) {
    luminance_max = _luminance_max;
}

operator_bool :: (using class_unique_ptr_class_mastering_metadata: *Class_Unique_Ptr_Class_Mastering_Metadata) -> bool {
    return ifx get_5(class_unique_ptr_class_mastering_metadata) == null then false else true;
}

operator_bool :: (using class_unique_ptr_class_colour: *Class_Unique_Ptr_Class_Colour) -> bool {
    return ifx get_4(class_unique_ptr_class_colour) == null then false else true;
}

get_deleter_3 :: (
    using class_unique_ptr_class_colour: *Class_Unique_Ptr_Class_Colour
) -> *Std_Unique_Ptr_Mkvmuxer_Colour_Deleter_Type {
    return cast,no_check(*Std_Unique_Ptr_Mkvmuxer_Colour_Deleter_Type) (deleter_3(cast(*Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour) *t));
}

deleter_3 :: (
    using class_uniq_ptr_impl_class_colour_struct_default_delete_class_colour: *Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour
) -> *Struct_Default_Delete_Class_Colour {
    return cast,no_check(*Struct_Default_Delete_Class_Colour) (std_get_11(*t));
}

std_get_11 :: (
    t: *Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour
) -> *Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type {
    return cast,no_check(*Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type) (std_get_helper_10(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Colour) ((cast(**Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour) *(t)).*)
    ));
}

std_get_helper_10 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Colour
) -> *Struct_Default_Delete_Class_Colour {
    return cast,no_check(*Struct_Default_Delete_Class_Colour) (m_head_18(t));
}

m_head_18 :: (t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Colour) -> *Struct_Default_Delete_Class_Colour {
    return cast,no_check(*Struct_Default_Delete_Class_Colour) (m_head_19(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Class_Colour) ((cast(**Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Colour) *(t)).*)
    ));
}

m_head_19 :: (b: *Struct_Head_Base_1_Struct_Default_Delete_Class_Colour) -> *Struct_Default_Delete_Class_Colour {
    return *b.head_impl;
}

call_6 :: (using struct_default_delete_class_colour: *Struct_Default_Delete_Class_Colour, ptr: *Mkvmuxer_Colour) {
    #assert true; // validated by the C++ frontend
    #assert true; // validated by the C++ frontend
    {
        cpp_transpiler_delete_g89 := cast,no_check(*Mkvmuxer_Colour) (ptr);
        if cpp_transpiler_delete_g89 != null {
            deinit_11(cpp_transpiler_delete_g89);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g89);
        }
    }
}

write :: (using projection: *Mkvmuxer_Projection, writer: *I_Mkv_Writer) -> bool {
    SIZE := payload_size(projection);

    if SIZE == 0 {
        return true;
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION, SIZE) {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_TYPE, cast,no_check(Uint64) type) {
        return false;
    }

    if private_data_length > 0 &&
        private_data != null &&
        !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_PRIVATE,
            private_data,
            private_data_length
        ) {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_POSE_YAW, pose_yaw) {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_POSE_PITCH, pose_pitch) {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_POSE_ROLL, pose_roll) {
        return false;
    }

    return true;
}

payload_size :: (using projection: *Mkvmuxer_Projection) -> u64 {
    size := mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION, cast,no_check(Uint64) type);

    if private_data_length > 0 && private_data != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_PRIVATE,
            private_data,
            private_data_length
        )), Uint64, Uint64);
    }

    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_POSE_YAW, pose_yaw)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_POSE_PITCH, pose_pitch)), Uint64, Uint64);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION_POSE_ROLL, pose_roll)), Uint64, Uint64);

    return size;
}

write :: (using colour: *Mkvmuxer_Colour, writer: *I_Mkv_Writer) -> bool {
    SIZE := payload_size(colour);

    if SIZE == 0 {
        return true;
    }

    if !valid(colour) {
        return false;
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_COLOUR, SIZE) {
        return false;
    }

    if matrix_coefficients != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_MATRIX_COEFFICIENTS, matrix_coefficients) {
        return false;
    }
    if bits_per_channel != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BITS_PER_CHANNEL, bits_per_channel) {
        return false;
    }
    if chroma_subsampling_horz != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_CHROMA_SUBSAMPLING_HORZ,
            chroma_subsampling_horz
        ) {
        return false;
    }
    if chroma_subsampling_vert != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_CHROMA_SUBSAMPLING_VERT,
            chroma_subsampling_vert
        ) {
        return false;
    }

    if cb_subsampling_horz != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CB_SUBSAMPLING_HORZ, cb_subsampling_horz) {
        return false;
    }
    if cb_subsampling_vert != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CB_SUBSAMPLING_VERT, cb_subsampling_vert) {
        return false;
    }
    if chroma_siting_horz != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHROMA_SITING_HORZ, chroma_siting_horz) {
        return false;
    }
    if chroma_siting_vert != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHROMA_SITING_VERT, chroma_siting_vert) {
        return false;
    }
    if range != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_RANGE, range) {
        return false;
    }
    if transfer_characteristics != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_TRANSFER_CHARACTERISTICS,
            transfer_characteristics
        ) {
        return false;
    }
    if primaries != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PRIMARIES, primaries) {
        return false;
    }
    if max_cll != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_MAX_CLL, max_cll) {
        return false;
    }
    if max_fall != cast(u64) 18446744073709551615 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_MAX_FALL, max_fall) {
        return false;
    }

    if mastering_metadata != null && !write(mastering_metadata, writer) {
        return false;
    }

    return true;
}

write :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata, writer: *I_Mkv_Writer) -> bool {
    SIZE := payload_size(mastering_metadata);

    if SIZE == 0 {
        return true;
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_MASTERING_METADATA, SIZE) {
        return false;
    }
    if c_transpiler_float_not_equal(luminance_max, cast(float32) 3.4028234663852887e38) &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_LUMINANCE_MAX, luminance_max) {
        return false;
    }
    if c_transpiler_float_not_equal(luminance_min, cast(float32) 3.4028234663852887e38) &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_LUMINANCE_MIN, luminance_min) {
        return false;
    }
    if r != null && !write(r, writer, LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_X, LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_Y) {
        return false;
    }
    if g != null && !write(g, writer, LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_X, LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_Y) {
        return false;
    }
    if b != null && !write(b, writer, LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_X, LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_Y) {
        return false;
    }
    if white_point != null &&
        !write(white_point, writer, LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_X, LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_Y) {
        return false;
    }

    return true;
}

write :: (
    using primary_chromaticity: *Mkvmuxer_Primary_Chromaticity,
    writer: *I_Mkv_Writer,
    x_id: Mkv_Id,
    y_id: Mkv_Id
) -> bool {
    if !valid(primary_chromaticity) {
        return false;
    }
    return mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) x_id, x) && mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) y_id, y);
}

valid :: (using primary_chromaticity: *Mkvmuxer_Primary_Chromaticity) -> bool {
    return c_transpiler_float_greater_equal(x, 0.0) && c_transpiler_float_less_equal(x, 1.0) && c_transpiler_float_greater_equal(y, 0.0) && c_transpiler_float_less_equal(y, 1.0);
}

payload_size :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> u64 {
    size: u64 = 0;

    if c_transpiler_float_not_equal(luminance_max, cast(float32) 3.4028234663852887e38) {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_LUMINANCE_MAX, luminance_max)), Uint64, Uint64);
    }
    if c_transpiler_float_not_equal(luminance_min, cast(float32) 3.4028234663852887e38) {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_LUMINANCE_MIN, luminance_min)), Uint64, Uint64);
    }

    if r != null {
        size +=
            primary_chromaticity_size(
                r,
                LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_X,
                LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_Y
            );
    }
    if g != null {
        size +=
            primary_chromaticity_size(
                g,
                LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_X,
                LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_Y
            );
    }
    if b != null {
        size +=
            primary_chromaticity_size(
                b,
                LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_X,
                LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_Y
            );
    }
    if white_point != null {
        size +=
            primary_chromaticity_size(
                white_point,
                LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_X,
                LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_Y
            );
    }

    return size;
}

primary_chromaticity_size :: (
    using primary_chromaticity: *Mkvmuxer_Primary_Chromaticity,
    x_id: Mkv_Id,
    y_id: Mkv_Id
) -> u64 {
    return (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) x_id, x) + mkvmuxer_EbmlElementSize(cast,no_check(Uint64) y_id, y));
}

payload_size :: (using colour: *Mkvmuxer_Colour) -> u64 {
    size: u64 = 0;

    if matrix_coefficients != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_MATRIX_COEFFICIENTS, matrix_coefficients)), Uint64, Uint64);
    }
    if bits_per_channel != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BITS_PER_CHANNEL, bits_per_channel)), Uint64, Uint64);
    }
    if chroma_subsampling_horz != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHROMA_SUBSAMPLING_HORZ, chroma_subsampling_horz)), Uint64, Uint64);
    }
    if chroma_subsampling_vert != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHROMA_SUBSAMPLING_VERT, chroma_subsampling_vert)), Uint64, Uint64);
    }
    if cb_subsampling_horz != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CB_SUBSAMPLING_HORZ, cb_subsampling_horz)), Uint64, Uint64);
    }
    if cb_subsampling_vert != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CB_SUBSAMPLING_VERT, cb_subsampling_vert)), Uint64, Uint64);
    }
    if chroma_siting_horz != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHROMA_SITING_HORZ, chroma_siting_horz)), Uint64, Uint64);
    }
    if chroma_siting_vert != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHROMA_SITING_VERT, chroma_siting_vert)), Uint64, Uint64);
    }
    if range != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_RANGE, range)), Uint64, Uint64);
    }
    if transfer_characteristics != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_TRANSFER_CHARACTERISTICS, transfer_characteristics)), Uint64, Uint64);
    }
    if primaries != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PRIMARIES, primaries)), Uint64, Uint64);
    }
    if max_cll != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_MAX_CLL, max_cll)), Uint64, Uint64);
    }
    if max_fall != cast(u64) 18446744073709551615 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_MAX_FALL, max_fall)), Uint64, Uint64);
    }

    if mastering_metadata != null {
        size += mastering_metadata_size(mastering_metadata);
    }

    return size;
}

mastering_metadata_size :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> u64 {
    size := payload_size(mastering_metadata);

    if size > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_MASTERING_METADATA, size)), Uint64, Uint64);
    }

    return size;
}

valid :: (using colour: *Mkvmuxer_Colour) -> bool {
    if mastering_metadata != null && !valid(mastering_metadata) {
        return false;
    }
    if matrix_coefficients != cast(u64) 18446744073709551615 && !mkvmuxer_IsMatrixCoefficientsValueValid(matrix_coefficients) {
        return false;
    }
    if chroma_siting_horz != cast(u64) 18446744073709551615 && !mkvmuxer_IsChromaSitingHorzValueValid(chroma_siting_horz) {
        return false;
    }
    if chroma_siting_vert != cast(u64) 18446744073709551615 && !mkvmuxer_IsChromaSitingVertValueValid(chroma_siting_vert) {
        return false;
    }
    if range != cast(u64) 18446744073709551615 && !mkvmuxer_IsColourRangeValueValid(range) {
        return false;
    }
    if transfer_characteristics != cast(u64) 18446744073709551615 &&
        !mkvmuxer_IsTransferCharacteristicsValueValid(transfer_characteristics) {
        return false;
    }
    if primaries != cast(u64) 18446744073709551615 && !mkvmuxer_IsPrimariesValueValid(primaries) {
        return false;
    }

    return true;
}

valid :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> bool {
    if c_transpiler_float_not_equal(luminance_min, cast(float32) 3.4028234663852887e38) {
        if c_transpiler_float_less(luminance_min, 0.0) ||
            c_transpiler_float_greater(luminance_min, cast(float32) 999.989990234375) ||
            c_transpiler_float_greater(luminance_min, luminance_max) {
            return false;
        }
    }
    if c_transpiler_float_not_equal(luminance_max, cast(float32) 3.4028234663852887e38) {
        if c_transpiler_float_less(luminance_max, 0.0) ||
            c_transpiler_float_greater(luminance_max, cast(float32) 9999.990234375) ||
            c_transpiler_float_less(luminance_max, luminance_min) {
            return false;
        }
    }
    if r != null && !valid(r) {
        return false;
    }
    if g != null && !valid(g) {
        return false;
    }
    if b != null && !valid(b) {
        return false;
    }
    if white_point != null && !valid(white_point) {
        return false;
    }

    return true;
}

video_payload_size :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    size :=
        mkvmuxer_EbmlElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_WIDTH,
            (ifx pixel_width > 0 then pixel_width else width)
        );
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(
        cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_HEIGHT,
        (ifx pixel_height > 0 then pixel_height else height)
    )), Uint64, Uint64);
    if display_width > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DISPLAY_WIDTH, display_width)), Uint64, Uint64);
    }
    if display_height > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_DISPLAY_HEIGHT, display_height)), Uint64, Uint64);
    }
    if crop_left > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_CROP_LEFT, crop_left)), Uint64, Uint64);
    }
    if crop_right > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_CROP_RIGHT, crop_right)), Uint64, Uint64);
    }
    if crop_top > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_CROP_TOP, crop_top)), Uint64, Uint64);
    }
    if crop_bottom > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_CROP_BOTTOM, crop_bottom)), Uint64, Uint64);
    }
    if stereo_mode > cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_MONO {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_STEREO_MODE, stereo_mode)), Uint64, Uint64);
    }
    if alpha_mode > cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_NO_ALPHA {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_ALPHA_MODE, alpha_mode)), Uint64, Uint64);
    }
    if c_transpiler_float_greater(frame_rate, 0.0) {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_FRAME_RATE, cast,no_check(float32) frame_rate)), Uint64, Uint64);
    }
    if colour_space != null {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_COLOUR_SPACE, colour_space)), Uint64, Uint64);
    }
    if colour != null {
        size += colour_size(colour);
    }
    if projection != null {
        size += projection_size(projection);
    }

    return size;
}

projection_size :: (using projection: *Mkvmuxer_Projection) -> u64 {
    size := payload_size(projection);

    if size > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_PROJECTION, size)), Uint64, Uint64);
    }

    return size;
}

colour_size :: (using colour: *Mkvmuxer_Colour) -> u64 {
    size := payload_size(colour);

    if size > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_COLOUR, size)), Uint64, Uint64);
    }

    return size;
}

get_deleter_4 :: (
    using class_unique_ptr_class_mastering_metadata: *Class_Unique_Ptr_Class_Mastering_Metadata
) -> *Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Deleter_Type {
    return cast,no_check(*Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Deleter_Type) (deleter_4(cast(*Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *t));
}

deleter_4 :: (
    using class_uniq_ptr_impl_class_mastering_metadata_struct_default_delete_class_mastering_metadata: *Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> *Struct_Default_Delete_Class_Mastering_Metadata {
    return cast,no_check(*Struct_Default_Delete_Class_Mastering_Metadata) (std_get_12(*t));
}

std_get_12 :: (
    t: *Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) -> *Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type {
    return cast,no_check(*Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type) (std_get_helper_11(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Mastering_Metadata) ((cast(**Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *(t)).*)
    ));
}

std_get_helper_11 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Mastering_Metadata
) -> *Struct_Default_Delete_Class_Mastering_Metadata {
    return cast,no_check(*Struct_Default_Delete_Class_Mastering_Metadata) (m_head_20(t));
}

m_head_20 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Mastering_Metadata
) -> *Struct_Default_Delete_Class_Mastering_Metadata {
    return cast,no_check(*Struct_Default_Delete_Class_Mastering_Metadata) (m_head_21(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Class_Mastering_Metadata) ((cast(**Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Mastering_Metadata) *(t)).*)
    ));
}

m_head_21 :: (
    b: *Struct_Head_Base_1_Struct_Default_Delete_Class_Mastering_Metadata
) -> *Struct_Default_Delete_Class_Mastering_Metadata {
    return *b.head_impl;
}

call_7 :: (
    using struct_default_delete_class_mastering_metadata: *Struct_Default_Delete_Class_Mastering_Metadata,
    ptr: *Mkvmuxer_Mastering_Metadata
) {
    #assert true; // validated by the C++ frontend
    #assert true; // validated by the C++ frontend
    {
        cpp_transpiler_delete_g90 := cast,no_check(*Mkvmuxer_Mastering_Metadata) (ptr);
        if cpp_transpiler_delete_g90 != null {
            deinit_10(cpp_transpiler_delete_g90);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g90);
        }
    }
}

write :: (using block_addition_mapping: *Block_Addition_Mapping, writer: *I_Mkv_Writer) -> bool {
    SIZE := size_6(block_addition_mapping);
    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlMasterElement(
        writer,
        cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADDITION_MAPPING,
        payload_size(block_addition_mapping)
    ) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID_VALUE, value) {
        return false;
    }
    if name != null && !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID_NAME, name) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID_TYPE, type) {
        return false;
    }
    if extra_data != null &&
        !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID_EXTRA_DATA,
            extra_data,
            extra_data_size
        ) {
        return false;
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 || STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) SIZE {
        return false;
    }

    return true;
}

size_6 :: (using block_addition_mapping: *Block_Addition_Mapping) -> u64 {
    PAYLOAD_SIZE := payload_size(block_addition_mapping);
    return (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADDITION_MAPPING, PAYLOAD_SIZE) + PAYLOAD_SIZE);
}

payload_size :: (using block_addition_mapping: *Block_Addition_Mapping) -> u64 {
    return (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID_VALUE, value) + (ifx name != null then mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID_NAME, name) else 0) + mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID_TYPE, type) + (ifx extra_data != null then mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID_EXTRA_DATA, extra_data, extra_data_size) else 0));
}

multiply_5 :: inline (
    using class_normal_iterator_const_class_block_addition_mapping_class_vector_class_block_addition_mapping: *Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping
) -> Gnu_Cxx_Normal_Iterator_Const_Mkvmuxer_Block_Addition_Mapping_Std_Vector_Mkvmuxer_Block_Addition_Mapping_Reference {
    return current;
}

increment_5 :: inline (
    using class_normal_iterator_const_class_block_addition_mapping_class_vector_class_block_addition_mapping: *Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping
) -> *Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping {
    current += 1;
    return class_normal_iterator_const_class_block_addition_mapping_class_vector_class_block_addition_mapping;
}

base :: inline (
    using class_normal_iterator_const_class_block_addition_mapping_class_vector_class_block_addition_mapping: *Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping
) -> **Block_Addition_Mapping {
    return *current;
}

emplace_back :: (
    using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping,
    args: *u64,
    args_value_inner_inner_inner: **s8,
    args_value_inner_inner: *u64,
    args_value_inner: **u8,
    args_value: *u64
) {
    if ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).finish != ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).end_of_storage {
        construct_16(
            cast(*Class_Allocator_Class_Block_Addition_Mapping) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl)),
            ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).finish,
            args,
            args_value_inner_inner_inner,
            args_value_inner_inner,
            args_value_inner,
            args_value
        );
        ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).finish += 1;
    } else {
        realloc_append(
            class_vector_class_block_addition_mapping,
            args,
            args_value_inner_inner_inner,
            args_value_inner_inner,
            args_value_inner,
            args_value
        );
    }
}

realloc_append :: (
    using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping,
    args: *u64,
    args_value_inner_inner_inner: **s8,
    args_value_inner_inner: *u64,
    args_value_inner: **u8,
    args_value: *u64
) {
    LEN :=
        check_len(
            class_vector_class_block_addition_mapping,
            1,
            c_string("vector::_M_realloc_append")
        );
    if LEN <= 0 {
        c_transpiler_unreachable();
    }
    old_start :=
        cast,no_check(Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer) (((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).start);
    old_finish :=
        cast,no_check(Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer) (((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).finish);
    ELEMS := size_12(class_vector_class_block_addition_mapping);
    new_start :=
        cast,no_check(Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer) (allocate_8(
            cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping,
            LEN
        ));
    new_finish := cast,no_check(Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer) (new_start);

    {
        guard: Struct_Vector_Class_Block_Addition_Mapping_Guard_Alloc = ---;
        defer deinit_84(*guard);
        init_147(
            *guard,
            new_start,
            LEN,
            cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping
        );

        construct_16(
            cast(*Class_Allocator_Class_Block_Addition_Mapping) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl)),
            std_to_address(new_start + ELEMS),
            args,
            args_value_inner_inner_inner,
            args_value_inner_inner,
            args_value_inner,
            args_value
        );

        new_finish =
            cast,no_check(Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer) std_relocate_a(
                old_start,
                old_finish,
                new_start,
                get_tp_allocator_3(
                cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping
            )
            );
        new_finish += 1;
        guard.storage = cast,no_check(Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer) (old_start);
        guard.len =
            cast,no_check(Std_Vector_Size_Type) (((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).end_of_storage -
                old_start);
    }

    assignment_12: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer =
        cast,no_check(Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) (new_start);
    ((cast,no_check(*Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) *(((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).start)).*) = assignment_12;
    assignment_13: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer =
        cast,no_check(Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) (new_finish);
    ((cast,no_check(*Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) *(((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).finish)).*) = assignment_13;
    assignment_14: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer =
        cast,no_check(Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) ((new_start +
            LEN));
    ((cast,no_check(*Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) *(((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).end_of_storage)).*) = assignment_14;
}

get_tp_allocator_3 :: (
    using struct_vector_base_class_block_addition_mapping_class_allocator_class_block_addition_mapping: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping
) -> *Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Tp_Alloc_Type {
    return cast(*Class_Allocator_Class_Block_Addition_Mapping) *impl;
}

std_relocate_a :: (
    first: *Block_Addition_Mapping,
    last: *Block_Addition_Mapping,
    result: *Block_Addition_Mapping,
    alloc_: *Class_Allocator_Class_Block_Addition_Mapping
) -> *Block_Addition_Mapping {
    return cast,no_check(*Block_Addition_Mapping) (std_relocate_a_1(std_niter_base_3(first), std_niter_base_3(last), std_niter_base_3(result), alloc_));
}

std_niter_base_3 :: inline (it_: *Block_Addition_Mapping) -> *Block_Addition_Mapping {
    return it_;
}

std_relocate_a_1 :: (
    first: *Block_Addition_Mapping,
    last: *Block_Addition_Mapping,
    result: *Block_Addition_Mapping,
    alloc_: *Class_Allocator_Class_Block_Addition_Mapping
) -> *Block_Addition_Mapping {
    #assert true; // validated by the C++ frontend
    cur := cast,no_check(*Block_Addition_Mapping) (result);
    while first != last {
        std_relocate_object_a(cur, first, alloc_);
        first += 1;
        cur += 1;
    }
    return cur;
}

std_relocate_object_a :: (
    dest: *Block_Addition_Mapping,
    orig: *Block_Addition_Mapping,
    alloc_: *Class_Allocator_Class_Block_Addition_Mapping
) {
    construct_14(alloc_, dest, orig);
    destroy_10(alloc_, orig);
}

destroy_10 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Allocator_Type,
    p: *Block_Addition_Mapping
) {
    destroy_11(
        cast(*Class_New_Allocator_Class_Block_Addition_Mapping) ((cast(**Class_Allocator_Class_Block_Addition_Mapping) *(a)).*),
        p
    );
}

destroy_11 :: inline (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping,
    p: *Block_Addition_Mapping
) {
    deinit_8(p);
}

deinit_8 :: (using block_addition_mapping: *Block_Addition_Mapping) {
    {
        cpp_transpiler_delete_g91 := cast,no_check(*s8) (name);
        if cpp_transpiler_delete_g91 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g91);
        }
    }
    {
        cpp_transpiler_delete_g92 := cast,no_check(*u8) (extra_data);
        if cpp_transpiler_delete_g92 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g92);
        }
    }
}

construct_14 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Allocator_Type,
    p: *Block_Addition_Mapping,
    args: *Block_Addition_Mapping
) {
    construct_15(
        cast(*Class_New_Allocator_Class_Block_Addition_Mapping) ((cast(**Class_Allocator_Class_Block_Addition_Mapping) *(a)).*),
        p,
        args
    );
}

construct_15 :: inline (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping,
    p: *Block_Addition_Mapping,
    args: *Block_Addition_Mapping
) {
    (ifx true {
    cpp_transpiler_new_g93 := cast,no_check(*Block_Addition_Mapping) (cast(*Block_Addition_Mapping) cast(*void) p);
    cpp_transpiler_new_g93.* = ((cast(**Block_Addition_Mapping) *(args)).*).*;
    cpp_transpiler_new_g93;
})
;
}

class_vector_class_block_addition_mapping_use_relocate :: () -> bool {
    return class_vector_class_block_addition_mapping_nothrow_relocate(
        (cast(*Struct_Std_Integral_Constant_Bool_True) (*(Struct_Is_Move_Insertable_Class_Allocator_Class_Block_Addition_Mapping.{}))).*
    );
}

class_vector_class_block_addition_mapping_nothrow_relocate :: (unnamed_25156: True_Type) -> bool {
    return true;
}

std_to_address :: inline (ptr: *Block_Addition_Mapping) -> *Block_Addition_Mapping {
    #assert true; // validated by the C++ frontend
    return ptr;
}

construct_16 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Allocator_Type,
    p: *Block_Addition_Mapping,
    args: *u64,
    args_value_inner_inner_inner: **s8,
    args_value_inner_inner: *u64,
    args_value_inner: **u8,
    args_value: *u64
) {
    construct_17(
        cast(*Class_New_Allocator_Class_Block_Addition_Mapping) ((cast(**Class_Allocator_Class_Block_Addition_Mapping) *(a)).*),
        p,
        args,
        args_value_inner_inner_inner,
        args_value_inner_inner,
        args_value_inner,
        args_value
    );
}

construct_17 :: inline (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping,
    p: *Block_Addition_Mapping,
    args: *u64,
    args_value_inner_inner_inner: **s8,
    args_value_inner_inner: *u64,
    args_value_inner: **u8,
    args_value: *u64
) {
    (ifx true {
    cpp_transpiler_new_g94 := cast,no_check(*Block_Addition_Mapping) (cast(*Block_Addition_Mapping) cast(*void) p);
    init_17(
        cpp_transpiler_new_g94,
        ((cast(**u64) *(args)).*).*,
        (cast(**s8) args_value_inner_inner_inner).*,
        ((cast(**u64) *(args_value_inner_inner)).*).*,
        (cast(**u8) args_value_inner).*,
        ((cast(**u64) *(args_value)).*).*
    );
    cpp_transpiler_new_g94;
})
;
}

deallocate_11 :: (
    using struct_vector_base_class_block_addition_mapping_class_allocator_class_block_addition_mapping: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping,
    p: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer,
    n: u64
) {
    if p != null {
        deallocate_12(cast(*Class_Allocator_Class_Block_Addition_Mapping) *impl, p, n);
    }
}

deallocate_12 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Allocator_Type,
    p: Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) {
    deallocate_13(
        cast(*Class_New_Allocator_Class_Block_Addition_Mapping) ((cast(**Class_Allocator_Class_Block_Addition_Mapping) *(a)).*),
        p,
        n
    );
}

deallocate_13 :: (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping,
    p: *Block_Addition_Mapping,
    n: Std_New_Allocator_Size_Type
) {
    c_transpiler_cpp_operator_delete(cast(*void) p);
}

begin_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903 {
    begin: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002) ((((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(
            cast(*void) *impl,
            8
        )).*).header).parent);
    return ifx begin != null then cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (node_ptr(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) cpp_transpiler_base_to_derived(cast(*void) begin, 0)
    )) else cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (null);
}

node_ptr :: (
    using struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long
) -> *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long {
    return struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long;
}

erase :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903
) {
    while x != null {
        erase(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
            right(x)
        );
        y :=
            cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903) (left(
                x
            ));
        drop_node(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
            x
        );
        x =
            cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903) (y);
    }
}

left :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903 {
    return ifx (((cast(*Rb_Tree_Node_Base) x).left) != null) then cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (node_ptr(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) cpp_transpiler_base_to_derived(cast(*void) (cast(*Rb_Tree_Node_Base) x).left, 0)
    )) else cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (null);
}

right :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903 {
    return ifx (((cast(*Rb_Tree_Node_Base) x).right) != null) then cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (node_ptr(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) cpp_transpiler_base_to_derived(cast(*void) (cast(*Rb_Tree_Node_Base) x).right, 0)
    )) else cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long) (null);
}

begin_node :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891 {
    begin: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646) ((((cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(
            cast(*void) *impl,
            8
        )).*).header).parent);
    return ifx begin != null then cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (node_ptr(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) cpp_transpiler_base_to_derived(cast(*void) begin, 0)
    )) else cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (null);
}

erase :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891
) {
    while x != null {
        erase(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            right(x)
        );
        y :=
            cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) (left(
                x
            ));
        drop_node(
            class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
            x
        );
        x =
            cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) (y);
    }
}

left :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891 {
    return ifx (((cast(*Rb_Tree_Node_Base) x).left) != null) then cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (node_ptr(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) cpp_transpiler_base_to_derived(cast(*void) (cast(*Rb_Tree_Node_Base) x).left, 0)
    )) else cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (null);
}

right :: (
    x: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891
) -> Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891 {
    return ifx (((cast(*Rb_Tree_Node_Base) x).right) != null) then cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (node_ptr(
        cast(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) cpp_transpiler_base_to_derived(cast(*void) (cast(*Rb_Tree_Node_Base) x).right, 0)
    )) else cast,no_check(*Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame) (null);
}

clear_12 :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame
) {
    cur := cast,no_check(Std_Detail_List_Node_Base_Base_Ptr) (((cast(*List_Node_Base) *impl.node).*).next);
    while cur != base(*impl.node) {
        tmp: *Node_in_list =
            cast,no_check(*Node_in_list) (cast(*Struct_List_Node_Class_Frame) cpp_transpiler_base_to_derived(
                cast(*void) cur,
                0
            ));
        cur =
            cast,no_check(Std_Detail_List_Node_Base_Base_Ptr) (((cast(*List_Node_Base) ((cast(**Struct_List_Node_Class_Frame) *(tmp)).*)).*).next);
        destroy_node(class_list_base_class_frame_class_allocator_class_frame, node_ptr(tmp));
    }
}

reset_2 :: (using rb_tree_header: *Rb_Tree_Header) {
    header.parent = cast,no_check(Std_Rb_Tree_Node_Base_Base_Ptr) (cast(Std_Rb_Tree_Node_Base_Base_Ptr) null);
    header.left = cast,no_check(Std_Rb_Tree_Node_Base_Base_Ptr) *header;
    header.right = cast,no_check(Std_Rb_Tree_Node_Base_Base_Ptr) *header;
    node_count = 0;
}

not_equal :: inline (
    lhs: *Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping,
    rhs: *Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping
) -> bool {
    return (cast(**Block_Addition_Mapping) base(lhs)).* != (cast(**Block_Addition_Mapping) base(rhs)).*;
}

std_get_13 :: (t: *Class_Tuple_Unsigned_Long) -> *u64 {
    return cast,no_check(*u64) (std_get_helper_12(cast(*Struct_Tuple_Impl_0_Unsigned_Long) ((cast(**Class_Tuple_Unsigned_Long) *(t)).*)));
}

std_get_helper_12 :: (t: *Struct_Tuple_Impl_0_Unsigned_Long) -> *u64 {
    return cast,no_check(*u64) (m_head_22(t));
}

m_head_22 :: (t: *Struct_Tuple_Impl_0_Unsigned_Long) -> *u64 {
    return cast,no_check(*u64) (m_head_23(cast(*Struct_Head_Base_0_Unsigned_Long) ((cast(**Struct_Tuple_Impl_0_Unsigned_Long) *(t)).*)));
}

m_head_23 :: (b: *Struct_Head_Base_0_Unsigned_Long) -> *u64 {
    return (cast(**u64) *(b.head_impl)).*;
}

std_get_14 :: (t: *Class_Tuple_Const_Unsigned_Long) -> *u64 {
    return cast,no_check(*u64) (std_get_helper_13(cast(*Struct_Tuple_Impl_0_Const_Unsigned_Long) ((cast(**Class_Tuple_Const_Unsigned_Long) *(t)).*)));
}

std_get_helper_13 :: (t: *Struct_Tuple_Impl_0_Const_Unsigned_Long) -> *u64 {
    return cast,no_check(*u64) (m_head_24(t));
}

m_head_24 :: (t: *Struct_Tuple_Impl_0_Const_Unsigned_Long) -> *u64 {
    return cast,no_check(*u64) (m_head_25(cast(*Struct_Head_Base_0_Const_Unsigned_Long) ((cast(**Struct_Tuple_Impl_0_Const_Unsigned_Long) *(t)).*)));
}

m_head_25 :: (b: *Struct_Head_Base_0_Const_Unsigned_Long) -> *u64 {
    return (cast(**u64) *(b.head_impl)).*;
}

init_4 :: (using i_mkv_writer: *I_Mkv_Writer) {
    cpp_transpiler_dynamic_type_IMkvWriter = 2;
}

deinit_2 :: (using i_mkv_writer: *I_Mkv_Writer) {
    cpp_transpiler_dynamic_type_IMkvWriter = 2;
}

init_6 :: (using _frame: *Frame) {
    add_id = 0;
    additional = cast,no_check(*u8) (cast(*u8) null);
    additional_length = 0;
    duration = 0;
    duration_set = false;
    frame = cast,no_check(*u8) (cast(*u8) null);
    is_key = false;
    length = 0;
    track_number = 0;
    timestamp = 0;
    discard_padding = 0;
    reference_block_timestamp = 0;
    reference_block_timestamp_set = false;
}

deinit_3 :: (using _frame: *Frame) {
    {
        cpp_transpiler_delete_g95 := cast,no_check(*u8) (frame);
        if cpp_transpiler_delete_g95 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g95);
        }
    }
    {
        cpp_transpiler_delete_g96 := cast,no_check(*u8) (additional);
        if cpp_transpiler_delete_g96 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g96);
        }
    }
}

init_9 :: (using cue_point: *Mkvmuxer_Cue_Point) {
    time = 0;
    track = 0;
    cluster_pos = 0;
    block_number = 1;
    output_block_number = true;
}

deinit_4 :: (using cue_point: *Mkvmuxer_Cue_Point) {
}

init_11 :: (using cues: *Mkvmuxer_Cues) {
    cue_entries_capacity = 0;
    cue_entries_size = 0;
    cue_entries = cast,no_check(**Mkvmuxer_Cue_Point) (cast(**Mkvmuxer_Cue_Point) null);
    output_block_number = true;
}

deinit_5 :: (using cues: *Mkvmuxer_Cues) {
    if cue_entries != null {
        {
            i: s32 = 0;
            while i < cue_entries_size {
                CUE := cast,no_check(*Mkvmuxer_Cue_Point) (cue_entries[i]);
                {
                    cpp_transpiler_delete_g97 := cast,no_check(*Mkvmuxer_Cue_Point) (CUE);
                    if cpp_transpiler_delete_g97 != null {
                        deinit_4(cpp_transpiler_delete_g97);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g97);
                    }
                }
                i += 1;
            }
        }
        {
            cpp_transpiler_delete_g98 := cast,no_check(**Mkvmuxer_Cue_Point) (cue_entries);
            if cpp_transpiler_delete_g98 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g98);
            }
        }
    }
}

init_13 :: (using content_enc_aes_settings: *Content_Enc_AES_Settings) {
    cipher_mode = cast,no_check(u64) MKVMUXER_CONTENT_ENC_AES_SETTINGS_K_CTR;
}

init_15 :: (using content_encoding: *Mkvmuxer_Content_Encoding) {
    enc_algo = 5;
    enc_key_id = cast,no_check(*u8) (cast(*u8) null);
    encoding_order = 0;
    encoding_scope = 1;
    encoding_type = 1;
    init_13(*enc_aes_settings);

    enc_key_id_length = 0;
}

deinit_7 :: (using content_encoding: *Mkvmuxer_Content_Encoding) {
    cpp_transpiler_subobject_cleanup_g99: bool = ---;
    defer deinit_6(*enc_aes_settings);
    {
        cpp_transpiler_delete_g100 := cast,no_check(*u8) (enc_key_id);
        if cpp_transpiler_delete_g100 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g100);
        }
    }
}

set_encryption_id :: (using content_encoding: *Mkvmuxer_Content_Encoding, id: *u8, length: u64) -> bool {
    if id == null || length < 1 {
        return false;
    }

    {
        cpp_transpiler_delete_g101 := cast,no_check(*u8) (enc_key_id);
        if cpp_transpiler_delete_g101 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g101);
        }
    }

    enc_key_id = cast,no_check(*u8) (cast(*u8) cpp_transpiler_allocate_array_raw(length, size_of(u8)));
    if enc_key_id == null {
        return false;
    }

    copy_memory(enc_key_id, id, length);
    enc_key_id_length = length;

    return true;
}

init_17 :: (
    using block_addition_mapping: *Block_Addition_Mapping,
    _value: u64,
    _name: *s8,
    _type: u64,
    _extra_data: *Uint8,
    _extra_data_size: u64
) {
    value = _value;
    type = _type;
    extra_data_size = _extra_data_size;
    if _name != null {
        LENGTH := cstring_length(_name) + 1;
        temp_str := cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(LENGTH, size_of(s8)));
        if temp_str == null {
            return;
        }

        copy_memory(temp_str, _name, LENGTH - 1);
        temp_str[LENGTH - 1] = 0;

        name = cast,no_check(*s8) (temp_str);
    } else {
        name = cast,no_check(*s8) (cast(*s8) null);
    }
    if _extra_data != null && extra_data_size != 0 {
        temp := cast,no_check(*u8) (cast(*u8) cpp_transpiler_allocate_array_raw(_extra_data_size, size_of(u8)));
        if temp == null {
            return;
        }
        copy_memory(temp, _extra_data, _extra_data_size);
        extra_data = cast,no_check(*u8) (temp);
    } else {
        extra_data = cast,no_check(*u8) (cast(*u8) null);
        extra_data_size = 0;
    }
}

init_24 :: (using track: *Mkvmuxer_Track, seed: *u32) {
    cpp_transpiler_dynamic_type_Track = 3;
    codec_id = cast,no_check(*s8) (cast(*s8) null);
    codec_private = cast,no_check(*u8) (cast(*u8) null);
    language = cast,no_check(*s8) (cast(*s8) null);
    max_block_additional_id = 0;
    name = cast,no_check(*s8) (cast(*s8) null);
    number = 0;
    type = 0;
    uid = mkvmuxer_MakeUID(seed);
    codec_delay = 0;
    seek_pre_roll = 0;
    default_duration = 0;
    codec_private_length = 0;
    content_encoding_entries = cast,no_check(**Mkvmuxer_Content_Encoding) (cast(**Mkvmuxer_Content_Encoding) null);
    content_encoding_entries_size = 0;
    init_127(*block_addition_mappings);
}

init_127 :: (using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping) {
    init_128(
        cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping
    );
}

init_128 :: (
    using struct_vector_base_class_block_addition_mapping_class_allocator_class_block_addition_mapping: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping
) {
    init_129(*impl);
}

init_129 :: (
    using vector_impl: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl
) {
    init_130(cast(*Class_Allocator_Class_Block_Addition_Mapping) vector_impl);
    make_struct_std_vector_base_class_mkvmuxer_block_addition_mapping_class_std_allocator_cl_h9099884678608267500(
        cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) vector_impl
    );
}

init_130 :: inline (using class_allocator_class_block_addition_mapping: *Class_Allocator_Class_Block_Addition_Mapping) {
    init_131(cast(*Class_New_Allocator_Class_Block_Addition_Mapping) class_allocator_class_block_addition_mapping);
}

init_131 :: inline (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping
) {
}

make_struct_std_vector_base_class_mkvmuxer_block_addition_mapping_class_std_allocator_cl_h9099884678608267500 :: (
    result: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data
) {
    result.start =
        cast,no_check(Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) (null);
    result.finish =
        cast,no_check(Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) (null);
    result.end_of_storage =
        cast,no_check(Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer) (null);
}

deinit_13 :: (using track: *Mkvmuxer_Track) {
    cpp_transpiler_dynamic_type_Track = 3;
    cpp_transpiler_subobject_cleanup_g102: bool = ---;
    defer deinit_14(*block_addition_mappings);
    {
        cpp_transpiler_delete_g103 := cast,no_check(*s8) (codec_id);
        if cpp_transpiler_delete_g103 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g103);
        }
    }
    {
        cpp_transpiler_delete_g104 := cast,no_check(*u8) (codec_private);
        if cpp_transpiler_delete_g104 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g104);
        }
    }
    {
        cpp_transpiler_delete_g105 := cast,no_check(*s8) (language);
        if cpp_transpiler_delete_g105 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g105);
        }
    }
    {
        cpp_transpiler_delete_g106 := cast,no_check(*s8) (name);
        if cpp_transpiler_delete_g106 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g106);
        }
    }

    if content_encoding_entries != null {
        {
            i: u32 = 0;
            while i < content_encoding_entries_size {
                ENCODING := cast,no_check(*Mkvmuxer_Content_Encoding) (content_encoding_entries[i]);
                {
                    cpp_transpiler_delete_g107 := cast,no_check(*Mkvmuxer_Content_Encoding) (ENCODING);
                    if cpp_transpiler_delete_g107 != null {
                        deinit_7(cpp_transpiler_delete_g107);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g107);
                    }
                }
                i += 1;
            }
        }
        {
            cpp_transpiler_delete_g108 := cast,no_check(**Mkvmuxer_Content_Encoding) (content_encoding_entries);
            if cpp_transpiler_delete_g108 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g108);
            }
        }
    }
}

deinit_14 :: (using class_vector_class_block_addition_mapping: *Class_Vector_Class_Block_Addition_Mapping) {
    cpp_transpiler_subobject_cleanup_g109: bool = ---;
    defer deinit_15(
        cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping
    );
    std_destroy(
        ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).start,
        ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) (*((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping).impl))).*).finish,
        get_tp_allocator_3(
        cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping) class_vector_class_block_addition_mapping
    )
    );
}

std_destroy :: inline (
    first: *Block_Addition_Mapping,
    last: *Block_Addition_Mapping,
    unnamed_28458: *Class_Allocator_Class_Block_Addition_Mapping
) {
    std_destroy(first, last);
}

std_destroy :: (first: *Block_Addition_Mapping, last: *Block_Addition_Mapping) {

    while first != last {
        std_destroy(first);
        first += 1;
    }
}

std_destroy :: (pointer: *Block_Addition_Mapping) {
    deinit_8(pointer);
}

deinit_15 :: (
    using struct_vector_base_class_block_addition_mapping_class_allocator_class_block_addition_mapping: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping
) {
    cpp_transpiler_subobject_cleanup_g110: bool = ---;
    defer deinit_16(*impl);
    {
        n :=
            ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) *impl).*).end_of_storage -
                ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) *impl).*).start;
        if n < 0 {
            c_transpiler_unreachable();
        }
        deallocate_11(
            struct_vector_base_class_block_addition_mapping_class_allocator_class_block_addition_mapping,
            ((cast(*Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data) *impl).*).start,
            cast,no_check(u64) n
        );
    }
}

deinit_16 :: (
    using vector_impl: *Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl
) {
    cpp_transpiler_subobject_cleanup_g111: bool = ---;
    defer deinit_17(cast(*Class_Allocator_Class_Block_Addition_Mapping) vector_impl);
}

deinit_17 :: inline (
    using class_allocator_class_block_addition_mapping: *Class_Allocator_Class_Block_Addition_Mapping
) {
    cpp_transpiler_subobject_cleanup_g112: bool = ---;
    defer deinit_18(cast(*Class_New_Allocator_Class_Block_Addition_Mapping) class_allocator_class_block_addition_mapping);
}

deinit_18 :: (
    using class_new_allocator_class_block_addition_mapping: *Class_New_Allocator_Class_Block_Addition_Mapping
) {
}

add_content_encoding :: (using track: *Mkvmuxer_Track) -> bool {
    COUNT := content_encoding_entries_size + 1;

    CONTENT_ENCODING_ENTRIES :=
        cast,no_check(**Mkvmuxer_Content_Encoding) (cast(**Mkvmuxer_Content_Encoding) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) COUNT,
            size_of(*Mkvmuxer_Content_Encoding)
        ));
    if CONTENT_ENCODING_ENTRIES == null {
        return false;
    }

    CONTENT_ENCODING :=
        cast,no_check(*Mkvmuxer_Content_Encoding) (cast(*Mkvmuxer_Content_Encoding) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Content_Encoding)
        ));
    init_15(CONTENT_ENCODING);
    if CONTENT_ENCODING == null {
        {
            cpp_transpiler_delete_g113 := cast,no_check(**Mkvmuxer_Content_Encoding) (CONTENT_ENCODING_ENTRIES);
            if cpp_transpiler_delete_g113 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g113);
            }
        }
        return false;
    }

    {
        i: u32 = 0;
        while i < content_encoding_entries_size {
            CONTENT_ENCODING_ENTRIES[i] = cast,no_check(*Mkvmuxer_Content_Encoding) (content_encoding_entries[i]);
            i += 1;
        }
    }

    {
        cpp_transpiler_delete_g114 := cast,no_check(**Mkvmuxer_Content_Encoding) (content_encoding_entries);
        if cpp_transpiler_delete_g114 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g114);
        }
    }

    content_encoding_entries = cast,no_check(**Mkvmuxer_Content_Encoding) (CONTENT_ENCODING_ENTRIES);
    content_encoding_entries[content_encoding_entries_size] =
        cast,no_check(*Mkvmuxer_Content_Encoding) (CONTENT_ENCODING);
    content_encoding_entries_size = COUNT;
    return true;
}

get_content_encoding_by_index :: (using track: *Mkvmuxer_Track, index: u32) -> *Mkvmuxer_Content_Encoding {
    if content_encoding_entries == null {
        return cast(*Mkvmuxer_Content_Encoding) null;
    }

    if index >= content_encoding_entries_size {
        return cast(*Mkvmuxer_Content_Encoding) null;
    }

    return content_encoding_entries[index];
}

add_block_addition_mapping :: (
    using track: *Mkvmuxer_Track,
    value: u64,
    _name: *s8,
    _type: u64,
    extra_data: *u8,
    extra_data_size: u64
) -> bool {
    if extra_data_size != 0 && extra_data == null || extra_data_size == 0 && extra_data != null {
        return false;
    }
    emplace_back(*block_addition_mappings, *value, *_name, *_type, *extra_data, *extra_data_size);
    max_block_additional_id = max(max_block_additional_id, value);
    return true;
}

set_codec_private :: (using track: *Mkvmuxer_Track, _codec_private: *u8, length: u64) -> bool {
    if _codec_private == null || length < 1 {
        return false;
    }

    {
        cpp_transpiler_delete_g115 := cast,no_check(*u8) (codec_private);
        if cpp_transpiler_delete_g115 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g115);
        }
    }

    codec_private = cast,no_check(*u8) (cast(*u8) cpp_transpiler_allocate_array_raw(length, size_of(u8)));
    if codec_private == null {
        return false;
    }

    copy_memory(codec_private, _codec_private, length);
    codec_private_length = length;

    return true;
}

set_language :: (using track: *Mkvmuxer_Track, _language: *s8) {
    if _language != null {
        {
            cpp_transpiler_delete_g116 := cast,no_check(*s8) (language);
            if cpp_transpiler_delete_g116 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g116);
            }
        }

        LENGTH := cstring_length(_language) + 1;
        language = cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(LENGTH, size_of(s8)));
        if language != null {
            copy_memory(language, _language, LENGTH - 1);
            language[LENGTH - 1] = 0;
        }
    }
}

set_name :: (using track: *Mkvmuxer_Track, _name: *s8) {
    if _name != null {
        {
            cpp_transpiler_delete_g117 := cast,no_check(*s8) (name);
            if cpp_transpiler_delete_g117 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g117);
            }
        }

        LENGTH := cstring_length(_name) + 1;
        name = cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(LENGTH, size_of(s8)));
        if name != null {
            copy_memory(name, _name, LENGTH - 1);
            name[LENGTH - 1] = 0;
        }
    }
}

init_26 :: (using video_track: *Mkvmuxer_Video_Track, seed: *u32) {
    init_24(*track, seed);
    track.cpp_transpiler_dynamic_type_Track = 4;
    display_height = 0;
    display_width = 0;
    pixel_height = 0;
    pixel_width = 0;
    crop_left = 0;
    crop_right = 0;
    crop_top = 0;
    crop_bottom = 0;
    frame_rate = 0.0;
    height = 0;
    stereo_mode = 0;
    alpha_mode = 0;
    width = 0;
    colour_space = cast,no_check(*s8) (cast(*s8) null);
    colour = cast,no_check(*Mkvmuxer_Colour) (cast(*Mkvmuxer_Colour) null);
    projection = cast,no_check(*Mkvmuxer_Projection) (cast(*Mkvmuxer_Projection) null);
}

deinit_19 :: (using video_track: *Mkvmuxer_Video_Track) {
    track.cpp_transpiler_dynamic_type_Track = 4;
    cpp_transpiler_subobject_cleanup_g118: bool = ---;
    defer deinit_13(*track);
    {
        cpp_transpiler_delete_g119 := cast,no_check(*Mkvmuxer_Colour) (colour);
        if cpp_transpiler_delete_g119 != null {
            deinit_11(cpp_transpiler_delete_g119);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g119);
        }
    }
    {
        cpp_transpiler_delete_g120 := cast,no_check(*Mkvmuxer_Projection) (projection);
        if cpp_transpiler_delete_g120 != null {
            deinit_12(cpp_transpiler_delete_g120);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g120);
        }
    }
}

payload_size :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    PARENT_SIZE := payload_size(*track);

    size := video_payload_size(video_track);
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_VIDEO, size)), Uint64, Uint64);

    return PARENT_SIZE + size;
}

write :: (using video_track: *Mkvmuxer_Video_Track, writer: *I_Mkv_Writer) -> bool {
    if !write(*track, writer) {
        return false;
    }

    SIZE := video_payload_size(video_track);

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_VIDEO, SIZE) {
        return false;
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(
        writer,
        cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_WIDTH,
        (ifx pixel_width > 0 then pixel_width else width)
    ) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(
        writer,
        cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_HEIGHT,
        (ifx pixel_height > 0 then pixel_height else height)
    ) {
        return false;
    }
    if display_width > 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DISPLAY_WIDTH, display_width) {
            return false;
        }
    }
    if display_height > 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DISPLAY_HEIGHT, display_height) {
            return false;
        }
    }
    if crop_left > 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_CROP_LEFT, crop_left) {
            return false;
        }
    }
    if crop_right > 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_CROP_RIGHT, crop_right) {
            return false;
        }
    }
    if crop_top > 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_CROP_TOP, crop_top) {
            return false;
        }
    }
    if crop_bottom > 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_PIXEL_CROP_BOTTOM, crop_bottom) {
            return false;
        }
    }
    if stereo_mode > cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_MONO {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_STEREO_MODE, stereo_mode) {
            return false;
        }
    }
    if alpha_mode > cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_NO_ALPHA {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_ALPHA_MODE, alpha_mode) {
            return false;
        }
    }
    if colour_space != null {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_COLOUR_SPACE, colour_space) {
            return false;
        }
    }
    if c_transpiler_float_greater(frame_rate, 0.0) {
        if !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_FRAME_RATE,
            cast,no_check(float32) frame_rate
        ) {
            return false;
        }
    }
    if colour != null {
        if !write(colour, writer) {
            return false;
        }
    }
    if projection != null {
        if !write(projection, writer) {
            return false;
        }
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 || STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) SIZE {
        return false;
    }

    return true;
}

set_stereo_mode :: (using video_track: *Mkvmuxer_Video_Track, _stereo_mode: u64) -> bool {
    if _stereo_mode != cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_MONO &&
        _stereo_mode != cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_SIDE_BY_SIDE_LEFT_IS_FIRST &&
        _stereo_mode != cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_TOP_BOTTOM_RIGHT_IS_FIRST &&
        _stereo_mode != cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_TOP_BOTTOM_LEFT_IS_FIRST &&
        _stereo_mode != cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_SIDE_BY_SIDE_RIGHT_IS_FIRST {
        return false;
    }

    stereo_mode = _stereo_mode;
    return true;
}

set_alpha_mode :: (using video_track: *Mkvmuxer_Video_Track, _alpha_mode: u64) -> bool {
    if _alpha_mode != cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_NO_ALPHA &&
        _alpha_mode != cast,no_check(u64) MKVMUXER_VIDEO_TRACK_K_ALPHA {
        return false;
    }

    alpha_mode = _alpha_mode;
    return true;
}

set_colour_space :: (using video_track: *Mkvmuxer_Video_Track, _colour_space: *s8) {
    if _colour_space != null {
        {
            cpp_transpiler_delete_g121 := cast,no_check(*s8) (colour_space);
            if cpp_transpiler_delete_g121 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g121);
            }
        }

        LENGTH := cstring_length(_colour_space) + 1;
        colour_space = cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(LENGTH, size_of(s8)));
        if colour_space != null {
            copy_memory(colour_space, _colour_space, LENGTH - 1);
            colour_space[LENGTH - 1] = 0;
        }
    }
}

set_colour :: (using video_track: *Mkvmuxer_Video_Track, _colour: *Mkvmuxer_Colour) -> bool {
    colour_ptr: Class_Unique_Ptr_Class_Colour = ---;
    defer deinit_86(*colour_ptr);
    init_155(
        *colour_ptr,
        (ifx true {
    cpp_transpiler_new_g122 :=
        cast,no_check(*Mkvmuxer_Colour) (cast(*Mkvmuxer_Colour) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Colour)
        ));
    init_22(cpp_transpiler_new_g122);
    cpp_transpiler_new_g122;
})

    );
    if !operator_bool(*colour_ptr) {
        return false;
    }

    if ((mastering_metadata(_colour)) != null) {
        if !set_mastering_metadata(get_pointer_4(*colour_ptr), mastering_metadata(_colour)) {
            return false;
        }
    }

    set_matrix_coefficients(get_pointer_4(*colour_ptr), matrix_coefficients(_colour));
    set_bits_per_channel(get_pointer_4(*colour_ptr), bits_per_channel(_colour));
    set_chroma_subsampling_horz(get_pointer_4(*colour_ptr), chroma_subsampling_horz(_colour));
    set_chroma_subsampling_vert(get_pointer_4(*colour_ptr), chroma_subsampling_vert(_colour));
    set_cb_subsampling_horz(get_pointer_4(*colour_ptr), cb_subsampling_horz(_colour));
    set_cb_subsampling_vert(get_pointer_4(*colour_ptr), cb_subsampling_vert(_colour));
    set_chroma_siting_horz(get_pointer_4(*colour_ptr), chroma_siting_horz(_colour));
    set_chroma_siting_vert(get_pointer_4(*colour_ptr), chroma_siting_vert(_colour));
    set_range(get_pointer_4(*colour_ptr), range(_colour));
    set_transfer_characteristics(get_pointer_4(*colour_ptr), transfer_characteristics(_colour));
    set_primaries(get_pointer_4(*colour_ptr), primaries(_colour));
    set_max_cll(get_pointer_4(*colour_ptr), max_cll(_colour));
    set_max_fall(get_pointer_4(*colour_ptr), max_fall(_colour));
    {
        cpp_transpiler_delete_g123 := cast,no_check(*Mkvmuxer_Colour) (colour);
        if cpp_transpiler_delete_g123 != null {
            deinit_11(cpp_transpiler_delete_g123);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g123);
        }
    }
    colour = cast,no_check(*Mkvmuxer_Colour) release(*colour_ptr);
    return true;
}

set_projection :: (using video_track: *Mkvmuxer_Video_Track, _projection: *Mkvmuxer_Projection) -> bool {
    projection_ptr: Class_Unique_Ptr_Class_Projection = ---;
    defer deinit_87(*projection_ptr);
    init_162(
        *projection_ptr,
        (ifx true {
    cpp_transpiler_new_g124 :=
        cast,no_check(*Mkvmuxer_Projection) (cast(*Mkvmuxer_Projection) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Projection)
        ));
    init_23(cpp_transpiler_new_g124);
    cpp_transpiler_new_g124;
})

    );
    if !operator_bool(*projection_ptr) {
        return false;
    }

    if ((private_data(_projection)) != null) {
        if !set_projection_private(
            get_pointer_3(*projection_ptr),
            private_data(_projection),
            private_data_length(_projection)
        ) {
            return false;
        }
    }

    set_type(get_pointer_3(*projection_ptr), type(_projection));
    set_pose_yaw(get_pointer_3(*projection_ptr), pose_yaw(_projection));
    set_pose_pitch(get_pointer_3(*projection_ptr), pose_pitch(_projection));
    set_pose_roll(get_pointer_3(*projection_ptr), pose_roll(_projection));
    {
        cpp_transpiler_delete_g125 := cast,no_check(*Mkvmuxer_Projection) (projection);
        if cpp_transpiler_delete_g125 != null {
            deinit_12(cpp_transpiler_delete_g125);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g125);
        }
    }
    projection = cast,no_check(*Mkvmuxer_Projection) release(*projection_ptr);
    return true;
}

init_28 :: (using audio_track: *Mkvmuxer_Audio_Track, seed: *u32) {
    init_24(*track, seed);
    track.cpp_transpiler_dynamic_type_Track = 5;
    bit_depth = 0;
    channels = 1;
    sample_rate = 0.0;
}

deinit_20 :: (using audio_track: *Mkvmuxer_Audio_Track) {
    track.cpp_transpiler_dynamic_type_Track = 5;
    cpp_transpiler_subobject_cleanup_g126: bool = ---;
    defer deinit_13(*track);
}

payload_size :: (using audio_track: *Mkvmuxer_Audio_Track) -> u64 {
    PARENT_SIZE := payload_size(*track);

    size :=
        mkvmuxer_EbmlElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_SAMPLING_FREQUENCY,
            cast,no_check(float32) sample_rate
        );
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHANNELS, channels)), Uint64, Uint64);
    if bit_depth > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BIT_DEPTH, bit_depth)), Uint64, Uint64);
    }
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_AUDIO, size)), Uint64, Uint64);

    return PARENT_SIZE + size;
}

write :: (using audio_track: *Mkvmuxer_Audio_Track, writer: *I_Mkv_Writer) -> bool {
    if !write(*track, writer) {
        return false;
    }

    size :=
        mkvmuxer_EbmlElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_SAMPLING_FREQUENCY,
            cast,no_check(float32) sample_rate
        );
    c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CHANNELS, channels)), Uint64, Uint64);
    if bit_depth > 0 {
        c_transpiler_compound_add(*(size), (mkvmuxer_EbmlElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BIT_DEPTH, bit_depth)), Uint64, Uint64);
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_AUDIO, size) {
        return false;
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return false;
    }

    if !mkvmuxer_WriteEbmlElement(
        writer,
        cast,no_check(Uint64) LIBWEBM_K_MKV_SAMPLING_FREQUENCY,
        cast,no_check(float32) sample_rate
    ) {
        return false;
    }
    if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_CHANNELS, channels) {
        return false;
    }
    if bit_depth > 0 {
        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BIT_DEPTH, bit_depth) {
            return false;
        }
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 || STOP_POSITION - PAYLOAD_POSITION != cast,no_check(s64) size {
        return false;
    }

    return true;
}

init_30 :: (using tracks: *Mkvmuxer_Tracks) {
    track_entries = cast,no_check(**Mkvmuxer_Track) (cast(**Mkvmuxer_Track) null);
    track_entries_size = 0;
    wrote_tracks = false;
}

deinit_21 :: (using tracks: *Mkvmuxer_Tracks) {
    if track_entries != null {
        {
            i: u32 = 0;
            while i < track_entries_size {
                TRACK := cast,no_check(*Mkvmuxer_Track) (track_entries[i]);
                {
                    cpp_transpiler_delete_g127 := cast,no_check(*Mkvmuxer_Track) (TRACK);
                    if cpp_transpiler_delete_g127 != null {
                        cpp_transpiler_dispatch_mkvmuxer_Track_destructor(cpp_transpiler_delete_g127);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g127);
                    }
                }
                i += 1;
            }
        }
        {
            cpp_transpiler_delete_g128 := cast,no_check(**Mkvmuxer_Track) (track_entries);
            if cpp_transpiler_delete_g128 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g128);
            }
        }
    }
}

set_id :: (using chapter: *Chapter, _id: *s8) -> bool {
    return mkvmuxer_anonymous_namespace_str_cpy(_id, *id);
}

set_time :: (using chapter: *Chapter, segment: *Mkvmuxer_Segment, start_ns: u64, end_ns: u64) {
    INFO := cast,no_check(*Mkvmuxer_Segment_Info) (get_segment_info(segment));
    TIMECODE_SCALE := timecode_scale(INFO);
    start_timecode = start_ns / TIMECODE_SCALE;
    end_timecode = end_ns / TIMECODE_SCALE;
}

add_string :: (using chapter: *Chapter, title: *s8, language: *s8, country: *s8) -> bool {
    if !expand_displays_array(chapter) {
        return false;
    }

    d := cast,no_check(*Chapter_Display) (*displays[c_transpiler_post_increment(*(displays_count))]);
    init_32(d);

    if !set_title(d, title) {
        return false;
    }

    if !set_language(d, language) {
        return false;
    }

    if !set_country(d, country) {
        return false;
    }

    return true;
}

init_33 :: (using chapter: *Chapter) {
}

deinit_22 :: (using chapter: *Chapter) {
}

init_36 :: (using _chapters: *Mkvmuxer_Chapters) {
    chapters_size = 0;
    chapters_count = 0;
    chapters = cast,no_check(*Chapter) (cast(*Chapter) null);
}

deinit_23 :: (using _chapters: *Mkvmuxer_Chapters) {
    while chapters_count > 0 {
        chapter := cast,no_check(*Chapter) (*chapters[c_transpiler_pre_decrement(*(chapters_count))]);
        clear_3(chapter);
    }

    {
        cpp_transpiler_delete_g129 := cast,no_check(*Chapter) (chapters);
        if cpp_transpiler_delete_g129 != null {
            cpp_transpiler_delete_index_g130 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g129);
            while cpp_transpiler_delete_index_g130 > 0 {
                cpp_transpiler_delete_index_g130 -= 1;
                deinit_22(cpp_transpiler_delete_g129 + cpp_transpiler_delete_index_g130);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g129);
        }
    }
    chapters = cast,no_check(*Chapter) (cast(*Chapter) null);
}

add_simple_tag :: (using tag: *Tag, tag_name: *s8, tag_string: *s8) -> bool {
    if !expand_simple_tags_array(tag) {
        return false;
    }

    st := cast,no_check(*Tag_Simple_Tag) (*simple_tags[c_transpiler_post_increment(*(simple_tags_count))]);
    init_38(st);

    if !set_tag_name(st, tag_name) {
        return false;
    }

    if !set_tag_string(st, tag_string) {
        return false;
    }

    return true;
}

init_39 :: (using tag: *Tag) {
    simple_tags = cast,no_check(*Tag_Simple_Tag) (cast(*Tag_Simple_Tag) null);
    simple_tags_size = 0;
    simple_tags_count = 0;
}

deinit_24 :: (using tag: *Tag) {
}

init_41 :: (using _tags: *Mkvmuxer_Tags) {
    tags_size = 0;
    tags_count = 0;
    tags = cast,no_check(*Tag) (cast(*Tag) null);
}

deinit_25 :: (using _tags: *Mkvmuxer_Tags) {
    while tags_count > 0 {
        tag := cast,no_check(*Tag) (*tags[c_transpiler_pre_decrement(*(tags_count))]);
        clear_5(tag);
    }

    {
        cpp_transpiler_delete_g131 := cast,no_check(*Tag) (tags);
        if cpp_transpiler_delete_g131 != null {
            cpp_transpiler_delete_index_g132 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g131);
            while cpp_transpiler_delete_index_g132 > 0 {
                cpp_transpiler_delete_index_g132 -= 1;
                deinit_24(cpp_transpiler_delete_g131 + cpp_transpiler_delete_index_g132);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g131);
        }
    }
    tags = cast,no_check(*Tag) (cast(*Tag) null);
}

init_43 :: (
    using cluster: *Mkvmuxer_Cluster,
    _timecode: u64,
    cues_pos: s64,
    _timecode_scale: u64,
    _write_last_frame_with_duration: bool,
    _fixed_size_timecode: bool
) {
    blocks_added = 0;
    finalized = false;
    fixed_size_timecode = _fixed_size_timecode;
    header_written = false;
    payload_size = 0;
    position_for_cues = cues_pos;
    size_position = -1;
    timecode = _timecode;
    timecode_scale = _timecode_scale;
    write_last_frame_with_duration = _write_last_frame_with_duration;
    init_132(*stored_frames);
    init_139(*last_block_timestamp);

    writer = cast,no_check(*I_Mkv_Writer) (cast(*I_Mkv_Writer) null);
}

init_132 :: (using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame) {
    init_133(*t);
}

init_133 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) {
    init_134(*impl);
}

init_134 :: (
    using rb_tree_impl_struct_less_unsigned_long: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H1565541795055378612
) {
    init_135(
        cast(*Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) rb_tree_impl_struct_less_unsigned_long
    );
    init_137(cast(*Struct_Rb_Tree_Key_Compare_Struct_Less_Unsigned_Long) rb_tree_impl_struct_less_unsigned_long);
    init_138(
        cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) rb_tree_impl_struct_less_unsigned_long, 8)
    );
}

init_135 :: inline (
    using class_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) {
    init_136(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) class_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame
    );
}

init_136 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) {
}

init_137 :: (
    using struct_rb_tree_key_compare_struct_less_unsigned_long: *Struct_Rb_Tree_Key_Compare_Struct_Less_Unsigned_Long
) {
}

init_138 :: (using rb_tree_header: *Rb_Tree_Header) {

    header.color = STD_S_RED;
    reset_2(rb_tree_header);
}

init_139 :: (using class_map_unsigned_long_unsigned_long: *Class_Map_Unsigned_Long_Unsigned_Long) {
    init_140(*t);
}

init_140 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) {
    init_141(*impl);
}

init_141 :: (
    using rb_tree_impl_struct_less_unsigned_long: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H13458155528517896646
) {
    init_142(
        cast(*Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) rb_tree_impl_struct_less_unsigned_long
    );
    init_137(cast(*Struct_Rb_Tree_Key_Compare_Struct_Less_Unsigned_Long) rb_tree_impl_struct_less_unsigned_long);
    init_138(
        cast(*Rb_Tree_Header) cpp_transpiler_derived_to_base(cast(*void) rb_tree_impl_struct_less_unsigned_long, 8)
    );
}

init_142 :: inline (
    using class_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) {
    init_143(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) class_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long
    );
}

init_143 :: inline (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) {
}

deinit_26 :: (using cluster: *Mkvmuxer_Cluster) {
    cpp_transpiler_subobject_cleanup_g133: bool = ---;
    defer deinit_27(*stored_frames);
    cpp_transpiler_subobject_cleanup_g134: bool = ---;
    defer deinit_32(*last_block_timestamp);
    while !empty(*stored_frames) {
        while !empty(
            *((get_pointer(
            (ifx true { temporary___g1: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = begin(*stored_frames); *temporary___g1; })
        )).second)
        ) {
            {
                cpp_transpiler_delete_g135 :=
                    cast,no_check(Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type) ((cast(*Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type) front(
                        *((get_pointer(
                        (ifx true { temporary___g4: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = begin(
                        *stored_frames
                    ); *temporary___g4; })
                    )).second)
                    )).*);
                if cpp_transpiler_delete_g135 != null {
                    deinit_3(cpp_transpiler_delete_g135);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g135);
                }
            }
            pop_front(
                *((get_pointer(
                (ifx true { temporary___g7: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = begin(*stored_frames); *temporary___g7; })
            )).second)
            );
        }
        erase(
            *stored_frames,
            *((get_pointer(
            (ifx true { temporary___g9: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame = begin(*stored_frames); *temporary___g9; })
        )).first)
        );
    }
}

deinit_27 :: (using class_map_unsigned_long_class_list_class_frame: *Class_Map_Unsigned_Long_Class_List_Class_Frame) {
    cpp_transpiler_subobject_cleanup_g136: bool = ---;
    defer deinit_28(*t);
}

deinit_28 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074
) {
    cpp_transpiler_subobject_cleanup_g137: bool = ---;
    defer deinit_29(*impl);
    erase(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074,
        begin_node(class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_class_list_class_frame_h455860214345177074)
    );
}

deinit_29 :: (
    using rb_tree_impl_struct_less_unsigned_long: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H1565541795055378612
) {
    cpp_transpiler_subobject_cleanup_g138: bool = ---;
    defer deinit_30(
        cast(*Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) rb_tree_impl_struct_less_unsigned_long
    );
}

deinit_30 :: inline (
    using class_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) {
    cpp_transpiler_subobject_cleanup_g139: bool = ---;
    defer deinit_31(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame) class_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame
    );
}

deinit_31 :: (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_class_list_class_frame: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame
) {
}

deinit_77 :: (using class_list_class_frame: *Class_List_Class_Frame) {
    cpp_transpiler_subobject_cleanup_g140: bool = ---;
    defer deinit_78(cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame);
}

deinit_78 :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame
) {
    cpp_transpiler_subobject_cleanup_g141: bool = ---;
    defer deinit_79(*impl);
    clear_12(class_list_base_class_frame_class_allocator_class_frame);
}

deinit_79 :: (using list_impl: *Struct_List_Base_Class_Frame_Class_Allocator_Class_Frame_List_Impl) {
    cpp_transpiler_subobject_cleanup_g142: bool = ---;
    defer deinit_80(cast(*Class_Allocator_Struct_List_Node_Class_Frame) list_impl);
}

deinit_80 :: inline (
    using class_allocator_struct_list_node_class_frame: *Class_Allocator_Struct_List_Node_Class_Frame
) {
    cpp_transpiler_subobject_cleanup_g143: bool = ---;
    defer deinit_81(cast(*Class_New_Allocator_Struct_List_Node_Class_Frame) class_allocator_struct_list_node_class_frame);
}

deinit_81 :: (
    using class_new_allocator_struct_list_node_class_frame: *Class_New_Allocator_Struct_List_Node_Class_Frame
) {
}

deinit_32 :: (using class_map_unsigned_long_unsigned_long: *Class_Map_Unsigned_Long_Unsigned_Long) {
    cpp_transpiler_subobject_cleanup_g144: bool = ---;
    defer deinit_33(*t);
}

deinit_33 :: (
    using class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396
) {
    cpp_transpiler_subobject_cleanup_g145: bool = ---;
    defer deinit_34(*impl);
    erase(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396,
        begin_node(
        class_rb_tree_unsigned_long_struct_pair_const_unsigned_long_unsigned_long_struct_sel_h9289534235289919396
    )
    );
}

deinit_34 :: (
    using rb_tree_impl_struct_less_unsigned_long: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H13458155528517896646
) {
    cpp_transpiler_subobject_cleanup_g146: bool = ---;
    defer deinit_35(
        cast(*Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) rb_tree_impl_struct_less_unsigned_long
    );
}

deinit_35 :: inline (
    using class_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) {
    cpp_transpiler_subobject_cleanup_g147: bool = ---;
    defer deinit_36(
        cast(*Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long) class_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long
    );
}

deinit_36 :: (
    using class_new_allocator_struct_rb_tree_node_struct_pair_const_unsigned_long_unsigned_long: *Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long
) {
}

add_frame :: (
    using cluster: *Mkvmuxer_Cluster,
    data: *u8,
    length: u64,
    track_number: u64,
    abs_timecode: u64,
    is_key: bool
) -> bool {
    frame: Frame = ---;
    defer deinit_3(*frame);
    init_6(*frame);
    if !init_7(*frame, data, length) {
        return false;
    }
    frame.track_number = track_number;
    frame.timestamp = abs_timecode;
    frame.is_key = is_key;
    return queue_or_write_frame(cluster, *frame);
}

add_frame_with_additional :: (
    using cluster: *Mkvmuxer_Cluster,
    data: *u8,
    length: u64,
    additional: *u8,
    additional_length: u64,
    add_id: u64,
    track_number: u64,
    abs_timecode: u64,
    is_key: bool
) -> bool {
    if additional == null || additional_length == 0 {
        return false;
    }
    frame: Frame = ---;
    defer deinit_3(*frame);
    init_6(*frame);
    if !init_7(*frame, data, length) || !add_additional_data(*frame, additional, additional_length, add_id) {
        return false;
    }
    frame.track_number = track_number;
    frame.timestamp = abs_timecode;
    frame.is_key = is_key;
    return queue_or_write_frame(cluster, *frame);
}

add_frame_with_discard_padding :: (
    using cluster: *Mkvmuxer_Cluster,
    data: *u8,
    length: u64,
    discard_padding: s64,
    track_number: u64,
    abs_timecode: u64,
    is_key: bool
) -> bool {
    frame: Frame = ---;
    defer deinit_3(*frame);
    init_6(*frame);
    if !init_7(*frame, data, length) {
        return false;
    }
    frame.discard_padding = discard_padding;
    frame.track_number = track_number;
    frame.timestamp = abs_timecode;
    frame.is_key = is_key;
    return queue_or_write_frame(cluster, *frame);
}

add_metadata :: (
    using cluster: *Mkvmuxer_Cluster,
    data: *u8,
    length: u64,
    track_number: u64,
    abs_timecode: u64,
    duration_timecode: u64
) -> bool {
    frame: Frame = ---;
    defer deinit_3(*frame);
    init_6(*frame);
    if !init_7(*frame, data, length) {
        return false;
    }
    frame.track_number = track_number;
    frame.timestamp = abs_timecode;
    set_duration(*frame, duration_timecode);
    frame.is_key = true;
    return queue_or_write_frame(cluster, *frame);
}

finalize :: (using cluster: *Mkvmuxer_Cluster) -> bool {
    return !write_last_frame_with_duration && finalize(cluster, false, 0);
}

get_relative_timecode :: (cluster: *Mkvmuxer_Cluster, abs_timecode: s64) -> s64 {
    CLUSTER_TIMECODE := cast,no_check(s64) timecode(cluster);
    REL_TIMECODE := abs_timecode - CLUSTER_TIMECODE;

    if REL_TIMECODE < 0 || REL_TIMECODE > cast(s64) 0x7fff {
        return -1;
    }

    return REL_TIMECODE;
}

init_46 :: (using seek_head: *Mkvmuxer_Seek_Head) {
    start_pos = 0;
    {
        i: s32 = 0;
        while i < cast(s32) 5 {
            seek_entry_id[i] = 0;
            seek_entry_pos[i] = 0;
            i += 1;
        }
    }
}

deinit_37 :: (using seek_head: *Mkvmuxer_Seek_Head) {
}

init_48 :: (using segment_info: *Mkvmuxer_Segment_Info) {
    duration = -1.0;
    muxing_app = cast,no_check(*s8) (cast(*s8) null);
    timecode_scale = 1000000;
    writing_app = cast,no_check(*s8) (cast(*s8) null);
    date_utc = cast,no_check(s64) ((-9223372036854775807 - 1));
    duration_pos = -1;
}

deinit_38 :: (using segment_info: *Mkvmuxer_Segment_Info) {
    {
        cpp_transpiler_delete_g148 := cast,no_check(*s8) (muxing_app);
        if cpp_transpiler_delete_g148 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g148);
        }
    }
    {
        cpp_transpiler_delete_g149 := cast,no_check(*s8) (writing_app);
        if cpp_transpiler_delete_g149 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g149);
        }
    }
}

set_muxing_app :: (using segment_info: *Mkvmuxer_Segment_Info, app: *s8) {
    if app != null {
        LENGTH := cstring_length(app) + 1;
        temp_str := cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(LENGTH, size_of(s8)));
        if temp_str == null {
            return;
        }

        copy_memory(temp_str, app, LENGTH - 1);
        temp_str[LENGTH - 1] = 0;

        {
            cpp_transpiler_delete_g150 := cast,no_check(*s8) (muxing_app);
            if cpp_transpiler_delete_g150 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g150);
            }
        }
        muxing_app = cast,no_check(*s8) (temp_str);
    }
}

init_51 :: (using segment: *Mkvmuxer_Segment) {
    init_11(*cues);
    init_46(*seek_head);
    init_48(*segment_info);
    init_30(*tracks);
    init_36(*chapters);
    init_41(*tags);
    chunk_count = 0;
    chunk_name = cast,no_check(*s8) (cast(*s8) null);
    chunk_writer_cluster = cast,no_check(*Mkv_Writer) (cast(*Mkv_Writer) null);
    chunk_writer_cues = cast,no_check(*Mkv_Writer) (cast(*Mkv_Writer) null);
    chunk_writer_header = cast,no_check(*Mkv_Writer) (cast(*Mkv_Writer) null);
    chunking = false;
    chunking_base_name = cast,no_check(*s8) (cast(*s8) null);
    cluster_list = cast,no_check(**Mkvmuxer_Cluster) (cast(**Mkvmuxer_Cluster) null);
    cluster_list_capacity = 0;
    cluster_list_size = 0;
    cues_position = MKVMUXER_SEGMENT_K_AFTER_CLUSTERS;
    cues_track = 0;
    force_new_cluster = false;
    frames = cast,no_check(**Frame) (cast(**Frame) null);
    frames_capacity = 0;
    frames_size = 0;
    has_video = false;
    header_written = false;
    last_block_duration = 0;
    last_timestamp = 0;
    max_cluster_duration = cast(u64) 30000000000;
    max_cluster_size = 0;
    mode = MKVMUXER_SEGMENT_K_FILE;
    new_cuepoint = false;
    output_cues = true;
    accurate_cluster_duration = false;
    fixed_size_cluster_timecode = false;
    estimate_file_duration = false;
    ebml_header_size = 0;
    payload_pos = 0;
    size_position = 0;
    doc_type_version = cast(u32) 4;
    doc_type_version_written = 0;
    duration = 0.0;
    writer_cluster = cast,no_check(*I_Mkv_Writer) (cast(*I_Mkv_Writer) null);
    writer_cues = cast,no_check(*I_Mkv_Writer) (cast(*I_Mkv_Writer) null);
    writer_header = cast,no_check(*I_Mkv_Writer) (cast(*I_Mkv_Writer) null);
    CURR_TIME := time_2(cast(*Time_T_in_time_t) null);
    seed = cast,no_check(u32) CURR_TIME;
}

deinit_39 :: (using segment: *Mkvmuxer_Segment) {
    cpp_transpiler_subobject_cleanup_g151: bool = ---;
    defer deinit_5(*cues);
    cpp_transpiler_subobject_cleanup_g152: bool = ---;
    defer deinit_37(*seek_head);
    cpp_transpiler_subobject_cleanup_g153: bool = ---;
    defer deinit_38(*segment_info);
    cpp_transpiler_subobject_cleanup_g154: bool = ---;
    defer deinit_21(*tracks);
    cpp_transpiler_subobject_cleanup_g155: bool = ---;
    defer deinit_23(*chapters);
    cpp_transpiler_subobject_cleanup_g156: bool = ---;
    defer deinit_25(*tags);
    if cluster_list != null {
        {
            i: s32 = 0;
            while i < cluster_list_size {
                CLUSTER: *Mkvmuxer_Cluster = cast,no_check(*Mkvmuxer_Cluster) cluster_list[i];
                {
                    cpp_transpiler_delete_g157 := cast,no_check(*Mkvmuxer_Cluster) (CLUSTER);
                    if cpp_transpiler_delete_g157 != null {
                        deinit_26(cpp_transpiler_delete_g157);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g157);
                    }
                }
                i += 1;
            }
        }
        {
            cpp_transpiler_delete_g158 := cast,no_check(**Mkvmuxer_Cluster) (cluster_list);
            if cpp_transpiler_delete_g158 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g158);
            }
        }
    }

    if frames != null {
        {
            i: s32 = 0;
            while i < frames_size {
                FRAME: *Frame = cast,no_check(*Frame) frames[i];
                {
                    cpp_transpiler_delete_g159 := cast,no_check(*Frame) (FRAME);
                    if cpp_transpiler_delete_g159 != null {
                        deinit_3(cpp_transpiler_delete_g159);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g159);
                    }
                }
                i += 1;
            }
        }
        {
            cpp_transpiler_delete_g160 := cast,no_check(**Frame) (frames);
            if cpp_transpiler_delete_g160 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g160);
            }
        }
    }

    {
        cpp_transpiler_delete_g161 := cast,no_check(*s8) (chunk_name);
        if cpp_transpiler_delete_g161 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g161);
        }
    }
    {
        cpp_transpiler_delete_g162 := cast,no_check(*s8) (chunking_base_name);
        if cpp_transpiler_delete_g162 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g162);
        }
    }

    if chunk_writer_cluster != null {
        close_2(chunk_writer_cluster);
        {
            cpp_transpiler_delete_g163 := cast,no_check(*Mkv_Writer) (chunk_writer_cluster);
            if cpp_transpiler_delete_g163 != null {
                cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_destructor(
                    cast,no_check(*I_Mkv_Writer) cpp_transpiler_delete_g163
                );
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g163);
            }
        }
    }
    if chunk_writer_cues != null {
        close_2(chunk_writer_cues);
        {
            cpp_transpiler_delete_g164 := cast,no_check(*Mkv_Writer) (chunk_writer_cues);
            if cpp_transpiler_delete_g164 != null {
                cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_destructor(
                    cast,no_check(*I_Mkv_Writer) cpp_transpiler_delete_g164
                );
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g164);
            }
        }
    }
    if chunk_writer_header != null {
        close_2(chunk_writer_header);
        {
            cpp_transpiler_delete_g165 := cast,no_check(*Mkv_Writer) (chunk_writer_header);
            if cpp_transpiler_delete_g165 != null {
                cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_destructor(
                    cast,no_check(*I_Mkv_Writer) cpp_transpiler_delete_g165
                );
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g165);
            }
        }
    }
}

init_52 :: (using segment: *Mkvmuxer_Segment, ptr_writer: *I_Mkv_Writer) -> bool {
    if ptr_writer == null {
        return false;
    }
    writer_cluster = cast,no_check(*I_Mkv_Writer) ptr_writer;
    writer_cues = cast,no_check(*I_Mkv_Writer) ptr_writer;
    writer_header = cast,no_check(*I_Mkv_Writer) ptr_writer;
    fill_memory(*track_frames_written, 0, 8 * cast(u64) 126);
    fill_memory(*last_track_timestamp, 0, 8 * cast(u64) 126);
    return init_49(*segment_info);
}

add_track :: (using segment: *Mkvmuxer_Segment, number: s32) -> *Mkvmuxer_Track {
    TRACK :=
        cast,no_check(*Mkvmuxer_Track) (cast(*Mkvmuxer_Track) cpp_transpiler_allocate_raw(size_of(Mkvmuxer_Track)));
    init_24(TRACK, *seed);

    if TRACK == null {
        return cast(*Mkvmuxer_Track) null;
    }

    if !add_track(*tracks, TRACK, number) {
        {
            cpp_transpiler_delete_g166 := cast,no_check(*Mkvmuxer_Track) (TRACK);
            if cpp_transpiler_delete_g166 != null {
                cpp_transpiler_dispatch_mkvmuxer_Track_destructor(cpp_transpiler_delete_g166);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g166);
            }
        }
        return cast(*Mkvmuxer_Track) null;
    }

    return TRACK;
}

add_audio_track :: (using segment: *Mkvmuxer_Segment, sample_rate: s32, channels: s32, number_value: s32) -> u64 {
    TRACK :=
        cast,no_check(*Mkvmuxer_Audio_Track) (cast(*Mkvmuxer_Audio_Track) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Audio_Track)
        ));
    init_28(TRACK, *seed);
    if TRACK == null {
        return 0;
    }

    TRACK.track.type = cast,no_check(u64) MKVMUXER_TRACKS_K_AUDIO;
    set_codec_id(*TRACK.track, MKVMUXER_TRACKS_K_VORBIS_CODEC_ID.data);
    TRACK.sample_rate = cast,no_check(float64) sample_rate;
    TRACK.channels = cast,no_check(u64) channels;

    if !add_track(*tracks, *TRACK.track, number_value) {
        {
            cpp_transpiler_delete_g167 := cast,no_check(*Mkvmuxer_Audio_Track) (TRACK);
            if cpp_transpiler_delete_g167 != null {
                cpp_transpiler_dispatch_mkvmuxer_Track_destructor(
                    cast,no_check(*Mkvmuxer_Track) cpp_transpiler_delete_g167
                );
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g167);
            }
        }
        return 0;
    }

    return number(*TRACK.track);
}

add_chapter :: (using segment: *Mkvmuxer_Segment) -> *Chapter {
    return add_chapter(*chapters, *seed);
}

add_tag :: (using segment: *Mkvmuxer_Segment) -> *Tag {
    return add_tag(*tags);
}

add_frame :: (
    using segment: *Mkvmuxer_Segment,
    data: *u8,
    length: u64,
    track_number: u64,
    timestamp: u64,
    is_key: bool
) -> bool {
    if data == null {
        return false;
    }

    frame: Frame = ---;
    defer deinit_3(*frame);
    init_6(*frame);
    if !init_7(*frame, data, length) {
        return false;
    }
    frame.track_number = track_number;
    frame.timestamp = timestamp;
    frame.is_key = is_key;
    return add_generic_frame(segment, *frame);
}

add_metadata :: (
    using segment: *Mkvmuxer_Segment,
    data: *u8,
    length: u64,
    track_number: u64,
    timestamp_ns: u64,
    duration_ns: u64
) -> bool {
    if data == null {
        return false;
    }

    frame: Frame = ---;
    defer deinit_3(*frame);
    init_6(*frame);
    if !init_7(*frame, data, length) {
        return false;
    }
    frame.track_number = track_number;
    frame.timestamp = timestamp_ns;
    set_duration(*frame, duration_ns);
    frame.is_key = true;
    return add_generic_frame(segment, *frame);
}

add_frame_with_additional :: (
    using segment: *Mkvmuxer_Segment,
    data: *u8,
    length: u64,
    additional: *u8,
    additional_length: u64,
    add_id: u64,
    track_number: u64,
    timestamp: u64,
    is_key: bool
) -> bool {
    if data == null || additional == null {
        return false;
    }

    frame: Frame = ---;
    defer deinit_3(*frame);
    init_6(*frame);
    if !init_7(*frame, data, length) || !add_additional_data(*frame, additional, additional_length, add_id) {
        return false;
    }
    frame.track_number = track_number;
    frame.timestamp = timestamp;
    frame.is_key = is_key;
    return add_generic_frame(segment, *frame);
}

add_frame_with_discard_padding :: (
    using segment: *Mkvmuxer_Segment,
    data: *u8,
    length: u64,
    discard_padding: s64,
    track_number: u64,
    timestamp: u64,
    is_key: bool
) -> bool {
    if data == null {
        return false;
    }

    frame: Frame = ---;
    defer deinit_3(*frame);
    init_6(*frame);
    if !init_7(*frame, data, length) {
        return false;
    }
    frame.discard_padding = discard_padding;
    frame.track_number = track_number;
    frame.timestamp = timestamp;
    frame.is_key = is_key;
    return add_generic_frame(segment, *frame);
}

add_video_track :: (using segment: *Mkvmuxer_Segment, width: s32, height: s32, number_value: s32) -> u64 {
    TRACK :=
        cast,no_check(*Mkvmuxer_Video_Track) (cast(*Mkvmuxer_Video_Track) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Video_Track)
        ));
    init_26(TRACK, *seed);
    if TRACK == null {
        return 0;
    }

    TRACK.track.type = cast,no_check(u64) MKVMUXER_TRACKS_K_VIDEO;
    set_codec_id(*TRACK.track, MKVMUXER_TRACKS_K_VP8_CODEC_ID.data);
    TRACK.width = cast,no_check(u64) width;
    TRACK.height = cast,no_check(u64) height;

    if !add_track(*tracks, *TRACK.track, number_value) {
        {
            cpp_transpiler_delete_g168 := cast,no_check(*Mkvmuxer_Video_Track) (TRACK);
            if cpp_transpiler_delete_g168 != null {
                cpp_transpiler_dispatch_mkvmuxer_Track_destructor(
                    cast,no_check(*Mkvmuxer_Track) cpp_transpiler_delete_g168
                );
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g168);
            }
        }
        return 0;
    }
    has_video = true;

    return number(*TRACK.track);
}

copy_and_move_cues_before_clusters :: (
    segment: *Mkvmuxer_Segment,
    reader: *I_Mkv_Reader,
    writer: *I_Mkv_Writer
) -> bool {
    if !cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Seekable(writer) || segment.chunking {
        return false;
    }
    CLUSTER_OFFSET :=
        size_position(segment.cluster_list[0]) -
            cast(s64) mkvmuxer_GetUIntSize(cast,no_check(Uint64) LIBWEBM_K_MKV_CLUSTER);

    if !mkvmuxer_ChunkedCopy(reader, writer, 0, CLUSTER_OFFSET) {
        return false;
    }

    move_cues_before_clusters(segment);

    if !write(*segment.cues, writer) || !finalize(*segment.seek_head, writer) {
        return false;
    }

    if !mkvmuxer_ChunkedCopy(reader, writer, CLUSTER_OFFSET, segment.cluster_end_offset - CLUSTER_OFFSET) {
        return false;
    }

    POS := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    SEGMENT_SIZE := (cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer) - segment.payload_pos);
    if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer, segment.size_position) != 0 ||
        mkvmuxer_WriteUIntSize(writer, cast,no_check(Uint64) SEGMENT_SIZE, 8) != 0 ||
        cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer, POS) != 0 {
        return false;
    }
    return true;
}

mkvmuxer_ChunkedCopy :: (source: *I_Mkv_Reader, dst: *I_Mkv_Writer, start: s64, size: s64) -> bool {
    K_BUF_SIZE: u32 = 2048;
    buf := cast,no_check(*u8) (cast(*u8) cpp_transpiler_allocate_array_raw(cast,no_check(u64) K_BUF_SIZE, size_of(u8)));
    if buf == null {
        return false;
    }
    offset := start;
    while size > 0 {
        READ_LEN := (ifx size > cast,no_check(s64) K_BUF_SIZE then cast,no_check(s64) K_BUF_SIZE else size);
        if cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(source, offset, READ_LEN, buf) != 0 {
            {
                cpp_transpiler_delete_g169 := cast,no_check(*u8) (buf);
                if cpp_transpiler_delete_g169 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g169);
                }
            }
            return false;
        }
        cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write(dst, cast(*void) buf, cast,no_check(u32) READ_LEN);
        offset += READ_LEN;
        size -= READ_LEN;
    }
    {
        cpp_transpiler_delete_g170 := cast,no_check(*u8) (buf);
        if cpp_transpiler_delete_g170 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g170);
        }
    }
    return true;
}

cues_track :: (using segment: *Mkvmuxer_Segment, track_number: u64) -> bool {
    TRACK := cast,no_check(*Mkvmuxer_Track) (get_track_by_number(segment, track_number));
    if TRACK == null {
        return false;
    }

    cues_track = track_number;
    return true;
}

force_new_cluster_on_next_frame :: (using segment: *Mkvmuxer_Segment) {
    force_new_cluster = true;
}

finalize :: (using segment: *Mkvmuxer_Segment) -> bool {
    if write_frames_all(segment) < 0 {
        return false;
    }

    if ifx cast,no_check(s32) mode == cast,no_check(s32) MKVMUXER_SEGMENT_K_LIVE then accurate_cluster_duration else true &&
        cluster_list_size > 0 {
        OLD_CLUSTER: *Mkvmuxer_Cluster = cast,no_check(*Mkvmuxer_Cluster) cluster_list[cluster_list_size - 1];

        if OLD_CLUSTER == null || !finalize(OLD_CLUSTER, false, 0) {
            return false;
        }
    }

    if cast,no_check(s32) mode == cast,no_check(s32) MKVMUXER_SEGMENT_K_FILE {
        if chunking && chunk_writer_cluster != null {
            close_2(chunk_writer_cluster);
            chunk_count += 1;
        }

        _duration := ((cast,no_check(float64) last_timestamp) + last_block_duration) / timecode_scale(*segment_info);
        if c_transpiler_float_greater(duration, 0.0) {
            _duration = duration;
        } else if last_block_duration == 0 && estimate_file_duration {
            NUM_TRACKS := cast,no_check(s32) track_entries_size(*tracks);
            if 0 < NUM_TRACKS {
                for i: 0..NUM_TRACKS - 1 {
                    if track_frames_written[i] < 2 {
                        continue;
                    }

                    NANO_PER_FRAME := (cast,no_check(float64) last_track_timestamp[i]) / (track_frames_written[i] - 1);
                    TRACK_DURATION := (last_track_timestamp[i] + NANO_PER_FRAME) / timecode_scale(*segment_info);
                    if c_transpiler_float_greater(TRACK_DURATION, _duration) {
                        _duration = TRACK_DURATION;
                    }
                }
            }
        }
        segment_info.duration = _duration;
        if !finalize(*segment_info, writer_header) {
            return false;
        }

        if output_cues {
            if !add_seek_entry(*seek_head, cast,no_check(u32) (LIBWEBM_K_MKV_CUES), cast,no_check(u64) max_offset(segment)) {
                return false;
            }
        }

        if chunking {
            if chunk_writer_cues == null {
                return false;
            }

            name: *s8 = cast,no_check(*s8) (cast(*s8) null);
            if !update_chunk_name(segment, c_string("cues"), *name) {
                return false;
            }

            CUES_OPEN := open_2(chunk_writer_cues, name);
            {
                cpp_transpiler_delete_g171 := cast,no_check(*s8) (name);
                if cpp_transpiler_delete_g171 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g171);
                }
            }
            if !CUES_OPEN {
                return false;
            }
        }

        cluster_end_offset = cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer_cluster);

        if output_cues {
            if !write(*cues, writer_cues) {
                return false;
            }
        }

        if !finalize(*seek_head, writer_header) {
            return false;
        }

        if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Seekable(writer_header) {
            if size_position == -1 {
                return false;
            }

            SEGMENT_SIZE := max_offset(segment);
            if SEGMENT_SIZE < 1 {
                return false;
            }

            POS := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer_header);
            update_doc_type_version(segment);
            if doc_type_version != doc_type_version_written {
                if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer_header, 0) != 0 {
                    return false;
                }

                DOC_TYPE :=
                    cast,no_check(*s8) ((ifx doc_type_is_webm(segment) then cast,no_check(*s8) (K_DOC_TYPE_WEBM.data) else cast,no_check(*s8) (K_DOC_TYPE_MATROSKA.data)));
                if !mkvmuxer_WriteEbmlHeader(writer_header, cast,no_check(u64) doc_type_version, DOC_TYPE) {
                    return false;
                }
                if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer_header) != cast,no_check(Int64) ebml_header_size {
                    return false;
                }

                doc_type_version_written = doc_type_version;
            }

            if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer_header, size_position) != 0 {
                return false;
            }

            if mkvmuxer_WriteUIntSize(writer_header, cast,no_check(Uint64) SEGMENT_SIZE, 8) != 0 {
                return false;
            }

            if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2(writer_header, POS) != 0 {
                return false;
            }
        }

        if chunking {
            if chunk_writer_cues == null || chunk_writer_header == null {
                return false;
            }

            close_2(chunk_writer_cues);
            close_2(chunk_writer_header);
        }
    }

    return true;
}

output_cues :: (using segment: *Mkvmuxer_Segment, _output_cues: bool) {
    output_cues = _output_cues;
}

accurate_cluster_duration :: (using segment: *Mkvmuxer_Segment, _accurate_cluster_duration: bool) {
    accurate_cluster_duration = _accurate_cluster_duration;
}

use_fixed_size_cluster_timecode :: (using segment: *Mkvmuxer_Segment, _fixed_size_cluster_timecode: bool) {
    fixed_size_cluster_timecode = _fixed_size_cluster_timecode;
}

set_chunking :: (using segment: *Mkvmuxer_Segment, _chunking: bool, filename: *s8) -> bool {
    if chunk_count > 0 {
        return false;
    }

    if _chunking {
        if filename == null {
            return false;
        }

        if chunking && compare_cstrings(filename, chunking_base_name) == 0 {
            return true;
        }

        FILENAME_LENGTH := cstring_length(filename);
        TEMP := cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(FILENAME_LENGTH + 1, size_of(s8)));
        if TEMP == null {
            return false;
        }

        copy_memory(TEMP, filename, FILENAME_LENGTH);
        TEMP[FILENAME_LENGTH] = 0;

        {
            cpp_transpiler_delete_g172 := cast,no_check(*s8) (chunking_base_name);
            if cpp_transpiler_delete_g172 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g172);
            }
        }
        chunking_base_name = cast,no_check(*s8) (TEMP);

        if !update_chunk_name(segment, c_string("chk"), *chunk_name) {
            return false;
        }

        if chunk_writer_cluster == null {
            chunk_writer_cluster =
                cast,no_check(*Mkv_Writer) ((ifx true {
        cpp_transpiler_new_g173 :=
            cast,no_check(*Mkv_Writer) (cast(*Mkv_Writer) cpp_transpiler_allocate_raw(
                size_of(Mkv_Writer)
            ));
        init_144(cpp_transpiler_new_g173);
        cpp_transpiler_new_g173;
    })
    );
            if chunk_writer_cluster == null {
                return false;
            }
        }

        if chunk_writer_cues == null {
            chunk_writer_cues =
                cast,no_check(*Mkv_Writer) ((ifx true {
        cpp_transpiler_new_g174 :=
            cast,no_check(*Mkv_Writer) (cast(*Mkv_Writer) cpp_transpiler_allocate_raw(
                size_of(Mkv_Writer)
            ));
        init_144(cpp_transpiler_new_g174);
        cpp_transpiler_new_g174;
    })
    );
            if chunk_writer_cues == null {
                return false;
            }
        }

        if chunk_writer_header == null {
            chunk_writer_header =
                cast,no_check(*Mkv_Writer) ((ifx true {
        cpp_transpiler_new_g175 :=
            cast,no_check(*Mkv_Writer) (cast(*Mkv_Writer) cpp_transpiler_allocate_raw(
                size_of(Mkv_Writer)
            ));
        init_144(cpp_transpiler_new_g175);
        cpp_transpiler_new_g175;
    })
    );
            if chunk_writer_header == null {
                return false;
            }
        }

        if !open_2(chunk_writer_cluster, chunk_name) {
            return false;
        }

        HDR_LENGTH := cstring_length(c_string(".hdr"));
        HEADER_LENGTH := FILENAME_LENGTH + HDR_LENGTH + 1;
        HEADER := cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(HEADER_LENGTH, size_of(s8)));
        if HEADER == null {
            return false;
        }

        copy_memory(HEADER, chunking_base_name, FILENAME_LENGTH);
        copy_memory(*HEADER[FILENAME_LENGTH], c_string(".hdr"), HDR_LENGTH);
        HEADER[FILENAME_LENGTH + HDR_LENGTH] = 0;

        if !open_2(chunk_writer_header, HEADER) {
            {
                cpp_transpiler_delete_g176 := cast,no_check(*s8) (HEADER);
                if cpp_transpiler_delete_g176 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g176);
                }
            }
            return false;
        }

        writer_cluster = cast,no_check(*I_Mkv_Writer) (*chunk_writer_cluster.i_mkv_writer);
        writer_cues = cast,no_check(*I_Mkv_Writer) (*chunk_writer_cues.i_mkv_writer);
        writer_header = cast,no_check(*I_Mkv_Writer) (*chunk_writer_header.i_mkv_writer);

        {
            cpp_transpiler_delete_g177 := cast,no_check(*s8) (HEADER);
            if cpp_transpiler_delete_g177 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g177);
            }
        }
    }

    chunking = _chunking;

    return true;
}

deinit_84 :: (using guard_alloc: *Struct_Vector_Class_Block_Addition_Mapping_Guard_Alloc) {
    if storage != null {
        deallocate_11(vect, storage, len);
    }
}

init_147 :: (
    using guard_alloc: *Struct_Vector_Class_Block_Addition_Mapping_Guard_Alloc,
    s: Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer,
    l: Std_Vector_Size_Type,
    _vect: *Std_Vector_Mkvmuxer_Block_Addition_Mapping_Base
) {
    storage = cast,no_check(Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer) (s);
    len = l;
    vect = cast,no_check(*Std_Vector_Mkvmuxer_Block_Addition_Mapping_Base) _vect;
}

make_class_gnu_cxx_normal_iterator_const_class_mkvmuxer_block_addition_mapping_class_std_h2234329072318249296 :: inline (
    i: **Block_Addition_Mapping
) -> Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping {
    return Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping.{current = cast,no_check(*Block_Addition_Mapping) ((cast(**Block_Addition_Mapping) i).*)};
}

deinit_85 :: (using class_unique_ptr_class_mastering_metadata: *Class_Unique_Ptr_Class_Mastering_Metadata) {
    #assert true; // validated by the C++ frontend
    ptr: *Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer =
        cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) ptr_12(
            cast(*Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) *t
        );
    if (cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) ptr).* != null {
        call_7(
            get_deleter_4(class_unique_ptr_class_mastering_metadata),
            (cast(*Std_Remove_Reference_Mkvmuxer_Mastering_Metadata_Type) ptr).*
        );
    }
    assignment_15: Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) (null);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) ptr).*)).*) = assignment_15;
}

init_148 :: (
    using class_unique_ptr_class_mastering_metadata: *Class_Unique_Ptr_Class_Mastering_Metadata,
    p: Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Pointer
) {
    init_149(*t, p);
}

init_149 :: (
    using struct_uniq_ptr_data_class_mastering_metadata_struct_default_delete_class_mastering_metadata: *Struct_Uniq_Ptr_Data_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata,
    unnamed_33167: Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer
) {
    init_150(
        cast(*Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) struct_uniq_ptr_data_class_mastering_metadata_struct_default_delete_class_mastering_metadata,
        unnamed_33167
    );
}

init_150 :: (
    using class_uniq_ptr_impl_class_mastering_metadata_struct_default_delete_class_mastering_metadata: *Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata,
    p: Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer
) {
    init_151(*t);
    assignment_16: Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer) ptr_12(class_uniq_ptr_impl_class_mastering_metadata_struct_default_delete_class_mastering_metadata)).*)).*) = assignment_16;
}

init_151 :: (
    using class_tuple_class_mastering_metadata_struct_default_delete_class_mastering_metadata: *Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) {
    init_152(
        cast(*Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata) class_tuple_class_mastering_metadata_struct_default_delete_class_mastering_metadata
    );
}

init_152 :: (
    using struct_tuple_impl_0_class_mastering_metadata_struct_default_delete_class_mastering_metadata: *Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata
) {
    init_153(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Mastering_Metadata) struct_tuple_impl_0_class_mastering_metadata_struct_default_delete_class_mastering_metadata
    );
    assignment_17: Struct_Head_Base_0_Class_Mastering_Metadata =
        make_struct_std_head_base_0_class_mkvmuxer_mastering_metadata();
    ((cast,no_check(*Struct_Head_Base_0_Class_Mastering_Metadata) *((cast(*Struct_Head_Base_0_Class_Mastering_Metadata) struct_tuple_impl_0_class_mastering_metadata_struct_default_delete_class_mastering_metadata).*)).*) = assignment_17;
}

init_153 :: (
    using struct_tuple_impl_1_struct_default_delete_class_mastering_metadata: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Mastering_Metadata
) {
    init_154(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Class_Mastering_Metadata) struct_tuple_impl_1_struct_default_delete_class_mastering_metadata
    );
}

init_154 :: (
    using struct_head_base_1_struct_default_delete_class_mastering_metadata: *Struct_Head_Base_1_Struct_Default_Delete_Class_Mastering_Metadata
) {
}

make_struct_std_head_base_0_class_mkvmuxer_mastering_metadata :: () -> Struct_Head_Base_0_Class_Mastering_Metadata {
    return Struct_Head_Base_0_Class_Mastering_Metadata.{head_impl = cast,no_check(*Mkvmuxer_Mastering_Metadata) (null)};
}

deinit_86 :: (using class_unique_ptr_class_colour: *Class_Unique_Ptr_Class_Colour) {
    #assert true; // validated by the C++ frontend
    ptr: *Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer =
        cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) ptr_10(
            cast(*Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour) *t
        );
    if (cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) ptr).* != null {
        call_6(get_deleter_3(class_unique_ptr_class_colour), (cast(*Std_Remove_Reference_Mkvmuxer_Colour_Type) ptr).*);
    }
    assignment_18: Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) (null);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) ptr).*)).*) = assignment_18;
}

init_155 :: (
    using class_unique_ptr_class_colour: *Class_Unique_Ptr_Class_Colour,
    p: Std_Unique_Ptr_Mkvmuxer_Colour_Pointer
) {
    init_156(*t, p);
}

init_156 :: (
    using struct_uniq_ptr_data_class_colour_struct_default_delete_class_colour: *Struct_Uniq_Ptr_Data_Class_Colour_Struct_Default_Delete_Class_Colour,
    unnamed_33233: Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer
) {
    init_157(
        cast(*Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour) struct_uniq_ptr_data_class_colour_struct_default_delete_class_colour,
        unnamed_33233
    );
}

init_157 :: (
    using class_uniq_ptr_impl_class_colour_struct_default_delete_class_colour: *Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour,
    p: Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer
) {
    init_158(*t);
    assignment_19: Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer) ptr_10(class_uniq_ptr_impl_class_colour_struct_default_delete_class_colour)).*)).*) = assignment_19;
}

init_158 :: (
    using class_tuple_class_colour_struct_default_delete_class_colour: *Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour
) {
    init_159(
        cast(*Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour) class_tuple_class_colour_struct_default_delete_class_colour
    );
}

init_159 :: (
    using struct_tuple_impl_0_class_colour_struct_default_delete_class_colour: *Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour
) {
    init_160(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Colour) struct_tuple_impl_0_class_colour_struct_default_delete_class_colour
    );
    assignment_20: Struct_Head_Base_0_Class_Colour = make_struct_std_head_base_0_class_mkvmuxer_colour();
    ((cast,no_check(*Struct_Head_Base_0_Class_Colour) *((cast(*Struct_Head_Base_0_Class_Colour) struct_tuple_impl_0_class_colour_struct_default_delete_class_colour).*)).*) = assignment_20;
}

init_160 :: (
    using struct_tuple_impl_1_struct_default_delete_class_colour: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Colour
) {
    init_161(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Class_Colour) struct_tuple_impl_1_struct_default_delete_class_colour
    );
}

init_161 :: (
    using struct_head_base_1_struct_default_delete_class_colour: *Struct_Head_Base_1_Struct_Default_Delete_Class_Colour
) {
}

make_struct_std_head_base_0_class_mkvmuxer_colour :: () -> Struct_Head_Base_0_Class_Colour {
    return Struct_Head_Base_0_Class_Colour.{head_impl = cast,no_check(*Mkvmuxer_Colour) (null)};
}

deinit_87 :: (using class_unique_ptr_class_projection: *Class_Unique_Ptr_Class_Projection) {
    #assert true; // validated by the C++ frontend
    ptr: *Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer =
        cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) ptr_8(
            cast(*Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection) *t
        );
    if (cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) ptr).* != null {
        call_5(
            get_deleter_2(class_unique_ptr_class_projection),
            (cast(*Std_Remove_Reference_Mkvmuxer_Projection_Type) ptr).*
        );
    }
    assignment_21: Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) (null);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) ptr).*)).*) = assignment_21;
}

init_162 :: (
    using class_unique_ptr_class_projection: *Class_Unique_Ptr_Class_Projection,
    p: Std_Unique_Ptr_Mkvmuxer_Projection_Pointer
) {
    init_163(*t, p);
}

init_163 :: (
    using struct_uniq_ptr_data_class_projection_struct_default_delete_class_projection: *Struct_Uniq_Ptr_Data_Class_Projection_Struct_Default_Delete_Class_Projection,
    unnamed_33299: Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer
) {
    init_164(
        cast(*Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection) struct_uniq_ptr_data_class_projection_struct_default_delete_class_projection,
        unnamed_33299
    );
}

init_164 :: (
    using class_uniq_ptr_impl_class_projection_struct_default_delete_class_projection: *Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection,
    p: Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer
) {
    init_165(*t);
    assignment_22: Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer) ptr_8(class_uniq_ptr_impl_class_projection_struct_default_delete_class_projection)).*)).*) = assignment_22;
}

init_165 :: (
    using class_tuple_class_projection_struct_default_delete_class_projection: *Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection
) {
    init_166(
        cast(*Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection) class_tuple_class_projection_struct_default_delete_class_projection
    );
}

init_166 :: (
    using struct_tuple_impl_0_class_projection_struct_default_delete_class_projection: *Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection
) {
    init_167(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Projection) struct_tuple_impl_0_class_projection_struct_default_delete_class_projection
    );
    assignment_23: Struct_Head_Base_0_Class_Projection = make_struct_std_head_base_0_class_mkvmuxer_projection();
    ((cast,no_check(*Struct_Head_Base_0_Class_Projection) *((cast(*Struct_Head_Base_0_Class_Projection) struct_tuple_impl_0_class_projection_struct_default_delete_class_projection).*)).*) = assignment_23;
}

init_167 :: (
    using struct_tuple_impl_1_struct_default_delete_class_projection: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Projection
) {
    init_168(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Class_Projection) struct_tuple_impl_1_struct_default_delete_class_projection
    );
}

init_168 :: (
    using struct_head_base_1_struct_default_delete_class_projection: *Struct_Head_Base_1_Struct_Default_Delete_Class_Projection
) {
}

make_struct_std_head_base_0_class_mkvmuxer_projection :: () -> Struct_Head_Base_0_Class_Projection {
    return Struct_Head_Base_0_Class_Projection.{head_impl = cast,no_check(*Mkvmuxer_Projection) (null)};
}

make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame :: (
    x: Std_Rb_Tree_Iterator_Base_Ptr
) -> Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame {
    return Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame.{node = cast,no_check(Std_Rb_Tree_Iterator_Base_Ptr) (x)};
}

make_struct_std_list_iterator_class_mkvmuxer_frame :: (x: *List_Node_Base) -> Struct_List_Iterator_Class_Frame {
    return Struct_List_Iterator_Class_Frame.{node = cast,no_check(*List_Node_Base) (x)};
}

make_struct_std_rb_tree_const_iterator_struct_std_pair_const_unsigned_long_class_std_list_class_mkvmuxer_frame :: (
    it_: *Std_Rb_Tree_Const_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Iterator
) -> Struct_Rb_Tree_Const_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame {
    return Struct_Rb_Tree_Const_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame.{node = cast,no_check(Std_Rb_Tree_Const_Iterator_Base_Ptr) (it_.node)};
}

make_struct_std_rb_tree_iterator_struct_std_pair_const_unsigned_long_unsigned_long :: (
    x: Std_Rb_Tree_Iterator_Base_Ptr
) -> Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long {
    return Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long.{node = cast,no_check(Std_Rb_Tree_Iterator_Base_Ptr) (x)};
}

deinit_88 :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H6684199253886259110
) {
    if node != null {
        drop_node(t, node);
    }
}

init_169 :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H6684199253886259110,
    _t: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396,
    args_value_inner: *Piecewise_Construct_T,
    args_value: *Class_Tuple_Unsigned_Long,
    args: *Class_Tuple
) {
    t =
        cast,no_check(*Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396) _t;
    node =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903) (create_node(_t, args_value_inner, args_value, args));
}

init_170 :: (
    using struct_pair_const_unsigned_long_unsigned_long: *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long,
    unnamed_33394: Piecewise_Construct_T,
    _first: Class_Tuple_Unsigned_Long,
    _second: Class_Tuple
) {
    local__first: Class_Tuple_Unsigned_Long = _first;
    local__second: Class_Tuple = _second;
    init_171(
        struct_pair_const_unsigned_long_unsigned_long,
        *local__first,
        *local__second,
        Std_Build_Index_Tuple_1_Type.{},
        Std_Build_Index_Tuple_0_Type.{}
    );
}

init_171 :: (
    using struct_pair_const_unsigned_long_unsigned_long: *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long,
    tuple1: *Class_Tuple_Unsigned_Long,
    tuple2: *Class_Tuple,
    unnamed_33400: Struct_Index_Tuple_0,
    unnamed_33401: Struct_Index_Tuple
) {
    first = ((cast(**u64) *(std_get_13(tuple1))).*).*;
    second = cast,no_check(u64) 0;
}

init_172 :: (using class_tuple_unsigned_long: *Class_Tuple_Unsigned_Long, unnamed_26516: *Class_Tuple_Unsigned_Long) {
    init_173(
        cast(*Struct_Tuple_Impl_0_Unsigned_Long) class_tuple_unsigned_long,
        cast(*Struct_Tuple_Impl_0_Unsigned_Long) ((cast(**Class_Tuple_Unsigned_Long) *(unnamed_26516)).*)
    );
}

init_173 :: (
    using struct_tuple_impl_0_unsigned_long: *Struct_Tuple_Impl_0_Unsigned_Long,
    in: *Struct_Tuple_Impl_0_Unsigned_Long
) {
    assignment_24: Struct_Head_Base_0_Unsigned_Long = (cast(*Struct_Head_Base_0_Unsigned_Long) in).*;
    ((cast,no_check(*Struct_Head_Base_0_Unsigned_Long) *((cast(*Struct_Head_Base_0_Unsigned_Long) struct_tuple_impl_0_unsigned_long).*)).*) = assignment_24;
}

init_174 :: (
    using struct_pair_struct_rb_tree_node_base_struct_rb_tree_node_base: *Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base,
    x: **Rb_Tree_Node_Base,
    y: **Rb_Tree_Node_Base
) {
    first = cast,no_check(*Rb_Tree_Node_Base) ((cast(**Rb_Tree_Node_Base) x).*);
    second = cast,no_check(*Rb_Tree_Node_Base) ((cast(**Rb_Tree_Node_Base) y).*);
}

init_175 :: (
    using struct_pair_struct_rb_tree_node_base_struct_rb_tree_node_base: *Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base,
    x: **Rb_Tree_Node_Base,
    y: **Rb_Tree_Node_Base
) {
    first = cast,no_check(*Rb_Tree_Node_Base) ((cast(**Rb_Tree_Node_Base) x).*);
    second = cast,no_check(*Rb_Tree_Node_Base) ((cast(**Rb_Tree_Node_Base) y).*);
}

init_176 :: (
    using struct_pair_struct_rb_tree_node_base_struct_rb_tree_node_base: *Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base,
    x: **Rb_Tree_Node_Base,
    y: **Rb_Tree_Node_Base
) {
    first = cast,no_check(*Rb_Tree_Node_Base) ((cast(**Rb_Tree_Node_Base) x).*);
    second = cast,no_check(*Rb_Tree_Node_Base) ((cast(**Rb_Tree_Node_Base) y).*);
}

make_struct_std_rb_tree_const_iterator_struct_std_pair_const_unsigned_long_unsigned_long :: (
    it_: *Std_Rb_Tree_Const_Iterator_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Iterator
) -> Struct_Rb_Tree_Const_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long {
    return Struct_Rb_Tree_Const_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long.{node = cast,no_check(Std_Rb_Tree_Const_Iterator_Base_Ptr) (it_.node)};
}

init_177 :: (using class_tuple_unsigned_long: *Class_Tuple_Unsigned_Long, elements: *u64) {
    init_178(cast(*Struct_Tuple_Impl_0_Unsigned_Long) class_tuple_unsigned_long, elements);
}

init_178 :: (using struct_tuple_impl_0_unsigned_long: *Struct_Tuple_Impl_0_Unsigned_Long, head: *u64) {
    init_179(cast(*Struct_Head_Base_0_Unsigned_Long) struct_tuple_impl_0_unsigned_long, head);
}

init_179 :: (using struct_head_base_0_unsigned_long: *Struct_Head_Base_0_Unsigned_Long, h: *u64) {
    head_impl = cast,no_check(*u64) h;
}

deinit_89 :: (
    using struct_allocated_obj_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame
) {
    cpp_transpiler_subobject_cleanup_g178: bool = ---;
    defer deinit_90(
        cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) struct_allocated_obj_class_allocator_struct_list_node_class_frame
    );
    if operator_bool(
        cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) struct_allocated_obj_class_allocator_struct_list_node_class_frame
    ) {
        get_2(
            cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) struct_allocated_obj_class_allocator_struct_list_node_class_frame
        );
    }
}

deinit_90 :: (
    using struct_allocated_ptr_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame
) {
    if ptr != null {
        deallocate_2(alloc_, ptr, 1);
    }
}

init_180 :: (
    using struct_allocated_obj_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame,
    unnamed_26495: *Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame
) {
    init_181(
        cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) struct_allocated_obj_class_allocator_struct_list_node_class_frame,
        cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) ((cast(**Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame) *(unnamed_26495)).*)
    );
}

init_181 :: (
    using struct_allocated_ptr_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame,
    gd: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame
) {
    alloc_ = cast,no_check(*Class_Allocator_Struct_List_Node_Class_Frame) (gd.alloc_);
    ptr = cast,no_check(Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer) (gd.ptr);
    gd.ptr =
        cast,no_check(Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer) (cast(Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer) null);
}

init_182 :: (
    using struct_allocated_obj_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame,
    ptr: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame
) {
    init_181(
        cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) struct_allocated_obj_class_allocator_struct_list_node_class_frame,
        ptr
    );
    cast(*Std_Allocated_Obj_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type) cast(*void) get_2(
        cast(*Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame) struct_allocated_obj_class_allocator_struct_list_node_class_frame
    );
}

init_183 :: (
    using struct_allocated_ptr_class_allocator_struct_list_node_class_frame: *Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame,
    a: *Class_Allocator_Struct_List_Node_Class_Frame,
    _ptr: Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer
) {
    alloc_ = cast,no_check(*Class_Allocator_Struct_List_Node_Class_Frame) a;
    ptr = cast,no_check(Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer) (_ptr);
}

deinit_91 :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H5383162374263181388
) {
    if node != null {
        drop_node(t, node);
    }
}

init_184 :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H5383162374263181388,
    _t: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    args_value_inner: *Piecewise_Construct_T,
    args_value: *Class_Tuple_Const_Unsigned_Long,
    args: *Class_Tuple
) {
    t =
        cast,no_check(*Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074) _t;
    node =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) (create_node(_t, args_value_inner, args_value, args));
}

init_185 :: (
    using struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    unnamed_33583: Piecewise_Construct_T,
    _first: Class_Tuple_Const_Unsigned_Long,
    _second: Class_Tuple
) {
    local__first: Class_Tuple_Const_Unsigned_Long = _first;
    local__second: Class_Tuple = _second;
    init_186(
        struct_pair_const_unsigned_long_class_list_class_frame,
        *local__first,
        *local__second,
        Std_Build_Index_Tuple_1_Type.{},
        Std_Build_Index_Tuple_0_Type.{}
    );
}

init_186 :: (
    using struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    tuple1: *Class_Tuple_Const_Unsigned_Long,
    tuple2: *Class_Tuple,
    unnamed_33588: Struct_Index_Tuple_0,
    unnamed_33589: Struct_Index_Tuple
) {
    first = ((cast(**u64) *(std_get_14(tuple1))).*).*;
    init_187(*second);
}

init_187 :: (using class_list_class_frame: *Class_List_Class_Frame) {
    init_188(cast(*Class_List_Base_Class_Frame_Class_Allocator_Class_Frame) class_list_class_frame);
}

init_188 :: (
    using class_list_base_class_frame_class_allocator_class_frame: *Class_List_Base_Class_Frame_Class_Allocator_Class_Frame
) {
    init_189(*impl);
}

init_189 :: (using list_impl: *Struct_List_Base_Class_Frame_Class_Allocator_Class_Frame_List_Impl) {
    init_190(cast(*Class_Allocator_Struct_List_Node_Class_Frame) list_impl);
    init_192(*node);
}

init_190 :: inline (using class_allocator_struct_list_node_class_frame: *Class_Allocator_Struct_List_Node_Class_Frame) {
    init_191(cast(*Class_New_Allocator_Struct_List_Node_Class_Frame) class_allocator_struct_list_node_class_frame);
}

init_191 :: inline (
    using class_new_allocator_struct_list_node_class_frame: *Class_New_Allocator_Struct_List_Node_Class_Frame
) {
}

init_192 :: (using list_node_header: *List_Node_Header) {
    init_126(list_node_header);
}

init_193 :: (
    using class_tuple_const_unsigned_long: *Class_Tuple_Const_Unsigned_Long,
    unnamed_26472: *Class_Tuple_Const_Unsigned_Long
) {
    init_194(
        cast(*Struct_Tuple_Impl_0_Const_Unsigned_Long) class_tuple_const_unsigned_long,
        cast(*Struct_Tuple_Impl_0_Const_Unsigned_Long) ((cast(**Class_Tuple_Const_Unsigned_Long) *(unnamed_26472)).*)
    );
}

init_194 :: (
    using struct_tuple_impl_0_const_unsigned_long: *Struct_Tuple_Impl_0_Const_Unsigned_Long,
    in: *Struct_Tuple_Impl_0_Const_Unsigned_Long
) {
    assignment_25: Struct_Head_Base_0_Const_Unsigned_Long = (cast(*Struct_Head_Base_0_Const_Unsigned_Long) in).*;
    ((cast,no_check(*Struct_Head_Base_0_Const_Unsigned_Long) *((cast(*Struct_Head_Base_0_Const_Unsigned_Long) struct_tuple_impl_0_const_unsigned_long).*)).*) = assignment_25;
}

init_195 :: (using class_tuple_const_unsigned_long: *Class_Tuple_Const_Unsigned_Long, elements: *u64) {
    init_196(cast(*Struct_Tuple_Impl_0_Const_Unsigned_Long) class_tuple_const_unsigned_long, elements);
}

init_196 :: (using struct_tuple_impl_0_const_unsigned_long: *Struct_Tuple_Impl_0_Const_Unsigned_Long, head: *u64) {
    init_197(cast(*Struct_Head_Base_0_Const_Unsigned_Long) struct_tuple_impl_0_const_unsigned_long, head);
}

init_197 :: (using struct_head_base_0_const_unsigned_long: *Struct_Head_Base_0_Const_Unsigned_Long, h: *u64) {
    head_impl = cast,no_check(*u64) h;
}

deinit_92 :: (using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame) {
    cpp_transpiler_subobject_cleanup_g179: bool = ---;
    defer deinit_93(
        cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame
    );
    std_destroy(
        ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).start,
        ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) (*((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame).impl))).*).finish,
        get_tp_allocator_2(
        cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame
    )
    );
}

std_destroy :: inline (
    first: *Struct_List_Iterator_Class_Frame,
    last: *Struct_List_Iterator_Class_Frame,
    unnamed_33659: *Class_Allocator_Struct_List_Iterator_Class_Frame
) {
    std_destroy(first, last);
}

std_destroy :: (first: *Struct_List_Iterator_Class_Frame, last: *Struct_List_Iterator_Class_Frame) {

}

deinit_93 :: (
    using struct_vector_base_struct_list_iterator_class_frame_class_allocator_struct_list_iterator_class_frame: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame
) {
    cpp_transpiler_subobject_cleanup_g180: bool = ---;
    defer deinit_94(*impl);
    {
        n :=
            ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) *impl).*).end_of_storage -
                ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) *impl).*).start;
        if n < 0 {
            c_transpiler_unreachable();
        }
        deallocate_6(
            struct_vector_base_struct_list_iterator_class_frame_class_allocator_struct_list_iterator_class_frame,
            ((cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) *impl).*).start,
            cast,no_check(u64) n
        );
    }
}

deinit_94 :: (
    using vector_impl: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1141182370091231559
) {
    cpp_transpiler_subobject_cleanup_g181: bool = ---;
    defer deinit_95(cast(*Class_Allocator_Struct_List_Iterator_Class_Frame) vector_impl);
}

deinit_95 :: inline (
    using class_allocator_struct_list_iterator_class_frame: *Class_Allocator_Struct_List_Iterator_Class_Frame
) {
    cpp_transpiler_subobject_cleanup_g182: bool = ---;
    defer deinit_96(
        cast(*Class_New_Allocator_Struct_List_Iterator_Class_Frame) class_allocator_struct_list_iterator_class_frame
    );
}

deinit_96 :: (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame
) {
}

init_198 :: (using class_vector_struct_list_iterator_class_frame: *Class_Vector_Struct_List_Iterator_Class_Frame) {
    init_199(
        cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame) class_vector_struct_list_iterator_class_frame
    );
}

init_199 :: (
    using struct_vector_base_struct_list_iterator_class_frame_class_allocator_struct_list_iterator_class_frame: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame
) {
    init_200(*impl);
}

init_200 :: (
    using vector_impl: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1141182370091231559
) {
    init_201(cast(*Class_Allocator_Struct_List_Iterator_Class_Frame) vector_impl);
    make_struct_std_vector_base_struct_std_list_iterator_class_mkvmuxer_frame_class_std_allo_h6934431909891975268(
        cast(*Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600) vector_impl
    );
}

init_201 :: inline (
    using class_allocator_struct_list_iterator_class_frame: *Class_Allocator_Struct_List_Iterator_Class_Frame
) {
    init_202(
        cast(*Class_New_Allocator_Struct_List_Iterator_Class_Frame) class_allocator_struct_list_iterator_class_frame
    );
}

init_202 :: inline (
    using class_new_allocator_struct_list_iterator_class_frame: *Class_New_Allocator_Struct_List_Iterator_Class_Frame
) {
}

make_struct_std_vector_base_struct_std_list_iterator_class_mkvmuxer_frame_class_std_allo_h6934431909891975268 :: (
    result: *Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600
) {
    result.start =
        cast,no_check(Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (null);
    result.finish =
        cast,no_check(Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (null);
    result.end_of_storage =
        cast,no_check(Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (null);
}

deinit_97 :: (using guard_alloc: *Struct_Vector_Struct_List_Iterator_Class_Frame_Guard_Alloc) {
    if storage != null {
        deallocate_6(vect, storage, len);
    }
}

init_203 :: (
    using guard_alloc: *Struct_Vector_Struct_List_Iterator_Class_Frame_Guard_Alloc,
    s: Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer,
    l: Std_Vector_Size_Type,
    _vect: *Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Base
) {
    storage = cast,no_check(Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer) (s);
    len = l;
    vect = cast,no_check(*Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Base) _vect;
}

make_class_gnu_cxx_normal_iterator_struct_std_list_iterator_class_mkvmuxer_frame_class_s_h2387288532399407780 :: inline (
    i: **Struct_List_Iterator_Class_Frame
) -> Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame {
    return Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame.{current = cast,no_check(*Struct_List_Iterator_Class_Frame) ((cast(**Struct_List_Iterator_Class_Frame) i).*)};
}

make_struct_std_list_const_iterator_class_mkvmuxer_frame :: (
    x: *Std_List_Const_Iterator_Mkvmuxer_Frame_Iterator
) -> Struct_List_Const_Iterator_Class_Frame {
    return Struct_List_Const_Iterator_Class_Frame.{node = cast,no_check(*List_Node_Base) (x.node)};
}

init_204 :: (
    using auto_node: *Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H5383162374263181388,
    _t: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074,
    args_value_inner: *Piecewise_Construct_T,
    args_value: *Class_Tuple_Unsigned_Long,
    args: *Class_Tuple
) {
    t =
        cast,no_check(*Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074) _t;
    node =
        cast,no_check(Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891) (create_node(_t, args_value_inner, args_value, args));
}

init_205 :: (
    using struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    unnamed_33749: Piecewise_Construct_T,
    _first: Class_Tuple_Unsigned_Long,
    _second: Class_Tuple
) {
    local__first: Class_Tuple_Unsigned_Long = _first;
    local__second: Class_Tuple = _second;
    init_206(
        struct_pair_const_unsigned_long_class_list_class_frame,
        *local__first,
        *local__second,
        Std_Build_Index_Tuple_1_Type.{},
        Std_Build_Index_Tuple_0_Type.{}
    );
}

init_206 :: (
    using struct_pair_const_unsigned_long_class_list_class_frame: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame,
    tuple1: *Class_Tuple_Unsigned_Long,
    tuple2: *Class_Tuple,
    unnamed_33754: Struct_Index_Tuple_0,
    unnamed_33755: Struct_Index_Tuple
) {
    first = ((cast(**u64) *(std_get_13(tuple1))).*).*;
    init_187(*second);
}

init_207 :: (using guard: *Class_Basic_String_Char_M_Construct_Guard_in_basic_string, s: *Class_Basic_String_Char) {
    guarded = cast,no_check(*Class_Basic_String_Char) (s);
}

deinit_98 :: (using guard: *Class_Basic_String_Char_M_Construct_Guard_in_basic_string) {
    if guarded != null {
        dispose(guarded);
    }
}

mkvmuxer_WriteEbmlHeader :: (writer: *I_Mkv_Writer, doc_type_version: u64) -> bool {
    return mkvmuxer_WriteEbmlHeader(writer, doc_type_version, K_DOC_TYPE_WEBM.data);
}

mkvmuxer_WriteEbmlHeader :: (writer: *I_Mkv_Writer) -> bool {
    return mkvmuxer_WriteEbmlHeader(writer, cast,no_check(u64) cast(u32) 4);
}

globals_initialization_state_for_mkvmuxer: u32;
initialize_globals_for_mkvmuxer :: () {
    {
        state := atomic_load(*globals_initialization_state_for_mkvmuxer);
        if state == 2 return;
        won, _ := compare_and_swap(*globals_initialization_state_for_mkvmuxer, 0, 1);
        if !won {
            while atomic_load(*globals_initialization_state_for_mkvmuxer) != 2 {}
            return;
        }
    }
    PIECEWISE_CONSTRUCT = Piecewise_Construct_T.{};
    K_MAX_TRACK_NUMBER_storage = 126;
    MKVMUXER_SEEK_HEAD_K_SEEK_ENTRY_COUNT = 5;
    MKVMUXER_SEGMENT_K_DEFAULT_DOC_TYPE_VERSION = 4;
    MKVMUXER_SEGMENT_K_DEFAULT_MAX_CLUSTER_DURATION = 30000000000;
    K_EBML_UNKNOWN_VALUE = 0x1ffffffffffffff;
    K_MAX_BLOCK_TIMECODE = 0x7fff;
    E_PARSE_FAILED_storage = -1;
    E_FILE_FORMAT_INVALID_storage = -2;
    E_BUFFER_NOT_FULL_storage = -3;
    MKVMUXER_PRIMARY_CHROMATICITY_K_CHROMATICITY_MIN = 0.0;
    MKVMUXER_PRIMARY_CHROMATICITY_K_CHROMATICITY_MAX = 1.0;
    MKVMUXER_MASTERING_METADATA_K_MIN_LUMINANCE = 0.0;
    MKVMUXER_MASTERING_METADATA_K_MIN_LUMINANCE_MAX = 999.99;
    MKVMUXER_MASTERING_METADATA_K_MAX_LUMINANCE_MAX = 9999.99;
    MKVMUXER_MASTERING_METADATA_K_VALUE_NOT_PRESENT = cast(float32) 3.4028234663852887e38;
    MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT = cast(u64) 18446744073709551615;
    K_DOC_TYPE_WEBM = s8.[ 119, 101, 98, 109, 0 ];
    K_DOC_TYPE_MATROSKA = s8.[ 109, 97, 116, 114, 111, 115, 107, 97, 0 ];
    MKVMUXER_TRACKS_K_OPUS_CODEC_ID = s8.[ 65, 95, 79, 80, 85, 83, 0 ];
    MKVMUXER_TRACKS_K_VORBIS_CODEC_ID = s8.[ 65, 95, 86, 79, 82, 66, 73, 83, 0 ];
    MKVMUXER_TRACKS_K_AV1_CODEC_ID = s8.[ 86, 95, 65, 86, 49, 0 ];
    MKVMUXER_TRACKS_K_VP8_CODEC_ID = s8.[ 86, 95, 86, 80, 56, 0 ];
    MKVMUXER_TRACKS_K_VP9_CODEC_ID = s8.[ 86, 95, 86, 80, 57, 0 ];
    MKVMUXER_TRACKS_K_WEB_VTT_CAPTIONS_ID =
        s8.[ 68, 95, 87, 69, 66, 86, 84, 84, 47, 67, 65, 80, 84, 73, 79, 78, 83, 0 ];
    MKVMUXER_TRACKS_K_WEB_VTT_DESCRIPTIONS_ID =
        s8.[ 68, 95, 87, 69, 66, 86, 84, 84, 47, 68, 69, 83, 67, 82, 73, 80, 84, 73, 79, 78, 83, 0 ];
    MKVMUXER_TRACKS_K_WEB_VTT_METADATA_ID =
        s8.[ 68, 95, 87, 69, 66, 86, 84, 84, 47, 77, 69, 84, 65, 68, 65, 84, 65, 0 ];
    MKVMUXER_TRACKS_K_WEB_VTT_SUBTITLES_ID =
        s8.[ 68, 95, 87, 69, 66, 86, 84, 84, 47, 83, 85, 66, 84, 73, 84, 76, 69, 83, 0 ];
    atomic_store(*globals_initialization_state_for_mkvmuxer, 2);
}

_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base :: (
    x: *Rb_Tree_Node_Base
) -> *Rb_Tree_Node_Base #foreign Cpp_Transpiler_LibStdCpp;
std_Rb_tree_decrement :: _ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base;

_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base :: (
    x: *Rb_Tree_Node_Base
) -> *Rb_Tree_Node_Base #foreign Cpp_Transpiler_LibStdCpp;
std_Rb_tree_increment :: _ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base;

_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_ :: (
    INSERT_LEFT: bool,
    x: *Rb_Tree_Node_Base,
    p: *Rb_Tree_Node_Base,
    header: *Rb_Tree_Node_Base
) #foreign Cpp_Transpiler_LibStdCpp;
std_Rb_tree_insert_and_rebalance :: _ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_;

snprintf :: (s: *s8, maxlen: u64, format: *s8, variadic_arguments: ..Any) -> s32 #foreign System_Library_libc_so_6;

_ZNSt8__detail15_List_node_base9_M_unhookEv :: (list_node_base: *List_Node_Base) #foreign Cpp_Transpiler_LibStdCpp;
unhook :: _ZNSt8__detail15_List_node_base9_M_unhookEv;

_ZNSt8__detail15_List_node_base7_M_hookEPS0_ :: (
    list_node_base: *List_Node_Base,
    POSITION: *List_Node_Base
) #foreign Cpp_Transpiler_LibStdCpp;
hook :: _ZNSt8__detail15_List_node_base7_M_hookEPS0_;

_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_ :: (
    Z: *Rb_Tree_Node_Base,
    header: *Rb_Tree_Node_Base
) -> *Rb_Tree_Node_Base #foreign Cpp_Transpiler_LibStdCpp;
std_Rb_tree_rebalance_for_erase :: _ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_;

time_2 :: (timer: *Time_T_in_time_t) -> Time_T_in_time_t #foreign System_Library_libc_so_6 "time";

Piecewise_Construct_T :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H5383162374263181388 :: struct {
    t: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074;
    node: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891;
}

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H5405515228116600891 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H11236901342145666593;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H15905145181564765690 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H6639028815362237440;

Struct_Std_Select1st_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame :: struct {
    layout_padding_0: [32] u8 #align 1;
    storage: Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame :: struct {
    first: u64 #align 8;
    second: Class_List_Class_Frame #align 1;
} #no_padding;

Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame :: struct {
    storage: [32] u8 #align 8;
} #no_padding;

Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_First_Type :: u64;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H10700294200669716772 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H17840831742759631042;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H4072827160894027326 :: u64;

Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base :: struct {
    first: *Rb_Tree_Node_Base;
    second: *Rb_Tree_Node_Base;
}

Std_Rb_Tree_Const_Iterator_Base_Ptr :: Std_Rb_Tree_Node_Base_Base_Ptr;

Std_Rb_Tree_Size_Type :: u64;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H6826624601430999646 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H13627146412820475700;

Res :: Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base;

Rb_Tree_Node_Base :: struct {
    color: Std_Rb_Tree_Color;
    parent: Std_Rb_Tree_Node_Base_Base_Ptr;
    left: Std_Rb_Tree_Node_Base_Base_Ptr;
    right: Std_Rb_Tree_Node_Base_Base_Ptr;
}

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H2026865857245802366;

Std_Rb_Tree_Iterator_Base_Ptr :: Std_Rb_Tree_Node_Base_Base_Ptr;

Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame :: struct {
    node: Std_Rb_Tree_Iterator_Base_Ptr;
}

Res_in_stl_tree :: Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base;

Rb_Tree_Header :: struct {
    header: Rb_Tree_Node_Base;
    node_count: u64;
}

Std_Rb_Tree_Node_Base_Base_Ptr :: *Rb_Tree_Node_Base;

Struct_Rb_Tree_Key_Compare_Struct_Less_Unsigned_Long :: struct {
    key_compare: Struct_Less_Unsigned_Long #align 1;
} #no_padding;

Struct_Less_Unsigned_Long :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Type :: u64;

Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Iterator :: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9372229282945697284;

Class_Vector_Struct_List_Iterator_Class_Frame :: struct {
    layout_padding_0: [24] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Iterator :: Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame;

Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame :: struct {
    impl: Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1141182370091231559 #align 8;
} #no_padding;

Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1405784256705403600 :: struct {
    start: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer;
    finish: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer;
    end_of_storage: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer;
}

Struct_List_Iterator_Class_Frame :: struct {
    node: *List_Node_Base;
}

Std_Vector_Size_Type :: u64;

Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Size_Type :: u64;

Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer;

Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Tp_Alloc_Type :: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Tp_Alloc_Type;

Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Tp_Alloc_Type :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Rebind_Std_List_H9382826422315334100;

Class_Allocator_Struct_List_Iterator_Class_Frame :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Allocator_Type :: Class_Allocator_Struct_List_Iterator_Class_Frame;

Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Size_Type :: u64;

Class_New_Allocator_Struct_List_Iterator_Class_Frame :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer :: *Struct_List_Iterator_Class_Frame;

Class_List_Class_Frame :: struct {
    layout_padding_0: [24] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_List_Mkvmuxer_Frame_Iterator :: Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Iterator;

Class_List_Base_Class_Frame_Class_Allocator_Class_Frame :: struct {
    impl: Struct_List_Base_Class_Frame_Class_Allocator_Class_Frame_List_Impl #align 8;
} #no_padding;

List_Node_Header :: struct {
    layout_padding_0: [24] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

List_Node_Base :: struct {
    next: *List_Node_Base;
    prev: *List_Node_Base;
}

Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Mapped_Type :: Class_List_Class_Frame;

Std_Rb_Tree_Const_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Iterator :: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame;

Class_Tuple_Const_Unsigned_Long :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Class_Tuple :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Reference :: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame;

Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Node_Ptr :: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame;

Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base :: Rb_Tree_Node_Base;

Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Key_Compare :: Struct_Less_Unsigned_Long;

Std_List_Base_Mkvmuxer_Frame_Std_Allocator_Mkvmuxer_Frame_Node_Alloc_Type :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Rebind_Std_List_Node_Mkvmuxer_Frame_Other;

Class_Allocator_Struct_List_Node_Class_Frame :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Allocated_Obj_Class_Allocator_Struct_List_Node_Class_Frame :: struct {
    layout_padding_0: [16] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Allocated_Ptr_Class_Allocator_Struct_List_Node_Class_Frame :: struct {
    alloc_: *Class_Allocator_Struct_List_Node_Class_Frame;
    ptr: Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer;
}

Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Allocator_Type :: Class_Allocator_Struct_List_Node_Class_Frame;

Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer :: Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer;

Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer :: *Struct_List_Node_Class_Frame;

Class_New_Allocator_Struct_List_Node_Class_Frame :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_List_Node_Class_Frame :: struct {
    layout_padding_0: [16] u8 #align 1;
    storage: Struct_Aligned_Membuf_Class_Frame #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H6599139130998848002 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H11629905065915357122;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H12998594620547657639;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11735114844526877280 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H10086881085985660480;

Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long :: struct {
    layout_padding_0: [32] u8 #align 1;
    storage: Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Unsigned_Long #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H14127289816513323478 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H8649375354411136918;

Struct_Std_Select1st_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long :: struct {
    first: u64;
    second: u64;
}

Struct_Aligned_Membuf_Struct_Pair_Const_Unsigned_Long_Unsigned_Long :: struct {
    storage: [16] u8 #align 8;
} #no_padding;

Std_Pair_Const_Unsigned_Long_Unsigned_Long_First_Type :: u64;

Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H6684199253886259110 :: struct {
    t: *Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396;
    node: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H12715006883044508903;
}

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11529203739292262000 :: Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H3246865058215903888;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H5778776668768484458 :: u64;

Res_in_stl_tree_2 :: Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base;

Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long :: struct {
    node: Std_Rb_Tree_Iterator_Base_Ptr;
}

Res_in_stl_tree_3 :: Struct_Pair_Struct_Rb_Tree_Node_Base_Struct_Rb_Tree_Node_Base;

Std_Map_Unsigned_Long_Unsigned_Long_Key_Type :: u64;

Std_Map_Unsigned_Long_Unsigned_Long_Iterator :: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H11735114844526877280;

Std_Vector_Mkvmuxer_Block_Addition_Mapping_Const_Iterator :: Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping;

Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping :: struct {
    impl: Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl #align 8;
} #no_padding;

Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl_Data :: struct {
    start: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer;
    finish: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer;
    end_of_storage: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer;
}

Block_Addition_Mapping :: struct {
    value: u64;
    name: *s8;
    type: u64;
    extra_data: *u8;
    extra_data_size: u64;
}

Std_Vector_Mkvmuxer_Block_Addition_Mapping_Size_Type :: u64;

Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer;

Std_Vector_Mkvmuxer_Block_Addition_Mapping_Tp_Alloc_Type :: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Tp_Alloc_Type;

Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Tp_Alloc_Type :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Rebind_Mkvmuxer_Block_Addition_Mapping_Other;

Class_Allocator_Class_Block_Addition_Mapping :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Allocator_Type :: Class_Allocator_Class_Block_Addition_Mapping;

Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Size_Type :: u64;

Class_New_Allocator_Class_Block_Addition_Mapping :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer :: *Block_Addition_Mapping;

Std_List_Mkvmuxer_Frame_Value_Type :: *Frame;

Cluster_Frame_Map_Iterator :: Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Iterator;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type :: Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type;

Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Value_Type :: Struct_List_Iterator_Class_Frame;

Class_Normal_Iterator_Struct_List_Iterator_Class_Frame_Class_Vector_Struct_List_Iterator_Class_Frame :: struct {
    current: *Struct_List_Iterator_Class_Frame;
}

Std_List_Const_Iterator_Mkvmuxer_Frame_Iterator :: Struct_List_Iterator_Class_Frame;

Std_List_Mkvmuxer_Frame_Const_Iterator :: Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Const_Iterator;

Gnu_Cxx_Normal_Iterator_Std_List_Iterator_Mkvmuxer_Frame_Std_Vector_Std_List_Itera_H6449094776022228433 :: Std_Iterator_Traits_Std_List_Iterator_Mkvmuxer_Frame_Reference;

Struct_List_Const_Iterator_Class_Frame :: struct {
    node: *List_Node_Base;
}

Node :: Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Node;

Std_List_Base_Mkvmuxer_Frame_Std_Allocator_Mkvmuxer_Frame_Node_Ptr :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer;

Std_List_Node_Mkvmuxer_Frame_Node_Ptr :: *Struct_List_Node_Class_Frame;

Struct_Aligned_Membuf_Class_Frame :: struct {
    storage: [8] u8 #align 8;
} #no_padding;

List_Size :: struct {
    size: u64;
}

Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer :: Std_Vector_Base_Std_List_Iterator_Mkvmuxer_Frame_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer;

Struct_Vector_Struct_List_Iterator_Class_Frame_Guard_Alloc :: struct {
    storage: Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Pointer;
    len: Std_Vector_Size_Type;
    vect: *Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Base;
}

Std_Vector_Std_List_Iterator_Mkvmuxer_Frame_Base :: Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iterator_Class_Frame;

Struct_Is_Move_Insertable_Class_Allocator_Struct_List_Iterator_Class_Frame :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Std_Integral_Constant_Bool_True :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

True_Type :: Struct_Std_Integral_Constant_Bool_True;

Std_List_Iterator_Mkvmuxer_Frame_Reference :: **Frame;

Std_List_Iterator_Mkvmuxer_Frame_Node :: Struct_List_Node_Class_Frame;

Std_Map_Unsigned_Long_Unsigned_Long_Mapped_Type :: u64;

Std_Rb_Tree_Const_Iterator_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Iterator :: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long;

Class_Tuple_Unsigned_Long :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Reference :: *Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long;

Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Node_Ptr :: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long;

Std_Map_Unsigned_Long_Unsigned_Long_Key_Compare :: Struct_Less_Unsigned_Long;

Mkv_Id :: u32;
LIBWEBM_K_MKV_EBML : Mkv_Id : 440786851;
LIBWEBM_K_MKV_EBML_VERSION : Mkv_Id : 17030;
LIBWEBM_K_MKV_EBML_READ_VERSION : Mkv_Id : 17143;
LIBWEBM_K_MKV_EBML_MAX_ID_LENGTH : Mkv_Id : 17138;
LIBWEBM_K_MKV_EBML_MAX_SIZE_LENGTH : Mkv_Id : 17139;
LIBWEBM_K_MKV_DOC_TYPE : Mkv_Id : 17026;
LIBWEBM_K_MKV_DOC_TYPE_VERSION : Mkv_Id : 17031;
LIBWEBM_K_MKV_DOC_TYPE_READ_VERSION : Mkv_Id : 17029;
LIBWEBM_K_MKV_VOID : Mkv_Id : 236;
LIBWEBM_K_MKV_SIGNATURE_SLOT : Mkv_Id : 458458727;
LIBWEBM_K_MKV_SIGNATURE_ALGO : Mkv_Id : 32394;
LIBWEBM_K_MKV_SIGNATURE_HASH : Mkv_Id : 32410;
LIBWEBM_K_MKV_SIGNATURE_PUBLIC_KEY : Mkv_Id : 32421;
LIBWEBM_K_MKV_SIGNATURE : Mkv_Id : 32437;
LIBWEBM_K_MKV_SIGNATURE_ELEMENTS : Mkv_Id : 32347;
LIBWEBM_K_MKV_SIGNATURE_ELEMENT_LIST : Mkv_Id : 32379;
LIBWEBM_K_MKV_SIGNED_ELEMENT : Mkv_Id : 25906;
LIBWEBM_K_MKV_SEGMENT : Mkv_Id : 408125543;
LIBWEBM_K_MKV_SEEK_HEAD : Mkv_Id : 290298740;
LIBWEBM_K_MKV_SEEK : Mkv_Id : 19899;
LIBWEBM_K_MKV_SEEK_ID : Mkv_Id : 21419;
LIBWEBM_K_MKV_SEEK_POSITION : Mkv_Id : 21420;
LIBWEBM_K_MKV_INFO : Mkv_Id : 357149030;
LIBWEBM_K_MKV_TIMECODE_SCALE : Mkv_Id : 2807729;
LIBWEBM_K_MKV_DURATION : Mkv_Id : 17545;
LIBWEBM_K_MKV_DATE_UTC : Mkv_Id : 17505;
LIBWEBM_K_MKV_TITLE : Mkv_Id : 31657;
LIBWEBM_K_MKV_MUXING_APP : Mkv_Id : 19840;
LIBWEBM_K_MKV_WRITING_APP : Mkv_Id : 22337;
LIBWEBM_K_MKV_CLUSTER : Mkv_Id : 524531317;
LIBWEBM_K_MKV_TIMECODE : Mkv_Id : 231;
LIBWEBM_K_MKV_PREV_SIZE : Mkv_Id : 171;
LIBWEBM_K_MKV_BLOCK_GROUP : Mkv_Id : 160;
LIBWEBM_K_MKV_BLOCK : Mkv_Id : 161;
LIBWEBM_K_MKV_BLOCK_DURATION : Mkv_Id : 155;
LIBWEBM_K_MKV_REFERENCE_BLOCK : Mkv_Id : 251;
LIBWEBM_K_MKV_LACE_NUMBER : Mkv_Id : 204;
LIBWEBM_K_MKV_SIMPLE_BLOCK : Mkv_Id : 163;
LIBWEBM_K_MKV_BLOCK_ADDITIONS : Mkv_Id : 30113;
LIBWEBM_K_MKV_BLOCK_MORE : Mkv_Id : 166;
LIBWEBM_K_MKV_BLOCK_ADD_ID : Mkv_Id : 238;
LIBWEBM_K_MKV_BLOCK_ADDITIONAL : Mkv_Id : 165;
LIBWEBM_K_MKV_DISCARD_PADDING : Mkv_Id : 30114;
LIBWEBM_K_MKV_TRACKS : Mkv_Id : 374648427;
LIBWEBM_K_MKV_TRACK_ENTRY : Mkv_Id : 174;
LIBWEBM_K_MKV_TRACK_NUMBER : Mkv_Id : 215;
LIBWEBM_K_MKV_TRACK_UID : Mkv_Id : 29637;
LIBWEBM_K_MKV_TRACK_TYPE : Mkv_Id : 131;
LIBWEBM_K_MKV_FLAG_ENABLED : Mkv_Id : 185;
LIBWEBM_K_MKV_FLAG_DEFAULT : Mkv_Id : 136;
LIBWEBM_K_MKV_FLAG_FORCED : Mkv_Id : 21930;
LIBWEBM_K_MKV_FLAG_LACING : Mkv_Id : 156;
LIBWEBM_K_MKV_DEFAULT_DURATION : Mkv_Id : 2352003;
LIBWEBM_K_MKV_MAX_BLOCK_ADDITION_ID : Mkv_Id : 21998;
LIBWEBM_K_MKV_BLOCK_ADDITION_MAPPING : Mkv_Id : 16868;
LIBWEBM_K_MKV_BLOCK_ADD_ID_VALUE : Mkv_Id : 16880;
LIBWEBM_K_MKV_BLOCK_ADD_ID_NAME : Mkv_Id : 16804;
LIBWEBM_K_MKV_BLOCK_ADD_ID_TYPE : Mkv_Id : 16871;
LIBWEBM_K_MKV_BLOCK_ADD_ID_EXTRA_DATA : Mkv_Id : 16877;
LIBWEBM_K_MKV_NAME : Mkv_Id : 21358;
LIBWEBM_K_MKV_LANGUAGE : Mkv_Id : 2274716;
LIBWEBM_K_MKV_CODEC_ID : Mkv_Id : 134;
LIBWEBM_K_MKV_CODEC_PRIVATE : Mkv_Id : 25506;
LIBWEBM_K_MKV_CODEC_NAME : Mkv_Id : 2459272;
LIBWEBM_K_MKV_CODEC_DELAY : Mkv_Id : 22186;
LIBWEBM_K_MKV_SEEK_PRE_ROLL : Mkv_Id : 22203;
LIBWEBM_K_MKV_VIDEO : Mkv_Id : 224;
LIBWEBM_K_MKV_FLAG_INTERLACED : Mkv_Id : 154;
LIBWEBM_K_MKV_STEREO_MODE : Mkv_Id : 21432;
LIBWEBM_K_MKV_ALPHA_MODE : Mkv_Id : 21440;
LIBWEBM_K_MKV_PIXEL_WIDTH : Mkv_Id : 176;
LIBWEBM_K_MKV_PIXEL_HEIGHT : Mkv_Id : 186;
LIBWEBM_K_MKV_PIXEL_CROP_BOTTOM : Mkv_Id : 21674;
LIBWEBM_K_MKV_PIXEL_CROP_TOP : Mkv_Id : 21691;
LIBWEBM_K_MKV_PIXEL_CROP_LEFT : Mkv_Id : 21708;
LIBWEBM_K_MKV_PIXEL_CROP_RIGHT : Mkv_Id : 21725;
LIBWEBM_K_MKV_DISPLAY_WIDTH : Mkv_Id : 21680;
LIBWEBM_K_MKV_DISPLAY_HEIGHT : Mkv_Id : 21690;
LIBWEBM_K_MKV_DISPLAY_UNIT : Mkv_Id : 21682;
LIBWEBM_K_MKV_ASPECT_RATIO_TYPE : Mkv_Id : 21683;
LIBWEBM_K_MKV_COLOUR_SPACE : Mkv_Id : 3061028;
LIBWEBM_K_MKV_FRAME_RATE : Mkv_Id : 2327523;
LIBWEBM_K_MKV_COLOUR : Mkv_Id : 21936;
LIBWEBM_K_MKV_MATRIX_COEFFICIENTS : Mkv_Id : 21937;
LIBWEBM_K_MKV_BITS_PER_CHANNEL : Mkv_Id : 21938;
LIBWEBM_K_MKV_CHROMA_SUBSAMPLING_HORZ : Mkv_Id : 21939;
LIBWEBM_K_MKV_CHROMA_SUBSAMPLING_VERT : Mkv_Id : 21940;
LIBWEBM_K_MKV_CB_SUBSAMPLING_HORZ : Mkv_Id : 21941;
LIBWEBM_K_MKV_CB_SUBSAMPLING_VERT : Mkv_Id : 21942;
LIBWEBM_K_MKV_CHROMA_SITING_HORZ : Mkv_Id : 21943;
LIBWEBM_K_MKV_CHROMA_SITING_VERT : Mkv_Id : 21944;
LIBWEBM_K_MKV_RANGE : Mkv_Id : 21945;
LIBWEBM_K_MKV_TRANSFER_CHARACTERISTICS : Mkv_Id : 21946;
LIBWEBM_K_MKV_PRIMARIES : Mkv_Id : 21947;
LIBWEBM_K_MKV_MAX_CLL : Mkv_Id : 21948;
LIBWEBM_K_MKV_MAX_FALL : Mkv_Id : 21949;
LIBWEBM_K_MKV_MASTERING_METADATA : Mkv_Id : 21968;
LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_X : Mkv_Id : 21969;
LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_Y : Mkv_Id : 21970;
LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_X : Mkv_Id : 21971;
LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_Y : Mkv_Id : 21972;
LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_X : Mkv_Id : 21973;
LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_Y : Mkv_Id : 21974;
LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_X : Mkv_Id : 21975;
LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_Y : Mkv_Id : 21976;
LIBWEBM_K_MKV_LUMINANCE_MAX : Mkv_Id : 21977;
LIBWEBM_K_MKV_LUMINANCE_MIN : Mkv_Id : 21978;
LIBWEBM_K_MKV_PROJECTION : Mkv_Id : 30320;
LIBWEBM_K_MKV_PROJECTION_TYPE : Mkv_Id : 30321;
LIBWEBM_K_MKV_PROJECTION_PRIVATE : Mkv_Id : 30322;
LIBWEBM_K_MKV_PROJECTION_POSE_YAW : Mkv_Id : 30323;
LIBWEBM_K_MKV_PROJECTION_POSE_PITCH : Mkv_Id : 30324;
LIBWEBM_K_MKV_PROJECTION_POSE_ROLL : Mkv_Id : 30325;
LIBWEBM_K_MKV_AUDIO : Mkv_Id : 225;
LIBWEBM_K_MKV_SAMPLING_FREQUENCY : Mkv_Id : 181;
LIBWEBM_K_MKV_OUTPUT_SAMPLING_FREQUENCY : Mkv_Id : 30901;
LIBWEBM_K_MKV_CHANNELS : Mkv_Id : 159;
LIBWEBM_K_MKV_BIT_DEPTH : Mkv_Id : 25188;
LIBWEBM_K_MKV_CONTENT_ENCODINGS : Mkv_Id : 28032;
LIBWEBM_K_MKV_CONTENT_ENCODING : Mkv_Id : 25152;
LIBWEBM_K_MKV_CONTENT_ENCODING_ORDER : Mkv_Id : 20529;
LIBWEBM_K_MKV_CONTENT_ENCODING_SCOPE : Mkv_Id : 20530;
LIBWEBM_K_MKV_CONTENT_ENCODING_TYPE : Mkv_Id : 20531;
LIBWEBM_K_MKV_CONTENT_COMPRESSION : Mkv_Id : 20532;
LIBWEBM_K_MKV_CONTENT_COMP_ALGO : Mkv_Id : 16980;
LIBWEBM_K_MKV_CONTENT_COMP_SETTINGS : Mkv_Id : 16981;
LIBWEBM_K_MKV_CONTENT_ENCRYPTION : Mkv_Id : 20533;
LIBWEBM_K_MKV_CONTENT_ENC_ALGO : Mkv_Id : 18401;
LIBWEBM_K_MKV_CONTENT_ENC_KEY_ID : Mkv_Id : 18402;
LIBWEBM_K_MKV_CONTENT_SIGNATURE : Mkv_Id : 18403;
LIBWEBM_K_MKV_CONTENT_SIG_KEY_ID : Mkv_Id : 18404;
LIBWEBM_K_MKV_CONTENT_SIG_ALGO : Mkv_Id : 18405;
LIBWEBM_K_MKV_CONTENT_SIG_HASH_ALGO : Mkv_Id : 18406;
LIBWEBM_K_MKV_CONTENT_ENC_AES_SETTINGS : Mkv_Id : 18407;
LIBWEBM_K_MKV_AES_SETTINGS_CIPHER_MODE : Mkv_Id : 18408;
LIBWEBM_K_MKV_AES_SETTINGS_CIPHER_INIT_DATA : Mkv_Id : 18409;
LIBWEBM_K_MKV_CUES : Mkv_Id : 475249515;
LIBWEBM_K_MKV_CUE_POINT : Mkv_Id : 187;
LIBWEBM_K_MKV_CUE_TIME : Mkv_Id : 179;
LIBWEBM_K_MKV_CUE_TRACK_POSITIONS : Mkv_Id : 183;
LIBWEBM_K_MKV_CUE_TRACK : Mkv_Id : 247;
LIBWEBM_K_MKV_CUE_CLUSTER_POSITION : Mkv_Id : 241;
LIBWEBM_K_MKV_CUE_BLOCK_NUMBER : Mkv_Id : 21368;
LIBWEBM_K_MKV_CHAPTERS : Mkv_Id : 272869232;
LIBWEBM_K_MKV_EDITION_ENTRY : Mkv_Id : 17849;
LIBWEBM_K_MKV_CHAPTER_ATOM : Mkv_Id : 182;
LIBWEBM_K_MKV_CHAPTER_UID : Mkv_Id : 29636;
LIBWEBM_K_MKV_CHAPTER_STRING_UID : Mkv_Id : 22100;
LIBWEBM_K_MKV_CHAPTER_TIME_START : Mkv_Id : 145;
LIBWEBM_K_MKV_CHAPTER_TIME_END : Mkv_Id : 146;
LIBWEBM_K_MKV_CHAPTER_DISPLAY : Mkv_Id : 128;
LIBWEBM_K_MKV_CHAP_STRING : Mkv_Id : 133;
LIBWEBM_K_MKV_CHAP_LANGUAGE : Mkv_Id : 17276;
LIBWEBM_K_MKV_CHAP_COUNTRY : Mkv_Id : 17278;
LIBWEBM_K_MKV_TAGS : Mkv_Id : 307544935;
LIBWEBM_K_MKV_TAG : Mkv_Id : 29555;
LIBWEBM_K_MKV_SIMPLE_TAG : Mkv_Id : 26568;
LIBWEBM_K_MKV_TAG_NAME : Mkv_Id : 17827;
LIBWEBM_K_MKV_TAG_STRING : Mkv_Id : 17543;

Std_List_Mkvmuxer_Frame_Reference :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Reference;

Std_Rb_Tree_Iterator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Pointer :: *Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame;

Std_List_Mkvmuxer_Frame_Node_Ptr :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer;

Std_Remove_Reference_Std_List_Node_Mkvmuxer_Frame_Type :: *Struct_List_Node_Class_Frame;

Std_Allocated_Obj_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type :: Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type;

Std_Allocated_Ptr_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type :: Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type;

Mkvmuxer_Tracks_Values :: u32;
MKVMUXER_TRACKS_K_VIDEO : Mkvmuxer_Tracks_Values : 1;
MKVMUXER_TRACKS_K_AUDIO : Mkvmuxer_Tracks_Values : 2;

Mkv_Writer :: struct {
    #as i_mkv_writer: I_Mkv_Writer;
    file: *FILE;
    writer_owns_file: bool;
}

Std_List_Size_Type :: u64;

Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Size_Type :: Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9910553738716115928;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H9910553738716115928 :: u64;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H6122849054575192992 :: Rb_Tree_Node_Base;

Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_Li_H13077661779444050177 :: Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame;

Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Pointer :: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_St_H3042249295452611784 :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_H14011446280861760196;

Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Uint8 :: u8;

Class_Normal_Iterator_Const_Class_Block_Addition_Mapping_Class_Vector_Class_Block_Addition_Mapping :: struct {
    current: *Block_Addition_Mapping;
}

Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Allocator_Type :: Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long;

Std_Rb_Tree_Unsigned_Long_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Select1st_S_H8696784080890226228 :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Rebind_H11484351918280280914;

Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Allocator_Traits_Std_Allocator_Std_Rb_Tree_Node_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Pointer :: *Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long;

Class_New_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Class_Unique_Ptr_Class_Projection :: struct {
    t: Struct_Uniq_Ptr_Data_Class_Projection_Struct_Default_Delete_Class_Projection #align 8;
} #no_padding;

Std_Unique_Ptr_Mkvmuxer_Projection_Pointer :: Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer;

Class_Uniq_Ptr_Impl_Class_Projection_Struct_Default_Delete_Class_Projection :: struct {
    t: Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Pointer :: Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Ptr_Mkvm_H11614201954332966240;

Class_Tuple_Class_Projection_Struct_Default_Delete_Class_Projection :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type :: Std_Nth_Type_0_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type;

Struct_Tuple_Impl_0_Class_Projection_Struct_Default_Delete_Class_Projection :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Class_Projection :: struct {
    head_impl: *Mkvmuxer_Projection;
}

Std_Unique_Ptr_Mkvmuxer_Projection_Deleter_Type :: Struct_Default_Delete_Class_Projection;

Struct_Default_Delete_Class_Projection :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type :: Std_Nth_Type_1_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type;

Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Projection :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Head_Base_1_Struct_Default_Delete_Class_Projection :: struct {
    head_impl: Struct_Default_Delete_Class_Projection #align 1;
} #no_padding;

Class_Unique_Ptr_Class_Colour :: struct {
    t: Struct_Uniq_Ptr_Data_Class_Colour_Struct_Default_Delete_Class_Colour #align 8;
} #no_padding;

Std_Unique_Ptr_Mkvmuxer_Colour_Pointer :: Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer;

Class_Uniq_Ptr_Impl_Class_Colour_Struct_Default_Delete_Class_Colour :: struct {
    t: Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Pointer :: Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Ptr_Mkvmuxer_Col_H13631732279809956680;

Class_Tuple_Class_Colour_Struct_Default_Delete_Class_Colour :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type :: Std_Nth_Type_0_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type;

Struct_Tuple_Impl_0_Class_Colour_Struct_Default_Delete_Class_Colour :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Class_Colour :: struct {
    head_impl: *Mkvmuxer_Colour;
}

Class_Unique_Ptr_Class_Mastering_Metadata :: struct {
    t: Struct_Uniq_Ptr_Data_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata #align 8;
} #no_padding;

Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Pointer :: Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer;

Class_Uniq_Ptr_Impl_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata :: struct {
    t: Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Pointer :: Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metad_H9572251601408789828;

Class_Tuple_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type :: Std_Nth_Type_0_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type;

Struct_Tuple_Impl_0_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Class_Mastering_Metadata :: struct {
    head_impl: *Mkvmuxer_Mastering_Metadata;
}

Std_Unique_Ptr_Mkvmuxer_Colour_Deleter_Type :: Struct_Default_Delete_Class_Colour;

Struct_Default_Delete_Class_Colour :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type :: Std_Nth_Type_1_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type;

Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Colour :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Head_Base_1_Struct_Default_Delete_Class_Colour :: struct {
    head_impl: Struct_Default_Delete_Class_Colour #align 1;
} #no_padding;

Video_Track_Stereo_Mode :: u32;
MKVMUXER_VIDEO_TRACK_K_MONO : Video_Track_Stereo_Mode : 0;
MKVMUXER_VIDEO_TRACK_K_SIDE_BY_SIDE_LEFT_IS_FIRST : Video_Track_Stereo_Mode : 1;
MKVMUXER_VIDEO_TRACK_K_TOP_BOTTOM_RIGHT_IS_FIRST : Video_Track_Stereo_Mode : 2;
MKVMUXER_VIDEO_TRACK_K_TOP_BOTTOM_LEFT_IS_FIRST : Video_Track_Stereo_Mode : 3;
MKVMUXER_VIDEO_TRACK_K_SIDE_BY_SIDE_RIGHT_IS_FIRST : Video_Track_Stereo_Mode : 11;

Video_Track_Alpha_Mode :: u32;
MKVMUXER_VIDEO_TRACK_K_NO_ALPHA : Video_Track_Alpha_Mode : 0;
MKVMUXER_VIDEO_TRACK_K_ALPHA : Video_Track_Alpha_Mode : 1;

Std_Unique_Ptr_Mkvmuxer_Mastering_Metadata_Deleter_Type :: Struct_Default_Delete_Class_Mastering_Metadata;

Struct_Default_Delete_Class_Mastering_Metadata :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type :: Std_Nth_Type_1_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type;

Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Mastering_Metadata :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Head_Base_1_Struct_Default_Delete_Class_Mastering_Metadata :: struct {
    head_impl: Struct_Default_Delete_Class_Mastering_Metadata #align 1;
} #no_padding;

Gnu_Cxx_Normal_Iterator_Const_Mkvmuxer_Block_Addition_Mapping_Std_Vector_Mkvmuxer_Block_Addition_Mapping_Reference :: Std_Iterator_Traits_Const_Mkvmuxer_Block_Addition_Mapping_Reference;

Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer :: Std_Vector_Base_Mkvmuxer_Block_Addition_Mapping_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer;

Struct_Vector_Class_Block_Addition_Mapping_Guard_Alloc :: struct {
    storage: Std_Vector_Mkvmuxer_Block_Addition_Mapping_Pointer;
    len: Std_Vector_Size_Type;
    vect: *Std_Vector_Mkvmuxer_Block_Addition_Mapping_Base;
}

Std_Vector_Mkvmuxer_Block_Addition_Mapping_Base :: Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping;

Struct_Is_Move_Insertable_Class_Allocator_Class_Block_Addition_Mapping :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Detail_List_Node_Base_Base_Ptr :: *List_Node_Base;

Node_in_list :: Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Node;

Struct_Tuple_Impl_0_Unsigned_Long :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Unsigned_Long :: struct {
    head_impl: *u64;
}

Struct_Tuple_Impl_0_Const_Unsigned_Long :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Const_Unsigned_Long :: struct {
    head_impl: *u64;
}

Content_Enc_AES_Settings_Values :: u32;
MKVMUXER_CONTENT_ENC_AES_SETTINGS_K_CTR : Content_Enc_AES_Settings_Values : 1;

Struct_Vector_Base_Class_Block_Addition_Mapping_Class_Allocator_Class_Block_Addition_Mapping_Vector_Impl :: struct {
    layout_padding_0: [24] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Rb_Tree_Color :: u32;
STD_S_RED : Std_Rb_Tree_Color : 0;
STD_S_BLACK : Std_Rb_Tree_Color : 1;

Struct_List_Base_Class_Frame_Class_Allocator_Class_Frame_List_Impl :: struct {
    node: Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Node_Header #align 8;
} #no_padding;

Time_T_in_time_t :: Time_T;

Std_Remove_Reference_Mkvmuxer_Mastering_Metadata_Type :: *Mkvmuxer_Mastering_Metadata;

Struct_Uniq_Ptr_Data_Class_Mastering_Metadata_Struct_Default_Delete_Class_Mastering_Metadata :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Remove_Reference_Mkvmuxer_Colour_Type :: *Mkvmuxer_Colour;

Struct_Uniq_Ptr_Data_Class_Colour_Struct_Default_Delete_Class_Colour :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Remove_Reference_Mkvmuxer_Projection_Type :: *Mkvmuxer_Projection;

Struct_Uniq_Ptr_Data_Class_Projection_Struct_Default_Delete_Class_Projection :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Rb_Tree_Const_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame :: struct {
    node: Std_Rb_Tree_Const_Iterator_Base_Ptr;
}

Std_Build_Index_Tuple_1_Type :: Struct_Index_Tuple_0;

Struct_Index_Tuple_0 :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Build_Index_Tuple_0_Type :: Struct_Index_Tuple;

Struct_Index_Tuple :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Rb_Tree_Const_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long :: struct {
    node: Std_Rb_Tree_Const_Iterator_Base_Ptr;
}

Struct_Vector_Base_Struct_List_Iterator_Class_Frame_Class_Allocator_Struct_List_Iter_H1141182370091231559 :: struct {
    layout_padding_0: [24] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Class_Basic_String_Char_M_Construct_Guard_in_basic_string :: struct {
    guarded: *Class_Basic_String_Char;
}

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H11236901342145666593 :: *Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H6639028815362237440;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H6639028815362237440 :: Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Class_Std_List_Class_Mkvmuxer_Frame;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H17840831742759631042 :: Struct_Rb_Tree_Const_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H13627146412820475700 :: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_Std_P_H2026865857245802366 :: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer :: Std_Allocator_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Pointer;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_List_Iterator_Mkvmuxer_Frame_Rebind_Std_List_H9382826422315334100 :: Class_Allocator_Struct_List_Iterator_Class_Frame;

Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Iterator :: Struct_List_Iterator_Class_Frame;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Rebind_Std_List_Node_Mkvmuxer_Frame_Other :: Class_Allocator_Struct_List_Node_Class_Frame;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H11629905065915357122 :: *Std_Rb_Tree_Node_Traits_Type_Parameter_0_0_Type_Parameter_0_0_Node_Base;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H12998594620547657639 :: *Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H8649375354411136918;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H10086881085985660480 :: Struct_Rb_Tree_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H8649375354411136918 :: Struct_Std_Rb_Tree_Node_Struct_Std_Pair_Const_Unsigned_Long_Unsigned_Long;

Std_Rb_Tree_Node_Traits_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Std_Pair_Const_Uns_H3246865058215903888 :: Struct_Rb_Tree_Const_Iterator_Struct_Pair_Const_Unsigned_Long_Unsigned_Long;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer :: Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Pointer;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Block_Addition_Mapping_Rebind_Mkvmuxer_Block_Addition_Mapping_Other :: Class_Allocator_Class_Block_Addition_Mapping;

Std_Allocator_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type :: *Frame;

Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Const_Iterator :: Struct_List_Const_Iterator_Class_Frame;

Std_Iterator_Traits_Std_List_Iterator_Mkvmuxer_Frame_Reference :: *Struct_List_Iterator_Class_Frame;

Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Node :: Struct_List_Node_Class_Frame;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer :: Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Pointer;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Reference :: *Gnu_Cxx_Alloc_Traits_Std_Allocator_Mkvmuxer_Frame_Value_Type;

Std_Allocator_Traits_Std_Allocator_Std_List_Node_Mkvmuxer_Frame_Value_Type :: Struct_List_Node_Class_Frame;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_Pair_Const_Unsigned_Long_Std_List_Mkvmuxer_Frame_H14011446280861760196 :: Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Std_Pair_Const_Unsigned_Long_Unsigned_Long_Rebind_H11484351918280280914 :: Class_Allocator_Struct_Rb_Tree_Node_Struct_Pair_Const_Unsigned_Long_Unsigned_Long;

Std_Uniq_Ptr_Impl_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Ptr_Mkvm_H11614201954332966240 :: *Mkvmuxer_Projection;

Std_Nth_Type_0_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type :: *Mkvmuxer_Projection;

Std_Nth_Type_1_Mkvmuxer_Projection_Std_Default_Delete_Mkvmuxer_Projection_Type :: Struct_Default_Delete_Class_Projection;

Std_Uniq_Ptr_Impl_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Ptr_Mkvmuxer_Col_H13631732279809956680 :: *Mkvmuxer_Colour;

Std_Nth_Type_0_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type :: *Mkvmuxer_Colour;

Std_Uniq_Ptr_Impl_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metad_H9572251601408789828 :: *Mkvmuxer_Mastering_Metadata;

Std_Nth_Type_0_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type :: *Mkvmuxer_Mastering_Metadata;

Std_Nth_Type_1_Mkvmuxer_Colour_Std_Default_Delete_Mkvmuxer_Colour_Type :: Struct_Default_Delete_Class_Colour;

Std_Nth_Type_1_Mkvmuxer_Mastering_Metadata_Std_Default_Delete_Mkvmuxer_Mastering_Metadata_Type :: Struct_Default_Delete_Class_Mastering_Metadata;

Std_Iterator_Traits_Const_Mkvmuxer_Block_Addition_Mapping_Reference :: *Block_Addition_Mapping;

Std_List_Node_Traits_Mkvmuxer_Frame_Mkvmuxer_Frame_Node_Header :: List_Node_Header;

Time_T :: s64;

