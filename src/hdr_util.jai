LIBWEBM_VP9_CODEC_FEATURES_K_VALUE_NOT_PRESENT: s32;

K_MAX_TRACK_NUMBER: u64;

E_PARSE_FAILED: s32;

E_FILE_FORMAT_INVALID: s32;

E_BUFFER_NOT_FULL: s32;

get :: (
    using class_unique_ptr_class_primary_chromaticity: *Class_Unique_Ptr_Class_Primary_Chromaticity
) -> Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Pointer) (ptr(cast(*Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *t));
}

ptr :: (
    using class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer {
    return (cast(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type) std_get(*t)).*;
}

std_get :: (
    t: *Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type) (std_get_helper(
        cast(*Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) ((cast(**Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *(t)).*)
    ));
}

std_get_helper :: (
    t: *Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> **Mkvmuxer_Primary_Chromaticity {
    return cast,no_check(**Mkvmuxer_Primary_Chromaticity) (m_head(t));
}

m_head :: (
    t: *Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> **Mkvmuxer_Primary_Chromaticity {
    return cast,no_check(**Mkvmuxer_Primary_Chromaticity) (m_head(
        cast(*Struct_Head_Base_0_Class_Primary_Chromaticity) ((cast(**Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *(t)).*)
    ));
}

m_head :: (b: *Struct_Head_Base_0_Class_Primary_Chromaticity) -> **Mkvmuxer_Primary_Chromaticity {
    return *b.head_impl;
}

get_deleter :: (
    using class_unique_ptr_class_primary_chromaticity: *Class_Unique_Ptr_Class_Primary_Chromaticity
) -> *Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Deleter_Type {
    return cast,no_check(*Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Deleter_Type) (deleter(cast(*Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *t));
}

deleter :: (
    using class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> *Struct_Default_Delete_Class_Primary_Chromaticity {
    return cast,no_check(*Struct_Default_Delete_Class_Primary_Chromaticity) (std_get_2(*t));
}

std_get_2 :: (
    t: *Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> *Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type {
    return cast,no_check(*Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type) (std_get_helper(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Primary_Chromaticity) ((cast(**Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *(t)).*)
    ));
}

std_get_helper :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Primary_Chromaticity
) -> *Struct_Default_Delete_Class_Primary_Chromaticity {
    return cast,no_check(*Struct_Default_Delete_Class_Primary_Chromaticity) (m_head(t));
}

m_head :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Primary_Chromaticity
) -> *Struct_Default_Delete_Class_Primary_Chromaticity {
    return cast,no_check(*Struct_Default_Delete_Class_Primary_Chromaticity) (m_head(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Class_Primary_Chromaticity) ((cast(**Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Primary_Chromaticity) *(t)).*)
    ));
}

m_head :: (
    b: *Struct_Head_Base_1_Struct_Default_Delete_Class_Primary_Chromaticity
) -> *Struct_Default_Delete_Class_Primary_Chromaticity {
    return *b.head_impl;
}

ptr_2 :: (
    using class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> *Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer {
    return cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) (std_get_3(*t));
}

std_get_3 :: (
    t: *Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type) (std_get_helper_2(
        cast(*Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) ((cast(**Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *(t)).*)
    ));
}

std_get_helper_2 :: (
    t: *Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> **Mkvmuxer_Primary_Chromaticity {
    return cast,no_check(**Mkvmuxer_Primary_Chromaticity) (m_head_2(t));
}

m_head_2 :: (
    t: *Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) -> **Mkvmuxer_Primary_Chromaticity {
    return cast,no_check(**Mkvmuxer_Primary_Chromaticity) (m_head_3(
        cast(*Struct_Head_Base_0_Class_Primary_Chromaticity) ((cast(**Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *(t)).*)
    ));
}

m_head_3 :: (b: *Struct_Head_Base_0_Class_Primary_Chromaticity) -> **Mkvmuxer_Primary_Chromaticity {
    return *b.head_impl;
}

call :: (
    using struct_default_delete_class_primary_chromaticity: *Struct_Default_Delete_Class_Primary_Chromaticity,
    ptr: *Mkvmuxer_Primary_Chromaticity
) {
    #assert true; // validated by the C++ frontend
    #assert true; // validated by the C++ frontend
    {
        cpp_transpiler_delete_g0 := cast,no_check(*Mkvmuxer_Primary_Chromaticity) (ptr);
        if cpp_transpiler_delete_g0 != null {
            deinit_9(cpp_transpiler_delete_g0);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g0);
        }
    }
}

reset :: (
    using class_unique_ptr_class_primary_chromaticity: *Class_Unique_Ptr_Class_Primary_Chromaticity,
    p: Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Pointer
) {
    #assert true; // validated by the C++ frontend
    reset(
        cast(*Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *t,
        (cast(*Std_Remove_Reference_Mkvmuxer_Primary_Chromaticity_Type) *p).*
    );
}

reset :: (
    using class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity,
    p: Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer
) {
    OLD_P :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ptr_2(
            class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity
        )).*);
    assignment_0: Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ptr_2(class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity)).*)).*) = assignment_0;
    if OLD_P != null {
        call(
            deleter(class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity),
            OLD_P
        );
    }
}

add_id :: (using _frame: *Frame) -> u64 {
    return add_id;
}

additional :: (using _frame: *Frame) -> *u8 {
    return additional;
}

additional_length :: (using _frame: *Frame) -> u64 {
    return additional_length;
}

duration :: (using _frame: *Frame) -> u64 {
    return duration;
}

duration_set :: (using _frame: *Frame) -> bool {
    return duration_set;
}

frame :: (using _frame: *Frame) -> *u8 {
    return frame;
}

is_key :: (using _frame: *Frame) -> bool {
    return is_key;
}

length_2 :: (using _frame: *Frame) -> u64 {
    return length;
}

track_number :: (using _frame: *Frame) -> u64 {
    return track_number;
}

timestamp :: (using _frame: *Frame) -> u64 {
    return timestamp;
}

discard_padding :: (using _frame: *Frame) -> s64 {
    return discard_padding;
}

reference_block_timestamp :: (using _frame: *Frame) -> s64 {
    return reference_block_timestamp;
}

reference_block_timestamp_set :: (using _frame: *Frame) -> bool {
    return reference_block_timestamp_set;
}

time :: (using cue_point: *Mkvmuxer_Cue_Point) -> u64 {
    return time;
}

track :: (using cue_point: *Mkvmuxer_Cue_Point) -> u64 {
    return track;
}

cluster_pos :: (using cue_point: *Mkvmuxer_Cue_Point) -> u64 {
    return cluster_pos;
}

block_number :: (using cue_point: *Mkvmuxer_Cue_Point) -> u64 {
    return block_number;
}

output_block_number :: (using cue_point: *Mkvmuxer_Cue_Point) -> bool {
    return output_block_number;
}

cue_entries_size :: (using cues: *Mkvmuxer_Cues) -> s32 {
    return cue_entries_size;
}

output_block_number :: (using cues: *Mkvmuxer_Cues) -> bool {
    return output_block_number;
}

deinit_6 :: (using content_enc_aes_settings: *Content_Enc_AES_Settings) {
}

cipher_mode :: (using content_enc_aes_settings: *Content_Enc_AES_Settings) -> u64 {
    return cipher_mode;
}

enc_algo :: (using content_encoding: *Mkvmuxer_Content_Encoding) -> u64 {
    return enc_algo;
}

encoding_order :: (using content_encoding: *Mkvmuxer_Content_Encoding) -> u64 {
    return encoding_order;
}

encoding_scope :: (using content_encoding: *Mkvmuxer_Content_Encoding) -> u64 {
    return encoding_scope;
}

encoding_type :: (using content_encoding: *Mkvmuxer_Content_Encoding) -> u64 {
    return encoding_type;
}

enc_aes_settings :: (using content_encoding: *Mkvmuxer_Content_Encoding) -> *Content_Enc_AES_Settings {
    return *enc_aes_settings;
}

