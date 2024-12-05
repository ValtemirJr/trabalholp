{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,276) ([1920,8804,1024,0,0,0,0,53247,580,0,0,960,4402,0,0,61440,19584,4,0,0,0,1,480,2201,3840,17608,63488,9855,18,0,96,0,768,0,16384,65408,9831,1,2048,57344,39935,72,16,0,0,0,960,4402,7680,35216,61440,19584,32772,25607,34,8252,275,480,2201,3840,17608,0,512,0,0,0,1000,0,8000,0,2560,0,20480,0,32768,2,0,20,0,0,0,960,4402,0,26624,0,0,32768,25607,34,0,0,0,8,0,0,30720,9792,49154,13311,145,0,2048,65520,9292,0,128,0,53248,0,0,0,0,0,32760,4647,960,4402,0,512,61440,19584,32772,25607,34,16380,2323,0,0,0,13312,40960,63,0,0,2,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","ExpList","FieldList","true","false","'!'","num","'*'","'+'","'-'","or","and","\"==\"","\">=\"","if","then","else","var","'\\\\'","\"->\"","':'","'('","')'","Bool","Num","'{'","'}'","','","'.'","'='","%eof"]
        bit_start = st Prelude.* 35
        bit_end = (st Prelude.+ 1) Prelude.* 35
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..34]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (8) = happyShift action_2
action_0 (9) = happyShift action_4
action_0 (10) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (19) = happyShift action_7
action_0 (22) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (8) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (8) = happyShift action_2
action_3 (9) = happyShift action_4
action_3 (10) = happyShift action_5
action_3 (11) = happyShift action_6
action_3 (12) = happyShift action_21
action_3 (13) = happyShift action_22
action_3 (14) = happyShift action_23
action_3 (15) = happyShift action_24
action_3 (16) = happyShift action_25
action_3 (17) = happyShift action_26
action_3 (18) = happyShift action_27
action_3 (19) = happyShift action_7
action_3 (22) = happyShift action_8
action_3 (23) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (33) = happyShift action_28
action_3 (35) = happyAccept
action_3 (4) = happyGoto action_20
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (8) = happyShift action_2
action_5 (9) = happyShift action_4
action_5 (10) = happyShift action_5
action_5 (11) = happyShift action_6
action_5 (19) = happyShift action_7
action_5 (22) = happyShift action_8
action_5 (23) = happyShift action_9
action_5 (26) = happyShift action_10
action_5 (30) = happyShift action_11
action_5 (4) = happyGoto action_19
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_4

action_7 (8) = happyShift action_2
action_7 (9) = happyShift action_4
action_7 (10) = happyShift action_5
action_7 (11) = happyShift action_6
action_7 (19) = happyShift action_7
action_7 (22) = happyShift action_8
action_7 (23) = happyShift action_9
action_7 (26) = happyShift action_10
action_7 (30) = happyShift action_11
action_7 (4) = happyGoto action_18
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_13

action_9 (22) = happyShift action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_2
action_10 (9) = happyShift action_4
action_10 (10) = happyShift action_5
action_10 (11) = happyShift action_6
action_10 (19) = happyShift action_7
action_10 (22) = happyShift action_8
action_10 (23) = happyShift action_9
action_10 (26) = happyShift action_10
action_10 (30) = happyShift action_11
action_10 (4) = happyGoto action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_2
action_11 (9) = happyShift action_4
action_11 (10) = happyShift action_5
action_11 (11) = happyShift action_6
action_11 (19) = happyShift action_7
action_11 (22) = happyShift action_15
action_11 (23) = happyShift action_9
action_11 (26) = happyShift action_10
action_11 (30) = happyShift action_11
action_11 (4) = happyGoto action_12
action_11 (6) = happyGoto action_13
action_11 (7) = happyGoto action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_2
action_12 (9) = happyShift action_4
action_12 (10) = happyShift action_5
action_12 (11) = happyShift action_6
action_12 (12) = happyShift action_21
action_12 (13) = happyShift action_22
action_12 (14) = happyShift action_23
action_12 (15) = happyShift action_24
action_12 (16) = happyShift action_25
action_12 (17) = happyShift action_26
action_12 (18) = happyShift action_27
action_12 (19) = happyShift action_7
action_12 (22) = happyShift action_8
action_12 (23) = happyShift action_9
action_12 (26) = happyShift action_10
action_12 (30) = happyShift action_11
action_12 (33) = happyShift action_28
action_12 (4) = happyGoto action_20
action_12 _ = happyReduce_23

