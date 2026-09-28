// Generated directly from C++ by cpp_transpiler.
Serialize_Float_U32 :: union {
    u32_: Uint32;
    f: float32;
}

K_EBML_UNKNOWN_VALUE_storage: Uint64;

K_MAX_BLOCK_TIMECODE_storage: Int64;

K_DATE_ELEMENT_SIZE: s32;

K_MAX_TRACK_NUMBER_in_mkvmuxerutil: u64;

mkvmuxer_SerializeInt :: (writer: *I_Mkv_Writer, value: Int64, size: Int32) -> Int32 {
    if writer == null || size < 1 || size > 8 {
        return -1;
    }

    if 1 <= size {
        for i: 1..size {
            BYTE_COUNT := size - i;
            BIT_COUNT := BYTE_COUNT * 8;

            BB := value >> ((BIT_COUNT) & 63);
            B := cast,no_check(Uint8) BB;

            STATUS := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write(writer, cast(*void) *B, 1);

            if STATUS < 0 {
                return STATUS;
            }
        }
    }

    return 0;
}

mkvmuxer_SerializeFloat :: (writer: *I_Mkv_Writer, f: float32) -> Int32 {
    if writer == null {
        return -1;
    }

    assert(4 == 4);

    value: Serialize_Float_U32 = ---;
    value.f = f;

    if 1 <= 4 {
        for i: 1..cast(Int32) 4 {
            BYTE_COUNT := 4 - i;
            BIT_COUNT := BYTE_COUNT * 8;

            BYTE := cast,no_check(Uint8) (value.u32_ >> ((BIT_COUNT) & 31));

            STATUS := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write(writer, cast(*void) *BYTE, 1);

            if STATUS < 0 {
                return STATUS;
            }
        }
    }

    return 0;
}

mkvmuxer_GetUIntSize :: (value: Uint64) -> Int32 {
    if value < 0x100 {
        return 1;
    } else if value < 0x10000 {
        return 2;
    } else if value < 0x1000000 {
        return 3;
    } else if value < 0x100000000 {
        return 4;
    } else if value < 0x10000000000 {
        return 5;
    } else if value < 0x1000000000000 {
        return 6;
    } else if value < 0x100000000000000 {
        return 7;
    }
    return 8;
}

mkvmuxer_GetIntSize :: (value: Int64) -> Int32 {
    V := cast,no_check(Uint64) ((ifx value < 0 then value ^ -1 else value));
    return mkvmuxer_GetUIntSize(2 * V);
}

mkvmuxer_GetCodedUIntSize :: (value: Uint64) -> Int32 {
    if value < 0x7f {
        return 1;
    } else if value < 0x3fff {
        return 2;
    } else if value < 0x1fffff {
        return 3;
    } else if value < 0xfffffff {
        return 4;
    } else if value < 0x7ffffffff {
        return 5;
    } else if value < 0x3ffffffffff {
        return 6;
    } else if value < 0x1ffffffffffff {
        return 7;
    }
    return 8;
}

mkvmuxer_EbmlMasterElementSize :: (type: Uint64, value: Uint64) -> Uint64 {
    ebml_size := mkvmuxer_GetUIntSize(type);

    ebml_size += mkvmuxer_GetCodedUIntSize(value);

    return cast,no_check(Uint64) ebml_size;
}

mkvmuxer_EbmlElementSize :: (type: Uint64, value: Int64) -> Uint64 {
    ebml_size := mkvmuxer_GetUIntSize(type);

    ebml_size += mkvmuxer_GetIntSize(value);

    ebml_size += 1;

    return cast,no_check(Uint64) ebml_size;
}

mkvmuxer_EbmlElementSize :: (type: Uint64, value: Uint64) -> Uint64 {
    return mkvmuxer_EbmlElementSize(type, value, 0);
}

mkvmuxer_EbmlElementSize :: (type: Uint64, value: Uint64, fixed_size: Uint64) -> Uint64 {
    ebml_size := cast,no_check(Uint64) mkvmuxer_GetUIntSize(type);

    ebml_size += (ifx fixed_size > 0 then fixed_size else cast,no_check(Uint64) mkvmuxer_GetUIntSize(value));

    ebml_size += 1;

    return ebml_size;
}

