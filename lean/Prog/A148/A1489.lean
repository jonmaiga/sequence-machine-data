import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A148900: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148900, there is no canonical definition to state claims against.
-/

/-! ## A148900.P12878935233410071651

`A110266(2*A128725(n))`
-/

namespace A148900.P12878935233410071651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (2 * A128725 n).toNat

end

end A148900.P12878935233410071651

/-! ## A148900.P12563691778979906508

`A330783(n)+A278529(A000670(n))`
-/

namespace A148900.P12563691778979906508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330783 n + A278529 (A000670 n).toNat

end

end A148900.P12563691778979906508

/-! ## A148900.P3014482265963938435

`A227189(A317169(n))+A148898(n)`
-/

namespace A148900.P3014482265963938435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227189 (A317169 n).toNat + A148898 n

end

end A148900.P3014482265963938435

/-!
# A148901: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148901, there is no canonical definition to state claims against.
-/

/-! ## A148901.P11118517321635652599

`A038566(A357164(n))`
-/

namespace A148901.P11118517321635652599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A357164 n).toNat

end

end A148901.P11118517321635652599

/-! ## A148901.P17999204516480491726

`A044813(A002024((n²+n)*a(n-1)/2))` with `a(0)=1, a(1)=1`
-/

namespace A148901.P17999204516480491726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A044813 (A002024 (SequenceMachineLib.roundAway (((n ^ 2 + n : ℤ) * a (n - 1) : ℚ) / 2)).toNat).toNat

end

end A148901.P17999204516480491726

/-! ## A148901.P9002496991685403281

`A044813(A002024((n+1)*n*a((2*n)%(n+1))/2))` with `a(0)=1`
-/

namespace A148901.P9002496991685403281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A044813 (A002024 (SequenceMachineLib.roundAway (((n + 1 : ℤ) * ((n : ℤ) * a (2 * n % (n + 1))) : ℚ) / 2)).toNat).toNat

end

end A148901.P9002496991685403281

/-!
# A148902: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148902, there is no canonical definition to state claims against.
-/

/-! ## A148902.P6906849093635281832

`xor(val(A202180(2*n+1), 2), A202180(n+1))`
-/

namespace A148902.P6906849093635281832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.valuation (A202180 (2 * n + 1)).toNat 2 : ℤ) (A202180 (n + 1))

end

end A148902.P6906849093635281832

/-! ## A148902.P2123232830988690785

`A256502(A149394(n)+A000120(n))`
-/

namespace A148902.P2123232830988690785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A149394 n + A000120 n).toNat

end

end A148902.P2123232830988690785

/-! ## A148902.P50936777221014890

`A294818(n)+A137588(A034234(n))`
-/

namespace A148902.P50936777221014890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294818 n + A137588 (A034234 n).toNat

end

end A148902.P50936777221014890

/-!
# A148903: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148903, there is no canonical definition to state claims against.
-/

/-! ## A148903.P11593553679174842948

`ceil(A202592(n+3)/3)`
-/

namespace A148903.P11593553679174842948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A202592 (n + 3) : ℚ) / 3⌉

end

end A148903.P11593553679174842948

/-! ## A148903.P5920369978842907809

`A322531(2^n-ceil(n/2))`
-/

namespace A148903.P5920369978842907809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322531 ((2 ^ n : ℤ) - ⌈(n : ℚ) / 2⌉).toNat

end

end A148903.P5920369978842907809

/-!
# A148904: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148904, there is no canonical definition to state claims against.
-/

/-! ## A148904.P6371509360766675519

`A157271(A149551(n)+A082582(n))`
-/

namespace A148904.P6371509360766675519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149551 n + A082582 n).toNat

end

end A148904.P6371509360766675519

/-! ## A148904.P1379511068612339602

`A149185(n)-A287730(A000262(n))`
-/

namespace A148904.P1379511068612339602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149185 n - A287730 (A000262 n).toNat

end

end A148904.P1379511068612339602

/-! ## A148904.P13081060792142822283

`A149186(n)-A287730(A000262(n))`
-/

namespace A148904.P13081060792142822283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149186 n - A287730 (A000262 n).toNat

end

end A148904.P13081060792142822283

/-!
# A148905: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148905, there is no canonical definition to state claims against.
-/

/-! ## A148905.P12968788986547389905

`and(p?[A304383(n+1)], A148906(n))`
-/

namespace A148905.P12968788986547389905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A148906 n)

end

end A148905.P12968788986547389905

/-! ## A148905.P11172361919967042426

`A148906(n)-A010362(A143569(n))`
-/

namespace A148905.P11172361919967042426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148906 n - A010362 (A143569 n).toNat

end

end A148905.P11172361919967042426

/-! ## A148905.P7075274014610618578

`A148913(n)-A159632(A002712(n))`
-/

namespace A148905.P7075274014610618578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148913 n - A159632 (A002712 n).toNat

end

end A148905.P7075274014610618578

/-!
# A148906: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148906, there is no canonical definition to state claims against.
-/

/-! ## A148906.P1367777026374803708

`or(A148905(n), A297240(A001075(n)))`
-/

namespace A148906.P1367777026374803708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148905 n) (A297240 (A001075 n).toNat)

end

end A148906.P1367777026374803708

/-! ## A148906.P4632223876889110705

`A165640(A222691(n+2))`
-/

namespace A148906.P4632223876889110705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A222691 (n + 2)).toNat

end

end A148906.P4632223876889110705

/-! ## A148906.P10606607591875178021

`A277193(A148869(n)-floor(n/5))`
-/

namespace A148906.P10606607591875178021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A148869 n - ⌊(n : ℚ) / 5⌋).toNat

end

end A148906.P10606607591875178021

/-!
# A148907: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148907, there is no canonical definition to state claims against.
-/

/-! ## A148907.P4729077713770878528

`A148906(n)+A112367(A014381(n))`
-/

namespace A148907.P4729077713770878528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148906 n + A112367 (A014381 n).toNat

end

end A148907.P4729077713770878528

/-! ## A148907.P13781256741809346087

`A324094(A000041(n))+A148906(n)`
-/

namespace A148907.P13781256741809346087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324094 (A000041 n).toNat + A148906 n

end

end A148907.P13781256741809346087

/-! ## A148907.P3477605624225614695

`A148912(n)-A006926(A182903(n))`
-/

namespace A148907.P3477605624225614695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148912 n - A006926 (A182903 n).toNat

end

end A148907.P3477605624225614695

/-!
# A148908: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A148908, there is no canonical definition to state claims against.
-/

/-! ## A148908.P13936315900464282702

`A062050(A000258(n)+3)`
-/

namespace A148908.P13936315900464282702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A000258 n + 3).toNat

end

end A148908.P13936315900464282702

/-! ## A148908.P18151838389260632480

`A148909(n)-A006926(A038020(n))`
-/

namespace A148908.P18151838389260632480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148909 n - A006926 (A038020 n).toNat

end

end A148908.P18151838389260632480

/-! ## A148908.P18193662214558660303

`A142727(A148869(n))-Δ[A146140(n+1)]`
-/

namespace A148908.P18193662214558660303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (A148869 n).toNat - (f1 (n + 1) - f1 n)

end

end A148908.P18193662214558660303

/-!
# A148909: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148909, there is no canonical definition to state claims against.
-/

/-! ## A148909.P2957033544570870411

`A084469(A148913(n))`
-/

namespace A148909.P2957033544570870411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A148913 n).toNat

end

end A148909.P2957033544570870411

/-! ## A148909.P880020225964499335

`A022169(n)+A008612(A001692(n))`
-/

namespace A148909.P880020225964499335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 n + A008612 (A001692 n).toNat

end

end A148909.P880020225964499335

/-! ## A148909.P12612452250843777794

`A148908(n)+A006926(A038020(n))`
-/

namespace A148909.P12612452250843777794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148908 n + A006926 (A038020 n).toNat

end

end A148909.P12612452250843777794

/-!
# A148910: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148910, there is no canonical definition to state claims against.
-/

/-! ## A148910.P3917267130288665979

`A148900(n)+A025581(A184973(n))`
-/

namespace A148910.P3917267130288665979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148900 n + A025581 (A184973 n).toNat

end

end A148910.P3917267130288665979

/-! ## A148910.P10538249665732368519

`A224271(n+1)+A113204(A008958(n))`
-/

namespace A148910.P10538249665732368519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224271 (n + 1) + A113204 (A008958 n).toNat

end

end A148910.P10538249665732368519

