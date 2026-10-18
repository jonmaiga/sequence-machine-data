import SequenceMachineLib.Basic
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A299300: Values of k such that A065358(k-1) = 0.

The programs for A299300, there is no canonical definition to state claims against.
-/

/-! ## A299300.P15582154720319161909

`A064940(n+1)+1`
-/

namespace A299300.P15582154720319161909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064940 (n + 1) + 1

end

end A299300.P15582154720319161909

/-! ## A299300.P8390486662707362646

`eq[1, A278603(n)]`
-/

namespace A299300.P8390486662707362646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299300.P8390486662707362646

/-! ## A299300.P908967777300697014

`lt[A065358(n)², 1]+1`
-/

namespace A299300.P908967777300697014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A299300.P908967777300697014

/-! ## A299300.P11954044024794349203

`A004442(A064940(n+1))`
-/

namespace A299300.P11954044024794349203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A064940 (n + 1)).toNat

end

end A299300.P11954044024794349203

/-! ## A299300.P378454495186929873

`eq[A065357(n), A065358(n)]`
-/

namespace A299300.P378454495186929873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299300.P378454495186929873

/-! ## A299300.P1388280302769391647

`eq[A001281(n), A131808(n)]+1`
-/

namespace A299300.P1388280302769391647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299300.P1388280302769391647

/-! ## A299300.P7141475748546271460

`eq[A006370(n), A131808(n)]+1`
-/

namespace A299300.P7141475748546271460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299300.P7141475748546271460

/-! ## A299300.P17988789939139162501

`eq[A014682(n), A131808(n)]+1`
-/

namespace A299300.P17988789939139162501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299300.P17988789939139162501

/-!
# A299301: Partial sums of A300000.

The programs for A299301, there is no canonical definition to state claims against.
-/

/-! ## A299301.P12629197093893319257

`∑[A300000(n+1)]`
-/

namespace A299301.P12629197093893319257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P12629197093893319257

/-! ## A299301.P9128113606044169743

`∑[record[A300000(A116549(n))]]`
-/

namespace A299301.P9128113606044169743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P9128113606044169743

/-! ## A299301.P11306184750688827312

`∑[record[A300000(A133310(n))]]`
-/

namespace A299301.P11306184750688827312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P11306184750688827312

/-! ## A299301.P12862138948276609078

`∑[record[A300000(A137734(n))]]`
-/

namespace A299301.P12862138948276609078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P12862138948276609078

/-! ## A299301.P5818687883941490283

`∑[record[A300000(A137735(n))]]`
-/

namespace A299301.P5818687883941490283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P5818687883941490283

/-!
# A299302: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299302, there is no canonical definition to state claims against.
-/

/-! ## A299302.P17379011737580788962

`A299307(∑[4*n]+1)`
-/

namespace A299302.P17379011737580788962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299302.P17379011737580788962

/-! ## A299302.P4654034096310773329

`record[A299307(Δ[A235355(n)])]`
-/

namespace A299302.P4654034096310773329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299302.P4654034096310773329

/-! ## A299302.P11163338405626581916

`record[A299307(A330613(n+1))]`
-/

namespace A299302.P11163338405626581916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299302.P11163338405626581916

/-! ## A299302.P17107577582386549787

`A299307(A001844(n))+C(n, 10)`
-/

namespace A299302.P17107577582386549787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A001844 n).toNat + (Nat.choose n 10 : ℤ)

end

end A299302.P17107577582386549787

/-! ## A299302.P4432585313731610492

`record[A003982(n)*A299307(n+1)]`
-/

namespace A299302.P4432585313731610492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299302.P4432585313731610492

/-!
# A299303: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299303, there is no canonical definition to state claims against.
-/

/-! ## A299303.P9063593286196384008

`A299307(A374004(n+1))`
-/

namespace A299303.P9063593286196384008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A374004 (n + 1)).toNat

end

end A299303.P9063593286196384008

/-! ## A299303.P15596553273711020936

`A299307(A141214(n)+7)`
-/

namespace A299303.P15596553273711020936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A141214 n + 7).toNat

end

end A299303.P15596553273711020936

/-! ## A299303.P2347771601035362139

`A299307(A052905(n)+9)`
-/

namespace A299303.P2347771601035362139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A052905 n + 9).toNat

end

end A299303.P2347771601035362139

/-! ## A299303.P13037981482620024566

`A299307(A055999(n)+10)`
-/

namespace A299303.P13037981482620024566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A055999 n + 10).toNat

end

end A299303.P13037981482620024566

/-! ## A299303.P4270522809853162972

`A299307(A167614(n+2)+1)`
-/

namespace A299303.P4270522809853162972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A167614 (n + 2) + 1).toNat

end

end A299303.P4270522809853162972

/-!
# A299304: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299304, there is no canonical definition to state claims against.
-/

/-! ## A299304.P6910758619643614838

`A299307(A374005(n+1))`
-/

namespace A299304.P6910758619643614838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A374005 (n + 1)).toNat

end

end A299304.P6910758619643614838

/-! ## A299304.P1157471541445347359

`A299307(A167499(n+3))`
-/

namespace A299304.P1157471541445347359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A167499 (n + 3)).toNat

end

end A299304.P1157471541445347359

/-! ## A299304.P16071461719539675129

`A299307(A155212(n)+13)`
-/

namespace A299304.P16071461719539675129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A155212 n + 13).toNat

end

end A299304.P16071461719539675129

/-! ## A299304.P4675659194710909629

`A299307(A056000(n)+15)`
-/

namespace A299304.P4675659194710909629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A056000 n + 15).toNat

end

end A299304.P4675659194710909629

/-! ## A299304.P7009938456474764507

`A299307(eq[6, A131818(n+1)])`
-/

namespace A299304.P7009938456474764507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299304.P7009938456474764507

/-!
# A299305: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299305, there is no canonical definition to state claims against.
-/

/-! ## A299305.P6952035461991460952

`A299307(A374007(n+1))`
-/

namespace A299305.P6952035461991460952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A374007 (n + 1)).toNat

end

end A299305.P6952035461991460952

/-! ## A299305.P12944380930109980597

`A299307(A166136(n+4))`
-/

namespace A299305.P12944380930109980597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A166136 (n + 4)).toNat

end

end A299305.P12944380930109980597

/-! ## A299305.P3548293265207047762

`A299307(A056115(n)+21)`
-/

namespace A299305.P3548293265207047762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A056115 n + 21).toNat

end

end A299305.P3548293265207047762

/-! ## A299305.P17423339945459249006

`A299307(A046691(n+3)+10)`
-/

namespace A299305.P17423339945459249006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A046691 (n + 3) + 10).toNat

end

end A299305.P17423339945459249006

/-! ## A299305.P14225234568286199327

`A299307(eq[7, A131818(n+1)])`
-/

namespace A299305.P14225234568286199327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299305.P14225234568286199327

/-!
# A299306: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299306, there is no canonical definition to state claims against.
-/

/-! ## A299306.P5473299300878074442

`A299307(A374008(n+1))`
-/

namespace A299306.P5473299300878074442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A374008 (n + 1)).toNat

end

end A299306.P5473299300878074442

/-! ## A299306.P11049471121461201289

`A299307(A056119(n)+28)`
-/

namespace A299306.P11049471121461201289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A056119 n + 28).toNat

end

end A299306.P11049471121461201289

/-! ## A299306.P4566793446619208132

`A299307(eq[11, A066657(n)])`
-/

namespace A299306.P4566793446619208132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299306.P4566793446619208132

/-! ## A299306.P14049652001062978181

`A299307(A000217(n+6)+7)`
-/

namespace A299306.P14049652001062978181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A000217 (n + 6) + 7).toNat

end

end A299306.P14049652001062978181

/-! ## A299306.P17427624139544454904

`A299307(eq[8, A131818(n+1)])`
-/

namespace A299306.P17427624139544454904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299306.P17427624139544454904

/-!
# A299308: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299308, there is no canonical definition to state claims against.
-/

/-! ## A299308.P14297605674384823129

`A299314(∑[4*n]+1)`
-/

namespace A299308.P14297605674384823129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299308.P14297605674384823129

/-! ## A299308.P15360919371555880824

`record[A299314(Δ[A235355(n)])]`
-/

namespace A299308.P15360919371555880824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299308.P15360919371555880824

/-! ## A299308.P9152956217055810640

`record[A299314(A330613(n+1))]`
-/

namespace A299308.P9152956217055810640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299308.P9152956217055810640

/-! ## A299308.P10774366403185803760

`A299314(A001844(n))+char[9]`
-/

namespace A299308.P10774366403185803760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299308.P10774366403185803760

/-! ## A299308.P17360050650521466881

`record[A299314(Δ[A079824(n+1)])]`
-/

namespace A299308.P17360050650521466881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299308.P17360050650521466881

/-!
# A299309: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299309, there is no canonical definition to state claims against.
-/

/-! ## A299309.P18344259593618605045

`A299314(∑[n+2]+4)`
-/

namespace A299309.P18344259593618605045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299309.P18344259593618605045

/-! ## A299309.P11010420974211086695

`or(1, A299314(A167614(n+1)))`
-/

namespace A299309.P11010420974211086695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299314 (A167614 (n + 1)).toNat)

end

end A299309.P11010420974211086695

/-! ## A299309.P11311472392863827684

`record[A112295(n)*A299314(n+4)]`
-/

namespace A299309.P11311472392863827684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112295 n * A299314 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299309.P11311472392863827684

/-! ## A299309.P5332094472775600787

`record[gcd(A299314(n+1), A303913(n))]`
-/

namespace A299309.P5332094472775600787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299314 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299309.P5332094472775600787

/-! ## A299309.P7238317800154904148

`A299314(A167614(n+1))+A178798(n)`
-/

namespace A299309.P7238317800154904148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A167614 (n + 1)).toNat + A178798 n

end

end A299309.P7238317800154904148

/-!
# A299310: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299310, there is no canonical definition to state claims against.
-/

/-! ## A299310.P794085358407951375

`A299314(∑[n+3]+7)`
-/

namespace A299310.P794085358407951375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299310.P794085358407951375

/-! ## A299310.P4938309474144465858

`or(char[1], A299314(A141214(n)+7))`
-/

namespace A299310.P4938309474144465858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299314 (A141214 n + 7).toNat)

end

end A299310.P4938309474144465858

/-! ## A299310.P13048115629859407090

`A299314(Δ[A005286(n)]+5)+char[19]`
-/

namespace A299310.P13048115629859407090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (f1 (n + 1) - f1 n + 5).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299310.P13048115629859407090

/-! ## A299310.P15289708820825679662

`A299314(A141214(n)+7)/A007318(C(n, 2))`
-/

namespace A299310.P15289708820825679662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299314 (A141214 n + 7).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A299310.P15289708820825679662

/-! ## A299310.P4156277950723757880

`A000108(C(n, 64)²)*A299314(A141214(n)+7)`
-/

namespace A299310.P4156277950723757880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 64 ^ 2) * A299314 (A141214 n + 7).toNat

end

end A299310.P4156277950723757880

/-!
# A299311: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299311, there is no canonical definition to state claims against.
-/

/-! ## A299311.P2763627841800682018

`A299314(A374005(n+1))`
-/

namespace A299311.P2763627841800682018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A374005 (n + 1)).toNat

end

end A299311.P2763627841800682018

/-! ## A299311.P11752990865486618915

`A299314(A167499(n+3))`
-/

namespace A299311.P11752990865486618915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A167499 (n + 3)).toNat

end

end A299311.P11752990865486618915

/-! ## A299311.P5848585290818198641

`A299314(A155212(n)+13)`
-/

namespace A299311.P5848585290818198641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A155212 n + 13).toNat

end

end A299311.P5848585290818198641

/-! ## A299311.P5202188495654644113

`A299314(A056000(n)+15)`
-/

namespace A299311.P5202188495654644113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A056000 n + 15).toNat

end

end A299311.P5202188495654644113

/-! ## A299311.P10255012750502031692

`A299314(eq[7, A066657(n)])`
-/

namespace A299311.P10255012750502031692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299311.P10255012750502031692

/-!
# A299312: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299312, there is no canonical definition to state claims against.
-/

/-! ## A299312.P17537301116814813783

`A299314(A374007(n+1))`
-/

namespace A299312.P17537301116814813783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A374007 (n + 1)).toNat

end

end A299312.P17537301116814813783

/-! ## A299312.P10485093611940643930

`A299314(A056115(n)+21)`
-/

namespace A299312.P10485093611940643930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A056115 n + 21).toNat

end

end A299312.P10485093611940643930

/-! ## A299312.P9917318446286129654

`A299314(∑[A020710(n)]+16)`
-/

namespace A299312.P9917318446286129654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A299312.P9917318446286129654

/-! ## A299312.P3656297809482586888

`A299314(A167499(n+4)+1)`
-/

namespace A299312.P3656297809482586888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A167499 (n + 4) + 1).toNat

end

end A299312.P3656297809482586888

/-! ## A299312.P16287476623110160343

`A299314(A167614(n+4)+3)`
-/

namespace A299312.P16287476623110160343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A167614 (n + 4) + 3).toNat

end

end A299312.P16287476623110160343

/-!
# A299313: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299313, there is no canonical definition to state claims against.
-/

/-! ## A299313.P14322265263842133179

`A299314(A374008(n+1))`
-/

namespace A299313.P14322265263842133179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A374008 (n + 1)).toNat

end

end A299313.P14322265263842133179

/-! ## A299313.P1132553398753525586

`A299314(A056119(n)+28)`
-/

namespace A299313.P1132553398753525586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A056119 n + 28).toNat

end

end A299313.P1132553398753525586