init_19 :: (using primary_chromaticity: *Mkvmuxer_Primary_Chromaticity, x_val: float32, y_val: float32) {
    x = x_val;
    y = y_val;
}

init_20 :: (using primary_chromaticity: *Mkvmuxer_Primary_Chromaticity) {
    x = 0.0;
    y = 0.0;
}

deinit_9 :: (using primary_chromaticity: *Mkvmuxer_Primary_Chromaticity) {
}

x :: (using primary_chromaticity: *Mkvmuxer_Primary_Chromaticity) -> float32 {
    return x;
}

y :: (using primary_chromaticity: *Mkvmuxer_Primary_Chromaticity) -> float32 {
    return y;
}

init_21 :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) {
    luminance_max = MKVMUXER_MASTERING_METADATA_K_VALUE_NOT_PRESENT;
    luminance_min = MKVMUXER_MASTERING_METADATA_K_VALUE_NOT_PRESENT;
    r = cast,no_check(*Mkvmuxer_Primary_Chromaticity) (cast(*Mkvmuxer_Primary_Chromaticity) null);
    g = cast,no_check(*Mkvmuxer_Primary_Chromaticity) (cast(*Mkvmuxer_Primary_Chromaticity) null);
    b = cast,no_check(*Mkvmuxer_Primary_Chromaticity) (cast(*Mkvmuxer_Primary_Chromaticity) null);
    white_point = cast,no_check(*Mkvmuxer_Primary_Chromaticity) (cast(*Mkvmuxer_Primary_Chromaticity) null);
}

deinit_10 :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) {
    {
        cpp_transpiler_delete_g1 := cast,no_check(*Mkvmuxer_Primary_Chromaticity) (r);
        if cpp_transpiler_delete_g1 != null {
            deinit_9(cpp_transpiler_delete_g1);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g1);
        }
    }
    {
        cpp_transpiler_delete_g2 := cast,no_check(*Mkvmuxer_Primary_Chromaticity) (g);
        if cpp_transpiler_delete_g2 != null {
            deinit_9(cpp_transpiler_delete_g2);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g2);
        }
    }
    {
        cpp_transpiler_delete_g3 := cast,no_check(*Mkvmuxer_Primary_Chromaticity) (b);
        if cpp_transpiler_delete_g3 != null {
            deinit_9(cpp_transpiler_delete_g3);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g3);
        }
    }
    {
        cpp_transpiler_delete_g4 := cast,no_check(*Mkvmuxer_Primary_Chromaticity) (white_point);
        if cpp_transpiler_delete_g4 != null {
            deinit_9(cpp_transpiler_delete_g4);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g4);
        }
    }
}

r :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> *Mkvmuxer_Primary_Chromaticity {
    return r;
}

g :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> *Mkvmuxer_Primary_Chromaticity {
    return g;
}

b :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> *Mkvmuxer_Primary_Chromaticity {
    return b;
}

white_point :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> *Mkvmuxer_Primary_Chromaticity {
    return white_point;
}

luminance_max :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> float32 {
    return luminance_max;
}

luminance_min :: (using mastering_metadata: *Mkvmuxer_Mastering_Metadata) -> float32 {
    return luminance_min;
}

init_22 :: (using colour: *Mkvmuxer_Colour) {
    matrix_coefficients = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    bits_per_channel = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    chroma_subsampling_horz = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    chroma_subsampling_vert = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    cb_subsampling_horz = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    cb_subsampling_vert = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    chroma_siting_horz = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    chroma_siting_vert = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    range = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    transfer_characteristics = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    primaries = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    max_cll = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    max_fall = MKVMUXER_COLOUR_K_VALUE_NOT_PRESENT;
    mastering_metadata = cast,no_check(*Mkvmuxer_Mastering_Metadata) (cast(*Mkvmuxer_Mastering_Metadata) null);
}

deinit_11 :: (using colour: *Mkvmuxer_Colour) {
    {
        cpp_transpiler_delete_g5 := cast,no_check(*Mkvmuxer_Mastering_Metadata) (mastering_metadata);
        if cpp_transpiler_delete_g5 != null {
            deinit_10(cpp_transpiler_delete_g5);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g5);
        }
    }
}

mastering_metadata :: (using colour: *Mkvmuxer_Colour) -> *Mkvmuxer_Mastering_Metadata {
    return mastering_metadata;
}

matrix_coefficients :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return matrix_coefficients;
}

bits_per_channel :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return bits_per_channel;
}

chroma_subsampling_horz :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return chroma_subsampling_horz;
}

chroma_subsampling_vert :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return chroma_subsampling_vert;
}

cb_subsampling_horz :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return cb_subsampling_horz;
}

cb_subsampling_vert :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return cb_subsampling_vert;
}

chroma_siting_horz :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return chroma_siting_horz;
}

chroma_siting_vert :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return chroma_siting_vert;
}

range :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return range;
}

transfer_characteristics :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return transfer_characteristics;
}

primaries :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return primaries;
}

max_cll :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return max_cll;
}

max_fall :: (using colour: *Mkvmuxer_Colour) -> u64 {
    return max_fall;
}

init_23 :: (using projection: *Mkvmuxer_Projection) {
    type = MKVMUXER_PROJECTION_K_RECTANGULAR;
    pose_yaw = 0.0;
    pose_pitch = 0.0;
    pose_roll = 0.0;
    private_data = cast,no_check(*u8) (cast(*u8) null);
    private_data_length = 0;
}

deinit_12 :: (using projection: *Mkvmuxer_Projection) {
    {
        cpp_transpiler_delete_g6 := cast,no_check(*u8) (private_data);
        if cpp_transpiler_delete_g6 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g6);
        }
    }
}

type :: (using projection: *Mkvmuxer_Projection) -> Projection_Projection_Type_in_mkvmuxer {
    return type;
}

pose_yaw :: (using projection: *Mkvmuxer_Projection) -> float32 {
    return pose_yaw;
}

pose_pitch :: (using projection: *Mkvmuxer_Projection) -> float32 {
    return pose_pitch;
}

pose_roll :: (using projection: *Mkvmuxer_Projection) -> float32 {
    return pose_roll;
}

private_data :: (using projection: *Mkvmuxer_Projection) -> *u8 {
    return private_data;
}

private_data_length :: (using projection: *Mkvmuxer_Projection) -> u64 {
    return private_data_length;
}

codec_id :: (using track: *Mkvmuxer_Track) -> *s8 {
    return codec_id;
}

codec_private :: (using track: *Mkvmuxer_Track) -> *u8 {
    return codec_private;
}

language :: (using track: *Mkvmuxer_Track) -> *s8 {
    return language;
}

max_block_additional_id :: (using track: *Mkvmuxer_Track) -> u64 {
    return max_block_additional_id;
}

name_2 :: (using track: *Mkvmuxer_Track) -> *s8 {
    return name;
}

number :: (using track: *Mkvmuxer_Track) -> u64 {
    return number;
}

type :: (using track: *Mkvmuxer_Track) -> u64 {
    return type;
}

uid :: (using track: *Mkvmuxer_Track) -> u64 {
    return uid;
}

codec_delay :: (using track: *Mkvmuxer_Track) -> u64 {
    return codec_delay;
}

seek_pre_roll :: (using track: *Mkvmuxer_Track) -> u64 {
    return seek_pre_roll;
}

default_duration :: (using track: *Mkvmuxer_Track) -> u64 {
    return default_duration;
}

codec_private_length :: (using track: *Mkvmuxer_Track) -> u64 {
    return codec_private_length;
}

content_encoding_entries_size :: (using track: *Mkvmuxer_Track) -> u32 {
    return content_encoding_entries_size;
}

display_height :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return display_height;
}

display_width :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return display_width;
}

pixel_height :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return pixel_height;
}

pixel_width :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return pixel_width;
}

crop_left :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return crop_left;
}

crop_right :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return crop_right;
}

crop_top :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return crop_top;
}

