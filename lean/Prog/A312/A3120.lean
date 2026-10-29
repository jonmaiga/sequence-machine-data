import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A312000: Coordination sequence Gal.6.379.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312000, there is no canonical definition to state claims against.
-/

/-! ## A312000.P14085072571299715643

`A092982(A310733(n)+A310730(n))`
-/

namespace A312000.P14085072571299715643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A310733 n + A310730 n).toNat

end

end A312000.P14085072571299715643

/-! ## A312000.P5968439110927569660

`A312001(n)-A213003(A035040(n))`
-/

namespace A312000.P5968439110927569660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312001 n - A213003 (A035040 n).toNat

end

end A312000.P5968439110927569660

/-! ## A312000.P20260012414278849

`A312001(n)-A213003(A219766(n+1))`
-/

namespace A312000.P20260012414278849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312001 n - A213003 (A219766 (n + 1)).toNat

end

end A312000.P20260012414278849

/-! ## A312000.P14253984618083546429

`A312001(n)-A213003(A220166(n+1))`
-/

namespace A312000.P14253984618083546429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312001 n - A213003 (A220166 (n + 1)).toNat

end

end A312000.P14253984618083546429

/-! ## A312000.P529964322239799561

`record[A312001(n)-A326444(n)]`
-/

namespace A312000.P529964322239799561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312001 n - A326444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312000.P529964322239799561

/-!
# A312001: Coordination sequence Gal.6.390.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312001, there is no canonical definition to state claims against.
-/

/-! ## A312001.P17942137847853609057

`A312000(n)+A213003(A035040(n))`
-/

namespace A312001.P17942137847853609057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312000 n + A213003 (A035040 n).toNat

end

end A312001.P17942137847853609057

/-! ## A312001.P8271434015013872754

`A312000(n)+A213003(A326444(n))`
-/

namespace A312001.P8271434015013872754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312000 n + A213003 (A326444 n).toNat

end

end A312001.P8271434015013872754

/-! ## A312001.P2852027429567341707

`A313587(n)-A126241(A007051(n))`
-/

namespace A312001.P2852027429567341707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313587 n - A126241 (A007051 n).toNat

end

end A312001.P2852027429567341707

/-! ## A312001.P6109840100055336851

`A314921(n)-A225654(A010000(n))`
-/

namespace A312001.P6109840100055336851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314921 n - A225654 (A010000 n).toNat

end

end A312001.P6109840100055336851

/-! ## A312001.P16918830277876898396

`A311789(eq[A311772(n), A311812(n)])`
-/

namespace A312001.P16918830277876898396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311789 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A312001.P16918830277876898396

/-!
# A312002: Coordination sequence Gal.6.438.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312002, there is no canonical definition to state claims against.
-/

/-! ## A312002.P13051045394321023301

`A321177(n+1)+A057945(A054782(n))`
-/

namespace A312002.P13051045394321023301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321177 (n + 1) + A057945 (A054782 n).toNat

end

end A312002.P13051045394321023301

/-! ## A312002.P2530832221808888253

`A250120(n)-A299236(A002965(2*(n+1)))`
-/

namespace A312002.P2530832221808888253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A299236 (A002965 (2 * (n + 1))).toNat

end

end A312002.P2530832221808888253

/-! ## A312002.P10561629661199798461

`A312068(n)-A236256(A193472(n))`
-/

namespace A312002.P10561629661199798461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 n - A236256 (A193472 n).toNat

end

end A312002.P10561629661199798461

/-! ## A312002.P2372390706351813335

`A312099(n)-A327305(A192876(n))`
-/

namespace A312002.P2372390706351813335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312099 n - A327305 (A192876 n).toNat

end

end A312002.P2372390706351813335

/-! ## A312002.P259312999838935293

`A206778(n+1)+A001414(A067623(n))`
-/

namespace A312002.P259312999838935293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206778 (n + 1) + A001414 (A067623 n).toNat

end

end A312002.P259312999838935293

/-!
# A312004: Coordination sequence Gal.4.83.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312004, there is no canonical definition to state claims against.
-/

/-! ## A312004.P8902055467722701220

`xor(4*n+1, A322382(A059922(3*n+1)))`
-/

namespace A312004.P8902055467722701220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n + 1 : ℤ) (A322382 (A059922 (3 * n + 1)).toNat)

end

end A312004.P8902055467722701220

/-! ## A312004.P9629758755792819549

`A312406(n)-A007814(A148612(n))`
-/

namespace A312004.P9629758755792819549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312406 n - A007814 (A148612 n).toNat

end

end A312004.P9629758755792819549

/-! ## A312004.P3956959178885187119

`A257511(A000271(n))+4*n`
-/

namespace A312004.P3956959178885187119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A000271 n).toNat + (4 * n : ℤ)

end

end A312004.P3956959178885187119

/-! ## A312004.P7287614411864698370

`A291154(2*n+1)-char[A305321(2*(n+2))]`
-/

namespace A312004.P7287614411864698370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305321 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (2 * n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A312004.P7287614411864698370

/-! ## A312004.P17078641922044490075

`A131555(A002851(n))+A008574(n)`
-/

namespace A312004.P17078641922044490075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A002851 n).toNat + A008574 n

end

end A312004.P17078641922044490075

/-!
# A312005: Coordination sequence Gal.6.283.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312005, there is no canonical definition to state claims against.
-/

/-! ## A312005.P14705049349422972637

`or(A200244(A172452(n)), A312004(n))`
-/

namespace A312005.P14705049349422972637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200244 (A172452 n).toNat) (A312004 n)

end

end A312005.P14705049349422972637

/-! ## A312005.P1776486788273550062

`or(A162781(A132192(n+1))², A312004(n))`
-/

namespace A312005.P1776486788273550062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162781 (A132192 (n + 1)).toNat ^ 2) (A312004 n)

end

end A312005.P1776486788273550062

/-! ## A312005.P1894583351504598917

`char[8]+A312406(n)-A007814(A148612(n))`
-/

namespace A312005.P1894583351504598917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A312406 n - A007814 (A148612 n).toNat)

end

end A312005.P1894583351504598917

/-! ## A312005.P11302378161195993059

`A311557(n)+A144595(A000244(n))`
-/

namespace A312005.P11302378161195993059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311557 n + A144595 (A000244 n).toNat

end

end A312005.P11302378161195993059

/-!
# A312006: Coordination sequence Gal.4.23.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312006, the canonical program `A312006.P17186863948088758042` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312006 has offset 0).

The definition of A312006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312006.P17186863948088758042