action_13 (31) = happyShift action_43
action_13 (32) = happyShift action_44
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (31) = happyShift action_41
action_14 (32) = happyShift action_42
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (34) = happyShift action_40
action_15 _ = happyReduce_13

action_16 (8) = happyShift action_2
action_16 (9) = happyShift action_4
action_16 (10) = happyShift action_5
action_16 (11) = happyShift action_6
action_16 (12) = happyShift action_21
action_16 (13) = happyShift action_22
action_16 (14) = happyShift action_23
action_16 (15) = happyShift action_24
action_16 (16) = happyShift action_25
action_16 (17) = happyShift action_26
action_16 (18) = happyShift action_27
action_16 (19) = happyShift action_7
action_16 (22) = happyShift action_8
action_16 (23) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (27) = happyShift action_39
action_16 (30) = happyShift action_11
action_16 (33) = happyShift action_28
action_16 (4) = happyGoto action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (25) = happyShift action_38
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (8) = happyShift action_2
action_18 (9) = happyShift action_4
action_18 (10) = happyShift action_5
action_18 (11) = happyShift action_6
action_18 (12) = happyShift action_21
action_18 (13) = happyShift action_22
action_18 (14) = happyShift action_23
action_18 (15) = happyShift action_24
action_18 (16) = happyShift action_25
action_18 (17) = happyShift action_26
action_18 (18) = happyShift action_27
action_18 (19) = happyShift action_7
action_18 (20) = happyShift action_37
action_18 (22) = happyShift action_8
action_18 (23) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (30) = happyShift action_11
action_18 (33) = happyShift action_28
action_18 (4) = happyGoto action_20
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_2
action_19 (9) = happyShift action_4
action_19 (11) = happyShift action_6
action_19 (12) = happyShift action_21
action_19 (22) = happyShift action_8
action_19 (23) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (30) = happyShift action_11
action_19 (33) = happyShift action_28
action_19 (4) = happyGoto action_20
action_19 _ = happyReduce_3

action_20 (8) = happyShift action_2
action_20 (9) = happyShift action_4
action_20 (10) = happyShift action_5
action_20 (11) = happyShift action_6
action_20 (12) = happyShift action_21
action_20 (13) = happyShift action_22
action_20 (14) = happyShift action_23
action_20 (15) = happyShift action_24
action_20 (16) = happyShift action_25
action_20 (17) = happyShift action_26
action_20 (18) = happyShift action_27
action_20 (19) = happyShift action_7
action_20 (22) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (33) = happyShift action_28
action_20 (4) = happyGoto action_20
action_20 _ = happyReduce_16

action_21 (8) = happyShift action_2
action_21 (9) = happyShift action_4
action_21 (10) = happyShift action_5
action_21 (11) = happyShift action_6
action_21 (19) = happyShift action_7
action_21 (22) = happyShift action_8
action_21 (23) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (4) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_2
action_22 (9) = happyShift action_4
action_22 (10) = happyShift action_5
action_22 (11) = happyShift action_6
action_22 (19) = happyShift action_7
action_22 (22) = happyShift action_8
action_22 (23) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (8) = happyShift action_2
action_23 (9) = happyShift action_4
action_23 (10) = happyShift action_5
action_23 (11) = happyShift action_6
action_23 (19) = happyShift action_7
action_23 (22) = happyShift action_8
action_23 (23) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_2
action_24 (9) = happyShift action_4
action_24 (10) = happyShift action_5
action_24 (11) = happyShift action_6
action_24 (19) = happyShift action_7
action_24 (22) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (30) = happyShift action_11
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_2
action_25 (9) = happyShift action_4
action_25 (10) = happyShift action_5
action_25 (11) = happyShift action_6
action_25 (19) = happyShift action_7
action_25 (22) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (30) = happyShift action_11
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_2
action_26 (9) = happyShift action_4
action_26 (10) = happyShift action_5
action_26 (11) = happyShift action_6
action_26 (19) = happyShift action_7
action_26 (22) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (30) = happyShift action_11
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_2
action_27 (9) = happyShift action_4
action_27 (10) = happyShift action_5
action_27 (11) = happyShift action_6
action_27 (19) = happyShift action_7
action_27 (22) = happyShift action_8
action_27 (23) = happyShift action_9
action_27 (26) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (22) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_19