/-! ## A299313.P7028014138326855906

`A299314(eq[11, A066657(n)])`
-/

namespace A299313.P7028014138326855906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299313.P7028014138326855906

/-! ## A299313.P15853804642705373775

`A299314(A167614(n+5)+4)`
-/

namespace A299313.P15853804642705373775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A167614 (n + 5) + 4).toNat

end

end A299313.P15853804642705373775

/-! ## A299313.P13345729065366737096

`A299314(A133263(n+6)+5)`
-/

namespace A299313.P13345729065366737096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A133263 (n + 6) + 5).toNat

end

end A299313.P13345729065366737096

/-!
# A299314: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299314, there is no canonical definition to state claims against.
-/

/-! ## A299314.P820113245809768047

`A056926(A300115(n+1)²)`
-/

namespace A299314.P820113245809768047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A300115 (n + 1) ^ 2).toNat

end

end A299314.P820113245809768047

/-! ## A299314.P6954176437817609088

`A262689(A300115(n+1)²)`
-/

namespace A299314.P6954176437817609088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A300115 (n + 1) ^ 2).toNat

end

end A299314.P6954176437817609088

/-! ## A299314.P7869643568237508701

`A300115(∑[2^A034555(n+1)])`
-/

namespace A299314.P7869643568237508701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A034555 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A299314.P7869643568237508701

/-! ## A299314.P10338026033524076052

`A300115(n+1)+A010051(A056941(n))`
-/

namespace A299314.P10338026033524076052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (n + 1) + A010051 (A056941 n).toNat

end

end A299314.P10338026033524076052

/-! ## A299314.P8250309726371211305

`A300115(n+1)+A000007(A367297(n+1))`
-/

namespace A299314.P8250309726371211305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (n + 1) + A000007 (A367297 (n + 1)).toNat

end

end A299314.P8250309726371211305

/-!
# A299315: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299315, there is no canonical definition to state claims against.
-/

/-! ## A299315.P6065196141243946539

`A299321(∑[4*n]+1)`
-/

namespace A299315.P6065196141243946539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299315.P6065196141243946539

/-! ## A299315.P17720598806116907378

`and(-1, A299321(A001844(n)))`
-/

namespace A299315.P17720598806116907378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299321 (A001844 n).toNat)

end

end A299315.P17720598806116907378

/-! ## A299315.P2337098131341335740

`A299321(A001844(n))+A025439(n)`
-/

namespace A299315.P2337098131341335740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A001844 n).toNat + A025439 n

end

end A299315.P2337098131341335740

/-! ## A299315.P5966968787228878147

`A299321(A001844(n))+A025466(n)`
-/

namespace A299315.P5966968787228878147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A001844 n).toNat + A025466 n

end

end A299315.P5966968787228878147

/-! ## A299315.P14832253153328625400

`A299321(A001844(n))+A056965(n)`
-/

namespace A299315.P14832253153328625400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A001844 n).toNat + A056965 n

end

end A299315.P14832253153328625400

/-!
# A299316: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299316, there is no canonical definition to state claims against.
-/

/-! ## A299316.P4599747763433381931

`A299321(∑[n+2]+4)`
-/

namespace A299316.P4599747763433381931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299316.P4599747763433381931

/-! ## A299316.P13947348433951731018

`and(-1, A299321(A167614(n+1)))`
-/

namespace A299316.P13947348433951731018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299321 (A167614 (n + 1)).toNat)

end

end A299316.P13947348433951731018

/-! ## A299316.P987401275214820702

`A299321(A167614(n+1))+A011738(n)`
-/

namespace A299316.P987401275214820702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A167614 (n + 1)).toNat + A011738 n

end

end A299316.P987401275214820702

/-! ## A299316.P13716158321934405407

`A299321(A167614(n+1))+A011742(n)`
-/

namespace A299316.P13716158321934405407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A167614 (n + 1)).toNat + A011742 n

end

end A299316.P13716158321934405407

/-! ## A299316.P16682511000142580302

`A299321(A167614(n+1))+A025439(n)`
-/

namespace A299316.P16682511000142580302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A167614 (n + 1)).toNat + A025439 n

end

end A299316.P16682511000142580302

/-!
# A299317: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299317, there is no canonical definition to state claims against.
-/

/-! ## A299317.P13832749994165017773

`A299321(∑[n+3]+7)`
-/

namespace A299317.P13832749994165017773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299317.P13832749994165017773

/-! ## A299317.P18258558117519892965

`record[A299321(A025796(n)+4)]`
-/

namespace A299317.P18258558117519892965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A025796 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299317.P18258558117519892965

/-! ## A299317.P8005195440590499494

`record[A299321(A024163(n+1)+4)]`
-/

namespace A299317.P8005195440590499494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A024163 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299317.P8005195440590499494

/-! ## A299317.P8220858084408412033

`record[A010054(n)*A299321(n+4)]`
-/

namespace A299317.P8220858084408412033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A299321 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299317.P8220858084408412033

/-! ## A299317.P1708970421596806283

`A299321(A167614(n+2)+1)+char[24]`
-/

namespace A299317.P1708970421596806283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299317.P1708970421596806283

/-!
# A299318: Number of n X 5 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299318, there is no canonical definition to state claims against.
-/

/-! ## A299318.P8435522559528055812

`A299321(A374005(n+1))`
-/

namespace A299318.P8435522559528055812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A374005 (n + 1)).toNat

end

end A299318.P8435522559528055812

/-! ## A299318.P13545614731509893269

`A299321(A167499(n+3))`
-/

namespace A299318.P13545614731509893269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A167499 (n + 3)).toNat

end

end A299318.P13545614731509893269

/-! ## A299318.P12878176852566657916

`A299321(A155212(n)+13)`
-/

namespace A299318.P12878176852566657916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A155212 n + 13).toNat

end

end A299318.P12878176852566657916

/-! ## A299318.P10032003964810035863

`A299321(A056000(n)+15)`
-/

namespace A299318.P10032003964810035863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A056000 n + 15).toNat

end

end A299318.P10032003964810035863

/-! ## A299318.P2680886322579167342

`A299321(eq[7, A066657(n)])`
-/

namespace A299318.P2680886322579167342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299318.P2680886322579167342

/-!
# A299319: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299319, there is no canonical definition to state claims against.
-/

/-! ## A299319.P7644181601324180610

`A299321(A374007(n+1))`
-/

namespace A299319.P7644181601324180610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A374007 (n + 1)).toNat

end

end A299319.P7644181601324180610

/-! ## A299319.P13437708922451854267

`A299321(A166136(n+4))`
-/

namespace A299319.P13437708922451854267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A166136 (n + 4)).toNat

end

end A299319.P13437708922451854267

/-! ## A299319.P8047796564553361582

`A299321(A056115(n)+21)`
-/

namespace A299319.P8047796564553361582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A056115 n + 21).toNat

end

end A299319.P8047796564553361582

/-! ## A299319.P1621439226316435767

`A299321(A167499(n+4)+1)`
-/

namespace A299319.P1621439226316435767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A167499 (n + 4) + 1).toNat

end

end A299319.P1621439226316435767

/-! ## A299319.P10771833387060520864

`A299321(A167487(n+4)-1)`
-/

namespace A299319.P10771833387060520864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A167487 (n + 4) - 1).toNat

end

end A299319.P10771833387060520864

/-!
# A299320: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299320, there is no canonical definition to state claims against.
-/

/-! ## A299320.P15060992833152633640

`A299321(A374008(n+1))`
-/

namespace A299320.P15060992833152633640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A374008 (n + 1)).toNat

end

end A299320.P15060992833152633640

/-! ## A299320.P10425328281630975357

`A299321(A167487(n+5))`
-/

namespace A299320.P10425328281630975357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A167487 (n + 5)).toNat

end

end A299320.P10425328281630975357

/-! ## A299320.P5972012821957880310

`A299321(A056119(n)+28)`
-/

namespace A299320.P5972012821957880310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A056119 n + 28).toNat

end

end A299320.P5972012821957880310

/-! ## A299320.P12497909137126905666

`A299321(eq[11, A066657(n)])`
-/

namespace A299320.P12497909137126905666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299320.P12497909137126905666

/-! ## A299320.P5213407268069254035

`A299321(A166136(n+5)+1)`
-/

namespace A299320.P5213407268069254035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A166136 (n + 5) + 1).toNat

end

end A299320.P5213407268069254035

/-!
# A299322: Ranks of {2,3}-power towers with neither consecutive 2's nor consecutive 3's; see Comments.

The programs for A299322, the canonical program `A299322.P3264824573822275329` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299322 has offset 1).

The definition of A299322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299322.P3264824573822275329

`a(n-1)+a(n-2)-a(n-3)+2*a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=10, a(5)=11, a(6)=22, a(7)=23, a(8)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299322

/-- `a(n-1)+a(n-2)-a(n-3)+2*a(n-4)-2*a(n-5)` -/
def P3264824573822275329.Spec : Prop :=
  ∀ n, P3264824573822275329.a n = A299322 (n + 1)

theorem P3264824573822275329.correct : P3264824573822275329.Spec := by
  intro n
  simp only [A299322, Nat.add_sub_cancel]

end A299322

/-! ## A299322.P7736760155728029093

`A299327(∑[n]+1)`
-/

namespace A299322.P7736760155728029093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299322.P7736760155728029093

namespace A299322

/-- `A299327(∑[n]+1)` -/
def P7736760155728029093.Spec : Prop :=
  ∀ n, P7736760155728029093.a n = A299322 (n + 1)

end A299322

/-! ## A299322.P6785181050393729138

`or(char[3], A299327(A000124(n)))`
-/

namespace A299322.P6785181050393729138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299327 (A000124 n).toNat)

end

end A299322.P6785181050393729138

namespace A299322

/-- `or(char[3], A299327(A000124(n)))` -/
def P6785181050393729138.Spec : Prop :=
  ∀ n, P6785181050393729138.a n = A299322 (n + 1)

end A299322

/-! ## A299322.P5537552641189672025

`record[A299327(A332442(n+1)+1)]`
-/

namespace A299322.P5537552641189672025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299327 (A332442 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299322.P5537552641189672025

namespace A299322

/-- `record[A299327(A332442(n+1)+1)]` -/
def P5537552641189672025.Spec : Prop :=
  ∀ n, P5537552641189672025.a n = A299322 (n + 1)

end A299322

/-! ## A299322.P13362404078943383368

`record[A010054(n)*A299327(n+1)]`
-/

namespace A299322.P13362404078943383368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A299327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299322.P13362404078943383368

namespace A299322

/-- `record[A010054(n)*A299327(n+1)]` -/
def P13362404078943383368.Spec : Prop :=
  ∀ n, P13362404078943383368.a n = A299322 (n + 1)

end A299322

/-!
# A299328: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299328, there is no canonical definition to state claims against.
-/

/-! ## A299328.P2155447683669737615

`A299334(∑[4*n]+1)`
-/

namespace A299328.P2155447683669737615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299328.P2155447683669737615

/-! ## A299328.P12821597911342870151

`and(-A007318(n), A299334(A001844(n)))`
-/

namespace A299328.P12821597911342870151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 n) (A299334 (A001844 n).toNat)

end

end A299328.P12821597911342870151

/-! ## A299328.P3048004777008841804

`char[A002262(n)]*A299334(A001844(n))`
-/

namespace A299328.P3048004777008841804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A299334 (A001844 n).toNat

end

end A299328.P3048004777008841804

/-! ## A299328.P14734929334863301297

`A299334(A001844(n))+A117371(n+1)`
-/

namespace A299328.P14734929334863301297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A001844 n).toNat + A117371 (n + 1)

end

end A299328.P14734929334863301297

/-! ## A299328.P426477763266885834

`A043539(n+1)*A299334(A001844(n))`
-/

namespace A299328.P426477763266885834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043539 (n + 1) * A299334 (A001844 n).toNat

end

end A299328.P426477763266885834

/-!
# A299329: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299329, there is no canonical definition to state claims against.
-/

/-! ## A299329.P4369654282730979642

`A299334(∑[n+2]+4)`
-/

namespace A299329.P4369654282730979642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299329.P4369654282730979642

/-! ## A299329.P4370634665955141774

`or(char[1], A299334(A167614(n+1)))`
-/

namespace A299329.P4370634665955141774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299334 (A167614 (n + 1)).toNat)

end

end A299329.P4370634665955141774

/-! ## A299329.P3609487700684014821

`A299334(A167614(n+1))%A017285(n)`
-/

namespace A299329.P3609487700684014821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299334 (A167614 (n + 1)).toNat) (A017285 n)

end

end A299329.P3609487700684014821

/-! ## A299329.P5694868526044043827

`lcm(A211226(n), A299334(A167614(n+1)))`
-/

namespace A299329.P5694868526044043827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A211226 n) (A299334 (A167614 (n + 1)).toNat)

end

end A299329.P5694868526044043827

/-! ## A299329.P2468467190775444164

`record[A299334(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A299329.P2468467190775444164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299329.P2468467190775444164

/-!
# A299330: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299330, there is no canonical definition to state claims against.
-/

/-! ## A299330.P4542648219615684791

`A299334(A374004(n+1))`
-/

namespace A299330.P4542648219615684791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A374004 (n + 1)).toNat

end

end A299330.P4542648219615684791

/-! ## A299330.P12047809856622709029

`A299334(A052905(n)+9)`
-/

namespace A299330.P12047809856622709029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A052905 n + 9).toNat

end

end A299330.P12047809856622709029

/-! ## A299330.P8649147367146224266

`A299334(A167614(n+2)+1)`
-/