/-!
# A148911: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148911, there is no canonical definition to state claims against.
-/

/-! ## A148911.P15021510058453846731

`A323790(n)-A001222(A330677(n))`
-/

namespace A148911.P15021510058453846731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323790 n - A001222 (A330677 n).toNat

end

end A148911.P15021510058453846731

/-! ## A148911.P18057838458098875121

`A277743(n+4)-A000045(A001918(n+4))`
-/

namespace A148911.P18057838458098875121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277743 (n + 4) - A000045 (A001918 (n + 4)).toNat

end

end A148911.P18057838458098875121

/-!
# A148912: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148912, there is no canonical definition to state claims against.
-/

/-! ## A148912.P18392391914971643955

`A142727(A148869(n))`
-/

namespace A148912.P18392391914971643955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (A148869 n).toNat

end

end A148912.P18392391914971643955

/-! ## A148912.P4666127663426492247

`A277193(A148874(n))`
-/

namespace A148912.P4666127663426492247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A148874 n).toNat

end

end A148912.P4666127663426492247

/-! ## A148912.P14147639008716875706

`A148907(n)+A006926(A182903(n))`
-/

namespace A148912.P14147639008716875706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148907 n + A006926 (A182903 n).toNat

end

end A148912.P14147639008716875706

/-!
# A148913: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148913, there is no canonical definition to state claims against.
-/

/-! ## A148913.P12684987872158130763

`A084470(A148909(n))`
-/

namespace A148913.P12684987872158130763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084470 (A148909 n).toNat

end

end A148913.P12684987872158130763

/-! ## A148913.P1667201486331122822

`A289495(or(n, A007854(n)))`
-/

namespace A148913.P1667201486331122822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (Int.lor (n : ℤ) (A007854 n)).toNat

end

end A148913.P1667201486331122822

/-! ## A148913.P9838476233301997551

`A159632(A002712(n))+A148905(n)`
-/

namespace A148913.P9838476233301997551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159632 (A002712 n).toNat + A148905 n

end

end A148913.P9838476233301997551

/-!
# A148914: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148914, there is no canonical definition to state claims against.
-/

/-! ## A148914.P3953266763194719124

`A148912(n)+A006926(A014381(n))`
-/

namespace A148914.P3953266763194719124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148912 n + A006926 (A014381 n).toNat

end

end A148914.P3953266763194719124

/-! ## A148914.P15967862213515302294

`A148912(n)+A006926(A038020(n))`
-/

namespace A148914.P15967862213515302294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148912 n + A006926 (A038020 n).toNat

end

end A148914.P15967862213515302294

/-! ## A148914.P15776159634761546219

`A255408(A159632(n+1)+A148913(n))`
-/

namespace A148914.P15776159634761546219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A159632 (n + 1) + A148913 n).toNat

end

end A148914.P15776159634761546219

/-!
# A148915: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148915, there is no canonical definition to state claims against.
-/

/-! ## A148915.P15567156807865134610

`A148913(n)+A006926(A038020(n))`
-/

namespace A148915.P15567156807865134610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148913 n + A006926 (A038020 n).toNat

end

end A148915.P15567156807865134610

/-! ## A148915.P11703375481468573570

`A171828(A097121(n))+A148852(n)`
-/

namespace A148915.P11703375481468573570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171828 (A097121 n).toNat + A148852 n

end

end A148915.P11703375481468573570

/-!
# A148916: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148916, there is no canonical definition to state claims against.
-/

/-! ## A148916.P6923838660183727195

`A320797(2*n)+1-gcd(n+1, ∏{p}[n+1, (n+1)/#])`
-/

namespace A148916.P6923838660183727195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320797 (2 * n) + 1 - (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℤ)

end

end A148916.P6923838660183727195

/-! ## A148916.P6643880973481873760

`A129260(A010552(n))`
-/

namespace A148916.P6643880973481873760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129260 (A010552 n).toNat

end

end A148916.P6643880973481873760

/-!
# A148917: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148917, there is no canonical definition to state claims against.
-/

/-! ## A148917.P7683588619426517662

`A191893(or(1, 2^n-1))+1`
-/

namespace A148917.P7683588619426517662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191893 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat + 1

end

end A148917.P7683588619426517662

/-! ## A148917.P6850027468805293930

`A002150(A148382(n))`
-/

namespace A148917.P6850027468805293930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002150 (A148382 n).toNat

end

end A148917.P6850027468805293930

/-!
# A148918: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148918, there is no canonical definition to state claims against.
-/

/-! ## A148918.P8777272665657034510

`A054426(A005558(n))`
-/

namespace A148918.P8777272665657034510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054426 (A005558 n).toNat

end

end A148918.P8777272665657034510

/-! ## A148918.P7244303598975860618

`A171911(A051349(n!))`
-/

namespace A148918.P7244303598975860618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171911 (A051349 (Nat.factorial n)).toNat

end

end A148918.P7244303598975860618

/-!
# A148919: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148919, there is no canonical definition to state claims against.
-/

/-! ## A148919.P6112160507018198870

`floor(sqrt(A347452(2^n)))`
-/

namespace A148919.P6112160507018198870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A347452 (2 ^ n))

end

end A148919.P6112160507018198870

/-! ## A148919.P15412824898048674051

`A077472(A148195(n))`
-/

namespace A148919.P15412824898048674051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077472 (A148195 n).toNat

end

end A148919.P15412824898048674051

/-!
# A148920: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148920, there is no canonical definition to state claims against.
-/

/-! ## A148920.P17832446649151646167

`A325721(A302449(n))`
-/

namespace A148920.P17832446649151646167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325721 (A302449 n).toNat

end

end A148920.P17832446649151646167

/-! ## A148920.P12562124578758862835

`A332086(A122450(n)+2*n)`
-/

namespace A148920.P12562124578758862835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A122450 n + (2 * n : ℤ)).toNat

end

end A148920.P12562124578758862835

/-! ## A148920.P14424480356179133960

`A332086(A122450(n)+n+n)`
-/

namespace A148920.P14424480356179133960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A122450 n + (n : ℤ) + (n : ℤ)).toNat

end

end A148920.P14424480356179133960

/-!
# A148921: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148921, there is no canonical definition to state claims against.
-/

/-! ## A148921.P4608267920023716998

`A157271(A148406(n+1))`
-/

namespace A148921.P4608267920023716998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148406 (n + 1)).toNat

end

end A148921.P4608267920023716998

/-! ## A148921.P5160920858083727468

`A008676(8*A001892(n+2))`
-/

namespace A148921.P5160920858083727468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (8 * A001892 (n + 2)).toNat

end

end A148921.P5160920858083727468

/-! ## A148921.P13880046880913490818

`A084034(A026008(n))+A007867(n+1)`
-/

namespace A148921.P13880046880913490818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (A026008 n).toNat + A007867 (n + 1)

end

end A148921.P13880046880913490818

/-!
# A148922: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148922, there is no canonical definition to state claims against.
-/

/-! ## A148922.P17259554634046685952

`A128086(n)+A033831(A289312(n))`
-/

namespace A148922.P17259554634046685952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128086 n + A033831 (A289312 n).toNat

end

end A148922.P17259554634046685952

/-! ## A148922.P4337517219619452131

`A248227(A088218(n))+A230980(n)`
-/

namespace A148922.P4337517219619452131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A088218 n).toNat + A230980 n

end

end A148922.P4337517219619452131

/-! ## A148922.P15956913565318962772

`A269388(A000041(n))+A007867(n+1)`
-/

namespace A148922.P15956913565318962772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A000041 n).toNat + A007867 (n + 1)

end

end A148922.P15956913565318962772

/-!
# A148923: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148923, there is no canonical definition to state claims against.
-/

/-! ## A148923.P1125424825898511952

`A036465(n*(a(n-1)+n))` with `a(0)=1`
-/

namespace A148923.P1125424825898511952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036465 ((n : ℤ) * (a (n - 1) + (n : ℤ))).toNat

end

end A148923.P1125424825898511952

/-! ## A148923.P7978663550330100855

`A007719(n)-A275024(A069466(n))`
-/

namespace A148923.P7978663550330100855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007719 n - A275024 (A069466 n).toNat

end

end A148923.P7978663550330100855

/-! ## A148923.P7829872070857280468

`A296955(A134472(n))+A247971(A148965(n))`
-/

namespace A148923.P7829872070857280468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (A134472 (n + 13)).toNat + A247971 (A148965 n).toNat

end

end A148923.P7829872070857280468

