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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A005401: High-temperature series for Heisenberg model susceptibility on square lattice.

The programs for A005401, there is no canonical definition to state claims against.
-/

/-! ## A005401.P14248516497499853506

`A020707(n)*A294652(A000084(n+1))`
-/

namespace A005401.P14248516497499853506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n * A294652 (A000084 (n + 1)).toNat

end

end A005401.P14248516497499853506

/-!
# A005403: Number of protruded partitions of n with largest part at most 2.

The programs for A005403, the canonical program `A005403.P13500853019131369691` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005403 has offset 1).

The definition of A005403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005403.P13500853019131369691

`A000045(n+5)-A013979(n+6)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005403

/-- `A000045(n+5)-A013979(n+6)` -/
def P13500853019131369691.Spec : Prop :=
  ∀ n, P13500853019131369691.a n = A005403 (n + 1)

theorem P13500853019131369691.correct : P13500853019131369691.Spec := by
  intro n
  simp only [A005403, Nat.add_sub_cancel]

end A005403

/-! ## A005403.P5572216010253122989

`A212804(n+6)-A013979(n+6)`
-/

namespace A005403.P5572216010253122989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 6) - A013979 (n + 6)

end

end A005403.P5572216010253122989

namespace A005403

/-- `A212804(n+6)-A013979(n+6)` -/
def P5572216010253122989.Spec : Prop :=
  ∀ n, P5572216010253122989.a n = A005403 (n + 1)

end A005403

/-! ## A005403.P18053936691866010899

`A143281(n+4)-a(n-1)` with `a(0)=1`
-/

namespace A005403.P18053936691866010899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143281 (n + 4) - a (n - 1)

end

end A005403.P18053936691866010899

namespace A005403

/-- `A143281(n+4)-a(n-1)` -/
def P18053936691866010899.Spec : Prop :=
  ∀ n, P18053936691866010899.a n = A005403 (n + 1)

end A005403

/-! ## A005403.P2293134661989085868

`Δ[A000071(n+6)-A023435(n+6)]`
-/

namespace A005403.P2293134661989085868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 6) - A023435 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005403.P2293134661989085868

namespace A005403

/-- `Δ[A000071(n+6)-A023435(n+6)]` -/
def P2293134661989085868.Spec : Prop :=
  ∀ n, P2293134661989085868.a n = A005403 (n + 1)

end A005403

/-! ## A005403.P12911060004356742391

`record[A058071(n+10)]-A107458(n+10)`
-/

namespace A005403.P12911060004356742391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A107458 (n + 10)

end

end A005403.P12911060004356742391

namespace A005403

/-- `record[A058071(n+10)]-A107458(n+10)` -/
def P12911060004356742391.Spec : Prop :=
  ∀ n, P12911060004356742391.a n = A005403 (n + 1)

end A005403

/-!
# A005404: Number of protruded partitions of n with largest part at most 3.

The programs for A005404, there is no canonical definition to state claims against.
-/

/-! ## A005404.P14245503791197489409

`A185283(floor(sqrt(A036084(n))))`
-/

namespace A005404.P14245503791197489409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (Int.sqrt (A036084 n)).toNat

end

end A005404.P14245503791197489409

/-! ## A005404.P6759370684019636641

`A185283(ceil(sqrt(A036084(n))))`
-/

namespace A005404.P6759370684019636641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 ⌈Real.sqrt (A036084 n : ℝ)⌉.toNat

end

end A005404.P6759370684019636641

/-! ## A005404.P9978289864138468823

`A185283(round(sqrt(A036084(n))))`
-/

namespace A005404.P9978289864138468823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (SequenceMachineLib.roundAway (Real.sqrt (A036084 n : ℝ))).toNat

end

end A005404.P9978289864138468823

/-! ## A005404.P17955876459809470226

`∑[A003056(A094556(n)+A025192(n))]`
-/

namespace A005404.P17955876459809470226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A094556 n + A025192 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005404.P17955876459809470226

/-! ## A005404.P15984042495819078276

`∑[A003056(A100702(n)+A094556(n))]`
-/

namespace A005404.P15984042495819078276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A100702 n + A094556 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005404.P15984042495819078276

/-!
# A005405: Number of protruded partitions of n with largest part at most 4.

The programs for A005405, there is no canonical definition to state claims against.
-/

/-! ## A005405.P4597983122844502713

`∑[A329990(record[A001037(n)])]`
-/

namespace A005405.P4597983122844502713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329990 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005405.P4597983122844502713

/-! ## A005405.P7194558446667286809

`A000219(n+1)-A144625(floor(2^(n-1)))`
-/

namespace A005405.P7194558446667286809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) - A144625 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A005405.P7194558446667286809

/-! ## A005405.P7899687251304453962

`A327188(n)+A005041(A087206(n))`
-/

namespace A005405.P7899687251304453962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327188 n + A005041 (A087206 n).toNat

end

end A005405.P7899687251304453962

/-! ## A005405.P6078033360155892810

`A090848(A019302(n)-A004526(n))`
-/

namespace A005405.P6078033360155892810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090848 (A019302 n - A004526 n).toNat

end

end A005405.P6078033360155892810

/-!
# A005406: Number of protruded partitions of n with largest part at most 5.

The programs for A005406, there is no canonical definition to state claims against.
-/

/-! ## A005406.P4657137070270117905

`record[A365381(n)+round(2*n/3)]`
-/

namespace A005406.P4657137070270117905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365381 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005406.P4657137070270117905

/-! ## A005406.P17710053820462633637

`A005041(A384672(n))`
-/

namespace A005406.P17710053820462633637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A384672 n).toNat

end

end A005406.P17710053820462633637

/-! ## A005406.P1437883345458747715

`A005041(A390824(n))`
-/

namespace A005406.P1437883345458747715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A390824 n).toNat

end

end A005406.P1437883345458747715

/-! ## A005406.P8400103404662231501

`A005041(Δ[A104630(n)])`
-/

namespace A005406.P8400103404662231501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (n + 1) - f1 n).toNat

end

end A005406.P8400103404662231501

/-!
# A005407: Number of protruded partitions of n with largest part at most 6.

The programs for A005407, there is no canonical definition to state claims against.
-/

/-! ## A005407.P8462194354499232594

`floor(sqrt(A045337(3^n)))`
-/

namespace A005407.P8462194354499232594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A045337 (3 ^ n))

end

end A005407.P8462194354499232594

/-! ## A005407.P3618021706834554013

`record[A365381(n)+A065855(n+3)]`
-/

namespace A005407.P3618021706834554013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365381 n + A065855 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005407.P3618021706834554013

/-! ## A005407.P13515777321907407216

`A099920(n)+A000196(A217778(n))`
-/

namespace A005407.P13515777321907407216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n + A000196 (A217778 n).toNat

end

end A005407.P13515777321907407216

/-! ## A005407.P9055035273379612246

`A202305(A090857(n))-A000031(n)`
-/

namespace A005407.P9055035273379612246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A090857 n).toNat - A000031 n

end

end A005407.P9055035273379612246

/-!
# A005408: The odd numbers: a(n) = 2*n + 1.

The programs for A005408, the canonical program `A005408.P17437947328870227736` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005408 has offset 0).

The definition of A005408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+1` (program `A005408.P17437947328870227736`, by `A005408.P17437947328870227736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005408.P17437947328870227736

`2*n+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005408

/-- `2*n+1` -/
def P17437947328870227736.Spec : Prop :=
  ∀ n, (P17437947328870227736.a n : ℤ) = A005408 n

theorem P17437947328870227736.correct : P17437947328870227736.Spec := by
  intro n
  simp only [A005408]

end A005408

/-!
# A005409: Number of polynomials of height n: a(1)=1, a(2)=1, a(3)=4, a(n) = 2*a(n-1) + a(n-2) + 2 for n >= 4.

The programs for A005409, the canonical program `A005409.P11769483472208649939` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005409 has offset 1).

The definition of A005409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+2` (program `A005409.P11769483472208649939`, by `A005409.P11769483472208649939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005409.P11769483472208649939

`2*a(n-1)+a(n-2)+2` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005409

/-- `2*a(n-1)+a(n-2)+2` -/
def P11769483472208649939.Spec : Prop :=
  ∀ n, (P11769483472208649939.a n : ℤ) = A005409 (n + 1)

theorem P11769483472208649939.correct : P11769483472208649939.Spec := by
  intro n
  simp only [A005409, Nat.add_sub_cancel]

end A005409

/-! ## A005409.P5388201800905174250

`ogf((1-2x+2x^2+x^3)/(1-3x+x^2+x^3))`
-/

namespace A005409.P5388201800905174250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 1] [1, -3, 1, 1] n

end

end A005409.P5388201800905174250

namespace A005409

/-- `ogf((1-2x+2x^2+x^3)/(1-3x+x^2+x^3))` -/
def P5388201800905174250.Spec : Prop :=
  ∀ n, P5388201800905174250.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P17737774459530849635

`ceil((sqrt(2)+1)*a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A005409.P17737774459530849635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌉ + 1

end

end A005409.P17737774459530849635

namespace A005409

/-- `ceil((sqrt(2)+1)*a(n-1))+1` -/
def P17737774459530849635.Spec : Prop :=
  ∀ n, P17737774459530849635.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P10263445610719128369

`a(n-1)+2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A005409.P10263445610719128369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + a (n - 2))

end

end A005409.P10263445610719128369

namespace A005409

/-- `a(n-1)+2+a(n-1)+a(n-2)` -/
def P10263445610719128369.Spec : Prop :=
  ∀ n, (P10263445610719128369.a n : ℤ) = A005409 (n + 1)

