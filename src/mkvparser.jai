Unnamed_449 :: union {
    d: float64;
    dd: u64;
}

Unnamed_459 :: union {
    f: float32;
    ff: u32;
}

E_FILE_FORMAT_INVALID_in_mkvparser: s32;

E_BUFFER_NOT_FULL_in_mkvparser: s32;

E_PARSE_FAILED_in_mkvparser: s32;

K_STRING_ELEMENT_SIZE_LIMIT: s64;

MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT: s64;

MKVPARSER_MASTERING_METADATA_K_VALUE_NOT_PRESENT: float32;

MKVPARSER_PROJECTION_K_VALUE_NOT_PRESENT: float32;

get_time :: (using block: *Block, p_cluster: *Mkvparser_Cluster) -> s64 {
    assert(p_cluster != null);

    TC := get_time_code(block, p_cluster);

    P_SEGMENT := cast,no_check(*Mkvparser_Segment) (p_cluster.p_segment);
    P_INFO := cast,no_check(*Mkvparser_Segment_Info) (get_info(P_SEGMENT));
    assert(P_INFO != null);

    SCALE := get_time_code_scale(P_INFO);
    assert(SCALE >= 1);

    if TC != 0 && SCALE > 9223372036854775807 / TC {
        return -1;
    }
    NS := TC * SCALE;

    return NS;
}

get_time_code_scale :: (using segment_info: *Mkvparser_Segment_Info) -> s64 {
    return timecode_scale;
}

get_info :: (using segment: *Mkvparser_Segment) -> *Mkvparser_Segment_Info {
    return p_info;
}

get_time_code :: (using block: *Block, p_cluster: *Mkvparser_Cluster) -> s64 {
    if p_cluster == null {
        return cast,no_check(s64) timecode;
    }

    TC0 := get_time_code(p_cluster);
    assert(TC0 >= 0);

    if TC0 < 0 || 9223372036854775807 - TC0 < cast,no_check(s64) timecode {
        return -1;
    }

    TC := TC0 + cast(s64) timecode;

    return TC;
}

get_time_code :: (using cluster: *Mkvparser_Cluster) -> s64 {
    _pos: s64 = ---;
    len: s64 = ---;

    STATUS := load(cluster, *_pos, *len);

    if STATUS < 0 {
        return STATUS;
    }

    return timecode;
}

load :: (using cluster: *Mkvparser_Cluster, _pos: *s64, len: *s64) -> s64 {
    if p_segment == null {
        return cast,no_check(s64) -cast(s32) 1;
    }

    if timecode >= 0 {
        return 0;
    }

    if pos != element_start || element_size >= 0 {
        return cast,no_check(s64) -cast(s32) 1;
    }

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);
    total, avail: s64 = ---;
    STATUS := cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(P_READER, *total, *avail);

    if STATUS < 0 {
        return cast,no_check(s64) STATUS;
    }

    if total >= 0 && (avail > total || pos > total) {
        return cast,no_check(s64) -cast(s32) 2;
    }

    assignment_0: s64 = pos;
    ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_0;

    cluster_size: s64 = -1;

    if (_pos.* + 1) > avail {
        ((cast(**s64) *(len)).*).* = 1;
        return cast,no_check(s64) -cast(s32) 3;
    }

    result_value := mkvparser_GetUIntLength(P_READER, _pos.*, len);

    if result_value < 0 {
        return result_value;
    }

    if result_value > 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    if (_pos.* + len.*) > avail {
        return cast,no_check(s64) -cast(s32) 3;
    }

    ID_value := mkvparser_ReadID(P_READER, _pos.*, len);

    if ID_value < 0 {
        return ID_value;
    }

    if ID_value != cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
        return cast,no_check(s64) -cast(s32) 2;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

    if (_pos.* + 1) > avail {
        ((cast(**s64) *(len)).*).* = 1;
        return cast,no_check(s64) -cast(s32) 3;
    }

    result_value = mkvparser_GetUIntLength(P_READER, _pos.*, len);

    if result_value < 0 {
        return result_value;
    }

    if result_value > 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    if (_pos.* + len.*) > avail {
        return cast,no_check(s64) -cast(s32) 3;
    }

    SIZE_value := mkvparser_ReadUInt(P_READER, _pos.*, len);

    if SIZE_value < 0 {
        return cluster_size;
    }

    if SIZE_value == 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

    UNKNOWN_SIZE_value := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

    if SIZE_value != UNKNOWN_SIZE_value {
        cluster_size = SIZE_value;
    }

    _timecode: s64 = -1;
    new_pos: s64 = -1;
    b_block: bool = false;

    cluster_stop := (ifx cluster_size < 0 then -1 else _pos.* + cluster_size);

    while true {
        if cluster_stop >= 0 && _pos.* >= cluster_stop {
            break;
        }

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result := mkvparser_GetUIntLength(P_READER, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if cluster_stop >= 0 && (_pos.* + len.*) > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        ID := mkvparser_ReadID(P_READER, _pos.*, len);

        if ID < 0 {
            return ID;
        }

        if ID == 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            break;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUES {
            break;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(P_READER, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if cluster_stop >= 0 && (_pos.* + len.*) > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        SIZE := mkvparser_ReadUInt(P_READER, _pos.*, len);

        if SIZE < 0 {
            return SIZE;
        }

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

        if SIZE == UNKNOWN_SIZE {
            return cast,no_check(s64) -cast(s32) 2;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if cluster_stop >= 0 && _pos.* > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if SIZE == 0 {
            continue;
        }

        if cluster_stop >= 0 && _pos.* + SIZE > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_TIMECODE {
            assignment_1: s64 = SIZE;
            ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_1;

            if _pos.* + SIZE > avail {
                return cast,no_check(s64) -cast(s32) 3;
            }

            _timecode = mkvparser_UnserializeUInt(P_READER, _pos.*, SIZE);

            if _timecode < 0 {
                return _timecode;
            }

            new_pos = _pos.* + SIZE;

            if b_block {
                break;
            }
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_BLOCK_GROUP {
            b_block = true;
            break;
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_SIMPLE_BLOCK {
            b_block = true;
            break;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (SIZE), s64, s64);
        if cluster_stop >= 0 && _pos.* > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if cluster_stop >= 0 && _pos.* > cluster_stop {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if _timecode < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if !b_block {
        return cast,no_check(s64) -cast(s32) 2;
    }

    pos = new_pos;
    timecode = _timecode;

    if cluster_size >= 0 {
        element_size = cluster_stop - element_start;
    }

    return 0;
}

mkvparser_ReadUInt :: (p_reader: *I_Mkv_Reader, pos: s64, len: *s64) -> s64 {
    if p_reader == null || pos < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    ((cast(**s64) *(len)).*).* = 1;
    b: u8 = ---;
    status := cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, 1, *b);

    if status < 0 {
        return cast,no_check(s64) status;
    }

    if status > 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    if b == 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    m: u8 = 0x80;

    while (cast(s32) b) & cast(s32) m == 0 {
        c_transpiler_compound_shr(*(m), (cast(s32) 1), s32, s32);
        len.* += 1;
    }

    result := cast,no_check(s64) ((cast(s32) b) & ~(cast,no_check(s32) m));
    pos += 1;

    {
        i: s32 = 1;
        while cast,no_check(s64) i < len.* {
            status = cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, 1, *b);

            if status < 0 {
                ((cast(**s64) *(len)).*).* = 1;
                return cast,no_check(s64) status;
            }

            if status > 0 {
                ((cast(**s64) *(len)).*).* = 1;
                return cast,no_check(s64) -cast(s32) 3;
            }

            c_transpiler_compound_shl(*(result), (cast(s32) 8), s64, s64);
            result |= cast,no_check(s64) b;

            pos += 1;
            i += 1;
        }
    }

    return result;
}

mkvparser_ReadID :: (p_reader: *I_Mkv_Reader, pos: s64, len: *s64) -> s64 {
    if p_reader == null || pos < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    temp_byte: u8 = 0;
    read_status := cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, 1, *temp_byte);

    if read_status < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    } else if read_status > 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    if temp_byte == 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    bit_pos: s32 = 0;
    K_MAX_ID_LENGTH_IN_BYTES: s32 = 4;
    K_CHECK_BYTE: s32 = 0x80;

    found_bit: bool = false;
    while bit_pos < K_MAX_ID_LENGTH_IN_BYTES {
        if K_CHECK_BYTE >> ((bit_pos) & 31) & cast(s32) temp_byte != 0 {
            found_bit = true;
            break;
        }
        bit_pos += 1;
    }

    if !found_bit {
        return cast,no_check(s64) -cast(s32) 2;
    }

    ID_LENGTH := bit_pos + 1;
    ebml_id := cast,no_check(s64) temp_byte;
    if 1 < ID_LENGTH {
        for i: 1..ID_LENGTH - 1 {
            c_transpiler_compound_shl(*(ebml_id), (cast(s32) 8), s64, s64);
            read_status = cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos + cast(s64) i, 1, *temp_byte);

            if read_status < 0 {
                return cast,no_check(s64) -cast(s32) 2;
            } else if read_status > 0 {
                return cast,no_check(s64) -cast(s32) 3;
            }

            ebml_id |= cast,no_check(s64) temp_byte;
        }
    }

    assignment_2: s64 = cast,no_check(s64) ID_LENGTH;
    ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_2;
    return ebml_id;
}

mkvparser_UnserializeUInt :: (p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    if p_reader == null || pos < 0 || size <= 0 || size > 8 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    result: s64 = 0;

    if 0 < size {
        for i: 0..size - 1 {
            b: u8 = ---;

            STATUS := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, 1, *b);

            if STATUS < 0 {
                return STATUS;
            }

            c_transpiler_compound_shl(*(result), (cast(s32) 8), s64, s64);
            result |= cast,no_check(s64) b;

            pos += 1;
        }
    }

    return result;
}

mkvparser_GetUIntLength :: (p_reader: *I_Mkv_Reader, pos: s64, len: *s64) -> s64 {
    if p_reader == null || pos < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    total, available: s64 = ---;

    status := cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(p_reader, *total, *available);
    if status < 0 || total >= 0 && available > total {
        return cast,no_check(s64) -cast(s32) 2;
    }

    ((cast(**s64) *(len)).*).* = 1;

    if pos >= available {
        return pos;
    }

    b: u8 = ---;

    status = cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, 1, *b);

    if status != 0 {
        return cast,no_check(s64) status;
    }

    if b == 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    m: u8 = 0x80;

    while (cast(s32) b) & cast(s32) m == 0 {
        c_transpiler_compound_shr(*(m), (cast(s32) 1), s32, s32);
        len.* += 1;
    }

    return 0;
}

get_time :: (using cluster: *Mkvparser_Cluster) -> s64 {
    TC := get_time_code(cluster);

    if TC < 0 {
        return TC;
    }

    P_INFO := cast,no_check(*Mkvparser_Segment_Info) (get_info(p_segment));
    assert(P_INFO != null);

    SCALE := get_time_code_scale(P_INFO);
    assert(SCALE >= 1);

    T := timecode * SCALE;

    return T;
}

parse :: (using cluster: *Mkvparser_Cluster, _pos: *s64, len: *s64) -> s64 {
    status := load(cluster, _pos, len);

    if status < 0 {
        return status;
    }

    if pos < element_start || timecode < 0 {
        return cast,no_check(s64) -cast(s32) 1;
    }

    CLUSTER_STOP := (ifx element_size < 0 then -1 else element_start + element_size);

    if CLUSTER_STOP >= 0 && pos >= CLUSTER_STOP {
        return 1;
    }

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    total, avail: s64 = ---;

    status = cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(P_READER, *total, *avail);

    if status < 0 {
        return status;
    }

    if total >= 0 && avail > total {
        return cast,no_check(s64) -cast(s32) 2;
    }

    assignment_3: s64 = pos;
    ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_3;

    while true {
        if CLUSTER_STOP >= 0 && _pos.* >= CLUSTER_STOP {
            break;
        }

        if total >= 0 && _pos.* >= total {
            if element_size < 0 {
                element_size = _pos.* - element_start;
            }

            break;
        }

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result := mkvparser_GetUIntLength(P_READER, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if CLUSTER_STOP >= 0 && (_pos.* + len.*) > CLUSTER_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        ID := mkvparser_ReadID(P_READER, _pos.*, len);

        if ID < 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER || ID == cast,no_check(s64) LIBWEBM_K_MKV_CUES {
            if element_size < 0 {
                element_size = _pos.* - element_start;
            }

            break;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(P_READER, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if CLUSTER_STOP >= 0 && (_pos.* + len.*) > CLUSTER_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        SIZE := mkvparser_ReadUInt(P_READER, _pos.*, len);

        if SIZE < 0 {
            return SIZE;
        }

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

        if SIZE == UNKNOWN_SIZE {
            return cast,no_check(s64) -cast(s32) 2;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if CLUSTER_STOP >= 0 && _pos.* > CLUSTER_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if SIZE == 0 {
            continue;
        }

        BLOCK_STOP := _pos.* + SIZE;

        if CLUSTER_STOP >= 0 {
            if BLOCK_STOP > CLUSTER_STOP {
                if ID == cast,no_check(s64) LIBWEBM_K_MKV_BLOCK_GROUP || ID == cast,no_check(s64) LIBWEBM_K_MKV_SIMPLE_BLOCK {
                    return cast,no_check(s64) -cast(s32) 2;
                }

                assignment_4: s64 = CLUSTER_STOP;
                ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_4;
                break;
            }
        } else if total >= 0 && BLOCK_STOP > total {
            element_size = total - element_start;
            assignment_5: s64 = total;
            ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_5;
            break;
        } else if BLOCK_STOP > avail {
            assignment_6: s64 = SIZE;
            ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_6;
            return cast,no_check(s64) -cast(s32) 3;
        }

        THIS := cast,no_check(*Mkvparser_Cluster) (cluster);

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_BLOCK_GROUP {
            return parse_block_group(THIS, SIZE, _pos, len);
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_SIMPLE_BLOCK {
            return parse_simple_block(THIS, SIZE, _pos, len);
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (SIZE), s64, s64);
        if CLUSTER_STOP >= 0 && _pos.* > CLUSTER_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if element_size < 1 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    pos = _pos.*;
    if CLUSTER_STOP >= 0 && pos > CLUSTER_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if entries_count > 0 {
        IDX := entries_count - 1;

        P_LAST := cast,no_check(*Block_Entry) (entries[IDX]);
        if P_LAST == null {
            return cast,no_check(s64) -cast(s32) 1;
        }

        P_BLOCK := cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(P_LAST));
        if P_BLOCK == null {
            return cast,no_check(s64) -cast(s32) 1;
        }

        START := P_BLOCK.start;

        if total >= 0 && START > total {
            return cast,no_check(s64) -cast(s32) 1;
        }

        SIZE := P_BLOCK.size;

        STOP := START + SIZE;
        if CLUSTER_STOP >= 0 && STOP > CLUSTER_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if total >= 0 && STOP > total {
            return cast,no_check(s64) -cast(s32) 1;
        }
    }

    return 1;
}

parse_simple_block :: (using cluster: *Mkvparser_Cluster, block_size: s64, _pos: *s64, len: *s64) -> s64 {
    BLOCK_START := _pos.*;
    BLOCK_STOP := _pos.* + block_size;

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    total, avail: s64 = ---;

    status := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(P_READER, *total, *avail);

    if status < 0 {
        return status;
    }

    assert(total < 0 || avail <= total);

    if (_pos.* + 1) > avail {
        ((cast(**s64) *(len)).*).* = 1;
        return cast,no_check(s64) -cast(s32) 3;
    }

    result := mkvparser_GetUIntLength(P_READER, _pos.*, len);

    if result < 0 {
        return result;
    }

    if result > 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    if (_pos.* + len.*) > BLOCK_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if (_pos.* + len.*) > avail {
        return cast,no_check(s64) -cast(s32) 3;
    }

    TRACK := mkvparser_ReadUInt(P_READER, _pos.*, len);

    if TRACK < 0 {
        return TRACK;
    }

    if TRACK == 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

    if (_pos.* + 2) > BLOCK_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if (_pos.* + 2) > avail {
        ((cast(**s64) *(len)).*).* = 2;
        return cast,no_check(s64) -cast(s32) 3;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (cast(s64) 2), s64, s64);

    if (_pos.* + 1) > BLOCK_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if (_pos.* + 1) > avail {
        ((cast(**s64) *(len)).*).* = 1;
        return cast,no_check(s64) -cast(s32) 3;
    }

    flags: u8 = ---;

    status = cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(P_READER, _pos.*, 1, *flags);

    if status < 0 {
        ((cast(**s64) *(len)).*).* = 1;
        return status;
    }

    _pos.* += 1;
    assert(_pos.* <= avail);

    if _pos.* >= BLOCK_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    LACING := (cast(s32) flags) & 0x6 >> 1;

    if LACING != 0 && BLOCK_STOP > avail {
        assignment_7: s64 = (BLOCK_STOP - _pos.*);
        ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_7;
        return cast,no_check(s64) -cast(s32) 3;
    }

    status = create_block(cluster, cast,no_check(s64) LIBWEBM_K_MKV_SIMPLE_BLOCK, BLOCK_START, block_size, 0);

    if status != 0 {
        return status;
    }

    pos = BLOCK_STOP;

    return 0;
}

create_block :: (using cluster: *Mkvparser_Cluster, id: s64, _pos: s64, size: s64, discard_padding: s64) -> s64 {
    if id != cast,no_check(s64) LIBWEBM_K_MKV_BLOCK_GROUP && id != cast,no_check(s64) LIBWEBM_K_MKV_SIMPLE_BLOCK {
        return cast,no_check(s64) -cast(s32) 1;
    }

    if entries_count < 0 {
        assert(entries == null);
        assert(entries_size == 0);

        entries_size = 1024;
        entries =
            cast,no_check(**Block_Entry) (cast(**Block_Entry) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) entries_size,
                size_of(*Block_Entry)
            ));
        if entries == null {
            return -1;
        }

        entries_count = 0;
    } else {
        assert(entries != null);
        assert(entries_size > 0);
        assert(entries_count <= entries_size);

        if entries_count >= entries_size {
            ENTRIES_SIZE := 2 * entries_size;

            ENTRIES :=
                cast,no_check(**Block_Entry) (cast(**Block_Entry) cpp_transpiler_allocate_array_raw(
                    cast,no_check(u64) ENTRIES_SIZE,
                    size_of(*Block_Entry)
                ));
            if ENTRIES == null {
                return -1;
            }

            src := cast,no_check(**Block_Entry) (entries);
            SRC_END := cast,no_check(**Block_Entry) ((src + entries_count));

            dst := cast,no_check(**Block_Entry) (ENTRIES);

            while src != SRC_END {
                assignment_8: *Block_Entry = cast,no_check(*Block_Entry) ((c_transpiler_post_increment(*(src))).*);
                ((cast,no_check(**Block_Entry) *((c_transpiler_post_increment(*(dst))).*)).*) = assignment_8;
            }

            {
                cpp_transpiler_delete_g0 := cast,no_check(**Block_Entry) (entries);
                if cpp_transpiler_delete_g0 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g0);
                }
            }

            entries = cast,no_check(**Block_Entry) (ENTRIES);
            entries_size = ENTRIES_SIZE;
        }
    }

    if id == cast,no_check(s64) LIBWEBM_K_MKV_BLOCK_GROUP {
        return create_block_group(cluster, _pos, size, discard_padding);
    } else {
        return create_simple_block(cluster, _pos, size);
    }
}

create_simple_block :: (using cluster: *Mkvparser_Cluster, st: s64, sz: s64) -> s64 {
    assert(entries != null);
    assert(entries_size > 0);
    assert(entries_count >= 0);
    assert(entries_count < entries_size);

    IDX := entries_count;

    PP_ENTRY := cast,no_check(**Block_Entry) ((entries + IDX));
    p_entry := cast,no_check(**Block_Entry) (PP_ENTRY);

    assignment_9: *Block_Entry =
        cast,no_check(*Block_Entry) (*(((ifx true {
        cpp_transpiler_new_g1 :=
            cast,no_check(*Simple_Block) (cast(*Simple_Block) cpp_transpiler_allocate_raw(
                size_of(Simple_Block)
            ));
        init_62(cpp_transpiler_new_g1, cluster, IDX, st, sz);
        cpp_transpiler_new_g1;
    })
    ).block_entry));
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_entry).*)).*) = assignment_9;

    if (cast(**Block_Entry) p_entry).* == null {
        return -1;
    }

    P :=
        cast,no_check(*Simple_Block) (cast(*Simple_Block) cpp_transpiler_base_to_derived(
            cast(*void) ((cast(**Block_Entry) p_entry).*),
            0
        ));

    STATUS := parse(P);

    if STATUS == 0 {
        entries_count += 1;
        return 0;
    }

    {
        cpp_transpiler_delete_g2 := cast,no_check(*Block_Entry) ((cast(**Block_Entry) p_entry).*);
        if cpp_transpiler_delete_g2 != null {
            cpp_transpiler_dispatch_mkvparser_BlockEntry_destructor(cpp_transpiler_delete_g2);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g2);
        }
    }
    (cast(**Block_Entry) p_entry).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);

    return STATUS;
}

parse :: (using simple_block: *Simple_Block) -> s64 {
    return parse(*block, block_entry.p_cluster);
}

parse :: (using block: *Block, p_cluster: *Mkvparser_Cluster) -> s64 {
    if p_cluster == null {
        return -1;
    }

    if p_cluster.p_segment == null {
        return -1;
    }

    assert(start >= 0);
    assert(size >= 0);
    assert(track <= 0);
    assert(frames == null);
    assert(frame_count <= 0);

    pos := start;
    STOP := start + size;

    len: s64 = ---;

    P_READER := cast,no_check(*I_Mkv_Reader) (p_cluster.p_segment.p_reader);

    track = mkvparser_ReadUInt(P_READER, pos, *len);

    if track <= 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if (pos + len) > STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    pos += len;

    if STOP - pos < 2 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    value: s64 = ---;

    status := mkvparser_UnserializeInt(P_READER, pos, 2, *value);

    if status != 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if value < cast,no_check(s64) (-32767 - 1) {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if value > 32767 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    timecode = cast,no_check(s16) value;

    pos += 2;

    if STOP - pos <= 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    status = cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(P_READER, pos, 1, *flags);

    if status != 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    LACING := (cast(s32) flags) & 0x6 >> 1;

    pos += 1;

    if LACING == 0 {
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        frame_count = 1;
        frames =
            cast,no_check(*Block_Frame) (cast(*Block_Frame) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) frame_count,
                size_of(Block_Frame)
            ));
        if frames == null {
            return -1;
        }

        f := cast,no_check(*Block_Frame) (*frames[0]);
        f.pos = pos;

        FRAME_SIZE := STOP - pos;

        if FRAME_SIZE > 9223372036854775807 || FRAME_SIZE <= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        f.len = FRAME_SIZE;

        return 0;
    }

    if pos >= STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    biased_count: u8 = ---;

    status = cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(P_READER, pos, 1, *biased_count);

    if status != 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    pos += 1;
    if pos > STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    frame_count = (cast(s32) biased_count) + 1;

    frames =
        cast,no_check(*Block_Frame) (cast(*Block_Frame) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) frame_count,
            size_of(Block_Frame)
        ));
    if frames == null {
        return -1;
    }

    if frames == null {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if LACING == 1 {
        pf := cast,no_check(*Block_Frame) (frames);
        PF_END := cast,no_check(*Block_Frame) ((pf + frame_count));

        _size: s64 = 0;
        _frame_count := frame_count;

        while _frame_count > 1 {
            frame_size: s64 = 0;

            while true {
                val: u8 = ---;

                if pos >= STOP {
                    return cast,no_check(s64) -cast(s32) 2;
                }

                status =
                    cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
                        P_READER,
                        pos,
                        1,
                        *val
                    );

                if status != 0 {
                    return cast,no_check(s64) -cast(s32) 2;
                }

                pos += 1;

                frame_size += cast,no_check(s64) val;

                if val < 255 {
                    break;
                }
            }

            f := cast,no_check(*Block_Frame) (c_transpiler_post_increment(*(pf)));
            assert(pf < PF_END);
            if pf >= PF_END {
                return cast,no_check(s64) -cast(s32) 2;
            }

            f.pos = 0;

            if frame_size <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            f.len = frame_size;
            _size += frame_size;

            _frame_count -= 1;
        }

        if pf >= PF_END || pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        {
            f := cast,no_check(*Block_Frame) (c_transpiler_post_increment(*(pf)));

            if pf != PF_END {
                return cast,no_check(s64) -cast(s32) 2;
            }

            f.pos = 0;

            TOTAL_SIZE := STOP - pos;

            if TOTAL_SIZE < _size {
                return cast,no_check(s64) -cast(s32) 2;
            }

            FRAME_SIZE := TOTAL_SIZE - _size;

            if FRAME_SIZE > 9223372036854775807 || FRAME_SIZE <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            f.len = FRAME_SIZE;
        }

        pf = cast,no_check(*Block_Frame) (frames);
        while pf != PF_END {
            f := cast,no_check(*Block_Frame) (c_transpiler_post_increment(*(pf)));
            assert((pos + f.len) <= STOP);

            if (pos + f.len) > STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            f.pos = pos;
            pos += f.len;
        }

        assert(pos == STOP);
        if pos != STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    } else if LACING == 2 {
        if pos >= STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        TOTAL_SIZE := STOP - pos;

        if (TOTAL_SIZE % cast(s64) frame_count) != 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        FRAME_SIZE := TOTAL_SIZE / cast(s64) frame_count;

        if FRAME_SIZE > 9223372036854775807 || FRAME_SIZE <= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        pf := cast,no_check(*Block_Frame) (frames);
        PF_END := cast,no_check(*Block_Frame) ((pf + frame_count));

        while pf != PF_END {
            assert(pos + FRAME_SIZE <= STOP);
            if pos + FRAME_SIZE > STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            f := cast,no_check(*Block_Frame) (c_transpiler_post_increment(*(pf)));

            f.pos = pos;
            f.len = FRAME_SIZE;

            pos += FRAME_SIZE;
        }

        assert(pos == STOP);
        if pos != STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    } else {
        assert(LACING == 3);

        if pos >= STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        _size: s64 = 0;
        _frame_count := frame_count;

        frame_size := mkvparser_ReadUInt(P_READER, pos, *len);

        if frame_size <= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (pos + len) > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        pos += len;

        if pos + frame_size > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        pf := cast,no_check(*Block_Frame) (frames);
        PF_END := cast,no_check(*Block_Frame) ((pf + frame_count));

        {
            curr := cast,no_check(*Block_Frame) (pf);

            curr.pos = 0;

            curr.len = frame_size;
            _size += curr.len;
        }

        _frame_count -= 1;

        while _frame_count > 1 {
            if pos >= STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            assert(pf < PF_END);
            if pf >= PF_END {
                return cast,no_check(s64) -cast(s32) 2;
            }

            prev := cast,no_check(*Block_Frame) (c_transpiler_post_increment(*(pf)));
            assert(prev.len == frame_size);
            if prev.len != frame_size {
                return cast,no_check(s64) -cast(s32) 2;
            }

            assert(pf < PF_END);
            if pf >= PF_END {
                return cast,no_check(s64) -cast(s32) 2;
            }

            curr := cast,no_check(*Block_Frame) (pf);

            curr.pos = 0;

            DELTA_SIZE_value := mkvparser_ReadUInt(P_READER, pos, *len);

            if DELTA_SIZE_value < 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            if (pos + len) > STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            pos += len;
            if pos > STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            EXP := 7 * len - 1;
            BIAS := (cast(s64) 1) << ((EXP) & 63) - 1;
            DELTA_SIZE := DELTA_SIZE_value - BIAS;

            frame_size += DELTA_SIZE;

            if frame_size <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            curr.len = frame_size;

            if _size > 9223372036854775807 - curr.len {
                return cast,no_check(s64) -cast(s32) 2;
            }
            _size += curr.len;

            _frame_count -= 1;
        }

        if _frame_count > 0 {
            if pos > STOP || pf >= PF_END {
                return cast,no_check(s64) -cast(s32) 2;
            }

            prev := cast,no_check(*Block_Frame) (c_transpiler_post_increment(*(pf)));
            assert(prev.len == frame_size);
            if prev.len != frame_size {
                return cast,no_check(s64) -cast(s32) 2;
            }

            if pf >= PF_END {
                return cast,no_check(s64) -cast(s32) 2;
            }

            curr := cast,no_check(*Block_Frame) (c_transpiler_post_increment(*(pf)));
            if pf != PF_END {
                return cast,no_check(s64) -cast(s32) 2;
            }

            curr.pos = 0;

            TOTAL_SIZE := STOP - pos;

            if TOTAL_SIZE < _size {
                return cast,no_check(s64) -cast(s32) 2;
            }

            frame_size = TOTAL_SIZE - _size;

            if frame_size > 9223372036854775807 || frame_size <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            curr.len = frame_size;
        }

        pf = cast,no_check(*Block_Frame) (frames);
        while pf != PF_END {
            f := cast,no_check(*Block_Frame) (c_transpiler_post_increment(*(pf)));
            if (pos + f.len) > STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            f.pos = pos;
            pos += f.len;
        }

        if pos != STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    return 0;
}

mkvparser_UnserializeInt :: (p_reader: *I_Mkv_Reader, pos: s64, size: s64, result_ref: *s64) -> s64 {
    if p_reader == null || pos < 0 || size < 1 || size > 8 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    first_byte: s8 = 0;
    STATUS_value :=
        cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
            p_reader,
            pos,
            1,
            cast(*u8) *first_byte
        );

    if STATUS_value < 0 {
        return STATUS_value;
    }

    result := cast,no_check(u64) first_byte;
    pos += 1;

    {
        i: s64 = 1;
        while i < size {
            b: u8 = ---;

            STATUS := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, 1, *b);

            if STATUS < 0 {
                return STATUS;
            }

            c_transpiler_compound_shl(*(result), (cast(s32) 8), u64, u64);
            result |= cast,no_check(u64) b;

            pos += 1;
            i += 1;
        }
    }

    assignment_10: s64 = cast,no_check(s64) result;
    ((cast,no_check(*s64) *(((cast(**s64) *(result_ref)).*).*)).*) = assignment_10;
    return 0;
}

create_block_group :: (using cluster: *Mkvparser_Cluster, start_offset: s64, size: s64, discard_padding: s64) -> s64 {
    assert(entries != null);
    assert(entries_size > 0);
    assert(entries_count >= 0);
    assert(entries_count < entries_size);

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    _pos := start_offset;
    STOP := start_offset + size;

    prev: s64 = 1;
    next: s64 = 0;
    duration: s64 = -1;

    bpos: s64 = -1;
    bsize: s64 = -1;

    while _pos < STOP {
        len: s64 = ---;
        ID := mkvparser_ReadID(P_READER, _pos, *len);
        if ID < 0 || (_pos + len) > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        _pos += len;

        SIZE := mkvparser_ReadUInt(P_READER, _pos, *len);
        assert(SIZE >= 0);
        assert((_pos + len) <= STOP);

        _pos += len;

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_BLOCK {
            if bpos < 0 {
                bpos = _pos;
                bsize = SIZE;
            }
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_BLOCK_DURATION {
            if SIZE > 8 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            duration = mkvparser_UnserializeUInt(P_READER, _pos, SIZE);

            if duration < 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_REFERENCE_BLOCK {
            if SIZE > 8 || SIZE <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
            SIZE_value := SIZE;

            time: s64 = ---;

            status := mkvparser_UnserializeInt(P_READER, _pos, SIZE_value, *time);
            assert(status == 0);
            if status != 0 {
                return -1;
            }

            if time <= 0 {
                prev = time;
            } else {
                next = time;
            }
        }

        _pos += SIZE;
        if _pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }
    if bpos < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if _pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }
    assert(bsize >= 0);

    IDX := entries_count;

    PP_ENTRY := cast,no_check(**Block_Entry) ((entries + IDX));
    p_entry := cast,no_check(**Block_Entry) (PP_ENTRY);

    assignment_11: *Block_Entry =
        cast,no_check(*Block_Entry) (*(((ifx true {
        cpp_transpiler_new_g3 :=
            cast,no_check(*Block_Group) (cast(*Block_Group) cpp_transpiler_allocate_raw(
                size_of(Block_Group)
            ));
        init_64(cpp_transpiler_new_g3, cluster, IDX, bpos, bsize, prev, next, duration, discard_padding);
        cpp_transpiler_new_g3;
    })
    ).block_entry));
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_entry).*)).*) = assignment_11;

    if (cast(**Block_Entry) p_entry).* == null {
        return -1;
    }

    P :=
        cast,no_check(*Block_Group) (cast(*Block_Group) cpp_transpiler_base_to_derived(
            cast(*void) ((cast(**Block_Entry) p_entry).*),
            0
        ));

    STATUS := parse(P);

    if STATUS == 0 {
        entries_count += 1;
        return 0;
    }

    {
        cpp_transpiler_delete_g4 := cast,no_check(*Block_Entry) ((cast(**Block_Entry) p_entry).*);
        if cpp_transpiler_delete_g4 != null {
            cpp_transpiler_dispatch_mkvparser_BlockEntry_destructor(cpp_transpiler_delete_g4);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g4);
        }
    }
    (cast(**Block_Entry) p_entry).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);

    return STATUS;
}

parse :: (using block_group: *Block_Group) -> s64 {
    STATUS := parse(*block, block_entry.p_cluster);

    if STATUS != 0 {
        return STATUS;
    }

    set_key(*block, prev > 0 && next <= 0);

    return 0;
}

set_key :: (using block: *Block, b_key: bool) {
    if b_key {
        flags = cast,no_check(u8) ((cast,no_check(s32) flags) | cast,no_check(s32) (cast,no_check(u8) ((cast(s32) 1) << 7)));
    } else {
        flags = cast,no_check(u8) ((cast,no_check(s32) flags) & 0x7f);
    }
}

parse_block_group :: (using cluster: *Mkvparser_Cluster, payload_size: s64, _pos: *s64, len: *s64) -> s64 {
    PAYLOAD_START := _pos.*;
    PAYLOAD_STOP := _pos.* + payload_size;

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    total, avail: s64 = ---;

    status := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(P_READER, *total, *avail);

    if status < 0 {
        return status;
    }

    assert(total < 0 || avail <= total);

    if total >= 0 && PAYLOAD_STOP > total {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if PAYLOAD_STOP > avail {
        assignment_12: s64 = payload_size;
        ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_12;
        return cast,no_check(s64) -cast(s32) 3;
    }

    discard_padding: s64 = 0;

    while _pos.* < PAYLOAD_STOP {
        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result := mkvparser_GetUIntLength(P_READER, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if (_pos.* + len.*) > PAYLOAD_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        ID := mkvparser_ReadID(P_READER, _pos.*, len);

        if ID < 0 {
            return ID;
        }

        if ID == 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(P_READER, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if (_pos.* + len.*) > PAYLOAD_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        SIZE := mkvparser_ReadUInt(P_READER, _pos.*, len);

        if SIZE < 0 {
            return SIZE;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if _pos.* > PAYLOAD_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if SIZE == 0 {
            continue;
        }

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

        if SIZE == UNKNOWN_SIZE {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_DISCARD_PADDING {
            status = mkvparser_UnserializeInt(P_READER, _pos.*, SIZE, *discard_padding);

            if status < 0 {
                return status;
            }
        }

        if ID != cast,no_check(s64) LIBWEBM_K_MKV_BLOCK {
            c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (SIZE), s64, s64);

            if _pos.* > PAYLOAD_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            continue;
        }

        BLOCK_STOP := _pos.* + SIZE;

        if BLOCK_STOP > PAYLOAD_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(P_READER, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if (_pos.* + len.*) > BLOCK_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        TRACK := mkvparser_ReadUInt(P_READER, _pos.*, len);

        if TRACK < 0 {
            return TRACK;
        }

        if TRACK == 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if (_pos.* + 2) > BLOCK_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + 2) > avail {
            ((cast(**s64) *(len)).*).* = 2;
            return cast,no_check(s64) -cast(s32) 3;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (cast(s64) 2), s64, s64);

        if (_pos.* + 1) > BLOCK_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        flags: u8 = ---;

        status = cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(P_READER, _pos.*, 1, *flags);

        if status < 0 {
            ((cast(**s64) *(len)).*).* = 1;
            return status;
        }

        _pos.* += 1;
        assert(_pos.* <= avail);

        if _pos.* >= BLOCK_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        LACING := (cast(s32) flags) & 0x6 >> 1;

        if LACING != 0 && BLOCK_STOP > avail {
            assignment_13: s64 = (BLOCK_STOP - _pos.*);
            ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_13;
            return cast,no_check(s64) -cast(s32) 3;
        }

        assignment_14: s64 = BLOCK_STOP;
        ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_14;
        if _pos.* > PAYLOAD_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if _pos.* != PAYLOAD_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    status =
        create_block(
            cluster,
            cast,no_check(s64) LIBWEBM_K_MKV_BLOCK_GROUP,
            PAYLOAD_START,
            payload_size,
            discard_padding
        );
    if status != 0 {
        return status;
    }

    pos = PAYLOAD_STOP;

    return 0;
}

get_last :: (using cluster: *Mkvparser_Cluster, p_last: **Block_Entry) -> s64 {
    while true {
        _pos: s64 = ---;
        len: s64 = ---;

        STATUS := parse(cluster, *_pos, *len);

        if STATUS < 0 {
            (cast(**Block_Entry) p_last).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);
            return STATUS;
        }

        if STATUS > 0 {
            break;
        }
    }

    if entries_count <= 0 {
        (cast(**Block_Entry) p_last).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);
        return 0;
    }

    assert(entries != null);

    IDX := entries_count - 1;

    assignment_15: *Block_Entry = cast,no_check(*Block_Entry) (entries[IDX]);
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_last).*)).*) = assignment_15;
    assert((((cast(**Block_Entry) p_last).*) != null));

    return 0;
}

