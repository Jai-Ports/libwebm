// Generated directly from C++ by cpp_transpiler.
#load "cpp_transpiler_runtime.jai";

c_str :: (using class_basic_string_char: *Class_Basic_String_Char) -> *s8 {
    return cast,no_check(*s8) (data(class_basic_string_char));
}

data :: (using class_basic_string_char: *Class_Basic_String_Char) -> Std_Basic_String_Char_Pointer {
    return dataplus.p;
}

std_operator :: (result: *Class_Basic_String_Char, lhs: *Class_Basic_String_Char, rhs: *s8) {
    init_2(result, append(lhs, rhs));
}

append :: (using class_basic_string_char: *Class_Basic_String_Char, s: *s8) -> *Class_Basic_String_Char {
    N := length(s);
    check_length(class_basic_string_char, 0, N, c_string("basic_string::append"));
    return cast,no_check(*Class_Basic_String_Char) (append(class_basic_string_char, s, N));
}

length :: (s: *Std_Char_Traits_Char_Char_Type) -> u64 {
    return cstring_length(s);
}

append :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    s: *s8,
    n: Std_Basic_String_Char_Size_Type
) -> *Class_Basic_String_Char {
    LEN := n + size(class_basic_string_char);

    if LEN <= capacity(class_basic_string_char) {
        if n != 0 {
            copy(data(class_basic_string_char) + size(class_basic_string_char), s, n);
        }
    } else {
        mutate(class_basic_string_char, size(class_basic_string_char), 0, s, n);
    }

    set_length(class_basic_string_char, LEN);
    return class_basic_string_char;
}

size :: (using class_basic_string_char: *Class_Basic_String_Char) -> Std_Basic_String_Char_Size_Type {
    sz := string_length;
    if sz > max_size(class_basic_string_char) {
        c_transpiler_unreachable();
    }
    return sz;
}

max_size :: (using class_basic_string_char: *Class_Basic_String_Char) -> Std_Basic_String_Char_Size_Type {
    DIFFMAX: u64 =
        (cast,no_check(u64) (ifx cast,no_check(s64) (-cast(s32) 1) < 0 then ((((cast(s64) 1) << (((((cast,no_check(s32) GNU_CXX_IS_INTEGER_NONSTRICT_LONG_WIDTH) - cast(s32) (cast,no_check(s64) (-cast(s32) 1) < 0)) - 1)) & 63)) - 1) << 1) + 1 else ~(cast(s64) 0))) /
            1;
    ALLOCMAX := max_size(get_allocator(class_basic_string_char));
    return min(DIFFMAX, ALLOCMAX) - 1;
}

get_allocator :: (using class_basic_string_char: *Class_Basic_String_Char) -> *Std_Basic_String_Char_Allocator_Type {
    return cast(*Class_Allocator_Char) *dataplus;
}

max_size :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Char_Allocator_Type
) -> Std_Allocator_Traits_Std_Allocator_Char_Size_Type {
    return max_size(cast(*Class_New_Allocator_Char) ((cast(**Class_Allocator_Char) *(a)).*));
}

max_size :: inline (using class_new_allocator_char: *Class_New_Allocator_Char) -> Std_New_Allocator_Size_Type {
    return max_size_2(class_new_allocator_char);
}

max_size_2 :: inline (using class_new_allocator_char: *Class_New_Allocator_Char) -> Std_New_Allocator_Size_Type {
    return (cast,no_check(u64) (9223372036854775807)) / 1;
}

set_length :: (using class_basic_string_char: *Class_Basic_String_Char, n: Std_Basic_String_Char_Size_Type) {
    assign(
        *(data(class_basic_string_char))[n],
        (ifx true { temporary___g0: Std_Char_Traits_Char_Char_Type = cast,no_check(s8) 0; *temporary___g0; })
    );
    length(class_basic_string_char, n);
}

length :: (using class_basic_string_char: *Class_Basic_String_Char, length: Std_Basic_String_Char_Size_Type) {
    string_length = length;
}

assign :: (c1: *Std_Char_Traits_Char_Char_Type, c2: *Std_Char_Traits_Char_Char_Type) {
    assignment_0: Std_Char_Traits_Char_Char_Type = c2.*;
    ((cast,no_check(*Std_Char_Traits_Char_Char_Type) *(((cast(**Std_Char_Traits_Char_Char_Type) *(c1)).*).*)).*) = assignment_0;
}

mutate :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    pos: Std_Basic_String_Char_Size_Type,
    len1: Std_Basic_String_Char_Size_Type,
    s: *s8,
    len2: Std_Basic_String_Char_Size_Type
) {
    HOW_MUCH := length(class_basic_string_char) - pos - len1;

    new_capacity := length(class_basic_string_char) + len2 - len1;
    r :=
        cast,no_check(Std_Basic_String_Char_Pointer) (create(class_basic_string_char, *new_capacity, capacity(class_basic_string_char)));

    if pos != 0 {
        copy(r, data(class_basic_string_char), pos);
    }
    if s != null && len2 != 0 {
        copy(r + pos, s, len2);
    }
    if HOW_MUCH != 0 {
        copy(r + pos + len2, data(class_basic_string_char) + pos + len1, HOW_MUCH);
    }

    dispose(class_basic_string_char);
    data(class_basic_string_char, r);
    capacity(class_basic_string_char, new_capacity);
}

length :: (using class_basic_string_char: *Class_Basic_String_Char) -> Std_Basic_String_Char_Size_Type {
    return size(class_basic_string_char);
}

capacity :: (using class_basic_string_char: *Class_Basic_String_Char, capacity: Std_Basic_String_Char_Size_Type) {
    c_transpiler_field_2.allocated_capacity = capacity;
}

capacity :: (using class_basic_string_char: *Class_Basic_String_Char) -> Std_Basic_String_Char_Size_Type {
    sz :=
        (ifx is_local(class_basic_string_char) then cast,no_check(Std_Basic_String_Char_Size_Type) STD_BASIC_STRING_CHAR_S_LOCAL_CAPACITY else c_transpiler_field_2.allocated_capacity);
    if sz < cast,no_check(u64) STD_BASIC_STRING_CHAR_S_LOCAL_CAPACITY || sz > max_size(class_basic_string_char) {
        c_transpiler_unreachable();
    }
    return sz;
}

is_local :: (using class_basic_string_char: *Class_Basic_String_Char) -> bool {
    if data(class_basic_string_char) == local_data(class_basic_string_char) {
        if string_length > cast,no_check(Std_Basic_String_Char_Size_Type) STD_BASIC_STRING_CHAR_S_LOCAL_CAPACITY {
            c_transpiler_unreachable();
        }
        return true;
    }
    return false;
}

local_data :: (using class_basic_string_char: *Class_Basic_String_Char) -> Std_Basic_String_Char_Const_Pointer {
    return cast,no_check(Std_Basic_String_Char_Const_Pointer) (pointer_to(c_transpiler_field_2.local_buf.data));
}