`ogf((1+4x+8x^2+13x^3+17x^4+16x^5+18x^6+16x^7+13x^8+9x^9+4x^10+x^11)/(1-x^4-x^7+x^11))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A312006

/-- `ogf((1+4x+8x^2+13x^3+17x^4+16x^5+18x^6+16x^7+13x^8+9x^9+4x^10+x^11)/(1-x^4-x^7+x^11))` -/
def P17186863948088758042.Spec : Prop :=
  ∀ n, P17186863948088758042.a n = A312006 n

theorem P17186863948088758042.correct : P17186863948088758042.Spec := by
  intro n
  simp only [A312006]

end A312006

/-! ## A312006.P6018231489674837818

`A010064(n+1)+A010054(A008301(2*(n+2)))`
-/

namespace A312006.P6018231489674837818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010064 (n + 1) + A010054 (A008301 (2 * (n + 2))).toNat

end

end A312006.P6018231489674837818

namespace A312006

/-- `A010064(n+1)+A010054(A008301(2*(n+2)))` -/
def P6018231489674837818.Spec : Prop :=
  ∀ n, P6018231489674837818.a n = A312006 n

end A312006

/-! ## A312006.P3106630363043391613

`A267263(A057354(n))+A311801(n)-A256580(A326495(n))`
-/

namespace A312006.P3106630363043391613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A057354 n).toNat + (A311801 n - A256580 (A326495 n).toNat)

end

end A312006.P3106630363043391613

namespace A312006

/-- `A267263(A057354(n))+A311801(n)-A256580(A326495(n))` -/
def P3106630363043391613.Spec : Prop :=
  ∀ n, P3106630363043391613.a n = A312006 n

end A312006

/-! ## A312006.P11365742164928799552

`A267263(A057354(n))+A311427(n^A109014(n))-A126792(A074591(n+1))`
-/

namespace A312006.P11365742164928799552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A057354 n).toNat + (A311427 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A109014 n : ℤ))).toNat - A126792 (A074591 (n + 1)).toNat)

end

end A312006.P11365742164928799552

namespace A312006

/-- `A267263(A057354(n))+A311427(n^A109014(n))-A126792(A074591(n+1))` -/
def P11365742164928799552.Spec : Prop :=
  ∀ n, P11365742164928799552.a n = A312006 n

end A312006

/-! ## A312006.P4031945637568903040

`A131098(n+1)+A001221(A000737(n))`
-/

namespace A312006.P4031945637568903040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) + A001221 (A000737 n).toNat

end

end A312006.P4031945637568903040

namespace A312006

/-- `A131098(n+1)+A001221(A000737(n))` -/
def P4031945637568903040.Spec : Prop :=
  ∀ n, P4031945637568903040.a n = A312006 n

end A312006

/-!
# A312007: Coordination sequence Gal.6.413.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312007, there is no canonical definition to state claims against.
-/

/-! ## A312007.P10838488604700647012

`A008579(n)-A014081(A350551(n))`
-/

namespace A312007.P10838488604700647012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A014081 (A350551 n).toNat

end

end A312007.P10838488604700647012

/-! ## A312007.P863299703965184470

`A312008(A087051(n))-A297038(n+1)`
-/

namespace A312007.P863299703965184470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312008 (A087051 n).toNat - A297038 (n + 1)

end

end A312007.P863299703965184470

/-! ## A312007.P11745102846787985689

`A312168(n)-A003982(n!)`
-/

namespace A312007.P11745102846787985689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312168 n - A003982 (Nat.factorial n)

end

end A312007.P11745102846787985689

/-! ## A312007.P2489178536899703342

`A312008(A087051(n+1)-1)`
-/

namespace A312007.P2489178536899703342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312008 (A087051 (n + 1) - 1).toNat

end

end A312007.P2489178536899703342

/-! ## A312007.P762532814815605377

`A312008(n)%A031400(n+3)`
-/

namespace A312007.P762532814815605377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312008 n) (A031400 (n + 3))

end

end A312007.P762532814815605377

/-!
# A312008: Coordination sequence Gal.5.183.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312008, there is no canonical definition to state claims against.
-/

/-! ## A312008.P8866600821760510189

`A312007(n)+A240467(A051291(n+2))`
-/

namespace A312008.P8866600821760510189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312007 n + A240467 (A051291 (n + 2)).toNat

end

end A312008.P8866600821760510189

/-!
# A312009: Coordination sequence Gal.6.80.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312009, there is no canonical definition to state claims against.
-/

/-! ## A312009.P1728467562640664499

`A313030(n)-A124737(A281026(n))`
-/

namespace A312009.P1728467562640664499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313030 n - A124737 (A281026 n).toNat

end

end A312009.P1728467562640664499

/-! ## A312009.P14186333806630151412

`A325273(A002529(n))+A310709(n)`
-/

namespace A312009.P14186333806630151412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A002529 n).toNat + A310709 n

end

end A312009.P14186333806630151412

/-! ## A312009.P5424511462598638215

`A312083(n)-A067898(A156664(n))`
-/

namespace A312009.P5424511462598638215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312083 n - A067898 (A156664 n).toNat

end

end A312009.P5424511462598638215

/-! ## A312009.P7371951808742711761

`A312084(n)-A067898(A156664(n))`
-/

namespace A312009.P7371951808742711761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312084 n - A067898 (A156664 n).toNat

end

end A312009.P7371951808742711761

/-! ## A312009.P13264380696851114270

`A312083(n)-A216601(A132730(n))`
-/

namespace A312009.P13264380696851114270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312083 n - A216601 (A132730 n).toNat

end

end A312009.P13264380696851114270

/-!
# A312010: Coordination sequence Gal.6.62.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312010, there is no canonical definition to state claims against.
-/

/-! ## A312010.P13296234133518816964

`A312009(n)+A174631(A169764(n+1))`
-/

namespace A312010.P13296234133518816964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312009 n + A174631 (A169764 (n + 1)).toNat

end

end A312010.P13296234133518816964

/-! ## A312010.P12737140484589642411

`xor(A000999(A022814(n)), A311349(n))`
-/

namespace A312010.P12737140484589642411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000999 (A022814 n).toNat) (A311349 n)

end

end A312010.P12737140484589642411

/-!
# A312011: Coordination sequence Gal.6.553.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312011, there is no canonical definition to state claims against.
-/

/-! ## A312011.P7101514976207427211

`∑[abs(A153239(A005583(n+1)))]`
-/

namespace A312011.P7101514976207427211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153239 (A005583 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312011.P7101514976207427211

/-! ## A312011.P3350632998475459086

`A311102(n)+A001222(A182117(n))`
-/

namespace A312011.P3350632998475459086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311102 n + A001222 (A182117 n).toNat

end

end A312011.P3350632998475459086

/-! ## A312011.P5315616503557906828

`A312113(n)-A048881(A020058(n))`
-/

namespace A312011.P5315616503557906828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312113 n - A048881 (A020058 n).toNat

end

end A312011.P5315616503557906828

/-! ## A312011.P16543474712564221086

`A312100(n)-A231122(A232687(n))`
-/

namespace A312011.P16543474712564221086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n - A231122 (A232687 n).toNat

end

end A312011.P16543474712564221086

/-!
# A312012: Coordination sequence Gal.3.32.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312012, there is no canonical definition to state claims against.
-/

/-! ## A312012.P10391219059960980913

`record[A312976(n)-A010756(n)]`
-/

namespace A312012.P10391219059960980913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 n - A010756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312012.P10391219059960980913

/-! ## A312012.P1708318738714066205

`A250120(n)-A055396(A000667(n))`
-/

namespace A312012.P1708318738714066205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A055396 (A000667 n).toNat

end

end A312012.P1708318738714066205

/-! ## A312012.P14907562206156380841

`A250120(n)-A366989(A030186(n))`
-/

namespace A312012.P14907562206156380841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A366989 (A030186 n).toNat

end

end A312012.P14907562206156380841

/-! ## A312012.P6400435244995964721

`A250120(n)-A000001(A075828(n+1))`
-/

namespace A312012.P6400435244995964721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A000001 (A075828 (n + 1)).toNat

end

end A312012.P6400435244995964721

/-! ## A312012.P14234774761833712304

`A250120(n)-A321368(A000043(n+1))`
-/

namespace A312012.P14234774761833712304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A321368 (A000043 (n + 1)).toNat

end

end A312012.P14234774761833712304

/-!
# A312013: Coordination sequence Gal.6.395.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312013, there is no canonical definition to state claims against.
-/

/-! ## A312013.P5887201982257799224

`A250120(n)-A001222(A000660(n))`
-/

namespace A312013.P5887201982257799224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001222 (A000660 n).toNat

end

end A312013.P5887201982257799224

/-! ## A312013.P893529932047722603

`A072154(2*n)-A001222(A000660(n))`
-/

namespace A312013.P893529932047722603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A001222 (A000660 n).toNat

end

end A312013.P893529932047722603

/-! ## A312013.P5290345930350462095

`record[A072154(n)/(-1)^n]-A001222(A000660(n))`
-/

namespace A312013.P5290345930350462095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A001222 (A000660 n).toNat : ℚ)

end

end A312013.P5290345930350462095

/-! ## A312013.P6135297391848645180

`A047486(A008486(n)+1)-A001222(A000660(n))`
-/

namespace A312013.P6135297391848645180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A001222 (A000660 n).toNat

end

end A312013.P6135297391848645180

/-! ## A312013.P2545620846684492509

`A047486(A033627(n+2))-A001222(A000660(n))`
-/

namespace A312013.P2545620846684492509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A033627 (n + 2)).toNat - A001222 (A000660 n).toNat

end

end A312013.P2545620846684492509

/-!
# A312014: Coordination sequence Gal.4.68.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312014, there is no canonical definition to state claims against.
-/

/-! ## A312014.P17584635013875434110

`(A312436(n)+A311559(n))/2`
-/

namespace A312014.P17584635013875434110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312436 n + A311559 n : ℚ) / 2

end

end A312014.P17584635013875434110

/-! ## A312014.P12817664698024196144

`A078898(A312436(n)+A311559(n))`
-/

namespace A312014.P12817664698024196144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A312436 n + A311559 n).toNat

end

end A312014.P12817664698024196144

/-! ## A312014.P15290483741530630296

`abs(A001057(A312436(n)+A311559(n)))`
-/

namespace A312014.P15290483741530630296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A312436 n + A311559 n).toNat|

end

end A312014.P15290483741530630296

/-! ## A312014.P12375658322067137023

`A001057(A311559(n)+A312436(n)-1)`
-/

namespace A312014.P12375658322067137023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311559 n + (A312436 n - 1)).toNat

end

end A312014.P12375658322067137023

/-! ## A312014.P12373546686583107216

`A008619(A311559(n)+A312436(n)-1)`
-/

namespace A312014.P12373546686583107216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311559 n + (A312436 n - 1)).toNat

end

end A312014.P12373546686583107216

/-! ## A312014.P2600269402401827384

`A001057(A311559(n)-(1-A312436(n)))`
-/

namespace A312014.P2600269402401827384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311559 n - (1 - A312436 n)).toNat

end

end A312014.P2600269402401827384

/-! ## A312014.P4148876905959100603

`A008619(A311559(n)-(1-A312436(n)))`
-/

namespace A312014.P4148876905959100603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311559 n - (1 - A312436 n)).toNat

end

end A312014.P4148876905959100603

/-!
# A312015: Coordination sequence Gal.6.178.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312015, there is no canonical definition to state claims against.
-/

/-! ## A312015.P8570107652870435851

`A312016(n)-A006927(A033886(n))`
-/

namespace A312015.P8570107652870435851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312016 n - A006927 (A033886 n).toNat

end

end A312015.P8570107652870435851

/-! ## A312015.P17195050622690138433

`A312016(n)-A185284(A008578(n+1))`
-/

namespace A312015.P17195050622690138433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312016 n - A185284 (A008578 (n + 1)).toNat

end

end A312015.P17195050622690138433

/-! ## A312015.P16899401251515593213

`A312016(n)%A016825(A212900(n))`
-/

namespace A312015.P16899401251515593213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312016 n) (A016825 (A212900 n).toNat)

end

end A312015.P16899401251515593213

/-! ## A312015.P15753612170400699441

`A312016(n)+A006927(A033886(n)²)`
-/

namespace A312015.P15753612170400699441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312016 n + A006927 (A033886 n ^ 2).toNat

end

end A312015.P15753612170400699441

/-! ## A312015.P1557201143743726838

`A312016(A062399(n))`
-/

namespace A312015.P1557201143743726838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312016 (A062399 n).toNat

end

end A312015.P1557201143743726838

/-!
# A312016: Coordination sequence Gal.6.303.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312016, there is no canonical definition to state claims against.
-/

/-! ## A312016.P16334715355844413999

`A312015(n)+A172542(A054143(n))`
-/

namespace A312016.P16334715355844413999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312015 n + A172542 (A054143 n).toNat

end

end A312016.P16334715355844413999

/-! ## A312016.P11585578711224062036

`or(A188079(A292555(n)), A312015(n))`
-/

namespace A312016.P11585578711224062036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188079 (A292555 n).toNat) (A312015 n)

end

end A312016.P11585578711224062036

/-! ## A312016.P11644990097298372874

`A312015(n)+A185284(A007310(n+1))`
-/

namespace A312016.P11644990097298372874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312015 n + A185284 (A007310 (n + 1)).toNat

end

end A312016.P11644990097298372874

/-!
# A312017: Coordination sequence Gal.4.69.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312017, there is no canonical definition to state claims against.
-/

/-! ## A312017.P122285444749504971

`A106744(A313561(n)+1-A244895(n))`
-/

namespace A312017.P122285444749504971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A313561 n + (1 - A244895 n)).toNat

end

end A312017.P122285444749504971

/-! ## A312017.P2927419243569248536

`A106744(1-(A244895(n)-A313561(n)))`
-/

namespace A312017.P2927419243569248536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (1 - (A244895 n - A313561 n)).toNat

end

end A312017.P2927419243569248536

/-! ## A312017.P18113139926256794502

`A312028(n)-2*A083928(A029968(n+1))`
-/

namespace A312017.P18113139926256794502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312028 n - 2 * A083928 (A029968 (n + 1)).toNat

end

end A312017.P18113139926256794502

/-! ## A312017.P12337351203820642497

`A312028(n)-(A083928(A029968(n+1))+A083928(n))`
-/

namespace A312017.P12337351203820642497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312028 n - (A083928 (A029968 (n + 1)).toNat + A083928 n)

end

end A312017.P12337351203820642497

/-!
# A312018: Coordination sequence Gal.6.422.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312018, there is no canonical definition to state claims against.
-/

/-! ## A312018.P3010401391602704109

`A312019(n)-A025466(A027375(n))`
-/

namespace A312018.P3010401391602704109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312019 n - A025466 (A027375 n).toNat

end

end A312018.P3010401391602704109

/-! ## A312018.P8273475147017970686

`A312019(n)-A185284(A027193(n))`
-/

namespace A312018.P8273475147017970686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312019 n - A185284 (A027193 n).toNat

end

end A312018.P8273475147017970686

/-! ## A312018.P13233856042816296509

`A312019(n)-A185284(A033638(n))`
-/

namespace A312018.P13233856042816296509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312019 n - A185284 (A033638 n).toNat

end

end A312018.P13233856042816296509

/-! ## A312018.P10502188069780777448

`A312019(n)-A185284(A008578(n+1))`
-/

namespace A312018.P10502188069780777448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312019 n - A185284 (A008578 (n + 1)).toNat

end

end A312018.P10502188069780777448

/-! ## A312018.P11689439357007718406

`A312019(n)-A368073(A108767(n+1))`
-/

namespace A312018.P11689439357007718406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312019 n - A368073 (A108767 (n + 1)).toNat

end

end A312018.P11689439357007718406

/-!
# A312019: Coordination sequence Gal.6.405.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312019, there is no canonical definition to state claims against.
-/

/-! ## A312019.P1128559109869075811

`A312018(n)+A025466(A027375(n))`
-/

namespace A312019.P1128559109869075811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312018 n + A025466 (A027375 n).toNat

end

end A312019.P1128559109869075811

/-! ## A312019.P3673529838186450756

`A312018(n)+A185284(A027193(n))`
-/

namespace A312019.P3673529838186450756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312018 n + A185284 (A027193 n).toNat

end

end A312019.P3673529838186450756

/-! ## A312019.P1962733366383655748

`A312018(n)+A185284(A033638(n))`
-/

namespace A312019.P1962733366383655748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312018 n + A185284 (A033638 n).toNat

end

end A312019.P1962733366383655748

/-! ## A312019.P6913822195934953304

`A312018(n)+A185284(A008578(n+1))`
-/

namespace A312019.P6913822195934953304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312018 n + A185284 (A008578 (n + 1)).toNat

end

end A312019.P6913822195934953304

/-!
# A312020: Coordination sequence Gal.6.162.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312020, there is no canonical definition to state claims against.
-/

/-! ## A312020.P3982427506354499529

`A312948(n)-A037906(A026563(n+2))`
-/

namespace A312020.P3982427506354499529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n - A037906 (A026563 (n + 2)).toNat

end

end A312020.P3982427506354499529

/-! ## A312020.P14543207566425581672

`or(A277148(A201914(n)), A311565(n))`
-/

namespace A312020.P14543207566425581672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277148 (A201914 n).toNat) (A311565 n)

end

end A312020.P14543207566425581672

/-! ## A312020.P1737529756666228298

`A311565(n)+A014707(A005160(n+1))`
-/

namespace A312020.P1737529756666228298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311565 n + A014707 (A005160 (n + 1)).toNat

end

end A312020.P1737529756666228298

/-! ## A312020.P13984710093361320976

`A312025(n)-A131852(A337409(n+1))`
-/

namespace A312020.P13984710093361320976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312025 n - A131852 (A337409 (n + 1)).toNat

end

end A312020.P13984710093361320976

/-! ## A312020.P394094511301874086

`A156731(A164090(n+1))+A010064(n+1)`
-/

namespace A312020.P394094511301874086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156731 (A164090 (n + 1)).toNat + A010064 (n + 1)

end

end A312020.P394094511301874086

/-!
# A312021: Coordination sequence Gal.4.94.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312021, there is no canonical definition to state claims against.
-/

/-! ## A312021.P13622213486808071107

`A358479(A353384(n))+A311804(n)`
-/

namespace A312021.P13622213486808071107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358479 (A353384 n).toNat + A311804 n

end

end A312021.P13622213486808071107

/-! ## A312021.P8914545621492285939

`A250120(n)-A182850(A095263(n+1))`
-/

namespace A312021.P8914545621492285939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A182850 (A095263 (n + 1)).toNat

end

end A312021.P8914545621492285939

/-! ## A312021.P9195944660201466779

`A357875(A312015(n*A055642(n)))`
-/

namespace A312021.P9195944660201466779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (A312015 ((n : ℤ) * A055642 n).toNat).toNat

end

end A312021.P9195944660201466779

/-! ## A312021.P2240810802507182321

`A320005(A131385(n+1))+A311821(n)`
-/

namespace A312021.P2240810802507182321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A131385 (n + 1)).toNat + A311821 n

end

end A312021.P2240810802507182321

/-!
# A312022: Coordination sequence Gal.5.174.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312022, there is no canonical definition to state claims against.
-/

/-! ## A312022.P7314671309925363424

`A312023(n)+A178798(A276086(n))`
-/

namespace A312022.P7314671309925363424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312023 n + A178798 (A276086 n).toNat

end

end A312022.P7314671309925363424

/-! ## A312022.P7082706107735395445

`A312023(n)-A185284(A293547(n))`
-/

namespace A312022.P7082706107735395445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312023 n - A185284 (A293547 n).toNat

end

end A312022.P7082706107735395445

/-! ## A312022.P16486146073132686623

`A312023(n)-A037817(A351870(n)+1)`
-/

namespace A312022.P16486146073132686623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312023 n - A037817 (A351870 n + 1).toNat

end

end A312022.P16486146073132686623

/-! ## A312022.P9614994093112594847

`xor(A037817(n+1), A312023(A351870(n)))`
-/

namespace A312022.P9614994093112594847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037817 (n + 1)) (A312023 (A351870 n).toNat)

end

end A312022.P9614994093112594847

/-! ## A312022.P12336851011385957567

`A140490(n+1)-A001221(A279627(n+1))`
-/

namespace A312022.P12336851011385957567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140490 (n + 1) - A001221 (A279627 (n + 1)).toNat

end

end A312022.P12336851011385957567

/-!
# A312023: Coordination sequence Gal.5.165.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312023, there is no canonical definition to state claims against.
-/

/-! ## A312023.P18385624804968628343

`A312022(n)-A178798(A276086(n))`
-/

namespace A312023.P18385624804968628343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312022 n - A178798 (A276086 n).toNat

end

end A312023.P18385624804968628343

/-! ## A312023.P3911447925954789801

`or(A056965(n), A312022(A120126(n)))`
-/

namespace A312023.P3911447925954789801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056965 n) (A312022 (A120126 n).toNat)

end

end A312023.P3911447925954789801

/-! ## A312023.P14989501275274012673

`or(A059648(A120588(n)), A312022(n))`
-/

namespace A312023.P14989501275274012673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059648 (A120588 n).toNat) (A312022 n)

end

end A312023.P14989501275274012673

/-! ## A312023.P6943116379711251775

`A312022(A351870(n))+A037817(n+1)`
-/

namespace A312023.P6943116379711251775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312022 (A351870 n).toNat + A037817 (n + 1)

end

end A312023.P6943116379711251775

/-! ## A312023.P4636877710118778305

`or(A276791(A339296(n+1)), A312022(n))`
-/

namespace A312023.P4636877710118778305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276791 (A339296 (n + 1)).toNat) (A312022 n)

end

end A312023.P4636877710118778305

/-!
# A312024: Coordination sequence Gal.6.269.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312024, there is no canonical definition to state claims against.
-/

/-! ## A312024.P17069868631972356484

`A312065(n)-(A296773(∑[n+1])-A337260(n+1))`
-/

namespace A312024.P17069868631972356484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - (A296773 (∑ j ∈ Finset.range (n + 1), f1 j) - A337260 (n + 1))

end

end A312024.P17069868631972356484

/-! ## A312024.P578599411330289404

`A311399(n)+A188170(A022916(n))`
-/

namespace A312024.P578599411330289404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311399 n + A188170 (A022916 n).toNat

end

end A312024.P578599411330289404

/-! ## A312024.P16056934351843339187

`A312031(A062399(n))-A083928(n)`
-/

namespace A312024.P16056934351843339187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312031 (A062399 n).toNat - A083928 n

end

end A312024.P16056934351843339187

/-! ## A312024.P15281147616568682748

`A312031(n)-A083928(A351870(n))`
-/

namespace A312024.P15281147616568682748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312031 n - A083928 (A351870 n).toNat

end

end A312024.P15281147616568682748

/-! ## A312024.P11615685569941937326

`A312031(n)-A083928(A029968(n+1))`
-/

namespace A312024.P11615685569941937326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312031 n - A083928 (A029968 (n + 1)).toNat

end

end A312024.P11615685569941937326

/-!
# A312025: Coordination sequence Gal.6.284.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312025, there is no canonical definition to state claims against.
-/

/-! ## A312025.P11792212738668394479

`A311565(n)+A014707(A005160(n+1))+1-A307430(2*(n+1))`
-/

namespace A312025.P11792212738668394479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311565 n + A014707 (A005160 (n + 1)).toNat + 1 - A307430 (2 * (n + 1))

end

end A312025.P11792212738668394479

/-! ## A312025.P12639309529055253388

`or(A038189(n), A311565(A062399(n)))`
-/

namespace A312025.P12639309529055253388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038189 n) (A311565 (A062399 n).toNat)

end

end A312025.P12639309529055253388

/-! ## A312025.P5827486448186300281

`A010064(n+1)+A010060(A006190(n))`
-/

namespace A312025.P5827486448186300281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010064 (n + 1) + A010060 (A006190 n).toNat

end

end A312025.P5827486448186300281

/-! ## A312025.P5888010725704487188

`A089038(2*(n+1))+A004216(A089435(2*(n+2)))`
-/

namespace A312025.P5888010725704487188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (2 * (n + 1)) + A004216 (A089435 (2 * (n + 2))).toNat

end

end A312025.P5888010725704487188

/-!
# A312026: Coordination sequence Gal.6.393.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312026, there is no canonical definition to state claims against.
-/

/-! ## A312026.P7619499857746947927

`A316863(A304255(n)+2)+A311807(n)`
-/

namespace A312026.P7619499857746947927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A304255 n + 2).toNat + A311807 n

end

end A312026.P7619499857746947927

/-! ## A312026.P17277887955691512039

`A033831(A148037(n))+A008574(n)`
-/

namespace A312026.P17277887955691512039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (A148037 n).toNat + A008574 n

end

end A312026.P17277887955691512039

/-! ## A312026.P11354915552861086881

`A341999(n)+A311832(A062399(n))`
-/

namespace A312026.P11354915552861086881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 n + A311832 (A062399 n).toNat

end

end A312026.P11354915552861086881

/-! ## A312026.P6076201698218499120

`A341999(n)+A311832(A120126(n))`
-/

namespace A312026.P6076201698218499120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 n + A311832 (A120126 n).toNat

end

end A312026.P6076201698218499120

/-!
# A312027: Coordination sequence Gal.5.159.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312027, there is no canonical definition to state claims against.
-/

/-! ## A312027.P4514157452293984943

`A250120(n)-A005811(A114725(n))`
-/

namespace A312027.P4514157452293984943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A005811 (A114725 n).toNat

end

end A312027.P4514157452293984943

/-! ## A312027.P4925510416433024086

`A312028(A062399(n))-A180160(n)`
-/

namespace A312027.P4925510416433024086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312028 (A062399 n).toNat - A180160 n

end

end A312027.P4925510416433024086

/-! ## A312027.P8961168290798114086

`A312028(n)-A185284(A212804(n))`
-/

namespace A312027.P8961168290798114086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312028 n - A185284 (A212804 n).toNat

end

end A312027.P8961168290798114086

/-! ## A312027.P11948225590937645872

`A312028(A062399(n))-A324095(n+1)`
-/

namespace A312027.P11948225590937645872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312028 (A062399 n).toNat - A324095 (n + 1)

end

end A312027.P11948225590937645872

/-! ## A312027.P10132939329636297897

`A312028(A087051(n))`
-/

namespace A312027.P10132939329636297897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312028 (A087051 n).toNat

end

end A312027.P10132939329636297897

/-!
# A312028: Coordination sequence Gal.5.170.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312028, there is no canonical definition to state claims against.
-/

/-! ## A312028.P7968291100662732585

`A375053(n)+A351555(A002878(n))`
-/

namespace A312028.P7968291100662732585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375053 n + A351555 (A002878 n).toNat

end

end A312028.P7968291100662732585

/-! ## A312028.P9700331842894948517

`A312027(A062399(n))+A180160(n)`
-/

namespace A312028.P9700331842894948517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312027 (A062399 n).toNat + A180160 n

end

end A312028.P9700331842894948517

/-! ## A312028.P723357765209966356

`A311436(n)+A277017(A098481(n))`
-/

namespace A312028.P723357765209966356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311436 n + A277017 (A098481 n).toNat

end

end A312028.P723357765209966356

/-! ## A312028.P8339921406250503285

`A312027(n)+A185284(A212804(n))`
-/

namespace A312028.P8339921406250503285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312027 n + A185284 (A212804 n).toNat

end

end A312028.P8339921406250503285

/-!
# A312029: Coordination sequence Gal.5.179.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312029, there is no canonical definition to state claims against.
-/

/-! ## A312029.P16574880588732874817

`A311840(n)+A102683(A026307(n))`
-/

namespace A312029.P16574880588732874817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311840 n + A102683 (A026307 n).toNat

end

end A312029.P16574880588732874817

/-! ## A312029.P1125167564468645425

`A008574(n)+A001222(A352008(n))`
-/

namespace A312029.P1125167564468645425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A352008 n).toNat

end

end A312029.P1125167564468645425

/-! ## A312029.P2694736649325865143

`A311406(n)+A010059(A209388(n+1))`
-/

namespace A312029.P2694736649325865143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311406 n + A010059 (A209388 (n + 1)).toNat

end

end A312029.P2694736649325865143

/-! ## A312029.P11916481816945528105

`A051903(A143554(n))+A008574(n)`
-/

namespace A312029.P11916481816945528105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A143554 n).toNat + A008574 n

end

end A312029.P11916481816945528105

/-! ## A312029.P13905864127678282385

`A384483(A048166(2*n+1))+A048166(n+1)`
-/

namespace A312029.P13905864127678282385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384483 (A048166 (2 * n + 1)).toNat + A048166 (n + 1)

end

end A312029.P13905864127678282385

/-!
# A312030: Coordination sequence Gal.6.396.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312030, there is no canonical definition to state claims against.
-/

/-! ## A312030.P7072252304117304727

`∑[A060130(A001954(n)^3)]`
-/

namespace A312030.P7072252304117304727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A001954 n ^ 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312030.P7072252304117304727

/-! ## A312030.P6977980660332305702

`∑[A268835(record[A258333(n+1)])]`
-/

namespace A312030.P6977980660332305702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258333 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268835 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312030.P6977980660332305702

/-! ## A312030.P2733831907492990966

`A311770(A227549(n+1))+floor(n/4)`
-/

namespace A312030.P2733831907492990966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311770 (A227549 (n + 1)).toNat + ⌊(n : ℚ) / 4⌋

end

end A312030.P2733831907492990966

/-! ## A312030.P14499763959436888049

`A311153(n)+A001221(A020122(n))`
-/

namespace A312030.P14499763959436888049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 n + A001221 (A020122 n).toNat

end

end A312030.P14499763959436888049

/-! ## A312030.P10711744967337062383

`A313873(n)-A001222(A000984(n))`
-/

namespace A312030.P10711744967337062383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n - A001222 (A000984 n).toNat

end

end A312030.P10711744967337062383

/-!
# A312031: Coordination sequence Gal.6.429.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312031, there is no canonical definition to state claims against.
-/

/-! ## A312031.P3898122288825716618

`A330066(A008576(n)%A330076(n+1))`
-/

namespace A312031.P3898122288825716618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330066 (Int.tmod (A008576 n) (A330076 (n + 1))).toNat

end

end A312031.P3898122288825716618

/-! ## A312031.P287896004867955662

`A311844(n)+A010060(A108540(n+1))`
-/

namespace A312031.P287896004867955662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311844 n + A010060 (A108540 (n + 1)).toNat

end

end A312031.P287896004867955662

/-! ## A312031.P8549993808660234636

`A301672(n)+A065335(A066843(n))`
-/

namespace A312031.P8549993808660234636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A065335 (A066843 n).toNat

end

end A312031.P8549993808660234636

/-! ## A312031.P3455575076943995548

`A047206(A008576(n))%A207640(2*n+1)`
-/

namespace A312031.P3455575076943995548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047206 (A008576 n).toNat) (A207640 (2 * n + 1))

end

end A312031.P3455575076943995548

/-! ## A312031.P4259009887212039406

`A085516(A311953(n))`
-/

namespace A312031.P4259009887212039406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A311953 n).toNat

end

end A312031.P4259009887212039406

/-!
# A312032: Coordination sequence Gal.6.436.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312032, there is no canonical definition to state claims against.
-/

/-! ## A312032.P5976938440519161409

`A311868(n)-A016389((n+1)²)`
-/

namespace A312032.P5976938440519161409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311868 n - A016389 ((n + 1) ^ 2)

end

end A312032.P5976938440519161409

/-! ## A312032.P6159321965044459283

`A301672(n)+A077267(A056323(n))`
-/

namespace A312032.P6159321965044459283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A077267 (A056323 n).toNat

end

end A312032.P6159321965044459283

/-! ## A312032.P12475118213171846945

`A354344(A001558(n))+A311868(n)`
-/

namespace A312032.P12475118213171846945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (A001558 n).toNat + A311868 n

end

end A312032.P12475118213171846945

/-! ## A312032.P2595585167253751175

`A312031(n)+A294265(A113345(n))`
-/

namespace A312032.P2595585167253751175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312031 n + A294265 (A113345 n).toNat

end

end A312032.P2595585167253751175

/-! ## A312032.P6710394414297721424

`A312080(n)-A030315(A148297(n))`
-/

namespace A312032.P6710394414297721424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312080 n - A030315 (A148297 n).toNat

end

end A312032.P6710394414297721424

/-!
# A312033: Coordination sequence Gal.6.65.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312033, there is no canonical definition to state claims against.
-/

/-! ## A312033.P11174499448668168499

`A311198(n)+A001222(A118395(n))`
-/

namespace A312033.P11174499448668168499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311198 n + A001222 (A118395 n).toNat

end

end A312033.P11174499448668168499

/-! ## A312033.P16414396329757906542

`A313876(n)-A001222(A029651(n))`
-/

namespace A312033.P16414396329757906542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313876 n - A001222 (A029651 n).toNat

end

end A312033.P16414396329757906542

/-! ## A312033.P15778277684825623801

`A312111(n)-A057078(A317800(n+1))`
-/

namespace A312033.P15778277684825623801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312111 n - A057078 (A317800 (n + 1)).toNat

end

end A312033.P15778277684825623801

/-! ## A312033.P66729790441852325

`A250120(n)-A352513(A191616(n+1))`
-/

namespace A312033.P66729790441852325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A352513 (A191616 (n + 1)).toNat

end

end A312033.P66729790441852325

/-! ## A312033.P9074932873050591057

`A311699(n)+A001222(A362314(n))`
-/

namespace A312033.P9074932873050591057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311699 n + A001222 (A362314 n).toNat

end

end A312033.P9074932873050591057

/-!
# A312034: Coordination sequence Gal.4.109.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312034, there is no canonical definition to state claims against.
-/

/-! ## A312034.P2546058858865156675

`A313118(n)-A001222(A328430(n))`
-/

namespace A312034.P2546058858865156675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313118 n - A001222 (A328430 n).toNat

end

end A312034.P2546058858865156675

/-! ## A312034.P4213561667128502003

`A313021(n)-A073424(A000103(n+4))`
-/

namespace A312034.P4213561667128502003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313021 n - A073424 (A000103 (n + 4)).toNat

end

end A312034.P4213561667128502003

/-! ## A312034.P8809981739636671979

`A313021(n)-A024326(A132407(n+1)-n)`
-/

namespace A312034.P8809981739636671979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313021 n - A024326 (A132407 (n + 1) - (n : ℤ)).toNat

end

end A312034.P8809981739636671979

/-! ## A312034.P4253400764548390564

`A313167(n)-A024326(A132407(n+1))-A270803(2*(n+2))`
-/

namespace A312034.P4253400764548390564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313167 n - A024326 (A132407 (n + 1)).toNat - A270803 (2 * (n + 2))

end

end A312034.P4253400764548390564

/-! ## A312034.P16833331347400177745

`A095278(2*(n+1))+A001221(A001181(n))`
-/

namespace A312034.P16833331347400177745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (2 * (n + 1)) + A001221 (A001181 n).toNat

end

end A312034.P16833331347400177745

/-!
# A312035: Coordination sequence Gal.5.164.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312035, there is no canonical definition to state claims against.
-/

/-! ## A312035.P10065896551917962599

`A250120(n)-∑{e}[A007317(n+3), #]+1`
-/

namespace A312035.P10065896551917962599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + 1

end

end A312035.P10065896551917962599

/-! ## A312035.P2569244101424422256

`A250120(n)-A032741(A124107(n+1))`
-/

namespace A312035.P2569244101424422256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A032741 (A124107 (n + 1)).toNat

end

end A312035.P2569244101424422256

/-! ## A312035.P13551978258150018008

`A047309(2*n+1)+A004273(n)-A032741(A124107(n+1))`
-/

namespace A312035.P13551978258150018008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (2 * n + 1) + A004273 n - A032741 (A124107 (n + 1)).toNat

end

end A312035.P13551978258150018008

/-! ## A312035.P2428543099631405883

`A022144(n)-A047486(2*n+1)-A032741(A124107(n+1))`
-/

namespace A312035.P2428543099631405883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047486 (2 * n + 1) - A032741 (A124107 (n + 1)).toNat

end

end A312035.P2428543099631405883

/-! ## A312035.P4614864102114648662

`A022144(n)+1-A047412(2*(n+1))-A032741(A124107(n+1))`
-/

namespace A312035.P4614864102114648662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + 1 - A047412 (2 * (n + 1)) - A032741 (A124107 (n + 1)).toNat

end

end A312035.P4614864102114648662

/-!
# A312036: Coordination sequence Gal.6.214.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312036, there is no canonical definition to state claims against.
-/

/-! ## A312036.P16109201262941619301

`round(1/acot(5*n))-A001222(ceil(4^n/3))`
-/

namespace A312036.P16109201262941619301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) - A001222 ⌈(4 ^ n : ℚ) / 3⌉.toNat