mkvmuxer_EbmlElementSize :: (type: Uint64, unnamed_3840: float32) -> Uint64 {
    ebml_size := cast,no_check(Uint64) mkvmuxer_GetUIntSize(type);

    ebml_size += 4;

    ebml_size += 1;

    return ebml_size;
}

mkvmuxer_EbmlElementSize :: (type: Uint64, value: *s8) -> Uint64 {
    if value == null {
        return 0;
    }

    ebml_size := cast,no_check(Uint64) mkvmuxer_GetUIntSize(type);

    ebml_size += cstring_length(value);

    ebml_size += cast,no_check(Uint64) mkvmuxer_GetCodedUIntSize(cstring_length(value));

    return ebml_size;
}

mkvmuxer_EbmlElementSize :: (type: Uint64, value: *Uint8, size: Uint64) -> Uint64 {
    if value == null {
        return 0;
    }

    ebml_size := cast,no_check(Uint64) mkvmuxer_GetUIntSize(type);

    ebml_size += size;

    ebml_size += cast,no_check(Uint64) mkvmuxer_GetCodedUIntSize(size);

    return ebml_size;
}

mkvmuxer_EbmlDateElementSize :: (type: Uint64) -> Uint64 {
    ebml_size := cast,no_check(Uint64) mkvmuxer_GetUIntSize(type);

    ebml_size += cast,no_check(Uint64) cast(s32) 8;

    ebml_size += 1;

    return ebml_size;
}

mkvmuxer_WriteUInt :: (writer: *I_Mkv_Writer, value: Uint64) -> Int32 {
    if writer == null {
        return -1;
    }

    size := mkvmuxer_GetCodedUIntSize(value);

    return mkvmuxer_WriteUIntSize(writer, value, size);
}

mkvmuxer_WriteUIntSize :: (writer: *I_Mkv_Writer, value: Uint64, size: Int32) -> Int32 {
    if writer == null || size < 0 || size > 8 {
        return -1;
    }

    if size > 0 {
        BIT := cast,no_check(Uint64) ((cast(s64) 1) << (((size * 7)) & 63));

        if value > BIT - 2 {
            return -1;
        }

        value |= BIT;
    } else {
        size = 1;
        bit: Int64 = ---;

        while true {
            bit = (cast(s64) 1) << (((size * 7)) & 63);
            MAX := cast,no_check(Uint64) (bit - 2);

            if value <= MAX {
                break;
            }

            size += 1;
        }

        if size > 8 {
            return 0;
        }

        value |= cast,no_check(Uint64) bit;
    }

    return mkvmuxer_SerializeInt(writer, cast,no_check(Int64) value, size);
}

mkvmuxer_WriteEbmlMasterElement :: (writer: *I_Mkv_Writer, type: Uint64, size: Uint64) -> bool {
    if writer == null {
        return false;
    }

    if mkvmuxer_WriteID(writer, type) != 0 {
        return false;
    }

    if mkvmuxer_WriteUInt(writer, size) != 0 {
        return false;
    }

    return true;
}

mkvmuxer_WriteID :: (writer: *I_Mkv_Writer, type: Uint64) -> Int32 {
    if writer == null {
        return -1;
    }

    cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_ElementStartNotify(
        writer,
        type,
        cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer)
    );

    SIZE := mkvmuxer_GetUIntSize(type);

    return mkvmuxer_SerializeInt(writer, cast,no_check(Int64) type, SIZE);
}

mkvmuxer_WriteEbmlElement :: (writer: *I_Mkv_Writer, type: Uint64, value: Uint64) -> bool {
    return mkvmuxer_WriteEbmlElement(writer, type, value, 0);
}

mkvmuxer_WriteEbmlElement :: (writer: *I_Mkv_Writer, type: Uint64, value: Uint64, fixed_size: Uint64) -> bool {
    if writer == null {
        return false;
    }

    if mkvmuxer_WriteID(writer, type) != 0 {
        return false;
    }

    size := cast,no_check(Uint64) mkvmuxer_GetUIntSize(value);
    if fixed_size > 0 {
        if size > fixed_size {
            return false;
        }
        size = fixed_size;
    }
    if mkvmuxer_WriteUInt(writer, size) != 0 {
        return false;
    }

    if mkvmuxer_SerializeInt(writer, cast,no_check(Int64) value, cast,no_check(Int32) size) != 0 {
        return false;
    }

    return true;
}