get_first :: (using cluster: *Mkvparser_Cluster, p_first: **Block_Entry) -> s64 {
    if entries_count <= 0 {
        _pos: s64 = ---;
        len: s64 = ---;

        STATUS := parse(cluster, *_pos, *len);

        if STATUS < 0 {
            (cast(**Block_Entry) p_first).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);
            return STATUS;
        }

        if entries_count <= 0 {
            (cast(**Block_Entry) p_first).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);
            return 0;
        }
    }

    assert(entries != null);

    assignment_16: *Block_Entry = cast,no_check(*Block_Entry) (entries[0]);
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_first).*)).*) = assignment_16;
    assert((((cast(**Block_Entry) p_first).*) != null));

    return 0;
}

copy_3 :: (using info: *Track_Info, dst: *Track_Info) -> s32 {
    if (cast(**Track_Info) *(dst)).* == info {
        return 0;
    }

    dst.type = type;
    dst.number = number;
    dst.default_duration = default_duration;
    dst.codec_delay = codec_delay;
    dst.seek_pre_roll = seek_pre_roll;
    dst.uid = uid;
    dst.lacing = lacing;
    dst.settings = settings;

    {
        status := copy_str(info, 48, dst);
        if status != 0 {
            return status;
        }
    }

    {
        status := copy_str(info, 56, dst);
        if status != 0 {
            return status;
        }
    }

    {
        status := copy_str(info, 64, dst);
        if status != 0 {
            return status;
        }
    }

    {
        status := copy_str(info, 72, dst);
        if status != 0 {
            return status;
        }
    }

    if codec_private_size > 0 {
        if codec_private == null {
            return -1;
        }

        if dst.codec_private != null {
            return -1;
        }

        if dst.codec_private_size != 0 {
            return -1;
        }

        dst.codec_private = cast,no_check(*u8) mkvparser_safe_array_alloc(1, codec_private_size);

        if dst.codec_private == null {
            return -1;
        }

        copy_memory(dst.codec_private, codec_private, codec_private_size);
        dst.codec_private_size = codec_private_size;
    }

    return 0;
}

mkvparser_safe_array_alloc :: (num_elements: u64, element_size: u64) -> *u8 {
    if num_elements == 0 || element_size == 0 {
        return cast(*u8) null;
    }

    K_MAX_ALLOC_SIZE: u64 = 0x80000000;
    NUM_BYTES := num_elements * element_size;
    if element_size > K_MAX_ALLOC_SIZE / num_elements {
        return cast(*u8) null;
    }
    if NUM_BYTES != NUM_BYTES {
        return cast(*u8) null;
    }

    return cast(*u8) cpp_transpiler_allocate_array_raw(NUM_BYTES, size_of(u8));
}

copy_str :: (using info: *Track_Info, str: s64, dst_value: *Track_Info) -> s32 {
    if str == -cast(s64) 1 {
        return -1;
    }

    dst := cast,no_check(**s8) (cast(**s8) ((cast(*u8) ((cast(**Track_Info) *(dst_value)).*)) + str));

    if (((cast(**s8) dst).*) != null) {
        return -1;
    }

    SRC := cast,no_check(*s8) ((cast(**s8) ((cast(*u8) info) + str)).*);

    if SRC == null {
        return 0;
    }

    LEN := cstring_length(SRC);

    assignment_17: *s8 = cast,no_check(*s8) mkvparser_safe_array_alloc_2(1, (LEN + 1));
    ((cast,no_check(**s8) *((cast(**s8) dst).*)).*) = assignment_17;

    if (cast(**s8) dst).* == null {
        return -1;
    }

    copy_memory((cast(**s8) dst).*, SRC, LEN);
    ((cast(**s8) dst).*)[LEN] = 0;

    return 0;
}

mkvparser_safe_array_alloc_2 :: (num_elements: u64, element_size: u64) -> *s8 {
    if num_elements == 0 || element_size == 0 {
        return cast(*s8) null;
    }

    K_MAX_ALLOC_SIZE: u64 = 0x80000000;
    NUM_BYTES := num_elements * element_size;
    if element_size > K_MAX_ALLOC_SIZE / num_elements {
        return cast(*s8) null;
    }
    if NUM_BYTES != NUM_BYTES {
        return cast(*s8) null;
    }

    return cast(*s8) cpp_transpiler_allocate_array_raw(NUM_BYTES, size_of(s8));
}

get_height :: (using video_track: *Mkvparser_Video_Track) -> s64 {
    return height;
}

get_width :: (using video_track: *Mkvparser_Video_Track) -> s64 {
    return width;
}

get_eos :: (using track: *Mkvparser_Track) -> *Block_Entry {
    return *(eos.block_entry);
}

get_entry :: (using cluster: *Mkvparser_Cluster, p_track: *Mkvparser_Track, time_ns: s64) -> *Block_Entry {
    assert(p_track != null);

    if p_segment == null {
        return get_eos(p_track);
    }

    p_result := cast,no_check(*Block_Entry) (get_eos(p_track));

    _index: s64 = 0;

    while true {
        if _index >= entries_count {
            _pos: s64 = ---;
            len: s64 = ---;

            STATUS := parse(cluster, *_pos, *len);
            assert(STATUS >= 0);

            if STATUS > 0 {
                return p_result;
            }

            if STATUS < 0 {
                return cast(*Block_Entry) null;
            }

            assert(entries != null);
            assert(_index < entries_count);
        }

        P_ENTRY := cast,no_check(*Block_Entry) (entries[_index]);
        assert(P_ENTRY != null);
        assert(!eos(P_ENTRY));

        P_BLOCK := cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(P_ENTRY));
        assert(P_BLOCK != null);

        if get_track_number(P_BLOCK) != get_number(p_track) {
            _index += 1;
            continue;
        }

        if cpp_transpiler_dispatch_mkvparser_Track_VetEntry(p_track, P_ENTRY) {
            if time_ns < 0 {
                return P_ENTRY;
            }

            NS := get_time(P_BLOCK, cluster);

            if NS > time_ns {
                return p_result;
            }

            p_result = cast,no_check(*Block_Entry) (P_ENTRY);
        } else if time_ns >= 0 {
            NS := get_time(P_BLOCK, cluster);

            if NS > time_ns {
                return p_result;
            }
        }

        _index += 1;
    }
    return unreachable_value(*Block_Entry);
}

vet_entry :: (using track: *Mkvparser_Track, p_block_entry: *Block_Entry) -> bool {
    assert(p_block_entry != null);
    P_BLOCK := cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(p_block_entry));
    assert(P_BLOCK != null);
    assert(get_track_number(P_BLOCK) == info.number);
    if P_BLOCK == null || get_track_number(P_BLOCK) != info.number {
        return false;
    }

    return true;
}

get_track_number :: (using block: *Block) -> s64 {
    return track;
}

get_number :: (using track: *Mkvparser_Track) -> s64 {
    return info.number;
}

get_cluster :: (using block_entry: *Block_Entry) -> *Mkvparser_Cluster {
    return p_cluster;
}

get_index :: (using cluster: *Mkvparser_Cluster) -> s64 {
    return index;
}

get_count :: (using segment: *Mkvparser_Segment) -> u64 {
    return cast,no_check(u64) cluster_count;
}

get_first :: (track: *Mkvparser_Track, p_block_entry: **Block_Entry) -> s64 {
    p_cluster := cast,no_check(*Mkvparser_Cluster) (get_first(track.p_segment));

    {
        i: s32 = 0;
        while true {
            if p_cluster == null {
                assignment_18: *Block_Entry = cast,no_check(*Block_Entry) (get_eos(track));
                ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_block_entry).*)).*) = assignment_18;
                return 1;
            }

            if eos(p_cluster) {
                if done_parsing(track.p_segment) {
                    assignment_19: *Block_Entry = cast,no_check(*Block_Entry) (get_eos(track));
                    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_block_entry).*)).*) = assignment_19;
                    return 1;
                }

                (cast(**Block_Entry) p_block_entry).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);
                return cast,no_check(s64) -cast(s32) 3;
            }

            status := get_first(p_cluster, p_block_entry);

            if status < 0 {
                return status;
            }

            if (cast(**Block_Entry) p_block_entry).* == null {
                p_cluster = cast,no_check(*Mkvparser_Cluster) (get_next(track.p_segment, p_cluster));
                continue;
            }

            while true {
                P_BLOCK :=
                    cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(
                        (cast(**Block_Entry) p_block_entry).*
                    ));
                assert(P_BLOCK != null);

                TN := get_track_number(P_BLOCK);

                if TN == track.info.number &&
                    cpp_transpiler_dispatch_mkvparser_Track_VetEntry(track, (cast(**Block_Entry) p_block_entry).*) {
                    return 0;
                }

                p_next_entry: *Block_Entry = ---;

                status = get_next(p_cluster, (cast(**Block_Entry) p_block_entry).*, *p_next_entry);

                if status < 0 {
                    return status;
                }

                if p_next_entry == null {
                    break;
                }

                assignment_20: *Block_Entry = cast,no_check(*Block_Entry) (p_next_entry);
                ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_block_entry).*)).*) = assignment_20;
            }

            i += 1;

            if i >= 100 {
                break;
            }

            p_cluster = cast,no_check(*Mkvparser_Cluster) (get_next(track.p_segment, p_cluster));
        }
    }

    assignment_21: *Block_Entry = cast,no_check(*Block_Entry) (get_eos(track));
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_block_entry).*)).*) = assignment_21;
    return 1;
}

get_first :: (using segment: *Mkvparser_Segment) -> *Mkvparser_Cluster {
    if clusters == null || cluster_count <= 0 {
        return *eos;
    }

    P_CLUSTER := cast,no_check(*Mkvparser_Cluster) (clusters[0]);
    assert(P_CLUSTER != null);

    return P_CLUSTER;
}

get_next :: (using segment: *Mkvparser_Segment, p_curr: *Mkvparser_Cluster) -> *Mkvparser_Cluster {
    assert(p_curr != null);
    assert(p_curr != *eos);
    assert(clusters != null);

    idx := p_curr.index;

    if idx >= 0 {
        assert(cluster_count > 0);
        assert(idx < cluster_count);
        assert(p_curr == clusters[idx]);

        idx += 1;

        if idx >= cluster_count {
            return *eos;
        }

        P_NEXT_mkvparser_cluster := cast,no_check(*Mkvparser_Cluster) (clusters[idx]);
        assert(P_NEXT_mkvparser_cluster != null);
        assert(P_NEXT_mkvparser_cluster.index >= 0);
        assert(P_NEXT_mkvparser_cluster.index == idx);

        return P_NEXT_mkvparser_cluster;
    }

    assert(cluster_preload_count > 0);

    _pos := p_curr.element_start;

    assert(size >= 0);
    STOP := start + size;

    {
        len: s64 = ---;

        result := mkvparser_GetUIntLength(p_reader, _pos, *len);
        assert(result == 0);
        assert((_pos + len) <= STOP);
        if result != 0 {
            return cast(*Mkvparser_Cluster) null;
        }

        ID := mkvparser_ReadID(p_reader, _pos, *len);
        if ID != cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            return cast(*Mkvparser_Cluster) null;
        }

        _pos += len;

        result = mkvparser_GetUIntLength(p_reader, _pos, *len);
        assert(result == 0);
        assert((_pos + len) <= STOP);

        SIZE := mkvparser_ReadUInt(p_reader, _pos, *len);
        assert(SIZE > 0);

        _pos += len;
        assert(_pos + SIZE <= STOP);

        _pos += SIZE;
    }

    off_next: s64 = 0;

    while _pos < STOP {
        len: s64 = ---;

        result := mkvparser_GetUIntLength(p_reader, _pos, *len);
        assert(result == 0);
        assert((_pos + len) <= STOP);
        if result != 0 {
            return cast(*Mkvparser_Cluster) null;
        }

        IDPOS := _pos;

        ID := mkvparser_ReadID(p_reader, IDPOS, *len);
        if ID < 0 {
            return cast(*Mkvparser_Cluster) null;
        }

        _pos += len;

        result = mkvparser_GetUIntLength(p_reader, _pos, *len);
        assert(result == 0);
        assert((_pos + len) <= STOP);

        SIZE := mkvparser_ReadUInt(p_reader, _pos, *len);
        assert(SIZE >= 0);

        _pos += len;
        assert(_pos + SIZE <= STOP);

        if SIZE == 0 {
            continue;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            OFF_NEXT := IDPOS - start;

            _pos_value: s64 = ---;
            len_value: s64 = ---;

            STATUS := has_block_entries(segment, OFF_NEXT, *_pos_value, *len_value);

            assert(STATUS >= 0);

            if STATUS > 0 {
                off_next = OFF_NEXT;
                break;
            }
        }

        _pos += SIZE;
    }

    if off_next <= 0 {
        return cast(*Mkvparser_Cluster) null;
    }

    II := cast,no_check(**Mkvparser_Cluster) ((clusters + cluster_count));
    i := cast,no_check(**Mkvparser_Cluster) (II);

    JJ := cast,no_check(**Mkvparser_Cluster) ((II + cluster_preload_count));
    j := cast,no_check(**Mkvparser_Cluster) (JJ);

    while i < j {
        K := cast,no_check(**Mkvparser_Cluster) ((i + (j - i) / 2));
        assert(K < JJ);

        P_NEXT_mkvparser_cluster := cast,no_check(*Mkvparser_Cluster) (K.*);
        assert(P_NEXT_mkvparser_cluster != null);
        assert(P_NEXT_mkvparser_cluster.index < 0);

        _pos = get_position(P_NEXT_mkvparser_cluster);

        if _pos < off_next {
            i = cast,no_check(**Mkvparser_Cluster) ((K + 1));
        } else if _pos > off_next {
            j = cast,no_check(**Mkvparser_Cluster) (K);
        } else {
            return P_NEXT_mkvparser_cluster;
        }
    }

    assert(i == j);

    P_NEXT: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) create_3(segment, -1, off_next);
    if P_NEXT == null {
        return cast(*Mkvparser_Cluster) null;
    }

    IDX_NEXT := i - clusters;

    if !preload_cluster(segment, P_NEXT, IDX_NEXT) {
        {
            cpp_transpiler_delete_g5 := cast,no_check(*Mkvparser_Cluster) (P_NEXT);
            if cpp_transpiler_delete_g5 != null {
                deinit_72(cpp_transpiler_delete_g5);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g5);
            }
        }
        return cast(*Mkvparser_Cluster) null;
    }
    assert(clusters != null);
    assert(IDX_NEXT < cluster_size);
    assert(clusters[IDX_NEXT] == P_NEXT);

    return P_NEXT;
}

create_3 :: (p_segment: *Mkvparser_Segment, idx: s64, off: s64) -> *Mkvparser_Cluster {
    if p_segment == null || off < 0 {
        return cast(*Mkvparser_Cluster) null;
    }

    ELEMENT_START := p_segment.start + off;

    P_CLUSTER :=
        cast,no_check(*Mkvparser_Cluster) (cast(*Mkvparser_Cluster) cpp_transpiler_allocate_raw(
            size_of(Mkvparser_Cluster)
        ));
    init_116(P_CLUSTER, p_segment, idx, ELEMENT_START);

    return P_CLUSTER;
}

preload_cluster :: (using segment: *Mkvparser_Segment, p_cluster: *Mkvparser_Cluster, idx: s64) -> bool {
    if p_cluster == null || p_cluster.index >= 0 || idx < cluster_count {
        return false;
    }

    COUNT := cluster_count + cluster_preload_count;

    _size := cast,no_check(*s64) (*cluster_size);
    if _size.* < COUNT {
        return false;
    }

    if COUNT >= _size.* {
        N := (ifx _size.* <= 0 then 2048 else 2 * _size.*);

        QQ :=
            cast,no_check(**Mkvparser_Cluster) (cast(**Mkvparser_Cluster) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) N,
                size_of(*Mkvparser_Cluster)
            ));
        if QQ == null {
            return false;
        }
        q_value := cast,no_check(**Mkvparser_Cluster) (QQ);

        p := cast,no_check(**Mkvparser_Cluster) (clusters);
        PP := cast,no_check(**Mkvparser_Cluster) ((p + COUNT));

        while p != PP {
            assignment_22: *Mkvparser_Cluster =
                cast,no_check(*Mkvparser_Cluster) ((c_transpiler_post_increment(*(p))).*);
            ((cast,no_check(**Mkvparser_Cluster) *((c_transpiler_post_increment(*(q_value))).*)).*) = assignment_22;
        }

        {
            cpp_transpiler_delete_g6 := cast,no_check(**Mkvparser_Cluster) (clusters);
            if cpp_transpiler_delete_g6 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g6);
            }
        }

        clusters = cast,no_check(**Mkvparser_Cluster) (QQ);
        assignment_23: s64 = N;
        ((cast,no_check(*s64) *(((cast(**s64) *(_size)).*).*)).*) = assignment_23;
    }

    if clusters == null {
        return false;
    }

    P := cast,no_check(**Mkvparser_Cluster) ((clusters + idx));

    q := cast,no_check(**Mkvparser_Cluster) ((clusters + COUNT));
    if q < P || q >= clusters + _size.* {
        return false;
    }

    while q > P {
        QQ := cast,no_check(**Mkvparser_Cluster) ((q - 1));

        if QQ.*.index >= 0 {
            return false;
        }

        q.* = cast,no_check(*Mkvparser_Cluster) (QQ.*);
        q = cast,no_check(**Mkvparser_Cluster) (QQ);
    }

    clusters[idx] = cast,no_check(*Mkvparser_Cluster) (p_cluster);
    cluster_preload_count += 1;
    return true;
}

get_position :: (using cluster: *Mkvparser_Cluster) -> s64 {
    POS := element_start - p_segment.start;
    assert(POS >= 0);

    return POS;
}

has_block_entries :: (p_segment: *Mkvparser_Segment, off: s64, pos: *s64, len: *s64) -> s64 {
    assert(p_segment != null);
    assert(off >= 0);

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    total, avail: s64 = ---;

    status := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(P_READER, *total, *avail);

    if status < 0 {
        return status;
    }

    assert(total < 0 || avail <= total);

    assignment_24: s64 = (p_segment.start + off);
    ((cast,no_check(*s64) *(((cast(**s64) *(pos)).*).*)).*) = assignment_24;

    if total >= 0 && pos.* >= total {
        return 0;
    }

    SEGMENT_STOP := (ifx p_segment.size < 0 then -1 else p_segment.start + p_segment.size);

    cluster_stop: s64 = -1;

    {
        if (pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result := mkvparser_GetUIntLength(P_READER, pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if SEGMENT_STOP >= 0 && (pos.* + len.*) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if total >= 0 && (pos.* + len.*) > total {
            return 0;
        }

        if (pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        ID := mkvparser_ReadID(P_READER, pos.*, len);

        if ID < 0 {
            return ID;
        }

        if ID != cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            return cast,no_check(s64) -cast(s32) 1;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len.*), s64, s64);

        if (pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(P_READER, pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if SEGMENT_STOP >= 0 && (pos.* + len.*) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if total >= 0 && (pos.* + len.*) > total {
            return 0;
        }

        if (pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        SIZE := mkvparser_ReadUInt(P_READER, pos.*, len);

        if SIZE < 0 {
            return SIZE;
        }

        if SIZE == 0 {
            return 0;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len.*), s64, s64);

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

        if SIZE != UNKNOWN_SIZE {
            cluster_stop = pos.* + SIZE;
            assert(cluster_stop >= 0);

            if SEGMENT_STOP >= 0 && cluster_stop > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            if total >= 0 && cluster_stop > total {
                return 0;
            }
        }
    }

    while true {
        if cluster_stop >= 0 && pos.* >= cluster_stop {
            return 0;
        }

        if (pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result := mkvparser_GetUIntLength(P_READER, pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if cluster_stop >= 0 && (pos.* + len.*) > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        ID := mkvparser_ReadID(P_READER, pos.*, len);

        if ID < 0 {
            return ID;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            return 0;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUES {
            return 0;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len.*), s64, s64);

        if cluster_stop >= 0 && pos.* >= cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(P_READER, pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if cluster_stop >= 0 && (pos.* + len.*) > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        SIZE := mkvparser_ReadUInt(P_READER, pos.*, len);

        if SIZE < 0 {
            return SIZE;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len.*), s64, s64);

        if cluster_stop >= 0 && pos.* > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if SIZE == 0 {
            continue;
        }

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

        if SIZE == UNKNOWN_SIZE {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if cluster_stop >= 0 && pos.* + SIZE > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_BLOCK_GROUP {
            return 1;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_SIMPLE_BLOCK {
            return 1;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (SIZE), s64, s64);
        if cluster_stop >= 0 && pos.* > cluster_stop {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }
    return unreachable_value(s64);
}

get_next :: (using cluster: *Mkvparser_Cluster, p_curr: *Block_Entry, p_next: **Block_Entry) -> s64 {
    assert(p_curr != null);
    assert(entries != null);
    assert(entries_count > 0);

    idx := cast,no_check(u64) get_index(p_curr);
    assert(idx < cast,no_check(u64) entries_count);
    assert(entries[idx] == p_curr);

    idx += 1;

    if idx >= cast,no_check(u64) entries_count {
        _pos: s64 = ---;
        len: s64 = ---;

        STATUS := parse(cluster, *_pos, *len);

        if STATUS < 0 {
            (cast(**Block_Entry) p_next).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);
            return STATUS;
        }

        if STATUS > 0 {
            (cast(**Block_Entry) p_next).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);
            return 0;
        }

        assert(entries != null);
        assert(entries_count > 0);
        assert(idx < cast,no_check(u64) entries_count);
    }

    assignment_25: *Block_Entry = cast,no_check(*Block_Entry) (entries[idx]);
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_next).*)).*) = assignment_25;
    assert((((cast(**Block_Entry) p_next).*) != null));

    return 0;
}

get_index :: (using block_entry: *Block_Entry) -> s64 {
    return index;
}

done_parsing :: (using segment: *Mkvparser_Segment) -> bool {
    if size < 0 {
        total, avail: s64 = ---;

        STATUS := cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(p_reader, *total, *avail);

        if STATUS < 0 {
            return true;
        }

        if total < 0 {
            return false;
        }

        return pos >= total;
    }

    STOP := start + size;

    return pos >= STOP;
}

eos :: (using cluster: *Mkvparser_Cluster) -> bool {
    return p_segment == null;
}

is_key :: (using block: *Block) -> bool {
    return ((cast(s32) flags) & cast,no_check(s32) (cast,no_check(u8) ((cast(s32) 1) << 7))) != 0;
}

release_2 :: (
    using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection
) -> Std_Unique_Ptr_Mkvparser_Projection_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Projection_Pointer) (release_3(cast(*Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection) *t));
}

release_3 :: (
    using class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection: *Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer {
    p :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ptr_14(
            class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection
        )).*);
    (cast(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ptr_14(class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection)).* =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) (cast(Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) null);
    return p;
}

ptr_14 :: (
    using class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection: *Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> *Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer {
    return cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) (std_get_15(*t));
}

std_get_15 :: (
    t: *Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type) (std_get_helper_14(
        cast(*Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection) ((cast(**Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection) *(t)).*)
    ));
}

std_get_helper_14 :: (
    t: *Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> **Mkvparser_Projection {
    return cast,no_check(**Mkvparser_Projection) (m_head_26(t));
}

m_head_26 :: (
    t: *Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> **Mkvparser_Projection {
    return cast,no_check(**Mkvparser_Projection) (m_head_27(
        cast(*Struct_Head_Base_0_Struct_Projection) ((cast(**Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection) *(t)).*)
    ));
}

m_head_27 :: (b: *Struct_Head_Base_0_Struct_Projection) -> **Mkvparser_Projection {
    return *b.head_impl;
}

release_4 :: (using class_unique_ptr_char: *Class_Unique_Ptr_Char) -> Std_Unique_Ptr_Char_Pointer {
    return cast,no_check(Std_Unique_Ptr_Char_Pointer) (release_5(cast(*Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char) *t));
}

release_5 :: (
    using class_uniq_ptr_impl_char_struct_default_delete_char: *Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char
) -> Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer {
    p :=
        cast,no_check(Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ptr_15(
            class_uniq_ptr_impl_char_struct_default_delete_char
        )).*);
    (cast(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ptr_15(class_uniq_ptr_impl_char_struct_default_delete_char)).* =
        cast,no_check(Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) (cast(Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) null);
    return p;
}

ptr_15 :: (
    using class_uniq_ptr_impl_char_struct_default_delete_char: *Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char
) -> *Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer {
    return cast,no_check(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) (std_get_16(*t));
}

std_get_16 :: (
    t: *Class_Tuple_Char_Struct_Default_Delete_Char
) -> *Std_Tuple_Element_0_Std_Tuple_Char_Std_Default_Delete_Char_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Char_Std_Default_Delete_Char_Type) (std_get_helper_15(
        cast(*Struct_Tuple_Impl_0_Char_Struct_Default_Delete_Char) ((cast(**Class_Tuple_Char_Struct_Default_Delete_Char) *(t)).*)
    ));
}

std_get_helper_15 :: (t: *Struct_Tuple_Impl_0_Char_Struct_Default_Delete_Char) -> **s8 {
    return cast,no_check(**s8) (m_head_28(t));
}

m_head_28 :: (t: *Struct_Tuple_Impl_0_Char_Struct_Default_Delete_Char) -> **s8 {
    return cast,no_check(**s8) (m_head_29(cast(*Struct_Head_Base_0_Char) ((cast(**Struct_Tuple_Impl_0_Char_Struct_Default_Delete_Char) *(t)).*)));
}

m_head_29 :: (b: *Struct_Head_Base_0_Char) -> **s8 {
    return *b.head_impl;
}

release_6 :: (
    using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour
) -> Std_Unique_Ptr_Mkvparser_Colour_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Colour_Pointer) (release_7(cast(*Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour) *t));
}

release_7 :: (
    using class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour: *Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour
) -> Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer {
    p :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ptr_16(
            class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour
        )).*);
    (cast(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ptr_16(class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour)).* =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) (cast(Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) null);
    return p;
}

ptr_16 :: (
    using class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour: *Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour
) -> *Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer {
    return cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) (std_get_17(*t));
}

std_get_17 :: (
    t: *Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type) (std_get_helper_16(
        cast(*Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) ((cast(**Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour) *(t)).*)
    ));
}

std_get_helper_16 :: (t: *Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) -> **Mkvparser_Colour {
    return cast,no_check(**Mkvparser_Colour) (m_head_30(t));
}

m_head_30 :: (t: *Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) -> **Mkvparser_Colour {
    return cast,no_check(**Mkvparser_Colour) (m_head_31(
        cast(*Struct_Head_Base_0_Struct_Colour) ((cast(**Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) *(t)).*)
    ));
}

m_head_31 :: (b: *Struct_Head_Base_0_Struct_Colour) -> **Mkvparser_Colour {
    return *b.head_impl;
}

reset_3 :: (using class_unique_ptr_char: *Class_Unique_Ptr_Char, p: *s8) {
    reset_4(cast(*Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char) *t, (cast(*Std_Remove_Reference_Char_Type) *p).*);
}

reset_4 :: (
    using class_uniq_ptr_impl_char_struct_default_delete_char: *Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char,
    p: Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer
) {
    OLD_P :=
        cast,no_check(Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ptr_15(
            class_uniq_ptr_impl_char_struct_default_delete_char
        )).*);
    assignment_26: Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ptr_15(class_uniq_ptr_impl_char_struct_default_delete_char)).*)).*) = assignment_26;
    if OLD_P != null {
        call_8(deleter_5(class_uniq_ptr_impl_char_struct_default_delete_char), OLD_P);
    }
}

deleter_5 :: (
    using class_uniq_ptr_impl_char_struct_default_delete_char: *Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char
) -> *Struct_Default_Delete_Char {
    return cast,no_check(*Struct_Default_Delete_Char) (std_get_18(*t));
}

std_get_18 :: (
    t: *Class_Tuple_Char_Struct_Default_Delete_Char
) -> *Std_Tuple_Element_1_Std_Tuple_Char_Std_Default_Delete_Char_Type {
    return cast,no_check(*Std_Tuple_Element_1_Std_Tuple_Char_Std_Default_Delete_Char_Type) (std_get_helper_17(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Char) ((cast(**Class_Tuple_Char_Struct_Default_Delete_Char) *(t)).*)
    ));
}

std_get_helper_17 :: (t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Char) -> *Struct_Default_Delete_Char {
    return cast,no_check(*Struct_Default_Delete_Char) (m_head_32(t));
}

m_head_32 :: (t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Char) -> *Struct_Default_Delete_Char {
    return cast,no_check(*Struct_Default_Delete_Char) (m_head_33(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Char) ((cast(**Struct_Tuple_Impl_1_Struct_Default_Delete_Char) *(t)).*)
    ));
}

m_head_33 :: (b: *Struct_Head_Base_1_Struct_Default_Delete_Char) -> *Struct_Default_Delete_Char {
    return *b.head_impl;
}

call_8 :: (using struct_default_delete_char: *Struct_Default_Delete_Char, ptr: *s8) {
    #assert true; // validated by the C++ frontend
    {
        cpp_transpiler_delete_g7 := cast,no_check(*s8) (ptr);
        if cpp_transpiler_delete_g7 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g7);
        }
    }
}

reset_5 :: (
    using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection,
    p: Std_Unique_Ptr_Mkvparser_Projection_Pointer
) {
    #assert true; // validated by the C++ frontend
    reset_6(
        cast(*Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection) *t,
        (cast(*Std_Remove_Reference_Mkvparser_Projection_Type) *p).*
    );
}

reset_6 :: (
    using class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection: *Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection,
    p: Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer
) {
    OLD_P :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ptr_14(
            class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection
        )).*);
    assignment_27: Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ptr_14(class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection)).*)).*) = assignment_27;
    if OLD_P != null {
        call_9(deleter_6(class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection), OLD_P);
    }
}

deleter_6 :: (
    using class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection: *Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> *Struct_Default_Delete_Struct_Projection {
    return cast,no_check(*Struct_Default_Delete_Struct_Projection) (std_get_19(*t));
}

std_get_19 :: (
    t: *Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> *Std_Tuple_Element_1_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type {
    return cast,no_check(*Std_Tuple_Element_1_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type) (std_get_helper_18(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Projection) ((cast(**Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection) *(t)).*)
    ));
}

std_get_helper_18 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Projection
) -> *Struct_Default_Delete_Struct_Projection {
    return cast,no_check(*Struct_Default_Delete_Struct_Projection) (m_head_34(t));
}

m_head_34 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Projection
) -> *Struct_Default_Delete_Struct_Projection {
    return cast,no_check(*Struct_Default_Delete_Struct_Projection) (m_head_35(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Struct_Projection) ((cast(**Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Projection) *(t)).*)
    ));
}

m_head_35 :: (
    b: *Struct_Head_Base_1_Struct_Default_Delete_Struct_Projection
) -> *Struct_Default_Delete_Struct_Projection {
    return *b.head_impl;
}

call_9 :: (
    using struct_default_delete_struct_projection: *Struct_Default_Delete_Struct_Projection,
    ptr: *Mkvparser_Projection
) {
    #assert true; // validated by the C++ frontend
    #assert true; // validated by the C++ frontend
    {
        cpp_transpiler_delete_g8 := cast,no_check(*Mkvparser_Projection) (ptr);
        if cpp_transpiler_delete_g8 != null {
            deinit_57(cpp_transpiler_delete_g8);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g8);
        }
    }
}

reset_7 :: (
    using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour,
    p: Std_Unique_Ptr_Mkvparser_Colour_Pointer
) {
    #assert true; // validated by the C++ frontend
    reset_8(
        cast(*Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour) *t,
        (cast(*Std_Remove_Reference_Mkvparser_Colour_Type) *p).*
    );
}

reset_8 :: (
    using class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour: *Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour,
    p: Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer
) {
    OLD_P :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ptr_16(
            class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour
        )).*);
    assignment_28: Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ptr_16(class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour)).*)).*) = assignment_28;
    if OLD_P != null {
        call_10(deleter_7(class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour), OLD_P);
    }
}

deleter_7 :: (
    using class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour: *Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour
) -> *Struct_Default_Delete_Struct_Colour {
    return cast,no_check(*Struct_Default_Delete_Struct_Colour) (std_get_20(*t));
}

std_get_20 :: (
    t: *Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour
) -> *Std_Tuple_Element_1_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type {
    return cast,no_check(*Std_Tuple_Element_1_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type) (std_get_helper_19(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Colour) ((cast(**Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour) *(t)).*)
    ));
}

std_get_helper_19 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Colour
) -> *Struct_Default_Delete_Struct_Colour {
    return cast,no_check(*Struct_Default_Delete_Struct_Colour) (m_head_36(t));
}

m_head_36 :: (t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Colour) -> *Struct_Default_Delete_Struct_Colour {
    return cast,no_check(*Struct_Default_Delete_Struct_Colour) (m_head_37(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Struct_Colour) ((cast(**Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Colour) *(t)).*)
    ));
}

m_head_37 :: (b: *Struct_Head_Base_1_Struct_Default_Delete_Struct_Colour) -> *Struct_Default_Delete_Struct_Colour {
    return *b.head_impl;
}

call_10 :: (using struct_default_delete_struct_colour: *Struct_Default_Delete_Struct_Colour, ptr: *Mkvparser_Colour) {
    #assert true; // validated by the C++ frontend
    #assert true; // validated by the C++ frontend
    {
        cpp_transpiler_delete_g9 := cast,no_check(*Mkvparser_Colour) (ptr);
        if cpp_transpiler_delete_g9 != null {
            deinit_56(cpp_transpiler_delete_g9);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g9);
        }
    }
}

get_deleter_5 :: (using class_unique_ptr_char: *Class_Unique_Ptr_Char) -> *Std_Unique_Ptr_Char_Deleter_Type {
    return cast,no_check(*Std_Unique_Ptr_Char_Deleter_Type) (deleter_5(cast(*Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char) *t));
}

get_pointer_6 :: (
    using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection
) -> Std_Unique_Ptr_Mkvparser_Projection_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Projection_Pointer) (get_6(class_unique_ptr_struct_projection));
}

get_6 :: (
    using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection
) -> Std_Unique_Ptr_Mkvparser_Projection_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Projection_Pointer) (ptr_17(cast(*Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection) *t));
}

ptr_17 :: (
    using class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection: *Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer {
    return (cast(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type) std_get_21(*t)).*;
}

std_get_21 :: (
    t: *Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type) (std_get_helper_20(
        cast(*Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection) ((cast(**Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection) *(t)).*)
    ));
}

std_get_helper_20 :: (
    t: *Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> **Mkvparser_Projection {
    return cast,no_check(**Mkvparser_Projection) (m_head_38(t));
}

m_head_38 :: (
    t: *Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection
) -> **Mkvparser_Projection {
    return cast,no_check(**Mkvparser_Projection) (m_head_39(
        cast(*Struct_Head_Base_0_Struct_Projection) ((cast(**Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection) *(t)).*)
    ));
}

m_head_39 :: (b: *Struct_Head_Base_0_Struct_Projection) -> **Mkvparser_Projection {
    return *b.head_impl;
}

operator_bool_2 :: (using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection) -> bool {
    return ifx get_6(class_unique_ptr_struct_projection) == null then false else true;
}

get_deleter_6 :: (
    using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection
) -> *Std_Unique_Ptr_Mkvparser_Projection_Deleter_Type {
    return cast,no_check(*Std_Unique_Ptr_Mkvparser_Projection_Deleter_Type) (deleter_6(cast(*Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection) *t));
}

get_pointer_7 :: (
    using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour
) -> Std_Unique_Ptr_Mkvparser_Colour_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Colour_Pointer) (get_7(class_unique_ptr_struct_colour));
}

get_7 :: (
    using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour
) -> Std_Unique_Ptr_Mkvparser_Colour_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Colour_Pointer) (ptr_18(cast(*Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour) *t));
}

ptr_18 :: (
    using class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour: *Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour
) -> Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer {
    return (cast(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type) std_get_22(*t)).*;
}

std_get_22 :: (
    t: *Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type) (std_get_helper_21(
        cast(*Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) ((cast(**Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour) *(t)).*)
    ));
}

std_get_helper_21 :: (t: *Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) -> **Mkvparser_Colour {
    return cast,no_check(**Mkvparser_Colour) (m_head_40(t));
}

m_head_40 :: (t: *Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) -> **Mkvparser_Colour {
    return cast,no_check(**Mkvparser_Colour) (m_head_41(
        cast(*Struct_Head_Base_0_Struct_Colour) ((cast(**Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) *(t)).*)
    ));
}