end

end A312036.P16109201262941619301

/-! ## A312036.P14734550996237876300

`A008706(n)-A001222(ceil(4^n/3))`
-/

namespace A312036.P14734550996237876300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001222 ⌈(4 ^ n : ℚ) / 3⌉.toNat

end

end A312036.P14734550996237876300

/-! ## A312036.P7883641999680203932

`A314940(n)-A001221(A091352(n))`
-/

namespace A312036.P7883641999680203932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314940 n - A001221 (A091352 n).toNat

end

end A312036.P7883641999680203932

/-! ## A312036.P2871836624048068409

`A194640(A329422(n)-A329402(n+1))`
-/

namespace A312036.P2871836624048068409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A329422 n - A329402 (n + 1)).toNat

end

end A312036.P2871836624048068409

/-!
# A312037: Coordination sequence Gal.6.413.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312037, there is no canonical definition to state claims against.
-/

/-! ## A312037.P1028874600834654163

`A311807(n)+A244895(A165653(n))`
-/

namespace A312037.P1028874600834654163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A244895 (A165653 n).toNat

end

end A312037.P1028874600834654163

/-! ## A312037.P9022881142881371878

`A072670(A194558(n))+A008574(n)`
-/

namespace A312037.P9022881142881371878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A194558 n).toNat + A008574 n

end

end A312037.P9022881142881371878

/-! ## A312037.P13046539601275022924

`or(A072670(A194558(n)), A312004(n))`
-/

namespace A312037.P13046539601275022924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072670 (A194558 n).toNat) (A312004 n)

end

end A312037.P13046539601275022924

/-! ## A312037.P8761381343174119294

`or(A162781(A132192(n+1)), A312004(n))`
-/

namespace A312037.P8761381343174119294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162781 (A132192 (n + 1)).toNat) (A312004 n)

end

end A312037.P8761381343174119294

/-! ## A312037.P5514768483010933754

`A085516(A301672(n))`
-/

namespace A312037.P5514768483010933754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A301672 n).toNat

end

end A312037.P5514768483010933754

/-!
# A312038: Coordination sequence Gal.5.183.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312038, there is no canonical definition to state claims against.
-/

/-! ## A312038.P8207092035960653031

`A312440(n)-A071325(A086628(n))`
-/

namespace A312038.P8207092035960653031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 n - A071325 (A086628 n).toNat

end

end A312038.P8207092035960653031

/-! ## A312038.P6060808487613433987

`A312475(A087051(n))-A325334(n)`
-/

namespace A312038.P6060808487613433987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 (A087051 n).toNat - A325334 n

end

end A312038.P6060808487613433987

/-! ## A312038.P12511137537138128826

`A313107(n)-A326032(A325473(n))`
-/

namespace A312038.P12511137537138128826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313107 n - A326032 (A325473 n).toNat

end

end A312038.P12511137537138128826

/-! ## A312038.P13776543240392671017

`A312016(n)+A159684(A060401(n+1))`
-/

namespace A312038.P13776543240392671017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312016 n + A159684 (A060401 (n + 1)).toNat

end

end A312038.P13776543240392671017

/-!
# A312039: Coordination sequence Gal.4.48.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312039, there is no canonical definition to state claims against.
-/

/-! ## A312039.P7567635689185542674

`∑[A000120(p?[A243652(n)])]`
-/

namespace A312039.P7567635689185542674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243652 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312039.P7567635689185542674

/-! ## A312039.P6362377765282903626

`A310789(n)+A010059(A007718(n))`
-/

namespace A312039.P6362377765282903626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310789 n + A010059 (A007718 n).toNat

end

end A312039.P6362377765282903626

/-! ## A312039.P6609352090541361020

`A030341(A295142(n))+A008586(n)`
-/

namespace A312039.P6609352090541361020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A295142 n).toNat + A008586 n

end

end A312039.P6609352090541361020

/-! ## A312039.P13163100356446598784

`A004958(n+1)-2-A001221(A233665(n+1))`
-/

namespace A312039.P13163100356446598784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (n + 1) - 2 - A001221 (A233665 (n + 1)).toNat

end

end A312039.P13163100356446598784

/-!
# A312040: Coordination sequence Gal.4.49.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312040, there is no canonical definition to state claims against.
-/

/-! ## A312040.P11762028963388025368

`A311488(n)+A276791(A111297(n))`
-/

namespace A312040.P11762028963388025368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 n + A276791 (A111297 n).toNat

end

end A312040.P11762028963388025368

/-! ## A312040.P3586017669821082565

`A276791(A111297(n))+A311247(n)+A003982(A288140(n))`
-/

namespace A312040.P3586017669821082565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 (A111297 n).toNat + (A311247 n + A003982 (A288140 n).toNat)

end

end A312040.P3586017669821082565

/-! ## A312040.P15310255372395555020

`A311487(n)+A010051(A049606(n))`
-/

namespace A312040.P15310255372395555020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311487 n + A010051 (A049606 n).toNat

end

end A312040.P15310255372395555020

/-! ## A312040.P15935538600342743516

`A311488(n)+A010051(A049606(n))`
-/

namespace A312040.P15935538600342743516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 n + A010051 (A049606 n).toNat

end

end A312040.P15935538600342743516

/-! ## A312040.P10835594262613938324

`A369427(A163114(n+1))+A311488(n)`
-/

namespace A312040.P10835594262613938324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A163114 (n + 1)).toNat + A311488 n

end

end A312040.P10835594262613938324

/-!
# A312041: Coordination sequence Gal.6.414.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312041, there is no canonical definition to state claims against.
-/

/-! ## A312041.P12599444572851403517

`A312107(n)+A312114(n)-A312127(n)`
-/

namespace A312041.P12599444572851403517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312107 n + (A312114 n - A312127 n)

end

end A312041.P12599444572851403517

/-! ## A312041.P12684531913885764816

`record[A312042(A048793(n))]`
-/

namespace A312041.P12684531913885764816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312042 (A048793 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312041.P12684531913885764816

/-! ## A312041.P3737281741624208079

`A341619(A000085(n))+A312042(n)`
-/

namespace A312041.P3737281741624208079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A000085 n).toNat + A312042 n

end

end A312041.P3737281741624208079

/-! ## A312041.P16240390422359512308

`A312042(A062399(n))`
-/

namespace A312041.P16240390422359512308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312042 (A062399 n).toNat

end

end A312041.P16240390422359512308

/-! ## A312041.P1579595814239117450

`A312042(A120126(n))`
-/

namespace A312041.P1579595814239117450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312042 (A120126 n).toNat

end

end A312041.P1579595814239117450

/-!
# A312042: Coordination sequence Gal.6.397.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312042, there is no canonical definition to state claims against.
-/

/-! ## A312042.P1214534935992039505

`or(A102683(A026709(n)), A312041(n))`
-/

namespace A312042.P1214534935992039505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A026709 n).toNat) (A312041 n)

end

end A312042.P1214534935992039505

/-! ## A312042.P17935497529378089160

`A312041(n)+A102683(A312041(n)+A026709(n))`
-/

namespace A312042.P17935497529378089160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312041 n + A102683 (A312041 n + A026709 n).toNat

end

end A312042.P17935497529378089160

/-!
# A312043: Coordination sequence Gal.6.179.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312043, there is no canonical definition to state claims against.
-/

/-! ## A312043.P16089759357375919485

`A311791(n)+A309168(A007661(n))`
-/

namespace A312043.P16089759357375919485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n + A309168 (A007661 n).toNat

end

end A312043.P16089759357375919485

/-! ## A312043.P3280998555608842354

`A311440(n)+A086017(A210839(n+1))`
-/

namespace A312043.P3280998555608842354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A086017 (A210839 (n + 1)).toNat

end

end A312043.P3280998555608842354

/-! ## A312043.P705021467558945867

`A312118(n)-A033909(A022087(n))`
-/

namespace A312043.P705021467558945867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312118 n - A033909 (A022087 n).toNat

end

end A312043.P705021467558945867

/-! ## A312043.P11137907121178025786

`A341999(A000108(n+1))+A312016(n)`
-/

namespace A312043.P11137907121178025786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A000108 (n + 1)).toNat + A312016 n

end

end A312043.P11137907121178025786

/-! ## A312043.P6112977598736076486

`A328615(A008486(n))+A311790(A062399(n))`
-/

namespace A312043.P6112977598736076486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A008486 n).toNat + A311790 (A062399 n).toNat

end

end A312043.P6112977598736076486

/-!
# A312044: Coordination sequence Gal.6.415.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312044, there is no canonical definition to state claims against.
-/

/-! ## A312044.P14462613134675856020

`A311565(n)+A038219(A022007(n+1))`
-/

namespace A312044.P14462613134675856020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311565 n + A038219 (A022007 (n + 1)).toNat

end

end A312044.P14462613134675856020

/-! ## A312044.P13698548067757120077

`A312621(n)-A001222(A000109(n+3))`
-/

namespace A312044.P13698548067757120077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312621 n - A001222 (A000109 (n + 3)).toNat

end

end A312044.P13698548067757120077

/-! ## A312044.P17374991492812000606

`A312025(n)-A131531(A148331(n))`
-/

namespace A312044.P17374991492812000606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312025 n - A131531 (A148331 n).toNat

end

end A312044.P17374991492812000606

/-! ## A312044.P14903857494315183239

`A312485(n)-A264429(A027465(n))`
-/

namespace A312044.P14903857494315183239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312485 n - A264429 (A027465 n).toNat

end

end A312044.P14903857494315183239

/-! ## A312044.P11674427353408678985

`A312485(n)+A010054(A005638(n))-1`
-/

namespace A312044.P11674427353408678985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312485 n + A010054 (A005638 n).toNat - 1

end

end A312044.P11674427353408678985

/-!
# A312045: Coordination sequence Gal.5.105.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312045, there is no canonical definition to state claims against.
-/

/-! ## A312045.P15201306176723533155

`∑[A064547(A319871(n+1))]`
-/

namespace A312045.P15201306176723533155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A319871 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312045.P15201306176723533155

/-! ## A312045.P5974999375640821159

`∑[A064547(abs(A319890(n+1)))]`
-/

namespace A312045.P5974999375640821159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 |A319890 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312045.P5974999375640821159

/-! ## A312045.P13809767819698925588

`A312046(A062399(n))-A059995(n)`
-/

namespace A312045.P13809767819698925588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312046 (A062399 n).toNat - A059995 n

end

end A312045.P13809767819698925588

/-! ## A312045.P3613482791849592424

`A312046(A062399(n))-A332579(n)`
-/

namespace A312045.P3613482791849592424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312046 (A062399 n).toNat - A332579 n

end

end A312045.P3613482791849592424

/-! ## A312045.P13467830134974013122

`A312046(A087051(n))`
-/

namespace A312045.P13467830134974013122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312046 (A087051 n).toNat

end

end A312045.P13467830134974013122

/-!
# A312046: Coordination sequence Gal.5.106.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312046, there is no canonical definition to state claims against.
-/

/-! ## A312046.P4390567465337750092

`∑[A001222(A000051(n)*A311277(n))]`
-/

namespace A312046.P4390567465337750092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000051 n * A311277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312046.P4390567465337750092

/-! ## A312046.P6089322782245516739

`A311275(n)+A073267(A317890(n+1))`
-/

namespace A312046.P6089322782245516739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311275 n + A073267 (A317890 (n + 1)).toNat