action_30 (8) = happyShift action_2
action_30 (9) = happyShift action_4
action_30 (10) = happyShift action_5
action_30 (11) = happyShift action_6
action_30 (12) = happyShift action_21
action_30 (13) = happyShift action_22
action_30 (14) = happyShift action_23
action_30 (15) = happyShift action_24
action_30 (16) = happyShift action_25
action_30 (22) = happyShift action_8
action_30 (23) = happyShift action_9
action_30 (26) = happyShift action_10
action_30 (30) = happyShift action_11
action_30 (33) = happyShift action_28
action_30 (4) = happyGoto action_20
action_30 _ = happyReduce_11

action_31 (8) = happyShift action_2
action_31 (9) = happyShift action_4
action_31 (10) = happyShift action_5
action_31 (11) = happyShift action_6
action_31 (12) = happyShift action_21
action_31 (13) = happyShift action_22
action_31 (14) = happyShift action_23
action_31 (15) = happyShift action_24
action_31 (16) = happyShift action_25
action_31 (22) = happyShift action_8
action_31 (23) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (30) = happyShift action_11
action_31 (33) = happyShift action_28
action_31 (4) = happyGoto action_20
action_31 _ = happyReduce_10

action_32 (8) = happyShift action_2
action_32 (9) = happyShift action_4
action_32 (10) = happyShift action_5
action_32 (11) = happyShift action_6
action_32 (12) = happyShift action_21
action_32 (22) = happyShift action_8
action_32 (23) = happyShift action_9
action_32 (26) = happyShift action_10
action_32 (30) = happyShift action_11
action_32 (33) = happyShift action_28
action_32 (4) = happyGoto action_20
action_32 _ = happyReduce_9

action_33 (8) = happyShift action_2
action_33 (9) = happyShift action_4
action_33 (10) = happyShift action_5
action_33 (11) = happyShift action_6
action_33 (12) = happyShift action_21
action_33 (22) = happyShift action_8
action_33 (23) = happyShift action_9
action_33 (26) = happyShift action_10
action_33 (30) = happyShift action_11
action_33 (33) = happyShift action_28
action_33 (4) = happyGoto action_20
action_33 _ = happyReduce_8

action_34 (8) = happyShift action_2
action_34 (9) = happyShift action_4
action_34 (10) = happyShift action_5
action_34 (11) = happyShift action_6
action_34 (12) = happyShift action_21
action_34 (22) = happyShift action_8
action_34 (23) = happyShift action_9
action_34 (26) = happyShift action_10
action_34 (30) = happyShift action_11
action_34 (33) = happyShift action_28
action_34 (4) = happyGoto action_20
action_34 _ = happyReduce_7

action_35 (8) = happyShift action_2
action_35 (9) = happyShift action_4
action_35 (10) = happyShift action_5
action_35 (11) = happyShift action_6
action_35 (12) = happyShift action_21
action_35 (22) = happyShift action_8
action_35 (23) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (33) = happyShift action_28
action_35 (4) = happyGoto action_20
action_35 _ = happyReduce_6

action_36 (8) = happyShift action_2
action_36 (9) = happyShift action_4
action_36 (11) = happyShift action_6
action_36 (22) = happyShift action_8
action_36 (23) = happyShift action_9
action_36 (26) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (33) = happyShift action_28
action_36 (4) = happyGoto action_20
action_36 _ = happyReduce_5

action_37 (8) = happyShift action_2
action_37 (9) = happyShift action_4
action_37 (10) = happyShift action_5
action_37 (11) = happyShift action_6
action_37 (19) = happyShift action_7
action_37 (22) = happyShift action_8
action_37 (23) = happyShift action_9
action_37 (26) = happyShift action_10
action_37 (30) = happyShift action_11
action_37 (4) = happyGoto action_52
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (26) = happyShift action_49
action_38 (28) = happyShift action_50
action_38 (29) = happyShift action_51
action_38 (5) = happyGoto action_48
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_15