/-!
# A148924: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148924, there is no canonical definition to state claims against.
-/

/-! ## A148924.P8401271342785036306

`A004525(A344180(n)+A191640(n+1))`
-/

namespace A148924.P8401271342785036306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A344180 n + A191640 (n + 1)).toNat

end

end A148924.P8401271342785036306

/-! ## A148924.P10551490781486000326

`A004525(A267632(3*n+5)+A191640(n+1))`
-/

namespace A148924.P10551490781486000326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A267632 (3 * n + 5) + A191640 (n + 1)).toNat

end

end A148924.P10551490781486000326

/-! ## A148924.P12607104795951804247

`A141206(A190790(n))`
-/

namespace A148924.P12607104795951804247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (A190790 n).toNat

end

end A148924.P12607104795951804247

/-!
# A148925: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148925, there is no canonical definition to state claims against.
-/

/-! ## A148925.P13657321378198932448

`A060646(A150777(n)-n)`
-/

namespace A148925.P13657321378198932448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060646 (A150777 n - (n : ℤ)).toNat

end

end A148925.P13657321378198932448

/-! ## A148925.P3863658242199055441

`A187187(A303844(n+4)+n+1)`
-/

namespace A148925.P3863658242199055441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A303844 (n + 4) + (n + 1 : ℤ)).toNat

end

end A148925.P3863658242199055441

/-! ## A148925.P7702950823954504469

`A369326(A210341(3*n+4))+A096579(n+1)`
-/

namespace A148925.P7702950823954504469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369326 (A210341 (3 * n + 4)).toNat + A096579 (n + 1)

end

end A148925.P7702950823954504469

/-!
# A148926: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148926, there is no canonical definition to state claims against.
-/

/-! ## A148926.P10151117484545897358

`or(A057979(A134378(n)), A148821(n))`
-/

namespace A148926.P10151117484545897358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057979 (A134378 n).toNat) (A148821 n)

end

end A148926.P10151117484545897358

/-! ## A148926.P2496249913047904098

`or(A148821(n), A184303(A042950(n)))`
-/

namespace A148926.P2496249913047904098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148821 n) (A184303 (A042950 n).toNat)

end

end A148926.P2496249913047904098

/-! ## A148926.P13216968009295794680

`A141206(A192318(n))`
-/

namespace A148926.P13216968009295794680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (A192318 n).toNat

end

end A148926.P13216968009295794680

/-!
# A148928: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148928, there is no canonical definition to state claims against.
-/

/-! ## A148928.P5621509862900238101

`A265384(A093128(n))`
-/

namespace A148928.P5621509862900238101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A093128 n).toNat

end

end A148928.P5621509862900238101

/-! ## A148928.P969493806500740558

`A066508(A148198(n+1))`
-/

namespace A148928.P969493806500740558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A148198 (n + 1)).toNat

end

end A148928.P969493806500740558

/-! ## A148928.P7688132264655801770

`A383309(A049936(n+1))`
-/

namespace A148928.P7688132264655801770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (A049936 (n + 1)).toNat

end

end A148928.P7688132264655801770

/-!
# A148929: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148929, there is no canonical definition to state claims against.
-/

/-! ## A148929.P14167688203526383367

`A064823(A119975(n+1))`
-/

namespace A148929.P14167688203526383367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064823 (A119975 (n + 1)).toNat

end

end A148929.P14167688203526383367

/-!
# A148930: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148930, there is no canonical definition to state claims against.
-/

/-! ## A148930.P8031738000547529611

`A071721(n)-A260124(A000129(n))`
-/

namespace A148930.P8031738000547529611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n - A260124 (A000129 n).toNat

end

end A148930.P8031738000547529611

/-! ## A148930.P2859157768023820490

`A148941(n)-A256038(A256040(n))`
-/

namespace A148930.P2859157768023820490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148941 n - A256038 (A256040 n).toNat

end

end A148930.P2859157768023820490

/-! ## A148930.P594082630947057047

`or(A105592(A337762(n)), A357221(n))`
-/

namespace A148930.P594082630947057047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105592 (A337762 n).toNat) (A357221 n)

end

end A148930.P594082630947057047

/-!
# A148931: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A148931, there is no canonical definition to state claims against.
-/

/-! ## A148931.P10123323569444856971

`A264749(∑[A103943(n+1)])`
-/

namespace A148931.P10123323569444856971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148931.P10123323569444856971

/-! ## A148931.P9119705150762610814

`A049317(∑[∑[A328429(n+1)]])`
-/

namespace A148931.P9119705150762610814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328429 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148931.P9119705150762610814

/-! ## A148931.P3379617780987555675

`A100196(A365150(n)+A000111(n))`
-/

namespace A148931.P3379617780987555675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A365150 n + A000111 n).toNat

end

end A148931.P3379617780987555675

/-!
# A148932: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148932, there is no canonical definition to state claims against.
-/

/-! ## A148932.P15462887345889508986

`A238979(n+4)-A208575(A243251(n+1))`
-/

namespace A148932.P15462887345889508986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238979 (n + 4) - A208575 (A243251 (n + 1)).toNat

end

end A148932.P15462887345889508986

/-! ## A148932.P6879694171038629461

`A277192(A122452(n))`
-/

namespace A148932.P6879694171038629461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A122452 n).toNat

end

end A148932.P6879694171038629461

/-! ## A148932.P10759121793818126145

`A054846(A221973(n))-n`
-/

namespace A148932.P10759121793818126145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A221973 n).toNat - (n : ℤ)

end

end A148932.P10759121793818126145

/-!
# A148933: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148933, there is no canonical definition to state claims against.
-/

/-! ## A148933.P12907065804752883077

`A162371(A238803(n))`
-/

namespace A148933.P12907065804752883077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (A238803 n).toNat

end

end A148933.P12907065804752883077

/-! ## A148933.P14791384814396714442

`A350348(A231291(n))`
-/

namespace A148933.P14791384814396714442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A231291 n).toNat

end

end A148933.P14791384814396714442

/-! ## A148933.P4599500490814146148

`A187186(A150071(n+1))`
-/

namespace A148933.P4599500490814146148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A150071 (n + 1)).toNat

end

end A148933.P4599500490814146148

/-!
# A148934: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148934, there is no canonical definition to state claims against.
-/

/-! ## A148934.P5955504513226173609

`A187186(A150048(n+1)+n²)`
-/

namespace A148934.P5955504513226173609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A150048 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A148934.P5955504513226173609

/-! ## A148934.P57461565667699560

`A194640(A001835(n))+A004523(n)`
-/

namespace A148934.P57461565667699560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A001835 n).toNat + A004523 n

end

end A148934.P57461565667699560

/-!
# A148935: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148935, there is no canonical definition to state claims against.
-/

/-! ## A148935.P8990262461253003120

`or(A008346(n), A226190(A149950(n)))`
-/

namespace A148935.P8990262461253003120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008346 n) (A226190 (A149950 n).toNat)

end

end A148935.P8990262461253003120

/-! ## A148935.P10089794190752886031

`or(A008794(n), A226190(A149950(n)))`
-/

namespace A148935.P10089794190752886031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008794 n) (A226190 (A149950 n).toNat)

end

end A148935.P10089794190752886031

/-! ## A148935.P3018109966271593353

`A148844(n)+A025436(A150088(n+1))`
-/

namespace A148935.P3018109966271593353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148844 n + A025436 (A150088 (n + 1)).toNat

end

end A148935.P3018109966271593353

/-!
# A148936: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148936, there is no canonical definition to state claims against.
-/

/-! ## A148936.P16167197312913208779

`A110654(or(A149983(n), A274937(n)))`
-/

namespace A148936.P16167197312913208779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lor (A149983 n) (A274937 n)).toNat

end

end A148936.P16167197312913208779

/-! ## A148936.P12528702855296725623

`A373416(A077947(n))`
-/

namespace A148936.P12528702855296725623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373416 (A077947 n).toNat

end

end A148936.P12528702855296725623

/-! ## A148936.P10943846955785443478

`A323712(A176678(n))`
-/

namespace A148936.P10943846955785443478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323712 (A176678 n).toNat

end

end A148936.P10943846955785443478

/-!
# A148937: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148937, there is no canonical definition to state claims against.
-/

/-! ## A148937.P1531063380218498538

`A004525(A148944(n)+A148930(n))`
-/

namespace A148937.P1531063380218498538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A148944 n + A148930 n).toNat

end

end A148937.P1531063380218498538