theorem P10263445610719128369.correct : P10263445610719128369.Spec := by
  intro n
  simp only [A005409, Nat.add_sub_cancel, A005409.P10263445610719128369.a, A005409.P11769483472208649939.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005409

/-! ## A005409.P6603035618693755631

`∑[xor(1, A265278(n))]`
-/

namespace A005409.P6603035618693755631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A265278 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005409.P6603035618693755631

namespace A005409

/-- `∑[xor(1, A265278(n))]` -/
def P6603035618693755631.Spec : Prop :=
  ∀ n, P6603035618693755631.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P8355565814039255119

`∑[A001333(n)-char[1]]`
-/

namespace A005409.P8355565814039255119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005409.P8355565814039255119

namespace A005409

/-- `∑[A001333(n)-char[1]]` -/
def P8355565814039255119.Spec : Prop :=
  ∀ n, P8355565814039255119.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P16559975376284064406

`A034182(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A005409.P16559975376284064406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A034182 n - a (n - 1)

end

end A005409.P16559975376284064406

namespace A005409

/-- `A034182(n)-a(n-1)` -/
def P16559975376284064406.Spec : Prop :=
  ∀ n, P16559975376284064406.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P12371641781571801960

`A000129(n+1)-ceil(abs(sin(n)))`
-/

namespace A005409.P12371641781571801960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A005409.P12371641781571801960

namespace A005409

/-- `A000129(n+1)-ceil(abs(sin(n)))` -/
def P12371641781571801960.Spec : Prop :=
  ∀ n, P12371641781571801960.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P6243437827802080900

`A215928(n+1)-ceil(abs(sin(n)))`
-/

namespace A005409.P6243437827802080900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A005409.P6243437827802080900

namespace A005409

/-- `A215928(n+1)-ceil(abs(sin(n)))` -/
def P6243437827802080900.Spec : Prop :=
  ∀ n, P6243437827802080900.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P3592791036364081595

`A052542(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A005409.P3592791036364081595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A052542 n + a (n - 2)

end

end A005409.P3592791036364081595

namespace A005409

/-- `A052542(n)+a(n-2)` -/
def P3592791036364081595.Spec : Prop :=
  ∀ n, P3592791036364081595.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P9321058690948650366

`∑[A002965(2*n+1)-char[1]]`
-/

namespace A005409.P9321058690948650366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005409.P9321058690948650366

namespace A005409

/-- `∑[A002965(2*n+1)-char[1]]` -/
def P9321058690948650366.Spec : Prop :=
  ∀ n, P9321058690948650366.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P8229163007764884649

`A000129(floor(acot(n))+n+1)-1`
-/

namespace A005409.P8229163007764884649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat - 1

end

end A005409.P8229163007764884649

namespace A005409

/-- `A000129(floor(acot(n))+n+1)-1` -/
def P8229163007764884649.Spec : Prop :=
  ∀ n, P8229163007764884649.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P12172135139000821965

`A078057(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A005409.P12172135139000821965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A078057 (n - 1) + a (n - 1)

end

end A005409.P12172135139000821965

namespace A005409

/-- `A078057(n-1)+a(n-1)` -/
def P12172135139000821965.Spec : Prop :=
  ∀ n, P12172135139000821965.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P9279973877573155292

`A293004(n)+A215928(n)`
-/

namespace A005409.P9279973877573155292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + A215928 n

end

end A005409.P9279973877573155292

namespace A005409

/-- `A293004(n)+A215928(n)` -/
def P9279973877573155292.Spec : Prop :=
  ∀ n, P9279973877573155292.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P12832009912302566875

`∑[A001333(n)]-A057427(n)`
-/

namespace A005409.P12832009912302566875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A005409.P12832009912302566875

namespace A005409

/-- `∑[A001333(n)]-A057427(n)` -/
def P12832009912302566875.Spec : Prop :=
  ∀ n, P12832009912302566875.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P12601115761612824155

`A000129(A028310(n)+1)-1`
-/

namespace A005409.P12601115761612824155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A028310 n + 1).toNat - 1

end

end A005409.P12601115761612824155

namespace A005409

/-- `A000129(A028310(n)+1)-1` -/
def P12601115761612824155.Spec : Prop :=
  ∀ n, P12601115761612824155.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P16243035505737078449

`A215928(A028310(n)+1)-1`
-/

namespace A005409.P16243035505737078449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (A028310 n + 1).toNat - 1

end

end A005409.P16243035505737078449

namespace A005409

/-- `A215928(A028310(n)+1)-1` -/
def P16243035505737078449.Spec : Prop :=
  ∀ n, P16243035505737078449.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P14479276784542336470

`A057428(n)+A000129(n+1)`
-/

namespace A005409.P14479276784542336470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A000129 (n + 1)

end

end A005409.P14479276784542336470

namespace A005409

/-- `A057428(n)+A000129(n+1)` -/
def P14479276784542336470.Spec : Prop :=
  ∀ n, P14479276784542336470.a n = A005409 (n + 1)

end A005409

/-! ## A005409.P4797505084967821467

`A000129(n+1)-A057427(n)`
-/

namespace A005409.P4797505084967821467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A057427 n

end

end A005409.P4797505084967821467

namespace A005409

/-- `A000129(n+1)-A057427(n)` -/
def P4797505084967821467.Spec : Prop :=
  ∀ n, P4797505084967821467.a n = A005409 (n + 1)

end A005409

/-!
# A005410: a(n) = largest integer m such that every n-point interval order contains an m-point semiorder.

The programs for A005410, there is no canonical definition to state claims against.
-/

/-! ## A005410.P17938711294239262128

`ceil(∑[13/(n+18)])`
-/

namespace A005410.P17938711294239262128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  13 / (n + 18 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A005410.P17938711294239262128

/-! ## A005410.P13002250221281549766

`floor(cosh(sqrt(sqrt(5*n))))`
-/

namespace A005410.P13002250221281549766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.sqrt (Real.sqrt (5 * n : ℝ)))⌋

end

end A005410.P13002250221281549766

/-! ## A005410.P15794280925427414020

`round(sqrt(n^cosh(1)))+1`
-/

namespace A005410.P15794280925427414020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℝ) ^ (Real.cosh (1 : ℝ)))) + 1

end

end A005410.P15794280925427414020

/-! ## A005410.P511195722397027290

`round(sqrt(n^cot(10)))+1`
-/

namespace A005410.P511195722397027290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℝ) ^ (Real.cot (10 : ℝ)))) + 1

end

end A005410.P511195722397027290

/-! ## A005410.P7435177615367571853

`round(∑[2*acot(∑[acot(n)])])`
-/

namespace A005410.P7435177615367571853
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.acot (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005410.P7435177615367571853

/-!
# A005411: Number of non-vanishing Feynman diagrams of order 2n for the electron or the photon propagators in quantum electrodynamics.

The programs for A005411, there is no canonical definition to state claims against.
-/

/-! ## A005411.P11027279925799264154

`A258220(∑[n])`
-/

namespace A005411.P11027279925799264154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005411.P11027279925799264154

/-! ## A005411.P14377446893193122298

`A258219(∑[n]+n)`
-/

namespace A005411.P14377446893193122298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005411.P14377446893193122298

/-! ## A005411.P14733920222194594887

`gcd(A000038(n), A258220(A000217(n)))`
-/

namespace A005411.P14733920222194594887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258220 (A000217 n).toNat)

end

end A005411.P14733920222194594887

/-! ## A005411.P9962382397929069623

`or(A000007(n), A258220(A000217(n)))`
-/

namespace A005411.P9962382397929069623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A258220 (A000217 n).toNat)

end

end A005411.P9962382397929069623

/-! ## A005411.P3502133683587300722

`A112316(n)!*A258220(A000217(n))`
-/

namespace A005411.P3502133683587300722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A112316 n).toNat : ℤ) * A258220 (A000217 n).toNat

end

end A005411.P3502133683587300722

/-! ## A005411.P8246089093576718392

`A258220(A000217(n))+A000038(A065033(n))`
-/

namespace A005411.P8246089093576718392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258220 (A000217 n).toNat + A000038 (A065033 n).toNat

end

end A005411.P8246089093576718392

/-! ## A005411.P12921127745794024424

`A258220(A000217(n))+A000038(A093178(n))`
-/

namespace A005411.P12921127745794024424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258220 (A000217 n).toNat + A000038 (A093178 n).toNat

end

end A005411.P12921127745794024424

/-!
# A005412: Number of non-vanishing Feynman diagrams of order 2n for the vacuum polarization (the proper two-point function of the photon) and for the self-energy (the proper two-point function of the electron) in quantum electrodynamics (QED).

The programs for A005412, there is no canonical definition to state claims against.
-/

/-! ## A005412.P2514126098336167313

`A258219(∑[n+3])`
-/

namespace A005412.P2514126098336167313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005412.P2514126098336167313

/-! ## A005412.P17508153139364010609

`record[A258219(A055998(A008611(n)))]`
-/

namespace A005412.P17508153139364010609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005412.P17508153139364010609

/-! ## A005412.P4727724501963633598

`record[A258219(A055998(A134478(n)))]`
-/

namespace A005412.P4727724501963633598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (A055998 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005412.P4727724501963633598

/-! ## A005412.P17318901654187146593

`record[A258219(A055998(A000188(n+1)))]`
-/

namespace A005412.P17318901654187146593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (A055998 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005412.P17318901654187146593

/-! ## A005412.P11882746923453821289

`record[A258219(A055998(A056239(n+1)))]`
-/

namespace A005412.P11882746923453821289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (A055998 (A056239 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005412.P11882746923453821289

/-! ## A005412.P17449930210693460929

`record[A258219(A055998(A123229(n+1)))]`
-/

namespace A005412.P17449930210693460929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258219 (A055998 (A123229 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005412.P17449930210693460929

/-!
# A005413: Number of non-vanishing Feynman diagrams of order 2n+1 for the electron-electron-photon proper vertex function in quantum electrodynamics (QED).

The programs for A005413, there is no canonical definition to state claims against.
-/

/-! ## A005413.P8774792165289156732

`A093650(6^∑[∑{e}[n, #]])`
-/

namespace A005413.P8774792165289156732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093650 (6 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A005413.P8774792165289156732

/-!
# A005414: Feynman diagrams of order 2n with vertex skeletons.

The programs for A005414, there is no canonical definition to state claims against.
-/

/-! ## A005414.P8207996438534563102

`A168277((n!+1)²-2)`
-/

namespace A005414.P8207996438534563102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 ((Nat.factorial n + 1) ^ 2 - 2)

end

end A005414.P8207996438534563102

/-!
# A005416: Vertex diagrams of order 2n.

The programs for A005416, there is no canonical definition to state claims against.
-/

/-! ## A005416.P10874459532977886416

`A286782(C(n, 2)+1)`
-/

namespace A005416.P10874459532977886416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (Nat.choose n 2 + 1)

end

end A005416.P10874459532977886416

/-! ## A005416.P5587064290921258622

`A286782(∑[abs(1-n)])`
-/

namespace A005416.P5587064290921258622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005416.P5587064290921258622

/-! ## A005416.P15696122241165160313

`(1-2*n)*A185971(n)`
-/

namespace A005416.P15696122241165160313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) * A185971 n

end

end A005416.P15696122241165160313

/-! ## A005416.P11528591052899708851

`A000698(n)*A028310(comp[2*(n+1)])`
-/

namespace A005416.P11528591052899708851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000698 n * A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A005416.P11528591052899708851

/-! ## A005416.P9496385663010791221

`A000698(n)*A004273(A028310(n))`
-/

namespace A005416.P9496385663010791221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000698 n * A004273 (A028310 n).toNat

end

end A005416.P9496385663010791221

/-! ## A005416.P16699703941842872067

`A000698(n)*A093178(A004273(n))`
-/

namespace A005416.P16699703941842872067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000698 n * A093178 (A004273 n).toNat

end

end A005416.P16699703941842872067

/-!
# A005417: Maximal period of an n-stage shift register.

The programs for A005417, there is no canonical definition to state claims against.
-/

/-! ## A005417.P3835407685013369164

`A080742(A055645(n)-A024153(n+1))`
-/

namespace A005417.P3835407685013369164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080742 (A055645 n - A024153 (n + 1)).toNat

end

end A005417.P3835407685013369164

/-! ## A005417.P8012978691446654054

`A080742(xor(A024153(n+1), A055645(n)))`
-/

namespace A005417.P8012978691446654054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080742 (Int.xor (A024153 (n + 1)) (A055645 n)).toNat

end

end A005417.P8012978691446654054

/-!
# A005418: Number of (n-1)-bead black-white reversible strings; also binary grids; also row sums of Losanitsch's triangle A034851; also number of caterpillar graphs on n+2 vertices.

The programs for A005418, the canonical program `A005418.P14643345169787210303` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005418 has offset 1).

The definition of A005418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005418.P14643345169787210303

`2^(n-1)+2^(floor((n+1)/2)-1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005418

/-- `2^(n-1)+2^(floor((n+1)/2)-1)` -/
def P14643345169787210303.Spec : Prop :=
  ∀ n, P14643345169787210303.a n = (A005418 (n + 1) : ℚ)

end A005418

/-! ## A005418.P9604317211166260698

`(A000079(n)+A060546(n))/2`
-/

namespace A005418.P9604317211166260698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n + A060546 n : ℚ) / 2

end

end A005418.P9604317211166260698

namespace A005418

/-- `(A000079(n)+A060546(n))/2` -/
def P9604317211166260698.Spec : Prop :=
  ∀ n, P9604317211166260698.a n = (A005418 (n + 1) : ℚ)

end A005418

/-! ## A005418.P1896552780373638291

`(A131577(n+1)+A016116(n+1))/2`
-/

namespace A005418.P1896552780373638291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) + A016116 (n + 1) : ℚ) / 2

end

end A005418.P1896552780373638291

namespace A005418

/-- `(A131577(n+1)+A016116(n+1))/2` -/
def P1896552780373638291.Spec : Prop :=
  ∀ n, P1896552780373638291.a n = (A005418 (n + 1) : ℚ)

end A005418

/-! ## A005418.P8346751238457652040

`ogf((1-3x^2)/(1-2x-2x^2+4x^3))`
-/

namespace A005418.P8346751238457652040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -2, -2, 4] n

end

end A005418.P8346751238457652040

namespace A005418

/-- `ogf((1-3x^2)/(1-2x-2x^2+4x^3))` -/
def P8346751238457652040.Spec : Prop :=
  ∀ n, P8346751238457652040.a n = A005418 (n + 1)

end A005418

/-! ## A005418.P45158198075105488

`2*(a(n-2)+2^(n-3))` with `a(0)=1, a(1)=2`
-/

namespace A005418.P45158198075105488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

end

end A005418.P45158198075105488

namespace A005418

/-- `2*(a(n-2)+2^(n-3))` -/
def P45158198075105488.Spec : Prop :=
  ∀ n, P45158198075105488.a n = (A005418 (n + 1) : ℚ)

end A005418

/-! ## A005418.P6316295859625191155

`∑{d}[n+1, A056331(#)]`
-/

namespace A005418.P6316295859625191155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056331 d

end

end A005418.P6316295859625191155

namespace A005418

/-- `∑{d}[n+1, A056331(#)]` -/
def P6316295859625191155.Spec : Prop :=
  ∀ n, P6316295859625191155.a n = A005418 (n + 1)

end A005418

/-! ## A005418.P17948309091074335810

`∪[A007582(n), A161168(n)]`
-/

namespace A005418.P17948309091074335810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005418.P17948309091074335810

namespace A005418

/-- `∪[A007582(n), A161168(n)]` -/
def P17948309091074335810.Spec : Prop :=
  ∀ n, (P17948309091074335810.a n : ℤ) = A005418 (n + 1)

end A005418

/-! ## A005418.P4588318486881860560

`Δ[A290075(n+3)]`
-/

namespace A005418.P4588318486881860560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005418.P4588318486881860560

namespace A005418

/-- `Δ[A290075(n+3)]` -/
def P4588318486881860560.Spec : Prop :=
  ∀ n, P4588318486881860560.a n = A005418 (n + 1)

end A005418

/-! ## A005418.P15068292773966993920

`A175381(A033638(n+1))`
-/

namespace A005418.P15068292773966993920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (A033638 (n + 1)).toNat

end

end A005418.P15068292773966993920

namespace A005418

/-- `A175381(A033638(n+1))` -/
def P15068292773966993920.Spec : Prop :=
  ∀ n, P15068292773966993920.a n = A005418 (n + 1)

end A005418

/-! ## A005418.P12678650668640112368

`A048645(A061925(n))`
-/

namespace A005418.P12678650668640112368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (A061925 n).toNat

end

end A005418.P12678650668640112368

namespace A005418

/-- `A048645(A061925(n))` -/
def P12678650668640112368.Spec : Prop :=
  ∀ n, P12678650668640112368.a n = A005418 (n + 1)

end A005418

/-! ## A005418.P4155954071147401645

`A048645(A261243(n+2))`
-/

namespace A005418.P4155954071147401645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (A261243 (n + 2)).toNat

end

end A005418.P4155954071147401645

namespace A005418

/-- `A048645(A261243(n+2))` -/
def P4155954071147401645.Spec : Prop :=
  ∀ n, P4155954071147401645.a n = A005418 (n + 1)

end A005418

/-! ## A005418.P6441291827722738549

`A323346(A004524(n*(n+2)))`
-/

namespace A005418.P6441291827722738549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323346 (A004524 (n * (n + 2))).toNat

end

end A005418.P6441291827722738549

namespace A005418

/-- `A323346(A004524(n*(n+2)))` -/
def P6441291827722738549.Spec : Prop :=
  ∀ n, P6441291827722738549.a n = A005418 (n + 1)

end A005418

/-!
# A005419: Number of nonequivalent dissections of a polygon into n heptagons by nonintersecting diagonals up to rotation and reflection.

The programs for A005419, there is no canonical definition to state claims against.
-/

/-! ## A005419.P4504096435823311232

`(A389561(n+1)+A389563(n+1))/2`
-/

namespace A005419.P4504096435823311232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389561 (n + 1) + A389563 (n + 1) : ℚ) / 2

end

end A005419.P4504096435823311232

/-! ## A005419.P15005133929541127081

`A295260(∑[n+5]+6)`
-/

namespace A005419.P15005133929541127081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A005419.P15005133929541127081

/-! ## A005419.P11843698875826705614

`A007318(C(2, n))*A295260(A046691(n+3))`
-/

namespace A005419.P11843698875826705614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A295260 (A046691 (n + 3)).toNat

end

end A005419.P11843698875826705614

/-! ## A005419.P14367764879212838325

`(A000027(n+1)-n)*A295260(A046691(n+3))`
-/

namespace A005419.P14367764879212838325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A295260 (A046691 (n + 3)).toNat

end

end A005419.P14367764879212838325

/-! ## A005419.P16417196599193799630

`lcm((-1)^A000005(n+2), A295260(A046691(n+3)))`
-/

namespace A005419.P16417196599193799630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000005 (n + 2) : ℤ))) (A295260 (A046691 (n + 3)).toNat)

end

end A005419.P16417196599193799630

/-!
# A005420: Largest prime factor of 2^n - 1.

The programs for A005420, the canonical program `A005420.P17976102140661701259` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005420 has offset 2).

The definition of A005420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005420.P17976102140661701259

`A006530(A000225(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A005420

/-- `A006530(A000225(n+2))` -/
def P17976102140661701259.Spec : Prop :=
  ∀ n, P17976102140661701259.a n = A005420 (n + 2)

theorem P17976102140661701259.correct : P17976102140661701259.Spec := by
  intro n
  simp only [A005420, Nat.add_sub_cancel]

end A005420

/-! ## A005420.P9661998609344224006

`A001265(∑[A046051(n+2)]+1)`
-/

namespace A005420.P9661998609344224006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001265 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A005420.P9661998609344224006

namespace A005420

/-- `A001265(∑[A046051(n+2)]+1)` -/
def P9661998609344224006.Spec : Prop :=
  ∀ n, P9661998609344224006.a n = A005420 (n + 2)

end A005420

/-! ## A005420.P3712131785298697346

`A060443(∑[A046800(n+2)]+1)`
-/

namespace A005420.P3712131785298697346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060443 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A005420.P3712131785298697346

namespace A005420

/-- `A060443(∑[A046800(n+2)]+1)` -/
def P3712131785298697346.Spec : Prop :=
  ∀ n, P3712131785298697346.a n = A005420 (n + 2)

end A005420

/-! ## A005420.P13629719920525219099

`A249780(n+2)/A049479(n+2)`
-/

namespace A005420.P13629719920525219099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249780 (n + 2) : ℚ) / (A049479 (n + 2) : ℚ)

end

end A005420.P13629719920525219099

namespace A005420

/-- `A249780(n+2)/A049479(n+2)` -/
def P13629719920525219099.Spec : Prop :=
  ∀ n, P13629719920525219099.a n = (A005420 (n + 2) : ℚ)

end A005420

/-! ## A005420.P7414926991809074943

`A249780(n+2)/A112927(A092028(n+3)%A175251(n+1))`
-/

namespace A005420.P7414926991809074943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249780 (n + 2) : ℚ) / (A112927 (Int.tmod (A092028 (n + 3)) (A175251 (n + 1))).toNat : ℚ)

end

end A005420.P7414926991809074943

namespace A005420

/-- `A249780(n+2)/A112927(A092028(n+3)%A175251(n+1))` -/
def P7414926991809074943.Spec : Prop :=
  ∀ n, P7414926991809074943.a n = (A005420 (n + 2) : ℚ)

end A005420

/-!
# A005421: Number of numbers of complexity n, i.e., that can be built from n ones using + and *, and require at least that many ones.

The programs for A005421, there is no canonical definition to state claims against.
-/

/-! ## A005421.P11644632665036047943

`A000007(n)+Δ[A048249(A028310(n))]`
-/

namespace A005421.P11644632665036047943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A005421.P11644632665036047943

/-! ## A005421.P7955278661501917809

`A151933(n)+Δ[A048249(A028310(n))]`
-/

namespace A005421.P7955278661501917809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (f1 (n + 1) - f1 n)

end

end A005421.P7955278661501917809

/-! ## A005421.P18220786426904845676

`Δ[A048249(A028310(n))-A057428(n)]`
-/

namespace A005421.P18220786426904845676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005421.P18220786426904845676

/-! ## A005421.P9560228180683107537

`Δ[A048249(A028310(n))%A056449(n)]`
-/

namespace A005421.P9560228180683107537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048249 (A028310 n).toNat) (A056449 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005421.P9560228180683107537

/-! ## A005421.P9585980032257469108

`Δ[A048249(A028310(n))]+1-A000040(n+1)%2`
-/

namespace A005421.P9585980032257469108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - Int.tmod (A000040 (n + 1)) 2

end

end A005421.P9585980032257469108

/-! ## A005421.P4579007329753740385

`A048249(n+1)+A000007(n)-A048249(A028310(n))`
-/

namespace A005421.P4579007329753740385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (n + 1) + (A000007 n - A048249 (A028310 n).toNat)

end

end A005421.P4579007329753740385

/-! ## A005421.P8259895637235952849

`A048249(n+1)+A151933(n)-A048249(A028310(n))`
-/

namespace A005421.P8259895637235952849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (n + 1) + (A151933 n - A048249 (A028310 n).toNat)

end

end A005421.P8259895637235952849

/-! ## A005421.P15331027463375006420

`A048249(n+1)+A048249(A028310(n))*A057428(n)`
-/

namespace A005421.P15331027463375006420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (n + 1) + A048249 (A028310 n).toNat * A057428 n

end

end A005421.P15331027463375006420

/-!
# A005422: Largest prime factor of 10^n - 1.

The programs for A005422, the canonical program `A005422.P10962967221910214508` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005422 has offset 1).

The definition of A005422 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005422.P10962967221910214508

`A006530(A002283(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A005422

/-- `A006530(A002283(n+1))` -/
def P10962967221910214508.Spec : Prop :=
  ∀ n, P10962967221910214508.a n = A005422 (n + 1)

theorem P10962967221910214508.correct : P10962967221910214508.Spec := by
  intro n
  simp only [A005422, Nat.add_sub_cancel]

end A005422

/-! ## A005422.P7877882478810844732

`A003020(n%a(n-1)+1)` with `a(0)=3`
-/

namespace A005422.P7877882478810844732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A003020 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A005422.P7877882478810844732

namespace A005422

/-- `A003020(n%a(n-1)+1)` -/
def P7877882478810844732.Spec : Prop :=
  ∀ n, P7877882478810844732.a n = A005422 (n + 1)

end A005422

/-! ## A005422.P9525782906144924530

`A001270(∑[A057951(n+1)])`
-/

namespace A005422.P9525782906144924530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005422.P9525782906144924530

namespace A005422

/-- `A001270(∑[A057951(n+1)])` -/
def P9525782906144924530.Spec : Prop :=
  ∀ n, P9525782906144924530.a n = A005422 (n + 1)

end A005422

/-! ## A005422.P2846203364789358553

`A001270(∑[A046053(n+1)+2])`
-/

namespace A005422.P2846203364789358553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005422.P2846203364789358553

namespace A005422

/-- `A001270(∑[A046053(n+1)+2])` -/
def P2846203364789358553.Spec : Prop :=
  ∀ n, P2846203364789358553.a n = A005422 (n + 1)

end A005422

/-! ## A005422.P413062805307586510

`A001270(∑[∑{d}[n+1, A085035(#)]])`
-/

namespace A005422.P413062805307586510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A085035 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005422.P413062805307586510

namespace A005422

/-- `A001270(∑[∑{d}[n+1, A085035(#)]])` -/
def P413062805307586510.Spec : Prop :=
  ∀ n, P413062805307586510.a n = A005422 (n + 1)

end A005422

/-!
# A005423: A finite sequence associated with the Lie algebra A_6.

The programs for A005423, there is no canonical definition to state claims against.
-/

/-! ## A005423.P5400125719479701141

`A085516(A023379(n+1)-4)`
-/

namespace A005423.P5400125719479701141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A023379 (n + 1) - 4).toNat

end

end A005423.P5400125719479701141

/-! ## A005423.P12745134000701413834

`lt[A000005(A086614(n)), A056992(n+1)]`
-/

namespace A005423.P12745134000701413834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A086614 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005423.P12745134000701413834

/-! ## A005423.P1790965983413631337

`lt[A259478(n+1), A053830(A005563(n))]`
-/

namespace A005423.P1790965983413631337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A005563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005423.P1790965983413631337

/-! ## A005423.P13661978842166066850

`lt[A325830(A067661(n+4)), A055483(n+1)]`
-/

namespace A005423.P13661978842166066850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325830 (A067661 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005423.P13661978842166066850

/-!
# A005425: a(n) = 2*a(n-1) + (n-1)*a(n-2).

The programs for A005425, the canonical program `A005425.P16671077061129595772` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005425 has offset 0).

The definition of A005425 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(n-1)*a(n-2)` (program `A005425.P16671077061129595772`, by `A005425.P16671077061129595772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005425.P16671077061129595772

`2*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005425

/-- `2*a(n-1)+(n-1)*a(n-2)` -/
def P16671077061129595772.Spec : Prop :=
  ∀ n, P16671077061129595772.a n = A005425 n

theorem P16671077061129595772.correct : P16671077061129595772.Spec := by
  intro n
  simp only [A005425]

end A005425

/-! ## A005425.P14309895405132012283

`A027412(n+1)/2`
-/

namespace A005425.P14309895405132012283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027412 (n + 1) : ℚ) / 2

end

end A005425.P14309895405132012283

namespace A005425

/-- `A027412(n+1)/2` -/
def P14309895405132012283.Spec : Prop :=
  ∀ n, P14309895405132012283.a n = (A005425 n : ℚ)

end A005425

/-! ## A005425.P14093257916868669504

`∏[(n-1)/a(n-1)+2]` with `a(0)=1`
-/

namespace A005425.P14093257916868669504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005425.P14093257916868669504

namespace A005425

/-- `∏[(n-1)/a(n-1)+2]` -/
def P14093257916868669504.Spec : Prop :=
  ∀ n, P14093257916868669504.a n = (A005425 n : ℚ)

end A005425

/-! ## A005425.P7472025843525843575

`a(n-1)-((1-n)*a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A005425.P7472025843525843575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ((1 - (n : ℤ)) * a (n - 2) - a (n - 1))

end

end A005425.P7472025843525843575

namespace A005425

/-- `a(n-1)-((1-n)*a(n-2)-a(n-1))` -/
def P7472025843525843575.Spec : Prop :=
  ∀ n, P7472025843525843575.a n = A005425 n

theorem P7472025843525843575.correct : P7472025843525843575.Spec := by
  intro n
  simp only [A005425, Nat.add_sub_cancel, A005425.P7472025843525843575.a, A005425.P16671077061129595772.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005425

/-! ## A005425.P5103678766133323893

`∑[A238803(n)]`
-/

namespace A005425.P5103678766133323893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005425.P5103678766133323893

namespace A005425

/-- `∑[A238803(n)]` -/
def P5103678766133323893.Spec : Prop :=
  ∀ n, P5103678766133323893.a n = A005425 n

end A005425

/-! ## A005425.P17594139944737824527

`Δ[A238803(n+1)]/(n+2)`
-/

namespace A005425.P17594139944737824527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 2 : ℚ)

end

end A005425.P17594139944737824527

namespace A005425

/-- `Δ[A238803(n+1)]/(n+2)` -/
def P17594139944737824527.Spec : Prop :=
  ∀ n, P17594139944737824527.a n = (A005425 n : ℚ)

end A005425

/-! ## A005425.P4842610281888829871

`A294119(n)/A000079(n)`
-/

namespace A005425.P4842610281888829871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294119 n : ℚ) / (A000079 n : ℚ)

end

end A005425.P4842610281888829871

namespace A005425

/-- `A294119(n)/A000079(n)` -/
def P4842610281888829871.Spec : Prop :=
  ∀ n, P4842610281888829871.a n = (A005425 n : ℚ)

end A005425

/-! ## A005425.P10641876996693704167

`A294119(n)/Δ[A000225(n)]`
-/

namespace A005425.P10641876996693704167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294119 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A005425.P10641876996693704167

namespace A005425

/-- `A294119(n)/Δ[A000225(n)]` -/
def P10641876996693704167.Spec : Prop :=
  ∀ n, P10641876996693704167.a n = (A005425 n : ℚ)

end A005425

/-! ## A005425.P17853273864590438397

`sqrt(A202827(n))`
-/

namespace A005425.P17853273864590438397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202827 n : ℝ)

end

end A005425.P17853273864590438397

namespace A005425

/-- `sqrt(A202827(n))` -/
def P17853273864590438397.Spec : Prop :=
  ∀ n, P17853273864590438397.a n = (A005425 n : ℝ)

end A005425

/-! ## A005425.P1708936495327090567

`A376826(∑[n+1]+n)`
-/

namespace A005425.P1708936495327090567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376826 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005425.P1708936495327090567

namespace A005425

/-- `A376826(∑[n+1]+n)` -/
def P1708936495327090567.Spec : Prop :=
  ∀ n, P1708936495327090567.a n = A005425 n

end A005425

/-!
# A005426: Number of linear geometries on n points with <= 3 points per line.

The programs for A005426, there is no canonical definition to state claims against.
-/

/-! ## A005426.P6641981187569421566

`A001462(A011784(n+1)+1)-1`
-/

namespace A005426.P6641981187569421566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A011784 (n + 1) + 1).toNat - 1

end

end A005426.P6641981187569421566

/-! ## A005426.P12336278169810204014

`A215794(A064458(n))+A001462(A011784(n+1)+1)`
-/

namespace A005426.P12336278169810204014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215794 (A064458 n).toNat + A001462 (A011784 (n + 1) + 1).toNat

end

end A005426.P12336278169810204014

/-! ## A005426.P15764549610878936461

`A166050(A146711(n+1))+A001462(A011784(n+1)+1)`
-/

namespace A005426.P15764549610878936461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166050 (A146711 (n + 1)).toNat + A001462 (A011784 (n + 1) + 1).toNat

end

end A005426.P15764549610878936461

/-! ## A005426.P8916683817242604903

`ceil(sqrt(A324843(round(2^((n+1)/2)))))`
-/

namespace A005426.P8916683817242604903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A324843 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ))).toNat : ℝ)⌉

end

end A005426.P8916683817242604903

/-!
# A005427: Josephus problem: numbers m such that, when m people are arranged on a circle and numbered 1 through m, the final survivor when we remove every 4th person is one of the first three people.

The programs for A005427, the canonical program `A005427.P7157750297444178158` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005427 has offset 1).

The definition of A005427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005427.P7157750297444178158

`A072493(n+9)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005427

/-- `A072493(n+9)` -/
def P7157750297444178158.Spec : Prop :=
  ∀ n, P7157750297444178158.a n = A005427 (n + 1)

theorem P7157750297444178158.correct : P7157750297444178158.Spec := by
  intro n
  simp only [A005427, Nat.add_sub_cancel]

end A005427

/-! ## A005427.P14512326002702531786

`record[A072493(A020722(A057979(n)))]`
-/

namespace A005427.P14512326002702531786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (A020722 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005427.P14512326002702531786

namespace A005427

/-- `record[A072493(A020722(A057979(n)))]` -/
def P14512326002702531786.Spec : Prop :=
  ∀ n, P14512326002702531786.a n = A005427 (n + 1)

end A005427

/-! ## A005427.P1481649085224090959

`record[A072493(A020722(A324347(n)))]`
-/

namespace A005427.P1481649085224090959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (A020722 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005427.P1481649085224090959

namespace A005427

/-- `record[A072493(A020722(A324347(n)))]` -/
def P1481649085224090959.Spec : Prop :=
  ∀ n, P1481649085224090959.a n = A005427 (n + 1)

end A005427

/-! ## A005427.P8379105222706102202

`record[A072493(A020722(A344180(n)))]`
-/

namespace A005427.P8379105222706102202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (A020722 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005427.P8379105222706102202

namespace A005427

/-- `record[A072493(A020722(A344180(n)))]` -/
def P8379105222706102202.Spec : Prop :=
  ∀ n, P8379105222706102202.a n = A005427 (n + 1)

end A005427

/-! ## A005427.P15901879990899008954

`Δ[round(4/3*a(n-1))]` with `a(0)=16`
-/

namespace A005427.P15901879990899008954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005427.P15901879990899008954

namespace A005427

/-- `Δ[round(4/3*a(n-1))]` -/
def P15901879990899008954.Spec : Prop :=
  ∀ n, P15901879990899008954.a n = A005427 (n + 1)

end A005427

/-! ## A005427.P6038639111715900866

`Δ[A087192(n+8)]`
-/

namespace A005427.P6038639111715900866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005427.P6038639111715900866

namespace A005427

/-- `Δ[A087192(n+8)]` -/
def P6038639111715900866.Spec : Prop :=
  ∀ n, P6038639111715900866.a n = A005427 (n + 1)

end A005427

/-! ## A005427.P7017329432513107164

`A087192(n+9)-A087192(n+8)`
-/

namespace A005427.P7017329432513107164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 9) - A087192 (n + 8)

end

end A005427.P7017329432513107164

namespace A005427

/-- `A087192(n+9)-A087192(n+8)` -/
def P7017329432513107164.Spec : Prop :=
  ∀ n, P7017329432513107164.a n = A005427 (n + 1)

end A005427

/-! ## A005427.P4717291009300157239

`Δ[floor(4*(a(n-1)+4)/3)]` with `a(0)=1`
-/

namespace A005427.P4717291009300157239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(4 * (f1 (n - 1) + 4) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005427.P4717291009300157239

namespace A005427

/-- `Δ[floor(4*(a(n-1)+4)/3)]` -/
def P4717291009300157239.Spec : Prop :=
  ∀ n, P4717291009300157239.a n = A005427 (n + 1)

end A005427

/-!
# A005428: a(n) = ceiling((1 + sum of preceding terms) / 2) starting with a(0) = 1.

The programs for A005428, the canonical program `A005428.P13277761271473291842` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005428 has offset 0).

The definition of A005428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005428.P16650543336202117037

`A073941(n+2)`
-/

namespace A005428.P16650543336202117037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 2)

end

end A005428.P16650543336202117037

namespace A005428

/-- `A073941(n+2)` -/
def P16650543336202117037.Spec : Prop :=
  ∀ n, P16650543336202117037.a n = A005428 n

end A005428

/-! ## A005428.P4729705071140061130

`A104740(2*n+5)`
-/

namespace A005428.P4729705071140061130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104740 (2 * n + 5)

end

end A005428.P4729705071140061130

namespace A005428

/-- `A104740(2*n+5)` -/
def P4729705071140061130.Spec : Prop :=
  ∀ n, P4729705071140061130.a n = A005428 n

end A005428

/-! ## A005428.P13277761271473291842

`floor(A061418(n+1)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005428

/-- `floor(A061418(n+1)/2)` -/
def P13277761271473291842.Spec : Prop :=
  ∀ n, P13277761271473291842.a n = A005428 n

theorem P13277761271473291842.correct : P13277761271473291842.Spec := by
  intro n
  simp only [A005428]

end A005428

/-! ## A005428.P5984564019060337246

`ceil((A006999(n)+1)/2)`
-/

namespace A005428.P5984564019060337246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006999 n + 1 : ℚ) / 2⌉

end

end A005428.P5984564019060337246

namespace A005428

/-- `ceil((A006999(n)+1)/2)` -/
def P5984564019060337246.Spec : Prop :=
  ∀ n, P5984564019060337246.a n = A005428 n

end A005428

/-! ## A005428.P8312381659888155132

`ceil(A061419(n+1)/2)`
-/

namespace A005428.P8312381659888155132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061419 (n + 1) : ℚ) / 2⌉

end

end A005428.P8312381659888155132

namespace A005428

/-- `ceil(A061419(n+1)/2)` -/
def P8312381659888155132.Spec : Prop :=
  ∀ n, P8312381659888155132.a n = A005428 n

end A005428

/-! ## A005428.P6492006249269952333

`floor((A003312(n+1)-1)/2)`
-/

namespace A005428.P6492006249269952333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003312 (n + 1) - 1 : ℚ) / 2⌋

end

end A005428.P6492006249269952333

namespace A005428

/-- `floor((A003312(n+1)-1)/2)` -/
def P6492006249269952333.Spec : Prop :=
  ∀ n, P6492006249269952333.a n = A005428 n

end A005428

/-! ## A005428.P17555383440117807432

`Δ[ceil(3/2*a(n-1))]` with `a(0)=1`
-/

namespace A005428.P17555383440117807432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P17555383440117807432

namespace A005428

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P17555383440117807432.Spec : Prop :=
  ∀ n, P17555383440117807432.a n = A005428 n

end A005428

/-! ## A005428.P1568636322788488958

`Δ[floor(3/2*a(n-1))]` with `a(0)=2`
-/

namespace A005428.P1568636322788488958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P1568636322788488958

namespace A005428

/-- `Δ[floor(3/2*a(n-1))]` -/
def P1568636322788488958.Spec : Prop :=
  ∀ n, P1568636322788488958.a n = A005428 n

end A005428

/-! ## A005428.P8507771675268140807

`Δ[round(3/2*a(n-1))]` with `a(0)=1`
-/

namespace A005428.P8507771675268140807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P8507771675268140807

namespace A005428