namespace A299330.P8649147367146224266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A167614 (n + 2) + 1).toNat

end

end A299330.P8649147367146224266

/-! ## A299330.P9832599404864286259

`A299334(eq[5, A131818(n+1)])`
-/

namespace A299330.P9832599404864286259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299330.P9832599404864286259

/-! ## A299330.P14814067900267502118

`A299334(Δ[A264443(n)-n²])`
-/

namespace A299330.P14814067900267502118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (f1 (n + 1) - f1 n).toNat

end

end A299330.P14814067900267502118

/-!
# A299331: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299331, there is no canonical definition to state claims against.
-/

/-! ## A299331.P14838275337633098335

`A299334(A374005(n+1))`
-/

namespace A299331.P14838275337633098335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A374005 (n + 1)).toNat

end

end A299331.P14838275337633098335

/-! ## A299331.P16686667445115149954

`A299334(A167499(n+3))`
-/

namespace A299331.P16686667445115149954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A167499 (n + 3)).toNat

end

end A299331.P16686667445115149954

/-! ## A299331.P3073774700678435722

`A299334(A155212(n)+13)`
-/

namespace A299331.P3073774700678435722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A155212 n + 13).toNat

end

end A299331.P3073774700678435722

/-! ## A299331.P712023943943236702

`A299334(Δ[A264443(n)])`
-/

namespace A299331.P712023943943236702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (f1 (n + 1) - f1 n).toNat

end

end A299331.P712023943943236702

/-! ## A299331.P4303188913954768883

`A299334(A056115(n)+11)`
-/

namespace A299331.P4303188913954768883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A056115 n + 11).toNat

end

end A299331.P4303188913954768883

/-!
# A299332: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299332, there is no canonical definition to state claims against.
-/

/-! ## A299332.P1475718195042423849

`A299334(A374007(n+1))`
-/

namespace A299332.P1475718195042423849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A374007 (n + 1)).toNat

end

end A299332.P1475718195042423849

/-! ## A299332.P237054063864339195

`A299334(eq[7, A131818(n+1)])`
-/

namespace A299332.P237054063864339195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299332.P237054063864339195

/-! ## A299332.P14651565447648962238

`A299334(A056119(n)+16)`
-/

namespace A299332.P14651565447648962238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A056119 n + 16).toNat

end

end A299332.P14651565447648962238

/-! ## A299332.P9028681736769992037

`A299334(eq[3, A219347(n)])`
-/

namespace A299332.P9028681736769992037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299332.P9028681736769992037

/-! ## A299332.P6214510749144774052

`A299334(eq[5, A193592(n)])`
-/

namespace A299332.P6214510749144774052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299332.P6214510749144774052

/-!
# A299333: Number of n X 7 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299333, there is no canonical definition to state claims against.
-/

/-! ## A299333.P7106241529599168409

`A299334(A374008(n+1))`
-/

namespace A299333.P7106241529599168409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A374008 (n + 1)).toNat

end

end A299333.P7106241529599168409

/-! ## A299333.P9348463866768939554

`A299334(eq[11, A066657(n)])`
-/

namespace A299333.P9348463866768939554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299333.P9348463866768939554

/-! ## A299333.P8994445370913250890

`A299334(A000217(n+6)+7)`
-/

namespace A299333.P8994445370913250890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A000217 (n + 6) + 7).toNat

end

end A299333.P8994445370913250890

/-! ## A299333.P9015087326740676784

`A299334(eq[8, A131818(n+1)])`
-/

namespace A299333.P9015087326740676784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299333.P9015087326740676784

/-! ## A299333.P13124864119612768974

`A299334(A055999(n+4))`
-/

namespace A299333.P13124864119612768974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A055999 (n + 4)).toNat

end

end A299333.P13124864119612768974

/-!
# A299334: T(n,k) = Number of n X k 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299334, there is no canonical definition to state claims against.
-/

/-! ## A299334.P1383783691221626619

`A300175(n+1)-A121262(A228900(n))`
-/

namespace A299334.P1383783691221626619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (n + 1) - A121262 (A228900 n).toNat

end

end A299334.P1383783691221626619

/-! ## A299334.P17213642629357793917

`A298629(n+1)+A235943(A297978(n+1))`
-/

namespace A299334.P17213642629357793917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (n + 1) + A235943 (A297978 (n + 1)).toNat

end

end A299334.P17213642629357793917

/-! ## A299334.P16372979949547577067

`A298629(n+1)+A185255(A298461(n+1))`
-/

namespace A299334.P16372979949547577067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (n + 1) + A185255 (A298461 (n + 1)).toNat

end

end A299334.P16372979949547577067

/-!
# A299335: Expansion of 1 / ((1 - x)^7*(1 + x)^2).

The programs for A299335, the canonical program `A299335.P15283748833311822453` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299335 has offset 0).

The definition of A299335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+8x^2-14x^4+14x^5-8x^7+5x^8-x^9))` (program `A299335.P15283748833311822453`, by `A299335.P15283748833311822453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299335.P15283748833311822453