crop_bottom :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return crop_bottom;
}

frame_rate :: (using video_track: *Mkvmuxer_Video_Track) -> float64 {
    return frame_rate;
}

height :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return height;
}

stereo_mode :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return stereo_mode;
}

alpha_mode :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return alpha_mode;
}

width :: (using video_track: *Mkvmuxer_Video_Track) -> u64 {
    return width;
}

colour_space :: (using video_track: *Mkvmuxer_Video_Track) -> *s8 {
    return colour_space;
}

colour :: (using video_track: *Mkvmuxer_Video_Track) -> *Mkvmuxer_Colour {
    return colour;
}

projection :: (using video_track: *Mkvmuxer_Video_Track) -> *Mkvmuxer_Projection {
    return projection;
}

bit_depth :: (using audio_track: *Mkvmuxer_Audio_Track) -> u64 {
    return bit_depth;
}

channels :: (using audio_track: *Mkvmuxer_Audio_Track) -> u64 {
    return channels;
}

sample_rate :: (using audio_track: *Mkvmuxer_Audio_Track) -> float64 {
    return sample_rate;
}

track_entries_size :: (using tracks: *Mkvmuxer_Tracks) -> u32 {
    return track_entries_size;
}

size_position :: (using cluster: *Mkvmuxer_Cluster) -> s64 {
    return size_position;
}

blocks_added :: (using cluster: *Mkvmuxer_Cluster) -> s32 {
    return blocks_added;
}

payload_size :: (using cluster: *Mkvmuxer_Cluster) -> u64 {
    return payload_size;
}

position_for_cues :: (using cluster: *Mkvmuxer_Cluster) -> s64 {
    return position_for_cues;
}

timecode :: (using cluster: *Mkvmuxer_Cluster) -> u64 {
    return timecode;
}

timecode_scale :: (using cluster: *Mkvmuxer_Cluster) -> u64 {
    return timecode_scale;
}

write_last_frame_with_duration :: (using cluster: *Mkvmuxer_Cluster) -> bool {
    return write_last_frame_with_duration;
}

duration :: (using segment_info: *Mkvmuxer_Segment_Info) -> float64 {
    return duration;
}

muxing_app :: (using segment_info: *Mkvmuxer_Segment_Info) -> *s8 {
    return muxing_app;
}

timecode_scale :: (using segment_info: *Mkvmuxer_Segment_Info) -> u64 {
    return timecode_scale;
}

writing_app :: (using segment_info: *Mkvmuxer_Segment_Info) -> *s8 {
    return writing_app;
}

date_utc :: (using segment_info: *Mkvmuxer_Segment_Info) -> s64 {
    return date_utc;
}

get_cues :: (using segment: *Mkvmuxer_Segment) -> *Mkvmuxer_Cues {
    return *cues;
}

get_segment_info :: (using segment: *Mkvmuxer_Segment) -> *Mkvmuxer_Segment_Info {
    return *segment_info;
}

get_segment_info_2 :: (using segment: *Mkvmuxer_Segment) -> *Mkvmuxer_Segment_Info {
    return *segment_info;
}

chunking :: (using segment: *Mkvmuxer_Segment) -> bool {
    return chunking;
}

cues_track :: (using segment: *Mkvmuxer_Segment) -> u64 {
    return cues_track;
}

max_cluster_duration :: (using segment: *Mkvmuxer_Segment) -> u64 {
    return max_cluster_duration;
}

max_cluster_size :: (using segment: *Mkvmuxer_Segment) -> u64 {
    return max_cluster_size;
}

mode :: (using segment: *Mkvmuxer_Segment) -> Segment_Mode {
    return mode;
}

cues_position :: (using segment: *Mkvmuxer_Segment) -> Segment_Cues_Position {
    return cues_position;
}

output_cues :: (using segment: *Mkvmuxer_Segment) -> bool {
    return output_cues;
}

estimate_file_duration :: (using segment: *Mkvmuxer_Segment) -> bool {
    return estimate_file_duration;
}

segment_info :: (using segment: *Mkvmuxer_Segment) -> *Mkvmuxer_Segment_Info {
    return *segment_info;
}

duration :: (using segment: *Mkvmuxer_Segment) -> float64 {
    return duration;
}

init_54 :: (using vp9_codec_features: *Vp9_Codec_Features) {
    profile = S32_MAX;
    level = S32_MAX;
    bit_depth = S32_MAX;
    chroma_subsampling = S32_MAX;
}

deinit_40 :: (using vp9_codec_features: *Vp9_Codec_Features) {
}

deinit_41 :: (using i_mkv_reader: *I_Mkv_Reader) {
    cpp_transpiler_dynamic_type_IMkvReader = 1;
}

eos :: (using block_entry: *Block_Entry) -> bool {
    return cast,no_check(s32) cpp_transpiler_dispatch_mkvparser_BlockEntry_GetKind(block_entry) == cast,no_check(s32) MKVPARSER_BLOCK_ENTRY_K_BLOCK_EOS;
}

deinit_45 :: (using simple_block: *Simple_Block) {
    block_entry.cpp_transpiler_dynamic_type_BlockEntry = 7;
    cpp_transpiler_subobject_cleanup_g7: bool = ---;
    defer deinit_44(*block_entry);
    cpp_transpiler_subobject_cleanup_g8: bool = ---;
    defer deinit_43(*block);
}

deinit_46 :: (using block_group: *Block_Group) {
    block_entry.cpp_transpiler_dynamic_type_BlockEntry = 8;
    cpp_transpiler_subobject_cleanup_g9: bool = ---;
    defer deinit_44(*block_entry);
    cpp_transpiler_subobject_cleanup_g10: bool = ---;
    defer deinit_43(*block);
}

init_67 :: (using content_enc_aes_settings: *Content_Encoding_Content_Enc_AES_Settings) {
    cipher_mode = cast,no_check(u64) MKVPARSER_CONTENT_ENCODING_K_CTR;
}

deinit_49 :: (using content_enc_aes_settings: *Content_Encoding_Content_Enc_AES_Settings) {
}

encoding_order :: (using content_encoding: *Mkvparser_Content_Encoding) -> u64 {
    return encoding_order;
}

encoding_scope :: (using content_encoding: *Mkvparser_Content_Encoding) -> u64 {
    return encoding_scope;
}

encoding_type :: (using content_encoding: *Mkvparser_Content_Encoding) -> u64 {
    return encoding_type;
}

deinit_53 :: (using eos_block: *Track_EOS_Block) {
    block_entry.cpp_transpiler_dynamic_type_BlockEntry = 9;
    cpp_transpiler_subobject_cleanup_g11: bool = ---;
    defer deinit_44(*block_entry);
}

init_75 :: (using primary_chromaticity: *Mkvparser_Primary_Chromaticity) {
    x = 0.0;
    y = 0.0;
}

deinit_54 :: (using primary_chromaticity: *Mkvparser_Primary_Chromaticity) {
}

init_76 :: (using mastering_metadata: *Mkvparser_Mastering_Metadata) {
    r = cast,no_check(*Mkvparser_Primary_Chromaticity) (cast(*Mkvparser_Primary_Chromaticity) null);
    g = cast,no_check(*Mkvparser_Primary_Chromaticity) (cast(*Mkvparser_Primary_Chromaticity) null);
    b = cast,no_check(*Mkvparser_Primary_Chromaticity) (cast(*Mkvparser_Primary_Chromaticity) null);
    white_point = cast,no_check(*Mkvparser_Primary_Chromaticity) (cast(*Mkvparser_Primary_Chromaticity) null);
    luminance_max = MKVPARSER_MASTERING_METADATA_K_VALUE_NOT_PRESENT;
    luminance_min = MKVPARSER_MASTERING_METADATA_K_VALUE_NOT_PRESENT;
}