end

end A312046.P6089322782245516739

/-! ## A312046.P13059730827183789144

`A311276(n)+A073267(A317890(n+1))`
-/

namespace A312046.P13059730827183789144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311276 n + A073267 (A317890 (n + 1)).toNat

end

end A312046.P13059730827183789144

/-! ## A312046.P6764706793008136454

`record[gcd(A312045(n), A332579(n))]`
-/

namespace A312046.P6764706793008136454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A312045 n) (A332579 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312046.P6764706793008136454

/-! ## A312046.P1834634967904537900

`A311494(n)+A010051(A049606(n))`
-/

namespace A312046.P1834634967904537900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311494 n + A010051 (A049606 n).toNat

end

end A312046.P1834634967904537900

/-!
# A312047: Coordination sequence Gal.6.383.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312047, there is no canonical definition to state claims against.
-/

/-! ## A312047.P14840824726916996469

`4*n+2-A074823(A117262(n+2))`
-/

namespace A312047.P14840824726916996469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - A074823 (A117262 (n + 2)).toNat

end

end A312047.P14840824726916996469

/-! ## A312047.P7647371060786255067

`A312464(n)-A044940(A341424(n+3))`
-/

namespace A312047.P7647371060786255067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n - A044940 (A341424 (n + 3)).toNat

end

end A312047.P7647371060786255067

/-! ## A312047.P16161824606012919991

`A316863(A304255(n))+A311807(n)`
-/

namespace A312047.P16161824606012919991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A304255 n).toNat + A311807 n

end

end A312047.P16161824606012919991

/-! ## A312047.P14838845901025669569

`A312466(n)-A239705(A020737(n))`
-/

namespace A312047.P14838845901025669569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n - A239705 (A020737 n).toNat

end

end A312047.P14838845901025669569

/-! ## A312047.P9204891121343193713

`A016825(n)-A101666(A101652(n))`
-/

namespace A312047.P9204891121343193713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A101666 (A101652 n).toNat

end

end A312047.P9204891121343193713

/-!
# A312048: Coordination sequence Gal.5.151.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312048, there is no canonical definition to state claims against.
-/

/-! ## A312048.P474373310838214479

`A301299(n)+A102681(A000225(n))`
-/

namespace A312048.P474373310838214479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A102681 (A000225 n).toNat

end

end A312048.P474373310838214479

/-! ## A312048.P4713831360358838025

`A301299(n)+A079978(A005703(n))`
-/

namespace A312048.P4713831360358838025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A079978 (A005703 n).toNat

end

end A312048.P4713831360358838025

/-! ## A312048.P4482204772646891943

`A301299(n)+A107846(A003945(n))`
-/

namespace A312048.P4482204772646891943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A107846 (A003945 n).toNat

end

end A312048.P4482204772646891943

/-! ## A312048.P3923793371273667770

`A301299(n)+A102681(A014378(n))`
-/

namespace A312048.P3923793371273667770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A102681 (A014378 n).toNat

end

end A312048.P3923793371273667770

/-! ## A312048.P7001856649946533324

`A301299(n)+A253903(A073304(n))`
-/

namespace A312048.P7001856649946533324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A253903 (A073304 n).toNat

end

end A312048.P7001856649946533324

/-!
# A312049: Coordination sequence Gal.4.130.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312049, there is no canonical definition to state claims against.
-/

/-! ## A312049.P14074975439044490475

`A301299(n)+A000196(A185293(n))`
-/

namespace A312049.P14074975439044490475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A000196 (A185293 n).toNat

end

end A312049.P14074975439044490475

/-! ## A312049.P10251060311904970867

`A312069(n)-A086825(A009999(n))`
-/

namespace A312049.P10251060311904970867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312069 n - A086825 (A009999 n).toNat

end

end A312049.P10251060311904970867

/-! ## A312049.P9508127019588534745

`A301299(n)+A055641(A003162(n))`
-/

namespace A312049.P9508127019588534745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A055641 (A003162 n).toNat

end

end A312049.P9508127019588534745

/-! ## A312049.P7454990191043291141

`A312048(A062399(n))+A031286(n)`
-/

namespace A312049.P7454990191043291141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312048 (A062399 n).toNat + A031286 n

end

end A312049.P7454990191043291141

/-! ## A312049.P764112201598080769

`A301299(n)+A169674(A002426(n))`
-/

namespace A312049.P764112201598080769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A169674 (A002426 n).toNat

end

end A312049.P764112201598080769

/-!
# A312050: Coordination sequence Gal.5.60.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312050, there is no canonical definition to state claims against.
-/

/-! ## A312050.P7688551340914661201

`A312051(n)-A185284(A193631(n))`
-/

namespace A312050.P7688551340914661201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 n - A185284 (A193631 n).toNat

end

end A312050.P7688551340914661201

/-! ## A312050.P8250789757768655061

`A312051(n)-A095750(A095725(n+1))`
-/

namespace A312050.P8250789757768655061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 n - A095750 (A095725 (n + 1)).toNat

end

end A312050.P8250789757768655061

/-! ## A312050.P17431421509295884610

`A312051(n)-A185284(A047363(2*n+5))`
-/

namespace A312050.P17431421509295884610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 n - A185284 (A047363 (2 * n + 5)).toNat

end

end A312050.P17431421509295884610

/-! ## A312050.P2475144188295717206

`A312051(A062399(n))`
-/

namespace A312050.P2475144188295717206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 (A062399 n).toNat

end

end A312050.P2475144188295717206

/-! ## A312050.P4587483362771209964

`A312051(A120126(n))`
-/

namespace A312050.P4587483362771209964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 (A120126 n).toNat

end

end A312050.P4587483362771209964

/-!
# A312051: Coordination sequence Gal.5.61.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312051, there is no canonical definition to state claims against.
-/

/-! ## A312051.P15222066014372571640

`A311496(n)+A010051(A219044(3*(n+1)))`
-/

namespace A312051.P15222066014372571640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311496 n + A010051 (A219044 (3 * (n + 1))).toNat

end

end A312051.P15222066014372571640

/-! ## A312051.P16665038447704948707

`or(∑[A185284(3*n+2)], A312050(n))`
-/

namespace A312051.P16665038447704948707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A312050 n)

end

end A312051.P16665038447704948707

/-! ## A312051.P4503515123963170333

`A312050(n)+A185284(A193631(n))`
-/

namespace A312051.P4503515123963170333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312050 n + A185284 (A193631 n).toNat

end

end A312051.P4503515123963170333

/-! ## A312051.P326575100746907534

`or(A002487(A238921(n)), A312050(n))`
-/

namespace A312051.P326575100746907534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002487 (A238921 n).toNat) (A312050 n)

end

end A312051.P326575100746907534

/-! ## A312051.P17505621734630760333

`A312050(n)+A095750(A095725(n+1))`
-/

namespace A312051.P17505621734630760333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312050 n + A095750 (A095725 (n + 1)).toNat

end

end A312051.P17505621734630760333

/-!
# A312052: Coordination sequence Gal.6.284.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312052, there is no canonical definition to state claims against.
-/

/-! ## A312052.P3241165621497275274

`A312065(n)-A102683(A018111(n))`
-/

namespace A312052.P3241165621497275274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - A102683 (A018111 n).toNat

end

end A312052.P3241165621497275274

/-! ## A312052.P17599909739854220045

`A312084(n)-A189476(A112685(n))`
-/

namespace A312052.P17599909739854220045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312084 n - A189476 (A112685 n).toNat

end

end A312052.P17599909739854220045

/-! ## A312052.P13621064443069899534

`A312065(n)-A003982(∏[A226513(n)])`
-/

namespace A312052.P13621064443069899534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - A003982 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A312052.P13621064443069899534

/-! ## A312052.P715530031177566060

`A312065(n)+A016389(A110770(n+1))`
-/

namespace A312052.P715530031177566060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A016389 (A110770 (n + 1)).toNat

end

end A312052.P715530031177566060

/-! ## A312052.P12382391587574642953

`A301676(n)-A365721(A077394(n+1))`
-/

namespace A312052.P12382391587574642953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A365721 (A077394 (n + 1)).toNat

end

end A312052.P12382391587574642953

/-!
# A312053: Coordination sequence Gal.6.226.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312053, there is no canonical definition to state claims against.
-/

/-! ## A312053.P11384189019815778020

`A312054(n^A250662(n))`
-/

namespace A312053.P11384189019815778020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312054 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A250662 n : ℤ))).toNat

end

end A312053.P11384189019815778020

/-! ## A312053.P11528169246036833919

`A312054(val(A083388(n+3), 2)+n)`
-/

namespace A312053.P11528169246036833919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312054 (SequenceMachineLib.valuation (A083388 (n + 3)).toNat 2 + n)

end

end A312053.P11528169246036833919

/-! ## A312053.P5539699891642762989

`A312054(n)^A075509(A357638(n))`
-/

namespace A312053.P5539699891642762989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312054 n : ℚ) ^ (A075509 (A357638 n).toNat : ℤ)

end

end A312053.P5539699891642762989

/-! ## A312053.P7310762309947835670

`A312054(n)+A010051(A225076(n+1))`
-/

namespace A312053.P7310762309947835670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312054 n + A010051 (A225076 (n + 1)).toNat

end

end A312053.P7310762309947835670

/-! ## A312053.P17656544015794862946

`A312054(A062399(n))`
-/

namespace A312053.P17656544015794862946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312054 (A062399 n).toNat

end

end A312053.P17656544015794862946

/-!
# A312054: Coordination sequence Gal.6.227.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312054, there is no canonical definition to state claims against.
-/

/-! ## A312054.P17123751808945270692

`A311500(n)+A073424(A014113(n))`
-/

namespace A312054.P17123751808945270692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311500 n + A073424 (A014113 n).toNat

end

end A312054.P17123751808945270692

/-! ## A312054.P16280154248914593747

`A311500(n)+A010051(A055772(n+1))`
-/

namespace A312054.P16280154248914593747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311500 n + A010051 (A055772 (n + 1)).toNat

end

end A312054.P16280154248914593747

/-! ## A312054.P4829426780549332378

`A311500(n)+A209229(A176497(n+1))`
-/

namespace A312054.P4829426780549332378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311500 n + A209229 (A176497 (n + 1)).toNat

end

end A312054.P4829426780549332378

/-! ## A312054.P16956268044919692470

`A122079(A311499(n))+A073424(A014113(n))`
-/

namespace A312054.P16956268044919692470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A311499 n).toNat + A073424 (A014113 n).toNat

end

end A312054.P16956268044919692470

/-! ## A312054.P11040533680174209429

`A122079(A311499(n))+A010051(A055772(n+1))`
-/

namespace A312054.P11040533680174209429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A311499 n).toNat + A010051 (A055772 (n + 1)).toNat

end

end A312054.P11040533680174209429

/-!
# A312055: Coordination sequence Gal.6.125.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312055, there is no canonical definition to state claims against.
-/

/-! ## A312055.P13893464761859694958

`A312056(n)-A185284(A006431(n+1))`
-/

namespace A312055.P13893464761859694958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312056 n - A185284 (A006431 (n + 1)).toNat

end

end A312055.P13893464761859694958

/-! ## A312055.P7530861054832636849

`A312056(n)-A185284(A047363(2*n+1))`
-/

namespace A312055.P7530861054832636849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312056 n - A185284 (A047363 (2 * n + 1)).toNat

end

end A312055.P7530861054832636849

/-! ## A312055.P1495492447975296417

`A312056(A163352(∑[n]))`
-/

namespace A312055.P1495492447975296417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312056 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A312055.P1495492447975296417

/-! ## A312055.P13545492944331000132

`∏{e}[A000244(n), A312056(#)]`
-/

namespace A312055.P13545492944331000132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A312056 (Nat.factorization (f1 n).natAbs p)

end

end A312055.P13545492944331000132

/-! ## A312055.P1427053542801307925

`A312056(A062399(n))`
-/

namespace A312055.P1427053542801307925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312056 (A062399 n).toNat

end

end A312055.P1427053542801307925

/-!
# A312056: Coordination sequence Gal.6.126.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312056, there is no canonical definition to state claims against.
-/

/-! ## A312056.P4577387297759197156

`A311286(n)+A078442(A047749(n))`
-/

namespace A312056.P4577387297759197156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311286 n + A078442 (A047749 n).toNat

end

end A312056.P4577387297759197156

/-!
# A312057: Coordination sequence Gal.6.121.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312057, there is no canonical definition to state claims against.
-/

/-! ## A312057.P9999893757408929006

`A312058(n)-A185284(A193605(n))`
-/

namespace A312057.P9999893757408929006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 n - A185284 (A193605 n).toNat

end

end A312057.P9999893757408929006

/-! ## A312057.P12671960017921068767

`A312058(n)-A185284(A047363(2*n+1))`
-/

namespace A312057.P12671960017921068767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 n - A185284 (A047363 (2 * n + 1)).toNat

end

end A312057.P12671960017921068767

/-! ## A312057.P16725660725627538814

`A312060(n)-A330025(A018843(2*n+1))`
-/

namespace A312057.P16725660725627538814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312060 n - A330025 (A018843 (2 * n + 1)).toNat

end

end A312057.P16725660725627538814

/-! ## A312057.P9493949796572107611

`or(A001221(A179000(4*n+3)), A008574(n))`
-/

namespace A312057.P9493949796572107611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A179000 (4 * n + 3)).toNat) (A008574 n)

end

end A312057.P9493949796572107611

/-! ## A312057.P15721777595245533343

`∏{e}[3^n, A312058(#)]`
-/

namespace A312057.P15721777595245533343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A312058 (Nat.factorization (f1 n) p)

end

end A312057.P15721777595245533343

/-!
# A312058: Coordination sequence Gal.6.122.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312058, there is no canonical definition to state claims against.
-/

/-! ## A312058.P10322344936204058949

`A312057(n)+A185284(A006218(n))`
-/

namespace A312058.P10322344936204058949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312057 n + A185284 (A006218 n).toNat

end

end A312058.P10322344936204058949

/-! ## A312058.P8478684486531501101

`A312057(n)+A185284(A006431(n+1))`
-/

namespace A312058.P8478684486531501101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312057 n + A185284 (A006431 (n + 1)).toNat

end

end A312058.P8478684486531501101

/-!
# A312059: Coordination sequence Gal.6.222.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312059, there is no canonical definition to state claims against.
-/

/-! ## A312059.P14971781526873516719

`(A312463(n)+A311584(n))/2`
-/

namespace A312059.P14971781526873516719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312463 n + A311584 n : ℚ) / 2

end

end A312059.P14971781526873516719

/-! ## A312059.P6133452556062428503

`A004525(A312463(n)+A311584(n))`
-/

namespace A312059.P6133452556062428503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312463 n + A311584 n).toNat

end

end A312059.P6133452556062428503

/-! ## A312059.P10247645346434392597

`A004526(A312463(n)+A311584(n))`
-/

namespace A312059.P10247645346434392597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312463 n + A311584 n).toNat

end

end A312059.P10247645346434392597

/-! ## A312059.P4518262928414281565

`A026741(A312463(n)+A311584(n))`
-/

namespace A312059.P4518262928414281565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312463 n + A311584 n).toNat

end

end A312059.P4518262928414281565

/-! ## A312059.P3082130966904342480

`A097140(A312463(n)+A311584(n))`
-/

namespace A312059.P3082130966904342480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A312463 n + A311584 n).toNat

end

end A312059.P3082130966904342480

/-! ## A312059.P2042169367267947378

`A004524(A311584(n)+A312463(n)+1)`
-/

namespace A312059.P2042169367267947378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A311584 n + (A312463 n + 1)).toNat

end

end A312059.P2042169367267947378

/-! ## A312059.P6078051434559691063

`A130747(A311584(n)+A312463(n)-1)`
-/

namespace A312059.P6078051434559691063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A311584 n + (A312463 n - 1)).toNat

end

end A312059.P6078051434559691063

/-! ## A312059.P10572716650485379906

`A130747(A311584(n)-(1-A312463(n)))`
-/

namespace A312059.P10572716650485379906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A311584 n - (1 - A312463 n)).toNat

end

end A312059.P10572716650485379906

/-!
# A312060: Coordination sequence Gal.6.223.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312060, there is no canonical definition to state claims against.
-/

/-! ## A312060.P7949359003390039890

`or(A018843(3*round(2*n/5)+n), A312058(n))`
-/

namespace A312060.P7949359003390039890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018843 (3 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + (n : ℤ)).toNat) (A312058 n)

end

end A312060.P7949359003390039890

/-! ## A312060.P17034817641859861343

`A312058(n)+A024362(A063834(n))`
-/

namespace A312060.P17034817641859861343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 n + A024362 (A063834 n).toNat

end

end A312060.P17034817641859861343

/-! ## A312060.P15967499398072883711

`A311816(n)+A176405(A027375(n))`
-/

namespace A312060.P15967499398072883711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A176405 (A027375 n).toNat

end

end A312060.P15967499398072883711

/-! ## A312060.P7480609933695066106

`or(A007814(A229887(n)), A312058(n))`
-/

namespace A312060.P7480609933695066106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A229887 n).toNat) (A312058 n)

end

end A312060.P7480609933695066106

/-! ## A312060.P4561432134683931704

`A010060(A039932(n+1))+A004938(n)`
-/

namespace A312060.P4561432134683931704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A039932 (n + 1)).toNat + A004938 n

end

end A312060.P4561432134683931704

/-!
# A312061: Coordination sequence Gal.5.56.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312061, there is no canonical definition to state claims against.
-/

/-! ## A312061.P8843217488497655178

`A312057(n)+A185284(3*n+2)`
-/

namespace A312061.P8843217488497655178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312057 n + A185284 (3 * n + 2)

end

end A312061.P8843217488497655178

/-! ## A312061.P15519618227615741670

`A312058(n)+A003982(A005558(n))`
-/

namespace A312061.P15519618227615741670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 n + A003982 (A005558 n).toNat

end

end A312061.P15519618227615741670

/-! ## A312061.P5509607713858195140

`A312058(n)+A185284(A016789(n))`
-/

namespace A312061.P5509607713858195140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 n + A185284 (A016789 n).toNat

end

end A312061.P5509607713858195140

/-! ## A312061.P10708445115963528901

`A312058(n)+A282673(A000013(n))`
-/