`ogf(1/(1-5x+8x^2-14x^4+14x^5-8x^7+5x^8-x^9))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299335

/-- `ogf(1/(1-5x+8x^2-14x^4+14x^5-8x^7+5x^8-x^9))` -/
def P15283748833311822453.Spec : Prop :=
  ∀ n, P15283748833311822453.a n = A299335 n

theorem P15283748833311822453.correct : P15283748833311822453.Spec := by
  intro n
  simp only [A299335]

end A299335

/-! ## A299335.P944836140402536805

`∑[∑[∑[∑[∑[∑[n+1]%(n+2)]]]]]`
-/

namespace A299335.P944836140402536805
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f6 j) % (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P944836140402536805

namespace A299335

/-- `∑[∑[∑[∑[∑[∑[n+1]%(n+2)]]]]]` -/
def P944836140402536805.Spec : Prop :=
  ∀ n, (P944836140402536805.a n : ℤ) = A299335 n

end A299335

/-! ## A299335.P16939976828421228842

`∑[∑[∑[∑[∑[∑[∑[(n+1)*(-1)^n]]]]]]]`
-/

namespace A299335.P16939976828421228842
noncomputable section

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ n

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P16939976828421228842

namespace A299335

/-- `∑[∑[∑[∑[∑[∑[∑[(n+1)*(-1)^n]]]]]]]` -/
def P16939976828421228842.Spec : Prop :=
  ∀ n, P16939976828421228842.a n = A299335 n

end A299335

/-! ## A299335.P5764648783176617027

`∑[C(n+5, 5)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A299335.P5764648783176617027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose (n + 5) 5 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A299335.P5764648783176617027

namespace A299335

/-- `∑[C(n+5, 5)-a(n-1)]-a(n-1)` -/
def P5764648783176617027.Spec : Prop :=
  ∀ n, P5764648783176617027.a n = A299335 n

end A299335

/-! ## A299335.P746289902991317780

`∑[∑[∑[∑[∑[∑[∑[(-1)^n]]]]]]]-a(n-1)` with `a(0)=1`
-/

namespace A299335.P746289902991317780
noncomputable section

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A299335.P746289902991317780

namespace A299335

/-- `∑[∑[∑[∑[∑[∑[∑[(-1)^n]]]]]]]-a(n-1)` -/
def P746289902991317780.Spec : Prop :=
  ∀ n, P746289902991317780.a n = A299335 n

end A299335

/-! ## A299335.P10724117094038725099

`abs(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` with `a(0)=1, a(1)=2`
-/

namespace A299335.P10724117094038725099
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 2) + (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A299335.P10724117094038725099

namespace A299335

/-- `abs(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` -/
def P10724117094038725099.Spec : Prop :=
  ∀ n, P10724117094038725099.a n = A299335 n

end A299335

/-! ## A299335.P9585423963907411077

`floor(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A299335.P9585423963907411077
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 2) + (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P9585423963907411077

namespace A299335

/-- `floor(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` -/
def P9585423963907411077.Spec : Prop :=
  ∀ n, P9585423963907411077.a n = A299335 n

end A299335

/-! ## A299335.P13868663017997422007

`ceil(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A299335.P13868663017997422007
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 2) + (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P13868663017997422007

namespace A299335

/-- `ceil(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` -/
def P13868663017997422007.Spec : Prop :=
  ∀ n, P13868663017997422007.a n = A299335 n

end A299335

/-! ## A299335.P215539465119879307

`round(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A299335.P215539465119879307
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 2) + (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P215539465119879307

namespace A299335

/-- `round(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` -/
def P215539465119879307.Spec : Prop :=
  ∀ n, P215539465119879307.a n = A299335 n

end A299335

/-! ## A299335.P11660547829408194740

`2*∑[A028346(n)/2]`
-/

namespace A299335.P11660547829408194740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028346 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299335.P11660547829408194740

namespace A299335

/-- `2*∑[A028346(n)/2]` -/
def P11660547829408194740.Spec : Prop :=
  ∀ n, P11660547829408194740.a n = (A299335 n : ℚ)

end A299335

/-! ## A299335.P17487218819432273054

`2*A060099(n)-A038163(n)`
-/

namespace A299335.P17487218819432273054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060099 n - A038163 n

end

end A299335.P17487218819432273054

namespace A299335

/-- `2*A060099(n)-A038163(n)` -/
def P17487218819432273054.Spec : Prop :=
  ∀ n, P17487218819432273054.a n = A299335 n

end A299335

/-! ## A299335.P1849080696908987654

`A001769(n+1)-(A060099(n+1)+A060099(n))`
-/

namespace A299335.P1849080696908987654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (n + 1) - (A060099 (n + 1) + A060099 n)

end

end A299335.P1849080696908987654

namespace A299335

/-- `A001769(n+1)-(A060099(n+1)+A060099(n))` -/
def P1849080696908987654.Spec : Prop :=
  ∀ n, P1849080696908987654.a n = A299335 n

end A299335

/-! ## A299335.P6960164689760742029

`A060099(n+1)+A060099(n)-A028346(n+1)`
-/

namespace A299335.P6960164689760742029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (n + 1) + (A060099 n - A028346 (n + 1))

end

end A299335.P6960164689760742029

namespace A299335

/-- `A060099(n+1)+A060099(n)-A028346(n+1)` -/
def P6960164689760742029.Spec : Prop :=
  ∀ n, P6960164689760742029.a n = A299335 n

end A299335

/-!
# A299336: Expansion of 1 / ((1 - x)^7*(1 + x)^4).

The programs for A299336, the canonical program `A299336.P10451011169121343571` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299336 has offset 0).

The definition of A299336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))` (program `A299336.P10451011169121343571`, by `A299336.P10451011169121343571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299336.P10451011169121343571

`ogf(1/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299336

/-- `ogf(1/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))` -/
def P10451011169121343571.Spec : Prop :=
  ∀ n, P10451011169121343571.a n = A299336 n

theorem P10451011169121343571.correct : P10451011169121343571.Spec := by
  intro n
  simp only [A299336]

end A299336

/-! ## A299336.P15215862096300952731

`∑[∑[C(floor(n/2)+4, 4)]]`
-/

namespace A299336.P15215862096300952731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 4).toNat 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P15215862096300952731

namespace A299336

/-- `∑[∑[C(floor(n/2)+4, 4)]]` -/
def P15215862096300952731.Spec : Prop :=
  ∀ n, (P15215862096300952731.a n : ℤ) = A299336 n

end A299336

/-! ## A299336.P2054143809649939102

`∑[A177747(n)]`
-/

namespace A299336.P2054143809649939102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P2054143809649939102

namespace A299336

/-- `∑[A177747(n)]` -/
def P2054143809649939102.Spec : Prop :=
  ∀ n, P2054143809649939102.a n = A299336 n

end A299336

/-! ## A299336.P7503241539509656160

`∑[∑[A189976(n+8)]]`
-/

namespace A299336.P7503241539509656160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P7503241539509656160

namespace A299336

/-- `∑[∑[A189976(n+8)]]` -/
def P7503241539509656160.Spec : Prop :=
  ∀ n, P7503241539509656160.a n = A299336 n

end A299336

/-! ## A299336.P1827318540179155772

`A060099(n)-a(n-1)` with `a(0)=1`
-/

namespace A299336.P1827318540179155772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060099 n - a (n - 1)

end

end A299336.P1827318540179155772

namespace A299336

/-- `A060099(n)-a(n-1)` -/
def P1827318540179155772.Spec : Prop :=
  ∀ n, P1827318540179155772.a n = A299336 n

end A299336

/-! ## A299336.P12321905672721812952

`A038163(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A299336.P12321905672721812952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A038163 n + a (n - 2)

end

end A299336.P12321905672721812952

namespace A299336

/-- `A038163(n)+a(n-2)` -/
def P12321905672721812952.Spec : Prop :=
  ∀ n, P12321905672721812952.a n = A299336 n

end A299336

/-! ## A299336.P17842525874427010922

`∑[∑[A002624(n)-a(n-1)]]-a(n-1)` with `a(0)=1`
-/

namespace A299336.P17842525874427010922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002624 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A299336.P17842525874427010922

namespace A299336

/-- `∑[∑[A002624(n)-a(n-1)]]-a(n-1)` -/
def P17842525874427010922.Spec : Prop :=
  ∀ n, P17842525874427010922.a n = A299336 n

end A299336

/-! ## A299336.P7390774617964836657

`∑[2*A189980(n)]-A189980(n)`
-/

namespace A299336.P7390774617964836657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189980 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189980 (n + 10)

end

end A299336.P7390774617964836657

namespace A299336

/-- `∑[2*A189980(n)]-A189980(n)` -/
def P7390774617964836657.Spec : Prop :=
  ∀ n, P7390774617964836657.a n = A299336 n

end A299336

/-! ## A299336.P12138811102991725804

`A060099(n+1)-(A299337(n+1)+A299337(n))`
-/

namespace A299336.P12138811102991725804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (n + 1) - (A299337 (n + 1) + A299337 n)

end

end A299336.P12138811102991725804

namespace A299336

/-- `A060099(n+1)-(A299337(n+1)+A299337(n))` -/
def P12138811102991725804.Spec : Prop :=
  ∀ n, P12138811102991725804.a n = A299336 n

end A299336

/-! ## A299336.P16166299787124899867

`∑[∑[A000332(Δ[A002620(n+7)])]]`
-/

namespace A299336.P16166299787124899867
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (f3 (n + 1) - f3 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P16166299787124899867

namespace A299336

/-- `∑[∑[A000332(Δ[A002620(n+7)])]]` -/
def P16166299787124899867.Spec : Prop :=
  ∀ n, P16166299787124899867.a n = A299336 n

end A299336

/-! ## A299336.P10668855715313312229

`∑[∑[A051677(A008805(n))]]`
-/

namespace A299336.P10668855715313312229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (A008805 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P10668855715313312229

namespace A299336

/-- `∑[∑[A051677(A008805(n))]]` -/
def P10668855715313312229.Spec : Prop :=
  ∀ n, P10668855715313312229.a n = A299336 n

end A299336

/-! ## A299336.P5199416911312471925

`∑[∑[A194005(A052905(n+1))]]`
-/

namespace A299336.P5199416911312471925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A052905 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P5199416911312471925

namespace A299336

/-- `∑[∑[A194005(A052905(n+1))]]` -/
def P5199416911312471925.Spec : Prop :=
  ∀ n, P5199416911312471925.a n = A299336 n

end A299336

/-! ## A299336.P10247461566946681246

`∑[∑[A109221(∑[n+3])]]`
-/

namespace A299336.P10247461566946681246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P10247461566946681246

namespace A299336

/-- `∑[∑[A109221(∑[n+3])]]` -/
def P10247461566946681246.Spec : Prop :=
  ∀ n, P10247461566946681246.a n = A299336 n

end A299336

/-! ## A299336.P1151811315870641919

`A188316(A167614(n+2))`
-/

namespace A299336.P1151811315870641919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A167614 (n + 2)).toNat

end

end A299336.P1151811315870641919

namespace A299336

/-- `A188316(A167614(n+2))` -/
def P1151811315870641919.Spec : Prop :=
  ∀ n, P1151811315870641919.a n = A299336 n

end A299336

/-! ## A299336.P14219807584775237110

`A188316(eq[3, A002262(n)])`
-/

namespace A299336.P14219807584775237110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299336.P14219807584775237110

namespace A299336

/-- `A188316(eq[3, A002262(n)])` -/
def P14219807584775237110.Spec : Prop :=
  ∀ n, P14219807584775237110.a n = A299336 n

end A299336

/-! ## A299336.P15770930914340657204

`A188316(A166136(n+2)-3)`
-/

namespace A299336.P15770930914340657204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A166136 (n + 2) - 3).toNat

end

end A299336.P15770930914340657204

namespace A299336

/-- `A188316(A166136(n+2)-3)` -/
def P15770930914340657204.Spec : Prop :=
  ∀ n, P15770930914340657204.a n = A299336 n

end A299336

/-! ## A299336.P13929973597038866584

`∑[∑[A185785(A055802(n+3))]]`
-/

namespace A299336.P13929973597038866584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185785 (A055802 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P13929973597038866584

namespace A299336

/-- `∑[∑[A185785(A055802(n+3))]]` -/
def P13929973597038866584.Spec : Prop :=
  ∀ n, P13929973597038866584.a n = A299336 n

end A299336

/-!
# A299337: Expansion of 1 / ((1 - x)^7*(1 + x)^5).

The programs for A299337, the canonical program `A299337.P4896702050029843800` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299337 has offset 0).

The definition of A299337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` (program `A299337.P4896702050029843800`, by `A299337.P4896702050029843800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299337.P4896702050029843800

`ogf(1/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299337

/-- `ogf(1/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` -/
def P4896702050029843800.Spec : Prop :=
  ∀ n, P4896702050029843800.a n = A299337 n

theorem P4896702050029843800.correct : P4896702050029843800.Spec := by
  intro n
  simp only [A299337]

end A299337

/-! ## A299337.P8644732900744388053

`∑[C(floor(n/2)+5, 5)]`
-/

namespace A299337.P8644732900744388053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 5).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P8644732900744388053

namespace A299337

/-- `∑[C(floor(n/2)+5, 5)]` -/
def P8644732900744388053.Spec : Prop :=
  ∀ n, (P8644732900744388053.a n : ℤ) = A299337 n

end A299337

/-! ## A299337.P1360434793618333916

`a(n-1)+C(floor(n/2)+5, 5)` with `a(0)=1`
-/

namespace A299337.P1360434793618333916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (⌊(n : ℚ) / 2⌋ + 5).toNat 5

end

end A299337.P1360434793618333916

namespace A299337

/-- `a(n-1)+C(floor(n/2)+5, 5)` -/
def P1360434793618333916.Spec : Prop :=
  ∀ n, (P1360434793618333916.a n : ℤ) = A299337 n

end A299337

/-! ## A299337.P3959876857457425949

`∑[A189980(n)]`
-/

namespace A299337.P3959876857457425949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P3959876857457425949

namespace A299337

/-- `∑[A189980(n)]` -/
def P3959876857457425949.Spec : Prop :=
  ∀ n, P3959876857457425949.a n = A299337 n

end A299337

/-! ## A299337.P8283521508196662502

`A299336(n)-a(n-1)` with `a(0)=1`
-/

namespace A299337.P8283521508196662502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299336 n - a (n - 1)

end

end A299337.P8283521508196662502

namespace A299337

/-- `A299336(n)-a(n-1)` -/
def P8283521508196662502.Spec : Prop :=
  ∀ n, P8283521508196662502.a n = A299337 n

end A299337

/-! ## A299337.P1688574487764724824

`A177747(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A299337.P1688574487764724824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A177747 n + a (n - 2)

end

end A299337.P1688574487764724824

namespace A299337

/-- `A177747(n)+a(n-2)` -/
def P1688574487764724824.Spec : Prop :=
  ∀ n, P1688574487764724824.a n = A299337 n

end A299337

/-! ## A299337.P7056320572068163100

`∑[A018214(n)-A282078(n)]`
-/

namespace A299337.P7056320572068163100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018214 n - A282078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P7056320572068163100

namespace A299337

/-- `∑[A018214(n)-A282078(n)]` -/
def P7056320572068163100.Spec : Prop :=
  ∀ n, P7056320572068163100.a n = A299337 n

end A299337

/-! ## A299337.P9186136743219684003

`∑[∑[A056594(n)²*A189976(n+8)]]`
-/

namespace A299337.P9186136743219684003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 * A189976 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P9186136743219684003

namespace A299337

/-- `∑[∑[A056594(n)²*A189976(n+8)]]` -/
def P9186136743219684003.Spec : Prop :=
  ∀ n, P9186136743219684003.a n = A299337 n

end A299337

/-! ## A299337.P1412548299417687727

`A299336(n+1)-(A299338(n+1)+A299338(n))`
-/

namespace A299337.P1412548299417687727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299336 (n + 1) - (A299338 (n + 1) + A299338 n)

end

end A299337.P1412548299417687727

namespace A299337

/-- `A299336(n+1)-(A299338(n+1)+A299338(n))` -/
def P1412548299417687727.Spec : Prop :=
  ∀ n, P1412548299417687727.a n = A299337 n

end A299337

/-! ## A299337.P10653970047052683682

`A189980(n+1)/A008805(n+1)*A058187(n)`
-/

namespace A299337.P10653970047052683682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189980 (n + 1 + 10) : ℚ) / (A008805 (n + 1) : ℚ) * (A058187 n : ℚ)

end

end A299337.P10653970047052683682

namespace A299337

/-- `A189980(n+1)/A008805(n+1)*A058187(n)` -/
def P10653970047052683682.Spec : Prop :=
  ∀ n, P10653970047052683682.a n = (A299337 n : ℚ)

end A299337

/-! ## A299337.P6919080421798647998

`∑[A185508(A008805(n))]`
-/

namespace A299337.P6919080421798647998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185508 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P6919080421798647998

namespace A299337

/-- `∑[A185508(A008805(n))]` -/
def P6919080421798647998.Spec : Prop :=
  ∀ n, P6919080421798647998.a n = A299337 n

end A299337

/-! ## A299337.P825241430809079989

`∑[A277951(A329482(n))]`
-/

namespace A299337.P825241430809079989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277951 (A329482 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P825241430809079989

namespace A299337

/-- `∑[A277951(A329482(n))]` -/
def P825241430809079989.Spec : Prop :=
  ∀ n, P825241430809079989.a n = A299337 n

end A299337

/-! ## A299337.P2505744537506068116

`∑[A185786(∑[A057979(n)])]`
-/

namespace A299337.P2505744537506068116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185786 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P2505744537506068116

namespace A299337

/-- `∑[A185786(∑[A057979(n)])]` -/
def P2505744537506068116.Spec : Prop :=
  ∀ n, P2505744537506068116.a n = A299337 n

end A299337

/-! ## A299337.P7437241275622102214

`∑[A185786(A055802(n+3))]`
-/

namespace A299337.P7437241275622102214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185786 (A055802 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P7437241275622102214

namespace A299337

/-- `∑[A185786(A055802(n+3))]` -/
def P7437241275622102214.Spec : Prop :=
  ∀ n, P7437241275622102214.a n = A299337 n

end A299337

/-!
# A299338: Expansion of 1 / ((1 - x)^7*(1 + x)^6).

The programs for A299338, the canonical program `A299338.P9075659924180210676` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299338 has offset 0).

The definition of A299338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-6x^2+6x^3+15x^4-15x^5-20x^6+20x^7+15x^8-15x^9-6x^10+6x^11+x^12-x^13))` (program `A299338.P9075659924180210676`, by `A299338.P9075659924180210676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299338.P9075659924180210676

`ogf(1/(1-x-6x^2+6x^3+15x^4-15x^5-20x^6+20x^7+15x^8-15x^9-6x^10+6x^11+x^12-x^13))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299338

/-- `ogf(1/(1-x-6x^2+6x^3+15x^4-15x^5-20x^6+20x^7+15x^8-15x^9-6x^10+6x^11+x^12-x^13))` -/
def P9075659924180210676.Spec : Prop :=
  ∀ n, P9075659924180210676.a n = A299338 n

theorem P9075659924180210676.correct : P9075659924180210676.Spec := by
  intro n
  simp only [A299338]

end A299338

/-! ## A299338.P3493649860711202520

`C(floor(n/2)+6, 6)`
-/

namespace A299338.P3493649860711202520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 6).toNat 6

end

end A299338.P3493649860711202520

namespace A299338

/-- `C(floor(n/2)+6, 6)` -/
def P3493649860711202520.Spec : Prop :=
  ∀ n, (P3493649860711202520.a n : ℤ) = A299338 n

end A299338

/-! ## A299338.P7876687399934628528

`A000579(floor(n/2)+6)`
-/

namespace A299338.P7876687399934628528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (⌊(n : ℚ) / 2⌋ + 6).toNat

end

end A299338.P7876687399934628528

namespace A299338

/-- `A000579(floor(n/2)+6)` -/
def P7876687399934628528.Spec : Prop :=
  ∀ n, P7876687399934628528.a n = A299338 n

end A299338

/-! ## A299338.P15415885656711819425

`A299337(n)-a(n-1)` with `a(0)=1`
-/

namespace A299338.P15415885656711819425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299337 n - a (n - 1)

end

end A299338.P15415885656711819425

namespace A299338

/-- `A299337(n)-a(n-1)` -/
def P15415885656711819425.Spec : Prop :=
  ∀ n, P15415885656711819425.a n = A299338 n

end A299338

/-! ## A299338.P3544024421765630865

`A189980(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A299338.P3544024421765630865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A189980 (n + 10) + a (n - 2)

end

end A299338.P3544024421765630865

namespace A299338

/-- `A189980(n)+a(n-2)` -/
def P3544024421765630865.Spec : Prop :=
  ∀ n, P3544024421765630865.a n = A299338 n

end A299338

/-! ## A299338.P10849311334903018606

`A299337((n+1)%2+n)/2`
-/

namespace A299338.P10849311334903018606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299337 ((n + 1) % 2 + n) : ℚ) / 2

end

end A299338.P10849311334903018606

namespace A299338

/-- `A299337((n+1)%2+n)/2` -/
def P10849311334903018606.Spec : Prop :=
  ∀ n, P10849311334903018606.a n = (A299338 n : ℚ)

end A299338

/-! ## A299338.P1078759774079813571

`A027818(A008619(n)-1)/A008619(n)`
-/

namespace A299338.P1078759774079813571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027818 (A008619 n - 1).toNat : ℚ) / (A008619 n : ℚ)

end

end A299338.P1078759774079813571

namespace A299338

/-- `A027818(A008619(n)-1)/A008619(n)` -/
def P1078759774079813571.Spec : Prop :=
  ∀ n, P1078759774079813571.a n = (A299338 n : ℚ)

end A299338

/-! ## A299338.P16356534910894456781

`(A160413(Δ[A047382(n+1)])+n-1)*a(n-1)/n` with `a(0)=1`
-/

namespace A299338.P16356534910894456781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A160413 (f1 (n + 1) - f1 n).toNat + ((n : ℤ) - 1) : ℚ) * a (n - 1) / (n : ℚ)

end

end A299338.P16356534910894456781

namespace A299338

/-- `(A160413(Δ[A047382(n+1)])+n-1)*a(n-1)/n` -/
def P16356534910894456781.Spec : Prop :=
  ∀ n, P16356534910894456781.a n = (A299338 n : ℚ)

end A299338

/-! ## A299338.P9961159162619547333

`∑[C(A168230(n+4), A168230(n+1))]`
-/

namespace A299338.P9961159162619547333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A168230 (n + 4)).toNat (A168230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299338.P9961159162619547333

namespace A299338

/-- `∑[C(A168230(n+4), A168230(n+1))]` -/
def P9961159162619547333.Spec : Prop :=
  ∀ n, (P9961159162619547333.a n : ℤ) = A299338 n

end A299338

/-! ## A299338.P1952781999603895929

`A109223(A167614(n+2))`
-/

namespace A299338.P1952781999603895929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (A167614 (n + 2)).toNat

end

end A299338.P1952781999603895929

namespace A299338

/-- `A109223(A167614(n+2))` -/
def P1952781999603895929.Spec : Prop :=
  ∀ n, P1952781999603895929.a n = A299338 n

end A299338

/-! ## A299338.P9541776353202550811

`A109223(A340266(n+2)+1)`
-/

namespace A299338.P9541776353202550811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (A340266 (n + 2) + 1).toNat

end

end A299338.P9541776353202550811

namespace A299338

/-- `A109223(A340266(n+2)+1)` -/
def P9541776353202550811.Spec : Prop :=
  ∀ n, P9541776353202550811.a n = A299338 n

end A299338

/-! ## A299338.P7649084797705623507

`A109221(∑[n+3]+n+3)`
-/

namespace A299338.P7649084797705623507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A299338.P7649084797705623507

namespace A299338

/-- `A109221(∑[n+3]+n+3)` -/
def P7649084797705623507.Spec : Prop :=
  ∀ n, P7649084797705623507.a n = A299338 n

end A299338

/-! ## A299338.P2972116876672097545

`A185509(A008805(n))`
-/

namespace A299338.P2972116876672097545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185509 (A008805 n).toNat

end

end A299338.P2972116876672097545

namespace A299338

/-- `A185509(A008805(n))` -/
def P2972116876672097545.Spec : Prop :=
  ∀ n, P2972116876672097545.a n = A299338 n

end A299338

/-! ## A299338.P11734188741032190822

`A185509(Δ[A006918(n)])`
-/

namespace A299338.P11734188741032190822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185509 (f1 (n + 1) - f1 n).toNat

end

end A299338.P11734188741032190822

namespace A299338

/-- `A185509(Δ[A006918(n)])` -/
def P11734188741032190822.Spec : Prop :=
  ∀ n, P11734188741032190822.a n = A299338 n

end A299338

/-! ## A299338.P7475815525123592837

`A185509(A006918(n+1)-A006918(n))`
-/

namespace A299338.P7475815525123592837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185509 (A006918 (n + 1) - A006918 n).toNat

end

end A299338.P7475815525123592837

namespace A299338

/-- `A185509(A006918(n+1)-A006918(n))` -/
def P7475815525123592837.Spec : Prop :=
  ∀ n, P7475815525123592837.a n = A299338 n

end A299338

/-!
# A299339: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299339, there is no canonical definition to state claims against.
-/

/-! ## A299339.P4802607950759454544

`A299345(∑[4*n]+1)`
-/

namespace A299339.P4802607950759454544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299339.P4802607950759454544

/-! ## A299339.P9955837564709994597

`record[A299345(A272267(n+1))]`
-/

namespace A299339.P9955837564709994597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299339.P9955837564709994597

/-! ## A299339.P5826183195022695922

`record[A299345(A330613(n+1))]`
-/

namespace A299339.P5826183195022695922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299339.P5826183195022695922

/-! ## A299339.P13035600802045959188

`A299345(A001844(n))+char[9]`
-/

namespace A299339.P13035600802045959188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299339.P13035600802045959188

/-! ## A299339.P9843640477333809323

`record[A299345(Δ[A079824(n+1)])]`
-/

namespace A299339.P9843640477333809323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299339.P9843640477333809323

/-!
# A299340: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299340, there is no canonical definition to state claims against.
-/

/-! ## A299340.P2403581878620897870

`A299345(∑[n+2]+4)`
-/

namespace A299340.P2403581878620897870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299340.P2403581878620897870

/-! ## A299340.P15246436827100080902

`A299345(A055998(n)+6)+char[17]`
-/

namespace A299340.P15246436827100080902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299340.P15246436827100080902

/-! ## A299340.P2887907558486848334

`A299345(A034856(n+1)+5)+char[17]`
-/

namespace A299340.P2887907558486848334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299340.P2887907558486848334

/-! ## A299340.P5349092808681554588

`lcm((-1)^n, A299345(A167614(n+1)))`
-/

namespace A299340.P5349092808681554588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A299345 (A167614 (n + 1)).toNat)

end

end A299340.P5349092808681554588

/-! ## A299340.P5231937377738671499

`A299345(A167614(n+1))+A025444(n)`
-/

namespace A299340.P5231937377738671499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A167614 (n + 1)).toNat + A025444 n

end

end A299340.P5231937377738671499

/-!
# A299341: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299341, there is no canonical definition to state claims against.
-/

/-! ## A299341.P6369638074083212319

`A299345(∑[n+3]+7)`
-/

namespace A299341.P6369638074083212319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299341.P6369638074083212319

/-! ## A299341.P14657439125479240803

`A299345(A000217(n+3)+4)+char[17]`
-/

namespace A299341.P14657439125479240803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299341.P14657439125479240803

/-! ## A299341.P3356324141246511277

`A299345(A167614(n+2)+1)+A173012(n+5)`
-/

namespace A299341.P3356324141246511277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A167614 (n + 2) + 1).toNat + A173012 (n + 5)

end

end A299341.P3356324141246511277

/-! ## A299341.P7081679424990373209

`A299345(A000217(n+3)+4)/A007318(∑{e}[n, #])`
-/

namespace A299341.P7081679424990373209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299345 (A000217 (n + 3) + 4).toNat : ℚ) / (A007318 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)

end

end A299341.P7081679424990373209

/-! ## A299341.P484275734546945774

`A299345(A000217(n+3)+4)/A007318(and(1, -n))`
-/

namespace A299341.P484275734546945774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299345 (A000217 (n + 3) + 4).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A299341.P484275734546945774

/-!
# A299342: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299342, there is no canonical definition to state claims against.
-/

/-! ## A299342.P2485393542258531577

`A299345(A374005(n+1))`
-/

namespace A299342.P2485393542258531577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A374005 (n + 1)).toNat

end

end A299342.P2485393542258531577

/-! ## A299342.P8813270122719957544

`A299345(A167499(n+3))`
-/

namespace A299342.P8813270122719957544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A167499 (n + 3)).toNat

end

end A299342.P8813270122719957544

/-! ## A299342.P5335417798944308590

`A299345(A155212(n)+13)`
-/

namespace A299342.P5335417798944308590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A155212 n + 13).toNat

end

end A299342.P5335417798944308590

/-! ## A299342.P316347782895287523

`A299345(A056000(n)+15)`
-/

namespace A299342.P316347782895287523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A056000 n + 15).toNat

end

end A299342.P316347782895287523

/-! ## A299342.P6441391797581723989

`A299345(eq[7, A066657(n)])`
-/

namespace A299342.P6441391797581723989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299342.P6441391797581723989

/-!
# A299343: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299343, there is no canonical definition to state claims against.
-/

/-! ## A299343.P14399460285240780749

`A299345(A374007(n+1))`
-/

namespace A299343.P14399460285240780749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A374007 (n + 1)).toNat

end

end A299343.P14399460285240780749

/-! ## A299343.P8262219920035314965

`A299345(A056115(n)+21)`
-/

namespace A299343.P8262219920035314965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A056115 n + 21).toNat

end

end A299343.P8262219920035314965

/-! ## A299343.P13887247537759262197

`A299345(A167499(n+4)+1)`
-/

namespace A299343.P13887247537759262197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A167499 (n + 4) + 1).toNat