mkvmuxer_WriteEbmlElement :: (writer: *I_Mkv_Writer, type: Uint64, value: Int64) -> bool {
    if writer == null {
        return false;
    }

    if mkvmuxer_WriteID(writer, type) != 0 {
        return false;
    }

    SIZE := cast,no_check(Uint64) mkvmuxer_GetIntSize(value);
    if mkvmuxer_WriteUInt(writer, SIZE) != 0 {
        return false;
    }

    if mkvmuxer_SerializeInt(writer, value, cast,no_check(Int32) SIZE) != 0 {
        return false;
    }

    return true;
}

mkvmuxer_WriteEbmlElement :: (writer: *I_Mkv_Writer, type: Uint64, value: float32) -> bool {
    if writer == null {
        return false;
    }

    if mkvmuxer_WriteID(writer, type) != 0 {
        return false;
    }

    if mkvmuxer_WriteUInt(writer, 4) != 0 {
        return false;
    }

    if mkvmuxer_SerializeFloat(writer, value) != 0 {
        return false;
    }

    return true;
}

mkvmuxer_WriteEbmlElement :: (writer: *I_Mkv_Writer, type: Uint64, value: *s8) -> bool {
    if writer == null || value == null {
        return false;
    }

    if mkvmuxer_WriteID(writer, type) != 0 {
        return false;
    }

    LENGTH := cstring_length(value);
    if mkvmuxer_WriteUInt(writer, LENGTH) != 0 {
        return false;
    }

    if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write(writer, cast(*void) value, cast,no_check(Uint32) LENGTH) != 0 {
        return false;
    }

    return true;
}

mkvmuxer_WriteEbmlElement :: (writer: *I_Mkv_Writer, type: Uint64, value: *Uint8, size: Uint64) -> bool {
    if writer == null || value == null || size < 1 {
        return false;
    }

    if mkvmuxer_WriteID(writer, type) != 0 {
        return false;
    }

    if mkvmuxer_WriteUInt(writer, size) != 0 {
        return false;
    }

    if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write(writer, cast(*void) value, cast,no_check(Uint32) size) != 0 {
        return false;
    }

    return true;
}

mkvmuxer_WriteEbmlDateElement :: (writer: *I_Mkv_Writer, type: Uint64, value: Int64) -> bool {
    if writer == null {
        return false;
    }

    if mkvmuxer_WriteID(writer, type) != 0 {
        return false;
    }

    if mkvmuxer_WriteUInt(writer, cast,no_check(Uint64) cast(s32) 8) != 0 {
        return false;
    }

    if mkvmuxer_SerializeInt(writer, value, cast(s32) 8) != 0 {
        return false;
    }

    return true;
}

mkvmuxer_WriteFrame :: (writer: *I_Mkv_Writer, FRAME: *Frame, cluster: *Mkvmuxer_Cluster) -> Uint64 {
    if writer == null || FRAME == null || !is_valid(FRAME) || cluster == null || timecode_scale(cluster) == 0 {
        return 0;
    }

    RELATIVE_TIMECODE :=
        get_relative_timecode(
            cluster,
            cast,no_check(s64) (timestamp(FRAME) / timecode_scale(cluster))
        );
    if RELATIVE_TIMECODE < 0 || RELATIVE_TIMECODE > cast(s64) 0x7fff {
        return 0;
    }

    return ifx can_be_simple_block(FRAME) then mkvmuxer_anonymous_namespace_write_simple_block(writer, FRAME, RELATIVE_TIMECODE) else mkvmuxer_anonymous_namespace_write_block(writer, FRAME, RELATIVE_TIMECODE, timecode_scale(cluster));
}