namespace A312061.P10708445115963528901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 n + A282673 (A000013 n).toNat

end

end A312061.P10708445115963528901

/-! ## A312061.P7817921399146128664

`A322389(A002379(n))+A311426(n)`
-/

namespace A312061.P7817921399146128664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A002379 n).toNat + A311426 n

end

end A312061.P7817921399146128664

/-!
# A312062: Coordination sequence Gal.5.57.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312062, there is no canonical definition to state claims against.
-/

/-! ## A312062.P9930332211398850256

`(A312466(n)+A311588(n))/2`
-/

namespace A312062.P9930332211398850256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312466 n + A311588 n : ℚ) / 2

end

end A312062.P9930332211398850256

/-! ## A312062.P13551995026797714792

`A038572(A312466(n)+A311588(n))`
-/

namespace A312062.P13551995026797714792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A312466 n + A311588 n).toNat

end

end A312062.P13551995026797714792

/-! ## A312062.P13014653356483801383

`A004525(A312466(n)+A311588(n))`
-/

namespace A312062.P13014653356483801383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312466 n + A311588 n).toNat

end

end A312062.P13014653356483801383

/-! ## A312062.P16323167889956563299

`A004526(A312466(n)+A311588(n))`
-/

namespace A312062.P16323167889956563299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312466 n + A311588 n).toNat

end

end A312062.P16323167889956563299

/-! ## A312062.P4122771509505723987

`A006370(A312466(n)+A311588(n))`
-/

namespace A312062.P4122771509505723987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312466 n + A311588 n).toNat

end

end A312062.P4122771509505723987

/-! ## A312062.P3828111897230040690

`A025480(A312466(n)+A311588(n))`
-/

namespace A312062.P3828111897230040690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312466 n + A311588 n).toNat

end

end A312062.P3828111897230040690

/-! ## A312062.P28983959097528529

`A026741(A312466(n)+A311588(n))`
-/

namespace A312062.P28983959097528529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312466 n + A311588 n).toNat

end

end A312062.P28983959097528529

/-! ## A312062.P13567892485594793730

`A065033(A312466(n)+A311588(n))`
-/

namespace A312062.P13567892485594793730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312466 n + A311588 n).toNat

end

end A312062.P13567892485594793730

/-! ## A312062.P4219473363470208756

`abs(A001057(A312466(n)+A311588(n)))`
-/

namespace A312062.P4219473363470208756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A312466 n + A311588 n).toNat|

end

end A312062.P4219473363470208756

/-! ## A312062.P17587345934856028293

`A001057(A311588(n)+A312466(n)-1)`
-/

namespace A312062.P17587345934856028293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311588 n + (A312466 n - 1)).toNat

end

end A312062.P17587345934856028293

/-! ## A312062.P1130329877449890084

`A001057(A311588(n)-(1-A312466(n)))`
-/

namespace A312062.P1130329877449890084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311588 n - (1 - A312466 n)).toNat

end

end A312062.P1130329877449890084

/-! ## A312062.P8630076543871049276

`A065033(A311588(n)-(1-A312466(n)))`
-/

namespace A312062.P8630076543871049276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311588 n - (1 - A312466 n)).toNat

end

end A312062.P8630076543871049276

/-! ## A312062.P4928278984890501507

`A323467(A312466(n)+A311588(n))`
-/

namespace A312062.P4928278984890501507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (A312466 n + A311588 n).toNat

end

end A312062.P4928278984890501507

/-!
# A312063: Coordination sequence Gal.5.101.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312063, there is no canonical definition to state claims against.
-/

/-! ## A312063.P5590536172206552183

`(A312461(n)+A311589(n))/2`
-/

namespace A312063.P5590536172206552183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312461 n + A311589 n : ℚ) / 2

end

end A312063.P5590536172206552183

/-! ## A312063.P8474386897998906341

`A311589(n)+A311920(n)-A311510(n)`
-/

namespace A312063.P8474386897998906341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311589 n + (A311920 n - A311510 n)

end

end A312063.P8474386897998906341

/-! ## A312063.P16076249911516865797

`A004525(A312461(n)+A311589(n))`
-/

namespace A312063.P16076249911516865797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312461 n + A311589 n).toNat

end

end A312063.P16076249911516865797

/-! ## A312063.P7676045072458861742

`A289441(A312461(n)+A311589(n))`
-/

namespace A312063.P7676045072458861742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A312461 n + A311589 n).toNat

end

end A312063.P7676045072458861742

/-! ## A312063.P2664701417407280319

`A312142(n)-A069283(A000957(n))`
-/

namespace A312063.P2664701417407280319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312142 n - A069283 (A000957 n).toNat

end

end A312063.P2664701417407280319

/-!
# A312064: Coordination sequence Gal.5.102.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312064, there is no canonical definition to state claims against.
-/

/-! ## A312064.P12854713785721510977

`A311914(n)+A135461(A001519(n))`
-/

namespace A312064.P12854713785721510977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311914 n + A135461 (A001519 n).toNat

end

end A312064.P12854713785721510977

/-! ## A312064.P16623545740106147839

`A325135(A330454(n))+A311846(n)`
-/

namespace A312064.P16623545740106147839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A330454 n).toNat + A311846 n

end

end A312064.P16623545740106147839

/-!
# A312065: Coordination sequence Gal.3.10.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312065, the canonical program `A312065.P12266081500591104946` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312065 has offset 0).

The definition of A312065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312065.P15469291924015352900

`comp[n*and(2, n)]+A004277(n)-1+n`
-/

namespace A312065.P15469291924015352900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A004277 n - 1 + (n : ℤ))

end

end A312065.P15469291924015352900

namespace A312065

/-- `comp[n*and(2, n)]+A004277(n)-1+n` -/
def P15469291924015352900.Spec : Prop :=
  ∀ n, P15469291924015352900.a n = A312065 n

end A312065

/-! ## A312065.P16430192749247478939

`A314677(n)-A128834(n)`
-/

namespace A312065.P16430192749247478939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n - A128834 n

end

end A312065.P16430192749247478939

namespace A312065

/-- `A314677(n)-A128834(n)` -/
def P16430192749247478939.Spec : Prop :=
  ∀ n, P16430192749247478939.a n = A312065 n

end A312065

/-! ## A312065.P12266081500591104946