/-! ## A148937.P5458976145870900449

`A004526(A148944(n)+A148930(n))`
-/

namespace A148937.P5458976145870900449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148944 n + A148930 n).toNat

end

end A148937.P5458976145870900449

/-! ## A148937.P1285655844909760058

`A032742(A148944(n)+A148930(n))`
-/

namespace A148937.P1285655844909760058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A148944 n + A148930 n).toNat

end

end A148937.P1285655844909760058

/-! ## A148937.P12109863807379359522

`A065033(A148944(n)+A148930(n))`
-/

namespace A148937.P12109863807379359522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A148944 n + A148930 n).toNat

end

end A148937.P12109863807379359522

/-!
# A148938: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148938, there is no canonical definition to state claims against.
-/

/-! ## A148938.P13714066442747010867

`A148818(A004902(n+1))+A047967(A000065(n))`
-/

namespace A148938.P13714066442747010867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148818 (A004902 (n + 1)).toNat + A047967 (A000065 n).toNat

end

end A148938.P13714066442747010867

/-! ## A148938.P4394276435061727548

`A001462(or(1, (n+3)/4*Δ[n!]))`
-/

namespace A148938.P4394276435061727548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor 1 (SequenceMachineLib.roundAway ((n + 3 : ℚ) / 4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)))).toNat

end

end A148938.P4394276435061727548

/-! ## A148938.P14509605223833848597

`A033270(A268617(n+1))`
-/

namespace A148938.P14509605223833848597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A268617 (n + 1)).toNat

end

end A148938.P14509605223833848597

/-!
# A148939: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148939, there is no canonical definition to state claims against.
-/

/-! ## A148939.P15925100781104858485

`A276214(A006027(n+1))`
-/

namespace A148939.P15925100781104858485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276214 (A006027 (n + 1)).toNat

end

end A148939.P15925100781104858485

/-! ## A148939.P7668902807567560177

`A355616(A082423(n+2))`
-/

namespace A148939.P7668902807567560177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355616 (A082423 (n + 2)).toNat

end

end A148939.P7668902807567560177

/-! ## A148939.P15662989623364153809

`filter[A304912(n), A117872(#)]`
-/

namespace A148939.P15662989623364153809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117872 (f1 j).toNat = 1) n)

end

end A148939.P15662989623364153809

/-!
# A148940: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148940, there is no canonical definition to state claims against.
-/

/-! ## A148940.P2141714512916858707

`A100196(A002872(n))`
-/

namespace A148940.P2141714512916858707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A002872 n).toNat

end

end A148940.P2141714512916858707

/-! ## A148940.P6795239655934790728

`A054404(A174403(n)+2)`
-/

namespace A148940.P6795239655934790728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A174403 n + 2).toNat

end

end A148940.P6795239655934790728

/-!
# A148941: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148941, there is no canonical definition to state claims against.
-/

/-! ## A148941.P14591742621298930251

`A004525(A149983(n)+floor(n/(n%2+1)))`
-/

namespace A148941.P14591742621298930251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149983 n + ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋).toNat

end

end A148941.P14591742621298930251

/-! ## A148941.P5034980797261134146

`A004525(A149983(n)+A004396(n))`
-/

namespace A148941.P5034980797261134146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149983 n + A004396 n).toNat

end

end A148941.P5034980797261134146

/-! ## A148941.P8404744083447836719

`A004525(A149983(n)+A008619(n))`
-/

namespace A148941.P8404744083447836719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149983 n + A008619 n).toNat

end

end A148941.P8404744083447836719

/-! ## A148941.P14783277574097920311

`A004525(A149983(n)+A089408(n))`
-/

namespace A148941.P14783277574097920311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149983 n + A089408 n).toNat

end

end A148941.P14783277574097920311

/-!
# A148942: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148942, there is no canonical definition to state claims against.
-/

/-! ## A148942.P10652227917765515719

`A120750(A316371(n)-A234963(n+1))`
-/

namespace A148942.P10652227917765515719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A316371 n - A234963 (n + 1)).toNat

end

end A148942.P10652227917765515719

/-! ## A148942.P1783380834853823990

`A226762(A151081(n))`
-/

namespace A148942.P1783380834853823990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A151081 n).toNat

end

end A148942.P1783380834853823990

/-! ## A148942.P11726552350721662823

`A248231(A384832(n+1))`
-/

namespace A148942.P11726552350721662823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A384832 (n + 1)).toNat

end

end A148942.P11726552350721662823

/-!
# A148943: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A148943, there is no canonical definition to state claims against.
-/

/-! ## A148943.P13555982340892493198

`A209081(A149925(n))`
-/

namespace A148943.P13555982340892493198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A149925 n).toNat

end

end A148943.P13555982340892493198

/-! ## A148943.P4115517239956357196

`A261585(∑[A020876(n)])`
-/

namespace A148943.P4115517239956357196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148943.P4115517239956357196

/-!
# A148944: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148944, there is no canonical definition to state claims against.
-/

/-! ## A148944.P3197759661240255216

`or(1, A157271(A149974(n)))`
-/

namespace A148944.P3197759661240255216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157271 (A149974 n).toNat)

end

end A148944.P3197759661240255216

/-! ## A148944.P9098790947394632311

`∑[A098236(∑[A002450(n)]+1)]+1`
-/

namespace A148944.P9098790947394632311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A148944.P9098790947394632311

/-! ## A148944.P16835795708019677748

`A087991(A000302(n))+A084509(n)`
-/

namespace A148944.P16835795708019677748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A000302 n).toNat + A084509 n

end

end A148944.P16835795708019677748

/-!
# A148945: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148945, there is no canonical definition to state claims against.
-/

/-! ## A148945.P16785486309292396005

`A004526(A148958(n)+A148942(n))`
-/

namespace A148945.P16785486309292396005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148958 n + A148942 n).toNat

end

end A148945.P16785486309292396005

/-! ## A148945.P962538229198148725

`A127757(A150632(n))`
-/

namespace A148945.P962538229198148725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A150632 n).toNat

end

end A148945.P962538229198148725

/-! ## A148945.P2770548874348873319

`A084469(A036727(n+1))`
-/

namespace A148945.P2770548874348873319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A036727 (n + 1)).toNat

end

end A148945.P2770548874348873319

/-!
# A148946: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148946, there is no canonical definition to state claims against.
-/

/-! ## A148946.P7475137487365080954

`A238803(n)+A062172(A000670(n))`
-/

namespace A148946.P7475137487365080954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 n + A062172 (A000670 n).toNat

end

end A148946.P7475137487365080954

/-! ## A148946.P11468591808255454337

`A122446(n)+A007192(A193200(n))`
-/

namespace A148946.P11468591808255454337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122446 n + A007192 (A193200 n).toNat

end

end A148946.P11468591808255454337

/-! ## A148946.P6972417836307418587

`A383786(n)+A325106(A000083(n+1))`
-/

namespace A148946.P6972417836307418587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383786 n + A325106 (A000083 (n + 1)).toNat

end

end A148946.P6972417836307418587

/-!
# A148947: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A148947, there is no canonical definition to state claims against.
-/

/-! ## A148947.P15603962283712035446

`A066490(A270786(n)+2)`
-/

namespace A148947.P15603962283712035446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A270786 n + 2).toNat

end

end A148947.P15603962283712035446

/-! ## A148947.P3746308606470008691

`A264749(2*A150903(n))`
-/

namespace A148947.P3746308606470008691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (2 * A150903 n).toNat

end

end A148947.P3746308606470008691

/-! ## A148947.P6075407907806020799

`A066490(or(3, A270786(n)))`
-/

namespace A148947.P6075407907806020799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (Int.lor 3 (A270786 n)).toNat

end

end A148947.P6075407907806020799

/-!
# A148948: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148948, there is no canonical definition to state claims against.
-/

/-! ## A148948.P1245854941167905976

`A148949(n)-A185264(A000217(n))`
-/

namespace A148948.P1245854941167905976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148949 n - A185264 (A000217 n).toNat

end

end A148948.P1245854941167905976

/-! ## A148948.P1855997097337146612

`A148949(n)-A174903(A178578(n))`
-/

namespace A148948.P1855997097337146612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148949 n - A174903 (A178578 n).toNat

end

end A148948.P1855997097337146612

/-! ## A148948.P3186619444396527139

`A148949(A073788(n))`
-/

namespace A148948.P3186619444396527139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148949 (A073788 n).toNat

end

end A148948.P3186619444396527139