end

end A299343.P13887247537759262197

/-! ## A299343.P1114874795968465094

`A299345(A046691(n+3)+10)`
-/

namespace A299343.P1114874795968465094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A046691 (n + 3) + 10).toNat

end

end A299343.P1114874795968465094

/-! ## A299343.P12092130954008551707

`A299345(A052905(n+2)+11)`
-/

namespace A299343.P12092130954008551707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A052905 (n + 2) + 11).toNat

end

end A299343.P12092130954008551707

/-!
# A299344: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299344, there is no canonical definition to state claims against.
-/

/-! ## A299344.P4871793034585314463

`A299345(A374008(n+1))`
-/

namespace A299344.P4871793034585314463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A374008 (n + 1)).toNat

end

end A299344.P4871793034585314463

/-! ## A299344.P13366006825017549534

`A299345(A056119(n)+28)`
-/

namespace A299344.P13366006825017549534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A056119 n + 28).toNat

end

end A299344.P13366006825017549534

/-! ## A299344.P9654322559696560022

`A299345(eq[11, A066657(n)])`
-/

namespace A299344.P9654322559696560022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299344.P9654322559696560022

/-! ## A299344.P10378274678486026243

`A299345(A166136(n+5)+1)`
-/

namespace A299344.P10378274678486026243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A166136 (n + 5) + 1).toNat

end

end A299344.P10378274678486026243

/-! ## A299344.P15264642071716135278

`A299345(A167614(n+5)+4)`
-/

namespace A299344.P15264642071716135278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A167614 (n + 5) + 4).toNat

end

end A299344.P15264642071716135278

/-!
# A299345: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299345, there is no canonical definition to state claims against.
-/

/-! ## A299345.P18234021272873906043

`A299852(n+1)-A285007(A035607(n))`
-/

namespace A299345.P18234021272873906043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (n + 1) - A285007 (A035607 n).toNat

end

end A299345.P18234021272873906043

/-! ## A299345.P1243398895045505925

`A299852(n+1)-A309785(A331562(n))`
-/

namespace A299345.P1243398895045505925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (n + 1) - A309785 (A331562 n).toNat

end

end A299345.P1243398895045505925

/-! ## A299345.P1124732878311189115

`A299852(n+1)-A309785(A347621(n))`
-/

namespace A299345.P1124732878311189115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (n + 1) - A309785 (A347621 n).toNat

end

end A299345.P1124732878311189115

/-! ## A299345.P7612846618318714270

`xor(A185284(A130348(n)), A299852(n+1))`
-/

namespace A299345.P7612846618318714270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A130348 n).toNat) (A299852 (n + 1))

end

end A299345.P7612846618318714270

/-! ## A299345.P9094703164227494037

`xor(A185284(A206225(n+1)), A299852(n+1))`
-/

namespace A299345.P9094703164227494037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A206225 (n + 1)).toNat) (A299852 (n + 1))

end

end A299345.P9094703164227494037

/-!
# A299346: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299346, there is no canonical definition to state claims against.
-/

/-! ## A299346.P7218297467780489484

`A299350(∑[4*n]+1)`
-/

namespace A299346.P7218297467780489484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299346.P7218297467780489484

/-! ## A299346.P12209830663222964477

`record[A299350(A330613(n+1))]`
-/

namespace A299346.P12209830663222964477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299346.P12209830663222964477

/-! ## A299346.P6826160048165186294

`A299350(A001844(n))+char[10]`
-/

namespace A299346.P6826160048165186294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299346.P6826160048165186294

/-! ## A299346.P6714090373049797768

`record[A003982(n)*A299350(n+1)]`
-/

namespace A299346.P6714090373049797768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299346.P6714090373049797768

/-! ## A299346.P10402088367636113140

`gcd(A025469(n), A299350(A001844(n)))`
-/

namespace A299346.P10402088367636113140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A299350 (A001844 n).toNat)

end

end A299346.P10402088367636113140

/-!
# A299347: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299347, there is no canonical definition to state claims against.
-/

/-! ## A299347.P14523774842568956343

`A299350(A155212(n)+13)`
-/

namespace A299347.P14523774842568956343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A155212 n + 13).toNat

end

end A299347.P14523774842568956343

/-! ## A299347.P15925289647426406600

`A299350(A056000(n)+15)`
-/

namespace A299347.P15925289647426406600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A056000 n + 15).toNat

end

end A299347.P15925289647426406600

/-! ## A299347.P15643508921124920747

`A299350(eq[7, A066657(n)])`
-/

namespace A299347.P15643508921124920747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299347.P15643508921124920747

/-! ## A299347.P879062959905857882

`A299350(A166136(n+3)-1)`
-/

namespace A299347.P879062959905857882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A166136 (n + 3) - 1).toNat

end

end A299347.P879062959905857882

/-! ## A299347.P10220529633821548548

`A299350(A167614(n+3)+2)`
-/

namespace A299347.P10220529633821548548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A167614 (n + 3) + 2).toNat

end

end A299347.P10220529633821548548

/-!
# A299348: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299348, there is no canonical definition to state claims against.
-/

/-! ## A299348.P3040983721871445872

`A299350(A056115(n)+21)`
-/

namespace A299348.P3040983721871445872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A056115 n + 21).toNat

end

end A299348.P3040983721871445872

/-! ## A299348.P5194629932088397704

`A299350(A167499(n+4)+1)`
-/

namespace A299348.P5194629932088397704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A167499 (n + 4) + 1).toNat

end

end A299348.P5194629932088397704

/-! ## A299348.P15315016744629603340

`A299350(A167614(n+4)+3)`
-/