m_head_41 :: (b: *Struct_Head_Base_0_Struct_Colour) -> **Mkvparser_Colour {
    return *b.head_impl;
}

operator_bool_3 :: (using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour) -> bool {
    return ifx get_7(class_unique_ptr_struct_colour) == null then false else true;
}

get_deleter_7 :: (
    using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour
) -> *Std_Unique_Ptr_Mkvparser_Colour_Deleter_Type {
    return cast,no_check(*Std_Unique_Ptr_Mkvparser_Colour_Deleter_Type) (deleter_7(cast(*Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour) *t));
}

release_8 :: (
    using class_unique_ptr_struct_mastering_metadata: *Class_Unique_Ptr_Struct_Mastering_Metadata
) -> Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Pointer) (release_9(cast(*Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *t));
}

release_9 :: (
    using class_uniq_ptr_impl_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata: *Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer {
    p :=
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) ((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) ptr_19(
            class_uniq_ptr_impl_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata
        )).*);
    (cast(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) ptr_19(class_uniq_ptr_impl_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata)).* =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) (cast(Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) null);
    return p;
}

ptr_19 :: (
    using class_uniq_ptr_impl_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata: *Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> *Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer {
    return cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) (std_get_23(*t));
}

std_get_23 :: (
    t: *Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type) (std_get_helper_22(
        cast(*Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) ((cast(**Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *(t)).*)
    ));
}

std_get_helper_22 :: (
    t: *Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> **Mkvparser_Mastering_Metadata {
    return cast,no_check(**Mkvparser_Mastering_Metadata) (m_head_42(t));
}

m_head_42 :: (
    t: *Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> **Mkvparser_Mastering_Metadata {
    return cast,no_check(**Mkvparser_Mastering_Metadata) (m_head_43(
        cast(*Struct_Head_Base_0_Struct_Mastering_Metadata) ((cast(**Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *(t)).*)
    ));
}

m_head_43 :: (b: *Struct_Head_Base_0_Struct_Mastering_Metadata) -> **Mkvparser_Mastering_Metadata {
    return *b.head_impl;
}

get_pointer_8 :: (
    using class_unique_ptr_struct_mastering_metadata: *Class_Unique_Ptr_Struct_Mastering_Metadata
) -> Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Pointer) (get_8(class_unique_ptr_struct_mastering_metadata));
}

get_8 :: (
    using class_unique_ptr_struct_mastering_metadata: *Class_Unique_Ptr_Struct_Mastering_Metadata
) -> Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Pointer {
    return cast,no_check(Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Pointer) (ptr_20(cast(*Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *t));
}

ptr_20 :: (
    using class_uniq_ptr_impl_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata: *Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer {
    return (cast(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type) std_get_24(*t)).*;
}

std_get_24 :: (
    t: *Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> *Std_Tuple_Element_0_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type {
    return cast,no_check(*Std_Tuple_Element_0_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type) (std_get_helper_23(
        cast(*Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) ((cast(**Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *(t)).*)
    ));
}

std_get_helper_23 :: (
    t: *Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> **Mkvparser_Mastering_Metadata {
    return cast,no_check(**Mkvparser_Mastering_Metadata) (m_head_44(t));
}

m_head_44 :: (
    t: *Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> **Mkvparser_Mastering_Metadata {
    return cast,no_check(**Mkvparser_Mastering_Metadata) (m_head_45(
        cast(*Struct_Head_Base_0_Struct_Mastering_Metadata) ((cast(**Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *(t)).*)
    ));
}

m_head_45 :: (b: *Struct_Head_Base_0_Struct_Mastering_Metadata) -> **Mkvparser_Mastering_Metadata {
    return *b.head_impl;
}

operator_bool_4 :: (
    using class_unique_ptr_struct_mastering_metadata: *Class_Unique_Ptr_Struct_Mastering_Metadata
) -> bool {
    return ifx get_8(class_unique_ptr_struct_mastering_metadata) == null then false else true;
}

get_deleter_8 :: (
    using class_unique_ptr_struct_mastering_metadata: *Class_Unique_Ptr_Struct_Mastering_Metadata
) -> *Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Deleter_Type {
    return cast,no_check(*Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Deleter_Type) (deleter_8(cast(*Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *t));
}

deleter_8 :: (
    using class_uniq_ptr_impl_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata: *Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> *Struct_Default_Delete_Struct_Mastering_Metadata {
    return cast,no_check(*Struct_Default_Delete_Struct_Mastering_Metadata) (std_get_25(*t));
}

std_get_25 :: (
    t: *Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) -> *Std_Tuple_Element_1_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type {
    return cast,no_check(*Std_Tuple_Element_1_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type) (std_get_helper_24(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Mastering_Metadata) ((cast(**Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *(t)).*)
    ));
}

std_get_helper_24 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Mastering_Metadata
) -> *Struct_Default_Delete_Struct_Mastering_Metadata {
    return cast,no_check(*Struct_Default_Delete_Struct_Mastering_Metadata) (m_head_46(t));
}

m_head_46 :: (
    t: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Mastering_Metadata
) -> *Struct_Default_Delete_Struct_Mastering_Metadata {
    return cast,no_check(*Struct_Default_Delete_Struct_Mastering_Metadata) (m_head_47(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Struct_Mastering_Metadata) ((cast(**Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Mastering_Metadata) *(t)).*)
    ));
}

m_head_47 :: (
    b: *Struct_Head_Base_1_Struct_Default_Delete_Struct_Mastering_Metadata
) -> *Struct_Default_Delete_Struct_Mastering_Metadata {
    return *b.head_impl;
}

call_11 :: (
    using struct_default_delete_struct_mastering_metadata: *Struct_Default_Delete_Struct_Mastering_Metadata,
    ptr: *Mkvparser_Mastering_Metadata
) {
    #assert true; // validated by the C++ frontend
    #assert true; // validated by the C++ frontend
    {
        cpp_transpiler_delete_g10 := cast,no_check(*Mkvparser_Mastering_Metadata) (ptr);
        if cpp_transpiler_delete_g10 != null {
            deinit_55(cpp_transpiler_delete_g10);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g10);
        }
    }
}

clear_6 :: (using info: *Track_Info) {
    {
        cpp_transpiler_delete_g11 := cast,no_check(*s8) (name_as_utf8);
        if cpp_transpiler_delete_g11 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g11);
        }
    }
    name_as_utf8 = cast,no_check(*s8) (cast(*s8) null);

    {
        cpp_transpiler_delete_g12 := cast,no_check(*s8) (language);
        if cpp_transpiler_delete_g12 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g12);
        }
    }
    language = cast,no_check(*s8) (cast(*s8) null);

    {
        cpp_transpiler_delete_g13 := cast,no_check(*s8) (codec_id);
        if cpp_transpiler_delete_g13 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g13);
        }
    }
    codec_id = cast,no_check(*s8) (cast(*s8) null);

    {
        cpp_transpiler_delete_g14 := cast,no_check(*u8) (codec_private);
        if cpp_transpiler_delete_g14 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g14);
        }
    }
    codec_private = cast,no_check(*u8) (cast(*u8) null);
    codec_private_size = 0;

    {
        cpp_transpiler_delete_g15 := cast,no_check(*s8) (codec_name_as_utf8);
        if cpp_transpiler_delete_g15 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g15);
        }
    }
    codec_name_as_utf8 = cast,no_check(*s8) (cast(*s8) null);
}

clear_10 :: (using simple_tag: *Tags_Simple_Tag) {
    {
        cpp_transpiler_delete_g16 := cast,no_check(*s8) (tag_name);
        if cpp_transpiler_delete_g16 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g16);
        }
    }
    tag_name = cast,no_check(*s8) (cast(*s8) null);

    {
        cpp_transpiler_delete_g17 := cast,no_check(*s8) (tag_string);
        if cpp_transpiler_delete_g17 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g17);
        }
    }
    tag_string = cast,no_check(*s8) (cast(*s8) null);
}

clear_11 :: (using tag: *Tags_Tag) {
    while simple_tags_count > 0 {
        d := cast,no_check(*Tags_Simple_Tag) (*simple_tags[c_transpiler_pre_decrement(*(simple_tags_count))]);
        clear_10(d);
    }

    {
        cpp_transpiler_delete_g18 := cast,no_check(*Tags_Simple_Tag) (simple_tags);
        if cpp_transpiler_delete_g18 != null {
            cpp_transpiler_delete_index_g19 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g18);
            while cpp_transpiler_delete_index_g19 > 0 {
                cpp_transpiler_delete_index_g19 -= 1;
                deinit_66(cpp_transpiler_delete_g18 + cpp_transpiler_delete_index_g19);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g18);
        }
    }
    simple_tags = cast,no_check(*Tags_Simple_Tag) (cast(*Tags_Simple_Tag) null);

    simple_tags_size = 0;
}

clear_7 :: (using display: *Chapters_Display) {
    {
        cpp_transpiler_delete_g20 := cast,no_check(*s8) (string_);
        if cpp_transpiler_delete_g20 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g20);
        }
    }
    string_ = cast,no_check(*s8) (cast(*s8) null);

    {
        cpp_transpiler_delete_g21 := cast,no_check(*s8) (language);
        if cpp_transpiler_delete_g21 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g21);
        }
    }
    language = cast,no_check(*s8) (cast(*s8) null);

    {
        cpp_transpiler_delete_g22 := cast,no_check(*s8) (country);
        if cpp_transpiler_delete_g22 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g22);
        }
    }
    country = cast,no_check(*s8) (cast(*s8) null);
}

clear_8 :: (using atom: *Chapters_Atom) {
    {
        cpp_transpiler_delete_g23 := cast,no_check(*s8) (string_uid);
        if cpp_transpiler_delete_g23 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g23);
        }
    }
    string_uid = cast,no_check(*s8) (cast(*s8) null);

    while displays_count > 0 {
        d := cast,no_check(*Chapters_Display) (*displays[c_transpiler_pre_decrement(*(displays_count))]);
        clear_7(d);
    }

    {
        cpp_transpiler_delete_g24 := cast,no_check(*Chapters_Display) (displays);
        if cpp_transpiler_delete_g24 != null {
            cpp_transpiler_delete_index_g25 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g24);
            while cpp_transpiler_delete_index_g25 > 0 {
                cpp_transpiler_delete_index_g25 -= 1;
                deinit_62(cpp_transpiler_delete_g24 + cpp_transpiler_delete_index_g25);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g24);
        }
    }
    displays = cast,no_check(*Chapters_Display) (cast(*Chapters_Display) null);

    displays_size = 0;
}

clear_9 :: (using edition: *Chapters_Edition) {
    while atoms_count > 0 {
        a := cast,no_check(*Chapters_Atom) (*atoms[c_transpiler_pre_decrement(*(atoms_count))]);
        clear_8(a);
    }

    {
        cpp_transpiler_delete_g26 := cast,no_check(*Chapters_Atom) (atoms);
        if cpp_transpiler_delete_g26 != null {
            cpp_transpiler_delete_index_g27 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g26);
            while cpp_transpiler_delete_index_g27 > 0 {
                cpp_transpiler_delete_index_g27 -= 1;
                deinit_63(cpp_transpiler_delete_g26 + cpp_transpiler_delete_index_g27);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g26);
        }
    }
    atoms = cast,no_check(*Chapters_Atom) (cast(*Chapters_Atom) null);

    atoms_size = 0;
}

get_duration :: (using segment_info: *Mkvparser_Segment_Info) -> s64 {
    if c_transpiler_float_less(duration, 0.0) {
        return -1;
    }

    assert(timecode_scale >= 1);

    DD := duration * timecode_scale;
    D := cast,no_check(s64) DD;

    return D;
}

do_parse_next :: (using segment: *Mkvparser_Segment, p_result: **Mkvparser_Cluster, _pos: *s64, len: *s64) -> s64 {
    total, avail: s64 = ---;

    status := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(p_reader, *total, *avail);

    if status < 0 {
        return status;
    }

    assert(total < 0 || avail <= total);

    SEGMENT_STOP := (ifx size < 0 then -1 else start + size);

    off_next: s64 = 0;
    _cluster_size: s64 = -1;

    while true {
        if total >= 0 && _pos.* >= total {
            return 1;
        }

        if SEGMENT_STOP >= 0 && _pos.* >= SEGMENT_STOP {
            return 1;
        }

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result := mkvparser_GetUIntLength(p_reader, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        IDPOS := _pos.*;
        IDOFF := _pos.* - start;

        ID := mkvparser_ReadID(p_reader, IDPOS, len);

        if ID < 0 {
            return ID;
        }

        if ID == 0 {
            return -1;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(p_reader, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        SIZE := mkvparser_ReadUInt(p_reader, _pos.*, len);

        if SIZE < 0 {
            return SIZE;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if SIZE == 0 {
            continue;
        }

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

        if SEGMENT_STOP >= 0 && SIZE != UNKNOWN_SIZE && _pos.* + SIZE > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUES {
            if SIZE == UNKNOWN_SIZE {
                return cast,no_check(s64) -cast(s32) 2;
            }

            ELEMENT_STOP := _pos.* + SIZE;

            if SEGMENT_STOP >= 0 && ELEMENT_STOP > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            ELEMENT_START := IDPOS;
            ELEMENT_SIZE := ELEMENT_STOP - ELEMENT_START;

            if p_cues == null {
                p_cues =
                    cast,no_check(*Mkvparser_Cues) ((ifx true {
        cpp_transpiler_new_g28 :=
            cast,no_check(*Mkvparser_Cues) (cast(*Mkvparser_Cues) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Cues)
            ));
        init_111(cpp_transpiler_new_g28, segment, _pos.*, SIZE, ELEMENT_START, ELEMENT_SIZE);
        cpp_transpiler_new_g28;
    })
    );
                if p_cues == null {
                    return 0;
                }
            }

            c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (SIZE), s64, s64);
            if SEGMENT_STOP >= 0 && _pos.* > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            continue;
        }

        if ID != cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            if SIZE == UNKNOWN_SIZE {
                return cast,no_check(s64) -cast(s32) 2;
            }

            c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (SIZE), s64, s64);
            if SEGMENT_STOP >= 0 && _pos.* > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            continue;
        }

        off_next = IDOFF;

        if SIZE != UNKNOWN_SIZE {
            _cluster_size = SIZE;
        }

        break;
    }

    assert(off_next > 0);

    II := cast,no_check(**Mkvparser_Cluster) ((clusters + cluster_count));
    i := cast,no_check(**Mkvparser_Cluster) (II);

    JJ := cast,no_check(**Mkvparser_Cluster) ((II + cluster_preload_count));
    j := cast,no_check(**Mkvparser_Cluster) (JJ);

    while i < j {
        K := cast,no_check(**Mkvparser_Cluster) ((i + (j - i) / 2));
        assert(K < JJ);

        P_NEXT := cast,no_check(*Mkvparser_Cluster) (K.*);
        assert(P_NEXT != null);
        assert(P_NEXT.index < 0);

        assignment_29: s64 = get_position(P_NEXT);
        ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_29;
        assert(_pos.* >= 0);

        if _pos.* < off_next {
            i = cast,no_check(**Mkvparser_Cluster) ((K + 1));
        } else if _pos.* > off_next {
            j = cast,no_check(**Mkvparser_Cluster) (K);
        } else {
            assignment_30: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) (P_NEXT);
            ((cast,no_check(**Mkvparser_Cluster) *((cast(**Mkvparser_Cluster) p_result).*)).*) = assignment_30;
            return 0;
        }
    }

    assert(i == j);

    _pos_value: s64 = ---;
    len_value: s64 = ---;

    status = has_block_entries(segment, off_next, *_pos_value, *len_value);

    if status < 0 {
        assignment_31: s64 = _pos_value;
        ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_31;
        assignment_32: s64 = len_value;
        ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_32;

        return status;
    }

    if status > 0 {
        P_NEXT: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) create_3(segment, -1, off_next);
        if P_NEXT == null {
            return -1;
        }

        IDX_NEXT := i - clusters;

        if !preload_cluster(segment, P_NEXT, IDX_NEXT) {
            {
                cpp_transpiler_delete_g29 := cast,no_check(*Mkvparser_Cluster) (P_NEXT);
                if cpp_transpiler_delete_g29 != null {
                    deinit_72(cpp_transpiler_delete_g29);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g29);
                }
            }
            return -1;
        }
        assert(clusters != null);
        assert(IDX_NEXT < cluster_size);
        assert(clusters[IDX_NEXT] == P_NEXT);

        assignment_33: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) (P_NEXT);
        ((cast,no_check(**Mkvparser_Cluster) *((cast(**Mkvparser_Cluster) p_result).*)).*) = assignment_33;
        return 0;
    }

    if _cluster_size < 0 {
        PAYLOAD_POS := _pos.*;

        while true {
            if total >= 0 && _pos.* >= total {
                break;
            }

            if SEGMENT_STOP >= 0 && _pos.* >= SEGMENT_STOP {
                break;
            }

            if (_pos.* + 1) > avail {
                ((cast(**s64) *(len)).*).* = 1;
                return cast,no_check(s64) -cast(s32) 3;
            }

            result := mkvparser_GetUIntLength(p_reader, _pos.*, len);

            if result < 0 {
                return result;
            }

            if result > 0 {
                return cast,no_check(s64) -cast(s32) 3;
            }

            if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            if (_pos.* + len.*) > avail {
                return cast,no_check(s64) -cast(s32) 3;
            }

            IDPOS := _pos.*;
            ID := mkvparser_ReadID(p_reader, IDPOS, len);

            if ID < 0 {
                return ID;
            }

            if ID == cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER || ID == cast,no_check(s64) LIBWEBM_K_MKV_CUES {
                break;
            }

            c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

            if (_pos.* + 1) > avail {
                ((cast(**s64) *(len)).*).* = 1;
                return cast,no_check(s64) -cast(s32) 3;
            }

            result = mkvparser_GetUIntLength(p_reader, _pos.*, len);

            if result < 0 {
                return result;
            }

            if result > 0 {
                return cast,no_check(s64) -cast(s32) 3;
            }

            if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            if (_pos.* + len.*) > avail {
                return cast,no_check(s64) -cast(s32) 3;
            }

            SIZE := mkvparser_ReadUInt(p_reader, _pos.*, len);

            if SIZE < 0 {
                return SIZE;
            }

            c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

            if SIZE == 0 {
                continue;
            }

            UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

            if SIZE == UNKNOWN_SIZE {
                return cast,no_check(s64) -cast(s32) 2;
            }

            if SEGMENT_STOP >= 0 && _pos.* + SIZE > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (SIZE), s64, s64);
            if SEGMENT_STOP >= 0 && _pos.* > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }
        }

        _cluster_size = _pos.* - PAYLOAD_POS;
        assert(_cluster_size >= 0);

        assignment_34: s64 = PAYLOAD_POS;
        ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_34;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (_cluster_size), s64, s64);
    if SEGMENT_STOP >= 0 && _pos.* > SEGMENT_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 2;
}

get_last :: (using segment: *Mkvparser_Segment) -> *Mkvparser_Cluster {
    if clusters == null || cluster_count <= 0 {
        return *eos;
    }

    IDX := cluster_count - 1;

    P_CLUSTER := cast,no_check(*Mkvparser_Cluster) (clusters[IDX]);
    assert(P_CLUSTER != null);

    return P_CLUSTER;
}

load_cluster :: (using segment: *Mkvparser_Segment, _pos: *s64, len: *s64) -> s64 {
    while true {
        RESULT := do_load_cluster(segment, _pos, len);

        if RESULT <= 1 {
            return RESULT;
        }
    }
    return unreachable_value(s64);
}

do_load_cluster :: (using segment: *Mkvparser_Segment, _pos: *s64, len: *s64) -> s64 {
    if pos < 0 {
        return do_load_cluster_unknown_size(segment, _pos, len);
    }

    total, avail: s64 = ---;

    status := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(p_reader, *total, *avail);

    if status < 0 {
        return status;
    }

    if total >= 0 && avail > total {
        return cast,no_check(s64) -cast(s32) 2;
    }

    SEGMENT_STOP := (ifx size < 0 then -1 else start + size);

    cluster_off: s64 = -1;
    _cluster_size: s64 = -1;

    while true {
        if total >= 0 && pos >= total {
            return 1;
        }

        if SEGMENT_STOP >= 0 && pos >= SEGMENT_STOP {
            return 1;
        }

        assignment_35: s64 = pos;
        ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_35;

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result := mkvparser_GetUIntLength(p_reader, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        IDPOS := _pos.*;
        ID := mkvparser_ReadID(p_reader, IDPOS, len);

        if ID < 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(p_reader, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        SIZE := mkvparser_ReadUInt(p_reader, _pos.*, len);

        if SIZE < 0 {
            return SIZE;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if SIZE == 0 {
            pos = _pos.*;
            continue;
        }

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

        if SEGMENT_STOP >= 0 && SIZE != UNKNOWN_SIZE && _pos.* + SIZE > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUES {
            if SIZE == UNKNOWN_SIZE {
                return cast,no_check(s64) -cast(s32) 2;
            }

            if p_cues == null {
                ELEMENT_SIZE := _pos.* - IDPOS + SIZE;

                p_cues =
                    cast,no_check(*Mkvparser_Cues) ((ifx true {
        cpp_transpiler_new_g30 :=
            cast,no_check(*Mkvparser_Cues) (cast(*Mkvparser_Cues) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Cues)
            ));
        init_111(cpp_transpiler_new_g30, segment, _pos.*, SIZE, IDPOS, ELEMENT_SIZE);
        cpp_transpiler_new_g30;
    })
    );
                if p_cues == null {
                    return -1;
                }
            }

            pos = _pos.* + SIZE;
            continue;
        }

        if ID != cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            if SIZE == UNKNOWN_SIZE {
                return cast,no_check(s64) -cast(s32) 2;
            }

            pos = _pos.* + SIZE;
            continue;
        }

        cluster_off = IDPOS - start;

        if SIZE != UNKNOWN_SIZE {
            _cluster_size = SIZE;
        }

        break;
    }

    if cluster_off < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    _pos_value: s64 = ---;
    len_value: s64 = ---;

    status = has_block_entries(segment, cluster_off, *_pos_value, *len_value);

    if status < 0 {
        assignment_36: s64 = _pos_value;
        ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_36;
        assignment_37: s64 = len_value;
        ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_37;

        return status;
    }

    IDX := cluster_count;

    if cluster_preload_count > 0 {
        if IDX >= cluster_size {
            return cast,no_check(s64) -cast(s32) 2;
        }

        P_CLUSTER_mkvparser_cluster := cast,no_check(*Mkvparser_Cluster) (clusters[IDX]);
        if P_CLUSTER_mkvparser_cluster == null || P_CLUSTER_mkvparser_cluster.index >= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        OFF := get_position(P_CLUSTER_mkvparser_cluster);
        if OFF < 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if OFF == cluster_off {
            if status == 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            if _cluster_size >= 0 {
                c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (_cluster_size), s64, s64);
            } else {
                ELEMENT_SIZE := get_element_size(P_CLUSTER_mkvparser_cluster);

                if ELEMENT_SIZE <= 0 {
                    return cast,no_check(s64) -cast(s32) 2;
                }

                assignment_38: s64 = (P_CLUSTER_mkvparser_cluster.element_start + ELEMENT_SIZE);
                ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_38;
            }

            P_CLUSTER_mkvparser_cluster.index = IDX;
            cluster_count += 1;
            cluster_preload_count -= 1;

            pos = _pos.*;
            if SEGMENT_STOP >= 0 && pos > SEGMENT_STOP {
                return cast,no_check(s64) -cast(s32) 2;
            }

            return 0;
        }
    }

    if status == 0 {
        if _cluster_size >= 0 {
            c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (_cluster_size), s64, s64);
        }

        if total >= 0 && _pos.* >= total {
            pos = total;
            return 1;
        }

        if SEGMENT_STOP >= 0 && _pos.* >= SEGMENT_STOP {
            pos = SEGMENT_STOP;
            return 1;
        }

        pos = _pos.*;
        return 2;
    }

    P_CLUSTER: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) create_3(segment, IDX, cluster_off);
    if P_CLUSTER == null {
        return -1;
    }

    if !append_cluster(segment, P_CLUSTER) {
        {
            cpp_transpiler_delete_g31 := cast,no_check(*Mkvparser_Cluster) (P_CLUSTER);
            if cpp_transpiler_delete_g31 != null {
                deinit_72(cpp_transpiler_delete_g31);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g31);
            }
        }
        return -1;
    }

    if _cluster_size >= 0 {
        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (_cluster_size), s64, s64);

        pos = _pos.*;

        if SEGMENT_STOP > 0 && pos > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        return 0;
    }

    p_unknown_size = cast,no_check(*Mkvparser_Cluster) (P_CLUSTER);
    pos = -_pos.*;

    return 0;
}

append_cluster :: (using segment: *Mkvparser_Segment, p_cluster: *Mkvparser_Cluster) -> bool {
    if p_cluster == null || p_cluster.index < 0 {
        return false;
    }

    COUNT := cluster_count + cluster_preload_count;

    _size := cast,no_check(*s64) (*cluster_size);
    IDX := p_cluster.index;

    if _size.* < COUNT || IDX != cluster_count {
        return false;
    }

    if COUNT >= _size.* {
        N := (ifx _size.* <= 0 then 2048 else 2 * _size.*);

        QQ :=
            cast,no_check(**Mkvparser_Cluster) (cast(**Mkvparser_Cluster) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) N,
                size_of(*Mkvparser_Cluster)
            ));
        if QQ == null {
            return false;
        }

        q := cast,no_check(**Mkvparser_Cluster) (QQ);
        p := cast,no_check(**Mkvparser_Cluster) (clusters);
        PP := cast,no_check(**Mkvparser_Cluster) ((p + COUNT));

        while p != PP {
            assignment_39: *Mkvparser_Cluster =
                cast,no_check(*Mkvparser_Cluster) ((c_transpiler_post_increment(*(p))).*);
            ((cast,no_check(**Mkvparser_Cluster) *((c_transpiler_post_increment(*(q))).*)).*) = assignment_39;
        }

        {
            cpp_transpiler_delete_g32 := cast,no_check(**Mkvparser_Cluster) (clusters);
            if cpp_transpiler_delete_g32 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g32);
            }
        }

        clusters = cast,no_check(**Mkvparser_Cluster) (QQ);
        assignment_40: s64 = N;
        ((cast,no_check(*s64) *(((cast(**s64) *(_size)).*).*)).*) = assignment_40;
    }

    if cluster_preload_count > 0 {
        P := cast,no_check(**Mkvparser_Cluster) ((clusters + cluster_count));
        if P.* == null || P.*.index >= 0 {
            return false;
        }

        q := cast,no_check(**Mkvparser_Cluster) ((P + cluster_preload_count));
        if q >= clusters + _size.* {
            return false;
        }

        while true {
            QQ := cast,no_check(**Mkvparser_Cluster) ((q - 1));
            if QQ.*.index >= 0 {
                return false;
            }

            q.* = cast,no_check(*Mkvparser_Cluster) (QQ.*);
            q = cast,no_check(**Mkvparser_Cluster) (QQ);

            if q == P {
                break;
            }
        }
    }

    clusters[IDX] = cast,no_check(*Mkvparser_Cluster) (p_cluster);
    cluster_count += 1;
    return true;
}

get_element_size :: (using cluster: *Mkvparser_Cluster) -> s64 {
    return element_size;
}

do_load_cluster_unknown_size :: (using segment: *Mkvparser_Segment, _pos: *s64, len: *s64) -> s64 {
    if pos >= 0 || p_unknown_size == null {
        return cast,no_check(s64) -cast(s32) 1;
    }

    STATUS := parse(p_unknown_size, _pos, len);

    if STATUS < 0 {
        return STATUS;
    }

    if STATUS == 0 {
        return 2;
    }

    START := p_unknown_size.element_start;
    SIZE := get_element_size(p_unknown_size);

    if SIZE < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    assignment_41: s64 = (START + SIZE);
    ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_41;
    pos = _pos.*;

    p_unknown_size = cast,no_check(*Mkvparser_Cluster) (cast(*Mkvparser_Cluster) null);

    return 2;
}

get_entry :: (
    using cluster: *Mkvparser_Cluster,
    cp: *Mkvparser_Cue_Point,
    tp: *Cue_Point_Track_Position
) -> *Block_Entry {
    assert(p_segment != null);
    TC := get_time_code(cp);

    if tp.block > 0 {
        BLOCK := tp.block;
        INDEX := BLOCK - 1;

        while INDEX >= entries_count {
            _pos: s64 = ---;
            len: s64 = ---;

            STATUS := parse(cluster, *_pos, *len);

            if STATUS < 0 {
                return cast(*Block_Entry) null;
            }

            if STATUS > 0 {
                return cast(*Block_Entry) null;
            }
        }

        P_ENTRY := cast,no_check(*Block_Entry) (entries[INDEX]);
        assert(P_ENTRY != null);
        assert(!eos(P_ENTRY));

        P_BLOCK := cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(P_ENTRY));
        assert(P_BLOCK != null);

        if get_track_number(P_BLOCK) == tp.track && get_time_code(P_BLOCK, cluster) == TC {
            return P_ENTRY;
        }
    }

    _index: s64 = 0;

    while true {
        if _index >= entries_count {
            _pos: s64 = ---;
            len: s64 = ---;

            STATUS := parse(cluster, *_pos, *len);

            if STATUS < 0 {
                return cast(*Block_Entry) null;
            }

            if STATUS > 0 {
                return cast(*Block_Entry) null;
            }

            assert(entries != null);
            assert(_index < entries_count);
        }

        P_ENTRY := cast,no_check(*Block_Entry) (entries[_index]);
        assert(P_ENTRY != null);
        assert(!eos(P_ENTRY));

        P_BLOCK := cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(P_ENTRY));
        assert(P_BLOCK != null);

        if get_track_number(P_BLOCK) != tp.track {
            _index += 1;
            continue;
        }

        TC_value := get_time_code(P_BLOCK, cluster);

        if TC_value < TC {
            _index += 1;
            continue;
        }

        if TC_value > TC {
            return cast(*Block_Entry) null;
        }

        P_TRACKS := cast,no_check(*Mkvparser_Tracks) (get_tracks(p_segment));
        assert(P_TRACKS != null);

        TN := tp.track;
        P_TRACK := cast,no_check(*Mkvparser_Track) (get_track_by_number(P_TRACKS, TN));

        if P_TRACK == null {
            return cast(*Block_Entry) null;
        }

        TYPE := get_type(P_TRACK);

        if TYPE == 2 {
            return P_ENTRY;
        }

        if TYPE != 1 {
            return cast(*Block_Entry) null;
        }

        if !is_key(P_BLOCK) {
            return cast(*Block_Entry) null;
        }

        return P_ENTRY;
    }
    return unreachable_value(*Block_Entry);
}

get_type :: (using track: *Mkvparser_Track) -> s64 {
    return info.type;
}

get_track_by_number :: (using tracks: *Mkvparser_Tracks, tn: s64) -> *Mkvparser_Track {
    if tn < 0 {
        return cast(*Mkvparser_Track) null;
    }

    i := cast,no_check(**Mkvparser_Track) (track_entries);
    J := cast,no_check(**Mkvparser_Track) (track_entries_end);

    while i != J {
        P_TRACK := cast,no_check(*Mkvparser_Track) ((c_transpiler_post_increment(*(i))).*);

        if P_TRACK == null {
            continue;
        }

        if tn == get_number(P_TRACK) {
            return P_TRACK;
        }
    }

    return cast(*Mkvparser_Track) null;
}

get_tracks :: (using segment: *Mkvparser_Segment) -> *Mkvparser_Tracks {
    return p_tracks;
}

get_time_code :: (using cue_point: *Mkvparser_Cue_Point) -> s64 {
    return timecode;
}

get_block :: (
    using segment: *Mkvparser_Segment,
    cp: *Mkvparser_Cue_Point,
    tp: *Cue_Point_Track_Position
) -> *Block_Entry {
    II := cast,no_check(**Mkvparser_Cluster) (clusters);
    i := cast,no_check(**Mkvparser_Cluster) (II);

    COUNT := cluster_count + cluster_preload_count;

    JJ := cast,no_check(**Mkvparser_Cluster) ((II + COUNT));
    j := cast,no_check(**Mkvparser_Cluster) (JJ);

    while i < j {
        K := cast,no_check(**Mkvparser_Cluster) ((i + (j - i) / 2));
        assert(K < JJ);

        P_CLUSTER_mkvparser_cluster := cast,no_check(*Mkvparser_Cluster) (K.*);
        assert(P_CLUSTER_mkvparser_cluster != null);

        POS := get_position(P_CLUSTER_mkvparser_cluster);
        assert(POS >= 0);

        if POS < tp.pos {
            i = cast,no_check(**Mkvparser_Cluster) ((K + 1));
        } else if POS > tp.pos {
            j = cast,no_check(**Mkvparser_Cluster) (K);
        } else {
            return get_entry(P_CLUSTER_mkvparser_cluster, cp, tp);
        }
    }

    assert(i == j);

    P_CLUSTER: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) create_3(segment, -1, tp.pos);
    if P_CLUSTER == null {
        return cast(*Block_Entry) null;
    }

    IDX := i - clusters;

    if !preload_cluster(segment, P_CLUSTER, IDX) {
        {
            cpp_transpiler_delete_g33 := cast,no_check(*Mkvparser_Cluster) (P_CLUSTER);
            if cpp_transpiler_delete_g33 != null {
                deinit_72(cpp_transpiler_delete_g33);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g33);
            }
        }
        return cast(*Block_Entry) null;
    }
    assert(clusters != null);
    assert(cluster_preload_count > 0);
    assert(clusters[IDX] == P_CLUSTER);

    return get_entry(P_CLUSTER, cp, tp);
}

find :: (using cue_point: *Mkvparser_Cue_Point, p_track: *Mkvparser_Track) -> *Cue_Point_Track_Position {
    if p_track == null {
        return cast(*Cue_Point_Track_Position) null;
    }

    N := get_number(p_track);

    i := cast,no_check(*Cue_Point_Track_Position) (track_positions);
    J := cast,no_check(*Cue_Point_Track_Position) ((i + track_positions_count));

    while i != J {
        p := cast,no_check(*Cue_Point_Track_Position) (c_transpiler_post_increment(*(i)));

        if p.track == N {
            return (cast(**Cue_Point_Track_Position) *(p)).*;
        }
    }

    return cast(*Cue_Point_Track_Position) null;
}

get_time :: (using cue_point: *Mkvparser_Cue_Point, p_segment: *Mkvparser_Segment) -> s64 {
    assert(p_segment != null);
    assert(timecode >= 0);

    P_INFO := cast,no_check(*Mkvparser_Segment_Info) (get_info(p_segment));
    assert(P_INFO != null);

    SCALE := get_time_code_scale(P_INFO);
    assert(SCALE >= 1);

    TIME := SCALE * timecode;

    return TIME;
}