pointer_to :: (
    r: *Std_Ptr_Traits_Ptr_To_Const_Char_Const_Char_Element_Type
) -> Std_Ptr_Traits_Ptr_To_Const_Char_Const_Char_Pointer {
    return cast,no_check(Std_Ptr_Traits_Ptr_To_Const_Char_Const_Char_Pointer) (r);
}

create :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    capacity: *Std_Basic_String_Char_Size_Type,
    old_capacity: Std_Basic_String_Char_Size_Type
) -> Std_Basic_String_Char_Pointer {
    if capacity.* > max_size(class_basic_string_char) {
        std_throw_length_error(c_string("basic_string::_M_create"));
    }

    if capacity.* > old_capacity && capacity.* < 2 * old_capacity {
        assignment_1: Std_Basic_String_Char_Size_Type = (2 * old_capacity);
        ((cast,no_check(*Std_Basic_String_Char_Size_Type) *(((cast(**Std_Basic_String_Char_Size_Type) *(capacity)).*).*)).*) = assignment_1;

        if capacity.* > max_size(class_basic_string_char) {
            assignment_2: Std_Basic_String_Char_Size_Type = max_size(class_basic_string_char);
            ((cast,no_check(*Std_Basic_String_Char_Size_Type) *(((cast(**Std_Basic_String_Char_Size_Type) *(capacity)).*).*)).*) = assignment_2;
        }
    }

    return cast,no_check(Std_Basic_String_Char_Pointer) (allocate(get_allocator_2(class_basic_string_char), capacity.* + 1));
}

get_allocator_2 :: (using class_basic_string_char: *Class_Basic_String_Char) -> *Std_Basic_String_Char_Allocator_Type {
    return cast(*Class_Allocator_Char) *dataplus;
}

allocate :: (
    a: *Std_Basic_String_Char_Char_Alloc_Type,
    n: Std_Basic_String_Char_Size_Type
) -> Std_Basic_String_Char_Pointer {
    p := cast,no_check(Std_Basic_String_Char_Pointer) (allocate_2(a, n));

    return p;
}

allocate_2 :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Char_Allocator_Type,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) -> Std_Allocator_Traits_Std_Allocator_Char_Pointer {
    return cast,no_check(Std_Allocator_Traits_Std_Allocator_Char_Pointer) (allocate(cast(*Class_New_Allocator_Char) ((cast(**Class_Allocator_Char) *(a)).*), n, null));
}

allocate :: (
    using class_new_allocator_char: *Class_New_Allocator_Char,
    n: Std_New_Allocator_Size_Type,
    unnamed_1031: *void
) -> *s8 {
    #assert true; // validated by the C++ frontend

    if cast(s64) (n > max_size_2(class_new_allocator_char)) != 0 {
        if n > (cast(u64) 18446744073709551615) / 1 {
            std_throw_bad_array_new_length();
        }
        std_throw_bad_alloc();
    } else {
        return cast(*s8) c_transpiler_cpp_operator_new((n * 1));
    }
    return unreachable_value(*s8);
}

data :: (using class_basic_string_char: *Class_Basic_String_Char, p: Std_Basic_String_Char_Pointer) {
    dataplus.p = cast,no_check(Std_Basic_String_Char_Pointer) (p);
}

dispose :: (using class_basic_string_char: *Class_Basic_String_Char) {
    if !is_local(class_basic_string_char) {
        destroy(class_basic_string_char, c_transpiler_field_2.allocated_capacity);
    }
}

destroy :: (using class_basic_string_char: *Class_Basic_String_Char, size: Std_Basic_String_Char_Size_Type) {
    deallocate(get_allocator_2(class_basic_string_char), data(class_basic_string_char), size + 1);
}

deallocate :: inline (
    a: *Std_Allocator_Traits_Std_Allocator_Char_Allocator_Type,
    p: Std_Allocator_Traits_Std_Allocator_Char_Pointer,
    n: Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type
) {
    deallocate(cast(*Class_New_Allocator_Char) ((cast(**Class_Allocator_Char) *(a)).*), p, n);
}

deallocate :: (using class_new_allocator_char: *Class_New_Allocator_Char, p: *s8, n: Std_New_Allocator_Size_Type) {
    c_transpiler_cpp_operator_delete(cast(*void) p);
}

copy :: (d: *s8, s: *s8, n: Std_Basic_String_Char_Size_Type) {
    if n == 1 {
        assign(d, s);
    } else {
        copy_2(d, s, n);
    }
}

copy_2 :: (
    s1: *Std_Char_Traits_Char_Char_Type,
    s2: *Std_Char_Traits_Char_Char_Type,
    n: u64
) -> *Std_Char_Traits_Char_Char_Type {
    if n == 0 {
        return s1;
    }

    return cast(*Std_Char_Traits_Char_Char_Type) copy_memory(s1, s2, n);
}

check_length :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    n1: Std_Basic_String_Char_Size_Type,
    n2: Std_Basic_String_Char_Size_Type,
    s: *s8
) {
    if max_size(class_basic_string_char) - (size(class_basic_string_char) - n1) < n2 {
        std_throw_length_error(s);
    }
}

close :: (using class_basic_ifstream_char: *Class_Basic_Ifstream_Char) {
    if close(*filebuf) == null {
        setstate(
            cast(*Class_Basic_Ios_Char) cpp_transpiler_derived_to_virtual_base(cast(*void) class_basic_ifstream_char, 24),
            STD_S_FAILBIT
        );
    }
}

setstate :: (using class_basic_ios_char: *Class_Basic_Ios_Char, state: Std_Ios_Base_Iostate) {
    clear(class_basic_ios_char, std_operator_2(rdstate(class_basic_ios_char), state));
}

rdstate :: (using class_basic_ios_char: *Class_Basic_Ios_Char) -> Std_Ios_Base_Iostate {
    return (cast(*Ios_Base) class_basic_ios_char).streambuf_state;
}

std_operator_2 :: (a: Std_Ios_Iostate, b: Std_Ios_Iostate) -> Std_Ios_Iostate {
    return (a | b);
}

good :: (using class_basic_ios_char: *Class_Basic_Ios_Char) -> bool {
    return rdstate(class_basic_ios_char) == 0;
}