namespace A299348.P15315016744629603340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A167614 (n + 4) + 3).toNat

end

end A299348.P15315016744629603340

/-! ## A299348.P17680218699059904567

`A299350(A000124(n+5)+5)`
-/

namespace A299348.P17680218699059904567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A000124 (n + 5) + 5).toNat

end

end A299348.P17680218699059904567

/-! ## A299348.P14084920250641962107

`A299350(A000096(n+4)+7)`
-/

namespace A299348.P14084920250641962107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A000096 (n + 4) + 7).toNat

end

end A299348.P14084920250641962107

/-!
# A299349: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299349, there is no canonical definition to state claims against.
-/

/-! ## A299349.P11399909175682501347

`A299350(A167487(n+5))`
-/

namespace A299349.P11399909175682501347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A167487 (n + 5)).toNat

end

end A299349.P11399909175682501347

/-! ## A299349.P12042441612982562959

`A299350(A056119(n)+28)`
-/

namespace A299349.P12042441612982562959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A056119 n + 28).toNat

end

end A299349.P12042441612982562959

/-! ## A299349.P4379911970872471390

`A299350(eq[11, A066657(n)])`
-/

namespace A299349.P4379911970872471390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299349.P4379911970872471390

/-! ## A299349.P7786830875159214779

`A299350(A166136(n+5)+1)`
-/

namespace A299349.P7786830875159214779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A166136 (n + 5) + 1).toNat

end

end A299349.P7786830875159214779

/-! ## A299349.P15359196461158949609

`A299350(A167614(n+5)+4)`
-/

namespace A299349.P15359196461158949609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A167614 (n + 5) + 4).toNat

end

end A299349.P15359196461158949609

/-!
# A299350: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299350, there is no canonical definition to state claims against.
-/

/-! ## A299350.P17543817198491132715

`A056039(2*A298221(n+1))`
-/

namespace A299350.P17543817198491132715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (2 * A298221 (n + 1)).toNat

end

end A299350.P17543817198491132715

/-! ## A299350.P5818974222452341290

`A298221(n+1)+A025469(A298719(n+1))`
-/

namespace A299350.P5818974222452341290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (n + 1) + A025469 (A298719 (n + 1)).toNat

end

end A299350.P5818974222452341290

/-! ## A299350.P3986204721460558954

`A056039(A298221(n+1)+A298221(n+1))`
-/

namespace A299350.P3986204721460558954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (A298221 (n + 1) + A298221 (n + 1)).toNat

end

end A299350.P3986204721460558954

/-! ## A299350.P10986163995220072394

`A298221(n+1)+A235145(A303118(n+1))`
-/

namespace A299350.P10986163995220072394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (n + 1) + A235145 (A303118 (n + 1)).toNat

end

end A299350.P10986163995220072394

/-! ## A299350.P13746333005579176834

`A298221(n+1)+A185238(A034852(n))`
-/

namespace A299350.P13746333005579176834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (n + 1) + A185238 (A034852 n).toNat

end

end A299350.P13746333005579176834

/-!
# A299351: For x=n, iterate the map x -> Product_{k is a prime dividing x} (k + 1), a(n) is the number of steps to see a repeated term for the first time.

The programs for A299351, there is no canonical definition to state claims against.
-/

/-! ## A299351.P18103519583643458029

`A086275(A296284(n)+A003338(3*n+4))`
-/

namespace A299351.P18103519583643458029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086275 (A296284 n + A003338 (3 * n + 4)).toNat

end

end A299351.P18103519583643458029

/-! ## A299351.P8818912836153419913

`A106282(A106284(2*n+1))%5`
-/

namespace A299351.P8818912836153419913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106282 (A106284 (2 * n + 1)).toNat) 5

end

end A299351.P8818912836153419913

/-!
# A299353: Number of labeled connected uniform hypergraphs spanning n vertices.

The programs for A299353, there is no canonical definition to state claims against.
-/

/-! ## A299353.P5356940385191615532

`A199847(∑{d}[A112567(n), #])`
-/

namespace A299353.P5356940385191615532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A299353.P5356940385191615532

/-! ## A299353.P22642081493496015

`A039019(3*A327198(n)+1)`
-/

namespace A299353.P22642081493496015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (3 * A327198 n + 1).toNat

end

end A299353.P22642081493496015

/-!
# A299355: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299355, there is no canonical definition to state claims against.
-/

/-! ## A299355.P10441864351594648631

`A299359(∑[4*n]+1)`
-/

namespace A299355.P10441864351594648631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299355.P10441864351594648631

/-! ## A299355.P1345463524880299889

`record[A003982(n)*A299359(n+1)]`
-/

namespace A299355.P1345463524880299889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299355.P1345463524880299889

/-! ## A299355.P99260660516530595

`record[gcd(A157525(n), A299359(n+1))]`
-/

namespace A299355.P99260660516530595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157525 n) (A299359 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299355.P99260660516530595

/-! ## A299355.P16160749315671878743

`A299359(A001844(n))+A025469(n)`
-/

namespace A299355.P16160749315671878743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A001844 n).toNat + A025469 n

end

end A299355.P16160749315671878743

/-! ## A299355.P17370332439917864195

`A014256(n)*A299359(A001844(n))`
-/

namespace A299355.P17370332439917864195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014256 n * A299359 (A001844 n).toNat

end

end A299355.P17370332439917864195

/-!
# A299356: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299356, there is no canonical definition to state claims against.
-/

/-! ## A299356.P1028689477826836116

`A299359(A167499(n+3))`
-/

namespace A299356.P1028689477826836116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A167499 (n + 3)).toNat

end

end A299356.P1028689477826836116

/-! ## A299356.P2476724828093747255

`A299359(A056000(n)+15)`
-/

namespace A299356.P2476724828093747255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A056000 n + 15).toNat

end

end A299356.P2476724828093747255

/-! ## A299356.P5991408414278028360

`A299359(∑[n+5]+6)`
-/

namespace A299356.P5991408414278028360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A299356.P5991408414278028360

/-! ## A299356.P10577908772571588907

`A299359(Δ[A023545(n+1)])+A025444(n)`
-/

namespace A299356.P10577908772571588907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (f1 (n + 1) - f1 n).toNat + A025444 n

end

end A299356.P10577908772571588907

/-!
# A299357: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299357, there is no canonical definition to state claims against.
-/

/-! ## A299357.P6058713114448428820

`A299359(A167614(n+4)+3)`
-/

namespace A299357.P6058713114448428820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A167614 (n + 4) + 3).toNat

end

end A299357.P6058713114448428820

/-! ## A299357.P16716893442723620574

`A299359(A000217(n+5)+6)`
-/

namespace A299357.P16716893442723620574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A000217 (n + 5) + 6).toNat

end

end A299357.P16716893442723620574

/-! ## A299357.P16824650857757731673

`A299359(A046691(n+5)-A005408(n+1))`
-/

namespace A299357.P16824650857757731673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A046691 (n + 5) - A005408 (n + 1)).toNat

end

end A299357.P16824650857757731673

/-! ## A299357.P8578641974513672925

`A299359(A133263(n+3)+A004273(n+7))`
-/

namespace A299357.P8578641974513672925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A133263 (n + 3) + A004273 (n + 7)).toNat

end

end A299357.P8578641974513672925

/-! ## A299357.P10535423681079548038

`A299359(A374007(n+1))`
-/

namespace A299357.P10535423681079548038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A374007 (n + 1)).toNat

end

end A299357.P10535423681079548038

/-!
# A299358: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299358, there is no canonical definition to state claims against.
-/

/-! ## A299358.P1140274204866140170

`A299359(A167487(n+5))`
-/

namespace A299358.P1140274204866140170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A167487 (n + 5)).toNat

end

end A299358.P1140274204866140170

/-! ## A299358.P5925366631625223705

`A299359(A167499(n+5)+2)`
-/

namespace A299358.P5925366631625223705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A167499 (n + 5) + 2).toNat

end

end A299358.P5925366631625223705

/-! ## A299358.P8808147714744694413

`A299359(A000124(n+6)+6)`
-/

namespace A299358.P8808147714744694413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A000124 (n + 6) + 6).toNat

end

end A299358.P8808147714744694413

/-! ## A299358.P9985676466281699578

`A299359(A000217(n+6)+7)`
-/

namespace A299358.P9985676466281699578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A000217 (n + 6) + 7).toNat

end

end A299358.P9985676466281699578

/-! ## A299358.P5594448458257174940

`A299359(A052905(n+3)+12)`
-/

namespace A299358.P5594448458257174940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A052905 (n + 3) + 12).toNat

end

end A299358.P5594448458257174940

/-!
# A299360: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299360, there is no canonical definition to state claims against.
-/

/-! ## A299360.P8628827308674002091

`A299366(∑[4*n]+1)`
-/

namespace A299360.P8628827308674002091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299360.P8628827308674002091

/-! ## A299360.P10258409628586584284

`record[gcd(A114327(n), A299366(n+1))]`
-/

namespace A299360.P10258409628586584284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A299366 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299360.P10258409628586584284

/-! ## A299360.P17817857396969314083

`record[or(-A003987(n), A299366(n+1))]`
-/

namespace A299360.P17817857396969314083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A003987 n) (A299366 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299360.P17817857396969314083

/-! ## A299360.P16893617213279631989

`char[A003188(n)]*A299366(A001844(n))`
-/

namespace A299360.P16893617213279631989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A299366 (A001844 n).toNat

end

end A299360.P16893617213279631989

/-! ## A299360.P12160925864453856444

`A299366(A001844(n))+A000035(2*n)`
-/

namespace A299360.P12160925864453856444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A001844 n).toNat + A000035 (2 * n)

end

end A299360.P12160925864453856444

/-!
# A299361: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299361, there is no canonical definition to state claims against.
-/

/-! ## A299361.P533187105656566662

`A299366(∑[n+2]+4)`
-/

namespace A299361.P533187105656566662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299361.P533187105656566662

/-! ## A299361.P16862195876106702923

`record[gcd(A299366(n+1), A303913(n))]`
-/

namespace A299361.P16862195876106702923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299366 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299361.P16862195876106702923

/-! ## A299361.P18027072078487827846

`A299366(A167614(n+1))+A185284(n)`
-/

namespace A299361.P18027072078487827846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A167614 (n + 1)).toNat + A185284 n

end

end A299361.P18027072078487827846

/-! ## A299361.P4826819812227081000

`gcd(A000038(n), A299366(A167614(n+1)))`
-/

namespace A299361.P4826819812227081000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A299366 (A167614 (n + 1)).toNat)

end

end A299361.P4826819812227081000

/-! ## A299361.P9757312253791353288

`A000041(gcd(n, n+1))*A299366(A046691(n)+7)`
-/

namespace A299361.P9757312253791353288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A299366 (A046691 n + 7).toNat

end

end A299361.P9757312253791353288

/-!
# A299362: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299362, there is no canonical definition to state claims against.
-/

/-! ## A299362.P16394774721842674347

`A299366(A374004(n+1))`
-/

namespace A299362.P16394774721842674347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A374004 (n + 1)).toNat

end

end A299362.P16394774721842674347

/-! ## A299362.P6139140210204494643

`A299366(A141214(n)+7)`
-/

namespace A299362.P6139140210204494643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A141214 n + 7).toNat

end

end A299362.P6139140210204494643

/-! ## A299362.P7945198607055184756

`A299366(A052905(n)+9)`
-/

namespace A299362.P7945198607055184756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A052905 n + 9).toNat

end

end A299362.P7945198607055184756

/-! ## A299362.P896638982993640284

`A299366(A167614(n+2)+1)`
-/

namespace A299362.P896638982993640284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A167614 (n + 2) + 1).toNat

end

end A299362.P896638982993640284

/-! ## A299362.P13489988852719976764

`A299366(Δ[A264443(n)-n²])`
-/

namespace A299362.P13489988852719976764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (f1 (n + 1) - f1 n).toNat

end

end A299362.P13489988852719976764

/-!
# A299363: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299363, there is no canonical definition to state claims against.
-/

/-! ## A299363.P18316432496476434911

`A299366(A374005(n+1))`
-/

namespace A299363.P18316432496476434911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A374005 (n + 1)).toNat

end

end A299363.P18316432496476434911

/-! ## A299363.P13167741023268825065

`A299366(A155212(n)+13)`
-/

namespace A299363.P13167741023268825065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A155212 n + 13).toNat

end

end A299363.P13167741023268825065

/-! ## A299363.P8528165275495959976

`A299366(A056000(n)+15)`
-/

namespace A299363.P8528165275495959976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A056000 n + 15).toNat

end

end A299363.P8528165275495959976

/-! ## A299363.P2241280714143367940

`A299366(A046691(n+2)+9)`
-/

namespace A299363.P2241280714143367940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A046691 (n + 2) + 9).toNat

end

end A299363.P2241280714143367940

/-! ## A299363.P12171908764598928271

`A299366(Δ[A264443(n)])`
-/

namespace A299363.P12171908764598928271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (f1 (n + 1) - f1 n).toNat

end

end A299363.P12171908764598928271

/-!
# A299364: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299364, there is no canonical definition to state claims against.
-/

/-! ## A299364.P12063168770041473036

`A299366(A374007(n+1))`
-/

namespace A299364.P12063168770041473036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A374007 (n + 1)).toNat

end

end A299364.P12063168770041473036

/-! ## A299364.P9396373752091962702

`A299366(eq[6, A130270(n+1)])`
-/

namespace A299364.P9396373752091962702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299364.P9396373752091962702

/-! ## A299364.P833675167079274485

`A299366(eq[7, A131818(n+1)])`
-/