action_40 (8) = happyShift action_2
action_40 (9) = happyShift action_4
action_40 (10) = happyShift action_5
action_40 (11) = happyShift action_6
action_40 (19) = happyShift action_7
action_40 (22) = happyShift action_8
action_40 (23) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (30) = happyShift action_11
action_40 (4) = happyGoto action_47
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_18

action_42 (22) = happyShift action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_17

action_44 (8) = happyShift action_2
action_44 (9) = happyShift action_4
action_44 (10) = happyShift action_5
action_44 (11) = happyShift action_6
action_44 (19) = happyShift action_7
action_44 (22) = happyShift action_8
action_44 (23) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (30) = happyShift action_11
action_44 (4) = happyGoto action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (8) = happyShift action_2
action_45 (9) = happyShift action_4
action_45 (10) = happyShift action_5
action_45 (11) = happyShift action_6
action_45 (12) = happyShift action_21
action_45 (13) = happyShift action_22
action_45 (14) = happyShift action_23
action_45 (15) = happyShift action_24
action_45 (16) = happyShift action_25
action_45 (17) = happyShift action_26
action_45 (18) = happyShift action_27
action_45 (19) = happyShift action_7
action_45 (22) = happyShift action_8
action_45 (23) = happyShift action_9
action_45 (26) = happyShift action_10
action_45 (30) = happyShift action_11
action_45 (33) = happyShift action_28
action_45 (4) = happyGoto action_20
action_45 _ = happyReduce_24

action_46 (34) = happyShift action_56
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (8) = happyShift action_2
action_47 (9) = happyShift action_4
action_47 (10) = happyShift action_5
action_47 (11) = happyShift action_6
action_47 (12) = happyShift action_21
action_47 (13) = happyShift action_22
action_47 (14) = happyShift action_23
action_47 (15) = happyShift action_24
action_47 (16) = happyShift action_25
action_47 (17) = happyShift action_26
action_47 (18) = happyShift action_27
action_47 (19) = happyShift action_7
action_47 (22) = happyShift action_8
action_47 (23) = happyShift action_9
action_47 (26) = happyShift action_10
action_47 (30) = happyShift action_11
action_47 (33) = happyShift action_28
action_47 (4) = happyGoto action_20
action_47 _ = happyReduce_25

action_48 (24) = happyShift action_55
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (26) = happyShift action_49
action_49 (28) = happyShift action_50
action_49 (29) = happyShift action_51
action_49 (5) = happyGoto action_54
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_20

action_51 _ = happyReduce_21

action_52 (8) = happyShift action_2
action_52 (9) = happyShift action_4
action_52 (10) = happyShift action_5
action_52 (11) = happyShift action_6
action_52 (12) = happyShift action_21
action_52 (13) = happyShift action_22
action_52 (14) = happyShift action_23
action_52 (15) = happyShift action_24
action_52 (16) = happyShift action_25
action_52 (17) = happyShift action_26
action_52 (18) = happyShift action_27
action_52 (19) = happyShift action_7
action_52 (21) = happyShift action_53
action_52 (22) = happyShift action_8
action_52 (23) = happyShift action_9
action_52 (26) = happyShift action_10
action_52 (30) = happyShift action_11
action_52 (33) = happyShift action_28
action_52 (4) = happyGoto action_20
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (8) = happyShift action_2
action_53 (9) = happyShift action_4
action_53 (10) = happyShift action_5
action_53 (11) = happyShift action_6
action_53 (19) = happyShift action_7
action_53 (22) = happyShift action_8
action_53 (23) = happyShift action_9
action_53 (26) = happyShift action_10
action_53 (30) = happyShift action_11
action_53 (4) = happyGoto action_60
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (24) = happyShift action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (8) = happyShift action_2
action_55 (9) = happyShift action_4
action_55 (10) = happyShift action_5
action_55 (11) = happyShift action_6
action_55 (19) = happyShift action_7
action_55 (22) = happyShift action_8
action_55 (23) = happyShift action_9
action_55 (26) = happyShift action_10
action_55 (30) = happyShift action_11
action_55 (4) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (8) = happyShift action_2
action_56 (9) = happyShift action_4
action_56 (10) = happyShift action_5
action_56 (11) = happyShift action_6
action_56 (19) = happyShift action_7
action_56 (22) = happyShift action_8
action_56 (23) = happyShift action_9
action_56 (26) = happyShift action_10
action_56 (30) = happyShift action_11
action_56 (4) = happyGoto action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (8) = happyShift action_2
action_57 (9) = happyShift action_4
action_57 (10) = happyShift action_5
action_57 (11) = happyShift action_6
action_57 (12) = happyShift action_21
action_57 (13) = happyShift action_22
action_57 (14) = happyShift action_23
action_57 (15) = happyShift action_24
action_57 (16) = happyShift action_25
action_57 (17) = happyShift action_26
action_57 (18) = happyShift action_27
action_57 (19) = happyShift action_7
action_57 (22) = happyShift action_8
action_57 (23) = happyShift action_9
action_57 (26) = happyShift action_10
action_57 (30) = happyShift action_11
action_57 (33) = happyShift action_28
action_57 (4) = happyGoto action_20
action_57 _ = happyReduce_26