`A047513(n+1)+A008486(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A312065

/-- `A047513(n+1)+A008486(n)` -/
def P12266081500591104946.Spec : Prop :=
  ∀ n, P12266081500591104946.a n = A312065 n

theorem P12266081500591104946.correct : P12266081500591104946.Spec := by
  intro n
  simp only [A312065]

end A312065

/-! ## A312065.P3538944593130798016

`A301694(n)-(A134667(n)+n)`
-/

namespace A312065.P3538944593130798016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - (A134667 n + (n : ℤ))

end

end A312065.P3538944593130798016

namespace A312065

/-- `A301694(n)-(A134667(n)+n)` -/
def P3538944593130798016.Spec : Prop :=
  ∀ n, P3538944593130798016.a n = A312065 n

end A312065

/-! ## A312065.P18269622751826421222

`A134667(n)+A310525(n)-n`
-/

namespace A312065.P18269622751826421222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A310525 n - (n : ℤ))

end

end A312065.P18269622751826421222

namespace A312065

/-- `A134667(n)+A310525(n)-n` -/
def P18269622751826421222.Spec : Prop :=
  ∀ n, P18269622751826421222.a n = A312065 n

end A312065

/-! ## A312065.P465412873535884808

`A008574(n)+∑[A131532(n+1)]`
-/

namespace A312065.P465412873535884808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312065.P465412873535884808

namespace A312065

/-- `A008574(n)+∑[A131532(n+1)]` -/
def P465412873535884808.Spec : Prop :=
  ∀ n, P465412873535884808.a n = A312065 n

end A312065

/-! ## A312065.P1860257287112985077

`A047513(n+1)+record[A128214(n)]`
-/

namespace A312065.P1860257287112985077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312065.P1860257287112985077

namespace A312065

/-- `A047513(n+1)+record[A128214(n)]` -/
def P1860257287112985077.Spec : Prop :=
  ∀ n, P1860257287112985077.a n = A312065 n

end A312065

/-! ## A312065.P8185283362994860136

`∑[A131735(n)]+A301298(n)-n`
-/

namespace A312065.P8185283362994860136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A301298 n - (n : ℤ))

end

end A312065.P8185283362994860136

namespace A312065

/-- `∑[A131735(n)]+A301298(n)-n` -/
def P8185283362994860136.Spec : Prop :=
  ∀ n, P8185283362994860136.a n = A312065 n

end A312065

/-! ## A312065.P10095977307699848991

`A047513(n+1)+A008574(n)-n`
-/

namespace A312065.P10095977307699848991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A008574 n - (n : ℤ))

end

end A312065.P10095977307699848991

namespace A312065

/-- `A047513(n+1)+A008574(n)-n` -/
def P10095977307699848991.Spec : Prop :=
  ∀ n, P10095977307699848991.a n = A312065 n

end A312065

/-! ## A312065.P15848161206153363169

`A047588(n+1)+A311806(n)-n`
-/

namespace A312065.P15848161206153363169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1) + (A311806 n - (n : ℤ))

end

end A312065.P15848161206153363169

namespace A312065

/-- `A047588(n+1)+A311806(n)-n` -/
def P15848161206153363169.Spec : Prop :=
  ∀ n, P15848161206153363169.a n = A312065 n

end A312065

/-! ## A312065.P4818627874635975061

`A008574(n)+∑[char[A047230(n+1)]]`
-/

namespace A312065.P4818627874635975061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047230 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A312065.P4818627874635975061

namespace A312065

/-- `A008574(n)+∑[char[A047230(n+1)]]` -/
def P4818627874635975061.Spec : Prop :=
  ∀ n, P4818627874635975061.a n = A312065 n

end A312065

/-! ## A312065.P13452584012196255504

`A008458(n)+A008574(n)-A315693(n)`
-/

namespace A312065.P13452584012196255504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315693 n)

end

end A312065.P13452584012196255504

namespace A312065

/-- `A008458(n)+A008574(n)-A315693(n)` -/
def P13452584012196255504.Spec : Prop :=
  ∀ n, P13452584012196255504.a n = A312065 n

end A312065

/-! ## A312065.P12804828833738739565

`A004396(n)+A313110(n)-n`
-/

namespace A312065.P12804828833738739565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313110 n - (n : ℤ))

end

end A312065.P12804828833738739565

namespace A312065

/-- `A004396(n)+A313110(n)-n` -/
def P12804828833738739565.Spec : Prop :=
  ∀ n, P12804828833738739565.a n = A312065 n

end A312065

/-! ## A312065.P3855106128522682431

`A008576(n)+A313110(n)-A008486(n)`
-/

namespace A312065.P3855106128522682431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313110 n - A008486 n)

end

end A312065.P3855106128522682431

namespace A312065

/-- `A008576(n)+A313110(n)-A008486(n)` -/
def P3855106128522682431.Spec : Prop :=
  ∀ n, P3855106128522682431.a n = A312065 n

end A312065

/-! ## A312065.P3359344548874628556

`(A312655(n)+A008574(n))/2`
-/

namespace A312065.P3359344548874628556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312655 n + A008574 n : ℚ) / 2

end

end A312065.P3359344548874628556

namespace A312065

/-- `(A312655(n)+A008574(n))/2` -/
def P3359344548874628556.Spec : Prop :=
  ∀ n, P3359344548874628556.a n = (A312065 n : ℚ)

end A312065

/-! ## A312065.P3888781173864040120

`A008458(n)+A008486(n)-A313510(n)`
-/

namespace A312065.P3888781173864040120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313510 n)

end

end A312065.P3888781173864040120

namespace A312065

/-- `A008458(n)+A008486(n)-A313510(n)` -/
def P3888781173864040120.Spec : Prop :=
  ∀ n, P3888781173864040120.a n = A312065 n

end A312065

/-! ## A312065.P17742609928645809459

`A314953(n)-A004525(n)`
-/

namespace A312065.P17742609928645809459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314953 n - A004525 n

end

end A312065.P17742609928645809459

namespace A312065

/-- `A314953(n)-A004525(n)` -/
def P17742609928645809459.Spec : Prop :=
  ∀ n, P17742609928645809459.a n = A312065 n

theorem P17742609928645809459.correct : P17742609928645809459.Spec := by
  intro n
  simp only [A312065, Nat.add_sub_cancel, A312065.P17742609928645809459.a, A312065.P12266081500591104946.a, A004525, A004525.P4158271949796742323.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, A314953, A314953.P5789728208216381140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312065

/-! ## A312065.P4678518612973949167

`A004525(n)+A313237(n)-n`
-/

namespace A312065.P4678518612973949167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313237 n - (n : ℤ))

end

end A312065.P4678518612973949167

namespace A312065

/-- `A004525(n)+A313237(n)-n` -/
def P4678518612973949167.Spec : Prop :=
  ∀ n, P4678518612973949167.a n = A312065 n

end A312065

/-! ## A312065.P1679711062949719269

`A315075(n)-A004396(n)`
-/

namespace A312065.P1679711062949719269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n - A004396 n

end

end A312065.P1679711062949719269

namespace A312065

/-- `A315075(n)-A004396(n)` -/
def P1679711062949719269.Spec : Prop :=
  ∀ n, P1679711062949719269.a n = A312065 n

theorem P1679711062949719269.correct : P1679711062949719269.Spec := by
  intro n
  simp only [A312065, Nat.add_sub_cancel, A312065.P1679711062949719269.a, A312065.P12266081500591104946.a, A004396, A004396.P17032557045289780609.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, A315075, A315075.P1562562431964152742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312065

/-! ## A312065.P14976140994105865878

`A301697(n)-n`
-/

namespace A312065.P14976140994105865878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - (n : ℤ)

end

end A312065.P14976140994105865878

namespace A312065

/-- `A301697(n)-n` -/
def P14976140994105865878.Spec : Prop :=
  ∀ n, P14976140994105865878.a n = A312065 n

end A312065

/-!
# A312066: Coordination sequence Gal.4.44.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312066, there is no canonical definition to state claims against.
-/

/-! ## A312066.P8246550548376441122

`A311521(n)+A312457(n)-A311928(n)`
-/

namespace A312066.P8246550548376441122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311521 n + (A312457 n - A311928 n)

end

end A312066.P8246550548376441122

/-! ## A312066.P5133971789466088119

`A311583(n)+A160380(A348202(n))`
-/

namespace A312066.P5133971789466088119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311583 n + A160380 (A348202 n).toNat

end

end A312066.P5133971789466088119

/-! ## A312066.P16589431223760472664

`or(A160380(A348202(n)), A312056(n))`
-/

namespace A312066.P16589431223760472664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160380 (A348202 n).toNat) (A312056 n)

end

end A312066.P16589431223760472664

/-! ## A312066.P6523320390085514450

`A028310(A022144(n)-floor(A322901(6*n+3)/2))`
-/

namespace A312066.P6523320390085514450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022144 n - ⌊(A322901 (6 * n + 3) : ℚ) / 2⌋).toNat

end

end A312066.P6523320390085514450

/-! ## A312066.P17289599620396161627

`A143824(A004135(2*n+1))+2*n`
-/

namespace A312066.P17289599620396161627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A004135 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A312066.P17289599620396161627

/-!
# A312067: Coordination sequence Gal.4.45.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312067, there is no canonical definition to state claims against.
-/

/-! ## A312067.P10797609461215945469

`A312065(n)+A244895(A174646(n+1))`
-/

namespace A312067.P10797609461215945469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A244895 (A174646 (n + 1)).toNat

end

end A312067.P10797609461215945469

/-! ## A312067.P14613470322082551240

`A312076(n)-A011744(A105801(n+1))`
-/

namespace A312067.P14613470322082551240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 n - A011744 (A105801 (n + 1)).toNat

end

end A312067.P14613470322082551240

/-! ## A312067.P9257233621615277850

`A312069(n)-A182631(A126085(n+1))`
-/

namespace A312067.P9257233621615277850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312069 n - A182631 (A126085 (n + 1)).toNat

end

end A312067.P9257233621615277850

/-! ## A312067.P10401112053821265939

`A330025(A174646(n+1))+A312065(n)-A011744(n)`
-/

namespace A312067.P10401112053821265939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A174646 (n + 1)).toNat + A312065 n - A011744 n

end

end A312067.P10401112053821265939

/-! ## A312067.P1822520136548898574

`(A330025(A174646(n+1))+A312065(n))%A022144(n+1)`
-/

namespace A312067.P1822520136548898574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330025 (A174646 (n + 1)).toNat + A312065 n) (A022144 (n + 1))

end

end A312067.P1822520136548898574

/-!
# A312068: Coordination sequence Gal.6.119.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312068, the canonical program `A312068.P6869764559260015807` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312068 has offset 0).

The definition of A312068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312068.P3543556139496323025

`(A312656(n)+A008574(n))/2`
-/

namespace A312068.P3543556139496323025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312656 n + A008574 n : ℚ) / 2

end

end A312068.P3543556139496323025

namespace A312068

/-- `(A312656(n)+A008574(n))/2` -/
def P3543556139496323025.Spec : Prop :=
  ∀ n, P3543556139496323025.a n = (A312068 n : ℚ)

theorem P3543556139496323025.correct : P3543556139496323025.Spec := by
  intro n
  simp only [A312068, Nat.add_sub_cancel, A312068.P3543556139496323025.a, A312068.P6869764559260015807.a, A008574, A008574.P1300280032690682112.a, A311262, A311262.P10638457918818941404.a, A312656, A312656.P6952802278947369671.a, A004525, A004525.P4158271949796742323.a, A311331, A311331.P4887198018422537998.a, A008592, A008592.P4981059802862696142.a, A315759, A315759.P12503429889593144043.a, A004396, A004396.P17032557045289780609.a, A315754, A315754.P17150981886379048443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312068

/-! ## A312068.P15662440576278474234

`A008574(n)+A001281(A312656(n)-A008574(n))`
-/

namespace A312068.P15662440576278474234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A312656 n - A008574 n).toNat

end

end A312068.P15662440576278474234

namespace A312068

/-- `A008574(n)+A001281(A312656(n)-A008574(n))` -/
def P15662440576278474234.Spec : Prop :=
  ∀ n, P15662440576278474234.a n = A312068 n

end A312068

/-! ## A312068.P13894620784524693640

`abs(A008592(n)-A315692(n))`
-/

namespace A312068.P13894620784524693640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315692 n|

end

end A312068.P13894620784524693640

namespace A312068

/-- `abs(A008592(n)-A315692(n))` -/
def P13894620784524693640.Spec : Prop :=
  ∀ n, P13894620784524693640.a n = A312068 n

end A312068

/-! ## A312068.P12401839170735802721

`A008458(n)+A008574(n)-A315692(n)`
-/

namespace A312068.P12401839170735802721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315692 n)

end

end A312068.P12401839170735802721

namespace A312068

/-- `A008458(n)+A008574(n)-A315692(n)` -/
def P12401839170735802721.Spec : Prop :=
  ∀ n, P12401839170735802721.a n = A312068 n

end A312068

/-! ## A312068.P10449363389458050420

`A004526(A312656(n))+A004277(n)`
-/

namespace A312068.P10449363389458050420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312656 n).toNat + A004277 n

end

end A312068.P10449363389458050420

namespace A312068

/-- `A004526(A312656(n))+A004277(n)` -/
def P10449363389458050420.Spec : Prop :=
  ∀ n, P10449363389458050420.a n = A312068 n

end A312068

/-! ## A312068.P15600924136075195591

`A005843(n)+A004525(A312656(n))`
-/

namespace A312068.P15600924136075195591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A312656 n).toNat

end

end A312068.P15600924136075195591

namespace A312068

/-- `A005843(n)+A004525(A312656(n))` -/
def P15600924136075195591.Spec : Prop :=
  ∀ n, P15600924136075195591.a n = A312068 n

end A312068

/-! ## A312068.P4316194817874378791

`round(A008576(A315056(n))/3)`
-/

namespace A312068.P4316194817874378791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A315056 n).toNat : ℚ) / 3)

end

end A312068.P4316194817874378791

namespace A312068

/-- `round(A008576(A315056(n))/3)` -/
def P4316194817874378791.Spec : Prop :=
  ∀ n, P4316194817874378791.a n = A312068 n

end A312068

/-! ## A312068.P9749590190421661239

`A005843(A008458(n)-n)-A315692(n)`
-/

namespace A312068.P9749590190421661239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315692 n

end

end A312068.P9749590190421661239

namespace A312068

/-- `A005843(A008458(n)-n)-A315692(n)` -/
def P9749590190421661239.Spec : Prop :=
  ∀ n, P9749590190421661239.a n = A312068 n

end A312068

/-! ## A312068.P18346924075225329674

`A008458(n)+n-A004526(A315638(n))`
-/

namespace A312068.P18346924075225329674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315638 n).toNat)

end

end A312068.P18346924075225329674

namespace A312068

/-- `A008458(n)+n-A004526(A315638(n))` -/
def P18346924075225329674.Spec : Prop :=
  ∀ n, P18346924075225329674.a n = A312068 n

end A312068

/-! ## A312068.P13485665845252412133

`A004396(A312606(n)+2*n)`
-/

namespace A312068.P13485665845252412133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312606 n + (2 * n : ℤ)).toNat

end

end A312068.P13485665845252412133

namespace A312068

/-- `A004396(A312606(n)+2*n)` -/
def P13485665845252412133.Spec : Prop :=
  ∀ n, P13485665845252412133.a n = A312068 n

end A312068

/-! ## A312068.P5838230818385496435

`A004396(A312606(n)+n+n)`
-/

namespace A312068.P5838230818385496435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312606 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312068.P5838230818385496435

namespace A312068

/-- `A004396(A312606(n)+n+n)` -/
def P5838230818385496435.Spec : Prop :=
  ∀ n, P5838230818385496435.a n = A312068 n

end A312068

/-! ## A312068.P6869764559260015807

`A311262(2*n)-4*n`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A312068

/-- `A311262(2*n)-4*n` -/
def P6869764559260015807.Spec : Prop :=
  ∀ n, P6869764559260015807.a n = A312068 n

theorem P6869764559260015807.correct : P6869764559260015807.Spec := by
  intro n
  simp only [A312068]

end A312068

/-! ## A312068.P18356016284059121966

`lcm(2, A311356(2*n))/2`
-/

namespace A312068.P18356016284059121966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A311356 (2 * n)) : ℚ) / 2

end

end A312068.P18356016284059121966

namespace A312068

/-- `lcm(2, A311356(2*n))/2` -/
def P18356016284059121966.Spec : Prop :=
  ∀ n, P18356016284059121966.a n = (A312068 n : ℚ)

end A312068

/-! ## A312068.P11425022330139757868

`A311356(2*n)/A020639(A311356(n))`
-/

namespace A312068.P11425022330139757868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311356 (2 * n) : ℚ) / (A020639 (A311356 n).toNat : ℚ)

end

end A312068.P11425022330139757868

namespace A312068

/-- `A311356(2*n)/A020639(A311356(n))` -/
def P11425022330139757868.Spec : Prop :=
  ∀ n, P11425022330139757868.a n = (A312068 n : ℚ)

end A312068

/-! ## A312068.P2478047480381746035

`A004525(A311331(2*n))`
-/

namespace A312068.P2478047480381746035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311331 (2 * n)).toNat

end

end A312068.P2478047480381746035

namespace A312068

/-- `A004525(A311331(2*n))` -/
def P2478047480381746035.Spec : Prop :=
  ∀ n, P2478047480381746035.a n = A312068 n

theorem P2478047480381746035.correct : P2478047480381746035.Spec := by
  intro n
  simp only [A312068, Nat.add_sub_cancel, A312068.P2478047480381746035.a, A312068.P6869764559260015807.a, A004525, A004525.P4158271949796742323.a, A311262, A311262.P10638457918818941404.a, A311331, A311331.P4887198018422537998.a, A008592, A008592.P4981059802862696142.a, A315759, A315759.P12503429889593144043.a, A004396, A004396.P17032557045289780609.a, A315754, A315754.P17150981886379048443.a, A315629, A315629.P1423627926306205843.a, A315678, A315678.P12797774727885421403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312068

/-! ## A312068.P328825691230797592

`A004525(A311356(2*n))`
-/

namespace A312068.P328825691230797592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311356 (2 * n)).toNat

end

end A312068.P328825691230797592

namespace A312068

/-- `A004525(A311356(2*n))` -/
def P328825691230797592.Spec : Prop :=
  ∀ n, P328825691230797592.a n = A312068 n

end A312068

/-! ## A312068.P16506721977509763598

`A001281(A312656(n)+A008574(n))`
-/

namespace A312068.P16506721977509763598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312656 n + A008574 n).toNat

end

end A312068.P16506721977509763598

namespace A312068

/-- `A001281(A312656(n)+A008574(n))` -/
def P16506721977509763598.Spec : Prop :=
  ∀ n, P16506721977509763598.a n = A312068 n

end A312068

/-! ## A312068.P7446015562361556153

`2*A008574(2*n)-A315762(2*n)`
-/

namespace A312068.P7446015562361556153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315762 (2 * n)

end

end A312068.P7446015562361556153

namespace A312068

/-- `2*A008574(2*n)-A315762(2*n)` -/
def P7446015562361556153.Spec : Prop :=
  ∀ n, P7446015562361556153.a n = A312068 n

end A312068

/-! ## A312068.P11245029154101729970

`A068962(A313814(2*n))`
-/

namespace A312068.P11245029154101729970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313814 (2 * n)).toNat

end

end A312068.P11245029154101729970

namespace A312068

/-- `A068962(A313814(2*n))` -/
def P11245029154101729970.Spec : Prop :=
  ∀ n, P11245029154101729970.a n = A312068 n

end A312068

/-! ## A312068.P7371082995947921443

`round(A072154(A313918(n))/3)`
-/

namespace A312068.P7371082995947921443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072154 (A313918 n).toNat : ℚ) / 3)

end

end A312068.P7371082995947921443

namespace A312068

/-- `round(A072154(A313918(n))/3)` -/
def P7371082995947921443.Spec : Prop :=
  ∀ n, P7371082995947921443.a n = A312068 n

end A312068

/-!
# A312069: Coordination sequence Gal.4.131.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312069, there is no canonical definition to state claims against.
-/

/-! ## A312069.P355665568307331805

`A312068(n)+∑[A305079(A309864(n))]`
-/

namespace A312069.P355665568307331805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A309864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312069.P355665568307331805

/-! ## A312069.P7802461751475607283

`A312067(n)+A182631(A126085(n+1))`
-/

namespace A312069.P7802461751475607283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312067 n + A182631 (A126085 (n + 1)).toNat

end

end A312069.P7802461751475607283

/-! ## A312069.P10726663408536340921

`∑[A001222(Δ[A129314(3*n+1)])]`
-/

namespace A312069.P10726663408536340921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129314 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312069.P10726663408536340921

/-! ## A312069.P9455543676357882730

`∑[A050252(A254318((n+1)*Δ[n^3]))]`
-/

namespace A312069.P9455543676357882730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A254318 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312069.P9455543676357882730

/-! ## A312069.P11429405296742728966

`A312068(n)+A025469(A014188(n))`
-/

namespace A312069.P11429405296742728966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 n + A025469 (A014188 n).toNat

end

end A312069.P11429405296742728966

/-!
# A312070: Coordination sequence Gal.5.151.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312070, there is no canonical definition to state claims against.
-/

/-! ## A312070.P8482427283102531677

`A008574(n)+∑[A170958(3*n+2)]`
-/

namespace A312070.P8482427283102531677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312070.P8482427283102531677

/-! ## A312070.P4039735660679518694

`A212165(3*n+2)-A080764(A056450(n))`
-/

namespace A312070.P4039735660679518694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (3 * n + 2) - A080764 (A056450 n).toNat

end

end A312070.P4039735660679518694

/-! ## A312070.P5046847767426382196

`A250120(n)-A001221(A026007(2*n))`
-/

namespace A312070.P5046847767426382196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A026007 (2 * n)).toNat

end

end A312070.P5046847767426382196

/-! ## A312070.P15042973884546546677

`A312477(n)+A014359(A001519(n))`
-/

namespace A312070.P15042973884546546677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312477 n + A014359 (A001519 n).toNat

end

end A312070.P15042973884546546677

/-! ## A312070.P7482290145867984950

`A313236(n)-A001221(A165531(n))`
-/

namespace A312070.P7482290145867984950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313236 n - A001221 (A165531 n).toNat

end

end A312070.P7482290145867984950

/-!
# A312071: Coordination sequence Gal.6.290.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312071, there is no canonical definition to state claims against.
-/

/-! ## A312071.P1606506009452308814

`A311926(n)+A025465(A077446(n+1))`
-/

namespace A312071.P1606506009452308814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311926 n + A025465 (A077446 (n + 1)).toNat

end

end A312071.P1606506009452308814

/-! ## A312071.P12275965271605662999

`char[4]+A311912(n)+A260728(A065601(n))`
-/

namespace A312071.P12275965271605662999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A311912 n + A260728 (A065601 n).toNat)

end

end A312071.P12275965271605662999

/-! ## A312071.P8773665447187707808

`eq[A033148(n+1), A344309(n+1)]`
-/

namespace A312071.P8773665447187707808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312071.P8773665447187707808

/-! ## A312071.P3039378426973600478

`A311926(n)+A185012(A014371(n))`
-/

namespace A312071.P3039378426973600478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311926 n + A185012 (A014371 n).toNat

end

end A312071.P3039378426973600478

/-! ## A312071.P11156005094187402022

`A312066(n)+A010873(A324069(n))`
-/

namespace A312071.P11156005094187402022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312066 n + A010873 (A324069 n).toNat

end

end A312071.P11156005094187402022

/-!
# A312072: Coordination sequence Gal.4.64.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312072, there is no canonical definition to state claims against.
-/

/-! ## A312072.P8145280990230073387

`A312051(n)+A324417(n+4)%3`
-/

namespace A312072.P8145280990230073387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 n + Int.tmod (A324417 (n + 4)) 3

end

end A312072.P8145280990230073387

/-! ## A312072.P16130405981134484410

`A311437(n)+A060576(A000105(n))`
-/

namespace A312072.P16130405981134484410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311437 n + A060576 (A000105 n).toNat

end

end A312072.P16130405981134484410

/-! ## A312072.P14430631863627909473

`or(A001222(A053497(n)), A312046(n))`
-/

namespace A312072.P14430631863627909473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A053497 n).toNat) (A312046 n)

end

end A312072.P14430631863627909473

/-! ## A312072.P3746413954122308192

`or(A312046(n), A338690(A075178(n)))`
-/

namespace A312072.P3746413954122308192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312046 n) (A338690 (A075178 n).toNat)

end

end A312072.P3746413954122308192

/-! ## A312072.P9758637188298583841

`xor(A125005(A349170(n+1)), A312085(n))`
-/

namespace A312072.P9758637188298583841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125005 (A349170 (n + 1)).toNat) (A312085 n)

end

end A312072.P9758637188298583841

/-!
# A312073: Coordination sequence Gal.4.65.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312073, there is no canonical definition to state claims against.
-/

/-! ## A312073.P4292472003947708372

`A316864(A004119(n-A316864(n)))+A312065(n)`
-/

namespace A312073.P4292472003947708372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A004119 ((n : ℤ) - A316864 n).toNat).toNat + A312065 n

end

end A312073.P4292472003947708372

/-! ## A312073.P5460305872759200197

`or(A312065(n), A316864(A004119(n)))`
-/

namespace A312073.P5460305872759200197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312065 n) (A316864 (A004119 n).toNat)

end

end A312073.P5460305872759200197

/-! ## A312073.P2580891928112249902

`A316864(A316864(n)+A004119(n))+A312065(n)`
-/

namespace A312073.P2580891928112249902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A316864 n + A004119 n).toNat + A312065 n

end

end A312073.P2580891928112249902

/-! ## A312073.P10265448176668181949

`A312929(n)-A345415(A018134(n))`
-/

namespace A312073.P10265448176668181949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312929 n - A345415 (A018134 n).toNat

end

end A312073.P10265448176668181949

/-! ## A312073.P17773299438223227832

`A310765(n)+A005087(A119034(n+1))`
-/

namespace A312073.P17773299438223227832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310765 n + A005087 (A119034 (n + 1)).toNat

end

end A312073.P17773299438223227832

/-!
# A312074: Coordination sequence Gal.5.223.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312074, there is no canonical definition to state claims against.
-/

/-! ## A312074.P15975963563188138484

`A312076(A087051(n))-char[9]`
-/

namespace A312074.P15975963563188138484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 (A087051 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312074.P15975963563188138484

/-! ## A312074.P1631756395593861767

`A263283(A005248(n)*A111891(n+1))+char[3]`
-/

namespace A312074.P1631756395593861767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263283 (A005248 n * A111891 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312074.P1631756395593861767

/-!
# A312075: Coordination sequence Gal.6.297.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312075, there is no canonical definition to state claims against.
-/

/-! ## A312075.P16046198880680817120

`A312078(n)-A031286(A060810(n+1))`
-/

namespace A312075.P16046198880680817120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312078 n - A031286 (A060810 (n + 1)).toNat

end

end A312075.P16046198880680817120

/-! ## A312075.P15682600204580688296

`A312076(n)-A025469(A129988(n))`
-/

namespace A312075.P15682600204580688296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 n - A025469 (A129988 n).toNat

end

end A312075.P15682600204580688296

/-! ## A312075.P8720511466238042621

`A312076(n)-A185213(A185235(n))`
-/

namespace A312075.P8720511466238042621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 n - A185213 (A185235 n).toNat

end

end A312075.P8720511466238042621

/-! ## A312075.P2536952028488727063

`A312076(n)-A316866(A343599(n)²)`
-/

namespace A312075.P2536952028488727063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 n - A316866 (A343599 n ^ 2).toNat

end

end A312075.P2536952028488727063

/-! ## A312075.P1554247478853628460

`A312076(A062399(n))`
-/

namespace A312075.P1554247478853628460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 (A062399 n).toNat

end

end A312075.P1554247478853628460

/-!
# A312076: Coordination sequence Gal.6.163.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312076, there is no canonical definition to state claims against.
-/

/-! ## A312076.P13156328557064869849

`A312079(n)-A031286(A060810(n+1))`
-/

namespace A312076.P13156328557064869849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312079 n - A031286 (A060810 (n + 1)).toNat

end

end A312076.P13156328557064869849

/-! ## A312076.P1324271301626085657

`A312075(n)+A185213(A185235(n))`
-/

namespace A312076.P1324271301626085657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312075 n + A185213 (A185235 n).toNat

end

end A312076.P1324271301626085657

/-! ## A312076.P10323564410414564389

`A316866(A343599(n)²)+A312075(n)`
-/

namespace A312076.P10323564410414564389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A343599 n ^ 2).toNat + A312075 n

end

end A312076.P10323564410414564389

/-! ## A312076.P16406690796970028468

`A312075(n)+A185213(A185213(n)+11)`
-/

namespace A312076.P16406690796970028468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312075 n + A185213 (A185213 n + 11).toNat

end

end A312076.P16406690796970028468

/-!
# A312077: Coordination sequence Gal.5.65.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312077, the canonical program `A312077.P5583150468324327588` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312077 has offset 0).

The definition of A312077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312077.P11761685987083942748

`round(A311440(n)+n/5)`
-/

namespace A312077.P11761685987083942748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A311440 n : ℚ) + (n : ℚ) / 5)

end

end A312077.P11761685987083942748

namespace A312077

/-- `round(A311440(n)+n/5)` -/
def P11761685987083942748.Spec : Prop :=
  ∀ n, P11761685987083942748.a n = A312077 n

end A312077

/-! ## A312077.P17924953282602679933

`A074232(A311440(n))-n`
-/

namespace A312077.P17924953282602679933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A311440 n).toNat - (n : ℤ)

end

end A312077.P17924953282602679933

namespace A312077

/-- `A074232(A311440(n))-n` -/
def P17924953282602679933.Spec : Prop :=
  ∀ n, P17924953282602679933.a n = A312077 n

end A312077

/-! ## A312077.P8474778836392741914

`abs(A008592(n)-A315691(n))`
-/

namespace A312077.P8474778836392741914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315691 n|

end

end A312077.P8474778836392741914

namespace A312077

/-- `abs(A008592(n)-A315691(n))` -/
def P8474778836392741914.Spec : Prop :=
  ∀ n, P8474778836392741914.a n = A312077 n

end A312077

/-! ## A312077.P277632793600572340

`A311440(n)+A002266(n+2)`
-/

namespace A312077.P277632793600572340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A002266 (n + 2)

end

end A312077.P277632793600572340

namespace A312077

/-- `A311440(n)+A002266(n+2)` -/
def P277632793600572340.Spec : Prop :=
  ∀ n, P277632793600572340.a n = A312077 n

theorem P277632793600572340.correct : P277632793600572340.Spec := by
  intro n
  simp only [A312077, Nat.add_sub_cancel, A312077.P277632793600572340.a, A312077.P5583150468324327588.a, A002266, A002266.P12055520221930490546.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A311440, A311440.P4540242096253642842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312077

/-! ## A312077.P11124960923624552631

`abs(A008591(n)-(A315691(n)-n))`
-/

namespace A312077.P11124960923624552631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - (A315691 n - (n : ℤ))|

end

end A312077.P11124960923624552631

namespace A312077

/-- `abs(A008591(n)-(A315691(n)-n))` -/
def P11124960923624552631.Spec : Prop :=
  ∀ n, P11124960923624552631.a n = A312077 n

end A312077

/-! ## A312077.P6161051850378356531

`A047263(n+1)+A311440(n)-n`
-/

namespace A312077.P6161051850378356531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A311440 n - (n : ℤ))

end

end A312077.P6161051850378356531

namespace A312077

/-- `A047263(n+1)+A311440(n)-n` -/
def P6161051850378356531.Spec : Prop :=
  ∀ n, P6161051850378356531.a n = A312077 n

end A312077

/-! ## A312077.P5583150468324327588

`A008574(n)+A004524(A081599(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A312077

/-- `A008574(n)+A004524(A081599(n))` -/
def P5583150468324327588.Spec : Prop :=
  ∀ n, P5583150468324327588.a n = A312077 n

theorem P5583150468324327588.correct : P5583150468324327588.Spec := by
  intro n
  simp only [A312077]

end A312077

/-! ## A312077.P15557161363773615534

`A008458(n)+A008574(n)-A315691(n)`
-/

namespace A312077.P15557161363773615534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315691 n)

end

end A312077.P15557161363773615534

namespace A312077

/-- `A008458(n)+A008574(n)-A315691(n)` -/
def P15557161363773615534.Spec : Prop :=
  ∀ n, P15557161363773615534.a n = A312077 n

theorem P15557161363773615534.correct : P15557161363773615534.Spec := by
  intro n
  simp only [A312077, Nat.add_sub_cancel, A312077.P15557161363773615534.a, A312077.P5583150468324327588.a, A004524, A004524.P8943215836771390324.a, A008458, A008458.P7339383310184415644.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A315691, A315691.P16034797588587239357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312077

/-! ## A312077.P18231145465942144529

`A314827(n)-A330025(A330025(n)+n)`
-/

namespace A312077.P18231145465942144529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A312077.P18231145465942144529

namespace A312077

/-- `A314827(n)-A330025(A330025(n)+n)` -/
def P18231145465942144529.Spec : Prop :=
  ∀ n, P18231145465942144529.a n = A312077 n

end A312077

/-! ## A312077.P11982263559094971721

`abs(A008591(n)-A313506(n))`
-/

namespace A312077.P11982263559094971721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A313506 n|

end

end A312077.P11982263559094971721

namespace A312077

/-- `abs(A008591(n)-A313506(n))` -/
def P11982263559094971721.Spec : Prop :=
  ∀ n, P11982263559094971721.a n = A312077 n

end A312077

/-! ## A312077.P10526380143293811415

`abs(A008592(n)-(A313506(n)+n))`
-/

namespace A312077.P10526380143293811415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313506 n + (n : ℤ))|

end

end A312077.P10526380143293811415

namespace A312077

/-- `abs(A008592(n)-(A313506(n)+n))` -/
def P10526380143293811415.Spec : Prop :=
  ∀ n, P10526380143293811415.a n = A312077 n

end A312077

/-! ## A312077.P909698780663455612

`A005843(A008574(n))+n-A313506(n)`
-/

namespace A312077.P909698780663455612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A313506 n)