namespace A299364.P833675167079274485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299364.P833675167079274485

/-! ## A299364.P3066121107956849015

`A299366(A000124(n+6)-(n+1))`
-/

namespace A299364.P3066121107956849015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A299364.P3066121107956849015

/-! ## A299364.P14433330903878258506

`A299366(A056119(n)+16)`
-/

namespace A299364.P14433330903878258506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A056119 n + 16).toNat

end

end A299364.P14433330903878258506

/-!
# A299365: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299365, there is no canonical definition to state claims against.
-/

/-! ## A299365.P10610811405450857972

`A299366(A374008(n+1))`
-/

namespace A299365.P10610811405450857972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A374008 (n + 1)).toNat

end

end A299365.P10610811405450857972

/-! ## A299365.P16696584779885199251

`A299366(A000217(n+6)+7)`
-/

namespace A299365.P16696584779885199251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A000217 (n + 6) + 7).toNat

end

end A299365.P16696584779885199251

/-! ## A299365.P12891314870474052253

`A299366(eq[8, A131818(n+1)])`
-/

namespace A299365.P12891314870474052253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299365.P12891314870474052253

/-! ## A299365.P5811469738120377138

`A299366(eq[4, A219347(n)])`
-/

namespace A299365.P5811469738120377138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299365.P5811469738120377138

/-! ## A299365.P16790984783110125322

`A299366(eq[6, A193592(n)])`
-/

namespace A299365.P16790984783110125322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299365.P16790984783110125322

/-!
# A299366: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299366, there is no canonical definition to state claims against.
-/

/-! ## A299366.P17133217060020367042

`A298240(n+1)+A080343(A022168(n))`
-/

namespace A299366.P17133217060020367042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (n + 1) + A080343 (A022168 n).toNat

end

end A299366.P17133217060020367042

/-! ## A299366.P7470473492363466811

`A298240(n+1)+A093879(A176791(n))`
-/

namespace A299366.P7470473492363466811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (n + 1) + A093879 (A176791 n).toNat

end

end A299366.P7470473492363466811

/-! ## A299366.P13550463131119941450

`or(A011738(A022167(n)), A298240(n+1))`
-/

namespace A299366.P13550463131119941450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011738 (A022167 n).toNat) (A298240 (n + 1))

end

end A299366.P13550463131119941450

/-! ## A299366.P10904607268730251389

`or(A030301(A035522(n)), A298240(n+1))`
-/

namespace A299366.P10904607268730251389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030301 (A035522 n).toNat) (A298240 (n + 1))

end

end A299366.P10904607268730251389

/-! ## A299366.P6049336535833693965

`A298240(n+1)+A297155(A189111(n+1))`
-/

namespace A299366.P6049336535833693965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (n + 1) + A297155 (A189111 (n + 1)).toNat

end

end A299366.P6049336535833693965

/-!
# A299367: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299367, there is no canonical definition to state claims against.
-/

/-! ## A299367.P3327062838150797845

`A299373(∑[4*n]+1)`
-/

namespace A299367.P3327062838150797845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299367.P3327062838150797845

/-! ## A299367.P11788892233628483482

`record[A003982(n)*A299373(n+1)]`
-/

namespace A299367.P11788892233628483482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299367.P11788892233628483482

/-! ## A299367.P12906770165972653327

`lcm(A134824(n), A299373(A001844(n)))`
-/

namespace A299367.P12906770165972653327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134824 n) (A299373 (A001844 n).toNat)

end

end A299367.P12906770165972653327

/-! ## A299367.P12425375476475239828

`A299373(A001844(n))+A061127(n+1)`
-/

namespace A299367.P12425375476475239828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A001844 n).toNat + A061127 (n + 1)

end

end A299367.P12425375476475239828

/-! ## A299367.P18421105581765980761

`A299373(A001844(n))+A180834(n+1)`
-/

namespace A299367.P18421105581765980761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A001844 n).toNat + A180834 (n + 1)

end

end A299367.P18421105581765980761

/-!
# A299368: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299368, there is no canonical definition to state claims against.
-/

/-! ## A299368.P11370545130631001929

`A299373(∑[n+2]+4)`
-/

namespace A299368.P11370545130631001929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299368.P11370545130631001929

/-! ## A299368.P7028497821349348300

`A278657(n)*A299373(A167614(n+1))`
-/

namespace A299368.P7028497821349348300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A299373 (A167614 (n + 1)).toNat

end

end A299368.P7028497821349348300

/-! ## A299368.P7290683804082601665

`A299373(A167614(n+1))^A178334(n)`
-/

namespace A299368.P7290683804082601665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299373 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A299368.P7290683804082601665

/-! ## A299368.P15284194663324280729

`or(A000007(n), A299373(A167614(n+1)))`
-/

namespace A299368.P15284194663324280729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299373 (A167614 (n + 1)).toNat)

end

end A299368.P15284194663324280729

/-! ## A299368.P3476577224395434718

`A299373(A167614(n+1))%A299369(n+1)`
-/

namespace A299368.P3476577224395434718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299373 (A167614 (n + 1)).toNat) (A299369 (n + 1))

end

end A299368.P3476577224395434718

/-!
# A299369: Number of n X 4 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299369, there is no canonical definition to state claims against.
-/

/-! ## A299369.P15360529698139684555

`A299373(A374004(n+1))`
-/

namespace A299369.P15360529698139684555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A374004 (n + 1)).toNat

end

end A299369.P15360529698139684555

/-! ## A299369.P7810783459852566092

`A299373(A052905(n)+9)`
-/

namespace A299369.P7810783459852566092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A052905 n + 9).toNat

end

end A299369.P7810783459852566092

/-! ## A299369.P547525077847786375

`A299373(A167614(n+2)+1)`
-/

namespace A299369.P547525077847786375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A167614 (n + 2) + 1).toNat

end

end A299369.P547525077847786375

/-! ## A299369.P8634135560369060948

`A299373(A055998(n+1)+7)`
-/

namespace A299369.P8634135560369060948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A055998 (n + 1) + 7).toNat

end

end A299369.P8634135560369060948

/-! ## A299369.P7068610190661432737

`A299373(eq[5, A131818(n+1)])`
-/

namespace A299369.P7068610190661432737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299369.P7068610190661432737

/-!
# A299370: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299370, there is no canonical definition to state claims against.
-/

/-! ## A299370.P14895906677305514349

`A299373(A374005(n+1))`
-/

namespace A299370.P14895906677305514349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A374005 (n + 1)).toNat

end

end A299370.P14895906677305514349

/-! ## A299370.P7191531092028395663

`A299373(A155212(n)+13)`
-/

namespace A299370.P7191531092028395663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A155212 n + 13).toNat

end

end A299370.P7191531092028395663

/-! ## A299370.P5655851998157591720

`A299373(eq[6, A131818(n+1)])`
-/

namespace A299370.P5655851998157591720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299370.P5655851998157591720

/-! ## A299370.P4528022543084877235

`A299373(eq[4, A193592(n)])`
-/

namespace A299370.P4528022543084877235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299370.P4528022543084877235

/-! ## A299370.P18371834821772737702

`A299373(Δ[A023545(n+1)])`
-/

namespace A299370.P18371834821772737702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (f1 (n + 1) - f1 n).toNat

end

end A299370.P18371834821772737702

/-!
# A299371: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299371, there is no canonical definition to state claims against.
-/

/-! ## A299371.P1119491050722936335

`A299373(A374007(n+1))`
-/

namespace A299371.P1119491050722936335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A374007 (n + 1)).toNat

end

end A299371.P1119491050722936335

/-! ## A299371.P14488949954139819369

`A299373(eq[7, A131818(n+1)])`
-/

namespace A299371.P14488949954139819369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299371.P14488949954139819369

/-! ## A299371.P8881504454465082723

`A299373(eq[3, A219347(n)])`
-/

namespace A299371.P8881504454465082723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299371.P8881504454465082723

/-! ## A299371.P17971620032663283624

`A299373(eq[5, A193592(n)])`
-/

namespace A299371.P17971620032663283624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299371.P17971620032663283624

/-! ## A299371.P9806912089297435940

`A299373(eq[6, A200370(n+1)])`
-/

namespace A299371.P9806912089297435940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299371.P9806912089297435940

/-!
# A299372: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299372, there is no canonical definition to state claims against.
-/

/-! ## A299372.P11913417950779823942

`A299373(A374008(n+1))`
-/

namespace A299372.P11913417950779823942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A374008 (n + 1)).toNat

end

end A299372.P11913417950779823942

/-! ## A299372.P1885893995238034921

`A299373(eq[8, A131818(n+1)])`
-/

namespace A299372.P1885893995238034921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299372.P1885893995238034921

/-! ## A299372.P15415662242802021247

`A299373(eq[4, A219347(n)])`
-/

namespace A299372.P15415662242802021247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299372.P15415662242802021247

/-! ## A299372.P5152581307494668291

`A299373(eq[6, A193592(n)])`
-/

namespace A299372.P5152581307494668291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299372.P5152581307494668291

/-! ## A299372.P5142240712739457822

`A299373(eq[7, A200370(n+1)])`
-/

namespace A299372.P5142240712739457822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299372.P5142240712739457822

/-!
# A299373: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299373, there is no canonical definition to state claims against.
-/

/-! ## A299373.P10760359113177336430

`A342770(A001263(n+1))+A298280(n+1)`
-/

namespace A299373.P10760359113177336430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342770 (A001263 (n + 1)).toNat + A298280 (n + 1)

end

end A299373.P10760359113177336430

/-! ## A299373.P6377930354130929042

`A298280(n+1)+A069283(A301443(n+1))`
-/

namespace A299373.P6377930354130929042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (n + 1) + A069283 (A301443 (n + 1)).toNat

end

end A299373.P6377930354130929042

/-! ## A299373.P4806911117919238846

`A299937(n+1)-A256974(A001263(n+1))`
-/

namespace A299373.P4806911117919238846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (n + 1) - A256974 (A001263 (n + 1)).toNat

end

end A299373.P4806911117919238846

/-! ## A299373.P5676107694866740832

`A299937(A000005(2^n))`
-/

namespace A299373.P5676107694866740832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A000005 (2 ^ n)).toNat

end

end A299373.P5676107694866740832

/-! ## A299373.P4495308522793811746

`A299937(∑[A278657(n)!])`
-/

namespace A299373.P4495308522793811746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299373.P4495308522793811746

/-!
# A299377: Numbers k such that k * 14^k - 1 is prime.

The programs for A299377, there is no canonical definition to state claims against.
-/

/-! ## A299377.P14953040577316441801

`∑[A105272(A055582(n))]`
-/

namespace A299377.P14953040577316441801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A055582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299377.P14953040577316441801

/-!
# A299384: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299384, there is no canonical definition to state claims against.
-/

/-! ## A299384.P13440073801663282149

`A299388(∑[4*n]+1)`
-/

namespace A299384.P13440073801663282149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299384.P13440073801663282149

/-! ## A299384.P7846240720946006100

`record[A299388(Δ[A235355(n)])]`
-/

namespace A299384.P7846240720946006100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299384.P7846240720946006100

/-! ## A299384.P6181302765928075264

`record[A299388(A330613(n+1))]`
-/

namespace A299384.P6181302765928075264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299384.P6181302765928075264

/-! ## A299384.P17590789265891745505

`A299388(A001844(n))+char[12]`
-/

namespace A299384.P17590789265891745505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299384.P17590789265891745505

/-! ## A299384.P2200571767356071740

`A299905(n)+A299388(A001844(n))`
-/

namespace A299384.P2200571767356071740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A299388 (A001844 n).toNat

end

end A299384.P2200571767356071740

/-!
# A299385: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299385, there is no canonical definition to state claims against.
-/

/-! ## A299385.P15369224257959646140

`A299388(A374005(n+1))`
-/

namespace A299385.P15369224257959646140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A374005 (n + 1)).toNat

end

end A299385.P15369224257959646140

/-! ## A299385.P11625133024001221720

`A299388(A167499(n+3))`
-/

namespace A299385.P11625133024001221720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A167499 (n + 3)).toNat

end

end A299385.P11625133024001221720

/-! ## A299385.P18381871317201627800

`A299388(A155212(n)+13)`
-/

namespace A299385.P18381871317201627800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A155212 n + 13).toNat

end

end A299385.P18381871317201627800

/-! ## A299385.P9809848612882020627

`A299388(A056000(n)+15)`
-/

namespace A299385.P9809848612882020627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A056000 n + 15).toNat

end

end A299385.P9809848612882020627

/-! ## A299385.P15763781420375918223

`A299388(A167487(n+3)-2)`
-/

namespace A299385.P15763781420375918223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A167487 (n + 3) - 2).toNat

end

end A299385.P15763781420375918223

/-!
# A299386: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299386, there is no canonical definition to state claims against.
-/

/-! ## A299386.P12593860543639722118

`A299388(A374007(n+1))`
-/

namespace A299386.P12593860543639722118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A374007 (n + 1)).toNat

end

end A299386.P12593860543639722118

/-! ## A299386.P11184633544949516909

`A299388(∑[A020710(n)]+16)`
-/

namespace A299386.P11184633544949516909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A299386.P11184633544949516909

/-! ## A299386.P2243828845052095128

`A299388(A167499(n+4)+1)`
-/

namespace A299386.P2243828845052095128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A167499 (n + 4) + 1).toNat

end

end A299386.P2243828845052095128

/-! ## A299386.P543236688629896706

`A299388(A167614(n+4)+3)`
-/

namespace A299386.P543236688629896706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A167614 (n + 4) + 3).toNat

end

end A299386.P543236688629896706

/-! ## A299386.P16730643048421399145