/-- `Δ[round(3/2*a(n-1))]` -/
def P8507771675268140807.Spec : Prop :=
  ∀ n, P8507771675268140807.a n = A005428 n

end A005428

/-! ## A005428.P5244164468460464025

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=1`
-/

namespace A005428.P5244164468460464025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P5244164468460464025

namespace A005428

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P5244164468460464025.Spec : Prop :=
  ∀ n, P5244164468460464025.a n = A005428 n

end A005428

/-! ## A005428.P9652896885187700928

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=2`
-/

namespace A005428.P9652896885187700928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P9652896885187700928

namespace A005428

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P9652896885187700928.Spec : Prop :=
  ∀ n, P9652896885187700928.a n = A005428 n

end A005428

/-! ## A005428.P13956029557908914193

`Δ[A006999(n)]`
-/

namespace A005428.P13956029557908914193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P13956029557908914193

namespace A005428

/-- `Δ[A006999(n)]` -/
def P13956029557908914193.Spec : Prop :=
  ∀ n, P13956029557908914193.a n = A005428 n

end A005428

/-! ## A005428.P10744602110003221803

`Δ[A003312(n+1)]`
-/

namespace A005428.P10744602110003221803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P10744602110003221803

namespace A005428

/-- `Δ[A003312(n+1)]` -/
def P10744602110003221803.Spec : Prop :=
  ∀ n, P10744602110003221803.a n = A005428 n

end A005428

/-! ## A005428.P11590108271660974526

`Δ[A061418(n+1)]`
-/

namespace A005428.P11590108271660974526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P11590108271660974526

namespace A005428

/-- `Δ[A061418(n+1)]` -/
def P11590108271660974526.Spec : Prop :=
  ∀ n, P11590108271660974526.a n = A005428 n

end A005428

/-! ## A005428.P8429702553048824622

`Δ[A061419(n+1)]`
-/

namespace A005428.P8429702553048824622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005428.P8429702553048824622

namespace A005428

/-- `Δ[A061419(n+1)]` -/
def P8429702553048824622.Spec : Prop :=
  ∀ n, P8429702553048824622.a n = A005428 n

end A005428

/-! ## A005428.P10012370610703982744

`A081848(n+2)/3`
-/

namespace A005428.P10012370610703982744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081848 (n + 2) : ℚ) / 3

end

end A005428.P10012370610703982744

namespace A005428

/-- `A081848(n+2)/3` -/
def P10012370610703982744.Spec : Prop :=
  ∀ n, P10012370610703982744.a n = (A005428 n : ℚ)

end A005428

/-! ## A005428.P16773530103914722736

`A006999(n+1)-A006999(n)`
-/

namespace A005428.P16773530103914722736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 (n + 1) - A006999 n

end

end A005428.P16773530103914722736

namespace A005428

/-- `A006999(n+1)-A006999(n)` -/
def P16773530103914722736.Spec : Prop :=
  ∀ n, P16773530103914722736.a n = A005428 n

end A005428

/-! ## A005428.P1140349356428608909

`A003312(n+2)-A003312(n+1)`
-/

namespace A005428.P1140349356428608909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 2) - A003312 (n + 1)

end

end A005428.P1140349356428608909

namespace A005428

/-- `A003312(n+2)-A003312(n+1)` -/
def P1140349356428608909.Spec : Prop :=
  ∀ n, P1140349356428608909.a n = A005428 n

end A005428

/-! ## A005428.P243305616814958883

`A061418(n+2)-A061418(n+1)`
-/

namespace A005428.P243305616814958883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 2) - A061418 (n + 1)

end

end A005428.P243305616814958883

namespace A005428

/-- `A061418(n+2)-A061418(n+1)` -/
def P243305616814958883.Spec : Prop :=
  ∀ n, P243305616814958883.a n = A005428 n

end A005428

/-! ## A005428.P228111207627102038

`A061419(n+2)-A061419(n+1)`
-/

namespace A005428.P228111207627102038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 2) - A061419 (n + 1)

end

end A005428.P228111207627102038

namespace A005428

/-- `A061419(n+2)-A061419(n+1)` -/
def P228111207627102038.Spec : Prop :=
  ∀ n, P228111207627102038.a n = A005428 n

end A005428

/-!
# A005429: Apéry numbers: n^3*C(2n,n).

The programs for A005429, the canonical program `A005429.P13277658660728260534` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005429 has offset 0).

The definition of A005429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005429.P13277658660728260534

`n*A002736(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005429

/-- `n*A002736(n)` -/
def P13277658660728260534.Spec : Prop :=
  ∀ n, P13277658660728260534.a n = A005429 n

theorem P13277658660728260534.correct : P13277658660728260534.Spec := by
  intro n
  simp only [A005429]

end A005429

/-! ## A005429.P7879145370746723194

`n²*A005430(n)`
-/

namespace A005429.P7879145370746723194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A005430 n

end

end A005429.P7879145370746723194

namespace A005429

/-- `n²*A005430(n)` -/
def P7879145370746723194.Spec : Prop :=
  ∀ n, P7879145370746723194.a n = A005429 n

end A005429

/-! ## A005429.P12514918565289471278

`n^3*A000984(n)`
-/

namespace A005429.P12514918565289471278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A000984 n

end

end A005429.P12514918565289471278

namespace A005429

/-- `n^3*A000984(n)` -/
def P12514918565289471278.Spec : Prop :=
  ∀ n, P12514918565289471278.a n = A005429 n

end A005429

/-! ## A005429.P15551573133544575077

`(A319924(n)-1)*n²`
-/

namespace A005429.P15551573133544575077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319924 n - 1) * (n ^ 2 : ℤ)

end

end A005429.P15551573133544575077

namespace A005429

/-- `(A319924(n)-1)*n²` -/
def P15551573133544575077.Spec : Prop :=
  ∀ n, P15551573133544575077.a n = A005429 n

end A005429

/-! ## A005429.P15356239350627107667

`n²*A100071(2*n)`
-/

namespace A005429.P15356239350627107667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A100071 (2 * n)

end

end A005429.P15356239350627107667

namespace A005429

/-- `n²*A100071(2*n)` -/
def P15356239350627107667.Spec : Prop :=
  ∀ n, P15356239350627107667.a n = A005429 n

end A005429

/-! ## A005429.P9884495119311950379

`n²*A212303(2*n)`
-/

namespace A005429.P9884495119311950379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A212303 (2 * n)

end

end A005429.P9884495119311950379

namespace A005429

/-- `n²*A212303(2*n)` -/
def P9884495119311950379.Spec : Prop :=
  ∀ n, P9884495119311950379.a n = A005429 n

end A005429

/-! ## A005429.P10400878273807625739

`n²*A218073(2*n)`
-/

namespace A005429.P10400878273807625739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A218073 (2 * n)

end

end A005429.P10400878273807625739

namespace A005429

/-- `n²*A218073(2*n)` -/
def P10400878273807625739.Spec : Prop :=
  ∀ n, P10400878273807625739.a n = A005429 n

end A005429

/-! ## A005429.P9249038192087083473

`∑[2*n]*A110609(n)`
-/

namespace A005429.P9249038192087083473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A110609 n

end

end A005429.P9249038192087083473

namespace A005429

/-- `∑[2*n]*A110609(n)` -/
def P9249038192087083473.Spec : Prop :=
  ∀ n, P9249038192087083473.a n = A005429 n

end A005429

/-! ## A005429.P12293751969588846385

`n*∑[n]*A162551(n)`
-/

namespace A005429.P12293751969588846385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A162551 n)

end

end A005429.P12293751969588846385

namespace A005429

/-- `n*∑[n]*A162551(n)` -/
def P12293751969588846385.Spec : Prop :=
  ∀ n, P12293751969588846385.a n = A005429 n

end A005429

/-! ## A005429.P16583560537971148260

`A001405(2*n)*n*n²`
-/

namespace A005429.P16583560537971148260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * (n * n ^ 2 : ℤ)

end

end A005429.P16583560537971148260

namespace A005429

/-- `A001405(2*n)*n*n²` -/
def P16583560537971148260.Spec : Prop :=
  ∀ n, P16583560537971148260.a n = A005429 n

end A005429

/-! ## A005429.P12408201022248267520

`(n+1)*n^3*A000108(n)`
-/

namespace A005429.P12408201022248267520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n ^ 3 : ℤ) * A000108 n)

end

end A005429.P12408201022248267520

namespace A005429

/-- `(n+1)*n^3*A000108(n)` -/
def P12408201022248267520.Spec : Prop :=
  ∀ n, P12408201022248267520.a n = A005429 n

end A005429

/-! ## A005429.P2878749745026982888

`∑[2*n]*A191522(2*n+1)`
-/

namespace A005429.P2878749745026982888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A191522 (2 * n + 1)

end

end A005429.P2878749745026982888

namespace A005429

/-- `∑[2*n]*A191522(2*n+1)` -/
def P2878749745026982888.Spec : Prop :=
  ∀ n, P2878749745026982888.a n = A005429 n

end A005429

/-! ## A005429.P17607564002625028568

`A001791(n)*A011379(n)`
-/

namespace A005429.P17607564002625028568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n * A011379 n

end

end A005429.P17607564002625028568

namespace A005429

/-- `A001791(n)*A011379(n)` -/
def P17607564002625028568.Spec : Prop :=
  ∀ n, P17607564002625028568.a n = A005429 n

end A005429

/-! ## A005429.P2234095138468956612

`A002939(n)*A037965(n)`
-/

namespace A005429.P2234095138468956612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n * A037965 n

end

end A005429.P2234095138468956612

namespace A005429

/-- `A002939(n)*A037965(n)` -/
def P2234095138468956612.Spec : Prop :=
  ∀ n, P2234095138468956612.a n = A005429 n

end A005429

/-! ## A005429.P4680624663269797000

`A033431(n)*A088218(n)`
-/

namespace A005429.P4680624663269797000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n * A088218 n

end

end A005429.P4680624663269797000

namespace A005429

/-- `A033431(n)*A088218(n)` -/
def P4680624663269797000.Spec : Prop :=
  ∀ n, P4680624663269797000.a n = A005429 n

end A005429

/-! ## A005429.P16788780637731765176

`A007054(n)*A119771(n)`
-/

namespace A005429.P16788780637731765176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 n * A119771 n

end

end A005429.P16788780637731765176

namespace A005429

/-- `A007054(n)*A119771(n)` -/
def P16788780637731765176.Spec : Prop :=
  ∀ n, P16788780637731765176.a n = A005429 n

end A005429

/-! ## A005429.P9471778630624056348

`A002411(n)*A162551(n)`
-/

namespace A005429.P9471778630624056348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A162551 n

end

end A005429.P9471778630624056348

namespace A005429

/-- `A002411(n)*A162551(n)` -/
def P9471778630624056348.Spec : Prop :=
  ∀ n, P9471778630624056348.a n = A005429 n

end A005429

/-! ## A005429.P2434576382416420538

`A037966(n)*A130824(n)`
-/

namespace A005429.P2434576382416420538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037966 n * A130824 n

end

end A005429.P2434576382416420538

namespace A005429

/-- `A037966(n)*A130824(n)` -/
def P2434576382416420538.Spec : Prop :=
  ∀ n, P2434576382416420538.a n = A005429 n

end A005429

/-! ## A005429.P2659163727687426216

`A005430(n)*A253909(n)`
-/

namespace A005429.P2659163727687426216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n * A253909 n

end

end A005429.P2659163727687426216

namespace A005429

/-- `A005430(n)*A253909(n)` -/
def P2659163727687426216.Spec : Prop :=
  ∀ n, P2659163727687426216.a n = A005429 n

end A005429

/-! ## A005429.P3876673621172409310

`A037966(n)*A111284(n+1)`
-/

namespace A005429.P3876673621172409310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037966 n * A111284 (n + 1)

end

end A005429.P3876673621172409310

namespace A005429

/-- `A037966(n)*A111284(n+1)` -/
def P3876673621172409310.Spec : Prop :=
  ∀ n, P3876673621172409310.a n = A005429 n

end A005429

/-!
# A005430: Apéry numbers: n*C(2*n,n).

The programs for A005430, the canonical program `A005430.P18261736114272756047` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005430 has offset 0).

The definition of A005430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005430.P13819486462298143260

`(2/(n-1)+4)*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A005430.P13819486462298143260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (2 / ((n : ℤ) - 1 : ℚ) + 4) * a (n - 1)

end

end A005430.P13819486462298143260

namespace A005430

/-- `(2/(n-1)+4)*a(n-1)` -/
def P13819486462298143260.Spec : Prop :=
  ∀ n, P13819486462298143260.a n = (A005430 n : ℚ)

end A005430

/-! ## A005430.P7113318578188408036

`n*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A005430.P7113318578188408036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005430.P7113318578188408036

namespace A005430

/-- `n*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P7113318578188408036.Spec : Prop :=
  ∀ n, P7113318578188408036.a n = (A005430 n : ℚ)

end A005430

/-! ## A005430.P3982563112291540440

`A319924(n)-1`
-/

namespace A005430.P3982563112291540440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319924 n - 1

end

end A005430.P3982563112291540440

namespace A005430

/-- `A319924(n)-1` -/
def P3982563112291540440.Spec : Prop :=
  ∀ n, P3982563112291540440.a n = A005430 n

end A005430

/-! ## A005430.P14464474032979405576

`A100071(2*n)`
-/

namespace A005430.P14464474032979405576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n)

end

end A005430.P14464474032979405576

namespace A005430

/-- `A100071(2*n)` -/
def P14464474032979405576.Spec : Prop :=
  ∀ n, P14464474032979405576.a n = A005430 n

end A005430

/-! ## A005430.P144924934691970445

`A212303(2*n)`
-/

namespace A005430.P144924934691970445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n)

end

end A005430.P144924934691970445

namespace A005430

/-- `A212303(2*n)` -/
def P144924934691970445.Spec : Prop :=
  ∀ n, P144924934691970445.a n = A005430 n

end A005430

/-! ## A005430.P15801731291577468802

`A218073(2*n)`
-/

namespace A005430.P15801731291577468802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218073 (2 * n)

end

end A005430.P15801731291577468802

namespace A005430

/-- `A218073(2*n)` -/
def P15801731291577468802.Spec : Prop :=
  ∀ n, P15801731291577468802.a n = A005430 n

end A005430

/-! ## A005430.P18261736114272756047

`n*A000984(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005430

/-- `n*A000984(n)` -/
def P18261736114272756047.Spec : Prop :=
  ∀ n, P18261736114272756047.a n = A005430 n

theorem P18261736114272756047.correct : P18261736114272756047.Spec := by
  intro n
  simp only [A005430]

end A005430

/-! ## A005430.P15310349071509291724

`record[Δ[A275324(n)]]`
-/

namespace A005430.P15310349071509291724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275324 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005430.P15310349071509291724

namespace A005430

/-- `record[Δ[A275324(n)]]` -/
def P15310349071509291724.Spec : Prop :=
  ∀ n, P15310349071509291724.a n = A005430 n

end A005430

/-! ## A005430.P15080742461938433796

`∑[n]*A068875(n)`
-/

namespace A005430.P15080742461938433796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A068875 n

end

end A005430.P15080742461938433796

namespace A005430

/-- `∑[n]*A068875(n)` -/
def P15080742461938433796.Spec : Prop :=
  ∀ n, P15080742461938433796.a n = A005430 n

end A005430

/-! ## A005430.P8718492773317693356

`n*record[A081668(n)]`
-/

namespace A005430.P8718492773317693356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005430.P8718492773317693356

namespace A005430

/-- `n*record[A081668(n)]` -/
def P8718492773317693356.Spec : Prop :=
  ∀ n, P8718492773317693356.a n = A005430 n

end A005430

/-! ## A005430.P17770170742931413769

`n*record[A089849(n)]`
-/

namespace A005430.P17770170742931413769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005430.P17770170742931413769

namespace A005430

/-- `n*record[A089849(n)]` -/
def P17770170742931413769.Spec : Prop :=
  ∀ n, P17770170742931413769.a n = A005430 n

end A005430

/-! ## A005430.P12771816261285073930

`n*record[A126869(n)]`
-/

namespace A005430.P12771816261285073930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005430.P12771816261285073930

namespace A005430

/-- `n*record[A126869(n)]` -/
def P12771816261285073930.Spec : Prop :=
  ∀ n, P12771816261285073930.a n = A005430 n

end A005430

/-! ## A005430.P10769444963085225962

`n*record[A126930(n)]`
-/

namespace A005430.P10769444963085225962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005430.P10769444963085225962

namespace A005430

/-- `n*record[A126930(n)]` -/
def P10769444963085225962.Spec : Prop :=
  ∀ n, P10769444963085225962.a n = A005430 n

end A005430

/-! ## A005430.P14434596409695292557

`2*(A289719(n)-1)`
-/

namespace A005430.P14434596409695292557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289719 n - 1)

end

end A005430.P14434596409695292557

namespace A005430

/-- `2*(A289719(n)-1)` -/
def P14434596409695292557.Spec : Prop :=
  ∀ n, P14434596409695292557.a n = A005430 n

end A005430

/-! ## A005430.P6159934763123632230

`(n+1)*A001791(n)`
-/

namespace A005430.P6159934763123632230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001791 n

end

end A005430.P6159934763123632230

namespace A005430

/-- `(n+1)*A001791(n)` -/
def P6159934763123632230.Spec : Prop :=
  ∀ n, P6159934763123632230.a n = A005430 n

end A005430

/-! ## A005430.P803690502617221459

`n*(A244174(n)-1)`
-/

namespace A005430.P803690502617221459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A244174 n - 1)

end

end A005430.P803690502617221459

namespace A005430

/-- `n*(A244174(n)-1)` -/
def P803690502617221459.Spec : Prop :=
  ∀ n, P803690502617221459.a n = A005430 n

end A005430

/-! ## A005430.P3355384679645370958

`n*A001405(2*n)`
-/

namespace A005430.P3355384679645370958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 (2 * n)

end

end A005430.P3355384679645370958

namespace A005430

/-- `n*A001405(2*n)` -/
def P3355384679645370958.Spec : Prop :=
  ∀ n, P3355384679645370958.a n = A005430 n

end A005430

/-! ## A005430.P5986744538351987316

`n*A056040(2*n)`
-/

namespace A005430.P5986744538351987316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056040 (2 * n)

end

end A005430.P5986744538351987316

namespace A005430

/-- `n*A056040(2*n)` -/
def P5986744538351987316.Spec : Prop :=
  ∀ n, P5986744538351987316.a n = A005430 n

end A005430

/-! ## A005430.P6842923832400577986

`n*A063886(2*n)`
-/

namespace A005430.P6842923832400577986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063886 (2 * n)

end

end A005430.P6842923832400577986

namespace A005430

/-- `n*A063886(2*n)` -/
def P6842923832400577986.Spec : Prop :=
  ∀ n, P6842923832400577986.a n = A005430 n

end A005430

/-!
# A005431: Embeddings of n-bouquet in sphere.

The programs for A005431, there is no canonical definition to state claims against.
-/

/-! ## A005431.P17793330593774035127

`2*(n-1)*(4-6/(n+1))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A005431.P17793330593774035127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (((n : ℤ) - 1 : ℚ) * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1)))

end

end A005431.P17793330593774035127

/-! ## A005431.P15637028185861680738

`(4-6/(n+1))*a(n-1)*A004275(n)` with `a(0)=1`
-/

namespace A005431.P15637028185861680738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * (A004275 n : ℚ)

end

end A005431.P15637028185861680738

/-! ## A005431.P1386026381405621172

`A000108(n)*A037223(A004273(n))`
-/

namespace A005431.P1386026381405621172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A037223 (A004273 n).toNat

end

end A005431.P1386026381405621172

/-! ## A005431.P15641301335711093731

`A011782(n)*A256116(A000096(n))`
-/

namespace A005431.P15641301335711093731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A256116 (A000096 n).toNat

end

end A005431.P15641301335711093731

/-! ## A005431.P4771268331061819837

`A006963(n+1)/A000142(n+1)*A000165(n)`
-/

namespace A005431.P4771268331061819837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006963 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A000165 n : ℚ)

end

end A005431.P4771268331061819837

/-!
# A005432: Number of permutation groups of degree n (or, number of distinct subgroups of symmetric group S_n, counting conjugates as distinct).

The programs for A005432, there is no canonical definition to state claims against.
-/

/-! ## A005432.P6810872310169297411

`p?[∑[A245168(n)]]-1`
-/

namespace A005432.P6810872310169297411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A005432.P6810872310169297411

/-! ## A005432.P10610440899760976320

`floor(sqrt(A073491(n^n)))`
-/

namespace A005432.P10610440899760976320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A073491 (n ^ n))

end

end A005432.P10610440899760976320

/-!
# A005434: Number of distinct autocorrelations of binary words of length n.

The programs for A005434, there is no canonical definition to state claims against.
-/

/-! ## A005434.P15935409359585859704

`record[Δ[A277133(n+1)]]`
-/

namespace A005434.P15935409359585859704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277133 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005434.P15935409359585859704

/-! ## A005434.P1747715966447267421

`Δ[A277133(A004277(n))]`
-/

namespace A005434.P1747715966447267421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277133 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005434.P1747715966447267421

/-! ## A005434.P3737641815799739044

`Δ[A277133(Δ[A014848(n)])]`
-/

namespace A005434.P3737641815799739044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277133 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005434.P3737641815799739044

/-! ## A005434.P17825382135471046054

`Δ[record[A277133(A052938(n))]]`
-/

namespace A005434.P17825382135471046054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277133 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005434.P17825382135471046054

/-! ## A005434.P8463039061304127247

`Δ[record[A277133(A106466(n))]]`
-/

namespace A005434.P8463039061304127247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277133 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005434.P8463039061304127247

/-!
# A005435: Number of column-convex polyominoes with perimeter 2n+2.

The programs for A005435, there is no canonical definition to state claims against.
-/

/-! ## A005435.P629457689825322326

`A088462(∑[A256334(n+1)])`
-/

namespace A005435.P629457689825322326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005435.P629457689825322326

/-! ## A005435.P6106313340508546758

`A112689(A150984(n+1))`
-/

namespace A005435.P6106313340508546758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A150984 (n + 1)).toNat

end

end A005435.P6106313340508546758

/-!
# A005436: Number of convex polygons of perimeter 2n on square lattice.

The programs for A005436, there is no canonical definition to state claims against.
-/

/-! ## A005436.P15027225572075512925

`A128652(n+1)+A002620(A011782(n))`
-/

namespace A005436.P15027225572075512925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128652 (n + 1) + A002620 (A011782 n).toNat

end

end A005436.P15027225572075512925

/-! ## A005436.P5384849355710450455

`A128652(n+1)+A002620(A131577(n))`
-/

namespace A005436.P5384849355710450455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128652 (n + 1) + A002620 (A131577 n).toNat

end

end A005436.P5384849355710450455

/-! ## A005436.P17137641483141752442

`A128652(n+1)+A002620(Δ[A094373(n)])`
-/

namespace A005436.P17137641483141752442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128652 (n + 1) + A002620 (f1 (n + 1) - f1 n).toNat

end

end A005436.P17137641483141752442

/-! ## A005436.P16444952359122277163

`A128652(n+1)+A002620(A094373(n)-1)`
-/

namespace A005436.P16444952359122277163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128652 (n + 1) + A002620 (A094373 n - 1).toNat

end

end A005436.P16444952359122277163

/-! ## A005436.P12427463412022481794

`A398028(A043315(n+2))`
-/

namespace A005436.P12427463412022481794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398028 (A043315 (n + 2)).toNat

end

end A005436.P12427463412022481794

/-!
# A005437: Column of Kempner tableau.

The programs for A005437, there is no canonical definition to state claims against.
-/

/-! ## A005437.P2611712425443525213

`A008281(floor((n+1)²/2))`
-/

namespace A005437.P2611712425443525213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A005437.P2611712425443525213

/-! ## A005437.P17642297455657685445

`A008280(or(1, ∑[or(1, n)])-1)`
-/

namespace A005437.P17642297455657685445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A005437.P17642297455657685445

/-! ## A005437.P13330749969852145778

`A010094(A008619(n²))`
-/

namespace A005437.P13330749969852145778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A008619 (n ^ 2)).toNat

end

end A005437.P13330749969852145778

/-! ## A005437.P15351268901185561542

`A008282(A065033(n²))`
-/

namespace A005437.P15351268901185561542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A065033 (n ^ 2)).toNat

end

end A005437.P15351268901185561542

/-! ## A005437.P3363044534533410829

`A008280(A007590(n+1))`
-/