libwebm_get_temp_file_name :: (result: *String) {
    temporary_g1: Class_Allocator_Char = ---;
    init(*temporary_g1);
    temporary_g2: String = ---;
    init(
        *temporary_g2,
        (ifx ((getenv(c_string("TEST_TMPDIR"))) != null) then cast,no_check(*s8) (getenv(c_string("TEST_TMPDIR"))) else cast,no_check(*s8) (c_string("."))),
        *temporary_g1
    );
    temporary_g3: Class_Basic_String_Char = ---;
    std_operator(*temporary_g3, *temporary_g2, c_string("/libwebm_temp.XXXXXX"));
    temp_file_name_template_str: String = ---;
    defer deinit(*temp_file_name_template_str);
    init_2(*temp_file_name_template_str, *temporary_g3);
    deinit(*temporary_g3);
    deinit(*temporary_g2);
    deinit(*temporary_g1);
    temp_file_name_template :=
        cast,no_check(*s8) (cast(*s8) cpp_transpiler_allocate_array_raw(
            length(*temp_file_name_template_str) + 1,
            size_of(s8)
        ));
    if temp_file_name_template == null {
        {
            temporary_g4: String = ---;
            init(*temporary_g4);
            init_2(result, *temporary_g4);
            deinit(*temporary_g4);
            return;
        }
    }
    fill_memory(temp_file_name_template, 0, length(*temp_file_name_template_str) + 1);
    copy(*temp_file_name_template_str, temp_file_name_template, length(*temp_file_name_template_str), 0);
    fd := mkstemp(temp_file_name_template);
    temporary_g5: Class_Allocator_Char = ---;
    init(*temporary_g5);
    temporary_g6: String = ---;
    init(*temporary_g6, temp_file_name_template, *temporary_g5);
    temporary_g7: String = ---;
    init_2(*temporary_g7, *temporary_g6);
    temporary_g8: String = ---;
    init(*temporary_g8);
    temporary_4666_copy: String = ---;
    init_2(*temporary_4666_copy, *temporary_g8);
    temp_file_name: String = ---;
    defer deinit(*temp_file_name);
    init_2(
        *temp_file_name,
        (ifx true { temporary___g0: Class_Basic_String_Char = (ifx fd != -1 then temporary_g7 else temporary_4666_copy); *temporary___g0; })
    );
    deinit(*temporary_4666_copy);
    deinit(*temporary_g8);
    deinit(*temporary_g7);
    deinit(*temporary_g6);
    deinit(*temporary_g5);
    {
        cpp_transpiler_delete_g9 := cast,no_check(*s8) (temp_file_name_template);
        if cpp_transpiler_delete_g9 != null {
            cpp_transpiler_deallocate_array_raw(cast(*void) cpp_transpiler_delete_g9);
        }
    }
    if fd != -1 {
        close(fd);
    }
    init_2(result, *temp_file_name);
}

copy :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    s: *s8,
    n: Std_Basic_String_Char_Size_Type,
    pos: Std_Basic_String_Char_Size_Type
) -> Std_Basic_String_Char_Size_Type {
    check(class_basic_string_char, pos, c_string("basic_string::copy"));
    n = limit(class_basic_string_char, pos, n);

    if n != 0 {
        copy(s, data(class_basic_string_char) + pos, n);
    }

    return n;
}

limit :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    pos: Std_Basic_String_Char_Size_Type,
    off: Std_Basic_String_Char_Size_Type
) -> Std_Basic_String_Char_Size_Type {
    TESTOFF := off < size(class_basic_string_char) - pos;
    return ifx TESTOFF then off else size(class_basic_string_char) - pos;
}

check :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    pos: Std_Basic_String_Char_Size_Type,
    s: *s8
) -> Std_Basic_String_Char_Size_Type {
    if pos > size(class_basic_string_char) {
        std_throw_out_of_range_fmt(
            c_string("%s: __pos (which is %zu) > this->size() (which is %zu)"),
            s,
            pos,
            size(class_basic_string_char)
        );
    }
    return pos;
}

assign_2 :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    str: *Class_Basic_String_Char
) -> *Class_Basic_String_Char {
    EQUAL_ALLOCS := always_equal() || equals(get_allocator_2(class_basic_string_char), get_allocator_2(str));
    if !is_local(class_basic_string_char) && propagate_on_move_assign() && !EQUAL_ALLOCS {
        destroy(class_basic_string_char, c_transpiler_field_2.allocated_capacity);
        data(class_basic_string_char, local_data_2(class_basic_string_char));
        set_length(class_basic_string_char, 0);
    }

    std_alloc_on_move(get_allocator_2(class_basic_string_char), get_allocator_2(str));

    if is_local(str) {
        if cast(s64) (str != class_basic_string_char) != 0 {
            if size(str) != 0 {
                copy(data(class_basic_string_char), data(str), size(str));
            }
            set_length(class_basic_string_char, size(str));
        }
    } else if propagate_on_move_assign() || EQUAL_ALLOCS {
        data_value: Std_Basic_String_Char_Pointer =
            cast,no_check(Std_Basic_String_Char_Pointer) (cast(Std_Basic_String_Char_Pointer) null);
        capacity_value: Std_Basic_String_Char_Size_Type = ---;
        if !is_local(class_basic_string_char) {
            if EQUAL_ALLOCS {
                data_value = cast,no_check(Std_Basic_String_Char_Pointer) (data(class_basic_string_char));
                capacity_value = c_transpiler_field_2.allocated_capacity;
            } else {
                destroy(class_basic_string_char, c_transpiler_field_2.allocated_capacity);
            }
        }

        data(class_basic_string_char, data(str));
        length(class_basic_string_char, length(str));
        capacity(class_basic_string_char, str.c_transpiler_field_2.allocated_capacity);
        if data_value != null {
            data(str, data_value);
            capacity(str, capacity_value);
        } else {
            data(str, use_local_data(str));
        }
    } else {
        assign(class_basic_string_char, str);
    }
    clear(str);
    return class_basic_string_char;
}

clear :: (using class_basic_string_char: *Class_Basic_String_Char) {
    set_length(class_basic_string_char, 0);
}

assign :: (using class_basic_string_char: *Class_Basic_String_Char, str: *Class_Basic_String_Char) {
    if class_basic_string_char != str {
        RSIZE := length(str);
        CAPACITY := capacity(class_basic_string_char);

        if RSIZE > CAPACITY {
            new_capacity := RSIZE;
            tmp :=
                cast,no_check(Std_Basic_String_Char_Pointer) (create(class_basic_string_char, *new_capacity, CAPACITY));
            dispose(class_basic_string_char);
            data(class_basic_string_char, tmp);
            capacity(class_basic_string_char, new_capacity);
        }

        if RSIZE != 0 {
            copy(data(class_basic_string_char), data(str), RSIZE);
        }

        set_length(class_basic_string_char, RSIZE);
    }
}

use_local_data :: inline (using class_basic_string_char: *Class_Basic_String_Char) -> Std_Basic_String_Char_Pointer {
    return cast,no_check(Std_Basic_String_Char_Pointer) (local_data_2(class_basic_string_char));
}

local_data_2 :: (using class_basic_string_char: *Class_Basic_String_Char) -> Std_Basic_String_Char_Pointer {
    return cast,no_check(Std_Basic_String_Char_Pointer) (pointer_to_2(c_transpiler_field_2.local_buf.data));
}