deinit_55 :: (using mastering_metadata: *Mkvparser_Mastering_Metadata) {
    {
        cpp_transpiler_delete_g12 := cast,no_check(*Mkvparser_Primary_Chromaticity) (r);
        if cpp_transpiler_delete_g12 != null {
            deinit_54(cpp_transpiler_delete_g12);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g12);
        }
    }
    {
        cpp_transpiler_delete_g13 := cast,no_check(*Mkvparser_Primary_Chromaticity) (g);
        if cpp_transpiler_delete_g13 != null {
            deinit_54(cpp_transpiler_delete_g13);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g13);
        }
    }
    {
        cpp_transpiler_delete_g14 := cast,no_check(*Mkvparser_Primary_Chromaticity) (b);
        if cpp_transpiler_delete_g14 != null {
            deinit_54(cpp_transpiler_delete_g14);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g14);
        }
    }
    {
        cpp_transpiler_delete_g15 := cast,no_check(*Mkvparser_Primary_Chromaticity) (white_point);
        if cpp_transpiler_delete_g15 != null {
            deinit_54(cpp_transpiler_delete_g15);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g15);
        }
    }
}

init_77 :: (using colour: *Mkvparser_Colour) {
    matrix_coefficients = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    bits_per_channel = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    chroma_subsampling_horz = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    chroma_subsampling_vert = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    cb_subsampling_horz = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    cb_subsampling_vert = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    chroma_siting_horz = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    chroma_siting_vert = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    range = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    transfer_characteristics = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    primaries = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    max_cll = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    max_fall = MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
    mastering_metadata = cast,no_check(*Mkvparser_Mastering_Metadata) (cast(*Mkvparser_Mastering_Metadata) null);
}

deinit_56 :: (using colour: *Mkvparser_Colour) {
    {
        cpp_transpiler_delete_g16 := cast,no_check(*Mkvparser_Mastering_Metadata) (mastering_metadata);
        if cpp_transpiler_delete_g16 != null {
            deinit_55(cpp_transpiler_delete_g16);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g16);
        }
    }
    mastering_metadata = cast,no_check(*Mkvparser_Mastering_Metadata) (cast(*Mkvparser_Mastering_Metadata) null);
}

init_78 :: (using projection: *Mkvparser_Projection) {
    type = MKVPARSER_PROJECTION_K_TYPE_NOT_PRESENT;
    private_data = cast,no_check(*u8) (cast(*u8) null);
    private_data_length = 0;
    pose_yaw = MKVPARSER_PROJECTION_K_VALUE_NOT_PRESENT;
    pose_pitch = MKVPARSER_PROJECTION_K_VALUE_NOT_PRESENT;
    pose_roll = MKVPARSER_PROJECTION_K_VALUE_NOT_PRESENT;
}

deinit_57 :: (using projection: *Mkvparser_Projection) {
    {
        cpp_transpiler_delete_g17 := cast,no_check(*u8) (private_data);
        if cpp_transpiler_delete_g17 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g17);
        }
    }
}

get_colour_space :: (using video_track: *Mkvparser_Video_Track) -> *s8 {
    return colour_space;
}

deinit_59 :: (using audio_track: *Mkvparser_Audio_Track) {
    track.cpp_transpiler_dynamic_type_Track = 5;
    cpp_transpiler_subobject_cleanup_g18: bool = ---;
    defer deinit_51(*track);
}

load_cluster :: (using segment: *Mkvparser_Segment) -> s64 {
    _pos: s64 = ---;
    _size: s64 = ---;

    return load_cluster(segment, *_pos, *_size);
}

deinit_74 :: (using class_unique_ptr_class_primary_chromaticity: *Class_Unique_Ptr_Class_Primary_Chromaticity) {
    #assert true; // validated by the C++ frontend
    ptr: *Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer =
        cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ptr_2(
            cast(*Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) *t
        );
    if (cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ptr).* != null {
        call(
            get_deleter(class_unique_ptr_class_primary_chromaticity),
            (cast(*Std_Remove_Reference_Mkvmuxer_Primary_Chromaticity_Type) ptr).*
        );
    }
    assignment_1: Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) (null);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer) ptr).*)).*) = assignment_1;
}

init_119 :: (
    using class_unique_ptr_class_primary_chromaticity: *Class_Unique_Ptr_Class_Primary_Chromaticity,
    unnamed_5222: Nullptr_T
) {
    init_120(*t);
}

init_120 :: (
    using struct_uniq_ptr_data_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Struct_Uniq_Ptr_Data_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) {
    init_121(
        cast(*Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) struct_uniq_ptr_data_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity
    );
}

init_121 :: (
    using class_uniq_ptr_impl_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) {
    init_122(*t);
}

init_122 :: (
    using class_tuple_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) {
    init_123(
        cast(*Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity) class_tuple_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity
    );
}

init_123 :: (
    using struct_tuple_impl_0_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity: *Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity
) {
    init_124(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Primary_Chromaticity) struct_tuple_impl_0_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity
    );
    assignment_2: Struct_Head_Base_0_Class_Primary_Chromaticity =
        make_struct_std_head_base_0_class_mkvmuxer_primary_chromaticity();
    ((cast,no_check(*Struct_Head_Base_0_Class_Primary_Chromaticity) *((cast(*Struct_Head_Base_0_Class_Primary_Chromaticity) struct_tuple_impl_0_class_primary_chromaticity_struct_default_delete_class_primary_chromaticity).*)).*) = assignment_2;
}

init_124 :: (
    using struct_tuple_impl_1_struct_default_delete_class_primary_chromaticity: *Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Primary_Chromaticity
) {
    init_125(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Class_Primary_Chromaticity) struct_tuple_impl_1_struct_default_delete_class_primary_chromaticity
    );
}

init_125 :: (
    using struct_head_base_1_struct_default_delete_class_primary_chromaticity: *Struct_Head_Base_1_Struct_Default_Delete_Class_Primary_Chromaticity
) {
}

make_struct_std_head_base_0_class_mkvmuxer_primary_chromaticity :: () -> Struct_Head_Base_0_Class_Primary_Chromaticity {
    return Struct_Head_Base_0_Class_Primary_Chromaticity.{head_impl = cast,no_check(*Mkvmuxer_Primary_Chromaticity) (null)};
}

libwebm_copy_primary_chromaticity :: (
    parser_pc: *Mkvparser_Primary_Chromaticity,
    muxer_pc: *Primary_Chromaticity_Ptr
) -> bool {
    reset(
        muxer_pc,
        (ifx true {
    cpp_transpiler_new_g19 :=
        cast,no_check(*Mkvmuxer_Primary_Chromaticity) (cast(*Mkvmuxer_Primary_Chromaticity) cpp_transpiler_allocate_raw(
            size_of(Mkvmuxer_Primary_Chromaticity)
        ));
    init_19(cpp_transpiler_new_g19, parser_pc.x, parser_pc.y);
    cpp_transpiler_new_g19;
})

    );
    if muxer_pc == null {
        return false;
    }
    return true;
}

libwebm_mastering_metadata_value_present :: (value: float64) -> bool {
    return c_transpiler_float_not_equal(value, cast,no_check(float64) MKVPARSER_MASTERING_METADATA_K_VALUE_NOT_PRESENT);
}