namespace A005437.P3363044534533410829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A007590 (n + 1)).toNat

end

end A005437.P3363044534533410829

/-! ## A005437.P9293245085512992761

`A010094(A007590(n)+1)`
-/

namespace A005437.P9293245085512992761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A007590 n + 1).toNat

end

end A005437.P9293245085512992761

/-! ## A005437.P10707250186476319106

`A010094(A099392(n+1))`
-/

namespace A005437.P10707250186476319106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A099392 (n + 1)).toNat

end

end A005437.P10707250186476319106

/-! ## A005437.P6270224712365784599

`A064192(A179865(n+1))`
-/

namespace A005437.P6270224712365784599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064192 (A179865 (n + 1)).toNat

end

end A005437.P6270224712365784599

/-! ## A005437.P5440065574292712610

`A010094(xor(1, A007590(n)))`
-/

namespace A005437.P5440065574292712610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (Int.xor 1 (A007590 n)).toNat

end

end A005437.P5440065574292712610

/-! ## A005437.P6938031986367687903

`A008280(A004525(n²)+n)`
-/

namespace A005437.P6938031986367687903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A005437.P6938031986367687903

/-!
# A005438: Column of Kempner tableau.

The programs for A005438, there is no canonical definition to state claims against.
-/

/-! ## A005438.P9931767102441518488

`A064192(∑[n+2])`
-/

namespace A005438.P9931767102441518488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005438.P9931767102441518488

/-! ## A005438.P15975506518281617528

`A008281(A178218(n+2))`
-/

namespace A005438.P15975506518281617528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A178218 (n + 2)).toNat

end

end A005438.P15975506518281617528

/-! ## A005438.P15354094990937524290

`A008280(A047838(n+3))`
-/

namespace A005438.P15354094990937524290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A047838 (n + 3)).toNat

end

end A005438.P15354094990937524290

/-! ## A005438.P2071658981025052990

`A108040(A000982(n+3))`
-/

namespace A005438.P2071658981025052990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108040 (A000982 (n + 3)).toNat

end

end A005438.P2071658981025052990

/-! ## A005438.P3890635003358532886

`A008282(A028242((n+2)²))`
-/

namespace A005438.P3890635003358532886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A028242 ((n + 2) ^ 2)).toNat

end

end A005438.P3890635003358532886

/-! ## A005438.P9643155793976662516

`A008282(A106249((n+2)²))`
-/

namespace A005438.P9643155793976662516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A106249 ((n + 2) ^ 2)).toNat

end

end A005438.P9643155793976662516

/-! ## A005438.P3989636939021542750

`A008280(∑[n+3]+1-A008619(n))`
-/

namespace A005438.P3989636939021542750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A008619 n).toNat

end

end A005438.P3989636939021542750

/-! ## A005438.P5450820616358914742

`A008282(∑[A005408(A028242(n))])`
-/

namespace A005438.P5450820616358914742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005438.P5450820616358914742

/-!
# A005439: Genocchi medians (or Genocchi numbers of second kind).

The programs for A005439, there is no canonical definition to state claims against.
-/

/-! ## A005439.P16638383140759359497

`A099960(2*n)`
-/

namespace A005439.P16638383140759359497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099960 (2 * n)

end

end A005439.P16638383140759359497

/-! ## A005439.P12390793101828988434

`A014781(n²+1)`
-/

namespace A005439.P12390793101828988434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (n ^ 2 + 1)

end

end A005439.P12390793101828988434

/-! ## A005439.P15431370952982313791

`A058942(∑[n]+1)`
-/

namespace A005439.P15431370952982313791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058942 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005439.P15431370952982313791

/-! ## A005439.P10131686316853757806

`A099959(∑[2*n])`
-/

namespace A005439.P10131686316853757806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099959 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005439.P10131686316853757806

/-! ## A005439.P8764190027559000010

`2*A110501(n+1)-A362112(n)`
-/

namespace A005439.P8764190027559000010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110501 (n + 1) - A362112 n

end

end A005439.P8764190027559000010

/-!
# A005440: Coefficients of Gandhi polynomials.

The programs for A005440, there is no canonical definition to state claims against.
-/

/-! ## A005440.P4202710291734450246

`A036970(∑[n+1]+2)`
-/

namespace A005440.P4202710291734450246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036970 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005440.P4202710291734450246

/-! ## A005440.P537042778858716726

`A094346(A000096(n+1)+3)`
-/

namespace A005440.P537042778858716726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094346 (A000096 (n + 1) + 3).toNat

end

end A005440.P537042778858716726

/-! ## A005440.P16156471741653033138

`record[A036970(A066182(n+1)+2)]`
-/

namespace A005440.P16156471741653033138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036970 (A066182 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005440.P16156471741653033138

/-! ## A005440.P11476678831886227196

`record[lcm(A036970(n+2), A089799(n))]`
-/

namespace A005440.P11476678831886227196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036970 (n + 2)) (A089799 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005440.P11476678831886227196

/-! ## A005440.P1317893638353197749

`record[A036970(n+3)/A124733(n+1)]`
-/

namespace A005440.P1317893638353197749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036970 (n + 3) : ℚ) / (A124733 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005440.P1317893638353197749

/-!
# A005441: Number of isonemal fabrics of period exactly n.

The programs for A005441, there is no canonical definition to state claims against.
-/

/-! ## A005441.P10298710364568321448

`A000046(n+2)+A193140(n+2)+A262589(n+2)`
-/

namespace A005441.P10298710364568321448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 2) + A193140 (n + 2) + A262589 (n + 2)

end

end A005441.P10298710364568321448

/-!
# A005442: a(n) = n!*Fibonacci(n+1).

The programs for A005442, the canonical program `A005442.P4034390675525414823` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005442 has offset 0).

The definition of A005442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005442.P4034390675525414823

`n*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005442

/-- `n*a(n-1)+n*(n-1)*a(n-2)` -/
def P4034390675525414823.Spec : Prop :=
  ∀ n, P4034390675525414823.a n = A005442 n

theorem P4034390675525414823.correct : P4034390675525414823.Spec := by
  intro n
  simp only [A005442]

end A005442

/-! ## A005442.P4798321610256894036

`n*(a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A005442.P4798321610256894036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A005442.P4798321610256894036

namespace A005442

/-- `n*(a(n-1)+(n-1)*a(n-2))` -/
def P4798321610256894036.Spec : Prop :=
  ∀ n, P4798321610256894036.a n = A005442 n

theorem P4798321610256894036.correct : P4798321610256894036.Spec := by
  intro n
  simp only [A005442, Nat.add_sub_cancel, A005442.P4798321610256894036.a, A005442.P4034390675525414823.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005442

/-! ## A005442.P3325402783455835112

`n*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A005442.P3325402783455835112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A005442.P3325402783455835112

namespace A005442

/-- `n*(a(n-1)-(a(n-2)-n*a(n-2)))` -/
def P3325402783455835112.Spec : Prop :=
  ∀ n, P3325402783455835112.a n = A005442 n

theorem P3325402783455835112.correct : P3325402783455835112.Spec := by
  intro n
  simp only [A005442, Nat.add_sub_cancel, A005442.P3325402783455835112.a, A005442.P4034390675525414823.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005442

/-! ## A005442.P12669231750574647295

`A039948(∑[n])`
-/

namespace A005442.P12669231750574647295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039948 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005442.P12669231750574647295

namespace A005442

/-- `A039948(∑[n])` -/
def P12669231750574647295.Spec : Prop :=
  ∀ n, P12669231750574647295.a n = A005442 n

end A005442

/-! ## A005442.P18240069779340009851

`n!*∑[A212804(n)]`
-/

namespace A005442.P18240069779340009851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005442.P18240069779340009851

namespace A005442

/-- `n!*∑[A212804(n)]` -/
def P18240069779340009851.Spec : Prop :=
  ∀ n, P18240069779340009851.a n = A005442 n

end A005442

/-! ## A005442.P14958326940803810215

`n!*A000045(n+1)`
-/

namespace A005442.P14958326940803810215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 (n + 1)

end

end A005442.P14958326940803810215

namespace A005442

/-- `n!*A000045(n+1)` -/
def P14958326940803810215.Spec : Prop :=
  ∀ n, P14958326940803810215.a n = A005442 n

end A005442

/-! ## A005442.P7032313750691682360

`n!*A212804(n+2)`
-/

namespace A005442.P7032313750691682360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A212804 (n + 2)

end

end A005442.P7032313750691682360

namespace A005442

/-- `n!*A212804(n+2)` -/
def P7032313750691682360.Spec : Prop :=
  ∀ n, P7032313750691682360.a n = A005442 n

end A005442

/-! ## A005442.P2699328289162216523

`n!*∑[A000045(abs(1-n))]`
-/

namespace A005442.P2699328289162216523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005442.P2699328289162216523

namespace A005442

/-- `n!*∑[A000045(abs(1-n))]` -/
def P2699328289162216523.Spec : Prop :=
  ∀ n, P2699328289162216523.a n = A005442 n

end A005442

/-! ## A005442.P7881815875333908550

`A052554(n)+A005443(n)`
-/

namespace A005442.P7881815875333908550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052554 n + A005443 n

end

end A005442.P7881815875333908550

namespace A005442

/-- `A052554(n)+A005443(n)` -/
def P7881815875333908550.Spec : Prop :=
  ∀ n, P7881815875333908550.a n = A005442 n

end A005442

/-! ## A005442.P9342688745462018445

`∑[A212804(n)]*A000142(n)`
-/

namespace A005442.P9342688745462018445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A005442.P9342688745462018445

namespace A005442

/-- `∑[A212804(n)]*A000142(n)` -/
def P9342688745462018445.Spec : Prop :=
  ∀ n, P9342688745462018445.a n = A005442 n

end A005442

/-!
# A005443: a(n) = n! * Fibonacci(n).

The programs for A005443, the canonical program `A005443.P11004468149058486541` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005443 has offset 0).

The definition of A005443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005443.P11004468149058486541

`n*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005443

/-- `n*a(n-1)+n*(n-1)*a(n-2)` -/
def P11004468149058486541.Spec : Prop :=
  ∀ n, P11004468149058486541.a n = A005443 n

theorem P11004468149058486541.correct : P11004468149058486541.Spec := by
  intro n
  simp only [A005443]

end A005443

/-! ## A005443.P15145485899504265479

`n*(a(n-1)+(n-1)*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A005443.P15145485899504265479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A005443.P15145485899504265479

namespace A005443

/-- `n*(a(n-1)+(n-1)*a(n-2))` -/
def P15145485899504265479.Spec : Prop :=
  ∀ n, P15145485899504265479.a n = A005443 n

theorem P15145485899504265479.correct : P15145485899504265479.Spec := by
  intro n
  simp only [A005443, Nat.add_sub_cancel, A005443.P15145485899504265479.a, A005443.P11004468149058486541.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005443

/-! ## A005443.P2955199750224010143

`n*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A005443.P2955199750224010143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A005443.P2955199750224010143

namespace A005443

/-- `n*(a(n-1)-(a(n-2)-n*a(n-2)))` -/
def P2955199750224010143.Spec : Prop :=
  ∀ n, P2955199750224010143.a n = A005443 n

theorem P2955199750224010143.correct : P2955199750224010143.Spec := by
  intro n
  simp only [A005443, Nat.add_sub_cancel, A005443.P2955199750224010143.a, A005443.P11004468149058486541.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005443

/-! ## A005443.P2100049464656099245

`n!*A000045(n)`
-/

namespace A005443.P2100049464656099245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 n

end

end A005443.P2100049464656099245

namespace A005443

/-- `n!*A000045(n)` -/
def P2100049464656099245.Spec : Prop :=
  ∀ n, P2100049464656099245.a n = A005443 n

end A005443

/-! ## A005443.P13924108323365830586

`sqrt(A007598(n))*n!`
-/

namespace A005443.P13924108323365830586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * (Nat.factorial n : ℝ)

end

end A005443.P13924108323365830586

namespace A005443

/-- `sqrt(A007598(n))*n!` -/
def P13924108323365830586.Spec : Prop :=
  ∀ n, P13924108323365830586.a n = (A005443 n : ℝ)

end A005443

/-! ## A005443.P18030161752120677665

`(A157725(n)-2)*n!`
-/

namespace A005443.P18030161752120677665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * (Nat.factorial n : ℤ)

end

end A005443.P18030161752120677665

namespace A005443

/-- `(A157725(n)-2)*n!` -/
def P18030161752120677665.Spec : Prop :=
  ∀ n, P18030161752120677665.a n = A005443 n

end A005443

/-! ## A005443.P14099676274039532522

`A052554(n+1)/(n+1)`
-/

namespace A005443.P14099676274039532522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052554 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005443.P14099676274039532522

namespace A005443

/-- `A052554(n+1)/(n+1)` -/
def P14099676274039532522.Spec : Prop :=
  ∀ n, P14099676274039532522.a n = (A005443 n : ℚ)

end A005443

/-! ## A005443.P4421917711738960016

`A000045(n)*A000142(n)`
-/

namespace A005443.P4421917711738960016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000142 n

end

end A005443.P4421917711738960016

namespace A005443

/-- `A000045(n)*A000142(n)` -/
def P4421917711738960016.Spec : Prop :=
  ∀ n, P4421917711738960016.a n = A005443 n

end A005443

/-! ## A005443.P8459418941633909791

`A052579(n)*A167808(n)`
-/

namespace A005443.P8459418941633909791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052579 n * A167808 n

end

end A005443.P8459418941633909791

namespace A005443

/-- `A052579(n)*A167808(n)` -/
def P8459418941633909791.Spec : Prop :=
  ∀ n, P8459418941633909791.a n = A005443 n

end A005443

/-!
# A005444: From a Fibonacci-like differential equation.

The programs for A005444, there is no canonical definition to state claims against.
-/

/-! ## A005444.P8084245674405203552

`A358032(n)-A005445(n)`
-/

namespace A005444.P8084245674405203552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358032 n - A005445 n

end

end A005444.P8084245674405203552

/-! ## A005444.P12012698064873135523

`A366133(∑[n])`
-/

namespace A005444.P12012698064873135523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366133 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005444.P12012698064873135523

/-! ## A005444.P15433754409088167920

`A214020(n)*A366133(A000217(n))`
-/

namespace A005444.P15433754409088167920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214020 n * A366133 (A000217 n).toNat

end

end A005444.P15433754409088167920

/-! ## A005444.P8584690101227959743

`A366133(A000217(n))%A239696(n+1)`
-/

namespace A005444.P8584690101227959743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366133 (A000217 n).toNat) (A239696 (n + 1))

end

end A005444.P8584690101227959743

/-! ## A005444.P5314222423998158961

`lcm(A005361(n+1), A366133(A000217(n)))`
-/

namespace A005444.P5314222423998158961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005361 (n + 1)) (A366133 (A000217 n).toNat)

end

end A005444.P5314222423998158961

/-!
# A005445: From a Fibonacci-like differential equation.

The programs for A005445, there is no canonical definition to state claims against.
-/

/-! ## A005445.P12020760863705865977

`A358032(n)-A005444(n)`
-/

namespace A005445.P12020760863705865977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358032 n - A005444 n

end

end A005445.P12020760863705865977

/-! ## A005445.P11493394912455740685

`A006252(n)*A048785(A002665(n))`
-/

namespace A005445.P11493394912455740685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n * A048785 (A002665 n).toNat

end

end A005445.P11493394912455740685

/-!
# A005446: Denominators of expansion of -W_{-1}(-e^{-1-x^2/2}) where W_{-1} is Lambert W function.

The programs for A005446, there is no canonical definition to state claims against.
-/

/-! ## A005446.P10306887622079329095

`A088336(n+1)*A094366(A088336(n))`
-/

namespace A005446.P10306887622079329095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088336 (n + 1) * A094366 (A088336 n).toNat

end

end A005446.P10306887622079329095

/-! ## A005446.P18421244198371877515

`A065033(A073973(n+1)*A325865(n))`
-/

namespace A005446.P18421244198371877515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A073973 (n + 1) * A325865 n).toNat

end

end A005446.P18421244198371877515

/-!
# A005447: Numerators of the expansion of -W_{-1}(-e^(-1 - x^2/2)) where x > 0 and W_{-1} is the Lambert W function.

The programs for A005447, there is no canonical definition to state claims against.
-/

/-! ## A005447.P7548142253113511303

`A299432(A254667(n)+2)`
-/

namespace A005447.P7548142253113511303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (A254667 n + 2).toNat

end

end A005447.P7548142253113511303

/-! ## A005447.P3482170836248907190

`A299432(A233583(n+1)+2)`
-/

namespace A005447.P3482170836248907190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (A233583 (n + 1) + 2).toNat

end

end A005447.P3482170836248907190

/-! ## A005447.P2924795158613551768

`A299432(n+2)+A159075(n)`
-/

namespace A005447.P2924795158613551768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (n + 2) + A159075 n

end

end A005447.P2924795158613551768

/-! ## A005447.P17316286119450678232

`A299432(A223134(n)+1-n)`
-/

namespace A005447.P17316286119450678232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (A223134 n + (1 - (n : ℤ))).toNat

end

end A005447.P17316286119450678232

/-! ## A005447.P10397085053556563460

`A299432(1-(n-A223134(n)))`
-/

namespace A005447.P10397085053556563460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (1 - ((n : ℤ) - A223134 n)).toNat

end

end A005447.P10397085053556563460

/-!
# A005448: Centered triangular numbers: a(n) = 3*n*(n-1)/2 + 1.

The programs for A005448, the canonical program `A005448.P14949464415193466178` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005448 has offset 1).

The definition of A005448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)*n/2+1` (program `A005448.P6588426205128255634`, by `A005448.P6588426205128255634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005448.P14949464415193466178

`a(n-1)+3*n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005448

/-- `a(n-1)+3*n` -/
def P14949464415193466178.Spec : Prop :=
  ∀ n, (P14949464415193466178.a n : ℤ) = A005448 (n + 1)

theorem P14949464415193466178.correct : P14949464415193466178.Spec := by
  intro n
  simp only [A005448, Nat.add_sub_cancel]

end A005448

/-! ## A005448.P6588426205128255634

`3*(n+1)*n/2+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005448.P6588426205128255634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) * ((n : ℚ) / 2)) + 1

end

end A005448.P6588426205128255634

namespace A005448

/-- `3*(n+1)*n/2+1` -/
def P6588426205128255634.Spec : Prop :=
  ∀ n, P6588426205128255634.a n = (A005448 (n + 1) : ℚ)

theorem P6588426205128255634.correct : P6588426205128255634.Spec := by
  intro n
  induction n with
  | zero => simp [A005448, A005448.P6588426205128255634.a, A005448.P14949464415193466178.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A005448, Nat.add_sub_cancel, A005448.P6588426205128255634.a, A005448.P14949464415193466178.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A005448

/-! ## A005448.P11334033693151486845

`(3*A016754(n)+5)/8`
-/

namespace A005448.P11334033693151486845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A016754 n + 5 : ℚ) / 8

end

end A005448.P11334033693151486845

namespace A005448

/-- `(3*A016754(n)+5)/8` -/
def P11334033693151486845.Spec : Prop :=
  ∀ n, P11334033693151486845.a n = (A005448 (n + 1) : ℚ)

end A005448

/-! ## A005448.P4745106686692025101

`∑[floor(3/acot(n))]`
-/

namespace A005448.P4745106686692025101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005448.P4745106686692025101

namespace A005448

/-- `∑[floor(3/acot(n))]` -/
def P4745106686692025101.Spec : Prop :=
  ∀ n, P4745106686692025101.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P14923114465848201533

`abs(xor(∑[3*n], -1))`
-/

namespace A005448.P14923114465848201533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)|

end

end A005448.P14923114465848201533

namespace A005448

/-- `abs(xor(∑[3*n], -1))` -/
def P14923114465848201533.Spec : Prop :=
  ∀ n, P14923114465848201533.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P18004321384617931160

`-xor(∑[3*n], -1)`
-/

namespace A005448.P18004321384617931160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A005448.P18004321384617931160

namespace A005448

/-- `-xor(∑[3*n], -1)` -/
def P18004321384617931160.Spec : Prop :=
  ∀ n, P18004321384617931160.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P4809838578374279703

`floor(3*(∑[n]-cos(2)))`
-/

namespace A005448.P4809838578374279703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (2 : ℝ))⌋

end

end A005448.P4809838578374279703

namespace A005448

/-- `floor(3*(∑[n]-cos(2)))` -/
def P4809838578374279703.Spec : Prop :=
  ∀ n, P4809838578374279703.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P2848820834403383588

`round(3*(∑[n]-cos(2)))`
-/

namespace A005448.P2848820834403383588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (2 : ℝ)))

end

end A005448.P2848820834403383588

namespace A005448

/-- `round(3*(∑[n]-cos(2)))` -/
def P2848820834403383588.Spec : Prop :=
  ∀ n, P2848820834403383588.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P28096798721489948

`ceil(3*(∑[n]-tan(3)))`
-/

namespace A005448.P28096798721489948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.tan (3 : ℝ))⌉

end

end A005448.P28096798721489948

namespace A005448

/-- `ceil(3*(∑[n]-tan(3)))` -/
def P28096798721489948.Spec : Prop :=
  ∀ n, P28096798721489948.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P6871935280440508636

`floor(3*(∑[n]-cot(2)))`
-/

namespace A005448.P6871935280440508636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cot (2 : ℝ))⌋

end

end A005448.P6871935280440508636

namespace A005448

/-- `floor(3*(∑[n]-cot(2)))` -/
def P6871935280440508636.Spec : Prop :=
  ∀ n, P6871935280440508636.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P12437457274025614155

`round(3*(∑[n]-cot(2)))`
-/

namespace A005448.P12437457274025614155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cot (2 : ℝ)))

end

end A005448.P12437457274025614155

namespace A005448

/-- `round(3*(∑[n]-cot(2)))` -/
def P12437457274025614155.Spec : Prop :=
  ∀ n, P12437457274025614155.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P11612985840753383031

`∑[ceil(3/acot(n))-1]`
-/

namespace A005448.P11612985840753383031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005448.P11612985840753383031

namespace A005448

/-- `∑[ceil(3/acot(n))-1]` -/
def P11612985840753383031.Spec : Prop :=
  ∀ n, P11612985840753383031.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P13664744076081518838

`ceil(1/acot(∑[3*n]))`
-/

namespace A005448.P13664744076081518838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A005448.P13664744076081518838

namespace A005448

/-- `ceil(1/acot(∑[3*n]))` -/
def P13664744076081518838.Spec : Prop :=
  ∀ n, P13664744076081518838.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P16365033276447639634

`∑[round(1/acot(3*n))]`
-/

namespace A005448.P16365033276447639634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (3 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005448.P16365033276447639634

namespace A005448

/-- `∑[round(1/acot(3*n))]` -/
def P16365033276447639634.Spec : Prop :=
  ∀ n, P16365033276447639634.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P343378039817384864

`∑[gcd(3*n, floor(acot(n)))]`
-/

namespace A005448.P343378039817384864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005448.P343378039817384864

namespace A005448

/-- `∑[gcd(3*n, floor(acot(n)))]` -/
def P343378039817384864.Spec : Prop :=
  ∀ n, (P343378039817384864.a n : ℤ) = A005448 (n + 1)

end A005448

/-! ## A005448.P17139782225370561951

`∑[or(3*n, floor(acot(n)))]`
-/

namespace A005448.P17139782225370561951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005448.P17139782225370561951

namespace A005448

/-- `∑[or(3*n, floor(acot(n)))]` -/
def P17139782225370561951.Spec : Prop :=
  ∀ n, P17139782225370561951.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P5423972923474491131

`∑[floor(∑[3-acot(n²)])]`
-/

namespace A005448.P5423972923474491131
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 - SequenceMachineLib.acot (n ^ 2 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005448.P5423972923474491131

namespace A005448

/-- `∑[floor(∑[3-acot(n²)])]` -/
def P5423972923474491131.Spec : Prop :=
  ∀ n, P5423972923474491131.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P13045831515340110889

`∑[ceil(∑[3-acot(n)²])]`
-/

namespace A005448.P13045831515340110889
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 - SequenceMachineLib.acot (n : ℝ) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005448.P13045831515340110889

namespace A005448

/-- `∑[ceil(∑[3-acot(n)²])]` -/
def P13045831515340110889.Spec : Prop :=
  ∀ n, P13045831515340110889.a n = A005448 (n + 1)

end A005448

/-! ## A005448.P15641513082824924457

`∑[a(n-1)+3]` with `a(0)=1, a(1)=3`
-/

namespace A005448.P15641513082824924457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005448.P15641513082824924457

namespace A005448

/-- `∑[a(n-1)+3]` -/
def P15641513082824924457.Spec : Prop :=
  ∀ n, (P15641513082824924457.a n : ℤ) = A005448 (n + 1)

end A005448

/-! ## A005448.P5373645178420110865

`round(xor(1, ∑[6*n])/2)`
-/

namespace A005448.P5373645178420110865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)

end

end A005448.P5373645178420110865

namespace A005448

/-- `round(xor(1, ∑[6*n])/2)` -/
def P5373645178420110865.Spec : Prop :=
  ∀ n, P5373645178420110865.a n = A005448 (n + 1)

end A005448

/-!
# A005449: Second pentagonal numbers: a(n) = n*(3*n + 1)/2.

The programs for A005449, the canonical program `A005449.P12864083839943164145` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005449 has offset 0).