/-!
# A148949: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148949, there is no canonical definition to state claims against.
-/

/-! ## A148949.P14880245990017066306

`A185264(A000217(n))+A148948(n)`
-/

namespace A148949.P14880245990017066306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A000217 n).toNat + A148948 n

end

end A148949.P14880245990017066306

/-! ## A148949.P17591378964443854325

`A174903(A178578(n))+A148948(n)`
-/

namespace A148949.P17591378964443854325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174903 (A178578 n).toNat + A148948 n

end

end A148949.P17591378964443854325

/-!
# A148950: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148950, there is no canonical definition to state claims against.
-/

/-! ## A148950.P10314719316852721516

`A148951(n)-A185264(A000217(n))`
-/

namespace A148950.P10314719316852721516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148951 n - A185264 (A000217 n).toNat

end

end A148950.P10314719316852721516

/-! ## A148950.P4023652801731701430

`A148951(n)-A174903(A178578(n))`
-/

namespace A148950.P4023652801731701430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148951 n - A174903 (A178578 n).toNat

end

end A148950.P4023652801731701430

/-! ## A148950.P12552053517767477489

`A148951(A073788(n))`
-/

namespace A148950.P12552053517767477489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148951 (A073788 n).toNat

end

end A148950.P12552053517767477489

/-!
# A148951: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148951, there is no canonical definition to state claims against.
-/

/-! ## A148951.P1203898116079584383

`A185264(A000217(n))+A148950(n)`
-/

namespace A148951.P1203898116079584383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A000217 n).toNat + A148950 n

end

end A148951.P1203898116079584383

/-! ## A148951.P15670138401243226646

`A174903(A178578(n))+A148950(n)`
-/

namespace A148951.P15670138401243226646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174903 (A178578 n).toNat + A148950 n

end

end A148951.P15670138401243226646

/-!
# A148952: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A148952, there is no canonical definition to state claims against.
-/

/-! ## A148952.P16311689541881205228

`A156562(A106269(n))`
-/

namespace A148952.P16311689541881205228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A106269 n).toNat

end

end A148952.P16311689541881205228

/-! ## A148952.P13424911691852856300

`A194640(A149904(n))`
-/

namespace A148952.P13424911691852856300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A149904 n).toNat

end

end A148952.P13424911691852856300

/-! ## A148952.P15055664845119498879

`A264749(A149677(n+1))`
-/

namespace A148952.P15055664845119498879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A149677 (n + 1)).toNat

end

end A148952.P15055664845119498879

/-!
# A148953: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148953, there is no canonical definition to state claims against.
-/

/-! ## A148953.P3293333176697423905

`A148954(A073788(n))`
-/

namespace A148953.P3293333176697423905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148954 (A073788 n).toNat

end

end A148953.P3293333176697423905

/-! ## A148953.P8972853827530533479

`A148954(A171596(n))`
-/

namespace A148953.P8972853827530533479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148954 (A171596 n).toNat

end

end A148953.P8972853827530533479

/-! ## A148953.P3946623235425863639

`A247914(A227824(n))`
-/

namespace A148953.P3946623235425863639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A227824 n).toNat

end

end A148953.P3946623235425863639

/-!
# A148955: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A148955, there is no canonical definition to state claims against.
-/

/-! ## A148955.P253702252922012708

`A065033(round(A179606(n)/(n+1))-1)`
-/

namespace A148955.P253702252922012708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A179606 n : ℚ) / (n + 1 : ℚ)) - 1).toNat

end

end A148955.P253702252922012708

/-! ## A148955.P1848061456557245618

`A119372(n)-A186745(A000389(n))`
-/

namespace A148955.P1848061456557245618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 n - A186745 (A000389 n).toNat

end

end A148955.P1848061456557245618

/-! ## A148955.P15017902063298030475

`A119372(n)-A280799(A000142(n))`
-/

namespace A148955.P15017902063298030475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 n - A280799 (A000142 n).toNat

end

end A148955.P15017902063298030475

/-! ## A148955.P6057285624176636944

`A119372(n)-A230571(A306017(n))`
-/

namespace A148955.P6057285624176636944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 n - A230571 (A306017 n).toNat

end

end A148955.P6057285624176636944

/-!
# A148956: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148956, there is no canonical definition to state claims against.
-/

/-! ## A148956.P7933456149647020843

`A138311(A145268(n))`
-/

namespace A148956.P7933456149647020843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A145268 n).toNat

end

end A148956.P7933456149647020843

/-! ## A148956.P17674389677719676259

`A248183(∑[A339036(n)])`
-/

namespace A148956.P17674389677719676259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148956.P17674389677719676259

/-! ## A148956.P1811978772695604927

`A156562(A098569(n)-n)`
-/

namespace A148956.P1811978772695604927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A098569 n - (n : ℤ)).toNat

end

end A148956.P1811978772695604927

/-!
# A148957: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, -1), (1, 1, 0)}.

The programs for A148957, there is no canonical definition to state claims against.
-/

/-! ## A148957.P5107847956079323333

`A333256(ceil(2^(n-1)))+ceil(∑[3^(n-2)])`
-/

namespace A148957.P5107847956079323333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A148957.P5107847956079323333

/-! ## A148957.P2237797863967081226

`A226233(A038665(n))`
-/

namespace A148957.P2237797863967081226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A038665 n).toNat

end

end A148957.P2237797863967081226

/-! ## A148957.P9315470190257517037

`A248635(A392551(n))`
-/

namespace A148957.P9315470190257517037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248635 (A392551 n).toNat

end

end A148957.P9315470190257517037

/-!
# A148958: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148958, there is no canonical definition to state claims against.
-/

/-! ## A148958.P12122674017218547531

`xor(A000389(n), A065033(A149996(n)))`
-/

namespace A148958.P12122674017218547531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000389 n) (A065033 (A149996 n).toNat)

end

end A148958.P12122674017218547531

/-! ## A148958.P14139830523408852142

`A065033(A194631(n+1)+A149585(n))`
-/

namespace A148958.P14139830523408852142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A194631 (n + 1) + A149585 n).toNat

end

end A148958.P14139830523408852142

/-! ## A148958.P15698678593702210504

`A110654(A194631(n+1)+A149585(n))`
-/

namespace A148958.P15698678593702210504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A194631 (n + 1) + A149585 n).toNat

end

end A148958.P15698678593702210504

/-!
# A148959: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A148959, there is no canonical definition to state claims against.
-/

/-! ## A148959.P17808907548540514709

`A080907(A148864(n))`
-/

namespace A148959.P17808907548540514709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A148864 n).toNat

end

end A148959.P17808907548540514709

/-! ## A148959.P4454019379750493131

`A277192(A149005(n))`
-/

namespace A148959.P4454019379750493131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A149005 n).toNat

end

end A148959.P4454019379750493131

/-!
# A148960: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148960, there is no canonical definition to state claims against.
-/

/-! ## A148960.P15999546860005234591

`A277192(A149006(n))`
-/

namespace A148960.P15999546860005234591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A149006 n).toNat

end

end A148960.P15999546860005234591

/-! ## A148960.P319985959558462841

`A277192(A149007(n))`
-/

namespace A148960.P319985959558462841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A149007 n).toNat

end

end A148960.P319985959558462841

/-! ## A148960.P11511219805657140316

`or(char[2*n], A066490(A270786(n)+2))`
-/

namespace A148960.P11511219805657140316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A066490 (A270786 n + 2).toNat)

end

end A148960.P11511219805657140316

/-!
# A148961: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148961, there is no canonical definition to state claims against.
-/

/-! ## A148961.P8682984318528140218

`A126208(A150313(n+1))`
-/

namespace A148961.P8682984318528140218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126208 (A150313 (n + 1)).toNat

end

end A148961.P8682984318528140218

/-! ## A148961.P7721816545770844167

`A220413(A150487(n+1))`
-/

namespace A148961.P7721816545770844167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A150487 (n + 1)).toNat

end

end A148961.P7721816545770844167

/-! ## A148961.P18056391412936001638

`A279564(n)+A269388(A279564(n))`
-/

namespace A148961.P18056391412936001638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279564 n + A269388 (A279564 n).toNat

end

end A148961.P18056391412936001638

/-!
# A148962: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148962, there is no canonical definition to state claims against.
-/

/-! ## A148962.P11758428688721052368

`A148963(A002998(n))`
-/

namespace A148962.P11758428688721052368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148963 (A002998 n).toNat

end

end A148962.P11758428688721052368