pointer_to_2 :: (r: *Std_Ptr_Traits_Ptr_To_Char_Char_Element_Type) -> Std_Ptr_Traits_Ptr_To_Char_Char_Pointer {
    return cast,no_check(Std_Ptr_Traits_Ptr_To_Char_Char_Pointer) (r);
}

equals :: inline (unnamed_2238: *Class_Allocator_Char, unnamed_2239: *Class_Allocator_Char) -> bool {
    return true;
}

always_equal :: inline () -> bool {
    return true;
}

propagate_on_move_assign :: inline () -> bool {
    return true;
}

std_alloc_on_move :: inline (one: *Class_Allocator_Char, two: *Class_Allocator_Char) {
    assign_3(one, two);
}

assign_3 :: inline (
    using class_allocator_char: *Class_Allocator_Char,
    unnamed_2376: *Class_Allocator_Char
) -> *Class_Allocator_Char {
    return class_allocator_char;
}

fail :: (using class_basic_ios_char: *Class_Basic_Ios_Char) -> bool {
    return std_operator_3(rdstate(class_basic_ios_char), std_operator_2(STD_S_BADBIT, STD_S_FAILBIT)) != 0;
}

std_operator_3 :: (a: Std_Ios_Iostate, b: Std_Ios_Iostate) -> Std_Ios_Iostate {
    return (a & b);
}

operator *[] :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    pos: Std_Basic_String_Char_Size_Type
) -> Std_Basic_String_Char_Reference {
    if cast(s64) (!(pos <= size(class_basic_string_char))) != 0 {
        std_glibcxx_assert_fail(
            c_string("/../lib64/gcc/x86_64-pc-linux-gnu/16/../../../../include/c++/16/bits/basic_string.h"),
            1393,
            c_string("reference std::basic_string<char>::operator[](size_type) [_CharT = char, _Traits = std::char_traits<char>, _Alloc = std::allocator<char>]"),
            c_string("__pos <= size()")
        );
    }

    return *(data(class_basic_string_char))[pos];
}

construct :: (using class_basic_string_char: *Class_Basic_String_Char, n: Std_Basic_String_Char_Size_Type, c: s8) {
    if n > cast,no_check(Std_Basic_String_Char_Size_Type) STD_BASIC_STRING_CHAR_S_LOCAL_CAPACITY {
        data(class_basic_string_char, create(class_basic_string_char, *n, 0));
        capacity(class_basic_string_char, n);
    } else {
        init_local_buf(class_basic_string_char);
    }

    if n != 0 {
        assign(data(class_basic_string_char), n, c);
    }

    set_length(class_basic_string_char, n);
}

assign :: (d: *s8, n: Std_Basic_String_Char_Size_Type, c: s8) {
    if n == 1 {
        assign(d, *c);
    } else {
        assign_4(d, n, c);
    }
}

assign_4 :: (
    s: *Std_Char_Traits_Char_Char_Type,
    n: u64,
    a: Std_Char_Traits_Char_Char_Type
) -> *Std_Char_Traits_Char_Char_Type {
    if n == 0 {
        return s;
    }

    return cast(*Std_Char_Traits_Char_Char_Type) fill_memory(s, cast,no_check(s32) a, n);
}

init_local_buf :: inline (using class_basic_string_char: *Class_Basic_String_Char) {
}

libwebm_get_file_size :: (file_name: *String) -> u64 {
    file_size: u64 = 0;

    st: C_Transpiler_POSIX.stat64_t = ---;
    st.st_size = 0;
    if stat(c_str(file_name), *st) == 0 {
        file_size = cast,no_check(u64) st.st_size;
    }
    return file_size;
}

construct :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    beg: *s8,
    end: *s8,
    unnamed_2941: Forward_Iterator_Tag
) {
    dnew := cast,no_check(Std_Basic_String_Char_Size_Type) std_distance(beg, end);

    if dnew > cast,no_check(Std_Basic_String_Char_Size_Type) STD_BASIC_STRING_CHAR_S_LOCAL_CAPACITY {
        data(class_basic_string_char, create(class_basic_string_char, *dnew, 0));
        capacity(class_basic_string_char, dnew);
    } else {
        init_local_buf(class_basic_string_char);
    }

    guard: Class_Basic_String_Char_M_Construct_Guard = ---;
    defer deinit(*guard);
    init(*guard, class_basic_string_char);

    copy_chars(data(class_basic_string_char), beg, end);

    guard.guarded = cast,no_check(*Class_Basic_String_Char) (cast(*Class_Basic_String_Char) null);

    set_length(class_basic_string_char, dnew);
}

std_distance :: inline (first: *s8, last: *s8) -> Std_Iterator_Traits_Const_Char_Difference_Type {
    return std_distance(first, last, std_iterator_category(*first));
}

std_iterator_category :: inline (unnamed_2998: **s8) -> Std_Iterator_Traits_Const_Char_Iterator_Category {
    return Std_Iterator_Traits_Const_Char_Iterator_Category.{};
}

std_distance :: inline (
    first: *s8,
    last: *s8,
    unnamed_3016: Random_Access_Iterator_Tag
) -> Std_Iterator_Traits_Const_Char_Difference_Type {
    return last - first;
}

copy_chars :: (p: *s8, k1: *s8, k2: *s8) {
    copy(p, std_niter_base(k1), cast,no_check(Std_Basic_String_Char_Size_Type) (k2 - k1));
}

std_niter_base :: inline (it_: *s8) -> *s8 {
    return it_;
}

construct :: (using class_basic_string_char: *Class_Basic_String_Char, str: *s8, n: Std_Basic_String_Char_Size_Type) {
    if n > cast,no_check(Std_Basic_String_Char_Size_Type) STD_BASIC_STRING_CHAR_S_LOCAL_CAPACITY {
        data(class_basic_string_char, create(class_basic_string_char, *n, 0));
        capacity(class_basic_string_char, n);
    } else {
        init_local_buf(class_basic_string_char);
    }

    copy(data(class_basic_string_char), str, n + 1);

    length(class_basic_string_char, n);
}

select_on_container_copy_construction :: inline (
    result: *Std_Allocator_Traits_Std_Allocator_Char_Allocator_Type,
    rhs: *Std_Allocator_Traits_Std_Allocator_Char_Allocator_Type
) {
    init(result, rhs);
}

select_on_copy :: inline (result: *Class_Allocator_Char, a: *Class_Allocator_Char) {
    {
        temporary_g10: Std_Allocator_Traits_Std_Allocator_Char_Allocator_Type = ---;
        select_on_container_copy_construction(*temporary_g10, a);
        init(result, *temporary_g10);
        deinit(*temporary_g10);
    }
}

init :: (using temp_file_deleter: *Temp_File_Deleter) {
    init(*file_name);
    temporary_g11: String = ---;
    libwebm_get_temp_file_name(*temporary_g11);
    assign_2(*file_name, *temporary_g11);
    deinit(*temporary_g11);
}