end

end A312077.P909698780663455612

namespace A312077

/-- `A005843(A008574(n))+n-A313506(n)` -/
def P909698780663455612.Spec : Prop :=
  ∀ n, P909698780663455612.a n = A312077 n

end A312077

/-! ## A312077.P6259797103177265086

`A008458(n)+A008486(n)-A313506(n)`
-/

namespace A312077.P6259797103177265086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313506 n)

end

end A312077.P6259797103177265086

namespace A312077

/-- `A008458(n)+A008486(n)-A313506(n)` -/
def P6259797103177265086.Spec : Prop :=
  ∀ n, P6259797103177265086.a n = A312077 n

end A312077

/-! ## A312077.P16510717935292759164

`(A312658(n)+A008574(n))/2`
-/

namespace A312077.P16510717935292759164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312658 n + A008574 n : ℚ) / 2

end

end A312077.P16510717935292759164

namespace A312077

/-- `(A312658(n)+A008574(n))/2` -/
def P16510717935292759164.Spec : Prop :=
  ∀ n, P16510717935292759164.a n = (A312077 n : ℚ)

theorem P16510717935292759164.correct : P16510717935292759164.Spec := by
  intro n
  simp only [A312077, Nat.add_sub_cancel, A312077.P16510717935292759164.a, A312077.P5583150468324327588.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A312658, A312658.P11537774687744647677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312077

/-! ## A312077.P3256644115061638513

`A313295(n)+A330025(n)-n`
-/

namespace A312077.P3256644115061638513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313295 n + (A330025 n - (n : ℤ))

end

end A312077.P3256644115061638513

namespace A312077

/-- `A313295(n)+A330025(n)-n` -/
def P3256644115061638513.Spec : Prop :=
  ∀ n, P3256644115061638513.a n = A312077 n

end A312077

/-! ## A312077.P17072233956332004734

`A313916(n)-n`
-/

namespace A312077.P17072233956332004734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n - (n : ℤ)

end

end A312077.P17072233956332004734

namespace A312077

/-- `A313916(n)-n` -/
def P17072233956332004734.Spec : Prop :=
  ∀ n, P17072233956332004734.a n = A312077 n

theorem P17072233956332004734.correct : P17072233956332004734.Spec := by
  intro n
  simp only [A312077, Nat.add_sub_cancel, A312077.P17072233956332004734.a, A312077.P5583150468324327588.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A313916, A313916.P11453756357199401341.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312077

/-! ## A312077.P17858525023723419327

`A315737(n)-(A253262(n)+n)`
-/

namespace A312077.P17858525023723419327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315737 n - (A253262 n + (n : ℤ))

end

end A312077.P17858525023723419327

namespace A312077

/-- `A315737(n)-(A253262(n)+n)` -/
def P17858525023723419327.Spec : Prop :=
  ∀ n, P17858525023723419327.a n = A312077 n

theorem P17858525023723419327.correct : P17858525023723419327.Spec := by
  intro n
  simp only [A312077, Nat.add_sub_cancel, A312077.P17858525023723419327.a, A312077.P5583150468324327588.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A253262, A253262.P6184646248567078382.a, A315737, A315737.P10781297996396530912.a, A313916, A313916.P11453756357199401341.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312077

/-! ## A312077.P5316604129417976446

`A315547(n)-A047363(n+1)`
-/

namespace A312077.P5316604129417976446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A047363 (n + 1)

end

end A312077.P5316604129417976446

namespace A312077

/-- `A315547(n)-A047363(n+1)` -/
def P5316604129417976446.Spec : Prop :=
  ∀ n, P5316604129417976446.a n = A312077 n

end A312077

/-! ## A312077.P4229380963512939115

`A313928(n)-A151988(n)`
-/

namespace A312077.P4229380963512939115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n - A151988 n

end

end A312077.P4229380963512939115

namespace A312077

/-- `A313928(n)-A151988(n)` -/
def P4229380963512939115.Spec : Prop :=
  ∀ n, P4229380963512939115.a n = A312077 n

end A312077

/-! ## A312077.P13462503145426443486

`A005843(A008458(n)-n)-A315691(n)`
-/

namespace A312077.P13462503145426443486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315691 n

end

end A312077.P13462503145426443486

namespace A312077

/-- `A005843(A008458(n)-n)-A315691(n)` -/
def P13462503145426443486.Spec : Prop :=
  ∀ n, P13462503145426443486.a n = A312077 n

end A312077

/-!
# A312078: Coordination sequence Gal.6.415.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312078, there is no canonical definition to state claims against.
-/

/-! ## A312078.P1222110065961854060

`A312079(n)-A025469(A129988(n))`
-/

namespace A312078.P1222110065961854060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312079 n - A025469 (A129988 n).toNat

end

end A312078.P1222110065961854060

/-! ## A312078.P14951824982354405047

`A312079(n)-A185284(A008578(n+1))`
-/

namespace A312078.P14951824982354405047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312079 n - A185284 (A008578 (n + 1)).toNat

end

end A312078.P14951824982354405047

/-! ## A312078.P8835148709962700744

`A312079(n)-A185284(A015919(n+1))`
-/

namespace A312078.P8835148709962700744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312079 n - A185284 (A015919 (n + 1)).toNat

end

end A312078.P8835148709962700744

/-! ## A312078.P3789473513508324825

`A312079(n)%record[A209182(n+1)]`
-/

namespace A312078.P3789473513508324825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312079 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A312078.P3789473513508324825

/-! ## A312078.P5721190502877658827

`record[A312079(n)]%A101316(3*n+5)`
-/

namespace A312078.P5721190502877658827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A101316 (3 * n + 5))

end

end A312078.P5721190502877658827

/-!
# A312079: Coordination sequence Gal.6.398.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312079, there is no canonical definition to state claims against.
-/

/-! ## A312079.P1300219199018507176

`A312110(n)+A312119(n)-A312133(n)`
-/

namespace A312079.P1300219199018507176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312110 n + (A312119 n - A312133 n)

end

end A312079.P1300219199018507176

/-! ## A312079.P13838166380693754085

`A312076(n)+A031286(A060810(n+1))`
-/

namespace A312079.P13838166380693754085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312076 n + A031286 (A060810 (n + 1)).toNat

end

end A312079.P13838166380693754085

/-! ## A312079.P9604013706904522707

`or(A185284(3*n+1), A312078(n))`
-/

namespace A312079.P9604013706904522707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (3 * n + 1)) (A312078 n)

end

end A312079.P9604013706904522707

/-! ## A312079.P1558967521985496514

`A312078(n)+A025469(A129988(n))`
-/

namespace A312079.P1558967521985496514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312078 n + A025469 (A129988 n).toNat

end

end A312079.P1558967521985496514

/-! ## A312079.P17469440126283373591

`A316866(A343599(n)²)+A312078(n)`
-/

namespace A312079.P17469440126283373591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A343599 n ^ 2).toNat + A312078 n

end

end A312079.P17469440126283373591

/-!
# A312080: Coordination sequence Gal.6.270.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312080, there is no canonical definition to state claims against.
-/

/-! ## A312080.P571925381527888342

`A285301(n+1)+A109401(A315565(n))`
-/

namespace A312080.P571925381527888342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (n + 1) + A109401 (A315565 n).toNat

end

end A312080.P571925381527888342

/-! ## A312080.P7632564488630900098

`A312073(n)+A071325(A120588(n))`
-/

namespace A312080.P7632564488630900098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312073 n + A071325 (A120588 n).toNat

end

end A312080.P7632564488630900098

/-! ## A312080.P9401840246832949149

`A313560(n)-A001221(A001169(n+1))`
-/

namespace A312080.P9401840246832949149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313560 n - A001221 (A001169 (n + 1)).toNat

end

end A312080.P9401840246832949149

/-! ## A312080.P9638506952778488924

`A301672(n)+A031346(A092566(n))`
-/

namespace A312080.P9638506952778488924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A031346 (A092566 n).toNat

end

end A312080.P9638506952778488924

/-! ## A312080.P4248091116309106517

`A313212(n)-A001221(A149321(n))`
-/

namespace A312080.P4248091116309106517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313212 n - A001221 (A149321 n).toNat

end

end A312080.P4248091116309106517

/-!
# A312081: Coordination sequence Gal.6.432.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312081, there is no canonical definition to state claims against.
-/

/-! ## A312081.P2566312449489375075

`(A312486(n)+A311598(n))/2`
-/

namespace A312081.P2566312449489375075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312486 n + A311598 n : ℚ) / 2

end

end A312081.P2566312449489375075

/-! ## A312081.P15132545254799004797

`A004525(A312486(n)+A311598(n))`
-/

namespace A312081.P15132545254799004797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312486 n + A311598 n).toNat

end

end A312081.P15132545254799004797

/-! ## A312081.P3451468010628232479

`A004526(A312486(n)+A311598(n))`
-/

namespace A312081.P3451468010628232479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312486 n + A311598 n).toNat

end

end A312081.P3451468010628232479

/-! ## A312081.P16081134251985203012

`A025480(A312486(n)+A311598(n))`
-/

namespace A312081.P16081134251985203012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312486 n + A311598 n).toNat

end

end A312081.P16081134251985203012

/-! ## A312081.P1483673112393688572

`A065033(A312486(n)+A311598(n))`
-/

namespace A312081.P1483673112393688572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312486 n + A311598 n).toNat

end

end A312081.P1483673112393688572

/-! ## A312081.P11315250369449226447

`A065033(A311598(n)-(1-A312486(n)))`
-/

namespace A312081.P11315250369449226447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311598 n - (1 - A312486 n)).toNat

end

end A312081.P11315250369449226447

/-!
# A312082: Coordination sequence Gal.4.95.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312082, there is no canonical definition to state claims against.
-/

/-! ## A312082.P4287278807999140505

`A312044(n)+A225099(A055302(n+1))`
-/

namespace A312082.P4287278807999140505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312044 n + A225099 (A055302 (n + 1)).toNat

end

end A312082.P4287278807999140505

/-! ## A312082.P7230262925244987842

`A312058(n)+A197629(A158356(n+1))`
-/

namespace A312082.P7230262925244987842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312058 n + A197629 (A158356 (n + 1)).toNat

end

end A312082.P7230262925244987842

/-! ## A312082.P8796132186591111377

`A346132(A312018(n))`
-/

namespace A312082.P8796132186591111377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A312018 n).toNat

end

end A312082.P8796132186591111377

/-! ## A312082.P12667511736545914830

`A346132(A312019(n))`
-/

namespace A312082.P12667511736545914830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A312019 n).toNat

end

end A312082.P12667511736545914830

/-!
# A312083: Coordination sequence Gal.3.28.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312083, there is no canonical definition to state claims against.
-/

/-! ## A312083.P6429267488068127901

`A312084(n)-A206499(A069270(n))`
-/

namespace A312083.P6429267488068127901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312084 n - A206499 (A069270 n).toNat

end

end A312083.P6429267488068127901

/-! ## A312083.P3063919683077854888

`A312084(n)-A339553(A197120(n+1))`
-/

namespace A312083.P3063919683077854888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312084 n - A339553 (A197120 (n + 1)).toNat

end

end A312083.P3063919683077854888

/-! ## A312083.P12710746319607016451

`A312084(A163352(∑[n]))`
-/

namespace A312083.P12710746319607016451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312084 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A312083.P12710746319607016451

/-! ## A312083.P1612990791113389842

`∏{e}[A000244(n), A312084(#)]`
-/

namespace A312083.P1612990791113389842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A312084 (Nat.factorization (f1 n).natAbs p)

end

end A312083.P1612990791113389842

/-! ## A312083.P12374663658834580996

`A312084(n)%A123286(n+2)`
-/

namespace A312083.P12374663658834580996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312084 n) (A123286 (n + 2 + 31))

end

end A312083.P12374663658834580996

/-!
# A312084: Coordination sequence Gal.6.396.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312084, there is no canonical definition to state claims against.
-/

/-! ## A312084.P4269090545637972344

`A312083(n)+A206499(A069270(n))`
-/

namespace A312084.P4269090545637972344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312083 n + A206499 (A069270 n).toNat

end

end A312084.P4269090545637972344

/-! ## A312084.P16731860339699099425

`A339553(A197120(n+1))+A312083(n)`
-/

namespace A312084.P16731860339699099425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339553 (A197120 (n + 1)).toNat + A312083 n

end

end A312084.P16731860339699099425

/-!
# A312085: Coordination sequence Gal.6.179.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312085, there is no canonical definition to state claims against.
-/

/-! ## A312085.P851835161496690572

`A311253(n)+A125005(A162704(n+1))`
-/

namespace A312085.P851835161496690572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311253 n + A125005 (A162704 (n + 1)).toNat

end

end A312085.P851835161496690572

/-! ## A312085.P3496600891733714366

`or(A082858(A231651(n+1)), A312053(n))`
-/

namespace A312085.P3496600891733714366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082858 (A231651 (n + 1)).toNat) (A312053 n)

end

end A312085.P3496600891733714366

/-! ## A312085.P16146245624909883365

`or(A082858(A231663(n+1)), A312053(n))`
-/

namespace A312085.P16146245624909883365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082858 (A231663 (n + 1)).toNat) (A312053 n)

end

end A312085.P16146245624909883365

/-! ## A312085.P16663047423493574526

`xor(A025459(A002091(n+1)), A312062(n))`
-/

namespace A312085.P16663047423493574526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025459 (A002091 (n + 1)).toNat) (A312062 n)

end

end A312085.P16663047423493574526

/-! ## A312085.P10014324288148918233

`xor(A125005(A349170(n+1)), A312072(n))`
-/

namespace A312085.P10014324288148918233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125005 (A349170 (n + 1)).toNat) (A312072 n)

end

end A312085.P10014324288148918233

/-!
# A312086: Coordination sequence Gal.6.461.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312086, there is no canonical definition to state claims against.
-/

/-! ## A312086.P7928928660871825255

`A312969(n)-A258825(A076665(n+1))`
-/

namespace A312086.P7928928660871825255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n - A258825 (A076665 (n + 1)).toNat

end

end A312086.P7928928660871825255

/-! ## A312086.P15563318083947532352