/-! ## A148962.P12154251590352931481

`A148963(A039723(n))`
-/

namespace A148962.P12154251590352931481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148963 (A039723 n).toNat

end

end A148962.P12154251590352931481

/-! ## A148962.P13811299731794264379

`A148963(A046469(n))`
-/

namespace A148962.P13811299731794264379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148963 (A046469 n).toNat

end

end A148962.P13811299731794264379

/-! ## A148962.P5138672743003546736

`A148963(A051022(n))`
-/

namespace A148962.P5138672743003546736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148963 (A051022 n).toNat

end

end A148962.P5138672743003546736

/-! ## A148962.P16263691018234933172

`A148963(A056142(n))`
-/

namespace A148962.P16263691018234933172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148963 (A056142 n).toNat

end

end A148962.P16263691018234933172

/-!
# A148964: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148964, there is no canonical definition to state claims against.
-/

/-! ## A148964.P14501259521785841408

`A127757(A320356(n)^3)`
-/

namespace A148964.P14501259521785841408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A320356 n ^ 3).toNat

end

end A148964.P14501259521785841408

/-! ## A148964.P10937882744213579340

`A175402(A000079(n))+A145268(n)`
-/

namespace A148964.P10937882744213579340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175402 (A000079 n).toNat + A145268 n

end

end A148964.P10937882744213579340

/-! ## A148964.P11475123856397684173

`A255072(A325039(n+4)+A054441(n))`
-/

namespace A148964.P11475123856397684173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A325039 (n + 4) + A054441 n).toNat

end

end A148964.P11475123856397684173

/-!
# A148965: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148965, there is no canonical definition to state claims against.
-/

/-! ## A148965.P1895920418628970783

`A339036(n)+A025672(A000142(n))`
-/

namespace A148965.P1895920418628970783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339036 n + A025672 (A000142 n).toNat

end

end A148965.P1895920418628970783

/-! ## A148965.P17894413592021899961

`A289494(A151122(n))`
-/

namespace A148965.P17894413592021899961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A151122 n).toNat

end

end A148965.P17894413592021899961

/-! ## A148965.P7228700898645680115

`A382717(A148864(n))`
-/

namespace A148965.P7228700898645680115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A148864 n).toNat

end

end A148965.P7228700898645680115

/-!
# A148966: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A148966, there is no canonical definition to state claims against.
-/

/-! ## A148966.P1075309172279676634

`A248180(A150000(n))`
-/

namespace A148966.P1075309172279676634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A150000 n).toNat

end

end A148966.P1075309172279676634

/-! ## A148966.P13268649799521406070

`A066339(6*A006604(n))`
-/

namespace A148966.P13268649799521406070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (6 * A006604 n).toNat

end

end A148966.P13268649799521406070

/-! ## A148966.P16193887866664548676

`A138311(A145268(n)+A007111(n))`
-/

namespace A148966.P16193887866664548676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A145268 n + A007111 n).toNat

end

end A148966.P16193887866664548676

/-!
# A148967: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148967, there is no canonical definition to state claims against.
-/

/-! ## A148967.P15056120643247969914

`A090620(7*A038056(n+1))`
-/

namespace A148967.P15056120643247969914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (7 * A038056 (n + 1)).toNat

end

end A148967.P15056120643247969914

/-! ## A148967.P10271854774340985702

`char[4]+∑[A008616(A172012(n))]`
-/

namespace A148967.P10271854774340985702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A172012 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A148967.P10271854774340985702

/-! ## A148967.P67977995271845869

`A195174(A149983(n+1))+char[4]`
-/

namespace A148967.P67977995271845869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A149983 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148967.P67977995271845869

/-!
# A148968: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148968, there is no canonical definition to state claims against.
-/

/-! ## A148968.P4119015264100940714

`or(1, ∑[A103221(A001700(n))])`
-/

namespace A148968.P4119015264100940714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A001700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A148968.P4119015264100940714

/-! ## A148968.P128451896690601514

`A004525(A003065(n)+A001353(n))`
-/

namespace A148968.P128451896690601514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003065 n + A001353 n).toNat

end

end A148968.P128451896690601514

/-! ## A148968.P17221497711752546099

`A065033(A196118(n)+A001353(n))`
-/

namespace A148968.P17221497711752546099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A196118 n + A001353 n).toNat

end

end A148968.P17221497711752546099

/-! ## A148968.P1025133496294044859

`A004525(A003065(n)-A106707(n))`
-/

namespace A148968.P1025133496294044859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003065 n - A106707 n).toNat

end

end A148968.P1025133496294044859

/-!
# A148969: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148969, there is no canonical definition to state claims against.
-/

/-! ## A148969.P5951639882605811788

`A004525(A288395(n)+A149994(n))`
-/

namespace A148969.P5951639882605811788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A288395 n + A149994 n).toNat

end

end A148969.P5951639882605811788

/-! ## A148969.P614292417095709666

`A220658(A150735(n))`
-/

namespace A148969.P614292417095709666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150735 n).toNat

end

end A148969.P614292417095709666

/-! ## A148969.P12832174538150607632

`A220658(A150737(n))`
-/

namespace A148969.P12832174538150607632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150737 n).toNat

end

end A148969.P12832174538150607632

/-!
# A148970: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A148970, there is no canonical definition to state claims against.
-/

/-! ## A148970.P15598946308783501470

`A194920(A145268(n+1))-∑[A325954(n)]`
-/

namespace A148970.P15598946308783501470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A145268 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148970.P15598946308783501470

/-! ## A148970.P15287329612113695025

`A264749(A099782(n))`
-/

namespace A148970.P15287329612113695025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A099782 n).toNat

end

end A148970.P15287329612113695025

/-!
# A148971: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148971, there is no canonical definition to state claims against.
-/

/-! ## A148971.P15375041250415764678

`A148948(n)+A091970(A000085(n))`
-/

namespace A148971.P15375041250415764678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148948 n + A091970 (A000085 n).toNat

end

end A148971.P15375041250415764678

/-! ## A148971.P8036382529449856461

`A148894(n)+A025457(A198198(n))`
-/

namespace A148971.P8036382529449856461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148894 n + A025457 (A198198 n).toNat

end

end A148971.P8036382529449856461

/-! ## A148971.P7936241394134450332

`A148894(n)+A062977(A216583(n))`
-/

namespace A148971.P7936241394134450332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148894 n + A062977 (A216583 n).toNat

end

end A148971.P7936241394134450332

/-!
# A148972: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148972, there is no canonical definition to state claims against.
-/

/-! ## A148972.P18062687632607219474

`A255408(A148905(n)+A069283(n))`
-/

namespace A148972.P18062687632607219474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A148905 n + A069283 n).toNat

end

end A148972.P18062687632607219474

/-! ## A148972.P14398578622923253382

`A178210(or(A072376(n), A286955(n)))`
-/

namespace A148972.P14398578622923253382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (Int.lor (A072376 n) (A286955 n)).toNat

end

end A148972.P14398578622923253382

/-! ## A148972.P10267216819932724960

`A178210(or(A286955(n), A293640(n)))`
-/

namespace A148972.P10267216819932724960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (Int.lor (A286955 n) (A293640 n)).toNat

end

end A148972.P10267216819932724960

/-!
# A148973: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A148973, there is no canonical definition to state claims against.
-/

/-! ## A148973.P3138500910658717712

`A008619(A242962(n+1)+A001791(n))`
-/

namespace A148973.P3138500910658717712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A242962 (n + 1) + A001791 n).toNat

end

end A148973.P3138500910658717712

/-! ## A148973.P7800561872456684905

`A148949(n)+A123756(A030228(n))`
-/

namespace A148973.P7800561872456684905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148949 n + A123756 (A030228 n).toNat

end

end A148973.P7800561872456684905

/-! ## A148973.P10384290942747791968

`A248231(A149345(n)+A011371(n))`
-/

namespace A148973.P10384290942747791968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A149345 n + A011371 n).toNat

end

end A148973.P10384290942747791968

/-!
# A148974: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148974, there is no canonical definition to state claims against.
-/

/-! ## A148974.P7570471176156431662

`A066508(A149846(n))`
-/

namespace A148974.P7570471176156431662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A149846 n).toNat

end

end A148974.P7570471176156431662

/-! ## A148974.P16162810147341646282

`A148975(A073788(n))`
-/

namespace A148974.P16162810147341646282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148975 (A073788 n).toNat

end

end A148974.P16162810147341646282

/-! ## A148974.P6119028262598608894