init :: (using class_basic_string_char: *Class_Basic_String_Char) {
    temporary_g12: Class_Allocator_Char = ---;
    init(*temporary_g12);

    init(*dataplus, local_data_2(class_basic_string_char), *temporary_g12);
    deinit(*temporary_g12);

    init_local_buf(class_basic_string_char);
    set_length(class_basic_string_char, 0);
}

init :: (
    using alloc_hider: *Struct_Basic_String_Char_Alloc_Hider,
    dat: Std_Basic_String_Char_Pointer,
    a: *Class_Allocator_Char
) {
    init(cast(*Class_Allocator_Char) alloc_hider, a);
    p = cast,no_check(Std_Basic_String_Char_Pointer) (dat);
}

init :: inline (using class_allocator_char: *Class_Allocator_Char, a: *Class_Allocator_Char) {
    init(
        cast(*Class_New_Allocator_Char) class_allocator_char,
        cast(*Class_New_Allocator_Char) ((cast(**Class_Allocator_Char) *(a)).*)
    );
}

init :: inline (using class_new_allocator_char: *Class_New_Allocator_Char, unnamed_3434: *Class_New_Allocator_Char) {
}

deinit :: inline (using class_allocator_char: *Class_Allocator_Char) {
    cpp_transpiler_subobject_cleanup_g13: bool = ---;
    defer deinit(cast(*Class_New_Allocator_Char) class_allocator_char);
}

deinit :: (using class_new_allocator_char: *Class_New_Allocator_Char) {
}

init :: inline (using class_allocator_char: *Class_Allocator_Char) {
    init(cast(*Class_New_Allocator_Char) class_allocator_char);
}

init :: inline (using class_new_allocator_char: *Class_New_Allocator_Char) {
}

init :: (using temp_file_deleter: *Temp_File_Deleter, _file_name: *String) {
    init(*file_name, _file_name);
}

init :: (using class_basic_string_char: *Class_Basic_String_Char, str: *Class_Basic_String_Char) {
    temporary_g14: Class_Allocator_Char = ---;
    select_on_copy(*temporary_g14, get_allocator(str));
    init(*dataplus, local_data_2(class_basic_string_char), *temporary_g14);
    deinit(*temporary_g14);

    construct(class_basic_string_char, data(str), length(str));
}

deinit :: (using class_basic_string_char: *Class_Basic_String_Char) {
    cpp_transpiler_subobject_cleanup_g15: bool = ---;
    defer deinit(*dataplus);
    dispose(class_basic_string_char);
}

deinit :: (using alloc_hider: *Struct_Basic_String_Char_Alloc_Hider) {
    cpp_transpiler_subobject_cleanup_g16: bool = ---;
    defer deinit(cast(*Class_Allocator_Char) alloc_hider);
}

deinit :: (using temp_file_deleter: *Temp_File_Deleter) {
    cpp_transpiler_subobject_cleanup_g17: bool = ---;
    defer deinit(*file_name);
    {
        file: Ifstream = ---;
        defer deinit(*file);
        init(*file, c_str(*file_name), STD_S_IN);
        if good(cast(*Class_Basic_Ios_Char) cpp_transpiler_derived_to_virtual_base(cast(*void) *file, 24)) {
            close(*file);
            remove_(c_str(*file_name));
        }
    }
}

name :: (using temp_file_deleter: *Temp_File_Deleter) -> *String {
    return *file_name;
}

init_2 :: (using class_basic_string_char: *Class_Basic_String_Char, str: *Class_Basic_String_Char) {
    init(*dataplus, local_data_2(class_basic_string_char), get_allocator_2(str));

    if is_local(str) {
        init_local_buf(class_basic_string_char);
        copy_2(c_transpiler_field_2.local_buf.data, str.c_transpiler_field_2.local_buf.data, length(str) + 1);
    } else {
        data(class_basic_string_char, data(str));
        capacity(class_basic_string_char, str.c_transpiler_field_2.allocated_capacity);
    }

    length(class_basic_string_char, length(str));
    data(str, use_local_data(str));
    set_length(str, 0);
}

init :: (using class_basic_string_char: *Class_Basic_String_Char, s: *s8, a: *Class_Allocator_Char) {
    init_3(*dataplus, local_data_2(class_basic_string_char), a);

    if s == null {
        std_throw_logic_error(c_string("basic_string: construction from null is not valid"));
    }
    end := cast,no_check(*s8) ((s + length(s)));
    construct(class_basic_string_char, s, end, Forward_Iterator_Tag.{});
}

init_3 :: (
    using alloc_hider: *Struct_Basic_String_Char_Alloc_Hider,
    dat: Std_Basic_String_Char_Pointer,
    a: *Class_Allocator_Char
) {
    init(cast(*Class_Allocator_Char) alloc_hider, a);
    p = cast,no_check(Std_Basic_String_Char_Pointer) (dat);
}

init :: (using guard: *Class_Basic_String_Char_M_Construct_Guard, s: *Class_Basic_String_Char) {
    guarded = cast,no_check(*Class_Basic_String_Char) (s);
}

deinit :: (using guard: *Class_Basic_String_Char_M_Construct_Guard) {
    if guarded != null {
        dispose(guarded);
    }
}

init :: (
    using class_basic_string_char: *Class_Basic_String_Char,
    n: Std_Basic_String_Char_Size_Type,
    c: s8,
    a: *Class_Allocator_Char
) {
    init_3(*dataplus, local_data_2(class_basic_string_char), a);
    construct(class_basic_string_char, n, c);
}

libwebm_get_file_contents :: (file_name: *String, contents: *String) -> bool {
    file: Ifstream = ---;
    defer deinit(*file);
    init(*file, c_str(file_name), STD_S_IN);
    temporary_g18: Class_Allocator_Char = ---;
    init(*temporary_g18);
    temporary_g19: String = ---;
    init(*temporary_g19, libwebm_get_file_size(file_name), cast,no_check(s8) (0), *temporary_g18);
    assign_2(contents, *temporary_g19);
    deinit(*temporary_g19);
    deinit(*temporary_g18);
    if good(cast(*Class_Basic_Ios_Char) cpp_transpiler_derived_to_virtual_base(cast(*void) *file, 24)) && size(contents) != 0 {
        ((cast(**Std_Basic_Istream_Char_Istream_Type) *(read(
            cast(*Class_Basic_Istream_Char) *file,
            (cast(**Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Value_Type) *(*(contents.*[cast(Std_Basic_String_Char_Size_Type) 0]))).*,
            cast,no_check(Streamsize) size(contents)
        ))).*).*;
    }
    return !fail(cast(*Class_Basic_Ios_Char) cpp_transpiler_derived_to_virtual_base(cast(*void) *file, 24));
}