The definition of A005449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+1)/2` (program `A005449.P14880089835532470921`, by `A005449.P14880089835532470921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005449.P14880089835532470921

`n*(3*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005449.P14880089835532470921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((3 * n + 1 : ℚ) / 2)

end

end A005449.P14880089835532470921

namespace A005449

/-- `n*(3*n+1)/2` -/
def P14880089835532470921.Spec : Prop :=
  ∀ n, P14880089835532470921.a n = (A005449 n : ℚ)

theorem P14880089835532470921.correct : P14880089835532470921.Spec := by
  intro n
  induction n with
  | zero => simp [A005449, A005449.P14880089835532470921.a, A005449.P12864083839943164145.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A005449, Nat.add_sub_cancel, A005449.P14880089835532470921.a, A005449.P12864083839943164145.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A005449

/-! ## A005449.P12864083839943164145

`a(n-1)+3*n-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005449

/-- `a(n-1)+3*n-1` -/
def P12864083839943164145.Spec : Prop :=
  ∀ n, P12864083839943164145.a n = A005449 n

theorem P12864083839943164145.correct : P12864083839943164145.Spec := by
  intro n
  simp only [A005449]

end A005449

/-! ## A005449.P1653556782267840416

`A000326(n)+n`
-/

namespace A005449.P1653556782267840416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + (n : ℤ)

end

end A005449.P1653556782267840416

namespace A005449

/-- `A000326(n)+n` -/
def P1653556782267840416.Spec : Prop :=
  ∀ n, P1653556782267840416.a n = A005449 n

end A005449

/-! ## A005449.P11511394004460674602

`A000217(n)+A000290(n)`
-/

namespace A005449.P11511394004460674602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000290 n

end

end A005449.P11511394004460674602

namespace A005449

/-- `A000217(n)+A000290(n)` -/
def P11511394004460674602.Spec : Prop :=
  ∀ n, P11511394004460674602.a n = A005449 n

end A005449

/-! ## A005449.P11175224262437720920

`A001844(n)-A000217(n+1)`
-/

namespace A005449.P11175224262437720920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A000217 (n + 1)

end

end A005449.P11175224262437720920

namespace A005449

/-- `A001844(n)-A000217(n+1)` -/
def P11175224262437720920.Spec : Prop :=
  ∀ n, P11175224262437720920.a n = A005449 n

end A005449

/-! ## A005449.P16719142082420220351

`A000217(2*n)-A000217(n)`
-/

namespace A005449.P16719142082420220351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A000217 n

end

end A005449.P16719142082420220351

namespace A005449

/-- `A000217(2*n)-A000217(n)` -/
def P16719142082420220351.Spec : Prop :=
  ∀ n, P16719142082420220351.a n = A005449 n

end A005449

/-! ## A005449.P17853466570446288899

`Δ[n*C(n, 2)]`
-/

namespace A005449.P17853466570446288899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A005449.P17853466570446288899

namespace A005449

/-- `Δ[n*C(n, 2)]` -/
def P17853466570446288899.Spec : Prop :=
  ∀ n, P17853466570446288899.a n = A005449 n

end A005449

/-! ## A005449.P4070195710229207400

`∑[floor(3/acot(n))-1]`
-/

namespace A005449.P4070195710229207400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005449.P4070195710229207400

namespace A005449

/-- `∑[floor(3/acot(n))-1]` -/
def P4070195710229207400.Spec : Prop :=
  ∀ n, P4070195710229207400.a n = A005449 n

end A005449

/-! ## A005449.P6849591286683802401

`∑[ceil(3/acot(n))-2]`
-/

namespace A005449.P6849591286683802401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005449.P6849591286683802401

namespace A005449

/-- `∑[ceil(3/acot(n))-2]` -/
def P6849591286683802401.Spec : Prop :=
  ∀ n, P6849591286683802401.a n = A005449 n

end A005449

/-! ## A005449.P9452772888884705170

`∑[lt[n, n^(n%3)]]`
-/

namespace A005449.P9452772888884705170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005449.P9452772888884705170

namespace A005449

/-- `∑[lt[n, n^(n%3)]]` -/
def P9452772888884705170.Spec : Prop :=
  ∀ n, (P9452772888884705170.a n : ℤ) = A005449 n

end A005449

/-! ## A005449.P3977846825960362334

`∑[floor(n*(3-acot(n)))]`
-/

namespace A005449.P3977846825960362334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 - SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005449.P3977846825960362334

namespace A005449

/-- `∑[floor(n*(3-acot(n)))]` -/
def P3977846825960362334.Spec : Prop :=
  ∀ n, P3977846825960362334.a n = A005449 n

end A005449

/-! ## A005449.P2430561221014816465

`∑[round(n*(3-acot(n)))]`
-/

namespace A005449.P2430561221014816465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 - SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005449.P2430561221014816465

namespace A005449

/-- `∑[round(n*(3-acot(n)))]` -/
def P2430561221014816465.Spec : Prop :=
  ∀ n, P2430561221014816465.a n = A005449 n

end A005449

/-! ## A005449.P11815896284176775916

`∑[floor(∑[3-acot(n)²])]`
-/

namespace A005449.P11815896284176775916
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 - SequenceMachineLib.acot (n : ℝ) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005449.P11815896284176775916

namespace A005449

/-- `∑[floor(∑[3-acot(n)²])]` -/
def P11815896284176775916.Spec : Prop :=
  ∀ n, P11815896284176775916.a n = A005449 n

end A005449

/-! ## A005449.P14916064137252553928

`floor(∑[n]+n/acot(n))`
-/

namespace A005449.P14916064137252553928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A005449.P14916064137252553928

namespace A005449

/-- `floor(∑[n]+n/acot(n))` -/
def P14916064137252553928.Spec : Prop :=
  ∀ n, P14916064137252553928.a n = A005449 n

end A005449

/-! ## A005449.P10521896097047328304

`round(∑[n]+n/acot(n))`
-/

namespace A005449.P10521896097047328304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A005449.P10521896097047328304

namespace A005449

/-- `round(∑[n]+n/acot(n))` -/
def P10521896097047328304.Spec : Prop :=
  ∀ n, P10521896097047328304.a n = A005449 n

end A005449

/-! ## A005449.P16530600377216774323

`∑[a(n-1)+3]` with `a(0)=0, a(1)=2`
-/

namespace A005449.P16530600377216774323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005449.P16530600377216774323

namespace A005449

/-- `∑[a(n-1)+3]` -/
def P16530600377216774323.Spec : Prop :=
  ∀ n, (P16530600377216774323.a n : ℤ) = A005449 n

end A005449

/-! ## A005449.P11104538418057011676

`abs(C(n, 2)-2*n²)`
-/

namespace A005449.P11104538418057011676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) - (2 * n ^ 2 : ℤ)|

end

end A005449.P11104538418057011676

namespace A005449

/-- `abs(C(n, 2)-2*n²)` -/
def P11104538418057011676.Spec : Prop :=
  ∀ n, P11104538418057011676.a n = A005449 n

end A005449

/-! ## A005449.P3512042692399870769

`A001318(2*n)`
-/

namespace A005449.P3512042692399870769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n)

end

end A005449.P3512042692399870769

namespace A005449

/-- `A001318(2*n)` -/
def P3512042692399870769.Spec : Prop :=
  ∀ n, P3512042692399870769.a n = A005449 n

end A005449

/-!
# A005450: Numerator of (1 + Gamma(n))/n.

The programs for A005450, there is no canonical definition to state claims against.
-/

/-! ## A005450.P415126861966998307

`(n!+1)/∏{d}[∑{p}[n+1, C(#, n)], #]`
-/

namespace A005450.P415126861966998307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)

end

end A005450.P415126861966998307

/-! ## A005450.P9225757714714764353

`(n!+1)/ratio[A034386(n)]`
-/

namespace A005450.P9225757714714764353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A005450.P9225757714714764353

/-! ## A005450.P8682696145476823152

`(n!+1)/A089026(n+1)`
-/

namespace A005450.P8682696145476823152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℚ) / (A089026 (n + 1) : ℚ)

end

end A005450.P8682696145476823152

/-! ## A005450.P16386821714330732587

`(n!+1)/gcd(n+1, A151800(n))`
-/

namespace A005450.P16386821714330732587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A151800 n) : ℚ)

end

end A005450.P16386821714330732587

/-! ## A005450.P5872047275301434728

`(A000142(n)+1)/∏{d}[∑{p}[n+1, C(#, n)], #]`
-/

namespace A005450.P5872047275301434728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n + 1 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)

end

end A005450.P5872047275301434728

/-! ## A005450.P9612656498501176095

`(A000142(n)+1)/A089026(n+1)`
-/

namespace A005450.P9612656498501176095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n + 1 : ℚ) / (A089026 (n + 1) : ℚ)

end

end A005450.P9612656498501176095

/-! ## A005450.P12618186091621771411

`(n!+1)/A166333(A166260(n+1))`
-/

namespace A005450.P12618186091621771411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℚ) / (A166333 (A166260 (n + 1)).toNat : ℚ)

end

end A005450.P12618186091621771411

/-! ## A005450.P13012843680185898371

`(∏[A028310(n)]+1)/A089026(n+1)`
-/

namespace A005450.P13012843680185898371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / (A089026 (n + 1) : ℚ)

end

end A005450.P13012843680185898371

/-! ## A005450.P4716272687088006331

`A038507(n)/A014963(A139693(n))`
-/

namespace A005450.P4716272687088006331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038507 n : ℚ) / (A014963 (A139693 n).toNat : ℚ)

end

end A005450.P4716272687088006331

/-! ## A005450.P1296123357337985192

`A038507(n)/A032742(A074828(n+1))`
-/

namespace A005450.P1296123357337985192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038507 n : ℚ) / (A032742 (A074828 (n + 1)).toNat : ℚ)

end

end A005450.P1296123357337985192

/-!
# A005451: a(n) = 1 if n is a prime number, otherwise a(n) = n.

The programs for A005451, the canonical program `A005451.P1346207900117674736` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005451 has offset 1).

The definition of A005451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005451.P1346207900117674736

`n*∏{p}[n+1, C(#%n, #)]+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005451

/-- `n*∏{p}[n+1, C(#%n, #)]+1` -/
def P1346207900117674736.Spec : Prop :=
  ∀ n, (P1346207900117674736.a n : ℤ) = A005451 (n + 1)

theorem P1346207900117674736.correct : P1346207900117674736.Spec := by
  intro n
  simp only [A005451, Nat.add_sub_cancel]

end A005451

/-! ## A005451.P3775661647660810884

`n*∑{e}[∑{p}[∑{e}[n+1, #], #], #]+1`
-/

namespace A005451.P3775661647660810884
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 1

end

end A005451.P3775661647660810884

namespace A005451

/-- `n*∑{e}[∑{p}[∑{e}[n+1, #], #], #]+1` -/
def P3775661647660810884.Spec : Prop :=
  ∀ n, (P3775661647660810884.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P24474783994033080

`n*char[lt[n+2, ∑{d}[n+1, #]]]+1`
-/

namespace A005451.P24474783994033080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A005451.P24474783994033080

namespace A005451

/-- `n*char[lt[n+2, ∑{d}[n+1, #]]]+1` -/
def P24474783994033080.Spec : Prop :=
  ∀ n, (P24474783994033080.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P1413657687112006147

`gcd(n+1, floor(∑{p}[n+1, ϕ^(#-n)]))`
-/

namespace A005451.P1413657687112006147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌊∑ p ∈ Nat.primeFactors (f1 n), Real.goldenRatio ^ ((p : ℤ) - (n : ℤ) : ℤ)⌋

end

end A005451.P1413657687112006147

namespace A005451

/-- `gcd(n+1, floor(∑{p}[n+1, ϕ^(#-n)]))` -/
def P1413657687112006147.Spec : Prop :=
  ∀ n, (P1413657687112006147.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P10447955042093163407

`gcd(n+1, A085926(n))`
-/

namespace A005451.P10447955042093163407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A085926 n)

end

end A005451.P10447955042093163407

namespace A005451

/-- `gcd(n+1, A085926(n))` -/
def P10447955042093163407.Spec : Prop :=
  ∀ n, (P10447955042093163407.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P1634396096662198382

`C(A014684(n+1), n)`
-/

namespace A005451.P1634396096662198382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014684 (n + 1)).toNat n

end

end A005451.P1634396096662198382

namespace A005451

/-- `C(A014684(n+1), n)` -/
def P1634396096662198382.Spec : Prop :=
  ∀ n, (P1634396096662198382.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P10494996148655172860

`1-A166260(n+1)+n`
-/

namespace A005451.P10494996148655172860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A166260 (n + 1) + (n : ℤ)

end

end A005451.P10494996148655172860

namespace A005451

/-- `1-A166260(n+1)+n` -/
def P10494996148655172860.Spec : Prop :=
  ∀ n, P10494996148655172860.a n = A005451 (n + 1)

end A005451

/-! ## A005451.P9821589848231864779

`n*A005171(n+1)+1`
-/

namespace A005451.P9821589848231864779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005171 (n + 1) + 1

end

end A005451.P9821589848231864779

namespace A005451

/-- `n*A005171(n+1)+1` -/
def P9821589848231864779.Spec : Prop :=
  ∀ n, P9821589848231864779.a n = A005451 (n + 1)

end A005451

/-! ## A005451.P8277060515675727748

`n*A066247(n+1)+1`
-/

namespace A005451.P8277060515675727748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066247 (n + 1) + 1

end

end A005451.P8277060515675727748

namespace A005451

/-- `n*A066247(n+1)+1` -/
def P8277060515675727748.Spec : Prop :=
  ∀ n, P8277060515675727748.a n = A005451 (n + 1)

end A005451

/-! ## A005451.P6955034379067367014

`2-A089026(n+1)+n`
-/

namespace A005451.P6955034379067367014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A089026 (n + 1) + (n : ℤ)

end

end A005451.P6955034379067367014

namespace A005451

/-- `2-A089026(n+1)+n` -/
def P6955034379067367014.Spec : Prop :=
  ∀ n, P6955034379067367014.a n = A005451 (n + 1)

end A005451

/-! ## A005451.P1976729166111108616

`lcm(n, A055976(n+1))+1`
-/

namespace A005451.P1976729166111108616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A055976 (n + 1)) + 1

end

end A005451.P1976729166111108616

namespace A005451

/-- `lcm(n, A055976(n+1))+1` -/
def P1976729166111108616.Spec : Prop :=
  ∀ n, (P1976729166111108616.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P3359002948973030739

`C(n+1, A113637(n+1))`
-/

namespace A005451.P3359002948973030739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A113637 (n + 1)).toNat

end

end A005451.P3359002948973030739

namespace A005451

/-- `C(n+1, A113637(n+1))` -/
def P3359002948973030739.Spec : Prop :=
  ∀ n, (P3359002948973030739.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P3914228930394562158

`C(A113636(n+1)-1, n)`
-/

namespace A005451.P3914228930394562158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113636 (n + 1) - 1).toNat n

end

end A005451.P3914228930394562158

namespace A005451

/-- `C(A113636(n+1)-1, n)` -/
def P3914228930394562158.Spec : Prop :=
  ∀ n, (P3914228930394562158.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P11484946288811871257

`∏{e}[A085392(n+1), #+n]`
-/

namespace A005451.P11484946288811871257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + n)

end

end A005451.P11484946288811871257

namespace A005451

/-- `∏{e}[A085392(n+1), #+n]` -/
def P11484946288811871257.Spec : Prop :=
  ∀ n, (P11484946288811871257.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P17687070237153331323

`gcd((n+1)², A014683(n+1))`
-/

namespace A005451.P17687070237153331323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A014683 (n + 1))

end

end A005451.P17687070237153331323

namespace A005451

/-- `gcd((n+1)², A014683(n+1))` -/
def P17687070237153331323.Spec : Prop :=
  ∀ n, (P17687070237153331323.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P12226621363671086052

`(n+1)^(1-A010051(n+1))`
-/

namespace A005451.P12226621363671086052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A010051 (n + 1) : ℤ)

end

end A005451.P12226621363671086052

namespace A005451

/-- `(n+1)^(1-A010051(n+1))` -/
def P12226621363671086052.Spec : Prop :=
  ∀ n, P12226621363671086052.a n = (A005451 (n + 1) : ℚ)

end A005451

/-! ## A005451.P14883870775031381976

`(n+1)^(1-A080339(n+1))`
-/

namespace A005451.P14883870775031381976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A080339 (n + 1) : ℤ)

end

end A005451.P14883870775031381976

namespace A005451

/-- `(n+1)^(1-A080339(n+1))` -/
def P14883870775031381976.Spec : Prop :=
  ∀ n, P14883870775031381976.a n = (A005451 (n + 1) : ℚ)

end A005451

/-! ## A005451.P3294618632819252792

`n%(2-A000203(n+1))+1`
-/

namespace A005451.P3294618632819252792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (2 - A000203 (n + 1)) + 1

end

end A005451.P3294618632819252792

namespace A005451

/-- `n%(2-A000203(n+1))+1` -/
def P3294618632819252792.Spec : Prop :=
  ∀ n, P3294618632819252792.a n = A005451 (n + 1)

end A005451

/-! ## A005451.P9485569535749267459

`C(char[A018252(n+1)-1]+n, n)`
-/

namespace A005451.P9485569535749267459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n) n

end

end A005451.P9485569535749267459

namespace A005451

/-- `C(char[A018252(n+1)-1]+n, n)` -/
def P9485569535749267459.Spec : Prop :=
  ∀ n, (P9485569535749267459.a n : ℤ) = A005451 (n + 1)

end A005451

/-! ## A005451.P16912374924886730872

`(n+1)^(A191558(n+1)/(n+1))`
-/

namespace A005451.P16912374924886730872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A191558 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A005451.P16912374924886730872

namespace A005451

/-- `(n+1)^(A191558(n+1)/(n+1))` -/
def P16912374924886730872.Spec : Prop :=
  ∀ n, P16912374924886730872.a n = (A005451 (n + 1) : ℝ)

end A005451

/-!
# A005452: Number of positions that the 3 X 3 X 3 Rubik cube puzzle can be in after exactly n moves, up to equivalence under the full group of order 48 of the cube and with a half-turn is considered to be 2 moves.

The programs for A005452, there is no canonical definition to state claims against.
-/

/-! ## A005452.P5027701208201100191

`A279755(n)+A011371(A305988(n))`
-/

namespace A005452.P5027701208201100191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279755 n + A011371 (A305988 n).toNat

end

end A005452.P5027701208201100191

/-!
# A005453: A finite sequence associated with the Lie algebra B_4.

The programs for A005453, there is no canonical definition to state claims against.
-/

/-! ## A005453.P2186222157297485886

`∑[gcd(32, A319619(n))]`
-/

namespace A005453.P2186222157297485886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (A319619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005453.P2186222157297485886

/-! ## A005453.P9373284605825298377

`∑[(2*a(n-1))^A029340(n)²]` with `a(0)=1`
-/

namespace A005453.P9373284605825298377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * f1 (n - 1)) ^ (A029340 n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005453.P9373284605825298377

/-! ## A005453.P118308735121769408

`∑[gcd(2, floor(n/2))^A308158(n+1)]`
-/

namespace A005453.P118308735121769408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 ⌊(n : ℚ) / 2⌋ : ℚ) ^ (A308158 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005453.P118308735121769408

/-! ## A005453.P16867987777344448008

`∑[2^floor(n-log2(n+1))^A000161(n)]`
-/

namespace A005453.P16867987777344448008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℝ) - Real.logb 2 (n + 1 : ℝ)⌋ : ℤ)) ^ (A000161 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005453.P16867987777344448008

/-! ## A005453.P18378587259623647899

`∑[A061142(floor((n+1)/(or(n, n+2)-n))!)]`
-/

namespace A005453.P18378587259623647899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (Nat.factorial ⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005453.P18378587259623647899

/-!
# A005455: A finite sequence associated with the Lie algebra C_4.

The programs for A005455, there is no canonical definition to state claims against.
-/

/-! ## A005455.P16620231498261725830

`lt[A000096(n+1), A330613(A215631(n+1))]`
-/

namespace A005455.P16620231498261725830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (A215631 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005455.P16620231498261725830

/-!
# A005457: A finite sequence associated with the Lie algebra D_5.

The programs for A005457, there is no canonical definition to state claims against.
-/

/-! ## A005457.P6984265093857378470

`∪[A260987(n+1), A005453(n)]`
-/

namespace A005457.P6984265093857378470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005457.P6984265093857378470

/-! ## A005457.P5042186288354782842

`∪[A260987(n+1), A300678(n+1)]`
-/

namespace A005457.P5042186288354782842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005457.P5042186288354782842

/-! ## A005457.P12787006106043845647

`∪[A031140(A035106(n+1)), A005453(n)]`
-/

namespace A005457.P12787006106043845647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031140 (A035106 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005457.P12787006106043845647

/-! ## A005457.P16102779473795496084

`∪[A247953(A217349(n+1)), A192574(n)]`
-/

namespace A005457.P16102779473795496084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247953 (A217349 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005457.P16102779473795496084

/-! ## A005457.P8948009142519989800

`∪[A005438(n+1)*A074792(n+1), A005453(n)]`
-/

namespace A005457.P8948009142519989800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005438 (n + 1) * A074792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005457.P8948009142519989800

/-!
# A005458: A finite sequence associated with the Lie algebra F_4.

The programs for A005458, there is no canonical definition to state claims against.
-/

/-! ## A005458.P10906119348392090911

`∪[A005455(A005423(n)), A005453(n)]`
-/

namespace A005458.P10906119348392090911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005455 (A005423 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005458.P10906119348392090911

/-! ## A005458.P6642847270644907303

`eq[1, A240143(Δ[A239880(n)])]`
-/

namespace A005458.P6642847270644907303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240143 ((f3 (n + 1) - f3 n).toNat + 49)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005458.P6642847270644907303

/-! ## A005458.P12280012073136170612

`record[gcd(A309661(n), A346131(n+1))]`
-/

namespace A005458.P12280012073136170612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A309661 n) (A346131 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005458.P12280012073136170612

/-!
# A005460: a(n) = (3*n+4)*(n+3)!/24.

The programs for A005460, the canonical program `A005460.P5868538651287863130` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005460 has offset 0).

The definition of A005460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005460.P5868538651287863130

`n!*A001296(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005460

/-- `n!*A001296(n+1)` -/
def P5868538651287863130.Spec : Prop :=
  ∀ n, P5868538651287863130.a n = A005460 n

theorem P5868538651287863130.correct : P5868538651287863130.Spec := by
  intro n
  simp only [A005460]

end A005460

/-! ## A005460.P17836548577723515684

`(3*n+4)*(n+3)!/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005460.P17836548577723515684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 4) * Nat.factorial (n + 3) : ℚ) / 24

end

end A005460.P17836548577723515684

namespace A005460

/-- `(3*n+4)*(n+3)!/24` -/
def P17836548577723515684.Spec : Prop :=
  ∀ n, P17836548577723515684.a n = (A005460 n : ℚ)

end A005460

/-! ## A005460.P16837437503402416790

`n!*∑[(n+1)*∑[n+1]]`
-/

namespace A005460.P16837437503402416790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005460.P16837437503402416790

namespace A005460

/-- `n!*∑[(n+1)*∑[n+1]]` -/
def P16837437503402416790.Spec : Prop :=
  ∀ n, (P16837437503402416790.a n : ℤ) = A005460 n

end A005460

/-! ## A005460.P15675770241800573043

`3*∏[n+4]/4-1-abs(2/3*∏[n+3]-1)`
-/

namespace A005460.P15675770241800573043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4) - 1 - |(2 : ℚ) / 3 * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) - 1|

end

end A005460.P15675770241800573043

namespace A005460

/-- `3*∏[n+4]/4-1-abs(2/3*∏[n+3]-1)` -/
def P15675770241800573043.Spec : Prop :=
  ∀ n, P15675770241800573043.a n = (A005460 n : ℚ)

end A005460

/-! ## A005460.P1281670743037166821

`∑[∑[∑[3*n+1]]]*A000142(n)`
-/

namespace A005460.P1281670743037166821
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000142 n

end

end A005460.P1281670743037166821

namespace A005460

/-- `∑[∑[∑[3*n+1]]]*A000142(n)` -/
def P1281670743037166821.Spec : Prop :=
  ∀ n, P1281670743037166821.a n = A005460 n

end A005460

/-! ## A005460.P2256670815247794286

`A000142(n)*A001296(n+1)`
-/

namespace A005460.P2256670815247794286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001296 (n + 1)

end

end A005460.P2256670815247794286

namespace A005460

/-- `A000142(n)*A001296(n+1)` -/
def P2256670815247794286.Spec : Prop :=
  ∀ n, P2256670815247794286.a n = A005460 n

end A005460

/-! ## A005460.P14264924593979743420

`∏[A028310(n)]*A001296(n+1)`
-/

namespace A005460.P14264924593979743420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001296 (n + 1)

end

end A005460.P14264924593979743420

namespace A005460

/-- `∏[A028310(n)]*A001296(n+1)` -/
def P14264924593979743420.Spec : Prop :=
  ∀ n, P14264924593979743420.a n = A005460 n

end A005460

/-! ## A005460.P17636697239009447396

`A001296(n+1)*A130534(A000217(n))`
-/

namespace A005460.P17636697239009447396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) * A130534 (A000217 n).toNat