`A312048(n)+A059841(A322262(n))`
-/

namespace A312086.P15563318083947532352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312048 n + A059841 (A322262 n).toNat

end

end A312086.P15563318083947532352

/-! ## A312086.P11675362244077660757

`A301299(n)+A268374(A176148(n))`
-/

namespace A312086.P11675362244077660757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A268374 (A176148 n).toNat

end

end A312086.P11675362244077660757

/-! ## A312086.P124412981285744533

`A301299(n)+A124766(A374636(n))`
-/

namespace A312086.P124412981285744533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A124766 (A374636 n).toNat

end

end A312086.P124412981285744533

/-! ## A312086.P16883093045963553572

`A312091(n)-A178798(A027379(n))`
-/

namespace A312086.P16883093045963553572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312091 n - A178798 (A027379 n).toNat

end

end A312086.P16883093045963553572

/-!
# A312087: Coordination sequence Gal.6.461.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312087, there is no canonical definition to state claims against.
-/

/-! ## A312087.P14351129502781762258

`xor(A241471(A028310(n)), A312098(n))`
-/

namespace A312087.P14351129502781762258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A241471 (A028310 n).toNat) (A312098 n)

end

end A312087.P14351129502781762258

/-! ## A312087.P4984621291061904873

`xor(A241471(A274933(n+1)), A312098(n))`
-/

namespace A312087.P4984621291061904873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A241471 (A274933 (n + 1)).toNat) (A312098 n)

end

end A312087.P4984621291061904873

/-! ## A312087.P17788952725143391292

`∑[A005811(∑[A316953(2*n+5)])]`
-/

namespace A312087.P17788952725143391292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316953 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312087.P17788952725143391292

/-! ## A312087.P16788212180413134786

`A312086(n)+A122840(A000108(n))`
-/

namespace A312087.P16788212180413134786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312086 n + A122840 (A000108 n).toNat

end

end A312087.P16788212180413134786

/-! ## A312087.P10600933074310020554

`A301299(n)+A124760(A052709(n))`
-/

namespace A312087.P10600933074310020554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A124760 (A052709 n).toNat

end

end A312087.P10600933074310020554

/-!
# A312088: Coordination sequence Gal.6.276.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312088, there is no canonical definition to state claims against.
-/

/-! ## A312088.P5540252812056745996

`or(∑[A010417(n+3)]%(n+1), A311336(n))`
-/

namespace A312088.P5540252812056745996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010417 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)) (A311336 n)

end

end A312088.P5540252812056745996

/-! ## A312088.P16800438451466884054

`A311886(n)+A007814(A099947(n))`
-/

namespace A312088.P16800438451466884054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311886 n + A007814 (A099947 n).toNat

end

end A312088.P16800438451466884054

/-! ## A312088.P13104711118293518168

`A156262(A311978(n)+A311968(n))`
-/

namespace A312088.P13104711118293518168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A311978 n + A311968 n).toNat

end

end A312088.P13104711118293518168

/-! ## A312088.P2792738595471901252

`A156262(A311981(n)+A311965(n))`
-/

namespace A312088.P2792738595471901252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A311981 n + A311965 n).toNat

end

end A312088.P2792738595471901252

/-! ## A312088.P14810561088336137826

`A156262(A311979(n)+A311968(n))`
-/

namespace A312088.P14810561088336137826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A311979 n + A311968 n).toNat

end

end A312088.P14810561088336137826

/-!
# A312089: Coordination sequence Gal.5.92.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312089, there is no canonical definition to state claims against.
-/

/-! ## A312089.P1562930660844714361

`A312122(n)-A160383(A052408(n+1))`
-/

namespace A312089.P1562930660844714361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312122 n - A160383 (A052408 (n + 1)).toNat

end

end A312089.P1562930660844714361

/-! ## A312089.P3641901165413636593

`or(A186744(A344182(n)), A311604(n))`
-/

namespace A312089.P3641901165413636593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186744 (A344182 n).toNat) (A311604 n)

end

end A312089.P3641901165413636593

/-! ## A312089.P15657010286673825399

`A301293(n)-A088151(A002203(n))`
-/

namespace A312089.P15657010286673825399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A088151 (A002203 n).toNat

end

end A312089.P15657010286673825399

/-!
# A312090: Coordination sequence Gal.6.163.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312090, there is no canonical definition to state claims against.
-/

/-! ## A312090.P18377132289593085211

`A311318(n)+A073267(A317890(n+1))`
-/

namespace A312090.P18377132289593085211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311318 n + A073267 (A317890 (n + 1)).toNat

end

end A312090.P18377132289593085211

/-! ## A312090.P11072733618355342674

`A311496(n)+A243067(A200770(n+1))`
-/

namespace A312090.P11072733618355342674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311496 n + A243067 (A200770 (n + 1)).toNat

end

end A312090.P11072733618355342674

/-! ## A312090.P6783026948327556877

`A311951(n)+A267525(A004061(n+1))`
-/

namespace A312090.P6783026948327556877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311951 n + A267525 (A004061 (n + 1)).toNat

end

end A312090.P6783026948327556877

/-! ## A312090.P6000327097361484131

`A312091(A087051(n))`
-/

namespace A312090.P6000327097361484131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312091 (A087051 n).toNat

end

end A312090.P6000327097361484131

/-!
# A312091: Coordination sequence Gal.6.270.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312091, there is no canonical definition to state claims against.
-/

/-! ## A312091.P17369636123868564814

`or(A160382(A292446(n+1)), A312065(n))`
-/

namespace A312091.P17369636123868564814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160382 (A292446 (n + 1)).toNat) (A312065 n)

end

end A312091.P17369636123868564814

/-! ## A312091.P17219546479200908518

`A008574(n)+A001222(A338748(n))`
-/

namespace A312091.P17219546479200908518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A338748 n).toNat

end

end A312091.P17219546479200908518

/-! ## A312091.P5330484813632148514

`A311843(n)+A001221(A185160(n))`
-/

namespace A312091.P5330484813632148514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A001221 (A185160 n).toNat

end

end A312091.P5330484813632148514

/-! ## A312091.P399916364997190953

`or(A001222(A338748(n)), A312065(n))`
-/

namespace A312091.P399916364997190953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A338748 n).toNat) (A312065 n)

end

end A312091.P399916364997190953

/-!
# A312092: Coordination sequence Gal.5.170.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312092, there is no canonical definition to state claims against.
-/

/-! ## A312092.P16657600408323187823

`A301676(n)-A262670(A324099(n+1))`
-/

namespace A312092.P16657600408323187823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A262670 (A324099 (n + 1)).toNat

end

end A312092.P16657600408323187823

/-! ## A312092.P11976972708761862829

`A312093(n)^A144700(A305541(n+1))-A053392(n)`
-/

namespace A312092.P11976972708761862829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312093 n : ℚ) ^ (A144700 (A305541 (n + 1)).toNat : ℤ) - (A053392 n : ℚ)

end

end A312092.P11976972708761862829

/-! ## A312092.P13289888834629729930

`A037800(A033627(n+1))+A311807(n)+A051755(n+2)%A001221(2*A000032(2*n))`
-/

namespace A312092.P13289888834629729930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A033627 (n + 1)).toNat + (A311807 n + Int.tmod (A051755 (n + 2)) (A001221 (2 * A000032 (2 * n)).toNat))

end

end A312092.P13289888834629729930

/-! ## A312092.P4768161112389344732

`A312093(A062399(n))-char[10]`
-/

namespace A312092.P4768161112389344732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312093 (A062399 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312092.P4768161112389344732

/-!
# A312093: Coordination sequence Gal.6.396.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312093, there is no canonical definition to state claims against.
-/

/-! ## A312093.P4319786945039431738

`A301676(n)-A212619(A244490(n))`
-/

namespace A312093.P4319786945039431738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A212619 (A244490 n).toNat

end

end A312093.P4319786945039431738

/-! ## A312093.P1984808939813993724

`A301676(n)-A056976(A003473(n+1))`
-/

namespace A312093.P1984808939813993724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A056976 (A003473 (n + 1)).toNat

end

end A312093.P1984808939813993724

/-! ## A312093.P3477832316234376114

`A301676(n)-A025465(A189868(n+1))`
-/

namespace A312093.P3477832316234376114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A025465 (A189868 (n + 1)).toNat

end

end A312093.P3477832316234376114

/-! ## A312093.P11138810518273409925

`A301676(n)-A212619(A014097(n+1))`
-/

namespace A312093.P11138810518273409925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A212619 (A014097 (n + 1)).toNat

end

end A312093.P11138810518273409925

/-! ## A312093.P11272132145607700610

`A301676(n)-A016389(A277589(n+1))`
-/

namespace A312093.P11272132145607700610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n - A016389 (A277589 (n + 1)).toNat

end

end A312093.P11272132145607700610

/-!
# A312094: Coordination sequence Gal.6.423.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312094, there is no canonical definition to state claims against.
-/

/-! ## A312094.P12994308823561517790

`A312095(n-A172538(n+1)^(n+1))`
-/

namespace A312094.P12994308823561517790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312095 ((n : ℤ) - A172538 (n + 1) ^ (n + 1)).toNat

end

end A312094.P12994308823561517790

/-! ## A312094.P17868170423816366266

`A312095(n-A188009(A003945(n)))`
-/

namespace A312094.P17868170423816366266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312095 ((n : ℤ) - A188009 (A003945 n).toNat).toNat

end

end A312094.P17868170423816366266

/-! ## A312094.P2034927567415775943

`A312095(n)-A316866(A343599(n)²)`
-/

namespace A312094.P2034927567415775943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312095 n - A316866 (A343599 n ^ 2).toNat

end

end A312094.P2034927567415775943

/-! ## A312094.P15806815288523795463

`A312095(n)%record[A209182(n+1)]`
-/

namespace A312094.P15806815288523795463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312095 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A312094.P15806815288523795463

/-! ## A312094.P276151531261220390

`A322389(A103314(n))+A312095(n)`
-/

namespace A312094.P276151531261220390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A103314 n).toNat + A312095 n

end

end A312094.P276151531261220390

/-!
# A312095: Coordination sequence Gal.6.406.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312095, there is no canonical definition to state claims against.
-/

/-! ## A312095.P7747318506035568968

`A316866(A343599(n)²)+A312094(n)`
-/

namespace A312095.P7747318506035568968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A343599 n ^ 2).toNat + A312094 n

end

end A312095.P7747318506035568968

/-!
# A312096: Coordination sequence Gal.5.175.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312096, there is no canonical definition to state claims against.
-/

/-! ## A312096.P7111362847295054601

`A312097(n)-A307726(A007318(A187829(n+1)))`
-/

namespace A312096.P7111362847295054601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312097 n - A307726 (A007318 (A187829 (n + 1)).toNat).toNat

end

end A312096.P7111362847295054601

/-! ## A312096.P4724835559195110475

`A301676(n)+A069843(A194639(n+1))`
-/

namespace A312096.P4724835559195110475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A069843 (A194639 (n + 1)).toNat

end

end A312096.P4724835559195110475

/-! ## A312096.P3013925969032570878

`A316864(A158920(n+1))+A301676(n)`
-/

namespace A312096.P3013925969032570878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A158920 (n + 1)).toNat + A301676 n

end

end A312096.P3013925969032570878

/-! ## A312096.P14378886465668674785

`A312097(n)-A185284(A008864(n+1))`
-/

namespace A312096.P14378886465668674785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312097 n - A185284 (A008864 (n + 1)).toNat

end

end A312096.P14378886465668674785

/-! ## A312096.P10649580423568076518

`A312097(A351870(n))-A037817(n+1)`
-/

namespace A312096.P10649580423568076518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312097 (A351870 n).toNat - A037817 (n + 1)

end

end A312096.P10649580423568076518

/-!
# A312097: Coordination sequence Gal.5.166.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312097, there is no canonical definition to state claims against.
-/

/-! ## A312097.P13990426157344703482

`A312096(A351870(n))+char[10]`
-/

namespace A312097.P13990426157344703482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312096 (A351870 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312097.P13990426157344703482

/-! ## A312097.P6348279270002062859

`or(A312094(n), A312096(A351870(n)))`
-/

namespace A312097.P6348279270002062859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312094 n) (A312096 (A351870 n).toNat)

end

end A312097.P6348279270002062859

/-! ## A312097.P11420485195750869108

`or(A312095(n), A312096(A351870(n)))`
-/

namespace A312097.P11420485195750869108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312095 n) (A312096 (A351870 n).toNat)

end

end A312097.P11420485195750869108

/-! ## A312097.P11328196497904321001

`A301676(n)+A086071(A064607(n+1))`
-/

namespace A312097.P11328196497904321001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A086071 (A064607 (n + 1)).toNat

end

end A312097.P11328196497904321001

/-! ## A312097.P1895904551860429480

`A312096(n)+A185284(A008864(n+1))`
-/

namespace A312097.P1895904551860429480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312096 n + A185284 (A008864 (n + 1)).toNat

end

end A312097.P1895904551860429480

/-!
# A312098: Coordination sequence Gal.5.181.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312098, there is no canonical definition to state claims against.
-/

/-! ## A312098.P14275336045737637150

`(A312499(n)+A311603(n))/2`
-/

namespace A312098.P14275336045737637150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312499 n + A311603 n : ℚ) / 2

end

end A312098.P14275336045737637150

/-! ## A312098.P10508816385381110872

`A014682(A312499(n)+A311603(n))`
-/

namespace A312098.P10508816385381110872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312499 n + A311603 n).toNat

end

end A312098.P10508816385381110872

/-! ## A312098.P3503280986639102445

`A038572(A312499(n)+A311603(n))`
-/

namespace A312098.P3503280986639102445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A312499 n + A311603 n).toNat

end

end A312098.P3503280986639102445

/-! ## A312098.P3396066398196027031

`A004525(A312499(n)+A311603(n))`
-/

namespace A312098.P3396066398196027031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312499 n + A311603 n).toNat

end

end A312098.P3396066398196027031

/-! ## A312098.P4090265359043626064

`A026741(A312499(n)+A311603(n))`
-/

namespace A312098.P4090265359043626064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312499 n + A311603 n).toNat

end

end A312098.P4090265359043626064

/-! ## A312098.P13870316269544184028

`A060681(A312499(n)+A311603(n))`
-/

namespace A312098.P13870316269544184028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A312499 n + A311603 n).toNat

end

end A312098.P13870316269544184028

/-! ## A312098.P2926187646767306726

`A001057(A311603(n)+A312499(n)-1)`
-/

namespace A312098.P2926187646767306726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311603 n + (A312499 n - 1)).toNat

end

end A312098.P2926187646767306726

/-! ## A312098.P7063628297322253775

`A008619(A311603(n)+A312499(n)-1)`
-/

namespace A312098.P7063628297322253775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311603 n + (A312499 n - 1)).toNat

end

end A312098.P7063628297322253775

/-! ## A312098.P2805434762062532817

`A065033(A311603(n)+A312499(n)-1)`
-/

namespace A312098.P2805434762062532817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311603 n + (A312499 n - 1)).toNat

end

end A312098.P2805434762062532817

/-! ## A312098.P9836707081643929158

`A001057(A311603(n)-(1-A312499(n)))`
-/

namespace A312098.P9836707081643929158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311603 n - (1 - A312499 n)).toNat

end

end A312098.P9836707081643929158

/-! ## A312098.P14425984712344869586

`A008619(A311603(n)-(1-A312499(n)))`
-/

namespace A312098.P14425984712344869586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311603 n - (1 - A312499 n)).toNat

end

end A312098.P14425984712344869586

/-! ## A312098.P13227685452560484045

`A065033(A311603(n)-(1-A312499(n)))`
-/

namespace A312098.P13227685452560484045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311603 n - (1 - A312499 n)).toNat

end

end A312098.P13227685452560484045

/-! ## A312098.P2408370568190626171

`A004526(A312499(n)+A311603(n))`
-/

namespace A312098.P2408370568190626171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312499 n + A311603 n).toNat

end

end A312098.P2408370568190626171

/-! ## A312098.P5502120431872770774

`A006370(A312499(n)+A311603(n))`
-/

namespace A312098.P5502120431872770774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312499 n + A311603 n).toNat

end

end A312098.P5502120431872770774

/-! ## A312098.P6872544210205476863

`A065033(A312499(n)+A311603(n))`
-/

namespace A312098.P6872544210205476863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312499 n + A311603 n).toNat

end

end A312098.P6872544210205476863

/-! ## A312098.P16404280732874929156

`A123108(A312499(n)+A311603(n))`
-/

namespace A312098.P16404280732874929156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A312499 n + A311603 n).toNat

end

end A312098.P16404280732874929156

/-! ## A312098.P8239216322043254488

`-A001057(A312499(n)+A311603(n))`
-/

namespace A312098.P8239216322043254488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A312499 n + A311603 n).toNat

end

end A312098.P8239216322043254488

/-! ## A312098.P17580164764577467672

`A002265(2*(A312499(n)+A311603(n)))`
-/

namespace A312098.P17580164764577467672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A312499 n + A311603 n)).toNat

end

end A312098.P17580164764577467672

/-! ## A312098.P6534179918377220528

`A008615(3*(A312499(n)+A311603(n)))`
-/

namespace A312098.P6534179918377220528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * (A312499 n + A311603 n)).toNat

end

end A312098.P6534179918377220528

/-!
# A312099: Coordination sequence Gal.6.432.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312099, there is no canonical definition to state claims against.
-/

/-! ## A312099.P14673013914955613670

`A086971(A028310(n))+A313051(n)-A102677(n²²)`
-/

namespace A312099.P14673013914955613670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A028310 n).toNat + (A313051 n - A102677 ((n ^ 2) ^ 2))

end

end A312099.P14673013914955613670

/-! ## A312099.P6232324452881058700

`∑[A297770(A084851(n))]+n`
-/

namespace A312099.P6232324452881058700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A084851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A312099.P6232324452881058700

/-! ## A312099.P15389813407419088943

`A003002(∑[∑[A104617(n+1)]])`
-/

namespace A312099.P15389813407419088943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104617 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A312099.P15389813407419088943

/-! ## A312099.P18047918043594447636

`A311475(n)+A011734(n²²)`
-/

namespace A312099.P18047918043594447636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A011734 ((n ^ 2) ^ 2)

end

end A312099.P18047918043594447636