Cpp_Transpiler_LibStdCpp :: #library,system "libstdc++.so.6";
_ZSt20__throw_length_errorPKc :: (unnamed_1156: *s8) #foreign Cpp_Transpiler_LibStdCpp;
std_throw_length_error :: _ZSt20__throw_length_errorPKc;

_ZSt28__throw_bad_array_new_lengthv :: () #foreign Cpp_Transpiler_LibStdCpp;
std_throw_bad_array_new_length :: _ZSt28__throw_bad_array_new_lengthv;

_ZSt17__throw_bad_allocv :: () #foreign Cpp_Transpiler_LibStdCpp;
std_throw_bad_alloc :: _ZSt17__throw_bad_allocv;

_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv :: (
    class_basic_filebuf_char: *Class_Basic_Filebuf_Char
) -> *Std_Basic_Filebuf_Char_Filebuf_Type #foreign Cpp_Transpiler_LibStdCpp;
close :: _ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv;

_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate :: (
    class_basic_ios_char: *Class_Basic_Ios_Char,
    state: Std_Ios_Base_Iostate
) #foreign Cpp_Transpiler_LibStdCpp;
clear :: _ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate;

System_Library_Compiler :: #import "Compiler";
#run System_Library_Compiler.compiler_add_library_search_directory("/usr/lib");
System_Library_libc_so_6 :: #library,system "libc.so.6";
getenv :: (name: *s8) -> *s8 #foreign System_Library_libc_so_6;

mkstemp :: (template: *s8) -> s32 #foreign System_Library_libc_so_6;

close :: (fd: s32) -> s32 #foreign System_Library_libc_so_6;

_ZSt24__throw_out_of_range_fmtPKcz :: (unnamed_1906: *s8, variadic_arguments: ..Any) #foreign Cpp_Transpiler_LibStdCpp;
std_throw_out_of_range_fmt :: _ZSt24__throw_out_of_range_fmtPKcz;

_ZSt21__glibcxx_assert_failPKciS0_S0_ :: (
    file: *s8,
    line: s32,
    function: *s8,
    condition: *s8
) #foreign Cpp_Transpiler_LibStdCpp;
std_glibcxx_assert_fail :: _ZSt21__glibcxx_assert_failPKciS0_S0_;

stat :: (file: *s8, buf: *C_Transpiler_POSIX.stat64_t) -> s32 #foreign System_Library_libc_so_6;

_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev :: (
    class_basic_ifstream_char: *Class_Basic_Ifstream_Char
) #foreign Cpp_Transpiler_LibStdCpp;
deinit :: _ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;

_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode :: (
    class_basic_ifstream_char: *Class_Basic_Ifstream_Char,
    s: *s8,
    mode: Std_Ios_Base_Openmode
) #foreign Cpp_Transpiler_LibStdCpp;
init :: _ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;

remove_ :: (filename: *s8) -> s32 #foreign System_Library_libc_so_6 "remove";

_ZSt19__throw_logic_errorPKc :: (unnamed_3546: *s8) #foreign Cpp_Transpiler_LibStdCpp;
std_throw_logic_error :: _ZSt19__throw_logic_errorPKc;

_ZNSi4readEPcl :: (
    class_basic_istream_char: *Class_Basic_Istream_Char,
    s: *Std_Basic_Istream_Char_Char_Type,
    n: Streamsize
) -> *Std_Basic_Istream_Char_Istream_Type #foreign Cpp_Transpiler_LibStdCpp;
read :: _ZNSi4readEPcl;

Class_Basic_String_Char :: struct {
    dataplus: Struct_Basic_String_Char_Alloc_Hider #align 8;
    string_length: Std_Basic_String_Char_Size_Type #align 1;
    using,only(local_buf, allocated_capacity) c_transpiler_field_2: Union_Std_Basic_String_Char_Anonymous_At_Lib64_Gcc_X86_64_Pc_Linux_Gnu_16_H13715906432764157174 #align 1;
} #no_padding;

Std_Basic_String_Char_Pointer :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Pointer;

Std_Basic_String_Char_Size_Type :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Size_Type;

Std_Char_Traits_Char_Char_Type :: s8;

Gnu_Cxx_Is_Integer_Nonstrict_Long_Width_Values :: u32;
GNU_CXX_IS_INTEGER_NONSTRICT_LONG_WIDTH : Gnu_Cxx_Is_Integer_Nonstrict_Long_Width_Values : 64;

Std_Allocator_Traits_Std_Allocator_Char_Allocator_Type :: Class_Allocator_Char;

Std_Basic_String_Char_Allocator_Type :: Std_Basic_String_Char_Char_Alloc_Type;

Class_Allocator_Char :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Allocator_Traits_Std_Allocator_Char_Size_Type :: u64;

Class_New_Allocator_Char :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_New_Allocator_Size_Type :: u64;

Class_Basic_String_Char_Values :: u32;
STD_BASIC_STRING_CHAR_S_LOCAL_CAPACITY : Class_Basic_String_Char_Values : 15;

Std_Basic_String_Char_Const_Pointer :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Const_Pointer;

Std_Ptr_Traits_Ptr_To_Const_Char_Const_Char_Element_Type :: s8;

Std_Ptr_Traits_Ptr_To_Const_Char_Const_Char_Pointer :: *s8;

Std_Basic_String_Char_Char_Alloc_Type :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Rebind_Char_Other;

Std_Allocator_Traits_Std_Allocator_Type_Parameter_0_0_Size_Type :: u64;

Std_Allocator_Traits_Std_Allocator_Char_Pointer :: *s8;

Class_Basic_Ifstream_Char :: struct {
    layout_padding_0: [16] u8 #align 1;
    filebuf: Std_Basic_Ifstream_Char_Filebuf_Type #align 1;
    layout_padding_1: [264] u8 #align 1;
    alignment_marker_2: [0] u8 #align 8;
} #no_padding;

Class_Basic_Filebuf_Char :: struct {
    layout_padding_0: [64] u8 #align 1;
    lock: C_Lock_in_c__io #align 1;
    file: Std_Basic_Filebuf_File_Type #align 1;
    mode: Std_Ios_Base_Openmode #align 1;
    state_beg: Std_Basic_Filebuf_Char_State_Type_in_fstream #align 1;
    state_cur: Std_Basic_Filebuf_Char_State_Type_in_fstream #align 1;
    state_last: Std_Basic_Filebuf_Char_State_Type_in_fstream #align 1;
    layout_padding_1: [4] u8 #align 1;
    buf: *Std_Basic_Filebuf_Char_Char_Type #align 1;
    buf_size: u64 #align 1;
    buf_allocated: bool #align 1;
    reading: bool #align 1;
    writing: bool #align 1;
    pback: Std_Basic_Filebuf_Char_Char_Type #align 1;
    layout_padding_2: [4] u8 #align 1;
    pback_cur_save: *Std_Basic_Filebuf_Char_Char_Type #align 1;
    pback_end_save: *Std_Basic_Filebuf_Char_Char_Type #align 1;
    pback_init: bool #align 1;
    layout_padding_3: [7] u8 #align 1;
    codecvt: *Std_Basic_Filebuf_Char_Codecvt_Type #align 1;
    ext_buf: *s8 #align 1;
    ext_buf_size: Streamsize #align 1;
    ext_next: *s8 #align 1;
    ext_end: *s8 #align 1;
    alignment_marker_4: [0] u8 #align 8;
} #no_padding;