end

end A005460.P17636697239009447396

namespace A005460

/-- `A001296(n+1)*A130534(A000217(n))` -/
def P17636697239009447396.Spec : Prop :=
  ∀ n, P17636697239009447396.a n = A005460 n

end A005460

/-! ## A005460.P6323366765530225568

`A037960(n+1)/(n+1)`
-/

namespace A005460.P6323366765530225568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037960 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005460.P6323366765530225568

namespace A005460

/-- `A037960(n+1)/(n+1)` -/
def P6323366765530225568.Spec : Prop :=
  ∀ n, P6323366765530225568.a n = (A005460 n : ℚ)

end A005460

/-! ## A005460.P7406406851323851516

`A130850(eq[2, A002262(n)])`
-/

namespace A005460.P7406406851323851516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005460.P7406406851323851516

namespace A005460

/-- `A130850(eq[2, A002262(n)])` -/
def P7406406851323851516.Spec : Prop :=
  ∀ n, P7406406851323851516.a n = A005460 n

end A005460

/-!
# A005461: Number of simplices in barycentric subdivision of n-simplex.

The programs for A005461, the canonical program `A005461.P3356545971168813961` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005461 has offset 1).

The definition of A005461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005461.P3356545971168813961

`(n+1)*(n+2)*(n+4)!/48`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005461

/-- `(n+1)*(n+2)*(n+4)!/48` -/
def P3356545971168813961.Spec : Prop :=
  ∀ n, P3356545971168813961.a n = (A005461 (n + 1) : ℚ)

end A005461

/-! ## A005461.P5147001500557291076

`∑[(n+1)/4]*∏[n+4]`
-/

namespace A005461.P5147001500557291076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A005461.P5147001500557291076

namespace A005461

/-- `∑[(n+1)/4]*∏[n+4]` -/
def P5147001500557291076.Spec : Prop :=
  ∀ n, P5147001500557291076.a n = (A005461 (n + 1) : ℚ)

end A005461

/-! ## A005461.P1323362608126881905

`A216119(n+4)/2`
-/

namespace A005461.P1323362608126881905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216119 (n + 4) : ℚ) / 2

end

end A005461.P1323362608126881905

namespace A005461

/-- `A216119(n+4)/2` -/
def P1323362608126881905.Spec : Prop :=
  ∀ n, P1323362608126881905.a n = (A005461 (n + 1) : ℚ)

end A005461

/-! ## A005461.P9942896086547720711

`A055315(n+4)/4`
-/

namespace A005461.P9942896086547720711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055315 (n + 4) : ℚ) / 4

end

end A005461.P9942896086547720711

namespace A005461

/-- `A055315(n+4)/4` -/
def P9942896086547720711.Spec : Prop :=
  ∀ n, P9942896086547720711.a n = (A005461 (n + 1) : ℚ)

end A005461

/-! ## A005461.P4805070868204062994

`A062139(∑[n+2]+3)`
-/

namespace A005461.P4805070868204062994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062139 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005461.P4805070868204062994

namespace A005461

/-- `A062139(∑[n+2]+3)` -/
def P4805070868204062994.Spec : Prop :=
  ∀ n, P4805070868204062994.a n = A005461 (n + 1)

end A005461

/-! ## A005461.P18125702066862912472

`∏[n+4]*A000217(n+1)/4`
-/

namespace A005461.P18125702066862912472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000217 (n + 1) : ℚ) / 4

end

end A005461.P18125702066862912472

namespace A005461

/-- `∏[n+4]*A000217(n+1)/4` -/
def P18125702066862912472.Spec : Prop :=
  ∀ n, P18125702066862912472.a n = (A005461 (n + 1) : ℚ)

end A005461

/-! ## A005461.P9791186836098889835

`A267849(eq[4, A025581(n)])`
-/

namespace A005461.P9791186836098889835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005461.P9791186836098889835

namespace A005461

/-- `A267849(eq[4, A025581(n)])` -/
def P9791186836098889835.Spec : Prop :=
  ∀ n, P9791186836098889835.a n = A005461 (n + 1)

end A005461

/-! ## A005461.P2402762744475953672

`A037961(n)+A037960(n+1)`
-/

namespace A005461.P2402762744475953672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037961 n + A037960 (n + 1)

end

end A005461.P2402762744475953672

namespace A005461

/-- `A037961(n)+A037960(n+1)` -/
def P2402762744475953672.Spec : Prop :=
  ∀ n, P2402762744475953672.a n = A005461 (n + 1)

end A005461

/-! ## A005461.P18142861967982668294

`A061206(n+2)-A136659(n+1)`
-/

namespace A005461.P18142861967982668294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061206 (n + 2) - A136659 (n + 1)

end

end A005461.P18142861967982668294

namespace A005461

/-- `A061206(n+2)-A136659(n+1)` -/
def P18142861967982668294.Spec : Prop :=
  ∀ n, P18142861967982668294.a n = A005461 (n + 1)

end A005461

/-! ## A005461.P9297490045010011446

`((n+3)²-1)*a(n-1)/n` with `a(0)=1`
-/

namespace A005461.P9297490045010011446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 3) ^ 2 : ℤ) - 1 : ℚ) * a (n - 1) / (n : ℚ)

end

end A005461.P9297490045010011446

namespace A005461

/-- `((n+3)²-1)*a(n-1)/n` -/
def P9297490045010011446.Spec : Prop :=
  ∀ n, P9297490045010011446.a n = (A005461 (n + 1) : ℚ)

end A005461

/-!
# A005462: Number of simplices in barycentric subdivision of n-simplex.

The programs for A005462, there is no canonical definition to state claims against.
-/

/-! ## A005462.P3548355111153659456

`n!*∑[A259455(n+1)]`
-/

namespace A005462.P3548355111153659456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005462.P3548355111153659456

/-! ## A005462.P10564845973850883260

`n!*∑[(n+1)*A001297(n+1)]`
-/

namespace A005462.P10564845973850883260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005462.P10564845973850883260

/-! ## A005462.P281007807788164254

`A037962(n)+A037961(n+1)`
-/

namespace A005462.P281007807788164254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037962 n + A037961 (n + 1)

end

end A005462.P281007807788164254

/-! ## A005462.P11617734577731230858

`A000142(n)*A001298(n+1)`
-/

namespace A005462.P11617734577731230858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001298 (n + 1)

end

end A005462.P11617734577731230858

/-! ## A005462.P18397025207678789149

`∑[A259455(n+1)]*A000142(n)`
-/

namespace A005462.P18397025207678789149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A005462.P18397025207678789149

/-! ## A005462.P10432075457582375598

`∏[A028310(n)]*A001298(n+1)`
-/

namespace A005462.P10432075457582375598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001298 (n + 1)

end

end A005462.P10432075457582375598

/-! ## A005462.P4490892607104365627

`∏[A000007(n)+n]*A001298(n+1)`
-/

namespace A005462.P4490892607104365627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001298 (n + 1)

end

end A005462.P4490892607104365627

/-! ## A005462.P7466826311612380432

`A037962(n+1)/(n+1)`
-/

namespace A005462.P7466826311612380432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037962 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005462.P7466826311612380432

/-! ## A005462.P17582729037361331883

`A130850(eq[4, A002262(n)])`
-/

namespace A005462.P17582729037361331883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005462.P17582729037361331883

/-! ## A005462.P2769704103716449184

`A130850(eq[5, A002260(n+1)])`
-/

namespace A005462.P2769704103716449184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005462.P2769704103716449184

/-!
# A005463: Number of simplices in barycentric subdivision of n-simplex.

The programs for A005463, there is no canonical definition to state claims against.
-/

/-! ## A005463.P10204669927908015435

`n!*A112494(n+6)`
-/

namespace A005463.P10204669927908015435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A112494 (n + 6)

end

end A005463.P10204669927908015435

/-! ## A005463.P4426427471296412398

`A037963(n+1)/(n+1)`
-/

namespace A005463.P4426427471296412398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037963 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005463.P4426427471296412398

/-! ## A005463.P13973190995653696121

`A037963(n)+A037962(n+1)`
-/

namespace A005463.P13973190995653696121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037963 n + A037962 (n + 1)

end

end A005463.P13973190995653696121

/-! ## A005463.P3644226848876972525

`A130850(eq[5, A002262(n)])`
-/

namespace A005463.P3644226848876972525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005463.P3644226848876972525

/-! ## A005463.P1653649595771708918

`A130850(eq[6, A002260(n+1)])`
-/

namespace A005463.P1653649595771708918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005463.P1653649595771708918

/-! ## A005463.P16426317355556950679

`A130850(eq[13, A037126(n+1)])`
-/

namespace A005463.P16426317355556950679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005463.P16426317355556950679

/-! ## A005463.P2221193410647359612

`A028246(Δ[Δ[A006504(n+1)]])`
-/

namespace A005463.P2221193410647359612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (f1 (n + 1) - f1 n).toNat

end

end A005463.P2221193410647359612

/-!
# A005464: Number of simplices in barycentric subdivision of n-simplex.

The programs for A005464, there is no canonical definition to state claims against.
-/

/-! ## A005464.P9876666385734522229

`n!*A144969(n+7)`
-/

namespace A005464.P9876666385734522229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A144969 (n + 7)

end

end A005464.P9876666385734522229

/-! ## A005464.P5815610486843655285

`A000142(n)*A144969(n+7)`
-/

namespace A005464.P5815610486843655285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A144969 (n + 7)

end

end A005464.P5815610486843655285

/-! ## A005464.P16302403736651191314

`A130850(eq[6, A002262(n)])`
-/

namespace A005464.P16302403736651191314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005464.P16302403736651191314

/-! ## A005464.P2849931583564579559

`A130850(eq[7, A002260(n+1)])`
-/

namespace A005464.P2849931583564579559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005464.P2849931583564579559

/-! ## A005464.P12022023427396064543

`A028246(A055999(n+4))`
-/

namespace A005464.P12022023427396064543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (A055999 (n + 4)).toNat

end

end A005464.P12022023427396064543

/-!
# A005465: Number of n-dimensional hypotheses allowing for conditional independence.

The programs for A005465, there is no canonical definition to state claims against.
-/

/-! ## A005465.P1480372038390465350

`A005493(n)-3^n`
-/

namespace A005465.P1480372038390465350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - (3 ^ n : ℤ)

end

end A005465.P1480372038390465350

/-! ## A005465.P3149451598708942817

`∑[A011965(n)]-3^n`
-/

namespace A005465.P3149451598708942817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 ^ n : ℤ)

end

end A005465.P3149451598708942817

/-! ## A005465.P16616833299977403550

`Δ[A000110(n+1)]-3^n`
-/

namespace A005465.P16616833299977403550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 ^ n : ℤ)

end

end A005465.P16616833299977403550

/-! ## A005465.P11931793306211464707

`Δ[A011971(∑[n+1])]-3^n`
-/

namespace A005465.P11931793306211464707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 ^ n : ℤ)

end

end A005465.P11931793306211464707

/-! ## A005465.P8390417323881536847

`abs(A000244(n)-A005493(n))`
-/

namespace A005465.P8390417323881536847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A005493 n|

end

end A005465.P8390417323881536847

/-! ## A005465.P18003069519610334084

`Δ[record[A095149(n)]]-A000244(n)`
-/

namespace A005465.P18003069519610334084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000244 n

end

end A005465.P18003069519610334084

/-! ## A005465.P16792724402696705825

`Δ[record[A293024(n)]]-A000244(n)`
-/

namespace A005465.P16792724402696705825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000244 n

end

end A005465.P16792724402696705825

/-! ## A005465.P9486564760167827999

`Δ[A000110(n+1)-A003462(n)]`
-/

namespace A005465.P9486564760167827999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005465.P9486564760167827999

/-! ## A005465.P18268347232780102056

`Δ[record[A282988(n+1)]]-A000244(n)`
-/

namespace A005465.P18268347232780102056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282988 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000244 n

end

end A005465.P18268347232780102056

/-!
# A005468: a(n) = 1 + a(floor(n/2))*a(ceiling(n/2)).

The programs for A005468, the canonical program `A005468.P7580599600509835863` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005468 has offset 1).

The definition of A005468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005468.P7580599600509835863

`a(floor((n-1)/2))*a(floor(n/2))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005468

/-- `a(floor((n-1)/2))*a(floor(n/2))+1` -/
def P7580599600509835863.Spec : Prop :=
  ∀ n, (P7580599600509835863.a n : ℤ) = A005468 (n + 1)

theorem P7580599600509835863.correct : P7580599600509835863.Spec := by
  intro n
  simp only [A005468, Nat.add_sub_cancel]

end A005468

/-! ## A005468.P1108643759497426630

`A157679(n)+1`
-/

namespace A005468.P1108643759497426630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157679 n + 1

end

end A005468.P1108643759497426630

namespace A005468

/-- `A157679(n)+1` -/
def P1108643759497426630.Spec : Prop :=
  ∀ n, P1108643759497426630.a n = A005468 (n + 1)

end A005468

/-! ## A005468.P2187423504480687077

`abs(ratio[A033999(n)]-A157679(n))`
-/

namespace A005468.P2187423504480687077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℚ) / (f1 n : ℚ) - (A157679 n : ℚ)|

end

end A005468.P2187423504480687077

namespace A005468

/-- `abs(ratio[A033999(n)]-A157679(n))` -/
def P2187423504480687077.Spec : Prop :=
  ∀ n, P2187423504480687077.a n = (A005468 (n + 1) : ℚ)

end A005468

/-! ## A005468.P1961476030543423264

`2-(A000034(2*n)-A157679(n))`
-/

namespace A005468.P1961476030543423264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000034 (2 * n) - A157679 n)

end

end A005468.P1961476030543423264

namespace A005468

/-- `2-(A000034(2*n)-A157679(n))` -/
def P1961476030543423264.Spec : Prop :=
  ∀ n, P1961476030543423264.a n = A005468 (n + 1)

end A005468

/-! ## A005468.P16545929590895993179

`2-(A007318(∑[n])-A157679(n))`
-/

namespace A005468.P16545929590895993179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A157679 n)

end

end A005468.P16545929590895993179

namespace A005468

/-- `2-(A007318(∑[n])-A157679(n))` -/
def P16545929590895993179.Spec : Prop :=
  ∀ n, P16545929590895993179.a n = A005468 (n + 1)

end A005468

/-!
# A005469: a(n) = 1 + a(floor(n/2))*a(ceiling(n/2)) for n > 1, a(1) = 2.

The programs for A005469, the canonical program `A005469.P6796879414018531619` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005469 has offset 1).

The definition of A005469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005469.P6796879414018531619

`a(floor((n-1)/2))*a(floor(n/2))+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005469

/-- `a(floor((n-1)/2))*a(floor(n/2))+1` -/
def P6796879414018531619.Spec : Prop :=
  ∀ n, (P6796879414018531619.a n : ℤ) = A005469 (n + 1)

theorem P6796879414018531619.correct : P6796879414018531619.Spec := by
  intro n
  simp only [A005469, Nat.add_sub_cancel]

end A005469

/-! ## A005469.P3867084211746132562

`A178748(n)+A153883(A096202(n+1))`
-/

namespace A005469.P3867084211746132562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178748 n + A153883 (A096202 (n + 1)).toNat

end

end A005469.P3867084211746132562

namespace A005469

/-- `A178748(n)+A153883(A096202(n+1))` -/
def P3867084211746132562.Spec : Prop :=
  ∀ n, P3867084211746132562.a n = A005469 (n + 1)

end A005469

/-!
# A005470: Number of unlabeled planar simple graphs with n nodes.

The programs for A005470, there is no canonical definition to state claims against.
-/

/-! ## A005470.P7873015712473823132

`A049369(n)+a(n-1)` with `a(0)=1`
-/

namespace A005470.P7873015712473823132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049369 n + a (n - 1)

end

end A005470.P7873015712473823132

/-! ## A005470.P547555694432388997

`∑[A049369(abs(1-n)+1)]`
-/

namespace A005470.P547555694432388997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049369 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005470.P547555694432388997

/-! ## A005470.P15504897158870568717

`A000088(n)-A145269(n)`
-/

namespace A005470.P15504897158870568717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A145269 n

end

end A005470.P15504897158870568717

/-! ## A005470.P17424851507656848772

`∑[A002494(n)]-A145269(n)`
-/

namespace A005470.P17424851507656848772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A145269 n

end

end A005470.P17424851507656848772

/-! ## A005470.P11523961166744440509

`A361404(∑[n])-A145269(n)`
-/

namespace A005470.P11523961166744440509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j) - A145269 n

end

end A005470.P11523961166744440509

/-!
# A005471: Primes of the form m^2 + 3m + 9, where m can be positive or negative.

The programs for A005471, there is no canonical definition to state claims against.
-/

/-! ## A005471.P2233777427587180447

`A027692(A027756(n+1))`
-/

namespace A005471.P2233777427587180447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 (A027756 (n + 1)).toNat

end

end A005471.P2233777427587180447

/-! ## A005471.P8057518363292877226

`A027691(A027756(A000027(n+1)))+1`
-/

namespace A005471.P8057518363292877226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027756 (A000027 (n + 1)).toNat).toNat + 1

end

end A005471.P8057518363292877226

/-! ## A005471.P1858706816160237914

`A319679(2*(n+1))+A027691(A027756(n+1))`
-/

namespace A005471.P1858706816160237914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319679 (2 * (n + 1)) + A027691 (A027756 (n + 1)).toNat

end

end A005471.P1858706816160237914

/-! ## A005471.P9480268009966041493

`A027691(A027756(n+1))+A000188(A151800(n))`
-/

namespace A005471.P9480268009966041493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027756 (n + 1)).toNat + A000188 (A151800 n).toNat

end

end A005471.P9480268009966041493

/-! ## A005471.P15562491087920769751

`A027691(A027756(n+1))+A000188(A007947(n+1))`
-/

namespace A005471.P15562491087920769751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027756 (n + 1)).toNat + A000188 (A007947 (n + 1)).toNat

end

end A005471.P15562491087920769751

/-! ## A005471.P14681381667234804218

`A185700(A034444(n+1))+A027691(A027756(n+1))`
-/

namespace A005471.P14681381667234804218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 (A034444 (n + 1)).toNat + A027691 (A027756 (n + 1)).toNat

end

end A005471.P14681381667234804218

/-! ## A005471.P11714719929986027385

`A027691(A027756(n+1))+A000188(A006530(n+2))`
-/

namespace A005471.P11714719929986027385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027756 (n + 1)).toNat + A000188 (A006530 (n + 2)).toNat

end

end A005471.P11714719929986027385

/-! ## A005471.P2984464527127700673

`A027691(A027756(n+1))+A000035(A017353(n))`
-/

namespace A005471.P2984464527127700673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027756 (n + 1)).toNat + A000035 (A017353 n).toNat

end

end A005471.P2984464527127700673

/-! ## A005471.P13184517529303910922

`A027691(A027756(n+1))+A000188(p?[4*n+1])`
-/

namespace A005471.P13184517529303910922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 (A027756 (n + 1)).toNat + A000188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A005471.P13184517529303910922

/-! ## A005471.P3763360301860787548

`p?[∑[2*n]+7]`
-/

namespace A005471.P3763360301860787548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A005471.P3763360301860787548

/-! ## A005471.P13457837748120983637

`or(1, p?[n²+7+n])`
-/

namespace A005471.P13457837748120983637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A005471.P13457837748120983637

/-! ## A005471.P11632186603638982207

`∏{d}[p?[n²+7+n], #]`
-/

namespace A005471.P11632186603638982207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A005471.P11632186603638982207

/-! ## A005471.P11082057481417305281

`∑{p}[p?[n²+7+n], #]`
-/

namespace A005471.P11082057481417305281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A005471.P11082057481417305281

/-! ## A005471.P9958150043235439686

`∏{p}[p?[n²+7+n], #]`
-/

namespace A005471.P9958150043235439686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A005471.P9958150043235439686

/-! ## A005471.P8716828380934210006

`A000027(p?[a(n-1)+2*n])` with `a(0)=7`
-/

namespace A005471.P8716828380934210006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A005471.P8716828380934210006

/-! ## A005471.P13946899383826962175

`A000027(p?[a(n-1)+n+n])` with `a(0)=7`
-/

namespace A005471.P13946899383826962175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A005471.P13946899383826962175

/-! ## A005471.P1339554406877134535

`∩[A040038(n+1), A027692(n)]`
-/

namespace A005471.P1339554406877134535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005471.P1339554406877134535

/-! ## A005471.P7924433089540413994

`∩[A106870(n+1), A027692(n)]`
-/

namespace A005471.P7924433089540413994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005471.P7924433089540413994

/-! ## A005471.P17494301268185094628

`∩[A040034(n+1), A027692(n)]`
-/

namespace A005471.P17494301268185094628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005471.P17494301268185094628

/-! ## A005471.P16989171900273337986

`∩[A002476(n+1), A027692(n)]`
-/

namespace A005471.P16989171900273337986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005471.P16989171900273337986

/-!
# A005473: Primes of form k^2 + 4.

The programs for A005473, there is no canonical definition to state claims against.
-/

/-! ## A005473.P11745163903570211665

`A007591(n+1)²+4`
-/

namespace A005473.P11745163903570211665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1) ^ 2 + 4

end

end A005473.P11745163903570211665

/-! ## A005473.P15822819973016926293

`∪[A085553(n+1), A098062(n+1)]`
-/

namespace A005473.P15822819973016926293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P15822819973016926293

/-! ## A005473.P12981232493364963612

`∪[A085554(n+1), A098062(n+1)]`
-/

namespace A005473.P12981232493364963612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P12981232493364963612

/-! ## A005473.P16990109939905841819

`∪[A085555(n+1), A098062(n+1)]`
-/

namespace A005473.P16990109939905841819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P16990109939905841819

/-! ## A005473.P6139627156439670775

`A078370(floor(A007591(n+1)/2))`
-/

namespace A005473.P6139627156439670775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 ⌊(A007591 (n + 1) : ℚ) / 2⌋.toNat

end

end A005473.P6139627156439670775

/-! ## A005473.P2305544333671404920

`A013946(A007591(n+1))`
-/

namespace A005473.P2305544333671404920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (A007591 (n + 1)).toNat

end

end A005473.P2305544333671404920

/-! ## A005473.P12181066286940603428

`A087475(A007591(1+n))`
-/

namespace A005473.P12181066286940603428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A007591 (1 + n)).toNat

end

end A005473.P12181066286940603428

/-! ## A005473.P7572371454991617585

`A098062(n+1)-Δ[A000290(A007591(n+1))]`
-/

namespace A005473.P7572371454991617585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A007591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098062 (n + 1) - (f1 (n + 1) - f1 n)

end