libwebm_copy_mastering_metadata :: (
    parser_mm: *Mkvparser_Mastering_Metadata,
    muxer_mm: *Mkvmuxer_Mastering_Metadata
) -> bool {
    if libwebm_mastering_metadata_value_present(cast,no_check(float64) parser_mm.luminance_max) {
        muxer_mm.luminance_max = parser_mm.luminance_max;
    }
    if libwebm_mastering_metadata_value_present(cast,no_check(float64) parser_mm.luminance_min) {
        muxer_mm.luminance_min = parser_mm.luminance_min;
    }

    r_ptr: Primary_Chromaticity_Ptr = ---;
    defer deinit_74(*r_ptr);
    init_119(*r_ptr, cast(*void) 0);
    g_ptr: Primary_Chromaticity_Ptr = ---;
    defer deinit_74(*g_ptr);
    init_119(*g_ptr, cast(*void) 0);
    b_ptr: Primary_Chromaticity_Ptr = ---;
    defer deinit_74(*b_ptr);
    init_119(*b_ptr, cast(*void) 0);
    wp_ptr: Primary_Chromaticity_Ptr = ---;
    defer deinit_74(*wp_ptr);
    init_119(*wp_ptr, cast(*void) 0);

    if parser_mm.r != null {
        if !libwebm_copy_primary_chromaticity(parser_mm.r, *r_ptr) {
            return false;
        }
    }
    if parser_mm.g != null {
        if !libwebm_copy_primary_chromaticity(parser_mm.g, *g_ptr) {
            return false;
        }
    }
    if parser_mm.b != null {
        if !libwebm_copy_primary_chromaticity(parser_mm.b, *b_ptr) {
            return false;
        }
    }
    if parser_mm.white_point != null {
        if !libwebm_copy_primary_chromaticity(parser_mm.white_point, *wp_ptr) {
            return false;
        }
    }

    if !set_chromaticity(muxer_mm, get(*r_ptr), get(*g_ptr), get(*b_ptr), get(*wp_ptr)) {
        return false;
    }

    return true;
}

libwebm_colour_value_present :: (value: s64) -> bool {
    return value != MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT;
}

libwebm_copy_colour :: (parser_colour: *Mkvparser_Colour, muxer_colour: *Mkvmuxer_Colour) -> bool {
    if muxer_colour == null {
        return false;
    }

    if libwebm_colour_value_present(parser_colour.matrix_coefficients) {
        muxer_colour.matrix_coefficients = cast,no_check(u64) parser_colour.matrix_coefficients;
    }
    if libwebm_colour_value_present(parser_colour.bits_per_channel) {
        muxer_colour.bits_per_channel = cast,no_check(u64) parser_colour.bits_per_channel;
    }
    if libwebm_colour_value_present(parser_colour.chroma_subsampling_horz) {
        muxer_colour.chroma_subsampling_horz = cast,no_check(u64) parser_colour.chroma_subsampling_horz;
    }
    if libwebm_colour_value_present(parser_colour.chroma_subsampling_vert) {
        muxer_colour.chroma_subsampling_vert = cast,no_check(u64) parser_colour.chroma_subsampling_vert;
    }
    if libwebm_colour_value_present(parser_colour.cb_subsampling_horz) {
        muxer_colour.cb_subsampling_horz = cast,no_check(u64) parser_colour.cb_subsampling_horz;
    }
    if libwebm_colour_value_present(parser_colour.cb_subsampling_vert) {
        muxer_colour.cb_subsampling_vert = cast,no_check(u64) parser_colour.cb_subsampling_vert;
    }
    if libwebm_colour_value_present(parser_colour.chroma_siting_horz) {
        muxer_colour.chroma_siting_horz = cast,no_check(u64) parser_colour.chroma_siting_horz;
    }
    if libwebm_colour_value_present(parser_colour.chroma_siting_vert) {
        muxer_colour.chroma_siting_vert = cast,no_check(u64) parser_colour.chroma_siting_vert;
    }
    if libwebm_colour_value_present(parser_colour.range) {
        muxer_colour.range = cast,no_check(u64) parser_colour.range;
    }
    if libwebm_colour_value_present(parser_colour.transfer_characteristics) {
        muxer_colour.transfer_characteristics = cast,no_check(u64) parser_colour.transfer_characteristics;
    }
    if libwebm_colour_value_present(parser_colour.primaries) {
        muxer_colour.primaries = cast,no_check(u64) parser_colour.primaries;
    }
    if libwebm_colour_value_present(parser_colour.max_cll) {
        muxer_colour.max_cll = cast,no_check(u64) parser_colour.max_cll;
    }
    if libwebm_colour_value_present(parser_colour.max_fall) {
        muxer_colour.max_fall = cast,no_check(u64) parser_colour.max_fall;
    }

    if parser_colour.mastering_metadata != null {
        muxer_mm: Mkvmuxer_Mastering_Metadata = ---;
        defer deinit_10(*muxer_mm);
        init_21(*muxer_mm);
        if !libwebm_copy_mastering_metadata(parser_colour.mastering_metadata, *muxer_mm) {
            return false;
        }
        if !set_mastering_metadata(muxer_colour, *muxer_mm) {
            return false;
        }
    }
    return true;
}

libwebm_parse_vpx_codec_private :: (private_data: *u8, length: s32, features: *Vp9_Codec_Features) -> bool {
    K_VPX_CODEC_PRIVATE_MIN_LENGTH: s32 = 3;
    if private_data == null || features == null || length < K_VPX_CODEC_PRIVATE_MIN_LENGTH {
        return false;
    }

    K_VP9_PROFILE_ID: u8 = 1;
    K_VP9_LEVEL_ID: u8 = 2;
    K_VP9_BIT_DEPTH_ID: u8 = 3;
    K_VP9_CHROMA_SUBSAMPLING_ID: u8 = 4;
    K_VPX_FEATURE_LENGTH: s32 = 1;
    offset: s32 = 0;

    features.profile = S32_MAX;
    features.level = S32_MAX;
    features.bit_depth = S32_MAX;
    features.chroma_subsampling = S32_MAX;
    while true {
        {
            ID_BYTE := private_data[c_transpiler_post_increment(*(offset))];
            LENGTH_BYTE := private_data[c_transpiler_post_increment(*(offset))];
            if cast,no_check(s32) LENGTH_BYTE != K_VPX_FEATURE_LENGTH {
                return false;
            }
            if ID_BYTE == K_VP9_PROFILE_ID {
                PRIV_PROFILE := cast,no_check(s32) (private_data[c_transpiler_post_increment(*(offset))]);
                if PRIV_PROFILE < 0 || PRIV_PROFILE > 3 {
                    return false;
                }
                if features.profile != S32_MAX && features.profile != PRIV_PROFILE {
                    return false;
                }
                features.profile = PRIV_PROFILE;
            } else if ID_BYTE == K_VP9_LEVEL_ID {
                PRIV_LEVEL := cast,no_check(s32) (private_data[c_transpiler_post_increment(*(offset))]);

                K_NUM_LEVELS: s32 = 14;
                LEVELS :=
                    s32.[
                        10,
                        11,
                        20,
                        21,
                        30,
                        31,
                        40,
                        41,
                        50,
                        51,
                        52,
                        60,
                        61,
                        62
                    ];

                if 0 < K_NUM_LEVELS {
                    for i: 0..K_NUM_LEVELS - 1 {
                        if PRIV_LEVEL == LEVELS[i] {
                            if features.level != S32_MAX && features.level != PRIV_LEVEL {
                                return false;
                            }
                            features.level = PRIV_LEVEL;
                            break;
                        }
                    }
                }
                if features.level == S32_MAX {
                    return false;
                }
            } else if ID_BYTE == K_VP9_BIT_DEPTH_ID {
                PRIV_PROFILE := cast,no_check(s32) (private_data[c_transpiler_post_increment(*(offset))]);
                if PRIV_PROFILE != 8 && PRIV_PROFILE != 10 && PRIV_PROFILE != 12 {
                    return false;
                }
                if features.bit_depth != S32_MAX && features.bit_depth != PRIV_PROFILE {
                    return false;
                }
                features.bit_depth = PRIV_PROFILE;
            } else if ID_BYTE == K_VP9_CHROMA_SUBSAMPLING_ID {
                PRIV_PROFILE := cast,no_check(s32) (private_data[c_transpiler_post_increment(*(offset))]);
                if PRIV_PROFILE != 0 && PRIV_PROFILE != 1 && PRIV_PROFILE != 2 && PRIV_PROFILE != 3 {
                    return false;
                }
                if features.chroma_subsampling != S32_MAX && features.chroma_subsampling != PRIV_PROFILE {
                    return false;
                }
                features.chroma_subsampling = PRIV_PROFILE;
            } else {
                return false;
            }
        }
        if !(offset + K_VPX_CODEC_PRIVATE_MIN_LENGTH <= length) break;
    }

    return true;
}