Class_Basic_Ios_Char :: struct {
    layout_padding_0: [216] u8 #align 1;
    tie: *Class_Std_Basic_Ostream_Char #align 1;
    fill: Std_Basic_Ios_Char_Char_Type #align 1;
    fill_init: bool #align 1;
    layout_padding_1: [6] u8 #align 1;
    streambuf: *Class_Basic_Streambuf_Char #align 1;
    ctype: *Std_Basic_Ios_Char_Ctype_Type #align 1;
    num_put: *Std_Basic_Ios_Char_Num_Put_Type #align 1;
    num_get: *Std_Basic_Ios_Char_Num_Get_Type #align 1;
    alignment_marker_2: [0] u8 #align 8;
} #no_padding;

Std_Ios_Iostate :: s32;
STD_S_GOODBIT : Std_Ios_Iostate : 0;
STD_S_BADBIT : Std_Ios_Iostate : 1;
STD_S_EOFBIT : Std_Ios_Iostate : 2;
STD_S_FAILBIT : Std_Ios_Iostate : 4;
STD_S_IOS_IOSTATE_END : Std_Ios_Iostate : 65536;
STD_S_IOS_IOSTATE_MAX : Std_Ios_Iostate : 2147483647;
STD_S_IOS_IOSTATE_MIN : Std_Ios_Iostate : -2147483648;

Std_Ios_Base_Iostate :: Std_Ios_Iostate;

Ios_Base :: struct {
    layout_padding_0: [8] u8 #align 1;
    precision: Streamsize #align 1;
    width: Streamsize #align 1;
    flags: Std_Ios_Base_Fmtflags #align 1;
    exception: Std_Ios_Base_Iostate #align 1;
    streambuf_state: Std_Ios_Base_Iostate #align 1;
    layout_padding_1: [4] u8 #align 1;
    callbacks: *Callback_List #align 1;
    word_zero: Ios_Base_Words #align 1;
    local_word: [8] Ios_Base_Words #align 1;
    word_size: s32 #align 1;
    layout_padding_2: [4] u8 #align 1;
    word: *Ios_Base_Words #align 1;
    ios_locale: Locale #align 1;
    alignment_marker_3: [0] u8 #align 8;
} #no_padding;

String :: Class_Basic_String_Char;

Std_Ptr_Traits_Ptr_To_Char_Char_Element_Type :: s8;

Std_Ptr_Traits_Ptr_To_Char_Char_Pointer :: *s8;

Std_Basic_String_Char_Reference :: Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Reference;

Off_T :: s64;

Forward_Iterator_Tag :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Class_Basic_String_Char_M_Construct_Guard :: struct {
    guarded: *Class_Basic_String_Char;
}

Std_Iterator_Traits_Const_Char_Difference_Type :: s64;

Random_Access_Iterator_Tag :: struct {
    layout_padding_0: [1] u8 #align 1;
} #no_padding;

Std_Iterator_Traits_Const_Char_Iterator_Category :: Random_Access_Iterator_Tag;

Temp_File_Deleter :: struct {
    file_name: String #align 8;
} #no_padding;

Struct_Basic_String_Char_Alloc_Hider :: struct {
    p: Std_Basic_String_Char_Pointer;
}

Ifstream :: Class_Basic_Ifstream_Char;

Std_Ios_Openmode :: s32;
STD_S_APP : Std_Ios_Openmode : 1;
STD_S_ATE : Std_Ios_Openmode : 2;
STD_S_BIN : Std_Ios_Openmode : 4;
STD_S_IN : Std_Ios_Openmode : 8;
STD_S_OUT : Std_Ios_Openmode : 16;
STD_S_TRUNC : Std_Ios_Openmode : 32;
STD_S_NOREPLACE : Std_Ios_Openmode : 64;
STD_S_IOS_OPENMODE_END : Std_Ios_Openmode : 65536;
STD_S_IOS_OPENMODE_MAX : Std_Ios_Openmode : 2147483647;
STD_S_IOS_OPENMODE_MIN : Std_Ios_Openmode : -2147483648;

Std_Ios_Base_Openmode :: Std_Ios_Openmode;

Class_Basic_Istream_Char :: struct {
    layout_padding_0: [8] u8 #align 1;
    gcount: Streamsize #align 1;
    layout_padding_1: [264] u8 #align 1;
    alignment_marker_2: [0] u8 #align 8;
} #no_padding;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Value_Type :: Std_Allocator_Traits_Std_Allocator_Char_Value_Type;

Std_Basic_Istream_Char_Char_Type :: s8;

Streamsize :: s64;

Std_Basic_Istream_Char_Istream_Type :: Class_Basic_Istream_Char;

Std_Basic_Filebuf_Char_Filebuf_Type :: Class_Basic_Filebuf_Char;

Union_Std_Basic_String_Char_Anonymous_At_Lib64_Gcc_X86_64_Pc_Linux_Gnu_16_H13715906432764157174 :: union {
    local_buf: [16] s8;
    allocated_capacity: Std_Basic_String_Char_Size_Type;
}

Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Pointer :: Std_Allocator_Traits_Std_Allocator_Char_Pointer;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Size_Type :: Std_Allocator_Traits_Std_Allocator_Char_Size_Type;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Const_Pointer :: Std_Allocator_Traits_Std_Allocator_Char_Const_Pointer;

Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Rebind_Char_Other :: Class_Allocator_Char;

Std_Basic_Ifstream_Char_Filebuf_Type :: Class_Basic_Filebuf_Char;

C_Lock_in_c__io :: Gthread_Mutex_T;

Std_Basic_Filebuf_File_Type :: Class_Basic_File_Char;

Std_Basic_Filebuf_Char_State_Type_in_fstream :: Std_Char_Traits_Char_State_Type;

Std_Basic_Filebuf_Char_Char_Type :: s8;

Std_Basic_Filebuf_Char_Codecvt_Type :: Class_Std_Codecvt_Char_Char_Mbstate_T;