end A005473.P7572371454991617585

/-! ## A005473.P9904281682873410887

`∩[A349900(n+1), A078370(n)]`
-/

namespace A005473.P9904281682873410887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P9904281682873410887

/-! ## A005473.P5151063432034241566

`∩[A349900(n+1), A087475(n)]`
-/

namespace A005473.P5151063432034241566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P5151063432034241566

/-! ## A005473.P8580921182992666826

`∩[A308464(n+1), A349900(n+1)]`
-/

namespace A005473.P8580921182992666826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P8580921182992666826

/-! ## A005473.P11470968089613435179

`∩[A265889(n+1), A078370(n)]`
-/

namespace A005473.P11470968089613435179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P11470968089613435179

/-! ## A005473.P6472777542673294796

`∩[A265889(n+1), A087475(n)]`
-/

namespace A005473.P6472777542673294796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P6472777542673294796

/-! ## A005473.P17417359293870251269

`∩[A265889(n+1), A308464(n+1)]`
-/

namespace A005473.P17417359293870251269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P17417359293870251269

/-! ## A005473.P2772053436885679395

`∩[A350687(n+1), A078370(n)]`
-/

namespace A005473.P2772053436885679395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P2772053436885679395

/-! ## A005473.P5175319824438788793

`∩[A350687(n+1), A087475(n)]`
-/

namespace A005473.P5175319824438788793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P5175319824438788793

/-! ## A005473.P3416318482675170512

`∩[A308464(n+1), A350687(n+1)]`
-/

namespace A005473.P3416318482675170512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005473.P3416318482675170512

/-! ## A005473.P15367181156051275891

`p?[n²+4]`
-/

namespace A005473.P15367181156051275891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A005473.P15367181156051275891

/-! ## A005473.P9831907807759908334

`or(1, p?[or(4, n²)])`
-/

namespace A005473.P9831907807759908334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A005473.P9831907807759908334

/-! ## A005473.P13355278514206837879

`∑{p}[p?[xor(4, n²)], #]`
-/

namespace A005473.P13355278514206837879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A005473.P13355278514206837879

/-!
# A005474: Class numbers of the real quadratic fields Q(sqrt(A005473(n))).

The programs for A005474, there is no canonical definition to state claims against.
-/

/-! ## A005474.P1157342962130127410

`A202053(p?[4*(n²+1+n)+1])`
-/

namespace A005474.P1157342962130127410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n ^ 2 + 1 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A005474.P1157342962130127410

/-! ## A005474.P8071334497434564061

`A202053(A005473(n+1))`
-/

namespace A005474.P8071334497434564061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (A005473 (n + 1)).toNat

end

end A005474.P8071334497434564061

/-! ## A005474.P2946690392546902580

`A202053(∩[A265889(n+1), A078370(n)])`
-/

namespace A005474.P2946690392546902580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A005474.P2946690392546902580

/-! ## A005474.P1190262117615185983

`A202053(∩[A265889(n+1), A087475(n)])`
-/

namespace A005474.P1190262117615185983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A005474.P1190262117615185983

/-! ## A005474.P10469223486451193246

`A202053(∩[A349900(n+1), A087475(n)])`
-/

namespace A005474.P10469223486451193246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202053 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A005474.P10469223486451193246

/-!
# A005475: a(n) = n*(5*n+1)/2.

The programs for A005475, the canonical program `A005475.P15184904620928258333` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005475 has offset 0).

The definition of A005475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n+1)/2` (program `A005475.P15654560065947677295`, by `A005475.P15654560065947677295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005475.P15654560065947677295

`n*(5*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005475.P15654560065947677295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((5 * n + 1 : ℚ) / 2)

end

end A005475.P15654560065947677295

namespace A005475

/-- `n*(5*n+1)/2` -/
def P15654560065947677295.Spec : Prop :=
  ∀ n, P15654560065947677295.a n = (A005475 n : ℚ)

theorem P15654560065947677295.correct : P15654560065947677295.Spec := by
  intro n
  induction n with
  | zero => simp [A005475, A005475.P15654560065947677295.a, A005475.P15184904620928258333.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A005475, Nat.add_sub_cancel, A005475.P15654560065947677295.a, A005475.P15184904620928258333.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A005475

/-! ## A005475.P15184904620928258333

`a(n-1)+5*n-2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005475

/-- `a(n-1)+5*n-2` -/
def P15184904620928258333.Spec : Prop :=
  ∀ n, P15184904620928258333.a n = A005475 n

theorem P15184904620928258333.correct : P15184904620928258333.Spec := by
  intro n
  simp only [A005475]

end A005475

/-! ## A005475.P1668599730417203942

`A202803(n)/2`
-/

namespace A005475.P1668599730417203942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202803 n : ℚ) / 2

end

end A005475.P1668599730417203942

namespace A005475

/-- `A202803(n)/2` -/
def P1668599730417203942.Spec : Prop :=
  ∀ n, P1668599730417203942.a n = (A005475 n : ℚ)

end A005475

/-! ## A005475.P529056918584707381

`A000217(3*n)-A000217(2*n)`
-/

namespace A005475.P529056918584707381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n) - A000217 (2 * n)

end

end A005475.P529056918584707381

namespace A005475

/-- `A000217(3*n)-A000217(2*n)` -/
def P529056918584707381.Spec : Prop :=
  ∀ n, P529056918584707381.a n = A005475 n

end A005475

/-! ## A005475.P11517618189005970279

`A130520(5*n+2)`
-/

namespace A005475.P11517618189005970279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (5 * n + 2)

end

end A005475.P11517618189005970279

namespace A005475

/-- `A130520(5*n+2)` -/
def P11517618189005970279.Spec : Prop :=
  ∀ n, P11517618189005970279.a n = A005475 n

end A005475

/-! ## A005475.P5390996631777983346

`∑[record[lcm(2, n)]+n]`
-/

namespace A005475.P5390996631777983346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005475.P5390996631777983346

namespace A005475

/-- `∑[record[lcm(2, n)]+n]` -/
def P5390996631777983346.Spec : Prop :=
  ∀ n, (P5390996631777983346.a n : ℤ) = A005475 n

end A005475

/-! ## A005475.P13621493183931176308

`3*n²-C(n, 2)`
-/

namespace A005475.P13621493183931176308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A005475.P13621493183931176308

namespace A005475

/-- `3*n²-C(n, 2)` -/
def P13621493183931176308.Spec : Prop :=
  ∀ n, P13621493183931176308.a n = A005475 n

end A005475

/-! ## A005475.P9281419885453452361

`∑[a(n-1)+5]` with `a(0)=0, a(1)=3`
-/

namespace A005475.P9281419885453452361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005475.P9281419885453452361

namespace A005475

/-- `∑[a(n-1)+5]` -/
def P9281419885453452361.Spec : Prop :=
  ∀ n, (P9281419885453452361.a n : ℤ) = A005475 n

end A005475

/-! ## A005475.P2931303802521040006

`∑[ogf((3x+2x^2)/(1-2x+x^2))]`
-/

namespace A005475.P2931303802521040006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005475.P2931303802521040006

namespace A005475

/-- `∑[ogf((3x+2x^2)/(1-2x+x^2))]` -/
def P2931303802521040006.Spec : Prop :=
  ∀ n, P2931303802521040006.a n = A005475 n

end A005475

/-! ## A005475.P12629326948114440171

`ogf((3x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A005475.P12629326948114440171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2] [1, -3, 3, -1] n

end

end A005475.P12629326948114440171

namespace A005475

/-- `ogf((3x+2x^2)/(1-3x+3x^2-x^3))` -/
def P12629326948114440171.Spec : Prop :=
  ∀ n, P12629326948114440171.a n = A005475 n

end A005475

/-! ## A005475.P6270314036003047390

`2-∑[a(n-1)-5]` with `a(0)=2`
-/

namespace A005475.P6270314036003047390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005475.P6270314036003047390

namespace A005475

/-- `2-∑[a(n-1)-5]` -/
def P6270314036003047390.Spec : Prop :=
  ∀ n, P6270314036003047390.a n = A005475 n

end A005475

/-! ## A005475.P1337920617086839719

`5*n-(2-a(n-1))` with `a(0)=0`
-/

namespace A005475.P1337920617086839719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - (2 - a (n - 1))

end

end A005475.P1337920617086839719

namespace A005475

/-- `5*n-(2-a(n-1))` -/
def P1337920617086839719.Spec : Prop :=
  ∀ n, P1337920617086839719.a n = A005475 n

end A005475

/-! ## A005475.P9206227608023966654

`abs(2*n-5*C(n+1, 2))`
-/

namespace A005475.P9206227608023966654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (5 * Nat.choose (n + 1) 2 : ℤ)|

end

end A005475.P9206227608023966654

namespace A005475

/-- `abs(2*n-5*C(n+1, 2))` -/
def P9206227608023966654.Spec : Prop :=
  ∀ n, P9206227608023966654.a n = A005475 n

end A005475

/-! ## A005475.P8408579540006363936

`floor(C(2*n+1, 2)+∑[n-1]+ϕ)`
-/

namespace A005475.P8408579540006363936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) 2 : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + Real.goldenRatio)⌋

end

end A005475.P8408579540006363936

namespace A005475

/-- `floor(C(2*n+1, 2)+∑[n-1]+ϕ)` -/
def P8408579540006363936.Spec : Prop :=
  ∀ n, P8408579540006363936.a n = A005475 n

end A005475

/-! ## A005475.P4952860914127496512

`a(n-1)-(a(n-2)-a(n-1)-5)` with `a(0)=0, a(1)=3`
-/

namespace A005475.P4952860914127496512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 5)

end

end A005475.P4952860914127496512

namespace A005475

/-- `a(n-1)-(a(n-2)-a(n-1)-5)` -/
def P4952860914127496512.Spec : Prop :=
  ∀ n, P4952860914127496512.a n = A005475 n

end A005475

/-! ## A005475.P2189382342323532925

`A116668(n)-1`
-/

namespace A005475.P2189382342323532925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - 1

end

end A005475.P2189382342323532925

namespace A005475

/-- `A116668(n)-1` -/
def P2189382342323532925.Spec : Prop :=
  ∀ n, P2189382342323532925.a n = A005475 n

end A005475

/-! ## A005475.P8566682876277932703

`A144312(n)/5`
-/

namespace A005475.P8566682876277932703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144312 n : ℚ) / 5

end

end A005475.P8566682876277932703

namespace A005475

/-- `A144312(n)/5` -/
def P8566682876277932703.Spec : Prop :=
  ∀ n, P8566682876277932703.a n = (A005475 n : ℚ)

end A005475

/-! ## A005475.P6794715711662710381

`n+A005476(n)`
-/

namespace A005475.P6794715711662710381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A005476 n

end

end A005475.P6794715711662710381

namespace A005475

/-- `n+A005476(n)` -/
def P6794715711662710381.Spec : Prop :=
  ∀ n, P6794715711662710381.a n = A005475 n

end A005475

/-! ## A005475.P12280002564238899456

`A147875(n)-n`
-/

namespace A005475.P12280002564238899456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - (n : ℤ)

end

end A005475.P12280002564238899456

namespace A005475

/-- `A147875(n)-n` -/
def P12280002564238899456.Spec : Prop :=
  ∀ n, P12280002564238899456.a n = A005475 n

end A005475

/-! ## A005475.P4929086094132131679

`A005449(n)+n²`
-/

namespace A005475.P4929086094132131679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + (n ^ 2 : ℤ)

end

end A005475.P4929086094132131679

namespace A005475

/-- `A005449(n)+n²` -/
def P4929086094132131679.Spec : Prop :=
  ∀ n, P4929086094132131679.a n = A005475 n

end A005475

/-!
# A005476: a(n) = n*(5*n - 1)/2.

The programs for A005476, the canonical program `A005476.P15608745038286327048` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005476 has offset 0).

The definition of A005476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n-1)/2` (program `A005476.P8608089410262430984`, by `A005476.P8608089410262430984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005476.P8608089410262430984

`n*(5*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005476.P8608089410262430984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((5 * n : ℤ) - 1 : ℚ) / 2)

end

end A005476.P8608089410262430984

namespace A005476

/-- `n*(5*n-1)/2` -/
def P8608089410262430984.Spec : Prop :=
  ∀ n, P8608089410262430984.a n = (A005476 n : ℚ)

theorem P8608089410262430984.correct : P8608089410262430984.Spec := by
  intro n
  induction n with
  | zero => simp [A005476, A005476.P8608089410262430984.a, A005476.P15608745038286327048.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A005476, Nat.add_sub_cancel, A005476.P8608089410262430984.a, A005476.P15608745038286327048.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A005476

/-! ## A005476.P15608745038286327048

`a(n-1)+5*n-3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005476

/-- `a(n-1)+5*n-3` -/
def P15608745038286327048.Spec : Prop :=
  ∀ n, P15608745038286327048.a n = A005476 n

theorem P15608745038286327048.correct : P15608745038286327048.Spec := by
  intro n
  simp only [A005476]

end A005476

/-! ## A005476.P523155227679264044

`A000217(n)+A000384(n)`
-/

namespace A005476.P523155227679264044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000384 n

end

end A005476.P523155227679264044

namespace A005476

/-- `A000217(n)+A000384(n)` -/
def P523155227679264044.Spec : Prop :=
  ∀ n, P523155227679264044.a n = A005476 n

end A005476

/-! ## A005476.P11305303661462416821

`A000290(n)+A000326(n)`
-/

namespace A005476.P11305303661462416821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A000326 n

end

end A005476.P11305303661462416821

namespace A005476

/-- `A000290(n)+A000326(n)` -/
def P11305303661462416821.Spec : Prop :=
  ∀ n, P11305303661462416821.a n = A005476 n

end A005476

/-! ## A005476.P17332074291884133447

`A033991(n)-A000326(n)`
-/

namespace A005476.P17332074291884133447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n - A000326 n

end

end A005476.P17332074291884133447

namespace A005476

/-- `A033991(n)-A000326(n)` -/
def P17332074291884133447.Spec : Prop :=
  ∀ n, P17332074291884133447.a n = A005476 n

end A005476

/-! ## A005476.P9241803875575146791

`A016754(n)-A133694(n+1)`
-/

namespace A005476.P9241803875575146791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A133694 (n + 1)

end

end A005476.P9241803875575146791

namespace A005476

/-- `A016754(n)-A133694(n+1)` -/
def P9241803875575146791.Spec : Prop :=
  ∀ n, P9241803875575146791.a n = A005476 n

end A005476

/-! ## A005476.P11616137236133086505

`A130520(5*n+1)`
-/

namespace A005476.P11616137236133086505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (5 * n + 1)

end

end A005476.P11616137236133086505

namespace A005476

/-- `A130520(5*n+1)` -/
def P11616137236133086505.Spec : Prop :=
  ∀ n, P11616137236133086505.a n = A005476 n

end A005476

/-! ## A005476.P5397939198579118435

`C(5*n, 2)/5`
-/

namespace A005476.P5397939198579118435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) 2 : ℚ) / 5

end

end A005476.P5397939198579118435

namespace A005476

/-- `C(5*n, 2)/5` -/
def P5397939198579118435.Spec : Prop :=
  ∀ n, P5397939198579118435.a n = (A005476 n : ℚ)

end A005476

/-! ## A005476.P5127283587308931520

`∑[a(n-1)+5]` with `a(0)=0, a(1)=2`
-/

namespace A005476.P5127283587308931520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005476.P5127283587308931520

namespace A005476

/-- `∑[a(n-1)+5]` -/
def P5127283587308931520.Spec : Prop :=
  ∀ n, (P5127283587308931520.a n : ℤ) = A005476 n

end A005476

/-! ## A005476.P5879104299534052454

`∑[ogf((2x+3x^2)/(1-2x+x^2))]`
-/

namespace A005476.P5879104299534052454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005476.P5879104299534052454

namespace A005476

/-- `∑[ogf((2x+3x^2)/(1-2x+x^2))]` -/
def P5879104299534052454.Spec : Prop :=
  ∀ n, P5879104299534052454.a n = A005476 n

end A005476

/-! ## A005476.P17294067263344208474

`ogf((2x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A005476.P17294067263344208474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3] [1, -3, 3, -1] n

end

end A005476.P17294067263344208474

namespace A005476

/-- `ogf((2x+3x^2)/(1-3x+3x^2-x^3))` -/
def P17294067263344208474.Spec : Prop :=
  ∀ n, P17294067263344208474.a n = A005476 n

end A005476

/-! ## A005476.P7975054894272968026

`5*n-(3-a(n-1))` with `a(0)=0`
-/

namespace A005476.P7975054894272968026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - (3 - a (n - 1))

end

end A005476.P7975054894272968026

namespace A005476

/-- `5*n-(3-a(n-1))` -/
def P7975054894272968026.Spec : Prop :=
  ∀ n, P7975054894272968026.a n = A005476 n

end A005476

/-! ## A005476.P9766100354442713371

`2-∑[a(n-1)-5]-n` with `a(0)=2`
-/

namespace A005476.P9766100354442713371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005476.P9766100354442713371

namespace A005476

/-- `2-∑[a(n-1)-5]-n` -/
def P9766100354442713371.Spec : Prop :=
  ∀ n, P9766100354442713371.a n = A005476 n

end A005476

/-! ## A005476.P18006332352293624070

`∑[2*n+3*(2*n)%(n+1)]`
-/

namespace A005476.P18006332352293624070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3 * (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005476.P18006332352293624070

namespace A005476

/-- `∑[2*n+3*(2*n)%(n+1)]` -/
def P18006332352293624070.Spec : Prop :=
  ∀ n, (P18006332352293624070.a n : ℤ) = A005476 n

end A005476

/-! ## A005476.P9635929853728631527

`a(n-1)-(a(n-2)-a(n-1)-5)` with `a(0)=0, a(1)=2`
-/

namespace A005476.P9635929853728631527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 5)

end

end A005476.P9635929853728631527

namespace A005476

/-- `a(n-1)-(a(n-2)-a(n-1)-5)` -/
def P9635929853728631527.Spec : Prop :=
  ∀ n, P9635929853728631527.a n = A005476 n

end A005476

/-! ## A005476.P14611739392387845137

`n+A000566(n)`
-/

namespace A005476.P14611739392387845137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000566 n

end

end A005476.P14611739392387845137

namespace A005476

/-- `n+A000566(n)` -/
def P14611739392387845137.Spec : Prop :=
  ∀ n, P14611739392387845137.a n = A005476 n

end A005476

/-! ## A005476.P10288229568551317715

`A005475(n)-n`
-/

namespace A005476.P10288229568551317715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - (n : ℤ)

end

end A005476.P10288229568551317715

namespace A005476

/-- `A005475(n)-n` -/
def P10288229568551317715.Spec : Prop :=
  ∀ n, P10288229568551317715.a n = A005476 n

end A005476

/-! ## A005476.P10249638384366028844

`A022264(n)-n²`
-/

namespace A005476.P10249638384366028844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - (n ^ 2 : ℤ)

end

end A005476.P10249638384366028844

namespace A005476

/-- `A022264(n)-n²` -/
def P10249638384366028844.Spec : Prop :=
  ∀ n, P10249638384366028844.a n = A005476 n

end A005476

/-! ## A005476.P14824087108089640180

`A033428(n)-∑[n]`
-/

namespace A005476.P14824087108089640180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005476.P14824087108089640180

namespace A005476

/-- `A033428(n)-∑[n]` -/
def P14824087108089640180.Spec : Prop :=
  ∀ n, P14824087108089640180.a n = A005476 n

end A005476

/-! ## A005476.P6842495962534671924

`A140066(n+1)-1`
-/

namespace A005476.P6842495962534671924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140066 (n + 1) - 1

end

end A005476.P6842495962534671924

namespace A005476

/-- `A140066(n+1)-1` -/
def P6842495962534671924.Spec : Prop :=
  ∀ n, P6842495962534671924.a n = A005476 n

end A005476

/-!
# A005477: a(n) = 2^(n-1)*(2^n - 1)*Product_{j=1..n-1} (2^j + 1).

The programs for A005477, there is no canonical definition to state claims against.
-/

/-! ## A005477.P7878339200952473650

`(A006095(n+1)-A006095(n))*A028362(n)`
-/

namespace A005477.P7878339200952473650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006095 (n + 1) - A006095 n) * A028362 n

end

end A005477.P7878339200952473650

/-! ## A005477.P10056208186742420957

`C(A000079(n), 2)*A165552(A000079(n))`
-/

namespace A005477.P10056208186742420957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000079 n).toNat 2 : ℤ) * A165552 (A000079 n).toNat

end

end A005477.P10056208186742420957

/-!
# A005478: Prime Fibonacci numbers.

The programs for A005478, there is no canonical definition to state claims against.
-/

/-! ## A005478.P14614119423128098756

`A000045(A001605(n+1))`
-/

namespace A005478.P14614119423128098756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001605 (n + 1)).toNat

end

end A005478.P14614119423128098756

/-! ## A005478.P2073092735703756321

`A139095(n+3)`
-/

namespace A005478.P2073092735703756321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139095 (n + 3)

end

end A005478.P2073092735703756321

/-! ## A005478.P5334323484247472103

`record[A139044(n+1)]`
-/

namespace A005478.P5334323484247472103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005478.P5334323484247472103

/-! ## A005478.P8008350683203735828

`record[A060383(n+3)]`
-/

namespace A005478.P8008350683203735828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005478.P8008350683203735828

/-! ## A005478.P16557642621299795535

`record[or((n^4)%5, A338762(n+1))]`
-/

namespace A005478.P16557642621299795535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n ^ 4 % 5 : ℕ) : ℤ) (A338762 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005478.P16557642621299795535

/-!
# A005479: Prime Lucas numbers (cf. A000032).

The programs for A005479, there is no canonical definition to state claims against.
-/

/-! ## A005479.P17813905953298460940

`record[A280104(n)]`
-/

namespace A005479.P17813905953298460940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005479.P17813905953298460940

/-! ## A005479.P11551776835318542420

`A000032(A001606(n+1))`
-/

namespace A005479.P11551776835318542420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A001606 (n + 1)).toNat

end

end A005479.P11551776835318542420

/-! ## A005479.P10300612512885356611

`A000032(eq[1, A086599(n)])`
-/

namespace A005479.P10300612512885356611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005479.P10300612512885356611

/-! ## A005479.P12000040009412419098

`A000032(eq[2, A272377(n)])`
-/

namespace A005479.P12000040009412419098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005479.P12000040009412419098

/-! ## A005479.P14326423692663992081

`A079451(eq[2, A272377(n)])`
-/

namespace A005479.P14326423692663992081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005479.P14326423692663992081

/-!
# A005484: Numerators of continued fraction convergents to cube root of 7.

The programs for A005484, there is no canonical definition to state claims against.
-/

/-! ## A005484.P6068605375077381483

`A131320(A018042(n))*A281750(n)`
-/

namespace A005484.P6068605375077381483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131320 (A018042 n).toNat * A281750 n

end

end A005484.P6068605375077381483

/-!
# A005485: Denominators of continued fraction convergents to cube root of 7.

The programs for A005485, there is no canonical definition to state claims against.
-/

/-! ## A005485.P8599751221049183132

`A006203(a(n-2))` with `a(0)=1, a(1)=1, a(2)=11`
-/

namespace A005485.P8599751221049183132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 11] fun n a =>
  A006203 (a (n - 2)).toNat

end

end A005485.P8599751221049183132

/-!
# A005487: Starts 0, 4 and contains no 3-term arithmetic progression.

The programs for A005487, there is no canonical definition to state claims against.
-/

/-! ## A005487.P16243801690929876217

`A033158(n+1)-1`
-/

namespace A005487.P16243801690929876217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033158 (n + 1) - 1

end

end A005487.P16243801690929876217

/-! ## A005487.P11245091792510835657

`∑[A236269(n+1)]-A236269(n+1)`
-/

namespace A005487.P11245091792510835657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A236269 (n + 1)

end

end A005487.P11245091792510835657

/-! ## A005487.P2796758483825790595

`A279485(ceil(1/(n+1)))+A033158(n+1)`
-/

namespace A005487.P2796758483825790595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279485 ⌈1 / (n + 1 : ℚ)⌉.toNat + A033158 (n + 1)

end

end A005487.P2796758483825790595

/-! ## A005487.P13823295648450995365

`A033999(A006257(n+1))+A033158(n+1)`
-/

namespace A005487.P13823295648450995365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A006257 (n + 1)).toNat + A033158 (n + 1)

end

end A005487.P13823295648450995365