mkvmuxer_anonymous_namespace_write_block :: (
    writer: *I_Mkv_Writer,
    FRAME: *Frame,
    timecode: Int64,
    timecode_scale: Uint64
) -> Uint64 {
    block_additional_elem_size: Uint64 = 0;
    block_addid_elem_size: Uint64 = 0;
    block_more_payload_size: Uint64 = 0;
    block_more_elem_size: Uint64 = 0;
    block_additions_payload_size: Uint64 = 0;
    block_additions_elem_size: Uint64 = 0;
    if ((additional(FRAME)) != null) {
        block_additional_elem_size =
            mkvmuxer_EbmlElementSize(
                cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADDITIONAL,
                additional(FRAME),
                additional_length(FRAME)
            );
        block_addid_elem_size =
            mkvmuxer_EbmlElementSize(
                cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID,
                add_id(FRAME)
            );

        block_more_payload_size = block_addid_elem_size + block_additional_elem_size;
        block_more_elem_size =
            mkvmuxer_EbmlMasterElementSize(
                cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_MORE,
                block_more_payload_size
            ) + block_more_payload_size;
        block_additions_payload_size = block_more_elem_size;
        block_additions_elem_size =
            mkvmuxer_EbmlMasterElementSize(
                cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADDITIONS,
                block_additions_payload_size
            ) + block_additions_payload_size;
    }

    discard_padding_elem_size: Uint64 = 0;
    if discard_padding(FRAME) != 0 {
        discard_padding_elem_size =
            mkvmuxer_EbmlElementSize(
                cast,no_check(Uint64) LIBWEBM_K_MKV_DISCARD_PADDING,
                discard_padding(FRAME)
            );
    }

    REFERENCE_BLOCK_TIMESTAMP := (cast,no_check(Uint64) reference_block_timestamp(FRAME)) / timecode_scale;
    reference_block_elem_size: Uint64 = 0;
    if !is_key(FRAME) {
        reference_block_elem_size =
            mkvmuxer_EbmlElementSize(
                cast,no_check(Uint64) LIBWEBM_K_MKV_REFERENCE_BLOCK,
                REFERENCE_BLOCK_TIMESTAMP
            );
    }

    DURATION := duration(FRAME) / timecode_scale;
    block_duration_elem_size: Uint64 = 0;
    if DURATION > 0 {
        block_duration_elem_size =
            mkvmuxer_EbmlElementSize(
                cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_DURATION,
                DURATION
            );
    }

    BLOCK_PAYLOAD_SIZE := (4 + length_2(FRAME));
    BLOCK_ELEM_SIZE :=
        mkvmuxer_EbmlMasterElementSize(
            cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK,
            BLOCK_PAYLOAD_SIZE
        ) + BLOCK_PAYLOAD_SIZE;

    BLOCK_GROUP_PAYLOAD_SIZE :=
        BLOCK_ELEM_SIZE + block_additions_elem_size + block_duration_elem_size +
            discard_padding_elem_size + reference_block_elem_size;

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_GROUP, BLOCK_GROUP_PAYLOAD_SIZE) {
        return 0;
    }

    if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK, BLOCK_PAYLOAD_SIZE) {
        return 0;
    }

    if mkvmuxer_WriteUInt(writer, track_number(FRAME)) != 0 {
        return 0;
    }

    if mkvmuxer_SerializeInt(writer, timecode, 2) != 0 {
        return 0;
    }

    if mkvmuxer_SerializeInt(writer, 0, 1) != 0 {
        return 0;
    }

    if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write(
        writer,
        cast(*void) frame(FRAME),
        cast,no_check(Uint32) length_2(FRAME)
    ) != 0 {
        return 0;
    }

    if ((additional(FRAME)) != null) {
        if !mkvmuxer_WriteEbmlMasterElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADDITIONS,
            block_additions_payload_size
        ) {
            return 0;
        }

        if !mkvmuxer_WriteEbmlMasterElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_MORE, block_more_payload_size) {
            return 0;
        }

        if !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADD_ID, add_id(FRAME)) {
            return 0;
        }

        if !mkvmuxer_WriteEbmlElement(
            writer,
            cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_ADDITIONAL,
            additional(FRAME),
            additional_length(FRAME)
        ) {
            return 0;
        }
    }

    if discard_padding(FRAME) != 0 &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_DISCARD_PADDING, discard_padding(FRAME)) {
        return 0;
    }

    if !is_key(FRAME) &&
        !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_REFERENCE_BLOCK, REFERENCE_BLOCK_TIMESTAMP) {
        return 0;
    }

    if DURATION > 0 && !mkvmuxer_WriteEbmlElement(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_DURATION, DURATION) {
        return 0;
    }
    return mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_BLOCK_GROUP, BLOCK_GROUP_PAYLOAD_SIZE) + BLOCK_GROUP_PAYLOAD_SIZE;
}