globals_initialization_state_for_hdr_util: u32;
initialize_globals_for_hdr_util :: () {
    {
        state := atomic_load(*globals_initialization_state_for_hdr_util);
        if state == 2 return;
        won, _ := compare_and_swap(*globals_initialization_state_for_hdr_util, 0, 1);
        if !won {
            while atomic_load(*globals_initialization_state_for_hdr_util) != 2 {}
            return;
        }
    }
    K_MAX_TRACK_NUMBER = 126;
    E_PARSE_FAILED = -1;
    E_FILE_FORMAT_INVALID = -2;
    E_BUFFER_NOT_FULL = -3;
    LIBWEBM_VP9_CODEC_FEATURES_K_VALUE_NOT_PRESENT = 2147483647;
    atomic_store(*globals_initialization_state_for_hdr_util, 2);
}

Int32 :: s32;

I_Mkv_Writer :: struct {
    cpp_transpiler_dynamic_type_IMkvWriter: u64;
}

Uint32 :: u32;

Int64 :: s64;

Uint64 :: u64;

Mkvmuxer_Track :: struct {
    cpp_transpiler_dynamic_type_Track: u64 #align 8;
    codec_id: *s8 #align 1;
    codec_private: *u8 #align 1;
    language: *s8 #align 1;
    max_block_additional_id: u64 #align 1;
    name: *s8 #align 1;
    number: u64 #align 1;
    type: u64 #align 1;
    uid: u64 #align 1;
    codec_delay: u64 #align 1;
    seek_pre_roll: u64 #align 1;
    default_duration: u64 #align 1;
    codec_private_length: u64 #align 1;
    content_encoding_entries: **Mkvmuxer_Content_Encoding #align 1;
    content_encoding_entries_size: u32 #align 1;
    layout_padding_0: [4] u8 #align 1;
    block_addition_mappings: Class_Vector_Class_Block_Addition_Mapping #align 1;
} #no_padding;

I_Mkv_Reader :: struct {
    cpp_transpiler_dynamic_type_IMkvReader: u64;
}

Block_Entry :: struct {
    cpp_transpiler_dynamic_type_BlockEntry: u64;
    p_cluster: *Mkvparser_Cluster;
    index: s64;
}

Block_Entry_Kind :: u32;
MKVPARSER_BLOCK_ENTRY_K_BLOCK_EOS : Block_Entry_Kind : 0;
MKVPARSER_BLOCK_ENTRY_K_BLOCK_SIMPLE : Block_Entry_Kind : 1;
MKVPARSER_BLOCK_ENTRY_K_BLOCK_GROUP : Block_Entry_Kind : 2;

Block :: struct {
    start: s64;
    size: s64;
    track: s64;
    timecode: s16;
    flags: u8;
    frames: *Block_Frame;
    frame_count: s32;
    discard_padding: s64;
}

Mkvparser_Track :: struct {
    cpp_transpiler_dynamic_type_Track: u64;
    p_segment: *Mkvparser_Segment;
    element_start: s64;
    element_size: s64;
    info: Track_Info;
    eos: Track_EOS_Block;
    content_encoding_entries: **Mkvparser_Content_Encoding;
    content_encoding_entries_end: **Mkvparser_Content_Encoding;
}

Class_Unique_Ptr_Class_Primary_Chromaticity :: struct {
    t: Struct_Uniq_Ptr_Data_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity #align 8;
} #no_padding;

Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Pointer :: Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer;