`A148975(A171596(n))`
-/

namespace A148974.P6119028262598608894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148975 (A171596 n).toNat

end

end A148974.P6119028262598608894

/-!
# A148976: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148976, there is no canonical definition to state claims against.
-/

/-! ## A148976.P172513166636435190

`A248183(xor(2, A005190(n)))`
-/

namespace A148976.P172513166636435190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (Int.xor 2 (A005190 n)).toNat

end

end A148976.P172513166636435190

/-! ## A148976.P4326478154045746279

`A148900(n)+A011731(A001109(n))`
-/

namespace A148976.P4326478154045746279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148900 n + A011731 (A001109 n).toNat

end

end A148976.P4326478154045746279

/-! ## A148976.P7959971141559921078

`A148900(n)+A011731(A193657(n))`
-/

namespace A148976.P7959971141559921078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148900 n + A011731 (A193657 n).toNat

end

end A148976.P7959971141559921078

/-!
# A148977: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148977, there is no canonical definition to state claims against.
-/

/-! ## A148977.P9234086465197603078

`A127757(A150753(n))`
-/

namespace A148977.P9234086465197603078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A150753 n).toNat

end

end A148977.P9234086465197603078

/-! ## A148977.P12226235141804684565

`A360247(or(1, floor(3^(n-1))))`
-/

namespace A148977.P12226235141804684565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (Int.lor 1 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A148977.P12226235141804684565

/-!
# A148978: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A148978, there is no canonical definition to state claims against.
-/

/-! ## A148978.P4615155677041069487

`A088218(n)-A249050(A183562(2*n+5))`
-/

namespace A148978.P4615155677041069487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A249050 (A183562 (2 * n + 5)).toNat

end

end A148978.P4615155677041069487

/-! ## A148978.P10952230870425647202

`A141206(A148487(n))`
-/

namespace A148978.P10952230870425647202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (A148487 n).toNat

end

end A148978.P10952230870425647202

/-! ## A148978.P5968696197952463420

`A261585(A290750(n+1))`
-/

namespace A148978.P5968696197952463420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A290750 (n + 1)).toNat

end

end A148978.P5968696197952463420

/-!
# A148979: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148979, there is no canonical definition to state claims against.
-/

/-! ## A148979.P18075856443826017479

`A383511(A049614(n))+A148978(n)`
-/

namespace A148979.P18075856443826017479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383511 (A049614 n).toNat + A148978 n

end

end A148979.P18075856443826017479

/-! ## A148979.P5996777561006794766

`A148980(A073788(n))`
-/

namespace A148979.P5996777561006794766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148980 (A073788 n).toNat

end

end A148979.P5996777561006794766

/-! ## A148979.P10670033074079264082

`A148980(A171596(n))`
-/

namespace A148979.P10670033074079264082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148980 (A171596 n).toNat

end

end A148979.P10670033074079264082

/-!
# A148980: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A148980, there is no canonical definition to state claims against.
-/

/-! ## A148980.P3039980007686022435

`A131577(n)+A122926(A034008(n))`
-/

namespace A148980.P3039980007686022435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A122926 (A034008 n).toNat

end

end A148980.P3039980007686022435

/-! ## A148980.P16619244227333015123

`A122926(A034008(n))+A034008(n+1)`
-/

namespace A148980.P16619244227333015123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122926 (A034008 n).toNat + A034008 (n + 1)

end

end A148980.P16619244227333015123

/-!
# A148981: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148981, there is no canonical definition to state claims against.
-/

/-! ## A148981.P9368821998407688944

`A004526(A148990(n)+A148968(n))`
-/

namespace A148981.P9368821998407688944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148990 n + A148968 n).toNat

end

end A148981.P9368821998407688944

/-! ## A148981.P3520426611891884399

`A127757(A150767(n))`
-/

namespace A148981.P3520426611891884399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A150767 n).toNat

end

end A148981.P3520426611891884399

/-! ## A148981.P16748289945530218727

`A008618(13*A005190(n))`
-/

namespace A148981.P16748289945530218727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (13 * A005190 n).toNat

end

end A148981.P16748289945530218727

/-!
# A148982: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148982, there is no canonical definition to state claims against.
-/

/-! ## A148982.P11433938057261142830

`∑[A007867(n+1)]-A246277(n+1)`
-/

namespace A148982.P11433938057261142830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A246277 (n + 1)

end

end A148982.P11433938057261142830

/-! ## A148982.P9015801942109514804

`A319347(A001147(n))+∑{digits}[n, floor(#/6)]`
-/

namespace A148982.P9015801942109514804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319347 (A001147 n).toNat + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum

end

end A148982.P9015801942109514804

/-! ## A148982.P16332480452994318447

`A148981(n)+A033909(A002605(n))`
-/

namespace A148982.P16332480452994318447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148981 n + A033909 (A002605 n).toNat

end

end A148982.P16332480452994318447

/-!
# A148983: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148983, there is no canonical definition to state claims against.
-/

/-! ## A148983.P10490430444651614744

`A004526(A148985(n)+A148977(n))`
-/

namespace A148983.P10490430444651614744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148985 n + A148977 n).toNat

end

end A148983.P10490430444651614744

/-! ## A148983.P4842441530571269826

`A008616(13*A227824(n))`
-/

namespace A148983.P4842441530571269826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (13 * A227824 n).toNat

end

end A148983.P4842441530571269826

/-! ## A148983.P5969510265275616880

`A008616(lcm(13, A227824(n)))`
-/

namespace A148983.P5969510265275616880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lcm 13 (A227824 n))

end

end A148983.P5969510265275616880

/-!
# A148984: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148984, there is no canonical definition to state claims against.
-/

/-! ## A148984.P6264760989254155888

`A350348(A194353(n))`
-/

namespace A148984.P6264760989254155888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A194353 n).toNat

end

end A148984.P6264760989254155888

/-! ## A148984.P11853920649708471723

`A008616(13*A227824(n))+char[6]`
-/

namespace A148984.P11853920649708471723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (13 * A227824 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148984.P11853920649708471723

/-! ## A148984.P8841323083563364075

`A008616(lcm(13, A227824(n)))+char[6]`
-/

namespace A148984.P8841323083563364075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lcm 13 (A227824 n)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148984.P8841323083563364075

/-!
# A148985: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148985, there is no canonical definition to state claims against.
-/

/-! ## A148985.P11415844557209203108

`A152415(ceil(2^(n-1)))-1`
-/

namespace A148985.P11415844557209203108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152415 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - 1

end

end A148985.P11415844557209203108

/-! ## A148985.P1022264242513605225

`A109497(A121517(n))`
-/

namespace A148985.P1022264242513605225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A121517 n).toNat

end

end A148985.P1022264242513605225

/-!
# A148986: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A148986, there is no canonical definition to state claims against.
-/

/-! ## A148986.P12741559078135541635

`A220658(A150769(n))`
-/

namespace A148986.P12741559078135541635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150769 n).toNat

end

end A148986.P12741559078135541635

/-! ## A148986.P5563289455330109094

`A220658(A150770(n))`
-/

namespace A148986.P5563289455330109094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150770 n).toNat

end

end A148986.P5563289455330109094

/-! ## A148986.P15233269111194538974

`A110656(A087433(n+1))`
-/

namespace A148986.P15233269111194538974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A087433 (n + 1)).toNat

end

end A148986.P15233269111194538974

/-!
# A148987: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148987, there is no canonical definition to state claims against.
-/

/-! ## A148987.P7131692269611102465

`or(A001222(n^n+1)², A148909(n))`
-/

namespace A148987.P7131692269611102465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (n ^ n + 1) ^ 2) (A148909 n)

end

end A148987.P7131692269611102465

/-! ## A148987.P17532961833184661592

`A215590(A148893(n))+A148908(n)`
-/

namespace A148987.P17532961833184661592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215590 (A148893 n).toNat + A148908 n

end

end A148987.P17532961833184661592

/-! ## A148987.P8939387560854039827

`A042968(A047974(n*A227655(n)))`
-/

namespace A148987.P8939387560854039827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A047974 ((n : ℤ) * A227655 n).toNat).toNat

end

end A148987.P8939387560854039827

/-!
# A148988: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148988, there is no canonical definition to state claims against.
-/

/-! ## A148988.P6247923475541773604

`A194204(A320797(n)+A150064(n))`
-/

namespace A148988.P6247923475541773604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (A320797 n + A150064 n).toNat

end

end A148988.P6247923475541773604