mkvmuxer_anonymous_namespace_write_simple_block :: (writer: *I_Mkv_Writer, FRAME: *Frame, timecode: Int64) -> Uint64 {
    if mkvmuxer_WriteID(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_SIMPLE_BLOCK) != 0 {
        return 0;
    }

    SIZE := (cast,no_check(Int32) length_2(FRAME)) + 4;
    if mkvmuxer_WriteUInt(writer, cast,no_check(Uint64) SIZE) != 0 {
        return 0;
    }

    if mkvmuxer_WriteUInt(writer, track_number(FRAME)) != 0 {
        return 0;
    }

    if mkvmuxer_SerializeInt(writer, timecode, 2) != 0 {
        return 0;
    }

    flags: Uint64 = 0;
    if is_key(FRAME) {
        flags |= 0x80;
    }

    if mkvmuxer_SerializeInt(writer, cast,no_check(Int64) flags, 1) != 0 {
        return 0;
    }

    if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write(
        writer,
        cast(*void) frame(FRAME),
        cast,no_check(Uint32) length_2(FRAME)
    ) != 0 {
        return 0;
    }

    return ((cast,no_check(u64) (mkvmuxer_GetUIntSize(cast,no_check(Uint64) LIBWEBM_K_MKV_SIMPLE_BLOCK) + mkvmuxer_GetCodedUIntSize(cast,no_check(Uint64) SIZE) + 4)) + length_2(FRAME));
}

mkvmuxer_WriteVoidElement :: (writer: *I_Mkv_Writer, size: Uint64) -> Uint64 {
    if writer == null {
        return 0;
    }

    void_entry_size := (size - 1) - cast,no_check(Uint64) mkvmuxer_GetCodedUIntSize(size - 1);
    void_size :=
        mkvmuxer_EbmlMasterElementSize(cast,no_check(Uint64) LIBWEBM_K_MKV_VOID, void_entry_size) +
            void_entry_size;

    if void_size != size {
        return 0;
    }

    PAYLOAD_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if PAYLOAD_POSITION < 0 {
        return 0;
    }

    if mkvmuxer_WriteID(writer, cast,no_check(Uint64) LIBWEBM_K_MKV_VOID) != 0 {
        return 0;
    }

    if mkvmuxer_WriteUInt(writer, void_entry_size) != 0 {
        return 0;
    }

    VALUE: Uint8 = 0;
    if 0 < cast,no_check(Int32) void_entry_size {
        for i: 0..cast,no_check(Int32) void_entry_size - 1 {
            if cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write(writer, cast(*void) *VALUE, 1) != 0 {
                return 0;
            }
        }
    }

    STOP_POSITION := cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position(writer);
    if STOP_POSITION < 0 || STOP_POSITION - PAYLOAD_POSITION != cast,no_check(Int64) void_size {
        return 0;
    }

    return void_size;
}

mkvmuxer_GetVersion :: (major: *Int32, minor: *Int32, build: *Int32, revision: *Int32) {
    major.* = 0;
    minor.* = 3;
    build.* = 4;
    revision.* = 0;
}

mkvmuxer_MakeUID :: (seed: *u32) -> Uint64 {
    uid: Uint64 = 0;

    for i: 0..cast(s32) 7 - 1 {
        c_transpiler_compound_shl(*(uid), (cast(s32) 8), Uint64, Uint64);

        NN := rand_r(seed);

        N := 0xff & (NN >> 4);

        uid |= cast,no_check(Uint64) N;
    }

    return uid;
}

mkvmuxer_IsMatrixCoefficientsValueValid :: (value: u64) -> bool {
    if value == {
        case cast,no_check(u64) MKVMUXER_COLOUR_K_GBR_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_BT709_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_UNSPECIFIED_MC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_RESERVED_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_FCC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_BT470BG_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE170_M_MC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE240_M_MC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_YCOCG_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_BT2020_NON_CONSTANT_LUMINANCE_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_BT2020_CONSTANT_LUMINANCE_in_mkvmuxerutil;
            return true;
    }
    return false;
}

mkvmuxer_IsChromaSitingHorzValueValid :: (value: u64) -> bool {
    if value == {
        case cast,no_check(u64) MKVMUXER_COLOUR_K_UNSPECIFIED_CSH_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_LEFT_COLLOCATED_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_HALF_CSH_in_mkvmuxerutil;
            return true;
    }
    return false;
}