Class_Uniq_Ptr_Impl_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity :: struct {
    t: Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Pointer :: Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chrom_H13171388222932164680;

Class_Tuple_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Tuple_Element_0_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type :: Std_Nth_Type_0_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type;

Struct_Tuple_Impl_0_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Mkvmuxer_Primary_Chromaticity :: struct {
    x: float32;
    y: float32;
}

Struct_Head_Base_0_Class_Primary_Chromaticity :: struct {
    head_impl: *Mkvmuxer_Primary_Chromaticity;
}

Std_Unique_Ptr_Mkvmuxer_Primary_Chromaticity_Deleter_Type :: Struct_Default_Delete_Class_Primary_Chromaticity;

Struct_Default_Delete_Class_Primary_Chromaticity :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Tuple_Element_1_Std_Tuple_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type :: Std_Nth_Type_1_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type;

Struct_Tuple_Impl_1_Struct_Default_Delete_Class_Primary_Chromaticity :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Head_Base_1_Struct_Default_Delete_Class_Primary_Chromaticity :: struct {
    head_impl: Struct_Default_Delete_Class_Primary_Chromaticity #align 1;
} #no_padding;

Std_Remove_Reference_Mkvmuxer_Primary_Chromaticity_Type :: *Mkvmuxer_Primary_Chromaticity;

Frame :: struct {
    add_id: u64;
    additional: *u8;
    additional_length: u64;
    duration: u64;
    duration_set: bool;
    frame: *u8;
    is_key: bool;
    length: u64;
    track_number: u64;
    timestamp: u64;
    discard_padding: s64;
    reference_block_timestamp: s64;
    reference_block_timestamp_set: bool;
}

Mkvmuxer_Cue_Point :: struct {
    time: u64;
    track: u64;
    cluster_pos: u64;
    block_number: u64;
    output_block_number: bool;
}

Mkvmuxer_Cues :: struct {
    cue_entries_capacity: s32;
    cue_entries_size: s32;
    cue_entries: **Mkvmuxer_Cue_Point;
    output_block_number: bool;
}

Content_Enc_AES_Settings :: struct {
    cipher_mode: u64;
}

Mkvmuxer_Content_Encoding :: struct {
    enc_algo: u64;
    enc_key_id: *u8;
    encoding_order: u64;
    encoding_scope: u64;
    encoding_type: u64;
    enc_aes_settings: Content_Enc_AES_Settings;
    enc_key_id_length: u64;
}

Mkvmuxer_Mastering_Metadata :: struct {
    luminance_max: float32;
    luminance_min: float32;
    r: *Mkvmuxer_Primary_Chromaticity;
    g: *Mkvmuxer_Primary_Chromaticity;
    b: *Mkvmuxer_Primary_Chromaticity;
    white_point: *Mkvmuxer_Primary_Chromaticity;
}

Mkvmuxer_Colour :: struct {
    matrix_coefficients: u64;
    bits_per_channel: u64;
    chroma_subsampling_horz: u64;
    chroma_subsampling_vert: u64;
    cb_subsampling_horz: u64;
    cb_subsampling_vert: u64;
    chroma_siting_horz: u64;
    chroma_siting_vert: u64;
    range: u64;
    transfer_characteristics: u64;
    primaries: u64;
    max_cll: u64;
    max_fall: u64;
    mastering_metadata: *Mkvmuxer_Mastering_Metadata;
}

Mkvmuxer_Projection :: struct {
    type: Projection_Projection_Type_in_mkvmuxer;
    pose_yaw: float32;
    pose_pitch: float32;
    pose_roll: float32;
    private_data: *u8;
    private_data_length: u64;
}

Projection_Projection_Type_in_mkvmuxer :: s32;
MKVMUXER_PROJECTION_K_TYPE_NOT_PRESENT : Projection_Projection_Type_in_mkvmuxer : -1;
MKVMUXER_PROJECTION_K_RECTANGULAR : Projection_Projection_Type_in_mkvmuxer : 0;
MKVMUXER_PROJECTION_K_EQUIRECTANGULAR : Projection_Projection_Type_in_mkvmuxer : 1;
MKVMUXER_PROJECTION_K_CUBE_MAP : Projection_Projection_Type_in_mkvmuxer : 2;
MKVMUXER_PROJECTION_K_MESH : Projection_Projection_Type_in_mkvmuxer : 3;

Mkvmuxer_Video_Track :: struct {
    #as track: Mkvmuxer_Track #align 8;
    display_height: u64 #align 1;
    display_width: u64 #align 1;
    pixel_height: u64 #align 1;
    pixel_width: u64 #align 1;
    crop_left: u64 #align 1;
    crop_right: u64 #align 1;
    crop_top: u64 #align 1;
    crop_bottom: u64 #align 1;
    frame_rate: float64 #align 1;
    height: u64 #align 1;
    stereo_mode: u64 #align 1;
    alpha_mode: u64 #align 1;
    width: u64 #align 1;
    colour_space: *s8 #align 1;
    colour: *Mkvmuxer_Colour #align 1;
    projection: *Mkvmuxer_Projection #align 1;
} #no_padding;

Mkvmuxer_Audio_Track :: struct {
    #as track: Mkvmuxer_Track #align 8;
    bit_depth: u64 #align 1;
    channels: u64 #align 1;
    sample_rate: float64 #align 1;
} #no_padding;

Mkvmuxer_Tracks :: struct {
    track_entries: **Mkvmuxer_Track;
    track_entries_size: u32;
    wrote_tracks: bool;
}

Mkvmuxer_Cluster :: struct {
    blocks_added: s32 #align 8;
    finalized: bool #align 1;
    fixed_size_timecode: bool #align 1;
    header_written: bool #align 1;
    layout_padding_0: [1] u8 #align 1;
    payload_size: u64 #align 1;
    position_for_cues: s64 #align 1;
    size_position: s64 #align 1;
    timecode: u64 #align 1;
    timecode_scale: u64 #align 1;
    write_last_frame_with_duration: bool #align 1;
    layout_padding_1: [7] u8 #align 1;
    stored_frames: Class_Map_Unsigned_Long_Class_List_Class_Frame #align 1;
    last_block_timestamp: Class_Map_Unsigned_Long_Unsigned_Long #align 1;
    writer: *I_Mkv_Writer #align 1;
} #no_padding;

Mkvmuxer_Segment_Info :: struct {
    duration: float64;
    muxing_app: *s8;
    timecode_scale: u64;
    writing_app: *s8;
    date_utc: s64;
    duration_pos: s64;
}

Mkvmuxer_Segment :: struct {
    seed: u32;
    cues: Mkvmuxer_Cues;
    seek_head: Mkvmuxer_Seek_Head;
    segment_info: Mkvmuxer_Segment_Info;
    tracks: Mkvmuxer_Tracks;
    chapters: Mkvmuxer_Chapters;
    tags: Mkvmuxer_Tags;
    chunk_count: s32;
    chunk_name: *s8;
    chunk_writer_cluster: *Mkv_Writer;
    chunk_writer_cues: *Mkv_Writer;
    chunk_writer_header: *Mkv_Writer;
    chunking: bool;
    chunking_base_name: *s8;
    cluster_end_offset: s64;
    cluster_list: **Mkvmuxer_Cluster;
    cluster_list_capacity: s32;
    cluster_list_size: s32;
    cues_position: Segment_Cues_Position;
    cues_track: u64;
    force_new_cluster: bool;
    frames: **Frame;
    frames_capacity: s32;
    frames_size: s32;
    has_video: bool;
    header_written: bool;
    last_block_duration: u64;
    last_timestamp: u64;
    last_track_timestamp: [126] u64;
    track_frames_written: [126] u64;
    max_cluster_duration: u64;
    max_cluster_size: u64;
    mode: Segment_Mode;
    new_cuepoint: bool;
    output_cues: bool;
    accurate_cluster_duration: bool;
    fixed_size_cluster_timecode: bool;
    estimate_file_duration: bool;
    ebml_header_size: s32;
    payload_pos: s64;
    size_position: s64;
    doc_type_version: u32;
    doc_type_version_written: u32;
    duration: float64;
    writer_cluster: *I_Mkv_Writer;
    writer_cues: *I_Mkv_Writer;
    writer_header: *I_Mkv_Writer;
}

Segment_Mode :: u32;
MKVMUXER_SEGMENT_K_LIVE : Segment_Mode : 1;
MKVMUXER_SEGMENT_K_FILE : Segment_Mode : 2;

Segment_Cues_Position :: u32;
MKVMUXER_SEGMENT_K_AFTER_CLUSTERS : Segment_Cues_Position : 0;
MKVMUXER_SEGMENT_K_BEFORE_CLUSTERS : Segment_Cues_Position : 1;

Vp9_Codec_Features :: struct {
    profile: s32;
    level: s32;
    bit_depth: s32;
    chroma_subsampling: s32;
}

Simple_Block :: struct {
    #as block_entry: Block_Entry;
    block: Block;
}

Block_Group :: struct {
    #as block_entry: Block_Entry;
    block: Block;
    prev: s64;
    next: s64;
    duration: s64;
}

Content_Encoding_Content_Enc_AES_Settings :: struct {
    cipher_mode: u64;
}

Mkvparser_Content_Encoding_Values :: u32;
MKVPARSER_CONTENT_ENCODING_K_CTR : Mkvparser_Content_Encoding_Values : 1;

Mkvparser_Content_Encoding :: struct {
    compression_entries: **Content_Encoding_Content_Compression;
    compression_entries_end: **Content_Encoding_Content_Compression;
    encryption_entries: **Content_Encoding_Content_Encryption;
    encryption_entries_end: **Content_Encoding_Content_Encryption;
    encoding_order: u64;
    encoding_scope: u64;
    encoding_type: u64;
}

Track_EOS_Block :: struct {
    #as block_entry: Block_Entry;
}

Mkvparser_Primary_Chromaticity :: struct {
    x: float32;
    y: float32;
}

Mkvparser_Mastering_Metadata :: struct {
    r: *Mkvparser_Primary_Chromaticity;
    g: *Mkvparser_Primary_Chromaticity;
    b: *Mkvparser_Primary_Chromaticity;
    white_point: *Mkvparser_Primary_Chromaticity;
    luminance_max: float32;
    luminance_min: float32;
}

Mkvparser_Colour :: struct {
    matrix_coefficients: s64;
    bits_per_channel: s64;
    chroma_subsampling_horz: s64;
    chroma_subsampling_vert: s64;
    cb_subsampling_horz: s64;
    cb_subsampling_vert: s64;
    chroma_siting_horz: s64;
    chroma_siting_vert: s64;
    range: s64;
    transfer_characteristics: s64;
    primaries: s64;
    max_cll: s64;
    max_fall: s64;
    mastering_metadata: *Mkvparser_Mastering_Metadata;
}

Mkvparser_Projection :: struct {
    type: Projection_Projection_Type;
    private_data: *u8;
    private_data_length: u64;
    pose_yaw: float32;
    pose_pitch: float32;
    pose_roll: float32;
}

Projection_Projection_Type :: s32;
MKVPARSER_PROJECTION_K_TYPE_NOT_PRESENT : Projection_Projection_Type : -1;
MKVPARSER_PROJECTION_K_RECTANGULAR : Projection_Projection_Type : 0;
MKVPARSER_PROJECTION_K_EQUIRECTANGULAR : Projection_Projection_Type : 1;
MKVPARSER_PROJECTION_K_CUBE_MAP : Projection_Projection_Type : 2;
MKVPARSER_PROJECTION_K_MESH : Projection_Projection_Type : 3;

Mkvparser_Video_Track :: struct {
    #as track: Mkvparser_Track;
    width: s64;
    height: s64;
    display_width: s64;
    display_height: s64;
    display_unit: s64;
    stereo_mode: s64;
    colour_space: *s8;
    rate: float64;
    colour: *Mkvparser_Colour;
    projection: *Mkvparser_Projection;
}

Mkvparser_Audio_Track :: struct {
    #as track: Mkvparser_Track;
    rate: float64;
    channels: s64;
    bit_depth: s64;
}

Mkvparser_Segment :: struct {
    p_reader: *I_Mkv_Reader;
    element_start: s64;
    start: s64;
    size: s64;
    eos: Mkvparser_Cluster;
    pos: s64;
    p_unknown_size: *Mkvparser_Cluster;
    p_seek_head: *Mkvparser_Seek_Head;
    p_info: *Mkvparser_Segment_Info;
    p_tracks: *Mkvparser_Tracks;
    p_cues: *Mkvparser_Cues;
    p_chapters: *Mkvparser_Chapters;
    p_tags: *Mkvparser_Tags;
    clusters: **Mkvparser_Cluster;
    cluster_count: s64;
    cluster_preload_count: s64;
    cluster_size: s64;
}

Nullptr_T :: *void;

Struct_Uniq_Ptr_Data_Class_Primary_Chromaticity_Struct_Default_Delete_Class_Primary_Chromaticity :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Primary_Chromaticity_Ptr :: Class_Unique_Ptr_Class_Primary_Chromaticity;

Class_Vector_Class_Block_Addition_Mapping :: struct {
    layout_padding_0: [24] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Mkvparser_Cluster :: struct {
    p_segment: *Mkvparser_Segment;
    element_start: s64;
    index: s64;
    pos: s64;
    element_size: s64;
    timecode: s64;
    entries: **Block_Entry;
    entries_size: s64;
    entries_count: s64;
}

Block_Frame :: struct {
    pos: s64;
    len: s64;
}

Track_Info :: struct {
    type: s64;
    number: s64;
    uid: u64;
    default_duration: u64;
    codec_delay: u64;
    seek_pre_roll: u64;
    name_as_utf8: *s8;
    language: *s8;
    codec_id: *s8;
    codec_name_as_utf8: *s8;
    codec_private: *u8;
    codec_private_size: u64;
    lacing: bool;
    settings: Track_Settings;
}

Std_Uniq_Ptr_Impl_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chrom_H13171388222932164680 :: *Mkvmuxer_Primary_Chromaticity;

Std_Nth_Type_0_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type :: *Mkvmuxer_Primary_Chromaticity;

Std_Nth_Type_1_Mkvmuxer_Primary_Chromaticity_Std_Default_Delete_Mkvmuxer_Primary_Chromaticity_Type :: Struct_Default_Delete_Class_Primary_Chromaticity;

Class_Map_Unsigned_Long_Class_List_Class_Frame :: struct {
    t: Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Rep_Type #align 8;
} #no_padding;

Class_Map_Unsigned_Long_Unsigned_Long :: struct {
    t: Std_Map_Unsigned_Long_Unsigned_Long_Rep_Type #align 8;
} #no_padding;

Mkvmuxer_Seek_Head :: struct {
    seek_entry_id: [5] u32;
    seek_entry_pos: [5] u64;
    start_pos: s64;
}

Mkvmuxer_Chapters :: struct {
    chapters_size: s32;
    chapters_count: s32;
    chapters: *Chapter;
}

Mkvmuxer_Tags :: struct {
    tags_size: s32;
    tags_count: s32;
    tags: *Tag;
}

Content_Encoding_Content_Compression :: struct {
    algo: u64;
    settings: *u8;
    settings_len: s64;
}

Content_Encoding_Content_Encryption :: struct {
    algo: u64;
    key_id: *u8;
    key_id_len: s64;
    signature: *u8;
    signature_len: s64;
    sig_key_id: *u8;
    sig_key_id_len: s64;
    sig_algo: u64;
    sig_hash_algo: u64;
    aes_settings: Content_Encoding_Content_Enc_AES_Settings;
}

Mkvparser_Seek_Head :: struct {
    p_segment: *Mkvparser_Segment;
    start: s64;
    size: s64;
    element_start: s64;
    element_size: s64;
    entries: *Seek_Head_Entry;
    entry_count: s32;
    void_elements: *Seek_Head_Void_Element;
    void_element_count: s32;
}

Mkvparser_Segment_Info :: struct {
    p_segment: *Mkvparser_Segment;
    start: s64;
    size: s64;
    element_start: s64;
    element_size: s64;
    timecode_scale: s64;
    duration: float64;
    p_muxing_app_as_utf8: *s8;
    p_writing_app_as_utf8: *s8;
    p_title_as_utf8: *s8;
}

Mkvparser_Tracks :: struct {
    p_segment: *Mkvparser_Segment;
    start: s64;
    size: s64;
    element_start: s64;
    element_size: s64;
    track_entries: **Mkvparser_Track;
    track_entries_end: **Mkvparser_Track;
}

Mkvparser_Cues :: struct {
    p_segment: *Mkvparser_Segment;
    start: s64;
    size: s64;
    element_start: s64;
    element_size: s64;
    cue_points: **Mkvparser_Cue_Point;
    count: s64;
    preload_count: s64;
    pos: s64;
}

Mkvparser_Chapters :: struct {
    p_segment: *Mkvparser_Segment;
    start: s64;
    size: s64;
    element_start: s64;
    element_size: s64;
    editions: *Chapters_Edition;
    editions_size: s32;
    editions_count: s32;
}

Mkvparser_Tags :: struct {
    p_segment: *Mkvparser_Segment;
    start: s64;
    size: s64;
    element_start: s64;
    element_size: s64;
    tags: *Tags_Tag;
    tags_size: s32;
    tags_count: s32;
}

Track_Settings :: struct {
    start: s64;
    size: s64;
}

Std_Map_Unsigned_Long_Std_List_Mkvmuxer_Frame_Rep_Type :: Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074;

Std_Map_Unsigned_Long_Unsigned_Long_Rep_Type :: Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396;

Chapter :: struct {
    id: *s8;
    start_timecode: u64;
    end_timecode: u64;
    uid: u64;
    displays: *Chapter_Display;
    displays_size: s32;
    displays_count: s32;
}

Tag :: struct {
    simple_tags: *Tag_Simple_Tag;
    simple_tags_size: s32;
    simple_tags_count: s32;
}

Seek_Head_Entry :: struct {
    id: s64;
    pos: s64;
    element_start: s64;
    element_size: s64;
}

Seek_Head_Void_Element :: struct {
    element_start: s64;
    element_size: s64;
}

Mkvparser_Cue_Point :: struct {
    element_start: s64;
    element_size: s64;
    index: s64;
    timecode: s64;
    track_positions: *Cue_Point_Track_Position;
    track_positions_count: u64;
}

Chapters_Edition :: struct {
    atoms: *Chapters_Atom;
    atoms_size: s32;
    atoms_count: s32;
}

Tags_Tag :: struct {
    simple_tags: *Tags_Simple_Tag;
    simple_tags_size: s32;
    simple_tags_count: s32;
}

Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H455860214345177074 :: struct {
    impl: Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H1565541795055378612 #align 8;
} #no_padding;

Class_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Sel_H9289534235289919396 :: struct {
    impl: Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H13458155528517896646 #align 8;
} #no_padding;

Chapter_Display :: struct {
    title: *s8;
    language: *s8;
    country: *s8;
}

Tag_Simple_Tag :: struct {
    tag_name: *s8;
    tag_string: *s8;
}

Cue_Point_Track_Position :: struct {
    track: s64;
    pos: s64;
    block: s64;
}

Chapters_Atom :: struct {
    string_uid: *s8;
    uid: u64;
    start_timecode: s64;
    stop_timecode: s64;
    displays: *Chapters_Display;
    displays_size: s32;
    displays_count: s32;
}

Tags_Simple_Tag :: struct {
    tag_name: *s8;
    tag_string: *s8;
}

Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Class_List_Class_Frame_H1565541795055378612 :: struct {
    layout_padding_0: [48] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Rb_Tree_Unsigned_Long_Struct_Pair_Const_Unsigned_Long_Unsigned_Long_Struct_Se_H13458155528517896646 :: struct {
    layout_padding_0: [48] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Chapters_Display :: struct {
    string_: *s8;
    language: *s8;
    country: *s8;
}