/-! ## A005487.P17113231230920484473

`A092673(A000040(n+4))+A033158(n+1)`
-/

namespace A005487.P17113231230920484473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A000040 (n + 4)).toNat + A033158 (n + 1)

end

end A005487.P17113231230920484473

/-! ## A005487.P1645442204050942415

`A023443(A033158(n+1))`
-/

namespace A005487.P1645442204050942415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033158 (n + 1)).toNat

end

end A005487.P1645442204050942415

/-!
# A005490: Number of partitions of [n] where the first k elements are marked (0 <= k <= n-1) and at least k blocks contain their own index.

The programs for A005490, there is no canonical definition to state claims against.
-/

/-! ## A005490.P733869122169601826

`A347420(n+1)-1`
-/

namespace A005490.P733869122169601826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 (n + 1) - 1

end

end A005490.P733869122169601826

/-! ## A005490.P11171018361281853993

`∑[abs(Δ[A347420(n)])]`
-/

namespace A005490.P11171018361281853993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005490.P11171018361281853993

/-! ## A005490.P16517049621479592340

`∑[A000007(n+1)+Δ[A347420(n)]]`
-/

namespace A005490.P16517049621479592340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005490.P16517049621479592340

/-! ## A005490.P8510434540509182955

`A000110(n+1)+A350589(n+1)-1`
-/

namespace A005490.P8510434540509182955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) + (A350589 (n + 1) - 1)

end

end A005490.P8510434540509182955

/-! ## A005490.P9968952298833017778

`∑[Δ[A347420(n)]%A173314(n)]`
-/

namespace A005490.P9968952298833017778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A173314 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005490.P9968952298833017778

/-!
# A005491: a(n) = n^3 + 3*n + 1.

The programs for A005491, the canonical program `A005491.P208303026648680842` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005491 has offset 0).

The definition of A005491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+3*n+1` (program `A005491.P208303026648680842`, by `A005491.P208303026648680842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005491.P208303026648680842

`n^3+3*n+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005491

/-- `n^3+3*n+1` -/
def P208303026648680842.Spec : Prop :=
  ∀ n, (P208303026648680842.a n : ℤ) = A005491 n

theorem P208303026648680842.correct : P208303026648680842.Spec := by
  intro n
  simp only [A005491]

end A005491

/-! ## A005491.P14224533275613961987

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A005491.P14224533275613961987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005491.P14224533275613961987

namespace A005491

/-- `∑[∑[a(n-1)+6]]` -/
def P14224533275613961987.Spec : Prop :=
  ∀ n, (P14224533275613961987.a n : ℤ) = A005491 n

end A005491

/-! ## A005491.P11866639866033478481

`∑[∑[ogf((1+x+x^2+3x^3)/(1-2x+x^2))]]`
-/

namespace A005491.P11866639866033478481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005491.P11866639866033478481

namespace A005491

/-- `∑[∑[ogf((1+x+x^2+3x^3)/(1-2x+x^2))]]` -/
def P11866639866033478481.Spec : Prop :=
  ∀ n, P11866639866033478481.a n = A005491 n

end A005491

/-! ## A005491.P6280899409591869359

`or(1, n*(∑[2*n]-(n-3)))`
-/

namespace A005491.P6280899409591869359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 3)))

end

end A005491.P6280899409591869359

namespace A005491

/-- `or(1, n*(∑[2*n]-(n-3)))` -/
def P6280899409591869359.Spec : Prop :=
  ∀ n, P6280899409591869359.a n = A005491 n

end A005491

/-! ## A005491.P2454087045770027436

`xor(1, n*(∑[2*n]-(n-3)))`
-/

namespace A005491.P2454087045770027436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 3)))

end

end A005491.P2454087045770027436

namespace A005491

/-- `xor(1, n*(∑[2*n]-(n-3)))` -/
def P2454087045770027436.Spec : Prop :=
  ∀ n, P2454087045770027436.a n = A005491 n

end A005491

/-! ## A005491.P3283169519376613052

`(abs((C(n, 2)+2)*4*(n+1)-3)-3)/2`
-/

namespace A005491.P3283169519376613052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|((Nat.choose n 2 + 2) * (4 * (n + 1)) : ℤ) - 3| - 3 : ℚ) / 2

end

end A005491.P3283169519376613052

namespace A005491

/-- `(abs((C(n, 2)+2)*4*(n+1)-3)-3)/2` -/
def P3283169519376613052.Spec : Prop :=
  ∀ n, P3283169519376613052.a n = (A005491 n : ℚ)

end A005491

/-! ## A005491.P16261928828794015211

`∑[∑[3*A004275(n)]+1]`
-/

namespace A005491.P16261928828794015211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005491.P16261928828794015211

namespace A005491

/-- `∑[∑[3*A004275(n)]+1]` -/
def P16261928828794015211.Spec : Prop :=
  ∀ n, P16261928828794015211.a n = A005491 n

end A005491

/-! ## A005491.P5801174641844775833

`abs(1-∑[A077588(n)+1]-n)`
-/

namespace A005491.P5801174641844775833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A005491.P5801174641844775833

namespace A005491

/-- `abs(1-∑[A077588(n)+1]-n)` -/
def P5801174641844775833.Spec : Prop :=
  ∀ n, P5801174641844775833.a n = A005491 n

end A005491

/-! ## A005491.P4103427838675022108

`abs(n*(A000290(n)+4)+1-n)`
-/

namespace A005491.P4103427838675022108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A000290 n + 4) + 1 - (n : ℤ)|

end

end A005491.P4103427838675022108

namespace A005491

/-- `abs(n*(A000290(n)+4)+1-n)` -/
def P4103427838675022108.Spec : Prop :=
  ∀ n, P4103427838675022108.a n = A005491 n

end A005491

/-! ## A005491.P9307174035504540569

`floor((n+1)/Δ[atan(n)]-A000384(n))`
-/

namespace A005491.P9307174035504540569
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (f1 (n + 1) - f1 n) - (A000384 n : ℝ)⌋

end

end A005491.P9307174035504540569

namespace A005491

/-- `floor((n+1)/Δ[atan(n)]-A000384(n))` -/
def P9307174035504540569.Spec : Prop :=
  ∀ n, P9307174035504540569.a n = A005491 n

end A005491

/-! ## A005491.P10602159543674818816

`Δ[∑[n]+A152947(n+1)²]`
-/

namespace A005491.P10602159543674818816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + A152947 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005491.P10602159543674818816

namespace A005491

/-- `Δ[∑[n]+A152947(n+1)²]` -/
def P10602159543674818816.Spec : Prop :=
  ∀ n, P10602159543674818816.a n = A005491 n

end A005491

/-! ## A005491.P2198049896101526847

`∑[∑[A008486(A004275(n))]]`
-/

namespace A005491.P2198049896101526847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005491.P2198049896101526847

namespace A005491

/-- `∑[∑[A008486(A004275(n))]]` -/
def P2198049896101526847.Spec : Prop :=
  ∀ n, P2198049896101526847.a n = A005491 n

end A005491

/-! ## A005491.P18400859824161951587

`∑[∑[A204502(2*(n+1))]]`
-/

namespace A005491.P18400859824161951587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005491.P18400859824161951587

namespace A005491

/-- `∑[∑[A204502(2*(n+1))]]` -/
def P18400859824161951587.Spec : Prop :=
  ∀ n, P18400859824161951587.a n = A005491 n

end A005491

/-! ## A005491.P1932176509197055307

`∑[∑[A032766(A019442(n+1))]]`
-/

namespace A005491.P1932176509197055307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A019442 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005491.P1932176509197055307

namespace A005491

/-- `∑[∑[A032766(A019442(n+1))]]` -/
def P1932176509197055307.Spec : Prop :=
  ∀ n, P1932176509197055307.a n = A005491 n

end A005491

/-! ## A005491.P103076054898302182

`∑[A016777(∑[comp[2*n+3]])]`
-/

namespace A005491.P103076054898302182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005491.P103076054898302182

namespace A005491

/-- `∑[A016777(∑[comp[2*n+3]])]` -/
def P103076054898302182.Spec : Prop :=
  ∀ n, P103076054898302182.a n = A005491 n

end A005491

/-!
# A005492: From expansion of falling factorials.

The programs for A005492, the canonical program `A005492.P8751182643272297130` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005492 has offset 4).

The definition of A005492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005492.P8751182643272297130

`(n+4)^4-16*(n+4)^3+102*(n+4)²-300*(n+4)+340`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005492

/-- `(n+4)^4-16*(n+4)^3+102*(n+4)²-300*(n+4)+340` -/
def P8751182643272297130.Spec : Prop :=
  ∀ n, P8751182643272297130.a n = A005492 (n + 4)

theorem P8751182643272297130.correct : P8751182643272297130.Spec := by
  intro n
  simp only [A005492, Nat.add_sub_cancel]

end A005492

/-! ## A005492.P13235376472278136270

`or(4, A156798(n)+A028347(n+2))`
-/

namespace A005492.P13235376472278136270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A156798 n + A028347 (n + 2))

end

end A005492.P13235376472278136270

namespace A005492

/-- `or(4, A156798(n)+A028347(n+2))` -/
def P13235376472278136270.Spec : Prop :=
  ∀ n, P13235376472278136270.a n = A005492 (n + 4)

end A005492

/-! ## A005492.P16507387186197047899

`lcm(A178390(n)+A069894(n), gcd(2, n))`
-/

namespace A005492.P16507387186197047899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178390 n + A069894 n) (Nat.gcd 2 n : ℤ)

end

end A005492.P16507387186197047899

namespace A005492

/-- `lcm(A178390(n)+A069894(n), gcd(2, n))` -/
def P16507387186197047899.Spec : Prop :=
  ∀ n, (P16507387186197047899.a n : ℤ) = A005492 (n + 4)

end A005492

/-! ## A005492.P7050809058364768736

`abs(A135859(n+1)-A304162(n+1))`
-/

namespace A005492.P7050809058364768736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135859 (n + 1) - A304162 (n + 1)|

end

end A005492.P7050809058364768736

namespace A005492

/-- `abs(A135859(n+1)-A304162(n+1))` -/
def P7050809058364768736.Spec : Prop :=
  ∀ n, P7050809058364768736.a n = A005492 (n + 4)

end A005492

/-! ## A005492.P876364399230417717

`(A156798(n)+A028347(n+2))%A190780(n)`
-/

namespace A005492.P876364399230417717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156798 n + A028347 (n + 2)) (A190780 n)

end

end A005492.P876364399230417717

namespace A005492

/-- `(A156798(n)+A028347(n+2))%A190780(n)` -/
def P876364399230417717.Spec : Prop :=
  ∀ n, P876364399230417717.a n = A005492 (n + 4)

end A005492

/-! ## A005492.P7360094687933059580

`abs((A156798(n)+A028347(n+2))*A033999(n))`
-/

namespace A005492.P7360094687933059580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A156798 n + A028347 (n + 2)) * A033999 n|

end

end A005492.P7360094687933059580

namespace A005492

/-- `abs((A156798(n)+A028347(n+2))*A033999(n))` -/
def P7360094687933059580.Spec : Prop :=
  ∀ n, P7360094687933059580.a n = A005492 (n + 4)

end A005492

/-! ## A005492.P1415635426044595007

`(A178390(n)+A069894(n))*A001076(((-1)^n)²)`
-/

namespace A005492.P1415635426044595007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178390 n + A069894 n) * A001076 (((-1) ^ n) ^ 2).toNat

end

end A005492.P1415635426044595007

namespace A005492

/-- `(A178390(n)+A069894(n))*A001076(((-1)^n)²)` -/
def P1415635426044595007.Spec : Prop :=
  ∀ n, P1415635426044595007.a n = A005492 (n + 4)

end A005492

/-! ## A005492.P18378437253287743967

`(A156798(n)+A028347(n+2))*A000041(C(2, n+2))`
-/

namespace A005492.P18378437253287743967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156798 n + A028347 (n + 2)) * A000041 (Nat.choose 2 (n + 2))

end

end A005492.P18378437253287743967

namespace A005492

/-- `(A156798(n)+A028347(n+2))*A000041(C(2, n+2))` -/
def P18378437253287743967.Spec : Prop :=
  ∀ n, P18378437253287743967.a n = A005492 (n + 4)

end A005492

/-! ## A005492.P160989183271313376

`(A156798(n)+A028347(n+2))/A000010(((-1)^n)²)`
-/

namespace A005492.P160989183271313376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156798 n + A028347 (n + 2) : ℚ) / (A000010 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A005492.P160989183271313376

namespace A005492

/-- `(A156798(n)+A028347(n+2))/A000010(((-1)^n)²)` -/
def P160989183271313376.Spec : Prop :=
  ∀ n, P160989183271313376.a n = (A005492 (n + 4) : ℚ)

end A005492

/-! ## A005492.P16158804621974792196

`abs(A000035(2*n)-(A156798(n)+A028347(n+2)))`
-/

namespace A005492.P16158804621974792196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000035 (2 * n) - (A156798 n + A028347 (n + 2))|

end

end A005492.P16158804621974792196

namespace A005492

/-- `abs(A000035(2*n)-(A156798(n)+A028347(n+2)))` -/
def P16158804621974792196.Spec : Prop :=
  ∀ n, P16158804621974792196.a n = A005492 (n + 4)

end A005492

/-! ## A005492.P17309404300814503338

`(A156798(n)+A028347(n+2))/A080323(A066938(n+1))²`
-/

namespace A005492.P17309404300814503338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156798 n + A028347 (n + 2) : ℚ) / (A080323 (A066938 (n + 1)).toNat ^ 2 : ℚ)

end

end A005492.P17309404300814503338

namespace A005492

/-- `(A156798(n)+A028347(n+2))/A080323(A066938(n+1))²` -/
def P17309404300814503338.Spec : Prop :=
  ∀ n, P17309404300814503338.a n = (A005492 (n + 4) : ℚ)

end A005492

/-!
# A005493: 2-Bell numbers: a(n) = number of partitions of [n+1] with a distinguished block.

The programs for A005493, there is no canonical definition to state claims against.
-/

/-! ## A005493.P8619122005954281997

`A000296(n+3)-A000296(n+1)`
-/

namespace A005493.P8619122005954281997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 3) - A000296 (n + 1)

end

end A005493.P8619122005954281997

/-! ## A005493.P3852429799370772899

`∑[A011965(n)]`
-/

namespace A005493.P3852429799370772899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005493.P3852429799370772899

/-! ## A005493.P6189544117854159678

`Δ[A011972(∑[n])]`
-/

namespace A005493.P6189544117854159678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005493.P6189544117854159678

/-! ## A005493.P6875272642632615702

`Δ[A095674(∑[n])]`
-/

namespace A005493.P6875272642632615702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095674 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005493.P6875272642632615702

/-! ## A005493.P6660742980009775721

`Δ[A123346(∑[n])]`
-/

namespace A005493.P6660742980009775721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005493.P6660742980009775721

/-! ## A005493.P4423833016006792962

`Δ[A283424(∑[n])]`
-/

namespace A005493.P4423833016006792962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005493.P4423833016006792962

/-! ## A005493.P114816733537359525

`Δ[record[A095149(n)]]`
-/

namespace A005493.P114816733537359525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005493.P114816733537359525

/-! ## A005493.P17975317665611941680

`record[Δ[A095674(n)]]`
-/

namespace A005493.P17975317665611941680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095674 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005493.P17975317665611941680

/-! ## A005493.P13048228593571286969

`Δ[record[A108087(n)]]`
-/

namespace A005493.P13048228593571286969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005493.P13048228593571286969

/-! ## A005493.P14560819411450693255

`Δ[record[A123346(n)]]`
-/

namespace A005493.P14560819411450693255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005493.P14560819411450693255

/-!
# A005494: 3-Bell numbers: E.g.f.: exp(3*z + exp(z) - 1).

The programs for A005494, there is no canonical definition to state claims against.
-/

/-! ## A005494.P10721376594873085202

`Δ[A033452(n)]`
-/

namespace A005494.P10721376594873085202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005494.P10721376594873085202

/-! ## A005494.P3994730903642996549

`Δ[Δ[A171859(n+1)]]`
-/

namespace A005494.P3994730903642996549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171859 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005494.P3994730903642996549

/-! ## A005494.P15122599186338846456

`A108087(A167614(n+2))`
-/

namespace A005494.P15122599186338846456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A167614 (n + 2)).toNat

end

end A005494.P15122599186338846456

/-! ## A005494.P7878902471130330034

`A108087(A052905(n)+8)`
-/

namespace A005494.P7878902471130330034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A052905 n + 8).toNat

end

end A005494.P7878902471130330034

/-! ## A005494.P17575429823113767541

`A108087(A055999(n)+9)`
-/

namespace A005494.P17575429823113767541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A055999 n + 9).toNat

end

end A005494.P17575429823113767541

/-! ## A005494.P15409984673855005072

`Δ[A059606(n)+A003128(n)]`
-/

namespace A005494.P15409984673855005072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059606 n + A003128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005494.P15409984673855005072

/-! ## A005494.P600140560486232028

`A011965(n)+Δ[A226506(n)]`
-/

namespace A005494.P600140560486232028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n + (f1 (n + 1) - f1 n)

end

end A005494.P600140560486232028

/-! ## A005494.P17002007639896980975

`Δ[A005493(n)]-A005493(n)`
-/

namespace A005494.P17002007639896980975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005493 n

end

end A005494.P17002007639896980975

/-! ## A005494.P6235847278857915190

`Δ[A011965(n)-A000110(n)]`
-/

namespace A005494.P6235847278857915190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005494.P6235847278857915190

/-! ## A005494.P8742930602352471573

`A108087(A000096(n+2)+4)`
-/

namespace A005494.P8742930602352471573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A000096 (n + 2) + 4).toNat

end

end A005494.P8742930602352471573

/-!
# A005495: Number of triangulations of the disk G_{n,3}.

The programs for A005495, there is no canonical definition to state claims against.
-/

/-! ## A005495.P10364071823735497149

`A262586(∑[n+3]+n+3)`
-/

namespace A005495.P10364071823735497149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A005495.P10364071823735497149

/-! ## A005495.P11262370860577960486

`lcm(2, A262586(A046691(n+2)))`
-/

namespace A005495.P11262370860577960486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262586 (A046691 (n + 2)).toNat)

end

end A005495.P11262370860577960486

/-! ## A005495.P15871263020596273319

`2*A005502(n)-A005507(n)`
-/

namespace A005495.P15871263020596273319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005502 n - A005507 n

end

end A005495.P15871263020596273319

/-! ## A005495.P3680178182688365286

`A046212(A109613(n))*A262586(A046691(n+2))`
-/

namespace A005495.P3680178182688365286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046212 (A109613 n).toNat * A262586 (A046691 (n + 2)).toNat

end

end A005495.P3680178182688365286

/-! ## A005495.P17402868261679541027

`A030272(A370884(n))*A262586(A046691(n+2))`
-/

namespace A005495.P17402868261679541027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030272 (A370884 n).toNat * A262586 (A046691 (n + 2)).toNat

end

end A005495.P17402868261679541027

/-!
# A005496: A finite sequence associated with the Lie algebra E_7.

The programs for A005496, there is no canonical definition to state claims against.
-/

/-! ## A005496.P13512917906152387666

`∑[A002487(A168208(A107807(n+1)))]`
-/

namespace A005496.P13512917906152387666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A168208 (A107807 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005496.P13512917906152387666

/-! ## A005496.P7702109695841993563

`lt[A322795(A034856(n+1)), A114994(n)]`
-/

namespace A005496.P7702109695841993563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322795 (A034856 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005496.P7702109695841993563

/-!
# A005498: Triangulations of the disk G_{2,n}.

The programs for A005498, the canonical program `A005498.P10281591895793247956` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005498 has offset 0).

The definition of A005498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005498.P16111007930673219881

`(n+1)*A007595(n+2)`
-/

namespace A005498.P16111007930673219881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007595 (n + 2)

end

end A005498.P16111007930673219881

namespace A005498

/-- `(n+1)*A007595(n+2)` -/
def P16111007930673219881.Spec : Prop :=
  ∀ n, P16111007930673219881.a n = A005498 n

end A005498

/-! ## A005498.P17447709427191398091

`2*A005504(n)-A005509(n)`
-/

namespace A005498.P17447709427191398091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005504 n - A005509 n

end

end A005498.P17447709427191398091

namespace A005498

/-- `2*A005504(n)-A005509(n)` -/
def P17447709427191398091.Spec : Prop :=
  ∀ n, P17447709427191398091.a n = A005498 n

end A005498

/-! ## A005498.P10281591895793247956

`A002054(n+1)+A001791(∑[n]%(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005498

/-- `A002054(n+1)+A001791(∑[n]%(n+1))` -/
def P10281591895793247956.Spec : Prop :=
  ∀ n, P10281591895793247956.a n = A005498 n

theorem P10281591895793247956.correct : P10281591895793247956.Spec := by
  intro n
  simp only [A005498]

end A005498

/-! ## A005498.P5659193908147811017

`A002054(n+1)+A001791(A142150(n+1))`
-/

namespace A005498.P5659193908147811017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) + A001791 (A142150 (n + 1)).toNat

end

end A005498.P5659193908147811017

namespace A005498

/-- `A002054(n+1)+A001791(A142150(n+1))` -/
def P5659193908147811017.Spec : Prop :=
  ∀ n, P5659193908147811017.a n = A005498 n

end A005498

/-! ## A005498.P14185705348102908203

`A002054(n+1)+A126869(n+1)-A126120(n+1)`
-/

namespace A005498.P14185705348102908203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) + (A126869 (n + 1) - A126120 (n + 1))

end

end A005498.P14185705348102908203

namespace A005498

/-- `A002054(n+1)+A126869(n+1)-A126120(n+1)` -/
def P14185705348102908203.Spec : Prop :=
  ∀ n, P14185705348102908203.a n = A005498 n

end A005498

/-! ## A005498.P5927471576409296321

`A262586(∑[n+2]+3)`
-/

namespace A005498.P5927471576409296321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005498.P5927471576409296321

namespace A005498

/-- `A262586(∑[n+2]+3)` -/
def P5927471576409296321.Spec : Prop :=
  ∀ n, P5927471576409296321.a n = A005498 n

end A005498

/-! ## A005498.P16975393850891225817

`(n+1)*A132892(A058331(n+1))`
-/

namespace A005498.P16975393850891225817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A132892 (A058331 (n + 1)).toNat

end

end A005498.P16975393850891225817

namespace A005498

/-- `(n+1)*A132892(A058331(n+1))` -/
def P16975393850891225817.Spec : Prop :=
  ∀ n, P16975393850891225817.a n = A005498 n

end A005498

/-! ## A005498.P14929670884595899609

`(n+1)*A047996(A142463(n+2))`
-/

namespace A005498.P14929670884595899609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047996 (A142463 (n + 2)).toNat

end

end A005498.P14929670884595899609

namespace A005498

/-- `(n+1)*A047996(A142463(n+2))` -/
def P14929670884595899609.Spec : Prop :=
  ∀ n, P14929670884595899609.a n = A005498 n

end A005498

/-!
# A005499: Triangulations of the disk G_{3,n}.

The programs for A005499, there is no canonical definition to state claims against.
-/

/-! ## A005499.P5179270803001439793

`A262586(∑[n+3]+6)`
-/

namespace A005499.P5179270803001439793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A005499.P5179270803001439793

/-! ## A005499.P5294441769129333812

`A262586(A167614(n+2))%A075870(n+2)`
-/

namespace A005499.P5294441769129333812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262586 (A167614 (n + 2)).toNat) (A075870 (n + 2))

end

end A005499.P5294441769129333812

/-! ## A005499.P2737998024261534428

`A262586(A167614(n+2))+C(A000034(n), 3)`
-/

namespace A005499.P2737998024261534428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A167614 (n + 2)).toNat + (Nat.choose (A000034 n).toNat 3 : ℤ)

end

end A005499.P2737998024261534428

/-! ## A005499.P13615964286183486306

`A001222(A059496(n+1))*A262586(A167614(n+2))`
-/

namespace A005499.P13615964286183486306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A059496 (n + 1)).toNat * A262586 (A167614 (n + 2)).toNat

end

end A005499.P13615964286183486306

/-! ## A005499.P11974800411470942150

`A262586(A167614(n+2))*A329385(A000040(n+1))`
-/

namespace A005499.P11974800411470942150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A167614 (n + 2)).toNat * A329385 (A000040 (n + 1)).toNat

end

end A005499.P11974800411470942150