`A299388(A000124(n+5)+5)`
-/

namespace A299386.P16730643048421399145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A000124 (n + 5) + 5).toNat

end

end A299386.P16730643048421399145

/-!
# A299387: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299387, there is no canonical definition to state claims against.
-/

/-! ## A299387.P2021322354110649064

`A299388(C(n+8, 2)-n)`
-/

namespace A299387.P2021322354110649064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (Nat.choose (n + 8) 2 - n)

end

end A299387.P2021322354110649064

/-! ## A299387.P8326323705673636321

`A299388(A374008(n+1))`
-/

namespace A299387.P8326323705673636321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A374008 (n + 1)).toNat

end

end A299387.P8326323705673636321

/-! ## A299387.P15682377541696578022

`A299388(A056119(n)+28)`
-/

namespace A299387.P15682377541696578022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A056119 n + 28).toNat

end

end A299387.P15682377541696578022

/-! ## A299387.P10584465998667642288

`A299388(A000124(n+6)+6)`
-/

namespace A299387.P10584465998667642288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A000124 (n + 6) + 6).toNat

end

end A299387.P10584465998667642288

/-! ## A299387.P16225412761372596521

`A299388(A000096(n+5)+8)`
-/

namespace A299387.P16225412761372596521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A000096 (n + 5) + 8).toNat

end

end A299387.P16225412761372596521

/-!
# A299388: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299388, there is no canonical definition to state claims against.
-/

/-! ## A299388.P7736445965130753457

`A298294(n+1)+A025466(A299905(n))`
-/

namespace A299388.P7736445965130753457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (n + 1) + A025466 (A299905 n).toNat

end

end A299388.P7736445965130753457

/-! ## A299388.P421112913577095774

`or(A298294(n+1), A321936(A067049(n)))`
-/

namespace A299388.P421112913577095774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A298294 (n + 1)) (A321936 (A067049 n).toNat)

end

end A299388.P421112913577095774

/-! ## A299388.P16404542877094207128

`A298294(n+1)+A002265(A010894(n))`
-/

namespace A299388.P16404542877094207128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (n + 1) + A002265 (A010894 (n + 21)).toNat

end

end A299388.P16404542877094207128

/-! ## A299388.P6417305390403529152

`or(A173677(A061426(n+1)), A298294(n+1))`
-/

namespace A299388.P6417305390403529152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173677 (A061426 (n + 1)).toNat) (A298294 (n + 1))

end

end A299388.P6417305390403529152

/-! ## A299388.P14756290424799927246

`or(A236859(A185245(n)), A298294(n+1))`
-/

namespace A299388.P14756290424799927246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A236859 (A185245 n).toNat) (A298294 (n + 1))

end

end A299388.P14756290424799927246

/-!
# A299389: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299389, there is no canonical definition to state claims against.
-/

/-! ## A299389.P1134936007875936088

`A299393(∑[4*n]+1)`
-/

namespace A299389.P1134936007875936088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299389.P1134936007875936088

/-! ## A299389.P4171318095698292461

`and(-1, A299393(A001844(n)))`
-/

namespace A299389.P4171318095698292461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299393 (A001844 n).toNat)

end

end A299389.P4171318095698292461

/-! ## A299389.P12238763345177136557

`A299393(A001844(n))+A025469(n)`
-/

namespace A299389.P12238763345177136557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A001844 n).toNat + A025469 n

end

end A299389.P12238763345177136557

/-! ## A299389.P15985599010249199537

`A299393(A001844(n))+A185284(n)`
-/

namespace A299389.P15985599010249199537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A001844 n).toNat + A185284 n

end

end A299389.P15985599010249199537

/-! ## A299389.P1377121172124361594

`A299393(A001844(n))+A235145(n)`
-/

namespace A299389.P1377121172124361594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A001844 n).toNat + A235145 n

end

end A299389.P1377121172124361594

/-!
# A299390: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299390, there is no canonical definition to state claims against.
-/

/-! ## A299390.P93870641296507071

`A299393(A374005(n+1))`
-/

namespace A299390.P93870641296507071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A374005 (n + 1)).toNat

end

end A299390.P93870641296507071

/-! ## A299390.P12813554132225151247

`A299393(A155212(n)+13)`
-/

namespace A299390.P12813554132225151247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A155212 n + 13).toNat

end

end A299390.P12813554132225151247

/-! ## A299390.P2547176891314111177

`A299393(A056000(n)+15)`
-/

namespace A299390.P2547176891314111177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A056000 n + 15).toNat

end

end A299390.P2547176891314111177

/-! ## A299390.P14630752628953008585

`A299393(eq[7, A066657(n)])`
-/

namespace A299390.P14630752628953008585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299390.P14630752628953008585

/-! ## A299390.P11062522579275006849

`A299393(A166136(n+3)-1)`
-/

namespace A299390.P11062522579275006849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A166136 (n + 3) - 1).toNat

end

end A299390.P11062522579275006849

/-!
# A299391: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299391, there is no canonical definition to state claims against.
-/

/-! ## A299391.P1734886196751455393

`A299393(A374007(n+1))`
-/

namespace A299391.P1734886196751455393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A374007 (n + 1)).toNat

end

end A299391.P1734886196751455393

/-! ## A299391.P1933718102958789239

`A299393(A056115(n)+21)`
-/

namespace A299391.P1933718102958789239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A056115 n + 21).toNat

end

end A299391.P1933718102958789239

/-! ## A299391.P7746953193598752280

`A299393(A167499(n+4)+1)`
-/

namespace A299391.P7746953193598752280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A167499 (n + 4) + 1).toNat

end

end A299391.P7746953193598752280

/-! ## A299391.P5390905915854654892

`A299393(A167614(n+4)+3)`
-/

namespace A299391.P5390905915854654892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A167614 (n + 4) + 3).toNat

end

end A299391.P5390905915854654892

/-! ## A299391.P4783432983983048539

`A299393(A000124(n+5)+5)`
-/

namespace A299391.P4783432983983048539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A000124 (n + 5) + 5).toNat

end

end A299391.P4783432983983048539

/-!
# A299392: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299392, there is no canonical definition to state claims against.
-/

/-! ## A299392.P8986973422256560722

`A299393(A374008(n+1))`
-/

namespace A299392.P8986973422256560722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A374008 (n + 1)).toNat

end

end A299392.P8986973422256560722

/-! ## A299392.P6597789849626352768

`A299393(A056119(n)+28)`
-/

namespace A299392.P6597789849626352768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A056119 n + 28).toNat

end

end A299392.P6597789849626352768

/-! ## A299392.P12859387201909221407

`A299393(eq[11, A066657(n)])`
-/

namespace A299392.P12859387201909221407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299392.P12859387201909221407

/-! ## A299392.P11340006659638360817

`A299393(A167499(n+5)+2)`
-/

namespace A299392.P11340006659638360817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A167499 (n + 5) + 2).toNat

end

end A299392.P11340006659638360817

/-! ## A299392.P14177134523984113933

`A299393(A000217(n+6)+7)`
-/

namespace A299392.P14177134523984113933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A000217 (n + 6) + 7).toNat

end

end A299392.P14177134523984113933

/-!
# A299393: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299393, there is no canonical definition to state claims against.
-/

/-! ## A299393.P14751881281152894056

`A298320(n+1)+A185284(A334546(n))`
-/

namespace A299393.P14751881281152894056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (n + 1) + A185284 (A334546 n).toNat

end

end A299393.P14751881281152894056

/-! ## A299393.P11857722393703986213

`A298320(n+1)+A185284(A252463(n+1))`
-/

namespace A299393.P11857722393703986213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (n + 1) + A185284 (A252463 (n + 1)).toNat

end

end A299393.P11857722393703986213

/-!
# A299394: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299394, there is no canonical definition to state claims against.
-/

/-! ## A299394.P16734244406067453373

`A299398(∑[4*n]+1)`
-/

namespace A299394.P16734244406067453373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299394.P16734244406067453373

/-! ## A299394.P16344801588136828873

`A141604(n)*A299398(A001844(n))`
-/

namespace A299394.P16344801588136828873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141604 n * A299398 (A001844 n).toNat

end

end A299394.P16344801588136828873

/-! ## A299394.P7316362699070537927

`lcm(A033999(n), A299398(A001844(n)))`
-/

namespace A299394.P7316362699070537927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299398 (A001844 n).toNat)

end

end A299394.P7316362699070537927

/-! ## A299394.P5199318952632178859

`or(A065717(n), A299398(A001844(n)))`
-/

namespace A299394.P5199318952632178859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065717 n) (A299398 (A001844 n).toNat)

end

end A299394.P5199318952632178859

/-! ## A299394.P11698622254183111230

`A299398(A001844(n))+A008683(9*(n+1))`
-/

namespace A299394.P11698622254183111230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A001844 n).toNat + A008683 (9 * (n + 1))

end

end A299394.P11698622254183111230

/-!
# A299395: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299395, there is no canonical definition to state claims against.
-/

/-! ## A299395.P17675781831531759382

`A299398(A374005(n+1))`
-/

namespace A299395.P17675781831531759382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A374005 (n + 1)).toNat

end

end A299395.P17675781831531759382

/-! ## A299395.P11775685311631609276

`A299398(A167499(n+3))`
-/

namespace A299395.P11775685311631609276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A167499 (n + 3)).toNat

end

end A299395.P11775685311631609276

/-! ## A299395.P1815289179869780638

`A299398(A155212(n)+13)`
-/

namespace A299395.P1815289179869780638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A155212 n + 13).toNat

end

end A299395.P1815289179869780638

/-! ## A299395.P6003716077915082807

`A299398(A056000(n)+15)`
-/

namespace A299395.P6003716077915082807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A056000 n + 15).toNat

end

end A299395.P6003716077915082807

/-! ## A299395.P8284398927284015453

`A299398(eq[6, A131818(n+1)])`
-/

namespace A299395.P8284398927284015453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299395.P8284398927284015453

/-!
# A299396: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299396, there is no canonical definition to state claims against.
-/

/-! ## A299396.P8459236274008967212

`A299398(A374007(n+1))`
-/

namespace A299396.P8459236274008967212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A374007 (n + 1)).toNat

end

end A299396.P8459236274008967212

/-! ## A299396.P5930438717028805581

`A299398(A056115(n)+21)`
-/

namespace A299396.P5930438717028805581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A056115 n + 21).toNat

end

end A299396.P5930438717028805581

/-! ## A299396.P7940282863029632783

`A299398(eq[7, A131818(n+1)])`
-/

namespace A299396.P7940282863029632783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299396.P7940282863029632783

/-! ## A299396.P14071344756383087008

`A299398(A052905(n+3))`
-/

namespace A299396.P14071344756383087008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A052905 (n + 3)).toNat

end

end A299396.P14071344756383087008

/-! ## A299396.P2919886474020051213

`A299398(eq[5, A193592(n)])`
-/

namespace A299396.P2919886474020051213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299396.P2919886474020051213

/-!
# A299397: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299397, there is no canonical definition to state claims against.
-/

/-! ## A299397.P14670986318252081782

`A299398(A374008(n+1))`
-/

namespace A299397.P14670986318252081782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A374008 (n + 1)).toNat

end

end A299397.P14670986318252081782

/-! ## A299397.P14883666336748483274

`A299398(eq[8, A131818(n+1)])`
-/

namespace A299397.P14883666336748483274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299397.P14883666336748483274

/-! ## A299397.P9002456781767994314

`A299398(A056121(n)+22)`
-/

namespace A299397.P9002456781767994314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A056121 n + 22).toNat

end

end A299397.P9002456781767994314

/-! ## A299397.P17736527581080153832

`A299398(eq[6, A193592(n)])`
-/

namespace A299397.P17736527581080153832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299397.P17736527581080153832

/-! ## A299397.P16942446949379953384

`A299398(eq[7, A200370(n+1)])`
-/

namespace A299397.P16942446949379953384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299397.P16942446949379953384

/-!
# A299399: a(n) = a(n-1)*a(n-2)*a(n-3)*a(n-4); a(0..3) = (1, 1, 2, 3).

The programs for A299399, the canonical program `A299399.P3084922686928374511` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299399 has offset 0).

The definition of A299399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)*a(n-4)` (program `A299399.P3084922686928374511`, by `A299399.P3084922686928374511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299399.P17458160303228159141

`a(n-1)²/a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`
-/

namespace A299399.P17458160303228159141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 3, 6] fun n a =>
  a (n - 1) ^ 2 / a (n - 5)

end

end A299399.P17458160303228159141

namespace A299399

/-- `a(n-1)²/a(n-5)` -/
def P17458160303228159141.Spec : Prop :=
  ∀ n, P17458160303228159141.a n = (A299399 n : ℚ)

end A299399

/-! ## A299399.P3084922686928374511

`a(n-1)*a(n-2)*a(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299399

/-- `a(n-1)*a(n-2)*a(n-3)*a(n-4)` -/
def P3084922686928374511.Spec : Prop :=
  ∀ n, (P3084922686928374511.a n : ℤ) = A299399 n

theorem P3084922686928374511.correct : P3084922686928374511.Spec := by
  intro n
  simp only [A299399]

end A299399

/-! ## A299399.P9672330458776322088

`2^A001631(n)*3^A000078(n)`
-/

namespace A299399.P9672330458776322088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001631 n : ℤ) * (3 : ℚ) ^ (A000078 n : ℤ)

end

end A299399.P9672330458776322088

namespace A299399

/-- `2^A001631(n)*3^A000078(n)` -/
def P9672330458776322088.Spec : Prop :=
  ∀ n, P9672330458776322088.a n = (A299399 n : ℚ)

end A299399