Class_Std_Basic_Ostream_Char :: struct {
    layout_padding_0: [272] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Basic_Ios_Char_Char_Type :: s8;

Class_Basic_Streambuf_Char :: struct {
    layout_padding_0: [8] u8 #align 1;
    in_beg: *Std_Basic_Streambuf_Char_Char_Type #align 1;
    in_cur: *Std_Basic_Streambuf_Char_Char_Type #align 1;
    in_end: *Std_Basic_Streambuf_Char_Char_Type #align 1;
    out_beg: *Std_Basic_Streambuf_Char_Char_Type #align 1;
    out_cur: *Std_Basic_Streambuf_Char_Char_Type #align 1;
    out_end: *Std_Basic_Streambuf_Char_Char_Type #align 1;
    buf_locale: Locale #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Basic_Ios_Char_Ctype_Type :: Class_Std_Ctype_Char;

Std_Basic_Ios_Char_Num_Put_Type :: Class_Std_Num_Put_Char;

Std_Basic_Ios_Char_Num_Get_Type :: Class_Std_Num_Get_Char;

Std_Ios_Base_Fmtflags :: Std_Ios_Fmtflags;

Callback_List :: struct {
    next: *Callback_List;
    fn: Std_Ios_Base_Event_Callback;
    index: s32;
    refcount: Atomic_Word;
}

Ios_Base_Words :: struct {
    pword: *void;
    iword: s64;
}

Locale :: struct {
    impl: *Impl;
}

Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Reference :: *Gnu_Cxx_Alloc_Traits_Std_Allocator_Char_Value_Type;

Std_Allocator_Traits_Std_Allocator_Char_Value_Type :: s8;

Std_Allocator_Traits_Std_Allocator_Char_Const_Pointer :: *s8;

Gthread_Mutex_T :: Pthread_Mutex_T;

Class_Basic_File_Char :: struct {
    cfile: *C_File;
    cfile_created: bool;
}

Std_Char_Traits_Char_State_Type :: Mbstate_T;

Class_Std_Codecvt_Char_Char_Mbstate_T :: struct {
    layout_padding_0: [16] u8 #align 1;
    c_locale_codecvt: C_Locale #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Basic_Streambuf_Char_Char_Type :: s8;

Class_Std_Ctype_Char :: struct {
    layout_padding_0: [16] u8 #align 1;
    c_locale_ctype: C_Locale #align 1;
    del: bool #align 1;
    layout_padding_1: [7] u8 #align 1;
    toupper: Std_Ctype_Base_To_Type #align 1;
    tolower: Std_Ctype_Base_To_Type #align 1;
    table: *Std_Ctype_Base_Mask #align 1;
    widen_ok: s8 #align 1;
    widen: [256] s8 #align 1;
    narrow: [256] s8 #align 1;
    narrow_ok: s8 #align 1;
    layout_padding_2: [6] u8 #align 1;
    alignment_marker_3: [0] u8 #align 8;
} #no_padding;

Class_Std_Num_Put_Char :: struct {
    layout_padding_0: [16] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Class_Std_Num_Get_Char :: struct {
    layout_padding_0: [16] u8 #align 1;
    alignment_marker_1: [0] u8 #align 8;
} #no_padding;

Std_Ios_Fmtflags :: s32;
STD_S_BOOLALPHA : Std_Ios_Fmtflags : 1;
STD_S_DEC : Std_Ios_Fmtflags : 2;
STD_S_FIXED : Std_Ios_Fmtflags : 4;
STD_S_HEX : Std_Ios_Fmtflags : 8;
STD_S_INTERNAL : Std_Ios_Fmtflags : 16;
STD_S_LEFT : Std_Ios_Fmtflags : 32;
STD_S_OCT : Std_Ios_Fmtflags : 64;
STD_S_RIGHT : Std_Ios_Fmtflags : 128;
STD_S_SCIENTIFIC : Std_Ios_Fmtflags : 256;
STD_S_SHOWBASE : Std_Ios_Fmtflags : 512;
STD_S_SHOWPOINT : Std_Ios_Fmtflags : 1024;
STD_S_SHOWPOS : Std_Ios_Fmtflags : 2048;
STD_S_SKIPWS : Std_Ios_Fmtflags : 4096;
STD_S_UNITBUF : Std_Ios_Fmtflags : 8192;
STD_S_UPPERCASE : Std_Ios_Fmtflags : 16384;
STD_S_ADJUSTFIELD : Std_Ios_Fmtflags : 176;
STD_S_BASEFIELD : Std_Ios_Fmtflags : 74;
STD_S_FLOATFIELD : Std_Ios_Fmtflags : 260;
STD_S_IOS_FMTFLAGS_END : Std_Ios_Fmtflags : 65536;
STD_S_IOS_FMTFLAGS_MAX : Std_Ios_Fmtflags : 2147483647;
STD_S_IOS_FMTFLAGS_MIN : Std_Ios_Fmtflags : -2147483648;

Std_Ios_Base_Event :: u32;
STD_IOS_BASE_ERASE_EVENT : Std_Ios_Base_Event : 0;
STD_IOS_BASE_IMBUE_EVENT : Std_Ios_Base_Event : 1;
STD_IOS_BASE_COPYFMT_EVENT : Std_Ios_Base_Event : 2;

Std_Ios_Base_Event_Callback :: #type (_: Std_Ios_Base_Event, _: *Ios_Base, _: s32);

Atomic_Word :: s32;

Impl :: struct {
    refcount: Atomic_Word;
    facets: **Facet;
    facets_size: u64;
    caches: **Facet;
    names: **s8;
}

Pthread_Mutex_T :: C_Lock;

C_File :: FILE;

Mbstate_T :: Mbstate_T_in___mbstate_t;

C_Locale :: Locale_T;

Std_Ctype_Base_To_Type :: *s32;

Std_Ctype_Base_Mask :: u16;

Facet :: struct {
    layout_padding_0: [8] u8 #align 1;
    refcount: Atomic_Word #align 1;
    layout_padding_1: [4] u8 #align 1;
    alignment_marker_2: [0] u8 #align 8;
} #no_padding;

C_Lock :: union {
    data: Pthread_Mutex_S;
    size: [40] s8;
    align: s64;
}

FILE :: C_Transpiler_POSIX.FILE;

Mbstate_T_in___mbstate_t :: Std_Basic_Filebuf_Char_State_Type;

Locale_T :: *Locale_Struct;

Pthread_Mutex_S :: struct {
    lock: s32;
    count: u32;
    owner: s32;
    nusers: u32;
    kind: s32;
    spins: s16;
    glibc_reserved: s16;
    list: Pthread_List_T;
}

Std_Basic_Filebuf_Char_State_Type :: struct {
    count: s32 #align 4;
    value: Unnamed_108 #align 1;
} #no_padding;

Locale_Struct :: struct {
    locales: [13] *Locale_Data;
    ctype_b: *u16;
    ctype_tolower: *s32;
    ctype_toupper: *s32;
    names: [13] *s8;
}

Pthread_List_T :: Pthread_Internal_List;

Unnamed_108 :: union {
    wch: u32;
    wchb: [4] s8;
}

Pthread_Internal_List :: struct {
    prev: *Pthread_Internal_List;
    next: *Pthread_Internal_List;
}