parse :: (using track_position: *Cue_Point_Track_Position, p_reader: *I_Mkv_Reader, start: s64, size: s64) -> bool {
    STOP := start + size;
    _pos := start;

    track = -1;
    pos = -1;
    block = 1;

    while _pos < STOP {
        len: s64 = ---;

        ID := mkvparser_ReadID(p_reader, _pos, *len);
        if ID < 0 || (_pos + len) > STOP {
            return false;
        }

        _pos += len;

        SIZE := mkvparser_ReadUInt(p_reader, _pos, *len);
        if SIZE < 0 || (_pos + len) > STOP {
            return false;
        }

        _pos += len;
        if _pos + SIZE > STOP {
            return false;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUE_TRACK {
            track = mkvparser_UnserializeUInt(p_reader, _pos, SIZE);
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUE_CLUSTER_POSITION {
            pos = mkvparser_UnserializeUInt(p_reader, _pos, SIZE);
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUE_BLOCK_NUMBER {
            block = mkvparser_UnserializeUInt(p_reader, _pos, SIZE);
        }

        _pos += SIZE;
    }

    if pos < 0 || track <= 0 || block < 0 || block > 9223372036854775807 {
        return false;
    }

    return true;
}

load :: (using cue_point: *Mkvparser_Cue_Point, p_reader: *I_Mkv_Reader) -> bool {
    if timecode >= 0 {
        return true;
    }

    assert(track_positions == null);
    assert(track_positions_count == 0);

    pos_value := -timecode;
    ELEMENT_START := pos_value;

    stop: s64 = ---;

    {
        len: s64 = ---;

        ID := mkvparser_ReadID(p_reader, pos_value, *len);
        if ID != cast,no_check(s64) LIBWEBM_K_MKV_CUE_POINT {
            return false;
        }

        pos_value += len;

        SIZE := mkvparser_ReadUInt(p_reader, pos_value, *len);
        assert(SIZE >= 0);

        pos_value += len;

        stop = pos_value + SIZE;
    }

    ELEMENT_SIZE := stop - ELEMENT_START;

    pos := pos_value;

    _track_positions_count: u64 = 0;
    while pos < stop {
        len: s64 = ---;

        ID := mkvparser_ReadID(p_reader, pos, *len);
        if ID < 0 || (pos + len) > stop {
            return false;
        }

        pos += len;

        SIZE := mkvparser_ReadUInt(p_reader, pos, *len);
        if SIZE < 0 || (pos + len) > stop {
            return false;
        }

        pos += len;
        if pos + SIZE > stop {
            return false;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUE_TIME {
            timecode = mkvparser_UnserializeUInt(p_reader, pos, SIZE);
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUE_TRACK_POSITIONS {
            _track_positions_count += 1;
            if _track_positions_count > U32_MAX {
                return -cast(s32) 1 != 0;
            }
        }

        pos += SIZE;
    }

    track_positions_count = _track_positions_count;

    if timecode < 0 || track_positions_count <= 0 {
        return false;
    }

    track_positions =
        cast,no_check(*Cue_Point_Track_Position) (cast(*Cue_Point_Track_Position) cpp_transpiler_allocate_array_raw(
            track_positions_count,
            size_of(Cue_Point_Track_Position)
        ));
    if track_positions == null {
        return false;
    }

    p := cast,no_check(*Cue_Point_Track_Position) (track_positions);
    pos = pos_value;

    while pos < stop {
        len: s64 = ---;

        ID := mkvparser_ReadID(p_reader, pos, *len);
        if ID < 0 || (pos + len) > stop {
            return false;
        }

        pos += len;

        SIZE := mkvparser_ReadUInt(p_reader, pos, *len);
        assert(SIZE >= 0);
        assert((pos + len) <= stop);

        pos += len;
        assert(pos + SIZE <= stop);

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUE_TRACK_POSITIONS {
            tp := cast,no_check(*Cue_Point_Track_Position) (c_transpiler_post_increment(*(p)));
            if !parse(tp, p_reader, pos, SIZE) {
                return false;
            }
        }

        pos += SIZE;
        if pos > stop {
            return false;
        }
    }

    assert(cast,no_check(u64) (p - track_positions) == track_positions_count);

    element_start = ELEMENT_START;
    element_size = ELEMENT_SIZE;

    return true;
}

init_113 :: (using cues: *Mkvparser_Cues) -> bool {
    if cue_points != null {
        return true;
    }

    if count != 0 || preload_count != 0 {
        return false;
    }

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    STOP := start + size;
    _pos := start;

    cue_points_size: s64 = 0;

    while _pos < STOP {
        IDPOS := _pos;

        len: s64 = ---;

        ID := mkvparser_ReadID(P_READER, _pos, *len);
        if ID < 0 || (_pos + len) > STOP {
            return false;
        }

        _pos += len;

        SIZE := mkvparser_ReadUInt(P_READER, _pos, *len);
        if SIZE < 0 || (_pos + len) > STOP {
            return false;
        }

        _pos += len;
        if _pos + SIZE > STOP {
            return false;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUE_POINT {
            if !preload_cue_point(cues, *cue_points_size, IDPOS) {
                return false;
            }
        }

        _pos += SIZE;
    }
    return true;
}

preload_cue_point :: (using cues: *Mkvparser_Cues, cue_points_size: *s64, _pos: s64) -> bool {
    if count != 0 {
        return false;
    }

    if preload_count >= cue_points_size.* {
        N := (ifx cue_points_size.* <= 0 then 2048 else 2 * cue_points_size.*);

        QQ :=
            cast,no_check(**Mkvparser_Cue_Point) (cast(**Mkvparser_Cue_Point) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) N,
                size_of(*Mkvparser_Cue_Point)
            ));
        if QQ == null {
            return false;
        }

        q := cast,no_check(**Mkvparser_Cue_Point) (QQ);

        p := cast,no_check(**Mkvparser_Cue_Point) (cue_points);
        PP := cast,no_check(**Mkvparser_Cue_Point) ((p + preload_count));

        while p != PP {
            assignment_42: *Mkvparser_Cue_Point =
                cast,no_check(*Mkvparser_Cue_Point) ((c_transpiler_post_increment(*(p))).*);
            ((cast,no_check(**Mkvparser_Cue_Point) *((c_transpiler_post_increment(*(q))).*)).*) = assignment_42;
        }

        {
            cpp_transpiler_delete_g34 := cast,no_check(**Mkvparser_Cue_Point) (cue_points);
            if cpp_transpiler_delete_g34 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g34);
            }
        }

        cue_points = cast,no_check(**Mkvparser_Cue_Point) (QQ);
        assignment_43: s64 = N;
        ((cast,no_check(*s64) *(((cast(**s64) *(cue_points_size)).*).*)).*) = assignment_43;
    }

    P_CP :=
        cast,no_check(*Mkvparser_Cue_Point) (cast(*Mkvparser_Cue_Point) cpp_transpiler_allocate_raw(
            size_of(Mkvparser_Cue_Point)
        ));
    init_109(P_CP, preload_count, _pos);
    if P_CP == null {
        return false;
    }

    cue_points[preload_count] = cast,no_check(*Mkvparser_Cue_Point) (P_CP);
    preload_count += 1;
    return true;
}

parse_headers :: (using segment: *Mkvparser_Segment) -> s64 {
    total, available: s64 = ---;

    STATUS_value := cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(p_reader, *total, *available);

    if STATUS_value < 0 {
        return cast,no_check(s64) STATUS_value;
    }

    if total > 0 && available > total {
        return cast,no_check(s64) -cast(s32) 2;
    }

    SEGMENT_STOP := (ifx size < 0 then -1 else start + size);

    if SEGMENT_STOP >= 0 && total >= 0 && SEGMENT_STOP > total || SEGMENT_STOP >= 0 && pos > SEGMENT_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    while true {
        if total >= 0 && pos >= total {
            break;
        }

        if SEGMENT_STOP >= 0 && pos >= SEGMENT_STOP {
            break;
        }

        _pos := pos;
        ELEMENT_START := _pos;

        rollover_check := (cast,no_check(u64) _pos) + 1;
        if rollover_check > 9223372036854775807 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos + 1) > available {
            return _pos + 1;
        }

        len: s64 = ---;
        result := mkvparser_GetUIntLength(p_reader, _pos, *len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return _pos + 1;
        }

        if SEGMENT_STOP >= 0 && (_pos + len) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos + len) > available {
            return _pos + len;
        }

        IDPOS := _pos;
        ID := mkvparser_ReadID(p_reader, IDPOS, *len);

        if ID < 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            break;
        }

        _pos += len;

        if (_pos + 1) > available {
            return _pos + 1;
        }

        result = mkvparser_GetUIntLength(p_reader, _pos, *len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return _pos + 1;
        }

        if SEGMENT_STOP >= 0 && (_pos + len) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos + len) > available {
            return _pos + len;
        }

        SIZE := mkvparser_ReadUInt(p_reader, _pos, *len);

        if SIZE < 0 || len < 1 || len > 8 {
            return SIZE;
        }

        _pos += len;

        rollover_check = (cast,no_check(u64) _pos) + cast,no_check(u64) SIZE;
        if rollover_check > 9223372036854775807 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        ELEMENT_SIZE := SIZE + _pos - ELEMENT_START;

        if SEGMENT_STOP >= 0 && _pos + SIZE > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if _pos + SIZE > available {
            return _pos + SIZE;
        }

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_INFO {
            if p_info != null {
                return cast,no_check(s64) -cast(s32) 2;
            }

            p_info =
                cast,no_check(*Mkvparser_Segment_Info) ((ifx true {
        cpp_transpiler_new_g35 :=
            cast,no_check(*Mkvparser_Segment_Info) (cast(*Mkvparser_Segment_Info) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Segment_Info)
            ));
        init_105(cpp_transpiler_new_g35, segment, _pos, SIZE, ELEMENT_START, ELEMENT_SIZE);
        cpp_transpiler_new_g35;
    })
    );

            if p_info == null {
                return -1;
            }

            STATUS := parse(p_info);

            if STATUS != 0 {
                return STATUS;
            }
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_TRACKS {
            if p_tracks != null {
                return cast,no_check(s64) -cast(s32) 2;
            }

            p_tracks =
                cast,no_check(*Mkvparser_Tracks) ((ifx true {
        cpp_transpiler_new_g36 :=
            cast,no_check(*Mkvparser_Tracks) (cast(*Mkvparser_Tracks) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Tracks)
            ));
        init_84(cpp_transpiler_new_g36, segment, _pos, SIZE, ELEMENT_START, ELEMENT_SIZE);
        cpp_transpiler_new_g36;
    })
    );

            if p_tracks == null {
                return -1;
            }

            STATUS := parse(p_tracks);

            if STATUS != 0 {
                return STATUS;
            }
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_CUES {
            if p_cues == null {
                p_cues =
                    cast,no_check(*Mkvparser_Cues) ((ifx true {
        cpp_transpiler_new_g37 :=
            cast,no_check(*Mkvparser_Cues) (cast(*Mkvparser_Cues) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Cues)
            ));
        init_111(cpp_transpiler_new_g37, segment, _pos, SIZE, ELEMENT_START, ELEMENT_SIZE);
        cpp_transpiler_new_g37;
    })
    );

                if p_cues == null {
                    return -1;
                }
            }
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_SEEK_HEAD {
            if p_seek_head == null {
                p_seek_head =
                    cast,no_check(*Mkvparser_Seek_Head) ((ifx true {
        cpp_transpiler_new_g38 :=
            cast,no_check(*Mkvparser_Seek_Head) (cast(*Mkvparser_Seek_Head) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Seek_Head)
            ));
        init_107(cpp_transpiler_new_g38, segment, _pos, SIZE, ELEMENT_START, ELEMENT_SIZE);
        cpp_transpiler_new_g38;
    })
    );

                if p_seek_head == null {
                    return -1;
                }

                STATUS := parse(p_seek_head);

                if STATUS != 0 {
                    return STATUS;
                }
            }
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_CHAPTERS {
            if p_chapters == null {
                p_chapters =
                    cast,no_check(*Mkvparser_Chapters) ((ifx true {
        cpp_transpiler_new_g39 :=
            cast,no_check(*Mkvparser_Chapters) (cast(*Mkvparser_Chapters) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Chapters)
            ));
        init_86(cpp_transpiler_new_g39, segment, _pos, SIZE, ELEMENT_START, ELEMENT_SIZE);
        cpp_transpiler_new_g39;
    })
    );

                if p_chapters == null {
                    return -1;
                }

                STATUS := parse(p_chapters);

                if STATUS != 0 {
                    return STATUS;
                }
            }
        } else if ID == cast,no_check(s64) LIBWEBM_K_MKV_TAGS {
            if p_tags == null {
                p_tags =
                    cast,no_check(*Mkvparser_Tags) ((ifx true {
        cpp_transpiler_new_g40 :=
            cast,no_check(*Mkvparser_Tags) (cast(*Mkvparser_Tags) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Tags)
            ));
        init_97(cpp_transpiler_new_g40, segment, _pos, SIZE, ELEMENT_START, ELEMENT_SIZE);
        cpp_transpiler_new_g40;
    })
    );

                if p_tags == null {
                    return -1;
                }

                STATUS := parse(p_tags);

                if STATUS != 0 {
                    return STATUS;
                }
            }
        }

        pos = _pos + SIZE;
    }

    if SEGMENT_STOP >= 0 && pos > SEGMENT_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if p_info == null {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if p_tracks == null {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

parse :: (using _tags: *Mkvparser_Tags) -> s64 {
    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    pos := start;
    STOP := pos + size;

    while pos < STOP {
        id, _size: s64 = ---;

        status := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *_size);

        if status < 0 {
            return status;
        }

        if _size == 0 {
            continue;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_TAG {
            status = parse_tag(_tags, pos, _size);

            if status < 0 {
                return status;
            }
        }

        pos += _size;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

mkvparser_ParseElementHeader :: (p_reader: *I_Mkv_Reader, pos: *s64, stop: s64, id: *s64, size: *s64) -> s64 {
    if stop >= 0 && pos.* >= stop {
        return cast,no_check(s64) -cast(s32) 2;
    }

    len: s64 = ---;

    assignment_44: s64 = mkvparser_ReadID(p_reader, pos.*, *len);
    ((cast,no_check(*s64) *(((cast(**s64) *(id)).*).*)).*) = assignment_44;

    if id.* < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len), s64, s64);

    if stop >= 0 && pos.* >= stop {
        return cast,no_check(s64) -cast(s32) 2;
    }

    assignment_45: s64 = mkvparser_ReadUInt(p_reader, pos.*, *len);
    ((cast,no_check(*s64) *(((cast(**s64) *(size)).*).*)).*) = assignment_45;

    if size.* < 0 || len < 1 || len > 8 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    ROLLOVER_CHECK := (cast,no_check(u64) pos.*) + cast,no_check(u64) len;
    if ROLLOVER_CHECK > 9223372036854775807 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len), s64, s64);

    if stop >= 0 && pos.* > stop {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

parse_tag :: (using _tags: *Mkvparser_Tags, pos: s64, _size: s64) -> s64 {
    if !expand_tags_array(_tags) {
        return -1;
    }

    t := cast,no_check(*Tags_Tag) (*tags[c_transpiler_post_increment(*(tags_count))]);
    init_103(t);

    return parse(t, p_segment.p_reader, pos, _size);
}

parse :: (using tag: *Tags_Tag, p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    STOP := pos + size;

    while pos < STOP {
        id, size_value: s64 = ---;

        status := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);

        if status < 0 {
            return status;
        }

        if size_value == 0 {
            continue;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_SIMPLE_TAG {
            status = parse_simple_tag(tag, p_reader, pos, size_value);

            if status < 0 {
                return status;
            }
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }
    return 0;
}

parse_simple_tag :: (using tag: *Tags_Tag, p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    if !expand_simple_tags_array(tag) {
        return -1;
    }

    st := cast,no_check(*Tags_Simple_Tag) (*simple_tags[c_transpiler_post_increment(*(simple_tags_count))]);
    init_100(st);

    return parse(st, p_reader, pos, size);
}

parse :: (using simple_tag: *Tags_Simple_Tag, p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    STOP := pos + size;

    while pos < STOP {
        id, size_value: s64 = ---;

        status := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);

        if status < 0 {
            return status;
        }

        if size_value == 0 {
            continue;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_TAG_NAME {
            status = mkvparser_UnserializeString(p_reader, pos, size_value, *tag_name);

            if status != 0 {
                return status;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_TAG_STRING {
            status = mkvparser_UnserializeString(p_reader, pos, size_value, *tag_string);

            if status != 0 {
                return status;
            }
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }
    return 0;
}

mkvparser_UnserializeString :: (p_reader: *I_Mkv_Reader, pos: s64, size: s64, str: **s8) -> s64 {
    {
        cpp_transpiler_delete_g41 := cast,no_check(*s8) ((cast(**s8) str).*);
        if cpp_transpiler_delete_g41 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g41);
        }
    }
    (cast(**s8) str).* = cast,no_check(*s8) (cast(*s8) null);

    if size >= 9223372036854775807 || size < 0 || size > cast,no_check(s64) ((cast,no_check(s32) ((20 * 1000))) * 1000) {
        return cast,no_check(s64) -cast(s32) 2;
    }

    REQUIRED_SIZE := size + 1;

    assignment_46: *s8 = cast,no_check(*s8) mkvparser_safe_array_alloc_2(1, cast,no_check(u64) REQUIRED_SIZE);
    ((cast,no_check(**s8) *((cast(**s8) str).*)).*) = assignment_46;
    if (cast(**s8) str).* == null {
        return cast,no_check(s64) -cast(s32) 2;
    }

    BUF := cast,no_check(*u8) (cast(*u8) ((cast(**s8) str).*));

    STATUS := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, size, BUF);

    if STATUS != 0 {
        {
            cpp_transpiler_delete_g42 := cast,no_check(*s8) ((cast(**s8) str).*);
            if cpp_transpiler_delete_g42 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g42);
            }
        }
        (cast(**s8) str).* = cast,no_check(*s8) (cast(*s8) null);

        return STATUS;
    }

    ((cast(**s8) str).*)[REQUIRED_SIZE - 1] = 0;
    return 0;
}

init_100 :: (using simple_tag: *Tags_Simple_Tag) {
    tag_name = cast,no_check(*s8) (cast(*s8) null);
    tag_string = cast,no_check(*s8) (cast(*s8) null);
}

expand_simple_tags_array :: (using tag: *Tags_Tag) -> bool {
    if simple_tags_size > simple_tags_count {
        return true;
    }

    SIZE := (ifx simple_tags_size == 0 then 1 else 2 * simple_tags_size);

    DISPLAYS :=
        cast,no_check(*Tags_Simple_Tag) (cast(*Tags_Simple_Tag) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) SIZE,
            size_of(Tags_Simple_Tag)
        ));
    {
        cpp_transpiler_array_index_g43: u64 = 0;
        while cpp_transpiler_array_index_g43 < cpp_transpiler_array_count(cast(*void) DISPLAYS) {
            init_98(DISPLAYS + cpp_transpiler_array_index_g43);
            cpp_transpiler_array_index_g43 += 1;
        }
    }

    if DISPLAYS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < simple_tags_count {
            shallow_copy(*simple_tags[idx], *DISPLAYS[idx]);
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g44 := cast,no_check(*Tags_Simple_Tag) (simple_tags);
        if cpp_transpiler_delete_g44 != null {
            cpp_transpiler_delete_index_g45 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g44);
            while cpp_transpiler_delete_index_g45 > 0 {
                cpp_transpiler_delete_index_g45 -= 1;
                deinit_66(cpp_transpiler_delete_g44 + cpp_transpiler_delete_index_g45);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g44);
        }
    }
    simple_tags = cast,no_check(*Tags_Simple_Tag) (DISPLAYS);

    simple_tags_size = SIZE;
    return true;
}

shallow_copy :: (using simple_tag: *Tags_Simple_Tag, rhs: *Tags_Simple_Tag) {
    rhs.tag_name = cast,no_check(*s8) (tag_name);
    rhs.tag_string = cast,no_check(*s8) (tag_string);
}

init_103 :: (using tag: *Tags_Tag) {
    simple_tags = cast,no_check(*Tags_Simple_Tag) (cast(*Tags_Simple_Tag) null);
    simple_tags_size = 0;
    simple_tags_count = 0;
}

expand_tags_array :: (using _tags: *Mkvparser_Tags) -> bool {
    if tags_size > tags_count {
        return true;
    }

    SIZE := (ifx tags_size == 0 then 1 else 2 * tags_size);

    TAGS :=
        cast,no_check(*Tags_Tag) (cast(*Tags_Tag) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) SIZE,
            size_of(Tags_Tag)
        ));
    {
        cpp_transpiler_array_index_g46: u64 = 0;
        while cpp_transpiler_array_index_g46 < cpp_transpiler_array_count(cast(*void) TAGS) {
            init_101(TAGS + cpp_transpiler_array_index_g46);
            cpp_transpiler_array_index_g46 += 1;
        }
    }

    if TAGS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < tags_count {
            shallow_copy(*tags[idx], *TAGS[idx]);
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g47 := cast,no_check(*Tags_Tag) (tags);
        if cpp_transpiler_delete_g47 != null {
            cpp_transpiler_delete_index_g48 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g47);
            while cpp_transpiler_delete_index_g48 > 0 {
                cpp_transpiler_delete_index_g48 -= 1;
                deinit_67(cpp_transpiler_delete_g47 + cpp_transpiler_delete_index_g48);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g47);
        }
    }
    tags = cast,no_check(*Tags_Tag) (TAGS);

    tags_size = SIZE;
    return true;
}

shallow_copy :: (using tag: *Tags_Tag, rhs: *Tags_Tag) {
    rhs.simple_tags = cast,no_check(*Tags_Simple_Tag) (simple_tags);
    rhs.simple_tags_size = simple_tags_size;
    rhs.simple_tags_count = simple_tags_count;
}

parse :: (using chapters: *Mkvparser_Chapters) -> s64 {
    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    pos := start;
    STOP := pos + size;

    while pos < STOP {
        id, _size: s64 = ---;

        status := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *_size);

        if status < 0 {
            return status;
        }

        if _size == 0 {
            continue;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_EDITION_ENTRY {
            status = parse_edition(chapters, pos, _size);

            if status < 0 {
                return status;
            }
        }

        pos += _size;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }
    return 0;
}

parse_edition :: (using chapters: *Mkvparser_Chapters, pos: s64, _size: s64) -> s64 {
    if !expand_editions_array(chapters) {
        return -1;
    }

    e := cast,no_check(*Chapters_Edition) (*editions[c_transpiler_post_increment(*(editions_count))]);
    init_95(e);

    return parse(e, p_segment.p_reader, pos, _size);
}