mkvmuxer_IsChromaSitingVertValueValid :: (value: u64) -> bool {
    if value == {
        case cast,no_check(u64) MKVMUXER_COLOUR_K_UNSPECIFIED_CSV_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_TOP_COLLOCATED_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_HALF_CSV_in_mkvmuxerutil;
            return true;
    }
    return false;
}

mkvmuxer_IsColourRangeValueValid :: (value: u64) -> bool {
    if value == {
        case cast,no_check(u64) MKVMUXER_COLOUR_K_UNSPECIFIED_CR_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_BROADCAST_RANGE_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_FULL_RANGE_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_MC_TC_DEFINED_in_mkvmuxerutil;
            return true;
    }
    return false;
}

mkvmuxer_IsTransferCharacteristicsValueValid :: (value: u64) -> bool {
    if value == {
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ITUR_BT709_TC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_UNSPECIFIED_TC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_RESERVED_TC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_GAMMA22_CURVE_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_GAMMA28_CURVE_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE170_M_TC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE240_M_TC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_LINEAR_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_LOG_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_LOG_SQRT_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_IEC6196624_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ITUR_BT1361_EXTENDED_COLOUR_GAMUT_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_IEC6196621_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ITUR_BT202010BIT_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ITUR_BT202012BIT_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE_ST2084_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE_ST4281_TC_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ARIB_STD_B67_HLG_in_mkvmuxerutil;
            return true;
    }
    return false;
}

mkvmuxer_IsPrimariesValueValid :: (value: u64) -> bool {
    if value == {
        case cast,no_check(u64) MKVMUXER_COLOUR_K_RESERVED_P0_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ITUR_BT709_P_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_UNSPECIFIED_P_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_RESERVED_P3_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ITUR_BT470_M_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ITUR_BT470_BG_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE170_MP_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE240_MP_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_FILM_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_ITUR_BT2020_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_SMPTE_ST4281_P_in_mkvmuxerutil; #through;
        case cast,no_check(u64) MKVMUXER_COLOUR_K_JEDEC_P22_PHOSPHORS_in_mkvmuxerutil;
            return true;
    }
    return false;
}

globals_initialization_state_for_mkvmuxerutil: u32;
initialize_globals_for_mkvmuxerutil :: () {
    {
        state := atomic_load(*globals_initialization_state_for_mkvmuxerutil);
        if state == 2 return;
        won, _ := compare_and_swap(*globals_initialization_state_for_mkvmuxerutil, 0, 1);
        if !won {
            while atomic_load(*globals_initialization_state_for_mkvmuxerutil) != 2 {}
            return;
        }
    }
    K_EBML_UNKNOWN_VALUE_storage = 0x1ffffffffffffff;
    K_MAX_BLOCK_TIMECODE_storage = 0x7fff;
    K_MAX_TRACK_NUMBER_in_mkvmuxerutil = 126;
    K_DATE_ELEMENT_SIZE = 8;
    atomic_store(*globals_initialization_state_for_mkvmuxerutil, 2);
}

rand_r :: (seed: *u32) -> s32 #foreign System_Library_libc_so_6;

Colour_Matrix_Coefficients_in_mkvmuxer :: u32;
MKVMUXER_COLOUR_K_GBR_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 0;
MKVMUXER_COLOUR_K_BT709_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 1;
MKVMUXER_COLOUR_K_UNSPECIFIED_MC_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 2;
MKVMUXER_COLOUR_K_RESERVED_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 3;
MKVMUXER_COLOUR_K_FCC_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 4;
MKVMUXER_COLOUR_K_BT470BG_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 5;
MKVMUXER_COLOUR_K_SMPTE170_M_MC_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 6;
MKVMUXER_COLOUR_K_SMPTE240_M_MC_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 7;
MKVMUXER_COLOUR_K_YCOCG_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 8;
MKVMUXER_COLOUR_K_BT2020_NON_CONSTANT_LUMINANCE_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 9;
MKVMUXER_COLOUR_K_BT2020_CONSTANT_LUMINANCE_in_mkvmuxerutil : Colour_Matrix_Coefficients_in_mkvmuxer : 10;