/-! ## A148988.P18301980417442576061

`A289495(xor(2, A007854(n)))`
-/

namespace A148988.P18301980417442576061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (Int.xor 2 (A007854 n)).toNat

end

end A148988.P18301980417442576061

/-! ## A148988.P13525573171973943148

`A279560(n)+A049990(A124531(n))`
-/

namespace A148988.P13525573171973943148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279560 n + A049990 (A124531 n).toNat

end

end A148988.P13525573171973943148

/-!
# A148989: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148989, there is no canonical definition to state claims against.
-/

/-! ## A148989.P12120486412111643324

`A332086(5*A198413(n))`
-/

namespace A148989.P12120486412111643324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (5 * A198413 n).toNat

end

end A148989.P12120486412111643324

/-! ## A148989.P6810235177850974765

`A157271(A148993(n)+A148983(n))`
-/

namespace A148989.P6810235177850974765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148993 n + A148983 n).toNat

end

end A148989.P6810235177850974765

/-! ## A148989.P14105278668416217065

`A157271(A148993(n)+A148984(n))`
-/

namespace A148989.P14105278668416217065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148993 n + A148984 n).toNat

end

end A148989.P14105278668416217065

/-!
# A148990: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148990, there is no canonical definition to state claims against.
-/

/-! ## A148990.P14067674164869048270

`A344009(A148982(n))`
-/

namespace A148990.P14067674164869048270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 (A148982 n).toNat

end

end A148990.P14067674164869048270

/-! ## A148990.P5469656699363645300

`A381991(A376230(n+1))`
-/

namespace A148990.P5469656699363645300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381991 (A376230 (n + 1)).toNat

end

end A148990.P5469656699363645300

/-! ## A148990.P3321764514746291325

`and(-5, A127757(A150783(n)))`
-/

namespace A148990.P3321764514746291325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A127757 (A150783 n).toNat)

end

end A148990.P3321764514746291325

/-!
# A148991: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148991, there is no canonical definition to state claims against.
-/

/-! ## A148991.P18414838676091678100

`A325102(A247623(n))+1`
-/

namespace A148991.P18414838676091678100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325102 (A247623 n).toNat + 1

end

end A148991.P18414838676091678100

/-! ## A148991.P11753262372719935586

`A325102(A316473(n+1))+1`
-/

namespace A148991.P11753262372719935586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325102 (A316473 (n + 1)).toNat + 1

end

end A148991.P11753262372719935586

/-! ## A148991.P18275084753882063165

`A157271(A148999(n)+A148986(n))`
-/

namespace A148991.P18275084753882063165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148999 n + A148986 n).toNat

end

end A148991.P18275084753882063165

/-!
# A148992: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A148992, there is no canonical definition to state claims against.
-/

/-! ## A148992.P14463119124116102146

`A084469(A148995(n))`
-/

namespace A148992.P14463119124116102146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A148995 n).toNat

end

end A148992.P14463119124116102146

/-! ## A148992.P11411928090229449657

`A164028(A005941(n!))`
-/

namespace A148992.P11411928090229449657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (A005941 (Nat.factorial n)).toNat

end

end A148992.P11411928090229449657

/-! ## A148992.P8652464055087097532

`A289496(A150908(n))+A114515(n)`
-/

namespace A148992.P8652464055087097532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A150908 n).toNat + A114515 n

end

end A148992.P8652464055087097532

/-!
# A148993: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148993, there is no canonical definition to state claims against.
-/

/-! ## A148993.P17112243475707715850

`A187186(6*A149276(n))`
-/

namespace A148993.P17112243475707715850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (6 * A149276 n).toNat

end

end A148993.P17112243475707715850

/-! ## A148993.P11593678530711415055

`A148994(n)+A016389(A046879(n))`
-/

namespace A148993.P11593678530711415055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148994 n + A016389 (A046879 n).toNat

end

end A148993.P11593678530711415055

/-! ## A148993.P14865124258789739854

`A148994(n)+A016389(A192871(n))`
-/

namespace A148993.P14865124258789739854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148994 n + A016389 (A192871 n).toNat

end

end A148993.P14865124258789739854

/-!
# A148994: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148994, there is no canonical definition to state claims against.
-/

/-! ## A148994.P9755336257895132793

`A187186(6*A149276(n))+char[6]`
-/

namespace A148994.P9755336257895132793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (6 * A149276 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A148994.P9755336257895132793

/-! ## A148994.P5740294196748551824

`A148993(n)+A122840(A114244(n))`
-/

namespace A148994.P5740294196748551824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148993 n + A122840 (A114244 n).toNat

end

end A148994.P5740294196748551824

/-! ## A148994.P15273809259456874345

`A254379(A016209(n))+A148993(n)`
-/

namespace A148994.P15273809259456874345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A016209 n).toNat + A148993 n

end

end A148994.P15273809259456874345

/-!
# A148995: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148995, there is no canonical definition to state claims against.
-/

/-! ## A148995.P12713331021065085235

`A004525(A326212(n)+A241370(n+1))`
-/

namespace A148995.P12713331021065085235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A326212 n + A241370 (n + 1)).toNat

end

end A148995.P12713331021065085235

/-! ## A148995.P17466072845827478790

`A084470(A148992(n))`
-/

namespace A148995.P17466072845827478790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084470 (A148992 n).toNat

end

end A148995.P17466072845827478790

/-! ## A148995.P9694167214947561322

`A372051(A291219(n))`
-/

namespace A148995.P9694167214947561322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372051 (A291219 n).toNat

end

end A148995.P9694167214947561322

/-!
# A148996: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148996, there is no canonical definition to state claims against.
-/

/-! ## A148996.P9719050350620662043

`A008619(A150077(n)-A050603(n))`
-/

namespace A148996.P9719050350620662043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A150077 n - A050603 n).toNat

end

end A148996.P9719050350620662043

/-! ## A148996.P15542671593378780951

`A008619(A150077(n)-A344180(n))`
-/

namespace A148996.P15542671593378780951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A150077 n - A344180 n).toNat

end

end A148996.P15542671593378780951

/-! ## A148996.P246470798338161181

`A004525(A150077(n)-A003165(n+1))`
-/

namespace A148996.P246470798338161181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150077 n - A003165 (n + 1)).toNat

end

end A148996.P246470798338161181

/-! ## A148996.P4765572653799204653

`A004525(A150077(n)-A193804(n+1))`
-/

namespace A148996.P4765572653799204653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150077 n - A193804 (n + 1)).toNat

end

end A148996.P4765572653799204653

/-!
# A148997: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A148997, there is no canonical definition to state claims against.
-/

/-! ## A148997.P5275930753576623160

`A110266(A148477(n+1))`
-/

namespace A148997.P5275930753576623160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A148477 (n + 1)).toNat

end

end A148997.P5275930753576623160

/-! ## A148997.P11180639542271349292

`A195174(A150004(n+1))`
-/

namespace A148997.P11180639542271349292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A150004 (n + 1)).toNat

end

end A148997.P11180639542271349292

/-! ## A148997.P18144223125029369434

`A008615(A060553(2*(n+1))+n)`
-/

namespace A148997.P18144223125029369434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A060553 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A148997.P18144223125029369434

/-!
# A148998: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A148998, there is no canonical definition to state claims against.
-/

/-! ## A148998.P8652282093743178755

`A008612(12*A333071(n))`
-/

namespace A148998.P8652282093743178755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (12 * A333071 n).toNat

end

end A148998.P8652282093743178755

/-! ## A148998.P7602848017604331971

`or(A148991(n), A215970(n+1))`
-/

namespace A148998.P7602848017604331971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148991 n) (A215970 (n + 1))

end

end A148998.P7602848017604331971

/-! ## A148998.P8169936809877946197

`A187185(A006095(n)+A003500(n))`
-/

namespace A148998.P8169936809877946197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A006095 n + A003500 n).toNat

end

end A148998.P8169936809877946197

/-!
# A148999: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, -1), (1, 1, 0)}.

The programs for A148999, there is no canonical definition to state claims against.
-/

/-! ## A148999.P2549546725546312136

`A273095(n+1)-A352661(3*n+2)`
-/

namespace A148999.P2549546725546312136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273095 (n + 1) - A352661 (3 * n + 2)

end

end A148999.P2549546725546312136

/-! ## A148999.P6350073571782655319

`A149000(A001096(n))`
-/

namespace A148999.P6350073571782655319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149000 (A001096 n).toNat

end

end A148999.P6350073571782655319