parse :: (using edition: *Chapters_Edition, p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    STOP := pos + size;

    while pos < STOP {
        id, size_value: s64 = ---;

        status := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);

        if status < 0 {
            return status;
        }

        if size_value == 0 {
            continue;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAPTER_ATOM {
            status = parse_atom(edition, p_reader, pos, size_value);

            if status < 0 {
                return status;
            }
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }
    return 0;
}

parse_atom :: (using edition: *Chapters_Edition, p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    if !expand_atoms_array(edition) {
        return -1;
    }

    a := cast,no_check(*Chapters_Atom) (*atoms[c_transpiler_post_increment(*(atoms_count))]);
    init_92(a);

    return parse(a, p_reader, pos, size);
}

parse :: (using atom: *Chapters_Atom, p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    STOP := pos + size;

    while pos < STOP {
        id, size_value: s64 = ---;

        status := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);

        if status < 0 {
            return status;
        }

        if size_value == 0 {
            continue;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAPTER_DISPLAY {
            status = parse_display(atom, p_reader, pos, size_value);

            if status < 0 {
                return status;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAPTER_STRING_UID {
            status = mkvparser_UnserializeString(p_reader, pos, size_value, *string_uid);

            if status < 0 {
                return status;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAPTER_UID {
            val: s64 = ---;
            status = mkvparser_UnserializeInt(p_reader, pos, size_value, *val);

            if status < 0 {
                return status;
            }

            uid = cast,no_check(u64) val;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAPTER_TIME_START {
            VAL := mkvparser_UnserializeUInt(p_reader, pos, size_value);

            if VAL < 0 {
                return VAL;
            }

            start_timecode = VAL;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAPTER_TIME_END {
            VAL := mkvparser_UnserializeUInt(p_reader, pos, size_value);

            if VAL < 0 {
                return VAL;
            }

            stop_timecode = VAL;
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }
    return 0;
}

parse_display :: (using atom: *Chapters_Atom, p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    if !expand_displays_array(atom) {
        return -1;
    }

    d := cast,no_check(*Chapters_Display) (*displays[c_transpiler_post_increment(*(displays_count))]);
    init_89(d);

    return parse(d, p_reader, pos, size);
}

parse :: (using display: *Chapters_Display, p_reader: *I_Mkv_Reader, pos: s64, size: s64) -> s64 {
    STOP := pos + size;

    while pos < STOP {
        id, size_value: s64 = ---;

        status := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);

        if status < 0 {
            return status;
        }

        if size_value == 0 {
            continue;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAP_STRING {
            status = mkvparser_UnserializeString(p_reader, pos, size_value, *string_);

            if status != 0 {
                return status;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAP_LANGUAGE {
            status = mkvparser_UnserializeString(p_reader, pos, size_value, *language);

            if status != 0 {
                return status;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CHAP_COUNTRY {
            status = mkvparser_UnserializeString(p_reader, pos, size_value, *country);

            if status != 0 {
                return status;
            }
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }
    return 0;
}

init_89 :: (using display: *Chapters_Display) {
    string_ = cast,no_check(*s8) (cast(*s8) null);
    language = cast,no_check(*s8) (cast(*s8) null);
    country = cast,no_check(*s8) (cast(*s8) null);
}

expand_displays_array :: (using atom: *Chapters_Atom) -> bool {
    if displays_size > displays_count {
        return true;
    }

    SIZE := (ifx displays_size == 0 then 1 else 2 * displays_size);

    DISPLAYS :=
        cast,no_check(*Chapters_Display) (cast(*Chapters_Display) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) SIZE,
            size_of(Chapters_Display)
        ));
    {
        cpp_transpiler_array_index_g49: u64 = 0;
        while cpp_transpiler_array_index_g49 < cpp_transpiler_array_count(cast(*void) DISPLAYS) {
            init_87(DISPLAYS + cpp_transpiler_array_index_g49);
            cpp_transpiler_array_index_g49 += 1;
        }
    }

    if DISPLAYS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < displays_count {
            shallow_copy(*displays[idx], *DISPLAYS[idx]);
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g50 := cast,no_check(*Chapters_Display) (displays);
        if cpp_transpiler_delete_g50 != null {
            cpp_transpiler_delete_index_g51 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g50);
            while cpp_transpiler_delete_index_g51 > 0 {
                cpp_transpiler_delete_index_g51 -= 1;
                deinit_62(cpp_transpiler_delete_g50 + cpp_transpiler_delete_index_g51);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g50);
        }
    }
    displays = cast,no_check(*Chapters_Display) (DISPLAYS);

    displays_size = SIZE;
    return true;
}

shallow_copy :: (using display: *Chapters_Display, rhs: *Chapters_Display) {
    rhs.string_ = cast,no_check(*s8) (string_);
    rhs.language = cast,no_check(*s8) (language);
    rhs.country = cast,no_check(*s8) (country);
}

init_92 :: (using atom: *Chapters_Atom) {
    string_uid = cast,no_check(*s8) (cast(*s8) null);
    uid = 0;
    start_timecode = -1;
    stop_timecode = -1;

    displays = cast,no_check(*Chapters_Display) (cast(*Chapters_Display) null);
    displays_size = 0;
    displays_count = 0;
}

expand_atoms_array :: (using edition: *Chapters_Edition) -> bool {
    if atoms_size > atoms_count {
        return true;
    }

    SIZE := (ifx atoms_size == 0 then 1 else 2 * atoms_size);

    ATOMS :=
        cast,no_check(*Chapters_Atom) (cast(*Chapters_Atom) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) SIZE,
            size_of(Chapters_Atom)
        ));
    {
        cpp_transpiler_array_index_g52: u64 = 0;
        while cpp_transpiler_array_index_g52 < cpp_transpiler_array_count(cast(*void) ATOMS) {
            init_90(ATOMS + cpp_transpiler_array_index_g52);
            cpp_transpiler_array_index_g52 += 1;
        }
    }

    if ATOMS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < atoms_count {
            shallow_copy(*atoms[idx], *ATOMS[idx]);
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g53 := cast,no_check(*Chapters_Atom) (atoms);
        if cpp_transpiler_delete_g53 != null {
            cpp_transpiler_delete_index_g54 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g53);
            while cpp_transpiler_delete_index_g54 > 0 {
                cpp_transpiler_delete_index_g54 -= 1;
                deinit_63(cpp_transpiler_delete_g53 + cpp_transpiler_delete_index_g54);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g53);
        }
    }
    atoms = cast,no_check(*Chapters_Atom) (ATOMS);

    atoms_size = SIZE;
    return true;
}

shallow_copy :: (using atom: *Chapters_Atom, rhs: *Chapters_Atom) {
    rhs.string_uid = cast,no_check(*s8) (string_uid);
    rhs.uid = uid;
    rhs.start_timecode = start_timecode;
    rhs.stop_timecode = stop_timecode;

    rhs.displays = cast,no_check(*Chapters_Display) (displays);
    rhs.displays_size = displays_size;
    rhs.displays_count = displays_count;
}

init_95 :: (using edition: *Chapters_Edition) {
    atoms = cast,no_check(*Chapters_Atom) (cast(*Chapters_Atom) null);
    atoms_size = 0;
    atoms_count = 0;
}

expand_editions_array :: (using chapters: *Mkvparser_Chapters) -> bool {
    if editions_size > editions_count {
        return true;
    }

    SIZE := (ifx editions_size == 0 then 1 else 2 * editions_size);

    EDITIONS :=
        cast,no_check(*Chapters_Edition) (cast(*Chapters_Edition) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) SIZE,
            size_of(Chapters_Edition)
        ));
    {
        cpp_transpiler_array_index_g55: u64 = 0;
        while cpp_transpiler_array_index_g55 < cpp_transpiler_array_count(cast(*void) EDITIONS) {
            init_93(EDITIONS + cpp_transpiler_array_index_g55);
            cpp_transpiler_array_index_g55 += 1;
        }
    }

    if EDITIONS == null {
        return false;
    }

    {
        idx: s32 = 0;
        while idx < editions_count {
            shallow_copy(*editions[idx], *EDITIONS[idx]);
            idx += 1;
        }
    }

    {
        cpp_transpiler_delete_g56 := cast,no_check(*Chapters_Edition) (editions);
        if cpp_transpiler_delete_g56 != null {
            cpp_transpiler_delete_index_g57 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g56);
            while cpp_transpiler_delete_index_g57 > 0 {
                cpp_transpiler_delete_index_g57 -= 1;
                deinit_64(cpp_transpiler_delete_g56 + cpp_transpiler_delete_index_g57);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g56);
        }
    }
    editions = cast,no_check(*Chapters_Edition) (EDITIONS);

    editions_size = SIZE;
    return true;
}

shallow_copy :: (using edition: *Chapters_Edition, rhs: *Chapters_Edition) {
    rhs.atoms = cast,no_check(*Chapters_Atom) (atoms);
    rhs.atoms_size = atoms_size;
    rhs.atoms_count = atoms_count;
}

parse :: (using seek_head: *Mkvparser_Seek_Head) -> s64 {
    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    pos := start;
    STOP := start + size;

    _entry_count: s64 = 0;
    _void_element_count: s64 = 0;

    while pos < STOP {
        id, _size: s64 = ---;

        STATUS := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *_size);

        if STATUS < 0 {
            return STATUS;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_SEEK {
            _entry_count += 1;
            if _entry_count > 2147483647 {
                return cast,no_check(s64) -cast(s32) 1;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_VOID {
            _void_element_count += 1;
            if _void_element_count > 2147483647 {
                return cast,no_check(s64) -cast(s32) 1;
            }
        }

        pos += _size;

        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if _entry_count > 0 {
        entries =
            cast,no_check(*Seek_Head_Entry) ((ifx true {
        cpp_transpiler_array_g58 :=
            cast,no_check(*Seek_Head_Entry) (cast(*Seek_Head_Entry) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) _entry_count,
                size_of(Seek_Head_Entry)
            ));
        cpp_transpiler_array_index_g59: u64 = 0;
        while cpp_transpiler_array_index_g59 < cpp_transpiler_array_count(cast(*void) cpp_transpiler_array_g58) {
            init_108(cpp_transpiler_array_g58 + cpp_transpiler_array_index_g59);
            cpp_transpiler_array_index_g59 += 1;
        }
        cpp_transpiler_array_g58;
    })
    );

        if entries == null {
            return -1;
        }
    }

    if _void_element_count > 0 {
        void_elements =
            cast,no_check(*Seek_Head_Void_Element) (cast(*Seek_Head_Void_Element) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) _void_element_count,
                size_of(Seek_Head_Void_Element)
            ));

        if void_elements == null {
            return -1;
        }
    }

    p_entry := cast,no_check(*Seek_Head_Entry) (entries);
    p_void_element := cast,no_check(*Seek_Head_Void_Element) (void_elements);

    pos = start;

    while pos < STOP {
        IDPOS := pos;

        id, _size: s64 = ---;

        STATUS := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *_size);

        if STATUS < 0 {
            return STATUS;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_SEEK && _entry_count > 0 {
            if parse_entry(P_READER, pos, _size, p_entry) {
                e := cast,no_check(*Seek_Head_Entry) (c_transpiler_post_increment(*(p_entry)));

                e.element_start = IDPOS;
                e.element_size = pos + _size - IDPOS;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_VOID && _void_element_count > 0 {
            e := cast,no_check(*Seek_Head_Void_Element) (c_transpiler_post_increment(*(p_void_element)));

            e.element_start = IDPOS;
            e.element_size = pos + _size - IDPOS;
        }

        pos += _size;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    count := p_entry - entries;
    assert(count >= 0);
    assert(count <= _entry_count);

    entry_count = cast,no_check(s32) count;

    count = p_void_element - void_elements;
    assert(count >= 0);
    assert(count <= _void_element_count);

    void_element_count = cast,no_check(s32) count;

    return 0;
}

parse_entry :: (p_reader: *I_Mkv_Reader, start: s64, size: s64, p_entry: *Seek_Head_Entry) -> bool {
    if size <= 0 {
        return false;
    }

    pos := start;
    STOP := start + size;

    len: s64 = ---;

    SEEK_ID_ID := mkvparser_ReadID(p_reader, pos, *len);
    if SEEK_ID_ID < 0 {
        return false;
    }

    if SEEK_ID_ID != cast,no_check(s64) LIBWEBM_K_MKV_SEEK_ID {
        return false;
    }

    if (pos + len) > STOP {
        return false;
    }

    pos += len;

    SEEK_ID_SIZE := mkvparser_ReadUInt(p_reader, pos, *len);

    if SEEK_ID_SIZE <= 0 {
        return false;
    }

    if (pos + len) > STOP {
        return false;
    }

    pos += len;

    if pos + SEEK_ID_SIZE > STOP {
        return false;
    }

    p_entry.id = mkvparser_ReadID(p_reader, pos, *len);

    if p_entry.id <= 0 {
        return false;
    }

    if len != SEEK_ID_SIZE {
        return false;
    }

    pos += SEEK_ID_SIZE;

    SEEK_POS_ID := mkvparser_ReadID(p_reader, pos, *len);

    if SEEK_POS_ID != cast,no_check(s64) LIBWEBM_K_MKV_SEEK_POSITION {
        return false;
    }

    if (pos + len) > STOP {
        return false;
    }

    pos += len;

    SEEK_POS_SIZE := mkvparser_ReadUInt(p_reader, pos, *len);

    if SEEK_POS_SIZE <= 0 {
        return false;
    }

    if (pos + len) > STOP {
        return false;
    }

    pos += len;

    if pos + SEEK_POS_SIZE > STOP {
        return false;
    }

    p_entry.pos = mkvparser_UnserializeUInt(p_reader, pos, SEEK_POS_SIZE);

    if p_entry.pos < 0 {
        return false;
    }

    pos += SEEK_POS_SIZE;

    if pos != STOP {
        return false;
    }

    return true;
}

parse :: (using tracks: *Mkvparser_Tracks) -> s64 {
    assert(track_entries == null);
    assert(track_entries_end == null);

    STOP := start + size;
    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    count: s64 = 0;
    pos := start;

    while pos < STOP {
        id, _size: s64 = ---;

        STATUS := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *_size);

        if STATUS < 0 {
            return STATUS;
        }

        if _size == 0 {
            continue;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_TRACK_ENTRY {
            count += 1;
            if count > 2147483647 {
                return cast,no_check(s64) -cast(s32) 1;
            }
        }

        pos += _size;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if count <= 0 {
        return 0;
    }

    track_entries =
        cast,no_check(**Mkvparser_Track) (cast(**Mkvparser_Track) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) count,
            size_of(*Mkvparser_Track)
        ));

    if track_entries == null {
        return -1;
    }

    track_entries_end = cast,no_check(**Mkvparser_Track) (track_entries);

    pos = start;

    while pos < STOP {
        ELEMENT_START := pos;

        id, payload_size: s64 = ---;

        STATUS_value := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *payload_size);

        if STATUS_value < 0 {
            return STATUS_value;
        }

        if payload_size == 0 {
            continue;
        }

        PAYLOAD_STOP := pos + payload_size;
        assert(PAYLOAD_STOP <= STOP);

        ELEMENT_SIZE := PAYLOAD_STOP - ELEMENT_START;

        if id == cast,no_check(s64) LIBWEBM_K_MKV_TRACK_ENTRY {
            p_track := cast,no_check(**Mkvparser_Track) (track_entries_end);
            (cast(**Mkvparser_Track) p_track).* = cast,no_check(*Mkvparser_Track) (cast(*Mkvparser_Track) null);

            STATUS := parse_track_entry(tracks, pos, payload_size, ELEMENT_START, ELEMENT_SIZE, p_track);
            if STATUS != 0 {
                return STATUS;
            }

            if (((cast(**Mkvparser_Track) p_track).*) != null) {
                track_entries_end += 1;
            }
        }

        pos = PAYLOAD_STOP;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

parse_track_entry :: (
    using tracks: *Mkvparser_Tracks,
    track_start: s64,
    track_size: s64,
    _element_start: s64,
    _element_size: s64,
    p_result: **Mkvparser_Track
) -> s64 {
    if (((cast(**Mkvparser_Track) p_result).*) != null) {
        return -1;
    }

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    pos := track_start;
    TRACK_STOP := track_start + track_size;

    info: Track_Info = ---;
    defer deinit_52(*info);
    init_71(*info);

    info.type = 0;
    info.number = 0;
    info.uid = 0;
    info.default_duration = 0;

    v: Track_Settings = ---;
    v.start = -1;
    v.size = -1;

    a: Track_Settings = ---;
    a.start = -1;
    a.size = -1;

    e: Track_Settings = ---;
    e.start = -1;
    e.size = -1;

    lacing: s64 = 1;

    while pos < TRACK_STOP {
        id, _size: s64 = ---;

        STATUS_value := mkvparser_ParseElementHeader(P_READER, *pos, TRACK_STOP, *id, *_size);

        if STATUS_value < 0 {
            return STATUS_value;
        }

        if _size < 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        START := pos;

        if id == cast,no_check(s64) LIBWEBM_K_MKV_VIDEO {
            v.start = START;
            v.size = _size;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_AUDIO {
            a.start = START;
            a.size = _size;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENCODINGS {
            e.start = START;
            e.size = _size;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_TRACK_UID {
            if _size > 8 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            info.uid = 0;

            pos_value := START;
            POS_END := START + _size;

            while pos_value != POS_END {
                b: u8 = ---;

                STATUS := cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(P_READER, pos_value, 1, *b);

                if STATUS != 0 {
                    return cast,no_check(s64) STATUS;
                }

                c_transpiler_compound_shl(*(info.uid), (cast(s32) 8), u64, u64);
                info.uid |= cast,no_check(u64) b;

                pos_value += 1;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_TRACK_NUMBER {
            NUM := mkvparser_UnserializeUInt(P_READER, pos, _size);

            if NUM <= 0 || NUM > 127 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            info.number = NUM;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_TRACK_TYPE {
            TYPE := mkvparser_UnserializeUInt(P_READER, pos, _size);

            if TYPE <= 0 || TYPE > 254 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            info.type = TYPE;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_NAME {
            STATUS := mkvparser_UnserializeString(P_READER, pos, _size, *info.name_as_utf8);

            if STATUS != 0 {
                return STATUS;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_LANGUAGE {
            STATUS := mkvparser_UnserializeString(P_READER, pos, _size, *info.language);

            if STATUS != 0 {
                return STATUS;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_DEFAULT_DURATION {
            DURATION := mkvparser_UnserializeUInt(P_READER, pos, _size);

            if DURATION < 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            info.default_duration = cast,no_check(u64) DURATION;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CODEC_ID {
            STATUS := mkvparser_UnserializeString(P_READER, pos, _size, *info.codec_id);

            if STATUS != 0 {
                return STATUS;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_FLAG_LACING {
            lacing = mkvparser_UnserializeUInt(P_READER, pos, _size);

            if lacing < 0 || lacing > 1 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CODEC_PRIVATE {
            {
                cpp_transpiler_delete_g60 := cast,no_check(*u8) (info.codec_private);
                if cpp_transpiler_delete_g60 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g60);
                }
            }
            info.codec_private = cast,no_check(*u8) (cast(*u8) null);
            info.codec_private_size = 0;

            BUFLEN := cast,no_check(u64) _size;

            if BUFLEN != 0 {
                buf: *u8 = cast,no_check(*u8) mkvparser_safe_array_alloc(1, BUFLEN);

                if buf == null {
                    return -1;
                }

                STATUS :=
                    cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
                        P_READER,
                        pos,
                        cast,no_check(s64) BUFLEN,
                        buf
                    );

                if STATUS != 0 {
                    {
                        cpp_transpiler_delete_g61 := cast,no_check(*u8) (buf);
                        if cpp_transpiler_delete_g61 != null {
                            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g61);
                        }
                    }
                    return cast,no_check(s64) STATUS;
                }

                info.codec_private = cast,no_check(*u8) (buf);
                info.codec_private_size = BUFLEN;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CODEC_NAME {
            STATUS := mkvparser_UnserializeString(P_READER, pos, _size, *info.codec_name_as_utf8);

            if STATUS != 0 {
                return STATUS;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CODEC_DELAY {
            info.codec_delay = cast,no_check(u64) mkvparser_UnserializeUInt(P_READER, pos, _size);
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_SEEK_PRE_ROLL {
            info.seek_pre_roll = cast,no_check(u64) mkvparser_UnserializeUInt(P_READER, pos, _size);
        }

        pos += _size;
        if pos > TRACK_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != TRACK_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if info.number <= 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if ((get_track_by_number(tracks, info.number)) != null) {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if info.type <= 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    info.lacing = ifx lacing > 0 then true else false;

    if info.type == cast,no_check(s64) MKVPARSER_TRACK_K_VIDEO_in_mkvparser {
        if v.start < 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if a.start >= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        info.settings = v;

        p_track: *Mkvparser_Video_Track = cast,no_check(*Mkvparser_Video_Track) (cast(*Mkvparser_Video_Track) null);

        STATUS := parse(p_segment, *info, _element_start, _element_size, *p_track);

        if STATUS != 0 {
            return STATUS;
        }

        assignment_47: *Mkvparser_Track = cast,no_check(*Mkvparser_Track) (*p_track.track);
        ((cast,no_check(**Mkvparser_Track) *((cast(**Mkvparser_Track) p_result).*)).*) = assignment_47;
        assert((((cast(**Mkvparser_Track) p_result).*) != null));

        if e.start >= 0 {
            parse_content_encodings_entry((cast(**Mkvparser_Track) p_result).*, e.start, e.size);
        }
    } else if info.type == cast,no_check(s64) MKVPARSER_TRACK_K_AUDIO_in_mkvparser {
        if a.start < 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if v.start >= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        info.settings = a;

        p_track: *Mkvparser_Audio_Track = cast,no_check(*Mkvparser_Audio_Track) (cast(*Mkvparser_Audio_Track) null);

        STATUS := parse(p_segment, *info, _element_start, _element_size, *p_track);

        if STATUS != 0 {
            return STATUS;
        }

        assignment_48: *Mkvparser_Track = cast,no_check(*Mkvparser_Track) (*p_track.track);
        ((cast,no_check(**Mkvparser_Track) *((cast(**Mkvparser_Track) p_result).*)).*) = assignment_48;
        assert((((cast(**Mkvparser_Track) p_result).*) != null));

        if e.start >= 0 {
            parse_content_encodings_entry((cast(**Mkvparser_Track) p_result).*, e.start, e.size);
        }
    } else {
        if a.start >= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if v.start >= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if info.type == cast,no_check(s64) MKVPARSER_TRACK_K_METADATA_in_mkvparser && e.start >= 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        info.settings.start = -1;
        info.settings.size = 0;

        p_track: *Mkvparser_Track = cast,no_check(*Mkvparser_Track) (cast(*Mkvparser_Track) null);

        STATUS := create_2(p_segment, *info, _element_start, _element_size, *p_track);

        if STATUS != 0 {
            return STATUS;
        }

        assignment_49: *Mkvparser_Track = cast,no_check(*Mkvparser_Track) (p_track);
        ((cast,no_check(**Mkvparser_Track) *((cast(**Mkvparser_Track) p_result).*)).*) = assignment_49;
        assert((((cast(**Mkvparser_Track) p_result).*) != null));
    }

    return 0;
}

create_2 :: (
    p_segment: *Mkvparser_Segment,
    info: *Track_Info,
    element_start: s64,
    element_size: s64,
    p_result: **Mkvparser_Track
) -> s64 {
    if (((cast(**Mkvparser_Track) p_result).*) != null) {
        return -1;
    }

    P_TRACK :=
        cast,no_check(*Mkvparser_Track) (cast(*Mkvparser_Track) cpp_transpiler_allocate_raw(
            size_of(Mkvparser_Track)
        ));
    init_73(P_TRACK, p_segment, element_start, element_size);

    if P_TRACK == null {
        return -1;
    }

    STATUS := copy_3(info, *P_TRACK.info);

    if STATUS != 0 {
        {
            cpp_transpiler_delete_g62 := cast,no_check(*Mkvparser_Track) (P_TRACK);
            if cpp_transpiler_delete_g62 != null {
                cpp_transpiler_dispatch_mkvparser_Track_destructor(cpp_transpiler_delete_g62);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g62);
            }
        }
        return cast,no_check(s64) STATUS;
    }

    assignment_50: *Mkvparser_Track = cast,no_check(*Mkvparser_Track) (P_TRACK);
    ((cast,no_check(**Mkvparser_Track) *((cast(**Mkvparser_Track) p_result).*)).*) = assignment_50;
    return 0;
}

parse_content_encodings_entry :: (using track: *Mkvparser_Track, start: s64, size: s64) -> s64 {
    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);
    assert(P_READER != null);

    pos := start;
    STOP := start + size;

    count: s64 = 0;
    while pos < STOP {
        id, size_value: s64 = ---;
        STATUS := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *size_value);
        if STATUS < 0 {
            return STATUS;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENCODING {
            count += 1;
            if count > 2147483647 {
                return cast,no_check(s64) -cast(s32) 1;
            }
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if count <= 0 {
        return -1;
    }

    content_encoding_entries =
        cast,no_check(**Mkvparser_Content_Encoding) (cast(**Mkvparser_Content_Encoding) cpp_transpiler_allocate_array_raw(
            cast,no_check(u64) count,
            size_of(*Mkvparser_Content_Encoding)
        ));
    if content_encoding_entries == null {
        return -1;
    }

    content_encoding_entries_end = cast,no_check(**Mkvparser_Content_Encoding) (content_encoding_entries);

    pos = start;
    while pos < STOP {
        id, size_value: s64 = ---;
        status := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *size_value);
        if status < 0 {
            return status;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENCODING {
            CONTENT_ENCODING :=
                cast,no_check(*Mkvparser_Content_Encoding) (cast(*Mkvparser_Content_Encoding) cpp_transpiler_allocate_raw(
                    size_of(Mkvparser_Content_Encoding)
                ));
            init_65(CONTENT_ENCODING);
            if CONTENT_ENCODING == null {
                return -1;
            }

            status = parse_content_encoding_entry(CONTENT_ENCODING, pos, size_value, P_READER);
            if status != 0 {
                {
                    cpp_transpiler_delete_g63 := cast,no_check(*Mkvparser_Content_Encoding) (CONTENT_ENCODING);
                    if cpp_transpiler_delete_g63 != null {
                        deinit_47(cpp_transpiler_delete_g63);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g63);
                    }
                }
                return status;
            }

            content_encoding_entries_end.* = cast,no_check(*Mkvparser_Content_Encoding) (CONTENT_ENCODING);
            content_encoding_entries_end += 1;
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

parse_content_encoding_entry :: (
    using content_encoding: *Mkvparser_Content_Encoding,
    start: s64,
    size: s64,
    p_reader: *I_Mkv_Reader
) -> s64 {
    assert(p_reader != null);

    pos := start;
    STOP := start + size;

    compression_count: s64 = 0;
    encryption_count: s64 = 0;

    while pos < STOP {
        id, size_value: s64 = ---;
        STATUS := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);
        if STATUS < 0 {
            return STATUS;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_COMPRESSION {
            compression_count += 1;
            if compression_count > 2147483647 {
                return cast,no_check(s64) -cast(s32) 1;
            }
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENCRYPTION {
            encryption_count += 1;
            if encryption_count > 2147483647 {
                return cast,no_check(s64) -cast(s32) 1;
            }
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if compression_count <= 0 && encryption_count <= 0 {
        return -1;
    }

    if compression_count > 0 {
        compression_entries =
            cast,no_check(**Content_Encoding_Content_Compression) (cast(**Content_Encoding_Content_Compression) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) compression_count,
                size_of(*Content_Encoding_Content_Compression)
            ));
        if compression_entries == null {
            return -1;
        }
        compression_entries_end = cast,no_check(**Content_Encoding_Content_Compression) (compression_entries);
    }

    if encryption_count > 0 {
        encryption_entries =
            cast,no_check(**Content_Encoding_Content_Encryption) (cast(**Content_Encoding_Content_Encryption) cpp_transpiler_allocate_array_raw(
                cast,no_check(u64) encryption_count,
                size_of(*Content_Encoding_Content_Encryption)
            ));
        if encryption_entries == null {
            {
                cpp_transpiler_delete_g64 :=
                    cast,no_check(**Content_Encoding_Content_Compression) (compression_entries);
                if cpp_transpiler_delete_g64 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g64);
                }
            }
            compression_entries =
                cast,no_check(**Content_Encoding_Content_Compression) (cast(**Content_Encoding_Content_Compression) null);
            return -1;
        }
        encryption_entries_end = cast,no_check(**Content_Encoding_Content_Encryption) (encryption_entries);
    }

    pos = start;
    while pos < STOP {
        id, size_value: s64 = ---;
        status := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);
        if status < 0 {
            return status;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENCODING_ORDER {
            encoding_order = cast,no_check(u64) mkvparser_UnserializeUInt(p_reader, pos, size_value);
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENCODING_SCOPE {
            encoding_scope = cast,no_check(u64) mkvparser_UnserializeUInt(p_reader, pos, size_value);
            if encoding_scope < 1 {
                return -1;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENCODING_TYPE {
            encoding_type = cast,no_check(u64) mkvparser_UnserializeUInt(p_reader, pos, size_value);
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_COMPRESSION {
            COMPRESSION :=
                cast,no_check(*Content_Encoding_Content_Compression) (cast(*Content_Encoding_Content_Compression) cpp_transpiler_allocate_raw(
                    size_of(Content_Encoding_Content_Compression)
                ));
            init_66(COMPRESSION);
            if COMPRESSION == null {
                return -1;
            }

            status = parse_compression_entry(content_encoding, pos, size_value, p_reader, COMPRESSION);
            if status != 0 {
                {
                    cpp_transpiler_delete_g65 := cast,no_check(*Content_Encoding_Content_Compression) (COMPRESSION);
                    if cpp_transpiler_delete_g65 != null {
                        deinit_48(cpp_transpiler_delete_g65);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g65);
                    }
                }
                return status;
            }
            assert(compression_count > 0);
            compression_entries_end.* = cast,no_check(*Content_Encoding_Content_Compression) (COMPRESSION);
            compression_entries_end += 1;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENCRYPTION {
            ENCRYPTION :=
                cast,no_check(*Content_Encoding_Content_Encryption) (cast(*Content_Encoding_Content_Encryption) cpp_transpiler_allocate_raw(
                    size_of(Content_Encoding_Content_Encryption)
                ));
            init_68(ENCRYPTION);
            if ENCRYPTION == null {
                return -1;
            }

            status = parse_encryption_entry(content_encoding, pos, size_value, p_reader, ENCRYPTION);
            if status != 0 {
                {
                    cpp_transpiler_delete_g66 := cast,no_check(*Content_Encoding_Content_Encryption) (ENCRYPTION);
                    if cpp_transpiler_delete_g66 != null {
                        deinit_50(cpp_transpiler_delete_g66);
                        cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g66);
                    }
                }
                return status;
            }
            assert(encryption_count > 0);
            encryption_entries_end.* = cast,no_check(*Content_Encoding_Content_Encryption) (ENCRYPTION);
            encryption_entries_end += 1;
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }
    return 0;
}

parse_encryption_entry :: (
    using content_encoding: *Mkvparser_Content_Encoding,
    start: s64,
    size: s64,
    p_reader: *I_Mkv_Reader,
    encryption: *Content_Encoding_Content_Encryption
) -> s64 {
    assert(p_reader != null);
    assert(encryption != null);

    pos := start;
    STOP := start + size;

    while pos < STOP {
        id, size_value: s64 = ---;
        STATUS_value := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);
        if STATUS_value < 0 {
            return STATUS_value;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENC_ALGO {
            encryption.algo = cast,no_check(u64) mkvparser_UnserializeUInt(p_reader, pos, size_value);
            if encryption.algo != 5 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENC_KEY_ID {
            {
                cpp_transpiler_delete_g67 := cast,no_check(*u8) (encryption.key_id);
                if cpp_transpiler_delete_g67 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g67);
                }
            }
            encryption.key_id = cast,no_check(*u8) (cast(*u8) null);
            encryption.key_id_len = 0;

            if size_value <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            BUFLEN := cast,no_check(u64) size_value;
            buf: *u8 = cast,no_check(*u8) mkvparser_safe_array_alloc(1, BUFLEN);
            if buf == null {
                return -1;
            }

            READ_STATUS :=
                cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
                    p_reader,
                    pos,
                    cast,no_check(s64) BUFLEN,
                    buf
                );
            if READ_STATUS != 0 {
                {
                    cpp_transpiler_delete_g68 := cast,no_check(*u8) (buf);
                    if cpp_transpiler_delete_g68 != null {
                        cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g68);
                    }
                }
                return STATUS_value;
            }

            encryption.key_id = cast,no_check(*u8) (buf);
            encryption.key_id_len = cast,no_check(s64) BUFLEN;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_SIGNATURE {
            {
                cpp_transpiler_delete_g69 := cast,no_check(*u8) (encryption.signature);
                if cpp_transpiler_delete_g69 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g69);
                }
            }
            encryption.signature = cast,no_check(*u8) (cast(*u8) null);
            encryption.signature_len = 0;

            if size_value <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            BUFLEN := cast,no_check(u64) size_value;
            buf: *u8 = cast,no_check(*u8) mkvparser_safe_array_alloc(1, BUFLEN);
            if buf == null {
                return -1;
            }

            READ_STATUS :=
                cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
                    p_reader,
                    pos,
                    cast,no_check(s64) BUFLEN,
                    buf
                );
            if READ_STATUS != 0 {
                {
                    cpp_transpiler_delete_g70 := cast,no_check(*u8) (buf);
                    if cpp_transpiler_delete_g70 != null {
                        cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g70);
                    }
                }
                return STATUS_value;
            }

            encryption.signature = cast,no_check(*u8) (buf);
            encryption.signature_len = cast,no_check(s64) BUFLEN;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_SIG_KEY_ID {
            {
                cpp_transpiler_delete_g71 := cast,no_check(*u8) (encryption.sig_key_id);
                if cpp_transpiler_delete_g71 != null {
                    cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g71);
                }
            }
            encryption.sig_key_id = cast,no_check(*u8) (cast(*u8) null);
            encryption.sig_key_id_len = 0;

            if size_value <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            BUFLEN := cast,no_check(u64) size_value;
            buf: *u8 = cast,no_check(*u8) mkvparser_safe_array_alloc(1, BUFLEN);
            if buf == null {
                return -1;
            }

            READ_STATUS :=
                cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
                    p_reader,
                    pos,
                    cast,no_check(s64) BUFLEN,
                    buf
                );
            if READ_STATUS != 0 {
                {
                    cpp_transpiler_delete_g72 := cast,no_check(*u8) (buf);
                    if cpp_transpiler_delete_g72 != null {
                        cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g72);
                    }
                }
                return STATUS_value;
            }

            encryption.sig_key_id = cast,no_check(*u8) (buf);
            encryption.sig_key_id_len = cast,no_check(s64) BUFLEN;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_SIG_ALGO {
            encryption.sig_algo = cast,no_check(u64) mkvparser_UnserializeUInt(p_reader, pos, size_value);
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_SIG_HASH_ALGO {
            encryption.sig_hash_algo = cast,no_check(u64) mkvparser_UnserializeUInt(p_reader, pos, size_value);
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_ENC_AES_SETTINGS {
            STATUS :=
                parse_content_enc_aes_settings_entry(
                    content_encoding,
                    pos,
                    size_value,
                    p_reader,
                    *encryption.aes_settings
                );
            if STATUS != 0 {
                return STATUS;
            }
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    return 0;
}

parse_content_enc_aes_settings_entry :: (
    using content_encoding: *Mkvparser_Content_Encoding,
    start: s64,
    size: s64,
    p_reader: *I_Mkv_Reader,
    aes: *Content_Encoding_Content_Enc_AES_Settings
) -> s64 {
    assert(p_reader != null);
    assert(aes != null);

    pos := start;
    STOP := start + size;

    while pos < STOP {
        id, size_value: s64 = ---;
        STATUS := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);
        if STATUS < 0 {
            return STATUS;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_AES_SETTINGS_CIPHER_MODE {
            aes.cipher_mode = cast,no_check(u64) mkvparser_UnserializeUInt(p_reader, pos, size_value);
            if aes.cipher_mode != 1 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    return 0;
}

parse_compression_entry :: (
    using content_encoding: *Mkvparser_Content_Encoding,
    start: s64,
    size: s64,
    p_reader: *I_Mkv_Reader,
    compression: *Content_Encoding_Content_Compression
) -> s64 {
    assert(p_reader != null);
    assert(compression != null);

    pos := start;
    STOP := start + size;

    valid: bool = false;

    while pos < STOP {
        id, size_value: s64 = ---;
        STATUS := mkvparser_ParseElementHeader(p_reader, *pos, STOP, *id, *size_value);
        if STATUS < 0 {
            return STATUS;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_COMP_ALGO {
            algo := mkvparser_UnserializeUInt(p_reader, pos, size_value);
            if algo < 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
            compression.algo = cast,no_check(u64) algo;
            valid = true;
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CONTENT_COMP_SETTINGS {
            if size_value <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }

            BUFLEN := cast,no_check(u64) size_value;
            buf: *u8 = cast,no_check(*u8) mkvparser_safe_array_alloc(1, BUFLEN);
            if buf == null {
                return -1;
            }

            READ_STATUS :=
                cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
                    p_reader,
                    pos,
                    cast,no_check(s64) BUFLEN,
                    buf
                );
            if READ_STATUS != 0 {
                {
                    cpp_transpiler_delete_g73 := cast,no_check(*u8) (buf);
                    if cpp_transpiler_delete_g73 != null {
                        cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g73);
                    }
                }
                return STATUS;
            }

            if compression.settings != null {
                {
                    cpp_transpiler_delete_g74 := cast,no_check(*u8) (buf);
                    if cpp_transpiler_delete_g74 != null {
                        cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g74);
                    }
                }
                return cast,no_check(s64) -cast(s32) 2;
            }

            compression.settings = cast,no_check(*u8) (buf);
            compression.settings_len = cast,no_check(s64) BUFLEN;
        }

        pos += size_value;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if !valid {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

parse :: (
    p_segment: *Mkvparser_Segment,
    info: *Track_Info,
    element_start: s64,
    element_size: s64,
    p_result: **Mkvparser_Audio_Track
) -> s64 {
    if (((cast(**Mkvparser_Audio_Track) p_result).*) != null) {
        return -1;
    }

    if info.type != cast,no_check(s64) MKVPARSER_TRACK_K_AUDIO_in_mkvparser {
        return -1;
    }

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    s := cast,no_check(*Track_Settings) (*info.settings);
    assert(s.start >= 0);
    assert(s.size >= 0);

    pos := s.start;
    assert(pos >= 0);

    STOP := pos + s.size;

    rate: float64 = 8000.0;
    channels: s64 = 1;
    bit_depth: s64 = 0;

    while pos < STOP {
        id, size: s64 = ---;

        status := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *size);

        if status < 0 {
            return status;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_SAMPLING_FREQUENCY {
            status = mkvparser_UnserializeFloat(P_READER, pos, size, *rate);

            if status < 0 {
                return status;
            }

            if c_transpiler_float_less_equal(rate, 0.0) {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_CHANNELS {
            channels = mkvparser_UnserializeUInt(P_READER, pos, size);

            if channels <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_BIT_DEPTH {
            bit_depth = mkvparser_UnserializeUInt(P_READER, pos, size);

            if bit_depth <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        }

        pos += size;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    P_TRACK :=
        cast,no_check(*Mkvparser_Audio_Track) (cast(*Mkvparser_Audio_Track) cpp_transpiler_allocate_raw(
            size_of(Mkvparser_Audio_Track)
        ));
    init_82(P_TRACK, p_segment, element_start, element_size);

    if P_TRACK == null {
        return -1;
    }

    STATUS := copy_3(info, *(P_TRACK.track.info));

    if STATUS != 0 {
        {
            cpp_transpiler_delete_g75 := cast,no_check(*Mkvparser_Audio_Track) (P_TRACK);
            if cpp_transpiler_delete_g75 != null {
                cpp_transpiler_dispatch_mkvparser_Track_destructor(
                    cast,no_check(*Mkvparser_Track) cpp_transpiler_delete_g75
                );
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g75);
            }
        }
        return cast,no_check(s64) STATUS;
    }

    P_TRACK.rate = rate;
    P_TRACK.channels = channels;
    P_TRACK.bit_depth = bit_depth;

    assignment_51: *Mkvparser_Audio_Track = cast,no_check(*Mkvparser_Audio_Track) (P_TRACK);
    ((cast,no_check(**Mkvparser_Audio_Track) *((cast(**Mkvparser_Audio_Track) p_result).*)).*) = assignment_51;
    return 0;
}

mkvparser_UnserializeFloat :: (p_reader: *I_Mkv_Reader, pos: s64, size: s64, result: *float64) -> s64 {
    if p_reader == null || pos < 0 || size != 4 && size != 8 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    SIZE := size;

    buf: [8] u8 = ---;

    STATUS := cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, SIZE, buf.data);

    if STATUS < 0 {
        return cast,no_check(s64) STATUS;
    }

    if SIZE == 4 {
        unnamed_456: Unnamed_459 = ---;

        unnamed_456.ff = 0;

        {
            i: s32 = 0;
            while true {
                unnamed_456.ff |= cast,no_check(u32) buf[i];

                if c_transpiler_pre_increment(*(i)) >= 4 {
                    break;
                }

                c_transpiler_compound_shl(*(unnamed_456.ff), (cast(s32) 8), u32, u32);
            }
        }

        assignment_52: float64 = cast,no_check(float64) unnamed_456.f;
        ((cast,no_check(*float64) *(((cast(**float64) *(result)).*).*)).*) = assignment_52;
    } else {
        unnamed_446: Unnamed_449 = ---;

        unnamed_446.dd = 0;

        {
            i: s32 = 0;
            while true {
                unnamed_446.dd |= cast,no_check(u64) buf[i];

                if c_transpiler_pre_increment(*(i)) >= 8 {
                    break;
                }

                c_transpiler_compound_shl(*(unnamed_446.dd), (cast(s32) 8), u64, u64);
            }
        }

        assignment_53: float64 = unnamed_446.d;
        ((cast,no_check(*float64) *(((cast(**float64) *(result)).*).*)).*) = assignment_53;
    }

    if mkvparser_isinf(result.*) || mkvparser_isnan(result.*) {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

mkvparser_isnan :: (val: float64) -> bool {
    return std_isnan(val);
}

std_isnan :: (x: float64) -> bool {
    return c_transpiler_isnan(x) != 0;
}

mkvparser_isinf :: (val: float64) -> bool {
    return std_isinf(val);
}

std_isinf :: (x: float64) -> bool {
    return (ifx c_transpiler_isinf_sign(x) != 0 then cast(s32) 1 else cast(s32) 0) != 0;
}

parse :: (
    p_segment: *Mkvparser_Segment,
    info: *Track_Info,
    element_start: s64,
    element_size: s64,
    p_result: **Mkvparser_Video_Track
) -> s64 {
    if (((cast(**Mkvparser_Video_Track) p_result).*) != null) {
        return -1;
    }

    if info.type != cast,no_check(s64) MKVPARSER_TRACK_K_VIDEO_in_mkvparser {
        return -1;
    }

    width: s64 = 0;
    height: s64 = 0;
    display_width: s64 = 0;
    display_height: s64 = 0;
    display_unit: s64 = 0;
    stereo_mode: s64 = 0;

    rate: float64 = 0.0;
    colour_space_ptr: Class_Unique_Ptr_Char = ---;
    defer deinit_102(*colour_space_ptr);
    init_229(*colour_space_ptr);

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    s := cast,no_check(*Track_Settings) (*info.settings);
    assert(s.start >= 0);
    assert(s.size >= 0);

    pos := s.start;
    assert(pos >= 0);

    STOP := pos + s.size;

    colour_ptr: Class_Unique_Ptr_Struct_Colour = ---;
    defer deinit_100(*colour_ptr);
    init_236(*colour_ptr);
    projection_ptr: Class_Unique_Ptr_Struct_Projection = ---;
    defer deinit_101(*projection_ptr);
    init_239(*projection_ptr);

    while pos < STOP {
        id, size: s64 = ---;

        STATUS_value := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *size);

        if STATUS_value < 0 {
            return STATUS_value;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_PIXEL_WIDTH {
            width = mkvparser_UnserializeUInt(P_READER, pos, size);

            if width <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_PIXEL_HEIGHT {
            height = mkvparser_UnserializeUInt(P_READER, pos, size);

            if height <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_DISPLAY_WIDTH {
            display_width = mkvparser_UnserializeUInt(P_READER, pos, size);

            if display_width <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_DISPLAY_HEIGHT {
            display_height = mkvparser_UnserializeUInt(P_READER, pos, size);

            if display_height <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_DISPLAY_UNIT {
            display_unit = mkvparser_UnserializeUInt(P_READER, pos, size);

            if display_unit < 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_STEREO_MODE {
            stereo_mode = mkvparser_UnserializeUInt(P_READER, pos, size);

            if stereo_mode < 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_FRAME_RATE {
            STATUS_value := mkvparser_UnserializeFloat(P_READER, pos, size, *rate);

            if STATUS_value < 0 {
                return STATUS_value;
            }

            if c_transpiler_float_less_equal(rate, 0.0) {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_COLOUR {
            colour: *Mkvparser_Colour = cast,no_check(*Mkvparser_Colour) (cast(*Mkvparser_Colour) null);
            if !parse(P_READER, pos, size, *colour) {
                return cast,no_check(s64) -cast(s32) 2;
            } else {
                reset_7(*colour_ptr, colour);
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_PROJECTION {
            projection: *Mkvparser_Projection = cast,no_check(*Mkvparser_Projection) (cast(*Mkvparser_Projection) null);
            if !parse(P_READER, pos, size, *projection) {
                return cast,no_check(s64) -cast(s32) 2;
            } else {
                reset_5(*projection_ptr, projection);
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_COLOUR_SPACE {
            colour_space: *s8 = cast,no_check(*s8) (cast(*s8) null);
            STATUS_value := mkvparser_UnserializeString(P_READER, pos, size, *colour_space);
            if STATUS_value < 0 {
                return STATUS_value;
            }
            reset_3(*colour_space_ptr, colour_space);
        }

        pos += size;
        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    P_TRACK :=
        cast,no_check(*Mkvparser_Video_Track) (cast(*Mkvparser_Video_Track) cpp_transpiler_allocate_raw(
            size_of(Mkvparser_Video_Track)
        ));
    init_80(P_TRACK, p_segment, element_start, element_size);

    if P_TRACK == null {
        return -1;
    }

    STATUS := copy_3(info, *(P_TRACK.track.info));

    if STATUS != 0 {
        {
            cpp_transpiler_delete_g76 := cast,no_check(*Mkvparser_Video_Track) (P_TRACK);
            if cpp_transpiler_delete_g76 != null {
                cpp_transpiler_dispatch_mkvparser_Track_destructor(
                    cast,no_check(*Mkvparser_Track) cpp_transpiler_delete_g76
                );
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g76);
            }
        }
        return cast,no_check(s64) STATUS;
    }

    P_TRACK.width = width;
    P_TRACK.height = height;
    P_TRACK.display_width = display_width;
    P_TRACK.display_height = display_height;
    P_TRACK.display_unit = display_unit;
    P_TRACK.stereo_mode = stereo_mode;
    P_TRACK.rate = rate;
    P_TRACK.colour = cast,no_check(*Mkvparser_Colour) release_6(*colour_ptr);
    P_TRACK.colour_space = cast,no_check(*s8) release_4(*colour_space_ptr);
    P_TRACK.projection = cast,no_check(*Mkvparser_Projection) release_2(*projection_ptr);

    assignment_54: *Mkvparser_Video_Track = cast,no_check(*Mkvparser_Video_Track) (P_TRACK);
    ((cast,no_check(**Mkvparser_Video_Track) *((cast(**Mkvparser_Video_Track) p_result).*)).*) = assignment_54;
    return 0;
}

parse :: (reader: *I_Mkv_Reader, start: s64, size: s64, projection: **Mkvparser_Projection) -> bool {
    if reader == null || projection.* != null {
        return false;
    }

    projection_ptr: Class_Unique_Ptr_Struct_Projection = ---;
    defer deinit_101(*projection_ptr);
    init_222(
        *projection_ptr,
        (ifx true {
    cpp_transpiler_new_g77 :=
        cast,no_check(*Mkvparser_Projection) (cast(*Mkvparser_Projection) cpp_transpiler_allocate_raw(
            size_of(Mkvparser_Projection)
        ));
    init_78(cpp_transpiler_new_g77);
    cpp_transpiler_new_g77;
})

    );
    if !operator_bool_2(*projection_ptr) {
        return false;
    }

    END := start + size;
    read_pos := start;

    while read_pos < END {
        child_id: s64 = 0;
        child_size: s64 = 0;

        STATUS_value := mkvparser_ParseElementHeader(reader, *read_pos, END, *child_id, *child_size);
        if STATUS_value < 0 {
            return false;
        }

        if child_id == cast,no_check(s64) LIBWEBM_K_MKV_PROJECTION_TYPE {
            projection_type := cast,no_check(s64) MKVPARSER_PROJECTION_K_TYPE_NOT_PRESENT_in_mkvparser;
            projection_type = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            if projection_type < 0 {
                return false;
            }

            assignment_55: Projection_Projection_Type_in_mkvparser =
                cast,no_check(Projection_Projection_Type_in_mkvparser) projection_type;
            ((cast,no_check(*Projection_Projection_Type_in_mkvparser) *((get_pointer_6(*projection_ptr)).type)).*) = assignment_55;
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_PROJECTION_PRIVATE {
            if (get_pointer_6(*projection_ptr)).private_data != null {
                return false;
            }
            data: *u8 = cast,no_check(*u8) mkvparser_safe_array_alloc(1, cast,no_check(u64) child_size);

            if data == null {
                return false;
            }

            STATUS := cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(reader, read_pos, child_size, data);

            if STATUS != 0 {
                {
                    cpp_transpiler_delete_g78 := cast,no_check(*u8) (data);
                    if cpp_transpiler_delete_g78 != null {
                        cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g78);
                    }
                }
                return false;
            }

            assignment_56: *u8 = cast,no_check(*u8) (data);
            ((cast,no_check(**u8) *((get_pointer_6(*projection_ptr)).private_data)).*) = assignment_56;
            assignment_57: u64 = cast,no_check(u64) child_size;
            ((cast,no_check(*u64) *((get_pointer_6(*projection_ptr)).private_data_length)).*) = assignment_57;
        } else {
            value: float64 = 0.0;
            VALUE_PARSE_STATUS := mkvparser_UnserializeFloat(reader, read_pos, child_size, *value);

            if VALUE_PARSE_STATUS < 0 ||
                c_transpiler_float_less(value, -3.4028234663852887e38) ||
                c_transpiler_float_greater(value, 3.4028234663852887e38) ||
                c_transpiler_float_greater(value, 0.0) && c_transpiler_float_less(value, 1.1754943508222876e-38) {
                return false;
            }

            if child_id == {
                case cast,no_check(s64) LIBWEBM_K_MKV_PROJECTION_POSE_YAW;
                    assignment_58: float32 = cast,no_check(float32) value;
                    ((cast,no_check(*float32) *((get_pointer_6(*projection_ptr)).pose_yaw)).*) = assignment_58;
                case cast,no_check(s64) LIBWEBM_K_MKV_PROJECTION_POSE_PITCH;
                    assignment_59: float32 = cast,no_check(float32) value;
                    ((cast,no_check(*float32) *((get_pointer_6(*projection_ptr)).pose_pitch)).*) = assignment_59;
                case cast,no_check(s64) LIBWEBM_K_MKV_PROJECTION_POSE_ROLL;
                    assignment_60: float32 = cast,no_check(float32) value;
                    ((cast,no_check(*float32) *((get_pointer_6(*projection_ptr)).pose_roll)).*) = assignment_60;
                case;
                    return false;
            }
        }

        read_pos += child_size;
        if read_pos > END {
            return false;
        }
    }

    projection.* = cast,no_check(*Mkvparser_Projection) release_2(*projection_ptr);
    return true;
}

parse :: (reader: *I_Mkv_Reader, colour_start: s64, colour_size: s64, colour: **Mkvparser_Colour) -> bool {
    if reader == null || colour.* != null {
        return false;
    }

    colour_ptr: Class_Unique_Ptr_Struct_Colour = ---;
    defer deinit_100(*colour_ptr);
    init_215(
        *colour_ptr,
        (ifx true {
    cpp_transpiler_new_g79 :=
        cast,no_check(*Mkvparser_Colour) (cast(*Mkvparser_Colour) cpp_transpiler_allocate_raw(
            size_of(Mkvparser_Colour)
        ));
    init_77(cpp_transpiler_new_g79);
    cpp_transpiler_new_g79;
})

    );
    if !operator_bool_3(*colour_ptr) {
        return false;
    }

    COLOUR_END := colour_start + colour_size;
    read_pos := colour_start;

    while read_pos < COLOUR_END {
        child_id: s64 = 0;
        child_size: s64 = 0;

        STATUS := mkvparser_ParseElementHeader(reader, *read_pos, COLOUR_END, *child_id, *child_size);
        if STATUS < 0 {
            return false;
        }

        if child_id == cast,no_check(s64) LIBWEBM_K_MKV_MATRIX_COEFFICIENTS {
            assignment_61: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).matrix_coefficients)).*) = assignment_61;
            if (get_pointer_7(*colour_ptr)).matrix_coefficients < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_BITS_PER_CHANNEL {
            assignment_62: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).bits_per_channel)).*) = assignment_62;
            if (get_pointer_7(*colour_ptr)).bits_per_channel < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_CHROMA_SUBSAMPLING_HORZ {
            assignment_63: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).chroma_subsampling_horz)).*) = assignment_63;
            if (get_pointer_7(*colour_ptr)).chroma_subsampling_horz < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_CHROMA_SUBSAMPLING_VERT {
            assignment_64: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).chroma_subsampling_vert)).*) = assignment_64;
            if (get_pointer_7(*colour_ptr)).chroma_subsampling_vert < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_CB_SUBSAMPLING_HORZ {
            assignment_65: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).cb_subsampling_horz)).*) = assignment_65;
            if (get_pointer_7(*colour_ptr)).cb_subsampling_horz < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_CB_SUBSAMPLING_VERT {
            assignment_66: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).cb_subsampling_vert)).*) = assignment_66;
            if (get_pointer_7(*colour_ptr)).cb_subsampling_vert < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_CHROMA_SITING_HORZ {
            assignment_67: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).chroma_siting_horz)).*) = assignment_67;
            if (get_pointer_7(*colour_ptr)).chroma_siting_horz < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_CHROMA_SITING_VERT {
            assignment_68: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).chroma_siting_vert)).*) = assignment_68;
            if (get_pointer_7(*colour_ptr)).chroma_siting_vert < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_RANGE {
            assignment_69: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).range)).*) = assignment_69;
            if (get_pointer_7(*colour_ptr)).range < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_TRANSFER_CHARACTERISTICS {
            assignment_70: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).transfer_characteristics)).*) = assignment_70;
            if (get_pointer_7(*colour_ptr)).transfer_characteristics < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_PRIMARIES {
            assignment_71: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).primaries)).*) = assignment_71;
            if (get_pointer_7(*colour_ptr)).primaries < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_MAX_CLL {
            assignment_72: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).max_cll)).*) = assignment_72;
            if (get_pointer_7(*colour_ptr)).max_cll < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_MAX_FALL {
            assignment_73: s64 = mkvparser_UnserializeUInt(reader, read_pos, child_size);
            ((cast,no_check(*s64) *((get_pointer_7(*colour_ptr)).max_fall)).*) = assignment_73;
            if (get_pointer_7(*colour_ptr)).max_fall < 0 {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_MASTERING_METADATA {
            if !parse(reader, read_pos, child_size, *((get_pointer_7(*colour_ptr)).mastering_metadata)) {
                return false;
            }
        } else {
            return false;
        }

        read_pos += child_size;
        if read_pos > COLOUR_END {
            return false;
        }
    }
    colour.* = cast,no_check(*Mkvparser_Colour) release_6(*colour_ptr);
    return true;
}

parse :: (reader: *I_Mkv_Reader, mm_start: s64, mm_size: s64, mm: **Mkvparser_Mastering_Metadata) -> bool {
    if reader == null || mm.* != null {
        return false;
    }

    mm_ptr: Class_Unique_Ptr_Struct_Mastering_Metadata = ---;
    defer deinit_99(*mm_ptr);
    init_208(
        *mm_ptr,
        (ifx true {
    cpp_transpiler_new_g80 :=
        cast,no_check(*Mkvparser_Mastering_Metadata) (cast(*Mkvparser_Mastering_Metadata) cpp_transpiler_allocate_raw(
            size_of(Mkvparser_Mastering_Metadata)
        ));
    init_76(cpp_transpiler_new_g80);
    cpp_transpiler_new_g80;
})

    );
    if !operator_bool_4(*mm_ptr) {
        return false;
    }

    MM_END := mm_start + mm_size;
    read_pos := mm_start;

    while read_pos < MM_END {
        child_id: s64 = 0;
        child_size: s64 = 0;

        STATUS := mkvparser_ParseElementHeader(reader, *read_pos, MM_END, *child_id, *child_size);
        if STATUS < 0 {
            return false;
        }

        if child_id == cast,no_check(s64) LIBWEBM_K_MKV_LUMINANCE_MAX {
            value: float64 = 0.0;
            VALUE_PARSE_STATUS := mkvparser_UnserializeFloat(reader, read_pos, child_size, *value);
            if c_transpiler_float_less(value, -3.4028234663852887e38) ||
                c_transpiler_float_greater(value, 3.4028234663852887e38) ||
                c_transpiler_float_greater(value, 0.0) && c_transpiler_float_less(value, 1.1754943508222876e-38) {
                return false;
            }
            assignment_74: float32 = cast,no_check(float32) value;
            ((cast,no_check(*float32) *((get_pointer_8(*mm_ptr)).luminance_max)).*) = assignment_74;
            if VALUE_PARSE_STATUS < 0 ||
                c_transpiler_float_less(cast,no_check(float64) ((get_pointer_8(*mm_ptr)).luminance_max), 0.0) ||
                c_transpiler_float_greater(cast,no_check(float64) ((get_pointer_8(*mm_ptr)).luminance_max), 9999.99) {
                return false;
            }
        } else if child_id == cast,no_check(s64) LIBWEBM_K_MKV_LUMINANCE_MIN {
            value: float64 = 0.0;
            VALUE_PARSE_STATUS := mkvparser_UnserializeFloat(reader, read_pos, child_size, *value);
            if c_transpiler_float_less(value, -3.4028234663852887e38) ||
                c_transpiler_float_greater(value, 3.4028234663852887e38) ||
                c_transpiler_float_greater(value, 0.0) && c_transpiler_float_less(value, 1.1754943508222876e-38) {
                return false;
            }
            assignment_75: float32 = cast,no_check(float32) value;
            ((cast,no_check(*float32) *((get_pointer_8(*mm_ptr)).luminance_min)).*) = assignment_75;
            if VALUE_PARSE_STATUS < 0 ||
                c_transpiler_float_less(cast,no_check(float64) ((get_pointer_8(*mm_ptr)).luminance_min), 0.0) ||
                c_transpiler_float_greater(cast,no_check(float64) ((get_pointer_8(*mm_ptr)).luminance_min), 999.9999) {
                return false;
            }
        } else {
            is_x: bool = false;
            chromaticity: **Mkvparser_Primary_Chromaticity = ---;
            if child_id == {
                case cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_X; #through;
                case cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_Y;
                    is_x = child_id == cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_R_CHROMATICITY_X;
                    chromaticity = cast,no_check(**Mkvparser_Primary_Chromaticity) (*((get_pointer_8(*mm_ptr)).r));
                case cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_X; #through;
                case cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_Y;
                    is_x = child_id == cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_G_CHROMATICITY_X;
                    chromaticity = cast,no_check(**Mkvparser_Primary_Chromaticity) (*((get_pointer_8(*mm_ptr)).g));
                case cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_X; #through;
                case cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_Y;
                    is_x = child_id == cast,no_check(s64) LIBWEBM_K_MKV_PRIMARY_B_CHROMATICITY_X;
                    chromaticity = cast,no_check(**Mkvparser_Primary_Chromaticity) (*((get_pointer_8(*mm_ptr)).b));
                case cast,no_check(s64) LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_X; #through;
                case cast,no_check(s64) LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_Y;
                    is_x = child_id == cast,no_check(s64) LIBWEBM_K_MKV_WHITE_POINT_CHROMATICITY_X;
                    chromaticity =
                        cast,no_check(**Mkvparser_Primary_Chromaticity) (*((get_pointer_8(*mm_ptr)).white_point));
                case;
                    return false;
            }
            VALUE_PARSE_STATUS := parse(reader, read_pos, child_size, is_x, chromaticity);
            if !VALUE_PARSE_STATUS {
                return false;
            }
        }

        read_pos += child_size;
        if read_pos > MM_END {
            return false;
        }
    }

    mm.* = cast,no_check(*Mkvparser_Mastering_Metadata) release_8(*mm_ptr);
    return true;
}

parse :: (
    reader: *I_Mkv_Reader,
    read_pos: s64,
    value_size: s64,
    is_x: bool,
    chromaticity: **Mkvparser_Primary_Chromaticity
) -> bool {
    if reader == null {
        return false;
    }

    if chromaticity.* == null {
        chromaticity.* =
            cast,no_check(*Mkvparser_Primary_Chromaticity) ((ifx true {
        cpp_transpiler_new_g81 :=
            cast,no_check(*Mkvparser_Primary_Chromaticity) (cast(*Mkvparser_Primary_Chromaticity) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Primary_Chromaticity)
            ));
        init_75(cpp_transpiler_new_g81);
        cpp_transpiler_new_g81;
    })
    );
    }

    if chromaticity.* == null {
        return false;
    }

    pc := cast,no_check(*Mkvparser_Primary_Chromaticity) (chromaticity.*);
    value :=
        cast,no_check(*float32) ((ifx is_x then cast,no_check(*float32) (*pc.x) else cast,no_check(*float32) (*pc.y)));

    parser_value: float64 = 0.0;
    PARSE_STATUS := mkvparser_UnserializeFloat(reader, read_pos, value_size, *parser_value);

    if PARSE_STATUS < 0 ||
        c_transpiler_float_less(parser_value, 0.0) ||
        c_transpiler_float_greater(parser_value, 1.0) ||
        c_transpiler_float_greater(parser_value, 0.0) && c_transpiler_float_less(parser_value, 1.1754943508222876e-38) {
        return false;
    }

    value.* = cast,no_check(float32) parser_value;

    return true;
}

parse :: (using segment_info: *Mkvparser_Segment_Info) -> s64 {
    assert(p_muxing_app_as_utf8 == null);
    assert(p_writing_app_as_utf8 == null);
    assert(p_title_as_utf8 == null);

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    pos := start;
    STOP := start + size;

    timecode_scale = 1000000;
    duration = -1.0;

    while pos < STOP {
        id, _size: s64 = ---;

        STATUS_value := mkvparser_ParseElementHeader(P_READER, *pos, STOP, *id, *_size);

        if STATUS_value < 0 {
            return STATUS_value;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_TIMECODE_SCALE {
            timecode_scale = mkvparser_UnserializeUInt(P_READER, pos, _size);

            if timecode_scale <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_DURATION {
            STATUS := mkvparser_UnserializeFloat(P_READER, pos, _size, *duration);

            if STATUS < 0 {
                return STATUS;
            }

            if c_transpiler_float_less(duration, 0.0) {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_MUXING_APP {
            STATUS := mkvparser_UnserializeString(P_READER, pos, _size, *p_muxing_app_as_utf8);

            if STATUS != 0 {
                return STATUS;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_WRITING_APP {
            STATUS := mkvparser_UnserializeString(P_READER, pos, _size, *p_writing_app_as_utf8);

            if STATUS != 0 {
                return STATUS;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_TITLE {
            STATUS := mkvparser_UnserializeString(P_READER, pos, _size, *p_title_as_utf8);

            if STATUS != 0 {
                return STATUS;
            }
        }

        pos += _size;

        if pos > STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    ROLLOVER_CHECK := duration * timecode_scale;
    if c_transpiler_float_greater(ROLLOVER_CHECK, 9223372036854776000.0) {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if pos != STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

init_56 :: (using ebml_header: *EBML_Header) {
    version = 1;
    read_version = 1;
    max_id_length = 4;
    max_size_length = 8;

    if doc_type != null {
        {
            cpp_transpiler_delete_g82 := cast,no_check(*s8) (doc_type);
            if cpp_transpiler_delete_g82 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g82);
            }
        }
        doc_type = cast,no_check(*s8) (cast(*s8) null);
    }

    doc_type_version = 1;
    doc_type_read_version = 1;
}

init_55 :: (using ebml_header: *EBML_Header) {
    doc_type = cast,no_check(*s8) (cast(*s8) null);
    init_56(ebml_header);
}

deinit_42 :: (using ebml_header: *EBML_Header) {
    {
        cpp_transpiler_delete_g83 := cast,no_check(*s8) (doc_type);
        if cpp_transpiler_delete_g83 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g83);
        }
    }
}

parse :: (using ebml_header: *EBML_Header, p_reader: *I_Mkv_Reader, pos: *s64) -> s64 {
    if p_reader == null {
        return cast,no_check(s64) -cast(s32) 2;
    }

    total, available: s64 = ---;

    status :=
        cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(
            p_reader,
            *total,
            *available
        );

    if status < 0 {
        return status;
    }

    ((cast(**s64) *(pos)).*).* = 0;

    K_MAX_SCAN_BYTES := (ifx available >= 1024 then 1024 else available);
    K_EBML_BYTE0: u8 = 0x1a;
    scan_byte: u8 = 0;

    while pos.* < K_MAX_SCAN_BYTES {
        status =
            cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
                p_reader,
                pos.*,
                1,
                *scan_byte
            );

        if status < 0 {
            return status;
        } else if status > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if scan_byte == K_EBML_BYTE0 {
            break;
        }

        pos.* += 1;
    }

    len: s64 = 0;
    EBML_ID := mkvparser_ReadID(p_reader, pos.*, *len);

    if EBML_ID == cast,no_check(s64) -cast(s32) 3 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    if len != 4 || EBML_ID != cast,no_check(s64) LIBWEBM_K_MKV_EBML {
        return cast,no_check(s64) -cast(s32) 2;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (cast(s64) 4), s64, s64);

    result := mkvparser_GetUIntLength(p_reader, pos.*, *len);

    if result < 0 {
        return cast,no_check(s64) -cast(s32) 2;
    } else if result > 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    if len < 1 || len > 8 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if total >= 0 && total - pos.* < len {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if available - pos.* < len {
        return pos.* + len;
    }

    result = mkvparser_ReadUInt(p_reader, pos.*, *len);

    if result < 0 {
        return result;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len), s64, s64);

    if total >= 0 && total - pos.* < result {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if available - pos.* < result {
        return pos.* + result;
    }

    END := pos.* + result;

    init_56(ebml_header);

    while pos.* < END {
        id, size: s64 = ---;

        status = mkvparser_ParseElementHeader(p_reader, pos, END, *id, *size);

        if status < 0 {
            return status;
        }

        if size == 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if id == cast,no_check(s64) LIBWEBM_K_MKV_EBML_VERSION {
            version = mkvparser_UnserializeUInt(p_reader, pos.*, size);

            if version <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_EBML_READ_VERSION {
            read_version = mkvparser_UnserializeUInt(p_reader, pos.*, size);

            if read_version <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_EBML_MAX_ID_LENGTH {
            max_id_length = mkvparser_UnserializeUInt(p_reader, pos.*, size);

            if max_id_length <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_EBML_MAX_SIZE_LENGTH {
            max_size_length = mkvparser_UnserializeUInt(p_reader, pos.*, size);

            if max_size_length <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_DOC_TYPE {
            if doc_type != null {
                return cast,no_check(s64) -cast(s32) 2;
            }

            status = mkvparser_UnserializeString(p_reader, pos.*, size, *doc_type);

            if status != 0 {
                return status;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_DOC_TYPE_VERSION {
            doc_type_version = mkvparser_UnserializeUInt(p_reader, pos.*, size);

            if doc_type_version <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        } else if id == cast,no_check(s64) LIBWEBM_K_MKV_DOC_TYPE_READ_VERSION {
            doc_type_read_version = mkvparser_UnserializeUInt(p_reader, pos.*, size);

            if doc_type_read_version <= 0 {
                return cast,no_check(s64) -cast(s32) 2;
            }
        }

        c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (size), s64, s64);
    }

    if pos.* != END {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if doc_type == null || doc_type_read_version <= 0 || doc_type_version <= 0 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if max_id_length <= 0 || max_id_length > 4 || max_size_length <= 0 || max_size_length > 8 {
        return cast,no_check(s64) -cast(s32) 2;
    }

    return 0;
}

init_58 :: (using block: *Block, _start: s64, _size: s64, _discard_padding: s64) {
    start = _start;
    size = _size;
    track = 0;
    timecode = -1;
    flags = 0;
    frames = cast,no_check(*Block_Frame) (cast(*Block_Frame) null);
    frame_count = -1;
    discard_padding = _discard_padding;
}

deinit_43 :: (using block: *Block) {
    {
        cpp_transpiler_delete_g84 := cast,no_check(*Block_Frame) (frames);
        if cpp_transpiler_delete_g84 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g84);
        }
    }
}

is_invisible :: (using block: *Block) -> bool {
    return flags & 0x8 != 0;
}

get_lacing :: (using block: *Block) -> Block_Lacing {
    VALUE := (cast(s32) flags) & 0x6 >> 1;
    return cast,no_check(Block_Lacing) VALUE;
}

get_frame_count :: (using block: *Block) -> s32 {
    return frame_count;
}

read_3 :: (using frame: *Block_Frame, p_reader: *I_Mkv_Reader, buf: *u8) -> s64 {
    assert(p_reader != null);
    assert(buf != null);

    STATUS := cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(p_reader, pos, len, buf);
    return STATUS;
}

get_frame :: (using block: *Block, idx: s32) -> *Block_Frame {
    assert(idx >= 0);
    assert(idx < frame_count);

    f := cast,no_check(*Block_Frame) (*frames[idx]);
    assert(f.pos > 0);
    assert(f.len > 0);

    return (cast(**Block_Frame) *(f)).*;
}

get_discard_padding :: (using block: *Block) -> s64 {
    return discard_padding;
}

init_60 :: (using block_entry: *Block_Entry, p: *Mkvparser_Cluster, idx: s64) {
    cpp_transpiler_dynamic_type_BlockEntry = 6;
    p_cluster = cast,no_check(*Mkvparser_Cluster) p;
    index = idx;
}

deinit_44 :: (using block_entry: *Block_Entry) {
    cpp_transpiler_dynamic_type_BlockEntry = 6;
}

init_62 :: (using simple_block: *Simple_Block, p_cluster: *Mkvparser_Cluster, idx: s64, start: s64, size: s64) {
    init_60(*block_entry, p_cluster, idx);
    block_entry.cpp_transpiler_dynamic_type_BlockEntry = 7;
    init_58(*block, start, size, 0);
}

get_kind :: (using simple_block: *Simple_Block) -> Block_Entry_Kind {
    return MKVPARSER_BLOCK_ENTRY_K_BLOCK_SIMPLE;
}

get_block :: (using simple_block: *Simple_Block) -> *Block {
    return *block;
}

init_64 :: (
    using block_group: *Block_Group,
    p_cluster: *Mkvparser_Cluster,
    idx: s64,
    block_start: s64,
    block_size: s64,
    _prev: s64,
    _next: s64,
    _duration: s64,
    discard_padding: s64
) {
    init_60(*block_entry, p_cluster, idx);
    block_entry.cpp_transpiler_dynamic_type_BlockEntry = 8;
    init_58(*block, block_start, block_size, discard_padding);
    prev = _prev;
    next = _next;
    duration = _duration;
}

get_kind :: (using block_group: *Block_Group) -> Block_Entry_Kind {
    return MKVPARSER_BLOCK_ENTRY_K_BLOCK_GROUP;
}

get_block :: (using block_group: *Block_Group) -> *Block {
    return *block;
}

get_prev_time_code :: (using block_group: *Block_Group) -> s64 {
    return prev;
}

get_next_time_code :: (using block_group: *Block_Group) -> s64 {
    return next;
}

get_duration_time_code :: (using block_group: *Block_Group) -> s64 {
    return duration;
}

init_65 :: (using content_encoding: *Mkvparser_Content_Encoding) {
    compression_entries =
        cast,no_check(**Content_Encoding_Content_Compression) (cast(**Content_Encoding_Content_Compression) null);
    compression_entries_end =
        cast,no_check(**Content_Encoding_Content_Compression) (cast(**Content_Encoding_Content_Compression) null);
    encryption_entries =
        cast,no_check(**Content_Encoding_Content_Encryption) (cast(**Content_Encoding_Content_Encryption) null);
    encryption_entries_end =
        cast,no_check(**Content_Encoding_Content_Encryption) (cast(**Content_Encoding_Content_Encryption) null);
    encoding_order = 0;
    encoding_scope = 1;
    encoding_type = 0;
}

deinit_47 :: (using content_encoding: *Mkvparser_Content_Encoding) {
    comp_i := cast,no_check(**Content_Encoding_Content_Compression) (compression_entries);
    COMP_J := cast,no_check(**Content_Encoding_Content_Compression) (compression_entries_end);

    while comp_i != COMP_J {
        COMP := cast,no_check(*Content_Encoding_Content_Compression) ((c_transpiler_post_increment(*(comp_i))).*);
        {
            cpp_transpiler_delete_g85 := cast,no_check(*Content_Encoding_Content_Compression) (COMP);
            if cpp_transpiler_delete_g85 != null {
                deinit_48(cpp_transpiler_delete_g85);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g85);
            }
        }
    }

    {
        cpp_transpiler_delete_g86 := cast,no_check(**Content_Encoding_Content_Compression) (compression_entries);
        if cpp_transpiler_delete_g86 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g86);
        }
    }

    enc_i := cast,no_check(**Content_Encoding_Content_Encryption) (encryption_entries);
    ENC_J := cast,no_check(**Content_Encoding_Content_Encryption) (encryption_entries_end);

    while enc_i != ENC_J {
        ENC := cast,no_check(*Content_Encoding_Content_Encryption) ((c_transpiler_post_increment(*(enc_i))).*);
        {
            cpp_transpiler_delete_g87 := cast,no_check(*Content_Encoding_Content_Encryption) (ENC);
            if cpp_transpiler_delete_g87 != null {
                deinit_50(cpp_transpiler_delete_g87);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g87);
            }
        }
    }

    {
        cpp_transpiler_delete_g88 := cast,no_check(**Content_Encoding_Content_Encryption) (encryption_entries);
        if cpp_transpiler_delete_g88 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g88);
        }
    }
}

init_66 :: (using content_compression: *Content_Encoding_Content_Compression) {
    algo = 0;
    settings = cast,no_check(*u8) (cast(*u8) null);
    settings_len = 0;
}

deinit_48 :: (using content_compression: *Content_Encoding_Content_Compression) {
    {
        cpp_transpiler_delete_g89 := cast,no_check(*u8) (settings);
        if cpp_transpiler_delete_g89 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g89);
        }
    }
}

init_68 :: (using content_encryption: *Content_Encoding_Content_Encryption) {
    algo = 0;
    key_id = cast,no_check(*u8) (cast(*u8) null);
    key_id_len = 0;
    signature = cast,no_check(*u8) (cast(*u8) null);
    signature_len = 0;
    sig_key_id = cast,no_check(*u8) (cast(*u8) null);
    sig_key_id_len = 0;
    sig_algo = 0;
    sig_hash_algo = 0;
    init_67(*aes_settings);
}

deinit_50 :: (using content_encryption: *Content_Encoding_Content_Encryption) {
    cpp_transpiler_subobject_cleanup_g90: bool = ---;
    defer deinit_49(*aes_settings);
    {
        cpp_transpiler_delete_g91 := cast,no_check(*u8) (key_id);
        if cpp_transpiler_delete_g91 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g91);
        }
    }
    {
        cpp_transpiler_delete_g92 := cast,no_check(*u8) (signature);
        if cpp_transpiler_delete_g92 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g92);
        }
    }
    {
        cpp_transpiler_delete_g93 := cast,no_check(*u8) (sig_key_id);
        if cpp_transpiler_delete_g93 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g93);
        }
    }
}

get_compression_by_index :: (
    using content_encoding: *Mkvparser_Content_Encoding,
    idx: u64
) -> *Content_Encoding_Content_Compression {
    COUNT := compression_entries_end - compression_entries;
    assert(COUNT >= 0);

    if idx >= cast,no_check(u64) COUNT {
        return cast(*Content_Encoding_Content_Compression) null;
    }

    return compression_entries[idx];
}

get_compression_count :: (using content_encoding: *Mkvparser_Content_Encoding) -> u64 {
    COUNT := compression_entries_end - compression_entries;
    assert(COUNT >= 0);

    return cast,no_check(u64) COUNT;
}

get_encryption_by_index :: (
    using content_encoding: *Mkvparser_Content_Encoding,
    idx: u64
) -> *Content_Encoding_Content_Encryption {
    COUNT := encryption_entries_end - encryption_entries;
    assert(COUNT >= 0);

    if idx >= cast,no_check(u64) COUNT {
        return cast(*Content_Encoding_Content_Encryption) null;
    }

    return encryption_entries[idx];
}

get_encryption_count :: (using content_encoding: *Mkvparser_Content_Encoding) -> u64 {
    COUNT := encryption_entries_end - encryption_entries;
    assert(COUNT >= 0);

    return cast,no_check(u64) COUNT;
}

deinit_51 :: (using track: *Mkvparser_Track) {
    cpp_transpiler_dynamic_type_Track = 3;
    cpp_transpiler_subobject_cleanup_g94: bool = ---;
    defer deinit_52(*info);
    cpp_transpiler_subobject_cleanup_g95: bool = ---;
    defer deinit_53(*eos);
    {
        _info := cast,no_check(*Track_Info) (*info);
        clear_6(_info);

        i := cast,no_check(**Mkvparser_Content_Encoding) (content_encoding_entries);
        J := cast,no_check(**Mkvparser_Content_Encoding) (content_encoding_entries_end);

        while i != J {
            ENCODING := cast,no_check(*Mkvparser_Content_Encoding) ((c_transpiler_post_increment(*(i))).*);
            {
                cpp_transpiler_delete_g96 := cast,no_check(*Mkvparser_Content_Encoding) (ENCODING);
                if cpp_transpiler_delete_g96 != null {
                    deinit_47(cpp_transpiler_delete_g96);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g96);
                }
            }
        }

        {
            cpp_transpiler_delete_g97 := cast,no_check(**Mkvparser_Content_Encoding) (content_encoding_entries);
            if cpp_transpiler_delete_g97 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g97);
            }
        }
    }
}

get_uid :: (using track: *Mkvparser_Track) -> u64 {
    return info.uid;
}

get_name_as_utf8 :: (using track: *Mkvparser_Track) -> *s8 {
    return info.name_as_utf8;
}

get_language :: (using track: *Mkvparser_Track) -> *s8 {
    return info.language;
}

get_codec_name_as_utf8 :: (using track: *Mkvparser_Track) -> *s8 {
    return info.codec_name_as_utf8;
}

get_codec_id :: (using track: *Mkvparser_Track) -> *s8 {
    return info.codec_id;
}

get_codec_private :: (using track: *Mkvparser_Track, size: *u64) -> *u8 {
    assignment_76: u64 = info.codec_private_size;
    ((cast,no_check(*u64) *(((cast(**u64) *(size)).*).*)).*) = assignment_76;
    return info.codec_private;
}

get_lacing :: (using track: *Mkvparser_Track) -> bool {
    return info.lacing;
}

get_default_duration :: (using track: *Mkvparser_Track) -> u64 {
    return info.default_duration;
}

get_codec_delay :: (using track: *Mkvparser_Track) -> u64 {
    return info.codec_delay;
}

get_seek_pre_roll :: (using track: *Mkvparser_Track) -> u64 {
    return info.seek_pre_roll;
}

init_71 :: (using info: *Track_Info) {
    uid = 0;
    default_duration = 0;
    codec_delay = 0;
    seek_pre_roll = 0;
    name_as_utf8 = cast,no_check(*s8) (cast(*s8) null);
    language = cast,no_check(*s8) (cast(*s8) null);
    codec_id = cast,no_check(*s8) (cast(*s8) null);
    codec_name_as_utf8 = cast,no_check(*s8) (cast(*s8) null);
    codec_private = cast,no_check(*u8) (cast(*u8) null);
    codec_private_size = 0;
    lacing = false;
}

deinit_52 :: (using info: *Track_Info) {
    clear_6(info);
}

get_next :: (track: *Mkvparser_Track, p_curr_entry: *Block_Entry, p_next_entry: **Block_Entry) -> s64 {
    assert(p_curr_entry != null);
    assert(!eos(p_curr_entry));

    P_CURR_BLOCK := cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(p_curr_entry));
    assert(P_CURR_BLOCK != null && get_track_number(P_CURR_BLOCK) == track.info.number);
    if P_CURR_BLOCK == null || get_track_number(P_CURR_BLOCK) != track.info.number {
        return -1;
    }

    p_cluster: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) get_cluster(p_curr_entry);
    assert(p_cluster != null);
    assert(!eos(p_cluster));

    status := get_next(p_cluster, p_curr_entry, p_next_entry);

    if status < 0 {
        return status;
    }

    {
        i: s32 = 0;
        while true {
            while (((cast(**Block_Entry) p_next_entry).*) != null) {
                P_NEXT_BLOCK :=
                    cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(
                        (cast(**Block_Entry) p_next_entry).*
                    ));
                assert(P_NEXT_BLOCK != null);

                if get_track_number(P_NEXT_BLOCK) == track.info.number {
                    return 0;
                }

                p_curr_entry = cast,no_check(*Block_Entry) ((cast(**Block_Entry) p_next_entry).*);

                status = get_next(p_cluster, p_curr_entry, p_next_entry);

                if status < 0 {
                    return status;
                }
            }

            p_cluster = cast,no_check(*Mkvparser_Cluster) (get_next(track.p_segment, p_cluster));

            if p_cluster == null {
                assignment_77: *Block_Entry = cast,no_check(*Block_Entry) (get_eos(track));
                ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_next_entry).*)).*) = assignment_77;
                return 1;
            }

            if eos(p_cluster) {
                if done_parsing(track.p_segment) {
                    assignment_78: *Block_Entry = cast,no_check(*Block_Entry) (get_eos(track));
                    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_next_entry).*)).*) = assignment_78;
                    return 1;
                }

                (cast(**Block_Entry) p_next_entry).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);
                return cast,no_check(s64) -cast(s32) 3;
            }

            status = get_first(p_cluster, p_next_entry);

            if status < 0 {
                return status;
            }

            if (cast(**Block_Entry) p_next_entry).* == null {
                continue;
            }

            i += 1;

            if i >= 100 {
                break;
            }
        }
    }

    assignment_79: *Block_Entry = cast,no_check(*Block_Entry) (get_eos(track));
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_next_entry).*)).*) = assignment_79;
    return 1;
}