Colour_Chroma_Siting_Horz_in_mkvmuxer :: u32;
MKVMUXER_COLOUR_K_UNSPECIFIED_CSH_in_mkvmuxerutil : Colour_Chroma_Siting_Horz_in_mkvmuxer : 0;
MKVMUXER_COLOUR_K_LEFT_COLLOCATED_in_mkvmuxerutil : Colour_Chroma_Siting_Horz_in_mkvmuxer : 1;
MKVMUXER_COLOUR_K_HALF_CSH_in_mkvmuxerutil : Colour_Chroma_Siting_Horz_in_mkvmuxer : 2;

Colour_Chroma_Siting_Vert_in_mkvmuxer :: u32;
MKVMUXER_COLOUR_K_UNSPECIFIED_CSV_in_mkvmuxerutil : Colour_Chroma_Siting_Vert_in_mkvmuxer : 0;
MKVMUXER_COLOUR_K_TOP_COLLOCATED_in_mkvmuxerutil : Colour_Chroma_Siting_Vert_in_mkvmuxer : 1;
MKVMUXER_COLOUR_K_HALF_CSV_in_mkvmuxerutil : Colour_Chroma_Siting_Vert_in_mkvmuxer : 2;

Colour_Range_in_mkvmuxer :: u32;
MKVMUXER_COLOUR_K_UNSPECIFIED_CR_in_mkvmuxerutil : Colour_Range_in_mkvmuxer : 0;
MKVMUXER_COLOUR_K_BROADCAST_RANGE_in_mkvmuxerutil : Colour_Range_in_mkvmuxer : 1;
MKVMUXER_COLOUR_K_FULL_RANGE_in_mkvmuxerutil : Colour_Range_in_mkvmuxer : 2;
MKVMUXER_COLOUR_K_MC_TC_DEFINED_in_mkvmuxerutil : Colour_Range_in_mkvmuxer : 3;

Colour_Transfer_Characteristics_in_mkvmuxer :: u32;
MKVMUXER_COLOUR_K_ITUR_BT709_TC_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 1;
MKVMUXER_COLOUR_K_UNSPECIFIED_TC_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 2;
MKVMUXER_COLOUR_K_RESERVED_TC_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 3;
MKVMUXER_COLOUR_K_GAMMA22_CURVE_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 4;
MKVMUXER_COLOUR_K_GAMMA28_CURVE_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 5;
MKVMUXER_COLOUR_K_SMPTE170_M_TC_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 6;
MKVMUXER_COLOUR_K_SMPTE240_M_TC_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 7;
MKVMUXER_COLOUR_K_LINEAR_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 8;
MKVMUXER_COLOUR_K_LOG_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 9;
MKVMUXER_COLOUR_K_LOG_SQRT_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 10;
MKVMUXER_COLOUR_K_IEC6196624_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 11;
MKVMUXER_COLOUR_K_ITUR_BT1361_EXTENDED_COLOUR_GAMUT_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 12;
MKVMUXER_COLOUR_K_IEC6196621_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 13;
MKVMUXER_COLOUR_K_ITUR_BT202010BIT_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 14;
MKVMUXER_COLOUR_K_ITUR_BT202012BIT_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 15;
MKVMUXER_COLOUR_K_SMPTE_ST2084_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 16;
MKVMUXER_COLOUR_K_SMPTE_ST4281_TC_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 17;
MKVMUXER_COLOUR_K_ARIB_STD_B67_HLG_in_mkvmuxerutil : Colour_Transfer_Characteristics_in_mkvmuxer : 18;

Colour_Primaries_in_mkvmuxer :: u32;
MKVMUXER_COLOUR_K_RESERVED_P0_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 0;
MKVMUXER_COLOUR_K_ITUR_BT709_P_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 1;
MKVMUXER_COLOUR_K_UNSPECIFIED_P_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 2;
MKVMUXER_COLOUR_K_RESERVED_P3_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 3;
MKVMUXER_COLOUR_K_ITUR_BT470_M_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 4;
MKVMUXER_COLOUR_K_ITUR_BT470_BG_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 5;
MKVMUXER_COLOUR_K_SMPTE170_MP_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 6;
MKVMUXER_COLOUR_K_SMPTE240_MP_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 7;
MKVMUXER_COLOUR_K_FILM_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 8;
MKVMUXER_COLOUR_K_ITUR_BT2020_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 9;
MKVMUXER_COLOUR_K_SMPTE_ST4281_P_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 10;
MKVMUXER_COLOUR_K_JEDEC_P22_PHOSPHORS_in_mkvmuxerutil : Colour_Primaries_in_mkvmuxer : 22;