action_58 (8) = happyShift action_2
action_58 (9) = happyShift action_4
action_58 (10) = happyShift action_5
action_58 (11) = happyShift action_6
action_58 (12) = happyShift action_21
action_58 (13) = happyShift action_22
action_58 (14) = happyShift action_23
action_58 (15) = happyShift action_24
action_58 (16) = happyShift action_25
action_58 (17) = happyShift action_26
action_58 (18) = happyShift action_27
action_58 (19) = happyShift action_7
action_58 (22) = happyShift action_8
action_58 (23) = happyShift action_9
action_58 (26) = happyShift action_10
action_58 (30) = happyShift action_11
action_58 (33) = happyShift action_28
action_58 (4) = happyGoto action_20
action_58 _ = happyReduce_14

action_59 (26) = happyShift action_49
action_59 (28) = happyShift action_50
action_59 (29) = happyShift action_51
action_59 (5) = happyGoto action_61
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (8) = happyShift action_2
action_60 (9) = happyShift action_4
action_60 (10) = happyShift action_5
action_60 (11) = happyShift action_6
action_60 (12) = happyShift action_21
action_60 (13) = happyShift action_22
action_60 (14) = happyShift action_23
action_60 (15) = happyShift action_24
action_60 (16) = happyShift action_25
action_60 (17) = happyShift action_26
action_60 (18) = happyShift action_27
action_60 (19) = happyFail []
action_60 (22) = happyShift action_8
action_60 (23) = happyShift action_9
action_60 (26) = happyShift action_10
action_60 (30) = happyShift action_11
action_60 (33) = happyShift action_28
action_60 (4) = happyGoto action_20
action_60 _ = happyReduce_12

action_61 (27) = happyShift action_62
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_22

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_3 = happySpecReduce_2  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GThen happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_1  4 happyReduction_13
happyReduction_13 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (createTuple happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (createRecord happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyTerminal (TokenVar happy_var_3))
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Project happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_22 = happyReduce 5 5 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  7 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn7
		 ([(happy_var_1, happy_var_3)]
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 5 7 happyReduction_26
happyReduction_26 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (happy_var_1 ++ [(happy_var_3, happy_var_5)]
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 8;
	TokenFalse -> cont 9;
	TokenNot -> cont 10;
	TokenNum happy_dollar_dollar -> cont 11;
	TokenMul -> cont 12;
	TokenAdd -> cont 13;
	TokenSub -> cont 14;
	TokenOr -> cont 15;
	TokenAnd -> cont 16;
	TokenEq -> cont 17;
	TokenGThen -> cont 18;
	TokenIf -> cont 19;
	TokenThen -> cont 20;
	TokenElse -> cont 21;
	TokenVar happy_dollar_dollar -> cont 22;
	TokenLam -> cont 23;
	TokenArrow -> cont 24;
	TokenColon -> cont 25;
	TokenLeftParen -> cont 26;
	TokenRightParen -> cont 27;
	TokenBoolean -> cont 28;
	TokenNumber -> cont 29;
	TokenLeftBrace -> cont 30;
	TokenRightBrace -> cont 31;
	TokenComma -> cont 32;
	TokenDot -> cont 33;
	TokenEquals -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