seek :: (track: *Mkvparser_Track, time_ns: s64, p_result: **Block_Entry) -> s64 {
    STATUS := get_first(track, p_result);

    if STATUS < 0 {
        return STATUS;
    }

    assert((((cast(**Block_Entry) p_result).*) != null));

    if eos((cast(**Block_Entry) p_result).*) {
        return 0;
    }

    p_cluster: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) get_cluster((cast(**Block_Entry) p_result).*);
    assert(p_cluster != null);
    assert(get_index(p_cluster) >= 0);

    if time_ns <= get_time(cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock((cast(**Block_Entry) p_result).*), p_cluster) {
        return 0;
    }

    CLUSTERS := cast,no_check(**Mkvparser_Cluster) (track.p_segment.clusters);
    assert(CLUSTERS != null);

    COUNT := cast,no_check(s64) get_count(track.p_segment);
    assert(COUNT > 0);

    I := cast,no_check(**Mkvparser_Cluster) ((CLUSTERS + get_index(p_cluster)));
    assert(I != null);
    assert(I.* == p_cluster);
    assert(get_time(p_cluster) <= time_ns);

    J := cast,no_check(**Mkvparser_Cluster) ((CLUSTERS + COUNT));

    lo := cast,no_check(**Mkvparser_Cluster) (I);
    hi := cast,no_check(**Mkvparser_Cluster) (J);

    while lo < hi {
        MID := cast,no_check(**Mkvparser_Cluster) ((lo + (hi - lo) / 2));
        assert(MID < hi);

        p_cluster = cast,no_check(*Mkvparser_Cluster) (MID.*);
        assert(p_cluster != null);
        assert(get_index(p_cluster) >= 0);
        assert(get_index(p_cluster) == MID - track.p_segment.clusters);

        T := get_time(p_cluster);

        if T <= time_ns {
            lo = cast,no_check(**Mkvparser_Cluster) ((MID + 1));
        } else {
            hi = cast,no_check(**Mkvparser_Cluster) (MID);
        }

        assert(lo <= hi);
    }

    assert(lo == hi);
    assert(lo > I);
    assert(lo <= J);

    while lo > I {
        p_cluster = cast,no_check(*Mkvparser_Cluster) ((c_transpiler_pre_decrement(*(lo))).*);
        assert(p_cluster != null);
        assert(get_time(p_cluster) <= time_ns);

        assignment_80: *Block_Entry = cast,no_check(*Block_Entry) (get_entry(p_cluster, track, -1));
        ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_result).*)).*) = assignment_80;

        if (cast(**Block_Entry) p_result).* != null && !eos((cast(**Block_Entry) p_result).*) {
            return 0;
        }
    }

    assignment_81: *Block_Entry = cast,no_check(*Block_Entry) (get_eos(track));
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_result).*)).*) = assignment_81;
    return 0;
}

get_content_encoding_by_index :: (using track: *Mkvparser_Track, idx: u64) -> *Mkvparser_Content_Encoding {
    COUNT := content_encoding_entries_end - content_encoding_entries;
    assert(COUNT >= 0);

    if idx >= cast,no_check(u64) COUNT {
        return cast(*Mkvparser_Content_Encoding) null;
    }

    return content_encoding_entries[idx];
}

get_content_encoding_count :: (using track: *Mkvparser_Track) -> u64 {
    COUNT := content_encoding_entries_end - content_encoding_entries;
    assert(COUNT >= 0);

    return cast,no_check(u64) COUNT;
}

init_73 :: (using track: *Mkvparser_Track, _p_segment: *Mkvparser_Segment, _element_start: s64, _element_size: s64) {
    cpp_transpiler_dynamic_type_Track = 3;
    p_segment = cast,no_check(*Mkvparser_Segment) _p_segment;
    element_start = _element_start;
    element_size = _element_size;
    init_71(*info);
    init_74(*eos);

    content_encoding_entries = cast,no_check(**Mkvparser_Content_Encoding) (cast(**Mkvparser_Content_Encoding) null);
    content_encoding_entries_end =
        cast,no_check(**Mkvparser_Content_Encoding) (cast(**Mkvparser_Content_Encoding) null);
}

init_74 :: (using eos_block: *Track_EOS_Block) {
    init_60(*block_entry, cast(*Mkvparser_Cluster) null, cast,no_check(s64) (-9223372036854775807 - 1));
    block_entry.cpp_transpiler_dynamic_type_BlockEntry = 9;
}

get_kind :: (using eos_block: *Track_EOS_Block) -> Block_Entry_Kind {
    return MKVPARSER_BLOCK_ENTRY_K_BLOCK_EOS;
}

get_block :: (using eos_block: *Track_EOS_Block) -> *Block {
    return cast(*Block) null;
}

init_80 :: (
    using video_track: *Mkvparser_Video_Track,
    p_segment: *Mkvparser_Segment,
    element_start: s64,
    element_size: s64
) {
    init_73(*track, p_segment, element_start, element_size);
    track.cpp_transpiler_dynamic_type_Track = 4;
    colour_space = cast,no_check(*s8) (cast(*s8) null);
    colour = cast,no_check(*Mkvparser_Colour) (cast(*Mkvparser_Colour) null);
    projection = cast,no_check(*Mkvparser_Projection) (cast(*Mkvparser_Projection) null);
}

deinit_58 :: (using video_track: *Mkvparser_Video_Track) {
    track.cpp_transpiler_dynamic_type_Track = 4;
    cpp_transpiler_subobject_cleanup_g98: bool = ---;
    defer deinit_51(*track);
    {
        cpp_transpiler_delete_g99 := cast,no_check(*s8) (colour_space);
        if cpp_transpiler_delete_g99 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g99);
        }
    }
    {
        cpp_transpiler_delete_g100 := cast,no_check(*Mkvparser_Colour) (colour);
        if cpp_transpiler_delete_g100 != null {
            deinit_56(cpp_transpiler_delete_g100);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g100);
        }
    }
    {
        cpp_transpiler_delete_g101 := cast,no_check(*Mkvparser_Projection) (projection);
        if cpp_transpiler_delete_g101 != null {
            deinit_57(cpp_transpiler_delete_g101);
            cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g101);
        }
    }
}

get_display_width :: (using video_track: *Mkvparser_Video_Track) -> s64 {
    return ifx display_width > 0 then display_width else get_width(video_track);
}

get_display_height :: (using video_track: *Mkvparser_Video_Track) -> s64 {
    return ifx display_height > 0 then display_height else get_height(video_track);
}

get_display_unit :: (using video_track: *Mkvparser_Video_Track) -> s64 {
    return display_unit;
}

get_stereo_mode :: (using video_track: *Mkvparser_Video_Track) -> s64 {
    return stereo_mode;
}

get_frame_rate :: (using video_track: *Mkvparser_Video_Track) -> float64 {
    return rate;
}

vet_entry :: (using video_track: *Mkvparser_Video_Track, p_block_entry: *Block_Entry) -> bool {
    return vet_entry(*track, p_block_entry) && is_key(cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(p_block_entry));
}

seek :: (using video_track: *Mkvparser_Video_Track, time_ns: s64, p_result: **Block_Entry) -> s64 {
    STATUS := get_first(*track, p_result);

    if STATUS < 0 {
        return STATUS;
    }

    assert((((cast(**Block_Entry) p_result).*) != null));

    if eos((cast(**Block_Entry) p_result).*) {
        return 0;
    }

    p_cluster: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) get_cluster((cast(**Block_Entry) p_result).*);
    assert(p_cluster != null);
    assert(get_index(p_cluster) >= 0);

    if time_ns <= get_time(cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock((cast(**Block_Entry) p_result).*), p_cluster) {
        return 0;
    }

    CLUSTERS := cast,no_check(**Mkvparser_Cluster) ((track.p_segment).clusters);
    assert(CLUSTERS != null);

    COUNT := cast,no_check(s64) get_count(track.p_segment);
    assert(COUNT > 0);

    I := cast,no_check(**Mkvparser_Cluster) ((CLUSTERS + get_index(p_cluster)));
    assert(I != null);
    assert(I.* == p_cluster);
    assert(get_time(p_cluster) <= time_ns);

    J := cast,no_check(**Mkvparser_Cluster) ((CLUSTERS + COUNT));

    lo := cast,no_check(**Mkvparser_Cluster) (I);
    hi := cast,no_check(**Mkvparser_Cluster) (J);

    while lo < hi {
        MID := cast,no_check(**Mkvparser_Cluster) ((lo + (hi - lo) / 2));
        assert(MID < hi);

        p_cluster = cast,no_check(*Mkvparser_Cluster) (MID.*);
        assert(p_cluster != null);
        assert(get_index(p_cluster) >= 0);
        assert(get_index(p_cluster) == MID - (track.p_segment).clusters);

        T := get_time(p_cluster);

        if T <= time_ns {
            lo = cast,no_check(**Mkvparser_Cluster) ((MID + 1));
        } else {
            hi = cast,no_check(**Mkvparser_Cluster) (MID);
        }

        assert(lo <= hi);
    }

    assert(lo == hi);
    assert(lo > I);
    assert(lo <= J);

    p_cluster = cast,no_check(*Mkvparser_Cluster) ((c_transpiler_pre_decrement(*(lo))).*);
    assert(p_cluster != null);
    assert(get_time(p_cluster) <= time_ns);

    assignment_82: *Block_Entry = cast,no_check(*Block_Entry) (get_entry(p_cluster, *track, time_ns));
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_result).*)).*) = assignment_82;

    if (cast(**Block_Entry) p_result).* != null && !eos((cast(**Block_Entry) p_result).*) {
        return 0;
    }

    while lo != I {
        p_cluster = cast,no_check(*Mkvparser_Cluster) ((c_transpiler_pre_decrement(*(lo))).*);
        assert(p_cluster != null);
        assert(get_time(p_cluster) <= time_ns);

        assignment_83: *Block_Entry = cast,no_check(*Block_Entry) (get_entry(p_cluster, *track, time_ns));
        ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_result).*)).*) = assignment_83;

        if (cast(**Block_Entry) p_result).* != null && !eos((cast(**Block_Entry) p_result).*) {
            return 0;
        }
    }

    assignment_84: *Block_Entry = cast,no_check(*Block_Entry) (get_eos(*track));
    ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_result).*)).*) = assignment_84;
    return 0;
}

get_colour :: (using video_track: *Mkvparser_Video_Track) -> *Mkvparser_Colour {
    return colour;
}

get_projection :: (using video_track: *Mkvparser_Video_Track) -> *Mkvparser_Projection {
    return projection;
}

init_82 :: (
    using audio_track: *Mkvparser_Audio_Track,
    p_segment: *Mkvparser_Segment,
    element_start: s64,
    element_size: s64
) {
    init_73(*track, p_segment, element_start, element_size);
    track.cpp_transpiler_dynamic_type_Track = 5;
}

get_sampling_rate :: (using audio_track: *Mkvparser_Audio_Track) -> float64 {
    return rate;
}

get_channels :: (using audio_track: *Mkvparser_Audio_Track) -> s64 {
    return channels;
}

get_bit_depth :: (using audio_track: *Mkvparser_Audio_Track) -> s64 {
    return bit_depth;
}

init_84 :: (
    using tracks: *Mkvparser_Tracks,
    _p_segment: *Mkvparser_Segment,
    _start: s64,
    _size: s64,
    _element_start: s64,
    _element_size: s64
) {
    p_segment = cast,no_check(*Mkvparser_Segment) _p_segment;
    start = _start;
    size = _size;
    element_start = _element_start;
    element_size = _element_size;
    track_entries = cast,no_check(**Mkvparser_Track) (cast(**Mkvparser_Track) null);
    track_entries_end = cast,no_check(**Mkvparser_Track) (cast(**Mkvparser_Track) null);
}

deinit_60 :: (using tracks: *Mkvparser_Tracks) {
    i := cast,no_check(**Mkvparser_Track) (track_entries);
    J := cast,no_check(**Mkvparser_Track) (track_entries_end);

    while i != J {
        P_TRACK := cast,no_check(*Mkvparser_Track) ((c_transpiler_post_increment(*(i))).*);
        {
            cpp_transpiler_delete_g102 := cast,no_check(*Mkvparser_Track) (P_TRACK);
            if cpp_transpiler_delete_g102 != null {
                cpp_transpiler_dispatch_mkvparser_Track_destructor(cpp_transpiler_delete_g102);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g102);
            }
        }
    }

    {
        cpp_transpiler_delete_g103 := cast,no_check(**Mkvparser_Track) (track_entries);
        if cpp_transpiler_delete_g103 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g103);
        }
    }
}

get_tracks_count :: (using tracks: *Mkvparser_Tracks) -> u64 {
    RESULT := track_entries_end - track_entries;
    assert(RESULT >= 0);

    return cast,no_check(u64) RESULT;
}

get_track_by_index :: (using tracks: *Mkvparser_Tracks, idx: u64) -> *Mkvparser_Track {
    COUNT := track_entries_end - track_entries;

    if idx >= cast,no_check(u64) COUNT {
        return cast(*Mkvparser_Track) null;
    }

    return track_entries[idx];
}

init_86 :: (
    using chapters: *Mkvparser_Chapters,
    _p_segment: *Mkvparser_Segment,
    payload_start: s64,
    payload_size: s64,
    _element_start: s64,
    _element_size: s64
) {
    p_segment = cast,no_check(*Mkvparser_Segment) _p_segment;
    start = payload_start;
    size = payload_size;
    element_start = _element_start;
    element_size = _element_size;
    editions = cast,no_check(*Chapters_Edition) (cast(*Chapters_Edition) null);
    editions_size = 0;
    editions_count = 0;
}

deinit_61 :: (using chapters: *Mkvparser_Chapters) {
    while editions_count > 0 {
        e := cast,no_check(*Chapters_Edition) (*editions[c_transpiler_pre_decrement(*(editions_count))]);
        clear_9(e);
    }
    {
        cpp_transpiler_delete_g104 := cast,no_check(*Chapters_Edition) (editions);
        if cpp_transpiler_delete_g104 != null {
            cpp_transpiler_delete_index_g105 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g104);
            while cpp_transpiler_delete_index_g105 > 0 {
                cpp_transpiler_delete_index_g105 -= 1;
                deinit_64(cpp_transpiler_delete_g104 + cpp_transpiler_delete_index_g105);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g104);
        }
    }
}

init_87 :: (using display: *Chapters_Display) {
}

deinit_62 :: (using display: *Chapters_Display) {
}

get_string :: (using display: *Chapters_Display) -> *s8 {
    return string_;
}

get_language :: (using display: *Chapters_Display) -> *s8 {
    return language;
}

get_country :: (using display: *Chapters_Display) -> *s8 {
    return country;
}

init_90 :: (using atom: *Chapters_Atom) {
}

deinit_63 :: (using atom: *Chapters_Atom) {
}

get_uid :: (using atom: *Chapters_Atom) -> u64 {
    return uid;
}

get_string_uid :: (using atom: *Chapters_Atom) -> *s8 {
    return string_uid;
}

get_start_timecode :: (using atom: *Chapters_Atom) -> s64 {
    return start_timecode;
}

get_stop_timecode :: (using atom: *Chapters_Atom) -> s64 {
    return stop_timecode;
}

get_start_time :: (using atom: *Chapters_Atom, p_chapters: *Mkvparser_Chapters) -> s64 {
    return get_time(p_chapters, start_timecode);
}

get_time :: (p_chapters: *Mkvparser_Chapters, timecode: s64) -> s64 {
    if p_chapters == null {
        return -1;
    }

    P_SEGMENT: *Mkvparser_Segment = cast,no_check(*Mkvparser_Segment) p_chapters.p_segment;

    if P_SEGMENT == null {
        return -1;
    }

    P_INFO := cast,no_check(*Mkvparser_Segment_Info) (get_info(P_SEGMENT));

    if P_INFO == null {
        return -1;
    }

    TIMECODE_SCALE := get_time_code_scale(P_INFO);

    if TIMECODE_SCALE < 1 {
        return -1;
    }

    if timecode < 0 {
        return -1;
    }

    RESULT := TIMECODE_SCALE * timecode;

    return RESULT;
}

get_stop_time :: (using atom: *Chapters_Atom, p_chapters: *Mkvparser_Chapters) -> s64 {
    return get_time(p_chapters, stop_timecode);
}

get_display_count :: (using atom: *Chapters_Atom) -> s32 {
    return displays_count;
}

get_display :: (using atom: *Chapters_Atom, index: s32) -> *Chapters_Display {
    if index < 0 {
        return cast(*Chapters_Display) null;
    }

    if index >= displays_count {
        return cast(*Chapters_Display) null;
    }

    return displays + index;
}

init_93 :: (using edition: *Chapters_Edition) {
}

deinit_64 :: (using edition: *Chapters_Edition) {
}

get_atom_count :: (using edition: *Chapters_Edition) -> s32 {
    return atoms_count;
}

get_atom :: (using edition: *Chapters_Edition, index: s32) -> *Chapters_Atom {
    if index < 0 {
        return cast(*Chapters_Atom) null;
    }

    if index >= atoms_count {
        return cast(*Chapters_Atom) null;
    }

    return atoms + index;
}

get_edition_count :: (using chapters: *Mkvparser_Chapters) -> s32 {
    return editions_count;
}

get_edition :: (using chapters: *Mkvparser_Chapters, idx: s32) -> *Chapters_Edition {
    if idx < 0 {
        return cast(*Chapters_Edition) null;
    }

    if idx >= editions_count {
        return cast(*Chapters_Edition) null;
    }

    return editions + idx;
}

init_97 :: (
    using _tags: *Mkvparser_Tags,
    _p_segment: *Mkvparser_Segment,
    payload_start: s64,
    payload_size: s64,
    _element_start: s64,
    _element_size: s64
) {
    p_segment = cast,no_check(*Mkvparser_Segment) _p_segment;
    start = payload_start;
    size = payload_size;
    element_start = _element_start;
    element_size = _element_size;
    tags = cast,no_check(*Tags_Tag) (cast(*Tags_Tag) null);
    tags_size = 0;
    tags_count = 0;
}

deinit_65 :: (using _tags: *Mkvparser_Tags) {
    while tags_count > 0 {
        t := cast,no_check(*Tags_Tag) (*tags[c_transpiler_pre_decrement(*(tags_count))]);
        clear_11(t);
    }
    {
        cpp_transpiler_delete_g106 := cast,no_check(*Tags_Tag) (tags);
        if cpp_transpiler_delete_g106 != null {
            cpp_transpiler_delete_index_g107 := cpp_transpiler_array_count(cast(*void) cpp_transpiler_delete_g106);
            while cpp_transpiler_delete_index_g107 > 0 {
                cpp_transpiler_delete_index_g107 -= 1;
                deinit_67(cpp_transpiler_delete_g106 + cpp_transpiler_delete_index_g107);
            }
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g106);
        }
    }
}

init_98 :: (using simple_tag: *Tags_Simple_Tag) {
}

deinit_66 :: (using simple_tag: *Tags_Simple_Tag) {
}

get_tag_name :: (using simple_tag: *Tags_Simple_Tag) -> *s8 {
    return tag_name;
}

get_tag_string :: (using simple_tag: *Tags_Simple_Tag) -> *s8 {
    return tag_string;
}

init_101 :: (using tag: *Tags_Tag) {
}

deinit_67 :: (using tag: *Tags_Tag) {
}

get_simple_tag_count :: (using tag: *Tags_Tag) -> s32 {
    return simple_tags_count;
}

get_simple_tag :: (using tag: *Tags_Tag, index: s32) -> *Tags_Simple_Tag {
    if index < 0 {
        return cast(*Tags_Simple_Tag) null;
    }

    if index >= simple_tags_count {
        return cast(*Tags_Simple_Tag) null;
    }

    return simple_tags + index;
}

get_tag_count :: (using _tags: *Mkvparser_Tags) -> s32 {
    return tags_count;
}

get_tag :: (using _tags: *Mkvparser_Tags, idx: s32) -> *Tags_Tag {
    if idx < 0 {
        return cast(*Tags_Tag) null;
    }

    if idx >= tags_count {
        return cast(*Tags_Tag) null;
    }

    return tags + idx;
}

init_105 :: (
    using segment_info: *Mkvparser_Segment_Info,
    _p_segment: *Mkvparser_Segment,
    _start: s64,
    _size: s64,
    _element_start: s64,
    _element_size: s64
) {
    p_segment = cast,no_check(*Mkvparser_Segment) _p_segment;
    start = _start;
    size = _size;
    element_start = _element_start;
    element_size = _element_size;
    p_muxing_app_as_utf8 = cast,no_check(*s8) (cast(*s8) null);
    p_writing_app_as_utf8 = cast,no_check(*s8) (cast(*s8) null);
    p_title_as_utf8 = cast,no_check(*s8) (cast(*s8) null);
}

deinit_68 :: (using segment_info: *Mkvparser_Segment_Info) {
    {
        cpp_transpiler_delete_g108 := cast,no_check(*s8) (p_muxing_app_as_utf8);
        if cpp_transpiler_delete_g108 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g108);
        }
    }
    p_muxing_app_as_utf8 = cast,no_check(*s8) (cast(*s8) null);

    {
        cpp_transpiler_delete_g109 := cast,no_check(*s8) (p_writing_app_as_utf8);
        if cpp_transpiler_delete_g109 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g109);
        }
    }
    p_writing_app_as_utf8 = cast,no_check(*s8) (cast(*s8) null);

    {
        cpp_transpiler_delete_g110 := cast,no_check(*s8) (p_title_as_utf8);
        if cpp_transpiler_delete_g110 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g110);
        }
    }
    p_title_as_utf8 = cast,no_check(*s8) (cast(*s8) null);
}

get_muxing_app_as_utf8 :: (using segment_info: *Mkvparser_Segment_Info) -> *s8 {
    return p_muxing_app_as_utf8;
}

get_writing_app_as_utf8 :: (using segment_info: *Mkvparser_Segment_Info) -> *s8 {
    return p_writing_app_as_utf8;
}

get_title_as_utf8 :: (using segment_info: *Mkvparser_Segment_Info) -> *s8 {
    return p_title_as_utf8;
}

init_107 :: (
    using seek_head: *Mkvparser_Seek_Head,
    _p_segment: *Mkvparser_Segment,
    _start: s64,
    _size: s64,
    _element_start: s64,
    _element_size: s64
) {
    p_segment = cast,no_check(*Mkvparser_Segment) _p_segment;
    start = _start;
    size = _size;
    element_start = _element_start;
    element_size = _element_size;
    entries = cast,no_check(*Seek_Head_Entry) (cast(*Seek_Head_Entry) null);
    entry_count = 0;
    void_elements = cast,no_check(*Seek_Head_Void_Element) (cast(*Seek_Head_Void_Element) null);
    void_element_count = 0;
}

deinit_69 :: (using seek_head: *Mkvparser_Seek_Head) {
    {
        cpp_transpiler_delete_g111 := cast,no_check(*Seek_Head_Entry) (entries);
        if cpp_transpiler_delete_g111 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g111);
        }
    }
    {
        cpp_transpiler_delete_g112 := cast,no_check(*Seek_Head_Void_Element) (void_elements);
        if cpp_transpiler_delete_g112 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g112);
        }
    }
}

init_108 :: (using entry: *Seek_Head_Entry) {
    id = 0;
    pos = 0;
    element_start = 0;
    element_size = 0;
}

get_count :: (using seek_head: *Mkvparser_Seek_Head) -> s32 {
    return entry_count;
}

get_entry :: (using seek_head: *Mkvparser_Seek_Head, idx: s32) -> *Seek_Head_Entry {
    if idx < 0 {
        return cast(*Seek_Head_Entry) null;
    }

    if idx >= entry_count {
        return cast(*Seek_Head_Entry) null;
    }

    return entries + idx;
}

get_void_element_count :: (using seek_head: *Mkvparser_Seek_Head) -> s32 {
    return void_element_count;
}

get_void_element :: (using seek_head: *Mkvparser_Seek_Head, idx: s32) -> *Seek_Head_Void_Element {
    if idx < 0 {
        return cast(*Seek_Head_Void_Element) null;
    }

    if idx >= void_element_count {
        return cast(*Seek_Head_Void_Element) null;
    }

    return void_elements + idx;
}

init_109 :: (using cue_point: *Mkvparser_Cue_Point, idx: s64, pos: s64) {
    element_start = 0;
    element_size = 0;
    index = idx;
    timecode = -1 * pos;
    track_positions = cast,no_check(*Cue_Point_Track_Position) (cast(*Cue_Point_Track_Position) null);
    track_positions_count = 0;
    assert(pos > 0);
}

deinit_70 :: (using cue_point: *Mkvparser_Cue_Point) {
    {
        cpp_transpiler_delete_g113 := cast,no_check(*Cue_Point_Track_Position) (track_positions);
        if cpp_transpiler_delete_g113 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g113);
        }
    }
}

init_111 :: (
    using cues: *Mkvparser_Cues,
    _p_segment: *Mkvparser_Segment,
    _start: s64,
    _size: s64,
    _element_start: s64,
    _element_size: s64
) {
    p_segment = cast,no_check(*Mkvparser_Segment) _p_segment;
    start = _start;
    size = _size;
    element_start = _element_start;
    element_size = _element_size;
    cue_points = cast,no_check(**Mkvparser_Cue_Point) (cast(**Mkvparser_Cue_Point) null);
    count = 0;
    preload_count = 0;
    pos = _start;
}

deinit_71 :: (using cues: *Mkvparser_Cues) {
    N := count + preload_count;

    p := cast,no_check(**Mkvparser_Cue_Point) (cue_points);
    Q := cast,no_check(**Mkvparser_Cue_Point) ((p + N));

    while p != Q {
        P_CP := cast,no_check(*Mkvparser_Cue_Point) ((c_transpiler_post_increment(*(p))).*);
        assert(P_CP != null);

        {
            cpp_transpiler_delete_g114 := cast,no_check(*Mkvparser_Cue_Point) (P_CP);
            if cpp_transpiler_delete_g114 != null {
                deinit_70(cpp_transpiler_delete_g114);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g114);
            }
        }
    }

    {
        cpp_transpiler_delete_g115 := cast,no_check(**Mkvparser_Cue_Point) (cue_points);
        if cpp_transpiler_delete_g115 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g115);
        }
    }
}

find :: (
    using cues: *Mkvparser_Cues,
    time_ns: s64,
    p_track: *Mkvparser_Track,
    p_cp: **Mkvparser_Cue_Point,
    p_tp: **Cue_Point_Track_Position
) -> bool {
    if time_ns < 0 || p_track == null || cue_points == null || count == 0 {
        return false;
    }

    II := cast,no_check(**Mkvparser_Cue_Point) (cue_points);
    i := cast,no_check(**Mkvparser_Cue_Point) (II);

    JJ := cast,no_check(**Mkvparser_Cue_Point) ((II + count));
    j := cast,no_check(**Mkvparser_Cue_Point) (JJ);

    assignment_85: *Mkvparser_Cue_Point = cast,no_check(*Mkvparser_Cue_Point) (i.*);
    ((cast,no_check(**Mkvparser_Cue_Point) *((cast(**Mkvparser_Cue_Point) p_cp).*)).*) = assignment_85;
    if (cast(**Mkvparser_Cue_Point) p_cp).* == null {
        return false;
    }

    if time_ns <= get_time((cast(**Mkvparser_Cue_Point) p_cp).*, p_segment) {
        assignment_86: *Cue_Point_Track_Position =
            cast,no_check(*Cue_Point_Track_Position) find((cast(**Mkvparser_Cue_Point) p_cp).*, p_track);
        ((cast,no_check(**Cue_Point_Track_Position) *((cast(**Cue_Point_Track_Position) p_tp).*)).*) = assignment_86;
        return (cast(**Cue_Point_Track_Position) p_tp).* != null;
    }

    while i < j {
        K := cast,no_check(**Mkvparser_Cue_Point) ((i + (j - i) / 2));
        if K >= JJ {
            return false;
        }

        P_CP := cast,no_check(*Mkvparser_Cue_Point) (K.*);
        if P_CP == null {
            return false;
        }

        T := get_time(P_CP, p_segment);

        if T <= time_ns {
            i = cast,no_check(**Mkvparser_Cue_Point) ((K + 1));
        } else {
            j = cast,no_check(**Mkvparser_Cue_Point) (K);
        }

        if i > j {
            return false;
        }
    }

    if i != j || i > JJ || i <= II {
        return false;
    }

    assignment_87: *Mkvparser_Cue_Point = cast,no_check(*Mkvparser_Cue_Point) ((c_transpiler_pre_decrement(*(i))).*);
    ((cast,no_check(**Mkvparser_Cue_Point) *((cast(**Mkvparser_Cue_Point) p_cp).*)).*) = assignment_87;

    if (cast(**Mkvparser_Cue_Point) p_cp).* == null || get_time((cast(**Mkvparser_Cue_Point) p_cp).*, p_segment) > time_ns {
        return false;
    }

    assignment_88: *Cue_Point_Track_Position =
        cast,no_check(*Cue_Point_Track_Position) find((cast(**Mkvparser_Cue_Point) p_cp).*, p_track);
    ((cast,no_check(**Cue_Point_Track_Position) *((cast(**Cue_Point_Track_Position) p_tp).*)).*) = assignment_88;
    return (cast(**Cue_Point_Track_Position) p_tp).* != null;
}

get_first :: (using cues: *Mkvparser_Cues) -> *Mkvparser_Cue_Point {
    if cue_points == null || count == 0 {
        return cast(*Mkvparser_Cue_Point) null;
    }

    PP := cast,no_check(**Mkvparser_Cue_Point) (cue_points);
    if PP == null {
        return cast(*Mkvparser_Cue_Point) null;
    }

    P_CP := cast,no_check(*Mkvparser_Cue_Point) (PP[0]);
    if P_CP == null || get_time_code(P_CP) < 0 {
        return cast(*Mkvparser_Cue_Point) null;
    }

    return P_CP;
}

get_last :: (using cues: *Mkvparser_Cues) -> *Mkvparser_Cue_Point {
    if cue_points == null || count <= 0 {
        return cast(*Mkvparser_Cue_Point) null;
    }

    INDEX := count - 1;

    PP := cast,no_check(**Mkvparser_Cue_Point) (cue_points);
    if PP == null {
        return cast(*Mkvparser_Cue_Point) null;
    }

    P_CP := cast,no_check(*Mkvparser_Cue_Point) (PP[INDEX]);
    if P_CP == null || get_time_code(P_CP) < 0 {
        return cast(*Mkvparser_Cue_Point) null;
    }

    return P_CP;
}

get_next :: (using cues: *Mkvparser_Cues, p_curr: *Mkvparser_Cue_Point) -> *Mkvparser_Cue_Point {
    if p_curr == null || get_time_code(p_curr) < 0 || cue_points == null || count < 1 {
        return cast(*Mkvparser_Cue_Point) null;
    }

    index := p_curr.index;
    if index >= count {
        return cast(*Mkvparser_Cue_Point) null;
    }

    PP := cast,no_check(**Mkvparser_Cue_Point) (cue_points);
    if PP == null || PP[index] != p_curr {
        return cast(*Mkvparser_Cue_Point) null;
    }

    index += 1;

    if index >= count {
        return cast(*Mkvparser_Cue_Point) null;
    }

    P_NEXT := cast,no_check(*Mkvparser_Cue_Point) (PP[index]);

    if P_NEXT == null || get_time_code(P_NEXT) < 0 {
        return cast(*Mkvparser_Cue_Point) null;
    }

    return P_NEXT;
}

get_block :: (
    using cues: *Mkvparser_Cues,
    p_cp: *Mkvparser_Cue_Point,
    p_tp: *Cue_Point_Track_Position
) -> *Block_Entry {
    if p_cp == null || p_tp == null {
        return cast(*Block_Entry) null;
    }

    return get_block(p_segment, p_cp, p_tp);
}

load_cue_point :: (using cues: *Mkvparser_Cues) -> bool {
    STOP := start + size;

    if pos >= STOP {
        return false;
    }

    if !init_113(cues) {
        pos = STOP;
        return false;
    }

    P_READER := cast,no_check(*I_Mkv_Reader) (p_segment.p_reader);

    while pos < STOP {
        IDPOS := pos;

        len: s64 = ---;

        ID := mkvparser_ReadID(P_READER, pos, *len);
        if ID < 0 || (pos + len) > STOP {
            return false;
        }

        pos += len;

        SIZE := mkvparser_ReadUInt(P_READER, pos, *len);
        if SIZE < 0 || (pos + len) > STOP {
            return false;
        }

        pos += len;
        if pos + SIZE > STOP {
            return false;
        }

        if ID != cast,no_check(s64) LIBWEBM_K_MKV_CUE_POINT {
            pos += SIZE;
            if pos > STOP {
                return false;
            }

            continue;
        }

        if preload_count < 1 {
            return false;
        }

        P_CP := cast,no_check(*Mkvparser_Cue_Point) (cue_points[count]);
        if P_CP == null || get_time_code(P_CP) < 0 && -get_time_code(P_CP) != IDPOS {
            return false;
        }

        if !load(P_CP, P_READER) {
            pos = STOP;
            return false;
        }
        count += 1;
        preload_count -= 1;

        pos += SIZE;
        if pos > STOP {
            return false;
        }

        return true;
    }

    return false;
}

get_count :: (using cues: *Mkvparser_Cues) -> s64 {
    if cue_points == null {
        return -1;
    }

    return count;
}

done_parsing :: (using cues: *Mkvparser_Cues) -> bool {
    STOP := start + size;
    return pos >= STOP;
}

init_115 :: (using cluster: *Mkvparser_Cluster) {
    p_segment = cast,no_check(*Mkvparser_Segment) (cast(*Mkvparser_Segment) null);
    element_start = 0;
    index = 0;
    pos = 0;
    element_size = 0;
    timecode = 0;
    entries = cast,no_check(**Block_Entry) (cast(**Block_Entry) null);
    entries_size = 0;
    entries_count = 0;
}

deinit_72 :: (using cluster: *Mkvparser_Cluster) {
    if entries_count <= 0 {
        {
            cpp_transpiler_delete_g116 := cast,no_check(**Block_Entry) (entries);
            if cpp_transpiler_delete_g116 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g116);
            }
        }
        return;
    }

    i := cast,no_check(**Block_Entry) (entries);
    J := cast,no_check(**Block_Entry) ((entries + entries_count));

    while i != J {
        p := cast,no_check(*Block_Entry) ((c_transpiler_post_increment(*(i))).*);
        assert(p != null);

        {
            cpp_transpiler_delete_g117 := cast,no_check(*Block_Entry) (p);
            if cpp_transpiler_delete_g117 != null {
                cpp_transpiler_dispatch_mkvparser_BlockEntry_destructor(cpp_transpiler_delete_g117);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g117);
            }
        }
    }

    {
        cpp_transpiler_delete_g118 := cast,no_check(**Block_Entry) (entries);
        if cpp_transpiler_delete_g118 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g118);
        }
    }
}

get_first_time :: (using cluster: *Mkvparser_Cluster) -> s64 {
    p_entry: *Block_Entry = ---;

    STATUS := get_first(cluster, *p_entry);

    if STATUS < 0 {
        return STATUS;
    }

    if p_entry == null {
        return get_time(cluster);
    }

    P_BLOCK := cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(p_entry));
    assert(P_BLOCK != null);

    return get_time(P_BLOCK, cluster);
}

get_last_time :: (using cluster: *Mkvparser_Cluster) -> s64 {
    p_entry: *Block_Entry = ---;

    STATUS := get_last(cluster, *p_entry);

    if STATUS < 0 {
        return STATUS;
    }

    if p_entry == null {
        return get_time(cluster);
    }

    P_BLOCK := cast,no_check(*Block) (cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock(p_entry));
    assert(P_BLOCK != null);

    return get_time(P_BLOCK, cluster);
}

get_entry_count :: (using cluster: *Mkvparser_Cluster) -> s64 {
    return entries_count;
}

get_entry :: (using cluster: *Mkvparser_Cluster, _index: s64, p_entry: **Block_Entry) -> s64 {
    assert(pos >= element_start);

    (cast(**Block_Entry) p_entry).* = cast,no_check(*Block_Entry) (cast(*Block_Entry) null);

    if _index < 0 {
        return -1;
    }

    if entries_count < 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    assert(entries != null);
    assert(entries_size > 0);
    assert(entries_count <= entries_size);

    if _index < entries_count {
        assignment_89: *Block_Entry = cast,no_check(*Block_Entry) (entries[_index]);
        ((cast,no_check(**Block_Entry) *((cast(**Block_Entry) p_entry).*)).*) = assignment_89;
        assert((((cast(**Block_Entry) p_entry).*) != null));

        return 1;
    }

    if element_size < 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    ELEMENT_STOP := element_start + element_size;

    if pos >= ELEMENT_STOP {
        return 0;
    }

    return cast,no_check(s64) -cast(s32) 3;
}

init_116 :: (using cluster: *Mkvparser_Cluster, _p_segment: *Mkvparser_Segment, idx: s64, _element_start: s64) {
    p_segment = cast,no_check(*Mkvparser_Segment) _p_segment;
    element_start = _element_start;
    index = idx;
    pos = _element_start;
    element_size = -1;
    timecode = -1;
    entries = cast,no_check(**Block_Entry) (cast(**Block_Entry) null);
    entries_size = 0;
    entries_count = -1;
}

init_118 :: (using segment: *Mkvparser_Segment, _p_reader: *I_Mkv_Reader, elem_start: s64, _start: s64, _size: s64) {
    p_reader = cast,no_check(*I_Mkv_Reader) (_p_reader);
    element_start = elem_start;

    start = _start;
    size = _size;
    init_115(*eos);

    pos = _start;
    p_unknown_size = cast,no_check(*Mkvparser_Cluster) (cast(*Mkvparser_Cluster) null);
    p_seek_head = cast,no_check(*Mkvparser_Seek_Head) (cast(*Mkvparser_Seek_Head) null);
    p_info = cast,no_check(*Mkvparser_Segment_Info) (cast(*Mkvparser_Segment_Info) null);
    p_tracks = cast,no_check(*Mkvparser_Tracks) (cast(*Mkvparser_Tracks) null);
    p_cues = cast,no_check(*Mkvparser_Cues) (cast(*Mkvparser_Cues) null);
    p_chapters = cast,no_check(*Mkvparser_Chapters) (cast(*Mkvparser_Chapters) null);
    p_tags = cast,no_check(*Mkvparser_Tags) (cast(*Mkvparser_Tags) null);
    clusters = cast,no_check(**Mkvparser_Cluster) (cast(**Mkvparser_Cluster) null);
    cluster_count = 0;
    cluster_preload_count = 0;
    cluster_size = 0;
}

create_instance :: (p_reader: *I_Mkv_Reader, pos: s64, p_segment: **Mkvparser_Segment) -> s64 {
    if p_reader == null || pos < 0 {
        return cast,no_check(s64) -cast(s32) 1;
    }

    (cast(**Mkvparser_Segment) p_segment).* = cast,no_check(*Mkvparser_Segment) (cast(*Mkvparser_Segment) null);

    total, available: s64 = ---;

    STATUS :=
        cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(
            p_reader,
            *total,
            *available
        );

    if STATUS < 0 {
        return STATUS;
    }

    if available < 0 {
        return -1;
    }

    if total >= 0 && available > total {
        return -1;
    }

    while true {
        if total >= 0 && pos >= total {
            return cast,no_check(s64) -cast(s32) 2;
        }

        len: s64 = ---;
        result := mkvparser_GetUIntLength(p_reader, pos, *len);

        if result != 0 {
            return result;
        }

        if total >= 0 && (pos + len) > total {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (pos + len) > available {
            return pos + len;
        }

        IDPOS := pos;
        ID := mkvparser_ReadID(p_reader, pos, *len);

        if ID < 0 {
            return cast,no_check(s64) -cast(s32) 2;
        }

        pos += len;

        result = mkvparser_GetUIntLength(p_reader, pos, *len);

        if result != 0 {
            return result;
        }

        if total >= 0 && (pos + len) > total {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (pos + len) > available {
            return pos + len;
        }

        size := mkvparser_ReadUInt(p_reader, pos, *len);

        if size < 0 {
            return size;
        }

        pos += len;

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len)) & 63) - 1;

        if ID == cast,no_check(s64) LIBWEBM_K_MKV_SEGMENT {
            if size == UNKNOWN_SIZE {
                size = -1;
            } else if total < 0 {
                size = -1;
            } else if pos + size > total {
                size = -1;
            }

            assignment_90: *Mkvparser_Segment =
                cast,no_check(*Mkvparser_Segment) ((ifx true {
        cpp_transpiler_new_g119 :=
            cast,no_check(*Mkvparser_Segment) (cast(*Mkvparser_Segment) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Segment)
            ));
        init_118(cpp_transpiler_new_g119, p_reader, IDPOS, pos, size);
        cpp_transpiler_new_g119;
    })
    );
            ((cast,no_check(**Mkvparser_Segment) *((cast(**Mkvparser_Segment) p_segment).*)).*) = assignment_90;
            if (cast(**Mkvparser_Segment) p_segment).* == null {
                return cast,no_check(s64) -cast(s32) 1;
            }

            return 0;
        }

        if size == UNKNOWN_SIZE {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if total >= 0 && pos + size > total {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if pos + size > available {
            return pos + size;
        }

        pos += size;
    }
    return unreachable_value(s64);
}

deinit_73 :: (using segment: *Mkvparser_Segment) {
    cpp_transpiler_subobject_cleanup_g120: bool = ---;
    defer deinit_72(*eos);
    {
        COUNT := cluster_count + cluster_preload_count;

        i := cast,no_check(**Mkvparser_Cluster) (clusters);
        j := cast,no_check(**Mkvparser_Cluster) ((clusters + COUNT));

        while i != j {
            P := cast,no_check(*Mkvparser_Cluster) ((c_transpiler_post_increment(*(i))).*);
            {
                cpp_transpiler_delete_g121 := cast,no_check(*Mkvparser_Cluster) (P);
                if cpp_transpiler_delete_g121 != null {
                    deinit_72(cpp_transpiler_delete_g121);
                    cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g121);
                }
            }
        }

        {
            cpp_transpiler_delete_g122 := cast,no_check(**Mkvparser_Cluster) (clusters);
            if cpp_transpiler_delete_g122 != null {
                cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g122);
            }
        }

        {
            cpp_transpiler_delete_g123 := cast,no_check(*Mkvparser_Tracks) (p_tracks);
            if cpp_transpiler_delete_g123 != null {
                deinit_60(cpp_transpiler_delete_g123);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g123);
            }
        }
        {
            cpp_transpiler_delete_g124 := cast,no_check(*Mkvparser_Segment_Info) (p_info);
            if cpp_transpiler_delete_g124 != null {
                deinit_68(cpp_transpiler_delete_g124);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g124);
            }
        }
        {
            cpp_transpiler_delete_g125 := cast,no_check(*Mkvparser_Cues) (p_cues);
            if cpp_transpiler_delete_g125 != null {
                deinit_71(cpp_transpiler_delete_g125);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g125);
            }
        }
        {
            cpp_transpiler_delete_g126 := cast,no_check(*Mkvparser_Chapters) (p_chapters);
            if cpp_transpiler_delete_g126 != null {
                deinit_61(cpp_transpiler_delete_g126);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g126);
            }
        }
        {
            cpp_transpiler_delete_g127 := cast,no_check(*Mkvparser_Tags) (p_tags);
            if cpp_transpiler_delete_g127 != null {
                deinit_65(cpp_transpiler_delete_g127);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g127);
            }
        }
        {
            cpp_transpiler_delete_g128 := cast,no_check(*Mkvparser_Seek_Head) (p_seek_head);
            if cpp_transpiler_delete_g128 != null {
                deinit_69(cpp_transpiler_delete_g128);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g128);
            }
        }
    }
}

load :: (using segment: *Mkvparser_Segment) -> s64 {
    if clusters != null || cluster_size != 0 || cluster_count != 0 {
        return cast,no_check(s64) -cast(s32) 1;
    }

    HEADER_STATUS := parse_headers(segment);

    if HEADER_STATUS < 0 {
        return HEADER_STATUS;
    }

    if HEADER_STATUS > 0 {
        return cast,no_check(s64) -cast(s32) 3;
    }

    if p_info == null || p_tracks == null {
        return cast,no_check(s64) -cast(s32) 2;
    }

    while true {
        STATUS := load_cluster(segment);

        if STATUS < 0 {
            return STATUS;
        }

        if STATUS >= 1 {
            return 0;
        }
    }
    return unreachable_value(s64);
}

parse_next :: (
    segment: *Mkvparser_Segment,
    p_curr: *Mkvparser_Cluster,
    p_result: **Mkvparser_Cluster,
    _pos: *s64,
    len: *s64
) -> s64 {
    assert(p_curr != null);
    assert(!eos(p_curr));
    assert(segment.clusters != null);

    (cast(**Mkvparser_Cluster) p_result).* = cast,no_check(*Mkvparser_Cluster) (cast(*Mkvparser_Cluster) null);

    if p_curr.index >= 0 {
        assert(segment.clusters[p_curr.index] == p_curr);

        NEXT_IDX := p_curr.index + 1;

        if NEXT_IDX < segment.cluster_count {
            assignment_91: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) (segment.clusters[NEXT_IDX]);
            ((cast,no_check(**Mkvparser_Cluster) *((cast(**Mkvparser_Cluster) p_result).*)).*) = assignment_91;
            return 0;
        }

        RESULT := load_cluster(segment, _pos, len);

        if RESULT < 0 {
            return RESULT;
        }

        if RESULT > 0 {
            return 1;
        }

        assignment_92: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) (get_last(segment));
        ((cast,no_check(**Mkvparser_Cluster) *((cast(**Mkvparser_Cluster) p_result).*)).*) = assignment_92;
        return 0;
    }

    assert(segment.pos > 0);

    total, avail: s64 = ---;

    status :=
        cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(
            segment.p_reader,
            *total,
            *avail
        );

    if status < 0 {
        return status;
    }

    assert(total < 0 || avail <= total);

    SEGMENT_STOP := (ifx segment.size < 0 then -1 else segment.start + segment.size);

    assignment_93: s64 = p_curr.element_start;
    ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_93;

    if p_curr.element_size >= 0 {
        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (p_curr.element_size), s64, s64);
    } else {
        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result := mkvparser_GetUIntLength(segment.p_reader, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        ID := mkvparser_ReadUInt(segment.p_reader, _pos.*, len);

        if ID != cast,no_check(s64) LIBWEBM_K_MKV_CLUSTER {
            return -1;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        if (_pos.* + 1) > avail {
            ((cast(**s64) *(len)).*).* = 1;
            return cast,no_check(s64) -cast(s32) 3;
        }

        result = mkvparser_GetUIntLength(segment.p_reader, _pos.*, len);

        if result < 0 {
            return result;
        }

        if result > 0 {
            return cast,no_check(s64) -cast(s32) 3;
        }

        if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if (_pos.* + len.*) > avail {
            return cast,no_check(s64) -cast(s32) 3;
        }

        SIZE := mkvparser_ReadUInt(segment.p_reader, _pos.*, len);

        if SIZE < 0 {
            return SIZE;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);

        UNKNOWN_SIZE := (cast(s64) 1) << (((7 * len.*)) & 63) - 1;

        if SIZE == UNKNOWN_SIZE {
            return cast,no_check(s64) -cast(s32) 2;
        }

        if SEGMENT_STOP >= 0 && _pos.* + SIZE > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }

        c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (SIZE), s64, s64);
        if SEGMENT_STOP >= 0 && _pos.* > SEGMENT_STOP {
            return cast,no_check(s64) -cast(s32) 2;
        }
    }

    while true {
        STATUS := do_parse_next(segment, p_result, _pos, len);

        if STATUS <= 1 {
            return STATUS;
        }
    }
    return unreachable_value(s64);
}

get_seek_head :: (using segment: *Mkvparser_Segment) -> *Mkvparser_Seek_Head {
    return p_seek_head;
}

get_cues :: (using segment: *Mkvparser_Segment) -> *Mkvparser_Cues {
    return p_cues;
}

get_chapters :: (using segment: *Mkvparser_Segment) -> *Mkvparser_Chapters {
    return p_chapters;
}

get_tags :: (using segment: *Mkvparser_Segment) -> *Mkvparser_Tags {
    return p_tags;
}

get_duration :: (using segment: *Mkvparser_Segment) -> s64 {
    assert(p_info != null);
    return get_duration(p_info);
}

find_cluster :: (using segment: *Mkvparser_Segment, time_ns: s64) -> *Mkvparser_Cluster {
    if clusters == null || cluster_count <= 0 {
        return *eos;
    }

    {
        P_CLUSTER_mkvparser_cluster := cast,no_check(*Mkvparser_Cluster) (clusters[0]);
        assert(P_CLUSTER_mkvparser_cluster != null);
        assert(P_CLUSTER_mkvparser_cluster.index == 0);

        if time_ns <= get_time(P_CLUSTER_mkvparser_cluster) {
            return P_CLUSTER_mkvparser_cluster;
        }
    }

    i: s64 = 0;
    j := cluster_count;

    while i < j {
        K_value := i + (j - i) / 2;
        assert(K_value < cluster_count);

        P_CLUSTER_mkvparser_cluster := cast,no_check(*Mkvparser_Cluster) (clusters[K_value]);
        assert(P_CLUSTER_mkvparser_cluster != null);
        assert(P_CLUSTER_mkvparser_cluster.index == K_value);

        T := get_time(P_CLUSTER_mkvparser_cluster);

        if T <= time_ns {
            i = K_value + 1;
        } else {
            j = K_value;
        }

        assert(i <= j);
    }

    assert(i == j);
    assert(i > 0);
    assert(i <= cluster_count);

    K := i - 1;

    P_CLUSTER := cast,no_check(*Mkvparser_Cluster) (clusters[K]);
    assert(P_CLUSTER != null);
    assert(P_CLUSTER.index == K);
    assert(get_time(P_CLUSTER) <= time_ns);

    return P_CLUSTER;
}

find_or_preload_cluster :: (using segment: *Mkvparser_Segment, requested_pos: s64) -> *Mkvparser_Cluster {
    if requested_pos < 0 {
        return cast(*Mkvparser_Cluster) null;
    }

    II := cast,no_check(**Mkvparser_Cluster) (clusters);
    i := cast,no_check(**Mkvparser_Cluster) (II);

    COUNT := cluster_count + cluster_preload_count;

    JJ := cast,no_check(**Mkvparser_Cluster) ((II + COUNT));
    j := cast,no_check(**Mkvparser_Cluster) (JJ);

    while i < j {
        K := cast,no_check(**Mkvparser_Cluster) ((i + (j - i) / 2));
        assert(K < JJ);

        P_CLUSTER_mkvparser_cluster := cast,no_check(*Mkvparser_Cluster) (K.*);
        assert(P_CLUSTER_mkvparser_cluster != null);

        POS := get_position(P_CLUSTER_mkvparser_cluster);
        assert(POS >= 0);

        if POS < requested_pos {
            i = cast,no_check(**Mkvparser_Cluster) ((K + 1));
        } else if POS > requested_pos {
            j = cast,no_check(**Mkvparser_Cluster) (K);
        } else {
            return P_CLUSTER_mkvparser_cluster;
        }
    }

    assert(i == j);

    P_CLUSTER: *Mkvparser_Cluster = cast,no_check(*Mkvparser_Cluster) create_3(segment, -1, requested_pos);
    if P_CLUSTER == null {
        return cast(*Mkvparser_Cluster) null;
    }

    IDX := i - clusters;

    if !preload_cluster(segment, P_CLUSTER, IDX) {
        {
            cpp_transpiler_delete_g129 := cast,no_check(*Mkvparser_Cluster) (P_CLUSTER);
            if cpp_transpiler_delete_g129 != null {
                deinit_72(cpp_transpiler_delete_g129);
                cpp_transpiler_deallocate_raw(cast(*void) cpp_transpiler_delete_g129);
            }
        }
        return cast(*Mkvparser_Cluster) null;
    }
    assert(clusters != null);
    assert(cluster_preload_count > 0);
    assert(clusters[IDX] == P_CLUSTER);

    return P_CLUSTER;
}

parse_cues :: (using segment: *Mkvparser_Segment, off: s64, _pos: *s64, len: *s64) -> s64 {
    if p_cues != null {
        return 0;
    }

    if off < 0 {
        return -1;
    }

    total, avail: s64 = ---;

    STATUS := cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(p_reader, *total, *avail);

    if STATUS < 0 {
        return cast,no_check(s64) STATUS;
    }

    assert(total < 0 || avail <= total);

    assignment_94: s64 = (start + off);
    ((cast,no_check(*s64) *(((cast(**s64) *(_pos)).*).*)).*) = assignment_94;

    if total < 0 || _pos.* >= total {
        return 1;
    }

    ELEMENT_START := _pos.*;
    SEGMENT_STOP := (ifx size < 0 then -1 else start + size);

    if (_pos.* + 1) > avail {
        ((cast(**s64) *(len)).*).* = 1;
        return cast,no_check(s64) -cast(s32) 3;
    }

    result := mkvparser_GetUIntLength(p_reader, _pos.*, len);

    if result < 0 {
        return result;
    }

    if result > 0 {
        ((cast(**s64) *(len)).*).* = 1;
        return cast,no_check(s64) -cast(s32) 3;
    }

    if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if (_pos.* + len.*) > avail {
        return cast,no_check(s64) -cast(s32) 3;
    }

    IDPOS := _pos.*;

    ID := mkvparser_ReadID(p_reader, IDPOS, len);

    if ID != cast,no_check(s64) LIBWEBM_K_MKV_CUES {
        return cast,no_check(s64) -cast(s32) 2;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);
    assert(SEGMENT_STOP < 0 || _pos.* <= SEGMENT_STOP);

    if (_pos.* + 1) > avail {
        ((cast(**s64) *(len)).*).* = 1;
        return cast,no_check(s64) -cast(s32) 3;
    }

    result = mkvparser_GetUIntLength(p_reader, _pos.*, len);

    if result < 0 {
        return result;
    }

    if result > 0 {
        ((cast(**s64) *(len)).*).* = 1;
        return cast,no_check(s64) -cast(s32) 3;
    }

    if SEGMENT_STOP >= 0 && (_pos.* + len.*) > SEGMENT_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if (_pos.* + len.*) > avail {
        return cast,no_check(s64) -cast(s32) 3;
    }

    SIZE := mkvparser_ReadUInt(p_reader, _pos.*, len);

    if SIZE < 0 {
        return SIZE;
    }

    if SIZE == 0 {
        return 1;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(_pos)).*).*), (len.*), s64, s64);
    assert(SEGMENT_STOP < 0 || _pos.* <= SEGMENT_STOP);

    ELEMENT_STOP := _pos.* + SIZE;

    if SEGMENT_STOP >= 0 && ELEMENT_STOP > SEGMENT_STOP {
        return cast,no_check(s64) -cast(s32) 2;
    }

    if total >= 0 && ELEMENT_STOP > total {
        return 1;
    }

    assignment_95: s64 = SIZE;
    ((cast,no_check(*s64) *(((cast(**s64) *(len)).*).*)).*) = assignment_95;

    if ELEMENT_STOP > avail {
        return cast,no_check(s64) -cast(s32) 3;
    }

    ELEMENT_SIZE := ELEMENT_STOP - ELEMENT_START;

    p_cues =
        cast,no_check(*Mkvparser_Cues) ((ifx true {
        cpp_transpiler_new_g130 :=
            cast,no_check(*Mkvparser_Cues) (cast(*Mkvparser_Cues) cpp_transpiler_allocate_raw(
                size_of(Mkvparser_Cues)
            ));
        init_111(cpp_transpiler_new_g130, segment, _pos.*, SIZE, ELEMENT_START, ELEMENT_SIZE);
        cpp_transpiler_new_g130;
    })
    );
    if p_cues == null {
        return -1;
    }

    return 0;
}

deinit_99 :: (using class_unique_ptr_struct_mastering_metadata: *Class_Unique_Ptr_Struct_Mastering_Metadata) {
    #assert true; // validated by the C++ frontend
    ptr: *Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer =
        cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) ptr_19(
            cast(*Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) *t
        );
    if (cast(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) ptr).* != null {
        call_11(
            get_deleter_8(class_unique_ptr_struct_mastering_metadata),
            (cast(*Std_Remove_Reference_Mkvparser_Mastering_Metadata_Type) ptr).*
        );
    }
    assignment_96: Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) (null);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) ptr).*)).*) = assignment_96;
}

init_208 :: (
    using class_unique_ptr_struct_mastering_metadata: *Class_Unique_Ptr_Struct_Mastering_Metadata,
    p: Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Pointer
) {
    init_209(*t, p);
}

init_209 :: (
    using struct_uniq_ptr_data_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata: *Struct_Uniq_Ptr_Data_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata,
    unnamed_40749: Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer
) {
    init_210(
        cast(*Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) struct_uniq_ptr_data_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata,
        unnamed_40749
    );
}

init_210 :: (
    using class_uniq_ptr_impl_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata: *Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata,
    p: Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer
) {
    init_211(*t);
    assignment_97: Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer) ptr_19(class_uniq_ptr_impl_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata)).*)).*) = assignment_97;
}

init_211 :: (
    using class_tuple_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata: *Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) {
    init_212(
        cast(*Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata) class_tuple_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata
    );
}

init_212 :: (
    using struct_tuple_impl_0_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata: *Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata
) {
    init_213(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Mastering_Metadata) struct_tuple_impl_0_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata
    );
    assignment_98: Struct_Head_Base_0_Struct_Mastering_Metadata =
        make_struct_std_head_base_0_struct_mkvparser_mastering_metadata();
    ((cast,no_check(*Struct_Head_Base_0_Struct_Mastering_Metadata) *((cast(*Struct_Head_Base_0_Struct_Mastering_Metadata) struct_tuple_impl_0_struct_mastering_metadata_struct_default_delete_struct_mastering_metadata).*)).*) = assignment_98;
}

init_213 :: (
    using struct_tuple_impl_1_struct_default_delete_struct_mastering_metadata: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Mastering_Metadata
) {
    init_214(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Struct_Mastering_Metadata) struct_tuple_impl_1_struct_default_delete_struct_mastering_metadata
    );
}

init_214 :: (
    using struct_head_base_1_struct_default_delete_struct_mastering_metadata: *Struct_Head_Base_1_Struct_Default_Delete_Struct_Mastering_Metadata
) {
}

make_struct_std_head_base_0_struct_mkvparser_mastering_metadata :: () -> Struct_Head_Base_0_Struct_Mastering_Metadata {
    return Struct_Head_Base_0_Struct_Mastering_Metadata.{head_impl = cast,no_check(*Mkvparser_Mastering_Metadata) (null)};
}

deinit_100 :: (using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour) {
    #assert true; // validated by the C++ frontend
    ptr: *Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer =
        cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ptr_16(
            cast(*Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour) *t
        );
    if (cast(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ptr).* != null {
        call_10(
            get_deleter_7(class_unique_ptr_struct_colour),
            (cast(*Std_Remove_Reference_Mkvparser_Colour_Type) ptr).*
        );
    }
    assignment_99: Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) (null);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ptr).*)).*) = assignment_99;
}

init_215 :: (
    using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour,
    p: Std_Unique_Ptr_Mkvparser_Colour_Pointer
) {
    init_216(*t, p);
}

init_216 :: (
    using struct_uniq_ptr_data_struct_colour_struct_default_delete_struct_colour: *Struct_Uniq_Ptr_Data_Struct_Colour_Struct_Default_Delete_Struct_Colour,
    unnamed_40818: Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer
) {
    init_217(
        cast(*Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour) struct_uniq_ptr_data_struct_colour_struct_default_delete_struct_colour,
        unnamed_40818
    );
}

init_217 :: (
    using class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour: *Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour,
    p: Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer
) {
    init_218(*t);
    assignment_100: Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer) ptr_16(class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour)).*)).*) = assignment_100;
}

init_218 :: (
    using class_tuple_struct_colour_struct_default_delete_struct_colour: *Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour
) {
    init_219(
        cast(*Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour) class_tuple_struct_colour_struct_default_delete_struct_colour
    );
}

init_219 :: (
    using struct_tuple_impl_0_struct_colour_struct_default_delete_struct_colour: *Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour
) {
    init_220(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Colour) struct_tuple_impl_0_struct_colour_struct_default_delete_struct_colour
    );
    assignment_101: Struct_Head_Base_0_Struct_Colour = make_struct_std_head_base_0_struct_mkvparser_colour();
    ((cast,no_check(*Struct_Head_Base_0_Struct_Colour) *((cast(*Struct_Head_Base_0_Struct_Colour) struct_tuple_impl_0_struct_colour_struct_default_delete_struct_colour).*)).*) = assignment_101;
}

init_220 :: (
    using struct_tuple_impl_1_struct_default_delete_struct_colour: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Colour
) {
    init_221(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Struct_Colour) struct_tuple_impl_1_struct_default_delete_struct_colour
    );
}

init_221 :: (
    using struct_head_base_1_struct_default_delete_struct_colour: *Struct_Head_Base_1_Struct_Default_Delete_Struct_Colour
) {
}

make_struct_std_head_base_0_struct_mkvparser_colour :: () -> Struct_Head_Base_0_Struct_Colour {
    return Struct_Head_Base_0_Struct_Colour.{head_impl = cast,no_check(*Mkvparser_Colour) (null)};
}

deinit_101 :: (using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection) {
    #assert true; // validated by the C++ frontend
    ptr: *Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer =
        cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ptr_14(
            cast(*Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection) *t
        );
    if (cast(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ptr).* != null {
        call_9(
            get_deleter_6(class_unique_ptr_struct_projection),
            (cast(*Std_Remove_Reference_Mkvparser_Projection_Type) ptr).*
        );
    }
    assignment_102: Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) (null);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ptr).*)).*) = assignment_102;
}

init_222 :: (
    using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection,
    p: Std_Unique_Ptr_Mkvparser_Projection_Pointer
) {
    init_223(*t, p);
}

init_223 :: (
    using struct_uniq_ptr_data_struct_projection_struct_default_delete_struct_projection: *Struct_Uniq_Ptr_Data_Struct_Projection_Struct_Default_Delete_Struct_Projection,
    unnamed_40882: Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer
) {
    init_224(
        cast(*Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection) struct_uniq_ptr_data_struct_projection_struct_default_delete_struct_projection,
        unnamed_40882
    );
}

init_224 :: (
    using class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection: *Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection,
    p: Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer
) {
    init_225(*t);
    assignment_103: Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) (p);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer) ptr_14(class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection)).*)).*) = assignment_103;
}

init_225 :: (
    using class_tuple_struct_projection_struct_default_delete_struct_projection: *Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection
) {
    init_226(
        cast(*Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection) class_tuple_struct_projection_struct_default_delete_struct_projection
    );
}

init_226 :: (
    using struct_tuple_impl_0_struct_projection_struct_default_delete_struct_projection: *Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection
) {
    init_227(
        cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Projection) struct_tuple_impl_0_struct_projection_struct_default_delete_struct_projection
    );
    assignment_104: Struct_Head_Base_0_Struct_Projection = make_struct_std_head_base_0_struct_mkvparser_projection();
    ((cast,no_check(*Struct_Head_Base_0_Struct_Projection) *((cast(*Struct_Head_Base_0_Struct_Projection) struct_tuple_impl_0_struct_projection_struct_default_delete_struct_projection).*)).*) = assignment_104;
}

init_227 :: (
    using struct_tuple_impl_1_struct_default_delete_struct_projection: *Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Projection
) {
    init_228(
        cast(*Struct_Head_Base_1_Struct_Default_Delete_Struct_Projection) struct_tuple_impl_1_struct_default_delete_struct_projection
    );
}

init_228 :: (
    using struct_head_base_1_struct_default_delete_struct_projection: *Struct_Head_Base_1_Struct_Default_Delete_Struct_Projection
) {
}

make_struct_std_head_base_0_struct_mkvparser_projection :: () -> Struct_Head_Base_0_Struct_Projection {
    return Struct_Head_Base_0_Struct_Projection.{head_impl = cast,no_check(*Mkvparser_Projection) (null)};
}

deinit_102 :: (using class_unique_ptr_char: *Class_Unique_Ptr_Char) {
    ptr: *Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer =
        cast,no_check(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ptr_15(
            cast(*Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char) *t
        );
    if (cast(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ptr).* != null {
        call_8(
            get_deleter_5(class_unique_ptr_char),
            (cast(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ptr).*
        );
    }
    assignment_105: Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer =
        cast,no_check(Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) (null);
    ((cast,no_check(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) *((cast(*Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer) ptr).*)).*) = assignment_105;
}

init_229 :: (using class_unique_ptr_char: *Class_Unique_Ptr_Char) {
    init_230(*t);
}

init_230 :: (
    using struct_uniq_ptr_data_char_struct_default_delete_char: *Struct_Uniq_Ptr_Data_Char_Struct_Default_Delete_Char
) {
    init_231(
        cast(*Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char) struct_uniq_ptr_data_char_struct_default_delete_char
    );
}

init_231 :: (
    using class_uniq_ptr_impl_char_struct_default_delete_char: *Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char
) {
    init_232(*t);
}

init_232 :: (using class_tuple_char_struct_default_delete_char: *Class_Tuple_Char_Struct_Default_Delete_Char) {
    init_233(cast(*Struct_Tuple_Impl_0_Char_Struct_Default_Delete_Char) class_tuple_char_struct_default_delete_char);
}

init_233 :: (
    using struct_tuple_impl_0_char_struct_default_delete_char: *Struct_Tuple_Impl_0_Char_Struct_Default_Delete_Char
) {
    init_234(cast(*Struct_Tuple_Impl_1_Struct_Default_Delete_Char) struct_tuple_impl_0_char_struct_default_delete_char);
    assignment_106: Struct_Head_Base_0_Char = make_struct_std_head_base_0_char();
    ((cast,no_check(*Struct_Head_Base_0_Char) *((cast(*Struct_Head_Base_0_Char) struct_tuple_impl_0_char_struct_default_delete_char).*)).*) = assignment_106;
}

init_234 :: (using struct_tuple_impl_1_struct_default_delete_char: *Struct_Tuple_Impl_1_Struct_Default_Delete_Char) {
    init_235(cast(*Struct_Head_Base_1_Struct_Default_Delete_Char) struct_tuple_impl_1_struct_default_delete_char);
}

init_235 :: (using struct_head_base_1_struct_default_delete_char: *Struct_Head_Base_1_Struct_Default_Delete_Char) {
}

make_struct_std_head_base_0_char :: () -> Struct_Head_Base_0_Char {
    return Struct_Head_Base_0_Char.{head_impl = cast,no_check(*s8) (null)};
}

init_236 :: (using class_unique_ptr_struct_colour: *Class_Unique_Ptr_Struct_Colour) {
    init_237(*t);
}

init_237 :: (
    using struct_uniq_ptr_data_struct_colour_struct_default_delete_struct_colour: *Struct_Uniq_Ptr_Data_Struct_Colour_Struct_Default_Delete_Struct_Colour
) {
    init_238(
        cast(*Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour) struct_uniq_ptr_data_struct_colour_struct_default_delete_struct_colour
    );
}

init_238 :: (
    using class_uniq_ptr_impl_struct_colour_struct_default_delete_struct_colour: *Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour
) {
    init_218(*t);
}

init_239 :: (using class_unique_ptr_struct_projection: *Class_Unique_Ptr_Struct_Projection) {
    init_240(*t);
}

init_240 :: (
    using struct_uniq_ptr_data_struct_projection_struct_default_delete_struct_projection: *Struct_Uniq_Ptr_Data_Struct_Projection_Struct_Default_Delete_Struct_Projection
) {
    init_241(
        cast(*Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection) struct_uniq_ptr_data_struct_projection_struct_default_delete_struct_projection
    );
}

init_241 :: (
    using class_uniq_ptr_impl_struct_projection_struct_default_delete_struct_projection: *Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection
) {
    init_225(*t);
}

mkvparser_Match :: (p_reader: *I_Mkv_Reader, pos: *s64, expected_id: u64, val: *s64) -> bool {
    if p_reader == null || pos.* < 0 {
        return false;
    }

    total: s64 = 0;
    available: s64 = 0;

    STATUS :=
        cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(
            p_reader,
            *total,
            *available
        );
    if STATUS < 0 || total >= 0 && available > total {
        return false;
    }

    len: s64 = 0;

    ID := mkvparser_ReadID(p_reader, pos.*, *len);
    if ID < 0 || available - pos.* > len {
        return false;
    }

    if cast,no_check(u64) ID != expected_id {
        return false;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len), s64, s64);

    SIZE := mkvparser_ReadUInt(p_reader, pos.*, *len);
    if SIZE < 0 || SIZE > 8 || len < 1 || len > 8 || available - pos.* > len {
        return false;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len), s64, s64);

    assignment_107: s64 = mkvparser_UnserializeUInt(p_reader, pos.*, SIZE);
    ((cast,no_check(*s64) *(((cast(**s64) *(val)).*).*)).*) = assignment_107;
    if val.* < 0 {
        return false;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (SIZE), s64, s64);

    return true;
}

mkvparser_Match :: (p_reader: *I_Mkv_Reader, pos: *s64, expected_id: u64, buf: **u8, buflen: *u64) -> bool {
    if p_reader == null || pos.* < 0 {
        return false;
    }

    total: s64 = 0;
    available: s64 = 0;

    status :=
        cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Length(
            p_reader,
            *total,
            *available
        );
    if status < 0 || total >= 0 && available > total {
        return false;
    }

    len: s64 = 0;
    ID := mkvparser_ReadID(p_reader, pos.*, *len);
    if ID < 0 || available - pos.* > len {
        return false;
    }

    if cast,no_check(u64) ID != expected_id {
        return false;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len), s64, s64);

    SIZE := mkvparser_ReadUInt(p_reader, pos.*, *len);
    if SIZE < 0 || len <= 0 || len > 8 || available - pos.* > len {
        return false;
    }

    rollover_check := (cast,no_check(u64) pos.*) + cast,no_check(u64) len;
    if rollover_check > 9223372036854775807 {
        return false;
    }

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (len), s64, s64);

    rollover_check = (cast,no_check(u64) pos.*) + cast,no_check(u64) SIZE;
    if rollover_check > 9223372036854775807 {
        return false;
    }

    if pos.* + SIZE > available {
        return false;
    }

    if SIZE >= 9223372036854775807 {
        return false;
    }

    BUFLEN := SIZE;

    assignment_108: *u8 = cast,no_check(*u8) mkvparser_safe_array_alloc(1, cast,no_check(u64) BUFLEN);
    ((cast,no_check(**u8) *((cast(**u8) buf).*)).*) = assignment_108;
    if (cast(**u8) buf).* == null {
        return false;
    }

    status =
        cast,no_check(s64) cpp_transpiler_dispatch_mkvparser_IMkvReader_Read(
            p_reader,
            pos.*,
            BUFLEN,
            (cast(**u8) buf).*
        );
    if status != 0 {
        return false;
    }

    assignment_109: u64 = cast,no_check(u64) BUFLEN;
    ((cast,no_check(*u64) *(((cast(**u64) *(buflen)).*).*)).*) = assignment_109;

    c_transpiler_compound_add(*(((cast(**s64) *(pos)).*).*), (SIZE), s64, s64);
    return true;
}

mkvparser_GetVersion :: (major: *s32, minor: *s32, build: *s32, revision: *s32) {
    ((cast(**s32) *(major)).*).* = 1;
    ((cast(**s32) *(minor)).*).* = 1;
    ((cast(**s32) *(build)).*).* = 4;
    ((cast(**s32) *(revision)).*).* = 0;
}

globals_initialization_state_for_mkvparser: u32;
initialize_globals_for_mkvparser :: () {
    {
        state := atomic_load(*globals_initialization_state_for_mkvparser);
        if state == 2 return;
        won, _ := compare_and_swap(*globals_initialization_state_for_mkvparser, 0, 1);
        if !won {
            while atomic_load(*globals_initialization_state_for_mkvparser) != 2 {}
            return;
        }
    }
    E_PARSE_FAILED_in_mkvparser = -1;
    E_FILE_FORMAT_INVALID_in_mkvparser = -2;
    E_BUFFER_NOT_FULL_in_mkvparser = -3;
    K_STRING_ELEMENT_SIZE_LIMIT = cast,no_check(s64) ((cast,no_check(s32) ((20 * 1000))) * 1000);
    MKVPARSER_MASTERING_METADATA_K_VALUE_NOT_PRESENT = cast(float32) 3.4028234663852887e38;
    MKVPARSER_COLOUR_K_VALUE_NOT_PRESENT = 9223372036854775807;
    MKVPARSER_PROJECTION_K_VALUE_NOT_PRESENT = cast(float32) 3.4028234663852887e38;
    atomic_store(*globals_initialization_state_for_mkvparser, 2);
}

Class_Unique_Ptr_Struct_Projection :: struct {
    t: Struct_Uniq_Ptr_Data_Struct_Projection_Struct_Default_Delete_Struct_Projection #align 8;
} #no_padding;

Std_Unique_Ptr_Mkvparser_Projection_Pointer :: Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer;

Class_Uniq_Ptr_Impl_Struct_Projection_Struct_Default_Delete_Struct_Projection :: struct {
    t: Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Pointer :: Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Ptr_Mk_H9103013391625379756;

Class_Tuple_Struct_Projection_Struct_Default_Delete_Struct_Projection :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Tuple_Element_0_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type :: Std_Nth_Type_0_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type;

Struct_Tuple_Impl_0_Struct_Projection_Struct_Default_Delete_Struct_Projection :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Struct_Projection :: struct {
    head_impl: *Mkvparser_Projection;
}

Class_Unique_Ptr_Char :: struct {
    t: Struct_Uniq_Ptr_Data_Char_Struct_Default_Delete_Char #align 8;
} #no_padding;

Std_Unique_Ptr_Char_Pointer :: Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer;

Class_Uniq_Ptr_Impl_Char_Struct_Default_Delete_Char :: struct {
    t: Class_Tuple_Char_Struct_Default_Delete_Char #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Pointer :: Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Ptr_Char_Std_Default_Delete_Char_Type;

Class_Tuple_Char_Struct_Default_Delete_Char :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Tuple_Element_0_Std_Tuple_Char_Std_Default_Delete_Char_Type :: Std_Nth_Type_0_Char_Std_Default_Delete_Char_Type;

Struct_Tuple_Impl_0_Char_Struct_Default_Delete_Char :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Char :: struct {
    head_impl: *s8;
}

Class_Unique_Ptr_Struct_Colour :: struct {
    t: Struct_Uniq_Ptr_Data_Struct_Colour_Struct_Default_Delete_Struct_Colour #align 8;
} #no_padding;

Std_Unique_Ptr_Mkvparser_Colour_Pointer :: Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer;

Class_Uniq_Ptr_Impl_Struct_Colour_Struct_Default_Delete_Struct_Colour :: struct {
    t: Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Pointer :: Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Ptr_Mkvparser_H8428513105293975008;

Class_Tuple_Struct_Colour_Struct_Default_Delete_Struct_Colour :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Tuple_Element_0_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type :: Std_Nth_Type_0_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type;

Struct_Tuple_Impl_0_Struct_Colour_Struct_Default_Delete_Struct_Colour :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Struct_Colour :: struct {
    head_impl: *Mkvparser_Colour;
}

Std_Remove_Reference_Char_Type :: *s8;

Struct_Default_Delete_Char :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Tuple_Element_1_Std_Tuple_Char_Std_Default_Delete_Char_Type :: Std_Nth_Type_1_Char_Std_Default_Delete_Char_Type;

Struct_Tuple_Impl_1_Struct_Default_Delete_Char :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Head_Base_1_Struct_Default_Delete_Char :: struct {
    head_impl: Struct_Default_Delete_Char #align 1;
} #no_padding;

Std_Remove_Reference_Mkvparser_Projection_Type :: *Mkvparser_Projection;

Struct_Default_Delete_Struct_Projection :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Tuple_Element_1_Std_Tuple_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type :: Std_Nth_Type_1_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type;

Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Projection :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Head_Base_1_Struct_Default_Delete_Struct_Projection :: struct {
    head_impl: Struct_Default_Delete_Struct_Projection #align 1;
} #no_padding;

Std_Remove_Reference_Mkvparser_Colour_Type :: *Mkvparser_Colour;

Struct_Default_Delete_Struct_Colour :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Tuple_Element_1_Std_Tuple_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type :: Std_Nth_Type_1_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type;

Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Colour :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Head_Base_1_Struct_Default_Delete_Struct_Colour :: struct {
    head_impl: Struct_Default_Delete_Struct_Colour #align 1;
} #no_padding;

Std_Unique_Ptr_Char_Deleter_Type :: Struct_Default_Delete_Char;

Std_Unique_Ptr_Mkvparser_Projection_Deleter_Type :: Struct_Default_Delete_Struct_Projection;

Std_Unique_Ptr_Mkvparser_Colour_Deleter_Type :: Struct_Default_Delete_Struct_Colour;

Class_Unique_Ptr_Struct_Mastering_Metadata :: struct {
    t: Struct_Uniq_Ptr_Data_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata #align 8;
} #no_padding;

Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Pointer :: Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer;

Class_Uniq_Ptr_Impl_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata :: struct {
    t: Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Pointer :: Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Met_H2101677498902020080;

Class_Tuple_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Tuple_Element_0_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type :: Std_Nth_Type_0_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type;

Struct_Tuple_Impl_0_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Head_Base_0_Struct_Mastering_Metadata :: struct {
    head_impl: *Mkvparser_Mastering_Metadata;
}

Std_Unique_Ptr_Mkvparser_Mastering_Metadata_Deleter_Type :: Struct_Default_Delete_Struct_Mastering_Metadata;

Struct_Default_Delete_Struct_Mastering_Metadata :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Tuple_Element_1_Std_Tuple_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type :: Std_Nth_Type_1_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type;

Struct_Tuple_Impl_1_Struct_Default_Delete_Struct_Mastering_Metadata :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Struct_Head_Base_1_Struct_Default_Delete_Struct_Mastering_Metadata :: struct {
    head_impl: Struct_Default_Delete_Struct_Mastering_Metadata #align 1;
} #no_padding;

Track_Type_in_mkvparser :: u32;
MKVPARSER_TRACK_K_VIDEO_in_mkvparser : Track_Type_in_mkvparser : 1;
MKVPARSER_TRACK_K_AUDIO_in_mkvparser : Track_Type_in_mkvparser : 2;
MKVPARSER_TRACK_K_SUBTITLE_in_mkvparser : Track_Type_in_mkvparser : 17;
MKVPARSER_TRACK_K_METADATA_in_mkvparser : Track_Type_in_mkvparser : 33;

Projection_Projection_Type_in_mkvparser :: s32;
MKVPARSER_PROJECTION_K_TYPE_NOT_PRESENT_in_mkvparser : Projection_Projection_Type_in_mkvparser : -1;
MKVPARSER_PROJECTION_K_RECTANGULAR_in_mkvparser : Projection_Projection_Type_in_mkvparser : 0;
MKVPARSER_PROJECTION_K_EQUIRECTANGULAR_in_mkvparser : Projection_Projection_Type_in_mkvparser : 1;
MKVPARSER_PROJECTION_K_CUBE_MAP_in_mkvparser : Projection_Projection_Type_in_mkvparser : 2;
MKVPARSER_PROJECTION_K_MESH_in_mkvparser : Projection_Projection_Type_in_mkvparser : 3;

EBML_Header :: struct {
    version: s64;
    read_version: s64;
    max_id_length: s64;
    max_size_length: s64;
    doc_type: *s8;
    doc_type_version: s64;
    doc_type_read_version: s64;
}

Block_Lacing :: u32;
MKVPARSER_BLOCK_K_LACING_NONE : Block_Lacing : 0;
MKVPARSER_BLOCK_K_LACING_XIPH : Block_Lacing : 1;
MKVPARSER_BLOCK_K_LACING_FIXED : Block_Lacing : 2;
MKVPARSER_BLOCK_K_LACING_EBML : Block_Lacing : 3;

Std_Remove_Reference_Mkvparser_Mastering_Metadata_Type :: *Mkvparser_Mastering_Metadata;

Struct_Uniq_Ptr_Data_Struct_Mastering_Metadata_Struct_Default_Delete_Struct_Mastering_Metadata :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Uniq_Ptr_Data_Struct_Colour_Struct_Default_Delete_Struct_Colour :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Uniq_Ptr_Data_Struct_Projection_Struct_Default_Delete_Struct_Projection :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Struct_Uniq_Ptr_Data_Char_Struct_Default_Delete_Char :: struct {
    layout_padding_0: [8] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Uniq_Ptr_Impl_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Ptr_Mk_H9103013391625379756 :: *Mkvparser_Projection;

Std_Nth_Type_0_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type :: *Mkvparser_Projection;

Std_Uniq_Ptr_Impl_Char_Std_Default_Delete_Char_Ptr_Char_Std_Default_Delete_Char_Type :: *s8;

Std_Nth_Type_0_Char_Std_Default_Delete_Char_Type :: *s8;

Std_Uniq_Ptr_Impl_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Ptr_Mkvparser_H8428513105293975008 :: *Mkvparser_Colour;

Std_Nth_Type_0_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type :: *Mkvparser_Colour;

Std_Nth_Type_1_Char_Std_Default_Delete_Char_Type :: Struct_Default_Delete_Char;

Std_Nth_Type_1_Mkvparser_Projection_Std_Default_Delete_Mkvparser_Projection_Type :: Struct_Default_Delete_Struct_Projection;

Std_Nth_Type_1_Mkvparser_Colour_Std_Default_Delete_Mkvparser_Colour_Type :: Struct_Default_Delete_Struct_Colour;

Std_Uniq_Ptr_Impl_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Met_H2101677498902020080 :: *Mkvparser_Mastering_Metadata;

Std_Nth_Type_0_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type :: *Mkvparser_Mastering_Metadata;

Std_Nth_Type_1_Mkvparser_Mastering_Metadata_Std_Default_Delete_Mkvparser_Mastering_Metadata_Type :: Struct_Default_Delete_Struct_Mastering_Metadata;

