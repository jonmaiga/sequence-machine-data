import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A346400: Composite numbers k such that the numerator of the harmonic mean of the divisors of k is equal to k.

The programs for A346400, the canonical program `A346400.P16788197224130151719` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346400 has offset 1).

The definition of A346400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346400.P16788197224130151719

`filter[A250094(n+1), A066247(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A346400

/-- `filter[A250094(n+1), A066247(#)]` -/
def P16788197224130151719.Spec : Prop :=
  ∀ n, P16788197224130151719.a n = A346400 (n + 1)

theorem P16788197224130151719.correct : P16788197224130151719.Spec := by
  intro n
  simp only [A346400, Nat.add_sub_cancel]

end A346400

/-! ## A346400.P10109525207609668767

`filter[A250094(n+1), A202238(#)]`
-/

namespace A346400.P10109525207609668767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A346400.P10109525207609668767

namespace A346400

/-- `filter[A250094(n+1), A202238(#)]` -/
def P10109525207609668767.Spec : Prop :=
  ∀ n, P10109525207609668767.a n = A346400 (n + 1)

end A346400

/-! ## A346400.P5551371393601321001

`filter[A250094(n+2), A005171(#)]`
-/

namespace A346400.P5551371393601321001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A346400.P5551371393601321001

namespace A346400

/-- `filter[A250094(n+2), A005171(#)]` -/
def P5551371393601321001.Spec : Prop :=
  ∀ n, P5551371393601321001.a n = A346400 (n + 1)

end A346400

/-! ## A346400.P11557157751278341463

`∩[A002808(n+1), A250094(n+1)]`
-/

namespace A346400.P11557157751278341463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346400.P11557157751278341463

namespace A346400

/-- `∩[A002808(n+1), A250094(n+1)]` -/
def P11557157751278341463.Spec : Prop :=
  ∀ n, (P11557157751278341463.a n : ℤ) = A346400 (n + 1)

end A346400

/-! ## A346400.P4555017362306886380

`eq[A339579(n+1), A348510(A339579(n+1)+n)]`
-/

namespace A346400.P4555017362306886380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (A339579 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346400.P4555017362306886380

namespace A346400

/-- `eq[A339579(n+1), A348510(A339579(n+1)+n)]` -/
def P4555017362306886380.Spec : Prop :=
  ∀ n, (P4555017362306886380.a n : ℤ) = A346400 (n + 1)

end A346400

/-! ## A346400.P1196762859219642869

`∩[A138592(n+1), A250094(n+1)]`
-/

namespace A346400.P1196762859219642869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346400.P1196762859219642869

namespace A346400

/-- `∩[A138592(n+1), A250094(n+1)]` -/
def P1196762859219642869.Spec : Prop :=
  ∀ n, (P1196762859219642869.a n : ℤ) = A346400 (n + 1)

end A346400

/-! ## A346400.P13364981393727480958

`∩[A250094(n+1), A343311(n+1)]`
-/

namespace A346400.P13364981393727480958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346400.P13364981393727480958

namespace A346400

/-- `∩[A250094(n+1), A343311(n+1)]` -/
def P13364981393727480958.Spec : Prop :=
  ∀ n, (P13364981393727480958.a n : ℤ) = A346400 (n + 1)

end A346400

/-! ## A346400.P12230532174138746076

`∩[A250094(n+1), A387319(n+1)]`
-/

namespace A346400.P12230532174138746076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346400.P12230532174138746076

namespace A346400

/-- `∩[A250094(n+1), A387319(n+1)]` -/
def P12230532174138746076.Spec : Prop :=
  ∀ n, (P12230532174138746076.a n : ℤ) = A346400 (n + 1)

end A346400

/-! ## A346400.P12973728556322221615

`∩[eq[0, A348510(n+1)], A166460(n+2)]+1`
-/

namespace A346400.P12973728556322221615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n + 1

end

end A346400.P12973728556322221615

namespace A346400

/-- `∩[eq[0, A348510(n+1)], A166460(n+2)]+1` -/
def P12973728556322221615.Spec : Prop :=
  ∀ n, (P12973728556322221615.a n : ℤ) = A346400 (n + 1)

end A346400

/-! ## A346400.P15584506480014820277

`eq[A339579(n+1), A348510(A028310(n))]`
-/

namespace A346400.P15584506480014820277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346400.P15584506480014820277

namespace A346400

/-- `eq[A339579(n+1), A348510(A028310(n))]` -/
def P15584506480014820277.Spec : Prop :=
  ∀ n, (P15584506480014820277.a n : ℤ) = A346400 (n + 1)

end A346400

/-! ## A346400.P7787282622106506405

`∩[A111774(n+1), A250094(n+1)]`
-/

namespace A346400.P7787282622106506405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346400.P7787282622106506405

namespace A346400

/-- `∩[A111774(n+1), A250094(n+1)]` -/
def P7787282622106506405.Spec : Prop :=
  ∀ n, (P7787282622106506405.a n : ℤ) = A346400 (n + 1)

end A346400

/-! ## A346400.P3808898312056466272

`eq[A339579(n+1), A348510(A233583(n+1))]`
-/

namespace A346400.P3808898312056466272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346400.P3808898312056466272

namespace A346400

/-- `eq[A339579(n+1), A348510(A233583(n+1))]` -/
def P3808898312056466272.Spec : Prop :=
  ∀ n, (P3808898312056466272.a n : ℤ) = A346400 (n + 1)

end A346400

/-!
# A346403: a(1)=1; for n>1, a(n) gives the sum of the exponents in the different ways to write n as n = x^y, 2 <= x, 1 <= y.

The programs for A346403, the canonical program `A346403.P9961998828298484879` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346403 has offset 1).

The definition of A346403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346403.P9961998828298484879

`A000203(A253641(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A346403

/-- `A000203(A253641(n+1))` -/
def P9961998828298484879.Spec : Prop :=
  ∀ n, P9961998828298484879.a n = A346403 (n + 1)

theorem P9961998828298484879.correct : P9961998828298484879.Spec := by
  intro n
  simp only [A346403, Nat.add_sub_cancel]

end A346403

/-! ## A346403.P6878070630873730136

`∑{d}[A253641(n+1), #]`
-/

namespace A346403.P6878070630873730136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A346403.P6878070630873730136

namespace A346403

/-- `∑{d}[A253641(n+1), #]` -/
def P6878070630873730136.Spec : Prop :=
  ∀ n, (P6878070630873730136.a n : ℤ) = A346403 (n + 1)

end A346403

/-! ## A346403.P4101791900070111230

`∑{d}[A052409(ceil(sqrt(n²+4))), #]`
-/

namespace A346403.P4101791900070111230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A346403.P4101791900070111230

namespace A346403

/-- `∑{d}[A052409(ceil(sqrt(n²+4))), #]` -/
def P4101791900070111230.Spec : Prop :=
  ∀ n, (P4101791900070111230.a n : ℤ) = A346403 (n + 1)

end A346403

/-! ## A346403.P15575204645697296110

`∑{d}[A052409(n+1)+floor(acot(n)), #]`
-/

namespace A346403.P15575204645697296110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A346403.P15575204645697296110

namespace A346403

/-- `∑{d}[A052409(n+1)+floor(acot(n)), #]` -/
def P15575204645697296110.Spec : Prop :=
  ∀ n, (P15575204645697296110.a n : ℤ) = A346403 (n + 1)

end A346403

/-! ## A346403.P8543756172274666045

`∑{d}[A158052(n+1), #]+floor(acot(n))`
-/

namespace A346403.P8543756172274666045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A346403.P8543756172274666045

namespace A346403

/-- `∑{d}[A158052(n+1), #]+floor(acot(n))` -/
def P8543756172274666045.Spec : Prop :=
  ∀ n, P8543756172274666045.a n = A346403 (n + 1)

end A346403

/-! ## A346403.P12413704989157366931

`A000203(A052409(ceil(acot(n)+n)))`
-/

namespace A346403.P12413704989157366931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A052409 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat).toNat

end

end A346403.P12413704989157366931

namespace A346403

/-- `A000203(A052409(ceil(acot(n)+n)))` -/
def P12413704989157366931.Spec : Prop :=
  ∀ n, P12413704989157366931.a n = A346403 (n + 1)

end A346403

/-! ## A346403.P7967817989477292171

`A000203(A052409(n+1)+A000007(n))`
-/

namespace A346403.P7967817989477292171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A052409 (n + 1) + A000007 n).toNat

end

end A346403.P7967817989477292171

namespace A346403

/-- `A000203(A052409(n+1)+A000007(n))` -/
def P7967817989477292171.Spec : Prop :=
  ∀ n, P7967817989477292171.a n = A346403 (n + 1)

end A346403

/-! ## A346403.P13333510608494422076

`A253641(A175068(n+1))`
-/

namespace A346403.P13333510608494422076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A175068 (n + 1)).toNat

end

end A346403.P13333510608494422076

namespace A346403

/-- `A253641(A175068(n+1))` -/
def P13333510608494422076.Spec : Prop :=
  ∀ n, P13333510608494422076.a n = A346403 (n + 1)

end A346403

/-! ## A346403.P15657618715418423083

`A253641((n+1)*A175069(n+1))`
-/

namespace A346403.P15657618715418423083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 ((n + 1 : ℤ) * A175069 (n + 1)).toNat

end

end A346403.P15657618715418423083

namespace A346403

/-- `A253641((n+1)*A175069(n+1))` -/
def P15657618715418423083.Spec : Prop :=
  ∀ n, P15657618715418423083.a n = A346403 (n + 1)

end A346403

/-!
# A346405: a(n) = (n!)^2 * Sum_{k=0..n-1} 1 / ((n-k)^2 * k!).

The programs for A346405, the canonical program `A346405.P780884524186783048` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346405 has offset 0).

The definition of A346405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346405.P780884524186783048

`n!²*∑{#}[n-1, 1/((n-#)²*#!)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346405

/-- `n!²*∑{#}[n-1, 1/((n-#)²*#!)]` -/
def P780884524186783048.Spec : Prop :=
  ∀ n, P780884524186783048.a n = (A346405 n : ℚ)

end A346405

/-!
# A346407: a(n) is the position of A051451(n) in A025487.

The programs for A346407, there is no canonical definition to state claims against.
-/

/-! ## A346407.P12579051434532680932

`A101296(record[lcm(n, a(n-1))])` with `a(0)=1, a(1)=-1`
-/

namespace A346407.P12579051434532680932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (Int.lcm (n : ℤ) (f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346407.P12579051434532680932

/-! ## A346407.P11367549415862790225

`A085089(record[A120108(n)])`
-/

namespace A346407.P11367549415862790225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346407.P11367549415862790225

/-! ## A346407.P8241795442327278943

`A101296(record[A120108(n)])`
-/

namespace A346407.P8241795442327278943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346407.P8241795442327278943

/-! ## A346407.P16108641056049796134

`A101296(record[A232112(n)])`
-/

namespace A346407.P16108641056049796134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346407.P16108641056049796134

/-! ## A346407.P7051466483754445189

`record[A101296(A328459(n))]`
-/

namespace A346407.P7051466483754445189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A328459 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346407.P7051466483754445189

/-!
# A346408: Primes whose bitwise XOR of decimal digits is a prime.

The programs for A346408, there is no canonical definition to state claims against.
-/

/-! ## A346408.P5439600367864526202

`p?[record[A117332(A060620(n+1))]]`
-/

namespace A346408.P5439600367864526202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A060620 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346408.P5439600367864526202

/-! ## A346408.P14848932797649879384

`∩[A028790(n+1), A181526(n+1)]`
-/

namespace A346408.P14848932797649879384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346408.P14848932797649879384

/-! ## A346408.P13324387435041951120

`A350139(A082823(n+1))+A075238(n+1)`
-/

namespace A346408.P13324387435041951120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A082823 (n + 1)).toNat + A075238 (n + 1)

end

end A346408.P13324387435041951120

/-! ## A346408.P7351439878814249765

`A334944(A220545(n+1))+A075238(n+1)`
-/

namespace A346408.P7351439878814249765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334944 (A220545 (n + 1)).toNat + A075238 (n + 1)

end

end A346408.P7351439878814249765

/-!
# A346409: a(n) = (n!)^2 * Sum_{k=0..n-1} (-1)^k / ((n-k)^2 * k!).

The programs for A346409, the canonical program `A346409.P9944126382215634550` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346409 has offset 0).

The definition of A346409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346409.P9944126382215634550

`n!²*∑{#}[n-1, (-1)^#/((n-#)²*#!)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346409

/-- `n!²*∑{#}[n-1, (-1)^#/((n-#)²*#!)]` -/
def P9944126382215634550.Spec : Prop :=
  ∀ n, P9944126382215634550.a n = (A346409 n : ℚ)

end A346409

/-!
# A346410: a(n) = (n!)^2 * Sum_{k=0..n-1} 1 / ((n-k) * k!)^2.

The programs for A346410, the canonical program `A346410.P6143401008981138462` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346410 has offset 0).

The definition of A346410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346410.P6143401008981138462

`n!²*∑{#}[n-1, 1/((n-#)*#!)²]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346410

/-- `n!²*∑{#}[n-1, 1/((n-#)*#!)²]` -/
def P6143401008981138462.Spec : Prop :=
  ∀ n, P6143401008981138462.a n = (A346410 n : ℚ)

end A346410

/-! ## A346410.P2266888610614681289

`A004523(A056607(n+1))-A006466(n)`
-/

namespace A346410.P2266888610614681289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A056607 (n + 1)).toNat - A006466 n

end

end A346410.P2266888610614681289

namespace A346410

/-- `A004523(A056607(n+1))-A006466(n)` -/
def P2266888610614681289.Spec : Prop :=
  ∀ n, P2266888610614681289.a n = A346410 n

end A346410

/-!
# A346411: a(n) = (n!)^2 * Sum_{k=0..n-1} (-1)^k / ((n-k) * k!)^2.

The programs for A346411, the canonical program `A346411.P7680854341130201551` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346411 has offset 0).

The definition of A346411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346411.P7680854341130201551

`n!²*∑{#}[n-1, (-1)^#/((n-#)*#!)²]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346411

/-- `n!²*∑{#}[n-1, (-1)^#/((n-#)*#!)²]` -/
def P7680854341130201551.Spec : Prop :=
  ∀ n, P7680854341130201551.a n = (A346411 n : ℚ)

end A346411

/-!
# A346412: Triangular array read by rows: T(n,k) is the number of nilpotent n X n matrices over GF(2) having rank k, 0 <= k <= n-1, n >= 1.

The programs for A346412, there is no canonical definition to state claims against.
-/

/-! ## A346412.P13769306976403937484

`A022166(comp[∑[n+1]])*A288853(n)`
-/

namespace A346412.P13769306976403937484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A288853 n

end

end A346412.P13769306976403937484

/-! ## A346412.P9768026225423785512

`(A176420(n)+A014473(n))*A288853(A007401(n+1))`
-/

namespace A346412.P9768026225423785512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176420 n + A014473 n) * A288853 (A007401 (n + 1)).toNat

end

end A346412.P9768026225423785512

/-! ## A346412.P5462676138183598929

`A288853(A007401(n+1))/A007318(n)*A157638(n)`
-/

namespace A346412.P5462676138183598929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288853 (A007401 (n + 1)).toNat : ℚ) / (A007318 n : ℚ) * (A157638 n : ℚ)

end

end A346412.P5462676138183598929

/-! ## A346412.P8186199824966463283

`A288853(A007401(n+1))/A009963(n)*A156765(n)`
-/

namespace A346412.P8186199824966463283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288853 (A007401 (n + 1)).toNat : ℚ) / (A009963 n : ℚ) * (A156765 n : ℚ)

end

end A346412.P8186199824966463283

/-! ## A346412.P3555354741565537794

`A288853(A007401(n+1))/A173503(n)*A156950(n)`
-/

namespace A346412.P3555354741565537794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288853 (A007401 (n + 1)).toNat : ℚ) / (A173503 n : ℚ) * (A156950 n : ℚ)

end

end A346412.P3555354741565537794

/-!
# A346413: Number of labeled totally ordered monoids with n elements.

The programs for A346413, there is no canonical definition to state claims against.
-/

/-! ## A346413.P13643475751866464899

`∑[A182665(Δ[A055790(n)])]`
-/

namespace A346413.P13643475751866464899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346413.P13643475751866464899

/-!
# A346414: Number of labeled totally ordered commutative semigroups.

The programs for A346414, there is no canonical definition to state claims against.
-/

/-! ## A346414.P7394907427369886010

`A247983(A047890(n+1))`
-/

namespace A346414.P7394907427369886010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A047890 (n + 1)).toNat

end

end A346414.P7394907427369886010

/-! ## A346414.P15027238966069088492

`A127238(10*A380576(n))`
-/

namespace A346414.P15027238966069088492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127238 (10 * A380576 n).toNat

end

end A346414.P15027238966069088492

/-!
# A346415: Triangle T(n, k), n >= 0, 0 <= k <= n, read by rows, where column k is (1/k!) times the k-fold exponential convolution of Fibonacci numbers with themselves.

The programs for A346415, there is no canonical definition to state claims against.
-/

/-! ## A346415.P18014603144503703885

`A102705(ceil(sqrt(A187556(n))))`
-/

namespace A346415.P18014603144503703885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 ⌈Real.sqrt (A187556 n : ℝ)⌉.toNat

end

end A346415.P18014603144503703885

/-! ## A346415.P17195246251706624981

`A112689(A004885(A029635(n))²)`
-/

namespace A346415.P17195246251706624981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A004885 (A029635 n).toNat ^ 2).toNat

end

end A346415.P17195246251706624981

/-! ## A346415.P1592576956002720225

`A163352(A058710(n)*A130321(n))`
-/

namespace A346415.P1592576956002720225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A058710 n * A130321 n).toNat

end

end A346415.P1592576956002720225

/-! ## A346415.P11370475998763641538

`A262495(n)+A001222(A246935(n)!)`
-/

namespace A346415.P11370475998763641538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 n + A001222 (Nat.factorial (A246935 n).toNat)

end

end A346415.P11370475998763641538

/-! ## A346415.P4705382923823325712

`A353846(A094816(n))+A324173(n)`
-/

namespace A346415.P4705382923823325712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A094816 n).toNat + A324173 n

end

end A346415.P4705382923823325712

/-!
# A346416: Primes p such that the greatest perimeter of a triangle with prime sides including p and the next prime is prime.

The programs for A346416, the canonical program `A346416.P9477400210160570327` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346416 has offset 1).

The definition of A346416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346416.P9477400210160570327

`A055377(∩[A001043(n+1), A249666(n+1)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A346416

/-- `A055377(∩[A001043(n+1), A249666(n+1)])` -/
def P9477400210160570327.Spec : Prop :=
  ∀ n, P9477400210160570327.a n = A346416 (n + 1)

theorem P9477400210160570327.correct : P9477400210160570327.Spec := by
  intro n
  simp only [A346416, Nat.add_sub_cancel]

end A346416

/-! ## A346416.P5477779183546563490

`A055377(∩[A011974(n+1), A249666(n+1)])`
-/

namespace A346416.P5477779183546563490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A346416.P5477779183546563490

namespace A346416

/-- `A055377(∩[A011974(n+1), A249666(n+1)])` -/
def P5477779183546563490.Spec : Prop :=
  ∀ n, P5477779183546563490.a n = A346416 (n + 1)

end A346416

/-! ## A346416.P14707470239243955770

`p?[∑[A005361(A025081(n+1))]]`
-/

namespace A346416.P14707470239243955770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A025081 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346416.P14707470239243955770

namespace A346416

/-- `p?[∑[A005361(A025081(n+1))]]` -/
def P14707470239243955770.Spec : Prop :=
  ∀ n, P14707470239243955770.a n = A346416 (n + 1)

end A346416

/-! ## A346416.P478926929691933822

`p?[∑[A010685(A165550(n+1))]]`
-/

namespace A346416.P478926929691933822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A165550 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346416.P478926929691933822

namespace A346416

/-- `p?[∑[A010685(A165550(n+1))]]` -/
def P478926929691933822.Spec : Prop :=
  ∀ n, P478926929691933822.a n = A346416 (n + 1)

end A346416

/-! ## A346416.P4606183039508814052

`eq[A144926(n), A160570(n+1)]`
-/

namespace A346416.P4606183039508814052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346416.P4606183039508814052

namespace A346416

/-- `eq[A144926(n), A160570(n+1)]` -/
def P4606183039508814052.Spec : Prop :=
  ∀ n, (P4606183039508814052.a n : ℤ) = A346416 (n + 1)

end A346416

/-!
# A346417: E.g.f.: exp(exp(2*(exp(x) - 1)) - 1).

The programs for A346417, there is no canonical definition to state claims against.
-/

/-! ## A346417.P18367439867615587215

`round(A000040(A000051(n)*A104429(n))/3)`
-/

namespace A346417.P18367439867615587215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (A000051 n * A104429 n).toNat : ℚ) / 3)

end

end A346417.P18367439867615587215

/-!
# A346418: a(n) is the exponent of the largest power of n that divides the least common multiple of {1,2,...,n} (A003418). a(1) = 1.

The programs for A346418, the canonical program `A346418.P2093234214267519025` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346418 has offset 1).

The definition of A346418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346418.P15549858475512377588

`A354996(n+1)+A294338(A065091(3*(n+1)))`
-/

namespace A346418.P15549858475512377588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354996 (n + 1) + A294338 (A065091 (3 * (n + 1))).toNat

end

end A346418.P15549858475512377588

namespace A346418

/-- `A354996(n+1)+A294338(A065091(3*(n+1)))` -/
def P15549858475512377588.Spec : Prop :=
  ∀ n, P15549858475512377588.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P15736232718133813372

`A304442(A069688(n+1)*A354996(n+1))`
-/

namespace A346418.P15736232718133813372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A069688 (n + 1) * A354996 (n + 1)).toNat

end

end A346418.P15736232718133813372

namespace A346418

/-- `A304442(A069688(n+1)*A354996(n+1))` -/
def P15736232718133813372.Spec : Prop :=
  ∀ n, P15736232718133813372.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P15228582769882734648

`A354996(n+1)+A257993(A048519(n+1))`
-/

namespace A346418.P15228582769882734648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354996 (n + 1) + A257993 (A048519 (n + 1)).toNat

end

end A346418.P15228582769882734648

namespace A346418

/-- `A354996(n+1)+A257993(A048519(n+1))` -/
def P15228582769882734648.Spec : Prop :=
  ∀ n, P15228582769882734648.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P15784444700029404220

`A001221(A354933(n+1))^A192015(n+1)`
-/

namespace A346418.P15784444700029404220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A354933 (n + 1)).toNat : ℚ) ^ (A192015 (n + 1) : ℤ)

end

end A346418.P15784444700029404220

namespace A346418

/-- `A001221(A354933(n+1))^A192015(n+1)` -/
def P15784444700029404220.Spec : Prop :=
  ∀ n, P15784444700029404220.a n = (A346418 (n + 1) : ℚ)

end A346418

/-! ## A346418.P8542123385470309832

`A354996(n+1)+A057427(A208272(n+1))`
-/

namespace A346418.P8542123385470309832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354996 (n + 1) + A057427 (A208272 (n + 1)).toNat

end

end A346418.P8542123385470309832

namespace A346418

/-- `A354996(n+1)+A057427(A208272(n+1))` -/
def P8542123385470309832.Spec : Prop :=
  ∀ n, P8542123385470309832.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P2093234214267519025

`gcd(A000040(A072505(n+1)), A000079(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A346418

/-- `gcd(A000040(A072505(n+1)), A000079(n))` -/
def P2093234214267519025.Spec : Prop :=
  ∀ n, (P2093234214267519025.a n : ℤ) = A346418 (n + 1)

theorem P2093234214267519025.correct : P2093234214267519025.Spec := by
  intro n
  simp only [A346418, Nat.add_sub_cancel]

end A346418

/-! ## A346418.P2597286903111675155

`A354996(n+1)+A057427(A093018(3*(n+1)))`
-/

namespace A346418.P2597286903111675155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354996 (n + 1) + A057427 (A093018 (3 * (n + 1))).toNat

end

end A346418.P2597286903111675155

namespace A346418

/-- `A354996(n+1)+A057427(A093018(3*(n+1)))` -/
def P2597286903111675155.Spec : Prop :=
  ∀ n, P2597286903111675155.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P12696682694654013621

`A006530(2^A354995(n+1))`
-/

namespace A346418.P12696682694654013621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A354995 (n + 1) : ℤ))).toNat

end

end A346418.P12696682694654013621

namespace A346418

/-- `A006530(2^A354995(n+1))` -/
def P12696682694654013621.Spec : Prop :=
  ∀ n, P12696682694654013621.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P9696687809715753462

`A014963(2^A354995(n+1))`
-/

namespace A346418.P9696687809715753462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A354995 (n + 1) : ℤ))).toNat

end

end A346418.P9696687809715753462

namespace A346418

/-- `A014963(2^A354995(n+1))` -/
def P9696687809715753462.Spec : Prop :=
  ∀ n, P9696687809715753462.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P10705968883221849459

`val(A003418(n), A254667(n+1))!`
-/

namespace A346418.P10705968883221849459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A003418 n).toNat (A254667 (n + 1)).toNat)

end

end A346418.P10705968883221849459

namespace A346418

/-- `val(A003418(n), A254667(n+1))!` -/
def P10705968883221849459.Spec : Prop :=
  ∀ n, (P10705968883221849459.a n : ℤ) = A346418 (n + 1)

end A346418

/-! ## A346418.P12729269291211534259

`val(A003418(n), A233583(n+2))!`
-/

namespace A346418.P12729269291211534259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A003418 n).toNat (A233583 (n + 2)).toNat)

end

end A346418.P12729269291211534259

namespace A346418

/-- `val(A003418(n), A233583(n+2))!` -/
def P12729269291211534259.Spec : Prop :=
  ∀ n, (P12729269291211534259.a n : ℤ) = A346418 (n + 1)

end A346418

/-! ## A346418.P13826977996426712

`A003418(val(A003418(n), A254667(n+1)))`
-/

namespace A346418.P13826977996426712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (SequenceMachineLib.valuation (A003418 n).toNat (A254667 (n + 1)).toNat)

end

end A346418.P13826977996426712

namespace A346418

/-- `A003418(val(A003418(n), A254667(n+1)))` -/
def P13826977996426712.Spec : Prop :=
  ∀ n, P13826977996426712.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P7141022771762451158

`A003418(val(A003418(n), A233583(n+2)))`
-/

namespace A346418.P7141022771762451158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (SequenceMachineLib.valuation (A003418 n).toNat (A233583 (n + 2)).toNat)

end

end A346418.P7141022771762451158

namespace A346418

/-- `A003418(val(A003418(n), A233583(n+2)))` -/
def P7141022771762451158.Spec : Prop :=
  ∀ n, P7141022771762451158.a n = A346418 (n + 1)

end A346418

/-! ## A346418.P8425459489607305600

`gcd(A000006(A069288(n+1)), A091229(n))`
-/

namespace A346418.P8425459489607305600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000006 (A069288 (n + 1)).toNat) (A091229 n)

end

end A346418.P8425459489607305600

namespace A346418

/-- `gcd(A000006(A069288(n+1)), A091229(n))` -/
def P8425459489607305600.Spec : Prop :=
  ∀ n, (P8425459489607305600.a n : ℤ) = A346418 (n + 1)

end A346418

/-!
# A346419: a(n) is twice the coefficient of 1 in the fundamental unit of Q(sqrt(A000037(n))) where A000037 lists the nonsquare numbers (Version 2).

The programs for A346419, there is no canonical definition to state claims against.
-/

/-! ## A346419.P17949699641486333270

`A048941(n+1)%A347239(A258844(n+1))`
-/

namespace A346419.P17949699641486333270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048941 (n + 1)) (A347239 (A258844 (n + 1)).toNat)

end

end A346419.P17949699641486333270

/-! ## A346419.P11986595139338773600

`A089870(A048941(n+1))%32`
-/

namespace A346419.P11986595139338773600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089870 (A048941 (n + 1)).toNat) 32

end

end A346419.P11986595139338773600

/-! ## A346419.P360469023441170920

`and(A048941(n+1), A096024(A000079(n)))`
-/

namespace A346419.P360469023441170920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048941 (n + 1)) (A096024 (A000079 n).toNat)

end

end A346419.P360469023441170920

/-!
# A346420: a(n) is twice the coefficient of the radical part in the fundamental unit of Q(sqrt(A000037(n))) where A000037 lists the nonsquare numbers (Version 2).

The programs for A346420, there is no canonical definition to state claims against.
-/

/-! ## A346420.P14932063157239216289

`A007862(A116440(n+1))*A048942(n+1)`
-/

namespace A346420.P14932063157239216289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A116440 (n + 1)).toNat * A048942 (n + 1)

end

end A346420.P14932063157239216289

/-! ## A346420.P13493030920547280904

`lcm(A048942(n+1), A106032(A031396(n+1)))`
-/

namespace A346420.P13493030920547280904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048942 (n + 1)) (A106032 (A031396 (n + 1)).toNat)

end

end A346420.P13493030920547280904

/-! ## A346420.P15174208440476224119

`A188037(A307068(n))+A048942(n+1)`
-/

namespace A346420.P15174208440476224119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A307068 n).toNat + A048942 (n + 1)

end

end A346420.P15174208440476224119

/-! ## A346420.P1923713068077632874

`A280710(A000669(n+1))+A048942(n+1)`
-/

namespace A346420.P1923713068077632874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A000669 (n + 1)).toNat + A048942 (n + 1)

end

end A346420.P1923713068077632874

/-!
# A346422: a(n) = (1 + A014081(n))*a(A053645(n)) for n > 0 with a(0) = 1.

The programs for A346422, the canonical program `A346422.P4569030555854337770` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346422 has offset 0).

The definition of A346422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346422.P4569030555854337770

`(1+A014081(n))*a(A053645(n))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A346422

/-- `(1+A014081(n))*a(A053645(n))` -/
def P4569030555854337770.Spec : Prop :=
  ∀ n, P4569030555854337770.a n = A346422 n

theorem P4569030555854337770.correct : P4569030555854337770.Spec := by
  intro n
  simp only [A346422]

end A346422

/-! ## A346422.P3043060690500969220

`A284001(A385816(n))`
-/

namespace A346422.P3043060690500969220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A385816 n).toNat

end

end A346422.P3043060690500969220

namespace A346422

/-- `A284001(A385816(n))` -/
def P3043060690500969220.Spec : Prop :=
  ∀ n, P3043060690500969220.a n = A346422 n

end A346422

/-! ## A346422.P6077834837741084878

`A246660(n)*A333769(A003961(n+1))`
-/

namespace A346422.P6077834837741084878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n * A333769 (A003961 (n + 1)).toNat

end

end A346422.P6077834837741084878

namespace A346422

/-- `A246660(n)*A333769(A003961(n+1))` -/
def P6077834837741084878.Spec : Prop :=
  ∀ n, P6077834837741084878.a n = A346422 n

end A346422

/-! ## A346422.P3124017070744538682

`A246660(n)^A344651(A084938(n))`
-/

namespace A346422.P3124017070744538682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246660 n : ℚ) ^ (A344651 (A084938 n).toNat : ℤ)

end

end A346422.P3124017070744538682

namespace A346422

/-- `A246660(n)^A344651(A084938(n))` -/
def P3124017070744538682.Spec : Prop :=
  ∀ n, P3124017070744538682.a n = (A346422 n : ℚ)

end A346422

/-! ## A346422.P7702394871809916089

`A246660(n)^A124773(A035327(n))!`
-/

namespace A346422.P7702394871809916089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n ^ Nat.factorial (A124773 (A035327 n).toNat).toNat

end

end A346422.P7702394871809916089

namespace A346422

/-- `A246660(n)^A124773(A035327(n))!` -/
def P7702394871809916089.Spec : Prop :=
  ∀ n, P7702394871809916089.a n = A346422 n

end A346422

/-!
# A346424: Number of partitions of the 2n-multiset {0,...,0,1,2,...,n}.

The programs for A346424, there is no canonical definition to state claims against.
-/

/-! ## A346424.P3871267443114144596

`A346426(∑[4*n])`
-/

namespace A346424.P3871267443114144596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346424.P3871267443114144596

/-! ## A346424.P860945516844251847

`record[A003982(n)*A346426(n)]`
-/

namespace A346424.P860945516844251847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A346426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346424.P860945516844251847

/-! ## A346424.P480303065464368907

`record[gcd(A008482(n), A346426(n))]`
-/

namespace A346424.P480303065464368907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A346426 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346424.P480303065464368907

/-! ## A346424.P2469601134209626831

`A346426(A046092(n))+A025439(n)`
-/

namespace A346424.P2469601134209626831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A046092 n).toNat + A025439 n

end

end A346424.P2469601134209626831

/-! ## A346424.P15026301605772241027

`gcd(A151933(n), A346426(A046092(n)))`
-/

namespace A346424.P15026301605772241027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A346426 (A046092 n).toNat)

end

end A346424.P15026301605772241027

/-!
# A346425: a(n) is the greatest number k such that k! <= prime(n).

The programs for A346425, there is no canonical definition to state claims against.
-/

/-! ## A346425.P13253643108032459009

`round(sqrt(∑[8/(n+π)]))`
-/

namespace A346425.P13253643108032459009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 / ((n : ℝ) + Real.pi)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A346425.P13253643108032459009

/-! ## A346425.P2350965265448889686

`floor(∑[6/p?[floor(ϕ*n)]])`
-/

namespace A346425.P2350965265448889686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A346425.P2350965265448889686

/-! ## A346425.P16950634752952513856

`∑{digits}[11*(n+1)², dr(10^#)]`
-/

namespace A346425.P16950634752952513856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum

end

end A346425.P16950634752952513856

/-! ## A346425.P8374095312729553127

`∑[char[∑[C(n²+3, 2)]]]+2`
-/

namespace A346425.P8374095312729553127
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 3) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A346425.P8374095312729553127

/-! ## A346425.P11110935118716395118

`round(log(log(p?[2*n+1]))²)+2`
-/

namespace A346425.P11110935118716395118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)) ^ 2) + 2

end

end A346425.P11110935118716395118

/-! ## A346425.P5312030102855175134

`floor(∑[∏{p}[or(2, n), #]/(n+1)²])`
-/

namespace A346425.P5312030102855175134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A346425.P5312030102855175134

/-! ## A346425.P258955301732245056

`∑[char[3*C(2^n+1, 2)]]+2`
-/

namespace A346425.P258955301732245056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (2 ^ n + 1) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A346425.P258955301732245056

/-! ## A346425.P8457688493719852977

`floor(∑[1/n-a(n-1)/5])` with `a(0)=2`
-/

namespace A346425.P8457688493719852977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  1 / (n : ℚ) - f1 (n - 1) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A346425.P8457688493719852977

/-! ## A346425.P726824531169121576

`floor(log(A267117(n+2)))`
-/

namespace A346425.P726824531169121576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A267117 (n + 2) : ℝ)⌋

end

end A346425.P726824531169121576

/-! ## A346425.P17618983324436973472

`round(log(log(A000040(n+2)))²)+2`
-/

namespace A346425.P17618983324436973472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (A000040 (n + 2) : ℝ)) ^ 2) + 2

end

end A346425.P17618983324436973472

/-!
# A346426: Number A(n,k) of partitions of the (n+k)-multiset {0,...,0,1,2,...,k} with n 0's; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A346426, there is no canonical definition to state claims against.
-/

/-! ## A346426.P16807545499048625262

`A001055(A059268(n)*A096334(n))`
-/

namespace A346426.P16807545499048625262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A059268 n * A096334 n).toNat

end

end A346426.P16807545499048625262

/-! ## A346426.P2569310460544344149

`A001055(lcm(A059268(n), A096334(n)))`
-/

namespace A346426.P2569310460544344149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Int.lcm (A059268 n) (A096334 n))

end

end A346426.P2569310460544344149

/-!
# A346427: E.g.f.: -log(1 - log(1 + x) * exp(x)).

The programs for A346427, there is no canonical definition to state claims against.
-/

/-! ## A346427.P11215620444895762873

`2*A012278(n)-A009321(n)`
-/

namespace A346427.P11215620444895762873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012278 n - A009321 n

end

end A346427.P11215620444895762873

/-! ## A346427.P4214100715209107097

`A005843(A012278(n))-A009321(n)`
-/

namespace A346427.P4214100715209107097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A012278 n).toNat - A009321 n

end

end A346427.P4214100715209107097

/-!
# A346428: Total number of partitions of all n-multisets {0,...,0,1,2,...,j} for 0 <= j <= n.

The programs for A346428, there is no canonical definition to state claims against.
-/

/-! ## A346428.P4813301133611828484

`A309326(A011782(n))+A047970(n)`
-/

namespace A346428.P4813301133611828484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309326 (A011782 n).toNat + A047970 n

end

end A346428.P4813301133611828484

/-! ## A346428.P1137103491926499027

`∑[A099905(n^n)+1]`
-/

namespace A346428.P1137103491926499027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (n ^ n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346428.P1137103491926499027

/-!
# A346430: E.g.f.: 1 / (1 - x - Sum_{k>=2} prime(k-1) * x^k / k!).

The programs for A346430, there is no canonical definition to state claims against.
-/

/-! ## A346430.P16763807950997741779

`A324236(n)-A025456(A000166(n))`
-/

namespace A346430.P16763807950997741779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324236 n - A025456 (A000166 n).toNat

end

end A346430.P16763807950997741779

/-! ## A346430.P14010535274206084423

`A324236(n)-A025466(A001096(n))`
-/

namespace A346430.P14010535274206084423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324236 n - A025466 (A001096 n).toNat

end

end A346430.P14010535274206084423

/-! ## A346430.P13108229478594017383

`A324236(n)-A025466(A001710(n))`
-/

namespace A346430.P13108229478594017383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324236 n - A025466 (A001710 n).toNat

end

end A346430.P13108229478594017383

/-! ## A346430.P1286238028750783234

`A324236(n)-A151755(A035079(n))`
-/

namespace A346430.P1286238028750783234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324236 n - A151755 (A035079 n).toNat

end

end A346430.P1286238028750783234

/-!
# A346431: Primes p such that A007663(i) is divisible by Product_{k=1..7} A343763(k), where i is the index of p in A000040.

The programs for A346431, there is no canonical definition to state claims against.
-/

/-! ## A346431.P11976675435172187490

`p?[A048004(A326598(n))*A142159(n+2)]`
-/

namespace A346431.P11976675435172187490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (A326598 n).toNat * A142159 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346431.P11976675435172187490

/-! ## A346431.P1457593981918095638

`A142159(A077168(n)+1)`
-/

namespace A346431.P1457593981918095638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142159 (A077168 n + 1).toNat

end

end A346431.P1457593981918095638

/-! ## A346431.P16412447710417325023

`A142159(A187829(n+2))`
-/

namespace A346431.P16412447710417325023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142159 (A187829 (n + 2)).toNat

end

end A346431.P16412447710417325023

/-! ## A346431.P10062909132141279187

`A054977(A266462(n))*A142159(n+2)`
-/

namespace A346431.P10062909132141279187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A266462 n).toNat * A142159 (n + 2)

end

end A346431.P10062909132141279187

/-! ## A346431.P8385521751358622311

`A142159(A077168(n+1))`
-/

namespace A346431.P8385521751358622311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142159 (A077168 (n + 1)).toNat

end

end A346431.P8385521751358622311

/-!
# A346432: a(0) = 1; a(n) = n! * Sum_{k=0..n-1} (n-k+1) * a(k) / k!.

The programs for A346432, the canonical program `A346432.P9588719984739272964` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346432 has offset 0).

The definition of A346432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346432.P9588719984739272964

`n!*A003480(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346432

/-- `n!*A003480(n)` -/
def P9588719984739272964.Spec : Prop :=
  ∀ n, P9588719984739272964.a n = A346432 n

theorem P9588719984739272964.correct : P9588719984739272964.Spec := by
  intro n
  simp only [A346432]

end A346432

/-! ## A346432.P2734045893054816405

`4*n*a(n-1)-2*n*(n-1)*a(n-2)` with `a(0)=1, a(1)=2, a(2)=14`
-/

namespace A346432.P2734045893054816405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 14] fun n a =>
  (4 * n : ℤ) * a (n - 1) - (2 * n : ℤ) * ((n : ℤ) - 1) * a (n - 2)

end

end A346432.P2734045893054816405

namespace A346432

/-- `4*n*a(n-1)-2*n*(n-1)*a(n-2)` -/
def P2734045893054816405.Spec : Prop :=
  ∀ n, P2734045893054816405.a n = A346432 n

end A346432

/-! ## A346432.P14168792763960103139

`A000142(n)*A003480(n)`
-/

namespace A346432.P14168792763960103139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003480 n

end

end A346432.P14168792763960103139

namespace A346432

/-- `A000142(n)*A003480(n)` -/
def P14168792763960103139.Spec : Prop :=
  ∀ n, P14168792763960103139.a n = A346432 n

end A346432

/-! ## A346432.P7446537825699029306

`abs(A003480(n)*A133942(n))`
-/

namespace A346432.P7446537825699029306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003480 n * A133942 n|

end

end A346432.P7446537825699029306

namespace A346432

/-- `abs(A003480(n)*A133942(n))` -/
def P7446537825699029306.Spec : Prop :=
  ∀ n, P7446537825699029306.a n = A346432 n

end A346432

/-! ## A346432.P15402341635974335094

`A003480(n)*A094587(∑[n])`
-/

namespace A346432.P15402341635974335094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n * A094587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346432.P15402341635974335094

namespace A346432

/-- `A003480(n)*A094587(∑[n])` -/
def P15402341635974335094.Spec : Prop :=
  ∀ n, P15402341635974335094.a n = A346432 n

end A346432

/-! ## A346432.P6499928145792508879

`A003480(n)*A008279(A000096(n))`
-/

namespace A346432.P6499928145792508879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n * A008279 (A000096 n).toNat

end

end A346432.P6499928145792508879

namespace A346432

/-- `A003480(n)*A008279(A000096(n))` -/
def P6499928145792508879.Spec : Prop :=
  ∀ n, P6499928145792508879.a n = A346432 n

end A346432

/-! ## A346432.P14973658540975662664

`A003480(n)*A161121(A000982(n))`
-/

namespace A346432.P14973658540975662664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n * A161121 (A000982 n).toNat

end

end A346432.P14973658540975662664

namespace A346432

/-- `A003480(n)*A161121(A000982(n))` -/
def P14973658540975662664.Spec : Prop :=
  ∀ n, P14973658540975662664.a n = A346432 n

end A346432

/-!
# A346433: E.g.f.: 1 / (2 - exp(2*(exp(x) - 1))).

The programs for A346433, there is no canonical definition to state claims against.
-/

/-! ## A346433.P12610521516756474503

`A004524(lcm(A276625(n+1), A375715(n+3)))`
-/

namespace A346433.P12610521516756474503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lcm (A276625 (n + 1)) (A375715 (n + 3)))

end

end A346433.P12610521516756474503

/-!
# A346434: Triangle read by rows of numbers with n 1's and n 0's in their representation in base of Fibonacci numbers (A210619), written as those 1's and 0's.

The programs for A346434, there is no canonical definition to state claims against.
-/

/-! ## A346434.P17052831979843508113

`A014417(A210619(n+1))`
-/

namespace A346434.P17052831979843508113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A210619 (n + 1)).toNat

end

end A346434.P17052831979843508113

/-! ## A346434.P4909059006054078361

`record[A215023(n+1)]`
-/

namespace A346434.P4909059006054078361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346434.P4909059006054078361

/-! ## A346434.P14364946827522399574

`A014417(record[A057336(2*(n+1))])`
-/

namespace A346434.P14364946827522399574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346434.P14364946827522399574

/-! ## A346434.P13194224952893552822

`A014417(∑[A035214(n)*A328082(n+1)])`
-/

namespace A346434.P13194224952893552822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A328082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346434.P13194224952893552822

/-! ## A346434.P4109475567844222123

`∩[A071925(n+1), A014417(n)]`
-/

namespace A346434.P4109475567844222123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346434.P4109475567844222123

/-!
# A346447: Positive integers k such that the positive divisors of k <= sqrt(k) form a linear recurrence of order at most 2.

The programs for A346447, there is no canonical definition to state claims against.
-/

/-! ## A346447.P2199547652827432044

`comp[A348732(record[xor(3, n)])]`
-/

namespace A346447.P2199547652827432044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348732 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346447.P2199547652827432044

/-! ## A346447.P3184827440615041461

`comp[4*comp[A167211(n+1)]]`
-/

namespace A346447.P3184827440615041461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A346447.P3184827440615041461

/-! ## A346447.P7662279180211684059

`comp[or(3, A018068(n)+31)]+1`
-/

namespace A346447.P7662279180211684059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A018068 n + 31)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A346447.P7662279180211684059

/-! ## A346447.P88661287808141658

`comp[char[∑[n]]*A083248(n+1)]`
-/

namespace A346447.P88661287808141658
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A083248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346447.P88661287808141658

/-! ## A346447.P1703859799718221444

`comp[4*(n+8)*A173438(n+1)]`
-/

namespace A346447.P1703859799718221444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 8) : ℤ) * A173438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346447.P1703859799718221444

/-! ## A346447.P9416014897857116871

`comp[∑{e}[n+1, #]*A005101(n+5)]`
-/

namespace A346447.P9416014897857116871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) * A005101 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346447.P9416014897857116871

/-! ## A346447.P16962114114837394470

`∪[A317492(n+1), A007989(n)]`
-/

namespace A346447.P16962114114837394470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346447.P16962114114837394470

/-! ## A346447.P12115073916662147389

`comp[A004767(A000040(n+1)+6)]+1`
-/

namespace A346447.P12115073916662147389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A000040 (n + 1) + 6).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A346447.P12115073916662147389

/-! ## A346447.P17250835316996799860

`lt[A001222(n+1), A108893(n+1)]+1`
-/

namespace A346447.P17250835316996799860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A346447.P17250835316996799860

/-! ## A346447.P13381565081794999162

`comp[A000010(A050214(n+1))-24]`
-/

namespace A346447.P13381565081794999162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050214 (n + 1)).toNat - 24

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346447.P13381565081794999162

/-!
# A346448: Number of nontrivial disconnected induced K_{1,3}-saturated graphs on n vertices.

The programs for A346448, there is no canonical definition to state claims against.
-/

/-! ## A346448.P4806512627789318300

`Δ[A016283(∑[A037815(n+1)])]`
-/

namespace A346448.P4806512627789318300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346448.P4806512627789318300

/-! ## A346448.P11142975080687628442

`Δ[A016283(∑[A161262(n+1)])]`
-/

namespace A346448.P11142975080687628442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346448.P11142975080687628442

/-! ## A346448.P1022692307638835907

`Δ[A016283(∑[A165927(n+1)])]`
-/

namespace A346448.P1022692307638835907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165927 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346448.P1022692307638835907

/-! ## A346448.P10600689133489501405

`floor(A190976(n)/A190944(3*n+1))`
-/

namespace A346448.P10600689133489501405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190976 n : ℚ) / (A190944 (3 * n + 1) : ℚ)⌋

end

end A346448.P10600689133489501405

/-! ## A346448.P1572683432392304828

`A122304(C(gcd(n+2, C(8, n²)), 10))`
-/

namespace A346448.P1572683432392304828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122304 (Nat.choose (Nat.gcd (n + 2) (Nat.choose 8 (n ^ 2))) 10)

end

end A346448.P1572683432392304828

/-!
# A346452: a(n) = [x^n] Product_{k>=1} (1 + n^(k-1)*x^k) / (1 - n^(k-1)*x^k).

The programs for A346452, there is no canonical definition to state claims against.
-/

/-! ## A346452.P3247106032764455416

`A337026(n)-A319047(A338679(n))`
-/

namespace A346452.P3247106032764455416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337026 n - A319047 (A338679 n).toNat

end

end A346452.P3247106032764455416

/-! ## A346452.P3411068714792046434

`A332713(A091893(n+1)*A231172(n))`
-/

namespace A346452.P3411068714792046434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332713 (A091893 (n + 1) * A231172 n).toNat

end

end A346452.P3411068714792046434

/-!
# A346453: The array in A054238 read by upward antidiagonals.

The programs for A346453, the canonical program `A346453.P9791944958565672901` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346453 has offset 0).

The definition of A346453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346453.P868745644014808842

`A163356(A163359(n))`
-/

namespace A346453.P868745644014808842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163359 n).toNat

end

end A346453.P868745644014808842

namespace A346453

/-- `A163356(A163359(n))` -/
def P868745644014808842.Spec : Prop :=
  ∀ n, P868745644014808842.a n = A346453 n

end A346453

/-! ## A346453.P15186187791337522663

`A163356(A163363(n+1)-1)`
-/

namespace A346453.P15186187791337522663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163363 (n + 1) - 1).toNat

end

end A346453.P15186187791337522663

namespace A346453

/-- `A163356(A163363(n+1)-1)` -/
def P15186187791337522663.Spec : Prop :=
  ∀ n, P15186187791337522663.a n = A346453 n

end A346453

/-! ## A346453.P9791944958565672901

`A000695(col(n))+2*A000695(row(n)-col(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A346453

/-- `A000695(col(n))+2*A000695(row(n)-col(n))` -/
def P9791944958565672901.Spec : Prop :=
  ∀ n, P9791944958565672901.a n = A346453 n

theorem P9791944958565672901.correct : P9791944958565672901.Spec := by
  intro n
  simp only [A346453]

end A346453

/-! ## A346453.P2022352713087367336

`A054238(∑[2*n]%comp[∑[n]])`
-/

namespace A346453.P2022352713087367336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A346453.P2022352713087367336

namespace A346453

/-- `A054238(∑[2*n]%comp[∑[n]])` -/
def P2022352713087367336.Spec : Prop :=
  ∀ n, P2022352713087367336.a n = A346453 n

end A346453

/-! ## A346453.P15983136250989761562

`A054238(∑[char[∑[n]]]²-(n+1))`
-/

namespace A346453.P15983136250989761562
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A346453.P15983136250989761562

namespace A346453

/-- `A054238(∑[char[∑[n]]]²-(n+1))` -/
def P15983136250989761562.Spec : Prop :=
  ∀ n, P15983136250989761562.a n = A346453 n

end A346453

/-! ## A346453.P4910009161394504223

`A057300(A054238(n))`
-/

namespace A346453.P4910009161394504223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A054238 n).toNat

end

end A346453.P4910009161394504223

namespace A346453

/-- `A057300(A054238(n))` -/
def P4910009161394504223.Spec : Prop :=
  ∀ n, P4910009161394504223.a n = A346453 n

end A346453

/-! ## A346453.P11053408819358225722

`A163486(A147995(n))`
-/

namespace A346453.P11053408819358225722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163486 (A147995 n).toNat

end

end A346453.P11053408819358225722

namespace A346453

/-- `A163486(A147995(n))` -/
def P11053408819358225722.Spec : Prop :=
  ∀ n, P11053408819358225722.a n = A346453 n

end A346453

/-! ## A346453.P15044925598118363852

`A064707(A163235(n))`
-/

namespace A346453.P15044925598118363852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A163235 n).toNat

end

end A346453.P15044925598118363852

namespace A346453

/-- `A064707(A163235(n))` -/
def P15044925598118363852.Spec : Prop :=
  ∀ n, P15044925598118363852.a n = A346453 n

end A346453

/-! ## A346453.P10331088710079799743

`A057300(A163486(A163545(n)))`
-/

namespace A346453.P10331088710079799743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A163486 (A163545 n).toNat).toNat

end

end A346453.P10331088710079799743

namespace A346453

/-- `A057300(A163486(A163545(n)))` -/
def P10331088710079799743.Spec : Prop :=
  ∀ n, P10331088710079799743.a n = A346453 n

end A346453

/-! ## A346453.P14613972000434612946

`A163486(A163545(A061579(n)))`
-/

namespace A346453.P14613972000434612946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163486 (A163545 (A061579 n).toNat).toNat

end

end A346453.P14613972000434612946

namespace A346453

/-- `A163486(A163545(A061579(n)))` -/
def P14613972000434612946.Spec : Prop :=
  ∀ n, P14613972000434612946.a n = A346453 n

end A346453

/-! ## A346453.P11307458986527894961

`A057300(A006068(A006068(A163233(n))))`
-/

namespace A346453.P11307458986527894961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A006068 (A006068 (A163233 n).toNat).toNat).toNat

end

end A346453.P11307458986527894961

namespace A346453

/-- `A057300(A006068(A006068(A163233(n))))` -/
def P11307458986527894961.Spec : Prop :=
  ∀ n, P11307458986527894961.a n = A346453 n

end A346453

/-!
# A346454: a(n) = [x^n] Product_{k>=1} (1 + n^(k+1)*x^k) / (1 - n^(k+1)*x^k).

The programs for A346454, there is no canonical definition to state claims against.
-/

/-! ## A346454.P7860120338395525751

`n^n*A292419(n)`
-/

namespace A346454.P7860120338395525751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A292419 n

end

end A346454.P7860120338395525751

/-! ## A346454.P16341145453843786702

`A292305(n)*A292419(n)/A000009(n)`
-/

namespace A346454.P16341145453843786702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292305 n * A292419 n : ℚ) / (A000009 n : ℚ)

end

end A346454.P16341145453843786702

/-! ## A346454.P14578754318967386270

`A292419(n)/A291698(n)*A344094(n)`
-/

namespace A346454.P14578754318967386270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292419 n : ℚ) / (A291698 n : ℚ) * (A344094 n : ℚ)

end

end A346454.P14578754318967386270

/-!
# A346458: Numbers with hexadecimal representation A, AB, ABC, ..., ABCDEFA, ABCDEFAB, ...

The programs for A346458, the canonical program `A346458.P12229068723067805558` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346458 has offset 1).

The definition of A346458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346458.P12229068723067805558

`16*a(n-1)+10+n%6` with `a(0)=10`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346458

/-- `16*a(n-1)+10+n%6` -/
def P12229068723067805558.Spec : Prop :=
  ∀ n, (P12229068723067805558.a n : ℤ) = A346458 (n + 1)

theorem P12229068723067805558.correct : P12229068723067805558.Spec := by
  intro n
  simp only [A346458, Nat.add_sub_cancel]

end A346458

/-! ## A346458.P482409217914373926

`ogf((10+11x+12x^2+13x^3+14x^4+15x^5)/(1-16x-x^6+16x^7))`
-/

namespace A346458.P482409217914373926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 11, 12, 13, 14, 15] [1, -16, 0, 0, 0, 0, -1, 16] n

end

end A346458.P482409217914373926

namespace A346458

/-- `ogf((10+11x+12x^2+13x^3+14x^4+15x^5)/(1-16x-x^6+16x^7))` -/
def P482409217914373926.Spec : Prop :=
  ∀ n, P482409217914373926.a n = A346458 (n + 1)

end A346458

/-!
# A346459: Triangle read by rows: T(n,k) = 0 if all positive integers can be colored with two colors without any positive integer x being the same color as n*x or k*x; otherwise, T(n,k) = 1 (for 2 <= k <= n).

The programs for A346459, there is no canonical definition to state claims against.
-/

/-! ## A346459.P4776802033021667177

`char[or(n, 29-n^3)]`
-/

namespace A346459.P4776802033021667177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (29 - (n ^ 3 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A346459.P4776802033021667177

/-! ## A346459.P2353794235335631899

`char[p?[∑[or(6, n-2)]]]`
-/

namespace A346459.P2353794235335631899
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A346459.P2353794235335631899

/-! ## A346459.P7241507237709188330

`char[p?[a(n-2)+13]]` with `a(0)=3, a(1)=10`
-/

namespace A346459.P7241507237709188330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f2 =>
  f2 (n - 2) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A346459.P7241507237709188330

/-! ## A346459.P4681816862697903016

`char[∑[n*a(n-2)]]` with `a(0)=3, a(1)=20`
-/

namespace A346459.P4681816862697903016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 20] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A346459.P4681816862697903016

/-! ## A346459.P6178757488036698501

`char[p?[13*n-a(n-1)]]` with `a(0)=3`
-/

namespace A346459.P6178757488036698501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  (13 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A346459.P6178757488036698501

/-! ## A346459.P12065425999886978598

`and(1, char[n*a(n-1)])` with `a(0)=3, a(1)=23, a(2)=29`
-/

namespace A346459.P12065425999886978598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 23, 29] fun n f1 =>
  n * f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A346459.P12065425999886978598

/-! ## A346459.P664057142992312692

`char[∑[-a(n-1)]+(n+1)^3]` with `a(0)=2, a(1)=13`
-/

namespace A346459.P664057142992312692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 13] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n + 1) ^ 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A346459.P664057142992312692

/-! ## A346459.P10856074983460842936

`char[p?[A153834(n)]]`
-/

namespace A346459.P10856074983460842936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153834 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A346459.P10856074983460842936

/-! ## A346459.P2561792686040672958

`char[A260128(n+2)]`
-/

namespace A346459.P2561792686040672958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260128 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A346459.P2561792686040672958

/-! ## A346459.P16537039796934648165

`char[A386046(n+2)]`
-/

namespace A346459.P16537039796934648165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386046 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A346459.P16537039796934648165

/-!
# A346461: a(n) = 2^A042965(n+1).

The programs for A346461, the canonical program `A346461.P5413871630571115482` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346461 has offset 1).

The definition of A346461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346461.P5413871630571115482

`16*a(n-3)` with `a(0)=2, a(1)=8, a(2)=16`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346461

/-- `16*a(n-3)` -/
def P5413871630571115482.Spec : Prop :=
  ∀ n, (P5413871630571115482.a n : ℤ) = A346461 (n + 1)

theorem P5413871630571115482.correct : P5413871630571115482.Spec := by
  intro n
  simp only [A346461, Nat.add_sub_cancel]

end A346461

/-! ## A346461.P14763334846644012632

`2^floor((4*(n+1)+1)/3)`
-/

namespace A346461.P14763334846644012632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(4 * (n + 1) + 1 : ℚ) / 3⌋ : ℤ)

end

end A346461.P14763334846644012632

namespace A346461

/-- `2^floor((4*(n+1)+1)/3)` -/
def P14763334846644012632.Spec : Prop :=
  ∀ n, P14763334846644012632.a n = (A346461 (n + 1) : ℚ)

end A346461

/-! ## A346461.P12613087569192969576

`2^A042965(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346461.P12613087569192969576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A042965 (n + 2) : ℤ)

end

end A346461.P12613087569192969576

namespace A346461

/-- `2^A042965(n+2)` -/
def P12613087569192969576.Spec : Prop :=
  ∀ n, P12613087569192969576.a n = (A346461 (n + 1) : ℚ)

end A346461

/-! ## A346461.P13772046933282951897

`ogf((2+8x+16x^2)/(1-16x^3))`
-/

namespace A346461.P13772046933282951897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, 16] [1, 0, 0, -16] n

end

end A346461.P13772046933282951897

namespace A346461

/-- `ogf((2+8x+16x^2)/(1-16x^3))` -/
def P13772046933282951897.Spec : Prop :=
  ∀ n, P13772046933282951897.a n = A346461 (n + 1)

end A346461

/-! ## A346461.P12216743280929163392

`∏[5-gcd(3, ∑[n])]`
-/

namespace A346461.P12216743280929163392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P12216743280929163392

namespace A346461

/-- `∏[5-gcd(3, ∑[n])]` -/
def P12216743280929163392.Spec : Prop :=
  ∀ n, P12216743280929163392.a n = A346461 (n + 1)

end A346461

/-! ## A346461.P10599291914886843331

`∏[4/gcd(2, n%3)]`
-/

namespace A346461.P10599291914886843331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 (n % 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P10599291914886843331

namespace A346461

/-- `∏[4/gcd(2, n%3)]` -/
def P10599291914886843331.Spec : Prop :=
  ∀ n, P10599291914886843331.a n = (A346461 (n + 1) : ℚ)

end A346461

/-! ## A346461.P6558826500021306287

`∏[gcd(6, Δ[n²])+1]`
-/

namespace A346461.P6558826500021306287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P6558826500021306287

namespace A346461

/-- `∏[gcd(6, Δ[n²])+1]` -/
def P6558826500021306287.Spec : Prop :=
  ∀ n, (P6558826500021306287.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P13828073381991715256

`∏[abs(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2`
-/

namespace A346461.P13828073381991715256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P13828073381991715256

namespace A346461

/-- `∏[abs(a(n-3))]` -/
def P13828073381991715256.Spec : Prop :=
  ∀ n, (P13828073381991715256.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P11579225868425959574

`∏[dr(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2`
-/

namespace A346461.P11579225868425959574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P11579225868425959574

namespace A346461

/-- `∏[dr(a(n-3))]` -/
def P11579225868425959574.Spec : Prop :=
  ∀ n, (P11579225868425959574.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P5699095306143520834

`∏[floor(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A346461.P5699095306143520834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P5699095306143520834

namespace A346461

/-- `∏[floor(a(n-3))]` -/
def P5699095306143520834.Spec : Prop :=
  ∀ n, (P5699095306143520834.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P15630792460186003000

`∏[ceil(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A346461.P15630792460186003000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P15630792460186003000

namespace A346461

/-- `∏[ceil(a(n-3))]` -/
def P15630792460186003000.Spec : Prop :=
  ∀ n, (P15630792460186003000.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P12963006581834520668

`∏[round(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A346461.P12963006581834520668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P12963006581834520668

namespace A346461

/-- `∏[round(a(n-3))]` -/
def P12963006581834520668.Spec : Prop :=
  ∀ n, (P12963006581834520668.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P6389117452127080529

`∏[2*((n+1)%3)!]`
-/

namespace A346461.P6389117452127080529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial ((n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P6389117452127080529

namespace A346461

/-- `∏[2*((n+1)%3)!]` -/
def P6389117452127080529.Spec : Prop :=
  ∀ n, (P6389117452127080529.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P831600409348198568

`2^∑[((2*n)%3)!]`
-/

namespace A346461.P831600409348198568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346461.P831600409348198568

namespace A346461

/-- `2^∑[((2*n)%3)!]` -/
def P831600409348198568.Spec : Prop :=
  ∀ n, (P831600409348198568.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P5677500627044281778

`∏[(n²+n)%3+2]`
-/

namespace A346461.P5677500627044281778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) % 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P5677500627044281778

namespace A346461

/-- `∏[(n²+n)%3+2]` -/
def P5677500627044281778.Spec : Prop :=
  ∀ n, (P5677500627044281778.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P12051163741085385628

`record[2^gcd(n+1, ∑[n]²)]`
-/

namespace A346461.P12051163741085385628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.gcd (n + 1) ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346461.P12051163741085385628

namespace A346461

/-- `record[2^gcd(n+1, ∑[n]²)]` -/
def P12051163741085385628.Spec : Prop :=
  ∀ n, (P12051163741085385628.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P17713840609738801765

`∏[Δ[record[and(n+2, n-1)]]]`
-/

namespace A346461.P17713840609738801765
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P17713840609738801765

namespace A346461

/-- `∏[Δ[record[and(n+2, n-1)]]]` -/
def P17713840609738801765.Spec : Prop :=
  ∀ n, P17713840609738801765.a n = A346461 (n + 1)

end A346461

/-! ## A346461.P17878956194470815212

`floor(2^∑[floor(a(n-3))])` with `a(0)=1, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A346461.P17878956194470815212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346461.P17878956194470815212

namespace A346461

/-- `floor(2^∑[floor(a(n-3))])` -/
def P17878956194470815212.Spec : Prop :=
  ∀ n, (P17878956194470815212.a n : ℤ) = A346461 (n + 1)

end A346461

/-! ## A346461.P6556113679695363301

`∏[5-lcm(3, n+2)/(n+2)]`
-/

namespace A346461.P6556113679695363301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 - (Nat.lcm 3 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A346461.P6556113679695363301

namespace A346461

/-- `∏[5-lcm(3, n+2)/(n+2)]` -/
def P6556113679695363301.Spec : Prop :=
  ∀ n, P6556113679695363301.a n = (A346461 (n + 1) : ℚ)

end A346461

/-!
# A346463: a(n) = 6 * GaussBinomial(2*n, 2, 2) / denominator(Bernoulli(2*n, 1)).

The programs for A346463, there is no canonical definition to state claims against.
-/

/-! ## A346463.P5447220600733621762

`(A081294(n)-1)*A090648(n)`
-/

namespace A346463.P5447220600733621762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081294 n - 1) * A090648 n

end

end A346463.P5447220600733621762

/-! ## A346463.P14724847045092308606

`A090648(n)*A140252(2*n)`
-/

namespace A346463.P14724847045092308606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090648 n * A140252 (2 * n)

end

end A346463.P14724847045092308606

/-! ## A346463.P1328021601364977427

`A000225(log2(A081294(n)))*A090648(n)`
-/

namespace A346463.P1328021601364977427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway (Real.logb 2 (A081294 n : ℝ))).toNat * A090648 n

end

end A346463.P1328021601364977427

/-! ## A346463.P322815826872552253

`(A007583(n)-A039301(n))*A090648(n)`
-/

namespace A346463.P322815826872552253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007583 n - A039301 n) * A090648 n

end

end A346463.P322815826872552253

/-! ## A346463.P2327434990078609331

`A346464(n)/A000367(n)`
-/

namespace A346463.P2327434990078609331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346464 n : ℚ) / (A000367 n : ℚ)

end

end A346463.P2327434990078609331

/-!
# A346464: a(n) = 6 * GaussBinomial(2*n, 2, 2) * Bernoulli(2*n, 1).

The programs for A346464, there is no canonical definition to state claims against.
-/

/-! ## A346464.P4178852820083892188

`A000367(n)*A346463(n)`
-/

namespace A346464.P4178852820083892188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n * A346463 n

end

end A346464.P4178852820083892188

/-! ## A346464.P17818183062108109898

`-(A001896(n)*A090648(n))`
-/

namespace A346464.P17818183062108109898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001896 n * A090648 n)

end

end A346464.P17818183062108109898

/-! ## A346464.P3014530817830986416

`-(A140252(2*n)*A226158(2*n))`
-/

namespace A346464.P3014530817830986416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A140252 (2 * n) * A226158 (2 * n))

end

end A346464.P3014530817830986416

/-! ## A346464.P4061099292885042618

`-(A140252(2*n)*A230324(2*n))`
-/

namespace A346464.P4061099292885042618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A140252 (2 * n) * A230324 (2 * n))

end

end A346464.P4061099292885042618

/-! ## A346464.P12835340856873103599

`(A154589(2*n)+1)*A226158(2*n)`
-/

namespace A346464.P12835340856873103599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154589 (2 * n) + 1) * A226158 (2 * n)

end

end A346464.P12835340856873103599

/-!
# A346465: Numbers k such that (4^k - 2)*(4^k - 1)/Clausen(2*k, 1) is not squarefree, where Clausen(n, m) = A160014(n, m).

The programs for A346465, there is no canonical definition to state claims against.
-/

/-! ## A346465.P16103012808552278787

`lt[1, A346182(n+1)]+1`
-/

namespace A346465.P16103012808552278787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A346465.P16103012808552278787

/-! ## A346465.P10457131429551261957

`lt[1, A346182(A028310(n))]`
-/

namespace A346465.P10457131429551261957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346182 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346465.P10457131429551261957

/-! ## A346465.P14144124897009022006

`lt[1, A346182(A233583(n+1))]`
-/

namespace A346465.P14144124897009022006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346182 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346465.P14144124897009022006

/-! ## A346465.P13699265071557712321

`eq[A000007(n+3), A322583(A346182(n+1))]+1`
-/

namespace A346465.P13699265071557712321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A346182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346465.P13699265071557712321

/-!
# A346466: The least common multiple of all divisors d of n-1 such that d+1 is a prime divisor of n; a(1) = 1.

The programs for A346466, there is no canonical definition to state claims against.
-/

/-! ## A346466.P4203496936394589254

`A002322(A326584(n+1))`
-/

namespace A346466.P4203496936394589254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A326584 (n + 1)).toNat

end

end A346466.P4203496936394589254

/-! ## A346466.P1746780508819938451

`A002322(gcd(n+1, A027642(n)))`
-/

namespace A346466.P1746780508819938451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (Int.gcd (n + 1 : ℤ) (A027642 n))

end

end A346466.P1746780508819938451

/-! ## A346466.P1128884191702406121

`A002322((n+1)/A326478(n+1))`
-/

namespace A346466.P1128884191702406121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A326478 (n + 1) : ℚ))).toNat

end

end A346466.P1128884191702406121

/-! ## A346466.P1860297870782494176

`A346467(n+1)/A346481(n+1)`
-/

namespace A346466.P1860297870782494176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346467 (n + 1) : ℚ) / (A346481 (n + 1) : ℚ)

end

end A346466.P1860297870782494176

/-! ## A346466.P10709437629252330635

`A002322(A027642(n)/A050932(n))`
-/

namespace A346466.P10709437629252330635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A027642 n : ℚ) / (A050932 n : ℚ))).toNat

end

end A346466.P10709437629252330635

/-! ## A346466.P17174513155719416558

`A002322(gcd(A081346(n), A141459(n)))`
-/

namespace A346466.P17174513155719416558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (Int.gcd (A081346 n) (A141459 n))

end

end A346466.P17174513155719416558

/-! ## A346466.P17854906717283457253

`A011773(gcd(A109613(n), A141056(n)))`
-/

namespace A346466.P17854906717283457253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (Int.gcd (A109613 n) (A141056 n))

end

end A346466.P17854906717283457253

/-! ## A346466.P13174465795287993217

`A002322(A226040(2*n+1)/A226040(n))`
-/

namespace A346466.P13174465795287993217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A226040 (2 * n + 1) : ℚ) / (A226040 n : ℚ))).toNat

end

end A346466.P13174465795287993217

/-!
# A346467: a(n) is the least common multiple of the divisors d of n-1 such that d+1 is prime; a(1) = 1.

The programs for A346467, there is no canonical definition to state claims against.
-/

/-! ## A346467.P9301501273754660718

`A346466(n+1)*A346481(n+1)`
-/

namespace A346467.P9301501273754660718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346466 (n + 1) * A346481 (n + 1)

end

end A346467.P9301501273754660718

/-! ## A346467.P3960458399328164836

`A002322(A027642(n))`
-/

namespace A346467.P3960458399328164836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A027642 n).toNat

end

end A346467.P3960458399328164836

/-! ## A346467.P8434665371378736302

`n/A346468(n*A346468(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A346467.P8434665371378736302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A346468 ((n : ℤ) * A346468 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat + 1).toNat : ℚ)

end

end A346467.P8434665371378736302

/-! ## A346467.P5587028523826179842

`n/A346468(n/A346468(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A346467.P5587028523826179842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A346468 (SequenceMachineLib.roundAway ((n : ℚ) / (A346468 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) + 1)).toNat : ℚ)

end

end A346467.P5587028523826179842

/-! ## A346467.P13754612250335082389

`A004277(n)/A004277(A346468(n+1))`
-/

namespace A346467.P13754612250335082389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A004277 (A346468 (n + 1)).toNat : ℚ)

end

end A346467.P13754612250335082389

/-! ## A346467.P615040527901112720

`A008458(n)/A008458(A346468(n+1))`
-/

namespace A346467.P615040527901112720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008458 (A346468 (n + 1)).toNat : ℚ)

end

end A346467.P615040527901112720

/-! ## A346467.P10920342431851945033

`A008486(n)/A008486(A346468(n+1))`
-/

namespace A346467.P10920342431851945033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A008486 (A346468 (n + 1)).toNat : ℚ)

end

end A346467.P10920342431851945033

/-! ## A346467.P13545314918239857750

`A008574(n)/A008574(A346468(n+1))`
-/

namespace A346467.P13545314918239857750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℚ) / (A008574 (A346468 (n + 1)).toNat : ℚ)

end

end A346467.P13545314918239857750

/-! ## A346467.P16843791216345719129

`A008706(n)/A008706(A346468(n+1))`
-/

namespace A346467.P16843791216345719129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008706 n : ℚ) / (A008706 (A346468 (n + 1)).toNat : ℚ)

end

end A346467.P16843791216345719129

/-! ## A346467.P13069525449649500000

`A022144(n)/A022144(A346468(n+1))`
-/

namespace A346467.P13069525449649500000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 n : ℚ) / (A022144 (A346468 (n + 1)).toNat : ℚ)

end

end A346467.P13069525449649500000

/-!
# A346468: a(n) = (n-1) / A346467(n).

The programs for A346468, there is no canonical definition to state claims against.
-/

/-! ## A346468.P17702883407720168853

`n/A346467(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346468.P17702883407720168853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A346467 (n + 1) : ℚ)

end

end A346468.P17702883407720168853

/-! ## A346468.P13676011007911050491

`n/A002322(A027642(n))`
-/

namespace A346468.P13676011007911050491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A002322 (A027642 n).toNat : ℚ)

end

end A346468.P13676011007911050491

/-! ## A346468.P1593047217304488425

`n*A346467(n+1)^A105812(n)`
-/

namespace A346468.P1593047217304488425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (A346467 (n + 1) : ℚ) ^ (A105812 n : ℤ)

end

end A346468.P1593047217304488425

/-! ## A346468.P6428958674253385109

`n/(A346466(n+1)*A346481(n+1))`
-/

namespace A346468.P6428958674253385109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A346466 (n + 1) * A346481 (n + 1) : ℚ)

end

end A346468.P6428958674253385109

/-! ## A346468.P12899497766008530825

`val(A000079(n), A000079(A346467(n+1)))`
-/

namespace A346468.P12899497766008530825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A346467 (n + 1)).toNat).toNat

end

end A346468.P12899497766008530825

/-! ## A346468.P1691092500371041306

`val(A171559(n), A155559(A346467(n+1)))`
-/

namespace A346468.P1691092500371041306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A171559 n).toNat (A155559 (A346467 (n + 1)).toNat).toNat

end

end A346468.P1691092500371041306

/-! ## A346468.P11304217009821189470

`val(A000244(n), A000244(A346467(n+1)))`
-/

namespace A346468.P11304217009821189470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000244 n).toNat (A000244 (A346467 (n + 1)).toNat).toNat

end

end A346468.P11304217009821189470

/-!
# A346469: a(n) = A340070(A276086(n)).

The programs for A346469, there is no canonical definition to state claims against.
-/

/-! ## A346469.P7674222857469369026

`gcd(A327860(n), A329029(n))`
-/

namespace A346469.P7674222857469369026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327860 n) (A329029 n)

end

end A346469.P7674222857469369026

/-! ## A346469.P13191900886107418010

`A340070(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346469.P13191900886107418010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (A276086 n).toNat

end

end A346469.P13191900886107418010

/-! ## A346469.P6746644542418999576

`A327860(n)/A345930(A028310(n))`
-/

namespace A346469.P6746644542418999576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (A345930 (A028310 n).toNat : ℚ)

end

end A346469.P6746644542418999576

/-! ## A346469.P15005622348642726936

`gcd(A329031(n), A329032(n))*A328572(n)`
-/

namespace A346469.P15005622348642726936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A329031 n) (A329032 n) : ℤ) * A328572 n

end

end A346469.P15005622348642726936

/-! ## A346469.P4691330086672236605

`A327860(n)/A345930(A123108(2*n))`
-/

namespace A346469.P4691330086672236605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (A345930 (A123108 (2 * n)).toNat : ℚ)

end

end A346469.P4691330086672236605

/-! ## A346469.P8841945631135279867

`A327860(n)/A345930(A233583(n+1))`
-/

namespace A346469.P8841945631135279867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (A345930 (A233583 (n + 1)).toNat : ℚ)

end

end A346469.P8841945631135279867

/-! ## A346469.P12326029368282924777

`A340070(A351225(n)+n)`
-/

namespace A346469.P12326029368282924777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (A351225 n + (n : ℤ)).toNat

end

end A346469.P12326029368282924777

/-! ## A346469.P6759705929518142790

`A340070(A328580(n)+A328476(n))`
-/

namespace A346469.P6759705929518142790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (A328580 n + A328476 n).toNat

end

end A346469.P6759705929518142790

/-! ## A346469.P2172098368726551402

`A340070(A328475(n)*A328580(n))`
-/

namespace A346469.P2172098368726551402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (A328475 n * A328580 n).toNat

end

end A346469.P2172098368726551402

/-! ## A346469.P11006956695314846535

`A340070(A328571(n)*A328572(n))`
-/

namespace A346469.P11006956695314846535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (A328571 n * A328572 n).toNat

end

end A346469.P11006956695314846535

/-!
# A346470: a(n) = psi(A276086(n)), where psi is Dedekind psi function A001615, and A276086 is the prime product form of primorial base expansion of n.

The programs for A346470, there is no canonical definition to state claims against.
-/

/-! ## A346470.P11068407402498532406

`A001615(A276086(n))`
-/

namespace A346470.P11068407402498532406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A276086 n).toNat

end

end A346470.P11068407402498532406

/-! ## A346470.P2228414112582997838

`∑{d}[A328571(n), A276086(n)/#]`
-/

namespace A346470.P2228414112582997838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A276086 n : ℚ) / (d : ℚ)

end

end A346470.P2228414112582997838

/-! ## A346470.P11606867330990254082

`A000203(A328571(n))*A328572(n)`
-/

namespace A346470.P11606867330990254082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A328571 n).toNat * A328572 n

end

end A346470.P11606867330990254082

/-! ## A346470.P3804005886398393658

`A000203(A328571(n))*A276086(A328842(n))`
-/

namespace A346470.P3804005886398393658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A328571 n).toNat * A276086 (A328842 n).toNat

end

end A346470.P3804005886398393658

/-! ## A346470.P12255241052452670424

`A000203(A276086(n)/A328572(n))*A328572(n)`
-/

namespace A346470.P12255241052452670424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328572 n : ℚ))).toNat * A328572 n

end

end A346470.P12255241052452670424

/-!
# A346471: a(n) = A344695(A276086(n)), where A344695(x) = gcd(psi(x), sigma(x)), and A276086 gives the prime product form of primorial base expansion of n.

The programs for A346471, there is no canonical definition to state claims against.
-/

/-! ## A346471.P10363288227050814313

`gcd(A324653(n), A346470(n))`
-/

namespace A346471.P10363288227050814313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324653 n) (A346470 n)

end

end A346471.P10363288227050814313

/-! ## A346471.P5521846515314710197

`A344695(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346471.P5521846515314710197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A276086 n).toNat

end

end A346471.P5521846515314710197

/-! ## A346471.P11148148306197148419

`A366795(A277022(n))`
-/

namespace A346471.P11148148306197148419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366795 (A277022 n).toNat

end

end A346471.P11148148306197148419

/-! ## A346471.P8591031127697543507

`gcd(A048146(A276086(n)), A348997(n))`
-/

namespace A346471.P8591031127697543507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048146 (A276086 n).toNat) (A348997 n)

end

end A346471.P8591031127697543507

/-! ## A346471.P5377354098073267282

`∑{d}[A276086(n), A347230(#)]`
-/

namespace A346471.P5377354098073267282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347230 d

end

end A346471.P5377354098073267282

/-!
# A346472: a(n) = A011772(A276086(n)).

The programs for A346472, there is no canonical definition to state claims against.
-/

/-! ## A346472.P9495004289140435750

`A011772(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346472.P9495004289140435750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A276086 n).toNat

end

end A346472.P9495004289140435750

/-! ## A346472.P997417729755107094

`A011772(A351225(n)+n)`
-/

namespace A346472.P997417729755107094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A351225 n + (n : ℤ)).toNat

end

end A346472.P997417729755107094

/-! ## A346472.P1403339784915217725

`∑{d}[A276086(n), A344767(#)]`
-/

namespace A346472.P1403339784915217725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344767 d

end

end A346472.P1403339784915217725

/-! ## A346472.P2350824051035490519

`A011772(A373849(n)+A003415(n))`
-/

namespace A346472.P2350824051035490519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A373849 n + A003415 n).toNat

end

end A346472.P2350824051035490519

/-! ## A346472.P3728460221735766716

`A011772(A328580(n)+A328476(n))`
-/

namespace A346472.P3728460221735766716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A328580 n + A328476 n).toNat

end

end A346472.P3728460221735766716

/-! ## A346472.P9907584995581196486

`A011772(A358764(n)+A324895(n))`
-/

namespace A346472.P9907584995581196486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A358764 n + A324895 n).toNat

end

end A346472.P9907584995581196486

/-! ## A346472.P6397277217255752030

`A011772(A328475(n)*A328580(n))`
-/

namespace A346472.P6397277217255752030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A328475 n * A328580 n).toNat

end

end A346472.P6397277217255752030

/-! ## A346472.P18008482119327949345

`A011772(lcm(A324895(n), A351251(n)))`
-/

namespace A346472.P18008482119327949345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (Int.lcm (A324895 n) (A351251 n))

end

end A346472.P18008482119327949345

/-!
# A346473: a(n) = A250469(n) - sigma(n).

The programs for A346473, there is no canonical definition to state claims against.
-/

/-! ## A346473.P9715025469598810352

`A286385(n+1)-A280692(n+1)`
-/

namespace A346473.P9715025469598810352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) - A280692 (n + 1)

end

end A346473.P9715025469598810352

/-! ## A346473.P6402162978407391622

`A250469(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346473.P6402162978407391622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) - A000203 (n + 1)

end

end A346473.P6402162978407391622

/-! ## A346473.P3657587964171051722

`A347378(n+1)-A001065(n+1)`
-/

namespace A346473.P3657587964171051722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (n + 1) - A001065 (n + 1)

end

end A346473.P3657587964171051722

/-! ## A346473.P3459227258735789391

`A269360(n+1)-A088580(n+1)`
-/

namespace A346473.P3459227258735789391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (n + 1) - A088580 (n + 1)

end

end A346473.P3459227258735789391

/-! ## A346473.P1727830720865041958

`A033879(n+1)-A346476(n+1)`
-/

namespace A346473.P1727830720865041958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - A346476 (n + 1)

end

end A346473.P1727830720865041958

/-! ## A346473.P16876824862681885428

`A302042(A016945(n))-∑{d}[n+1, #]`
-/

namespace A346473.P16876824862681885428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A016945 n).toNat - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A346473.P16876824862681885428

/-! ## A346473.P12974244365351623409

`A269360(n+1)-(A000203(n+1)+1)`
-/

namespace A346473.P12974244365351623409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (n + 1) - (A000203 (n + 1) + 1)

end

end A346473.P12974244365351623409

/-! ## A346473.P18223427614220921756

`A003961(n+1)-(A280692(n+1)+A000203(n+1))`
-/

namespace A346473.P18223427614220921756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (A280692 (n + 1) + A000203 (n + 1))

end

end A346473.P18223427614220921756

/-! ## A346473.P542811834824254670

`A033879(n+1)+A252748(n+1)-A280692(n+1)`
-/

namespace A346473.P542811834824254670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A252748 (n + 1) - A280692 (n + 1))

end

end A346473.P542811834824254670

/-! ## A346473.P16568538209199798260

`A033879(n+1)+A346477(n+1)-A346478(n+1)`
-/

namespace A346473.P16568538209199798260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A346477 (n + 1) - A346478 (n + 1))

end

end A346473.P16568538209199798260

/-! ## A346473.P17254477328688270033

`A250469(n+1)-A245092(2*n+1)`
-/

namespace A346473.P17254477328688270033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) - A245092 (2 * n + 1)

end

end A346473.P17254477328688270033

/-! ## A346473.P652861277313148012

`A250469(n+1)-A302032(2*∑{d}[n+1, #])`
-/

namespace A346473.P652861277313148012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) - A302032 (2 * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A346473.P652861277313148012

/-! ## A346473.P6455893032638320601

`A250469(n+1)-A260739(2*∑{d}[n+1, #])`
-/

namespace A346473.P6455893032638320601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) - A260739 (2 * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A346473.P6455893032638320601

/-! ## A346473.P1696374789983422466

`A250469(n+1)-A032742(2*∑{d}[n+1, #])`
-/

namespace A346473.P1696374789983422466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) - A032742 (2 * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A346473.P1696374789983422466

/-! ## A346473.P5591730707372730901

`A250469(n+1)-A078898(2*∑{d}[n+1, #])`
-/

namespace A346473.P5591730707372730901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) - A078898 (2 * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A346473.P5591730707372730901

/-!
# A346474: a(n) = A342414(A276086(n)).

The programs for A346474, there is no canonical definition to state claims against.
-/

/-! ## A346474.P6027189162359563751

`A327860(n)/gcd(A327860(n), A324650(n))`
-/

namespace A346474.P6027189162359563751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (Int.gcd (A327860 n) (A324650 n) : ℚ)

end

end A346474.P6027189162359563751

/-! ## A346474.P11205063548151232191

`A342414(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346474.P11205063548151232191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (A276086 n).toNat

end

end A346474.P11205063548151232191

/-! ## A346474.P7509306330548810675

`A327860(n)/gcd(A324650(n), A327860(n))`
-/

namespace A346474.P7509306330548810675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (Int.gcd (A324650 n) (A327860 n) : ℚ)

end

end A346474.P7509306330548810675

/-! ## A346474.P3605106784653095649

`A342002(n)/A342416(A276086(n))`
-/

namespace A346474.P3605106784653095649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342002 n : ℚ) / (A342416 (A276086 n).toNat : ℚ)

end

end A346474.P3605106784653095649

/-! ## A346474.P7157322671013336661

`A344760(A289234(n))/A342416(A276086(n))`
-/

namespace A346474.P7157322671013336661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344760 (A289234 n).toNat : ℚ) / (A342416 (A276086 n).toNat : ℚ)

end

end A346474.P7157322671013336661

/-! ## A346474.P12423814188347803404

`A344761(A328626(n))/A342416(A276086(n))`
-/

namespace A346474.P12423814188347803404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344761 (A328626 n).toNat : ℚ) / (A342416 (A276086 n).toNat : ℚ)

end

end A346474.P12423814188347803404

/-! ## A346474.P4914442916105353204

`A346253(A328622(n))/A342416(A276086(n))`
-/

namespace A346474.P4914442916105353204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346253 (A328622 n).toNat : ℚ) / (A342416 (A276086 n).toNat : ℚ)

end

end A346474.P4914442916105353204

/-! ## A346474.P13350175009133489187

`A346252(A328623(n))/A342416(A276086(n))`
-/

namespace A346474.P13350175009133489187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346252 (A328623 n).toNat : ℚ) / (A342416 (A276086 n).toNat : ℚ)

end

end A346474.P13350175009133489187

/-! ## A346474.P15111259610423342991

`A342414(A351225(n)+n)`
-/

namespace A346474.P15111259610423342991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (A351225 n + (n : ℤ)).toNat

end

end A346474.P15111259610423342991

/-! ## A346474.P15291447011767927887

`A342414(A328580(n)+A328476(n))`
-/

namespace A346474.P15291447011767927887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (A328580 n + A328476 n).toNat

end

end A346474.P15291447011767927887

/-!
# A346475: a(n) = A342919(A276086(n)).

The programs for A346475, there is no canonical definition to state claims against.
-/

/-! ## A346475.P15185395840942780821

`A327860(n)/gcd(A327860(n), A346470(n))`
-/

namespace A346475.P15185395840942780821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 n : ℚ) / (Int.gcd (A327860 n) (A346470 n) : ℚ)

end

end A346475.P15185395840942780821

/-! ## A346475.P9151679520085451721

`A342919(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346475.P9151679520085451721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342919 (A276086 n).toNat

end

end A346475.P9151679520085451721

/-! ## A346475.P10124264373226929766

`A342002(n)/A342459(A276086(n))`
-/

namespace A346475.P10124264373226929766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342002 n : ℚ) / (A342459 (A276086 n).toNat : ℚ)

end

end A346475.P10124264373226929766

/-! ## A346475.P8203348899736985201

`A344762(A328625(n))/A342459(A276086(n))`
-/

namespace A346475.P8203348899736985201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344762 (A328625 n).toNat : ℚ) / (A342459 (A276086 n).toNat : ℚ)

end

end A346475.P8203348899736985201

/-! ## A346475.P527410861387650616

`A344761(A328626(n))/A342459(A276086(n))`
-/

namespace A346475.P527410861387650616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344761 (A328626 n).toNat : ℚ) / (A342459 (A276086 n).toNat : ℚ)

end

end A346475.P527410861387650616

/-! ## A346475.P2496833745771089033

`A346253(A328622(n))/A342459(A276086(n))`
-/

namespace A346475.P2496833745771089033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346253 (A328622 n).toNat : ℚ) / (A342459 (A276086 n).toNat : ℚ)

end

end A346475.P2496833745771089033

/-! ## A346475.P4289569504683661515

`A346252(A328623(n))/A342459(A276086(n))`
-/

namespace A346475.P4289569504683661515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346252 (A328623 n).toNat : ℚ) / (A342459 (A276086 n).toNat : ℚ)

end

end A346475.P4289569504683661515

/-! ## A346475.P15563631908994969352

`A342919(A351225(n)+n)`
-/

namespace A346475.P15563631908994969352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342919 (A351225 n + (n : ℤ)).toNat

end

end A346475.P15563631908994969352

/-! ## A346475.P11234999071591615418

`A342919(A346102(A328623(n)))`
-/

namespace A346475.P11234999071591615418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342919 (A346102 (A328623 n).toNat).toNat

end

end A346475.P11234999071591615418

/-! ## A346475.P5046985957498421473

`A342919(A328580(n)+A328476(n))`
-/

namespace A346475.P5046985957498421473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342919 (A328580 n + A328476 n).toNat

end

end A346475.P5046985957498421473

/-!
# A346476: a(n) = 2*n - A250469(n).

The programs for A346476, there is no canonical definition to state claims against.
-/

/-! ## A346476.P10671003001415532174

`n+1-A347378(n+1)`
-/

namespace A346476.P10671003001415532174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A347378 (n + 1)

end

end A346476.P10671003001415532174

/-! ## A346476.P6030604548754662770

`A033879(n+1)-A346473(n+1)`
-/

namespace A346476.P6030604548754662770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - A346473 (n + 1)

end

end A346476.P6030604548754662770

/-! ## A346476.P5943028837558786929

`A280692(n+1)-A252748(n+1)`
-/

namespace A346476.P5943028837558786929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280692 (n + 1) - A252748 (n + 1)

end

end A346476.P5943028837558786929

/-! ## A346476.P9700465441519024139

`A346478(n+1)-A346477(n+1)`
-/

namespace A346476.P9700465441519024139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346478 (n + 1) - A346477 (n + 1)

end

end A346476.P9700465441519024139

/-! ## A346476.P10584176790223491222

`2*(n+1)-A250469(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346476.P10584176790223491222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A250469 (n + 1)

end

end A346476.P10584176790223491222

/-! ## A346476.P9800863349605244200

`2*n+3-A269360(n+1)`
-/

namespace A346476.P9800863349605244200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A269360 (n + 1)

end

end A346476.P9800863349605244200

/-! ## A346476.P10254805412674543249

`2*(n+1)-A269379(A269355(n+1))`
-/

namespace A346476.P10254805412674543249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A269379 (A269355 (n + 1)).toNat

end

end A346476.P10254805412674543249

/-! ## A346476.P16680864301921158945

`A005843(n)+2-A250469(n+1)`
-/

namespace A346476.P16680864301921158945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A250469 (n + 1))

end

end A346476.P16680864301921158945

/-! ## A346476.P9440032417687624293

`Δ[n²]-A253886(n)`
-/

namespace A346476.P9440032417687624293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A253886 n

end

end A346476.P9440032417687624293

/-! ## A346476.P6168042610475966741

`A001489(A253886(n))-A001489(2*n+1)`
-/

namespace A346476.P6168042610475966741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A253886 n).toNat - A001489 (2 * n + 1)

end

end A346476.P6168042610475966741

/-! ## A346476.P9093804110646423991

`A250469(A250472(n+1))+1-A250469(n+1)`
-/

namespace A346476.P9093804110646423991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A250472 (n + 1)).toNat + (1 - A250469 (n + 1))

end

end A346476.P9093804110646423991

/-! ## A346476.P178079570737423277

`A032742(A016945(n))+1-A250469(n+1)`
-/

namespace A346476.P178079570737423277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A016945 n).toNat + (1 - A250469 (n + 1))

end

end A346476.P178079570737423277

/-!
# A346477: Dirichlet inverse of A346476.

The programs for A346477, there is no canonical definition to state claims against.
-/

/-! ## A346477.P11400007292536255453

`A346478(n+1)-A346476(n+1)`
-/

namespace A346477.P11400007292536255453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346478 (n + 1) - A346476 (n + 1)

end

end A346477.P11400007292536255453

/-! ## A346477.P4249398758223293668

`A346478(n+1)-(1-A347378(n+1)+n)`
-/

namespace A346477.P4249398758223293668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346478 (n + 1) - (1 - A347378 (n + 1) + (n : ℤ))

end

end A346477.P4249398758223293668

/-! ## A346477.P14817418473864997676

`A346478(n+1)-(2*n+3-A269360(n+1))`
-/

namespace A346477.P14817418473864997676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346478 (n + 1) - ((2 * n + 3 : ℤ) - A269360 (n + 1))

end

end A346477.P14817418473864997676

/-! ## A346477.P17660010763803810354

`A346473(n+1)+A346478(n+1)-A033879(n+1)`
-/

namespace A346477.P17660010763803810354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346473 (n + 1) + (A346478 (n + 1) - A033879 (n + 1))

end

end A346477.P17660010763803810354

/-! ## A346477.P3877421286770612175

`A252748(n+1)+A346478(n+1)-A280692(n+1)`
-/

namespace A346477.P3877421286770612175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) + (A346478 (n + 1) - A280692 (n + 1))

end

end A346477.P3877421286770612175

/-!
# A346478: Sum of A346476 and its Dirichlet inverse.

The programs for A346478, there is no canonical definition to state claims against.
-/

/-! ## A346478.P1503388196565153949

`A346476(n+1)+A346477(n+1)`
-/

namespace A346478.P1503388196565153949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346476 (n + 1) + A346477 (n + 1)

end

end A346478.P1503388196565153949

/-! ## A346478.P9949918152564022796

`A346477(n+1)+2*n+3-A269360(n+1)`
-/

namespace A346478.P9949918152564022796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346477 (n + 1) + ((2 * n + 3 : ℤ) - A269360 (n + 1))

end

end A346478.P9949918152564022796

/-! ## A346478.P6473249530146665334

`A033879(n+1)+A346477(n+1)-A346473(n+1)`
-/

namespace A346478.P6473249530146665334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A346477 (n + 1) - A346473 (n + 1))

end

end A346478.P6473249530146665334

/-! ## A346478.P10179510881732442737

`A280692(n+1)+A346477(n+1)-A252748(n+1)`
-/

namespace A346478.P10179510881732442737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280692 (n + 1) + (A346477 (n + 1) - A252748 (n + 1))

end

end A346478.P10179510881732442737

/-! ## A346478.P3292317044619632175

`A346477(n+1)+2*(n+1)-A250469(n+1)`
-/

namespace A346478.P3292317044619632175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346477 (n + 1) + ((2 * (n + 1) : ℤ) - A250469 (n + 1))

end

end A346478.P3292317044619632175

/-!
# A346479: Dirichlet inverse of A250469.

The programs for A346479, there is no canonical definition to state claims against.
-/

/-! ## A346479.P13532576043427941082

`A346480(n+1)-A250469(n+1)`
-/

namespace A346479.P13532576043427941082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346480 (n + 1) - A250469 (n + 1)

end

end A346479.P13532576043427941082

/-! ## A346479.P13397228391700278756

`∑{d}[n+1, A346234(#)*A349631((n+1)/#)]`
-/

namespace A346479.P13397228391700278756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346234 d * A349631 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346479.P13397228391700278756

/-! ## A346479.P7148763982553404664

`A280692(n+1)+A346480(n+1)-A003961(n+1)`
-/

namespace A346479.P7148763982553404664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280692 (n + 1) + (A346480 (n + 1) - A003961 (n + 1))

end

end A346479.P7148763982553404664

/-! ## A346479.P18115221050980361616

`A346480(n+1)-(A253886(n)+1)`
-/

namespace A346479.P18115221050980361616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346480 (n + 1) - (A253886 n + 1)

end

end A346479.P18115221050980361616

/-! ## A346479.P11336364498872032428

`A346480(n+1)+A346476(A250469(n+1)+3)`
-/

namespace A346479.P11336364498872032428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346480 (n + 1) + A346476 (A250469 (n + 1) + 3).toNat

end

end A346479.P11336364498872032428

/-!
# A346480: Sum of A250469 and its Dirichlet inverse.

The programs for A346480, there is no canonical definition to state claims against.
-/

/-! ## A346480.P12693409499084021157

`A250469(n+1)+A346479(n+1)`
-/

namespace A346480.P12693409499084021157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) + A346479 (n + 1)

end

end A346480.P12693409499084021157

/-! ## A346480.P11484178390491035615

`A269360(n+1)+A346479(n+1)-1`
-/

namespace A346480.P11484178390491035615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (n + 1) + (A346479 (n + 1) - 1)

end

end A346480.P11484178390491035615

/-! ## A346480.P10685932406064103156

`A346479(n+1)+A302042(6*n+3)`
-/

namespace A346480.P10685932406064103156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346479 (n + 1) + A302042 (6 * n + 3)

end

end A346480.P10685932406064103156

/-! ## A346480.P13245103601980623532

`A346479(n+1)+A269379(A269355(n+1))`
-/

namespace A346480.P13245103601980623532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346479 (n + 1) + A269379 (A269355 (n + 1)).toNat

end

end A346480.P13245103601980623532

/-! ## A346480.P12978183025567978220

`A003961(n+1)+A346479(n+1)-A280692(n+1)`
-/

namespace A346480.P12978183025567978220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (A346479 (n + 1) - A280692 (n + 1))

end

end A346480.P12978183025567978220

/-! ## A346480.P10551923878870533030

`A346479(n+1)+A003961(A266645(n+1))`
-/

namespace A346480.P10551923878870533030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346479 (n + 1) + A003961 (A266645 (n + 1)).toNat

end

end A346480.P10551923878870533030

/-! ## A346480.P5835161969831513796

`A346479(n+1)+A004273(A250471(n+1))`
-/

namespace A346480.P5835161969831513796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346479 (n + 1) + A004273 (A250471 (n + 1)).toNat

end

end A346480.P5835161969831513796

/-! ## A346480.P13207778647788396940

`A346479(n+1)+A253886(n)+1`
-/

namespace A346480.P13207778647788396940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346479 (n + 1) + (A253886 n + 1)

end

end A346480.P13207778647788396940

/-! ## A346480.P9092390715409138833

`A346479(n+1)+A004442(A253886(n))`
-/

namespace A346480.P9092390715409138833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346479 (n + 1) + A004442 (A253886 n).toNat

end

end A346480.P9092390715409138833

/-! ## A346480.P9807907292283947188

`A346479(n+1)+A014681(A269360(n+1))`
-/

namespace A346480.P9807907292283947188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346479 (n + 1) + A014681 (A269360 (n + 1)).toNat

end

end A346480.P9807907292283947188

/-!
# A346481: a(n) = A346467(n) / A346466(n) = lcm S / lcm {d in S, d+1 | n}, with S = {d | n-1, d+1 is prime}.

The programs for A346481, there is no canonical definition to state claims against.
-/

/-! ## A346481.P6040876003594912603

`A346467(n+1)/A346466(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346481.P6040876003594912603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346467 (n + 1) : ℚ) / (A346466 (n + 1) : ℚ)

end

end A346481.P6040876003594912603

/-! ## A346481.P16445756306359017917

`A346467(n+1)/A002322(A326584(n+1))`
-/

namespace A346481.P16445756306359017917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346467 (n + 1) : ℚ) / (A002322 (A326584 (n + 1)).toNat : ℚ)

end

end A346481.P16445756306359017917

/-! ## A346481.P2820307989986516689

`A346467(n+1)/A002322(gcd(n+1, A027642(n)))`
-/

namespace A346481.P2820307989986516689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346467 (n + 1) : ℚ) / (A002322 (Int.gcd (n + 1 : ℤ) (A027642 n)) : ℚ)

end

end A346481.P2820307989986516689

/-! ## A346481.P11693630170566926804

`A346467(n+1)/A002322((n+1)/A326478(n+1))`
-/

namespace A346481.P11693630170566926804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346467 (n + 1) : ℚ) / (A002322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A326478 (n + 1) : ℚ))).toNat : ℚ)

end

end A346481.P11693630170566926804

/-! ## A346481.P11129216591593646684

`A346467(n+1)/A002322(A027642(n)/A050932(n))`
-/

namespace A346481.P11129216591593646684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346467 (n + 1) : ℚ) / (A002322 (SequenceMachineLib.roundAway ((A027642 n : ℚ) / (A050932 n : ℚ))).toNat : ℚ)

end

end A346481.P11129216591593646684

/-! ## A346481.P17103949668062646703

`A346467(n+1)/A002322(A226040(2*n+1)/A226040(n))`
-/

namespace A346481.P17103949668062646703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346467 (n + 1) : ℚ) / (A002322 (SequenceMachineLib.roundAway ((A226040 (2 * n + 1) : ℚ) / (A226040 n : ℚ))).toNat : ℚ)

end

end A346481.P17103949668062646703

/-!
# A346482: Dirichlet inverse of A005171, the characteristic function of nonprimes.

The programs for A346482, there is no canonical definition to state claims against.
-/

/-! ## A346482.P1665818552554747189

`A346483(n+1)-A005171(n+1)`
-/

namespace A346482.P1665818552554747189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (n + 1) - A005171 (n + 1)

end

end A346482.P1665818552554747189

/-! ## A346482.P18419249260279490409

`A010051(n+1)+A346483(n+1)-1`
-/

namespace A346482.P18419249260279490409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A346483 (n + 1) - 1)

end

end A346482.P18419249260279490409

/-! ## A346482.P2628727393245310501

`A346483(n+1)-A057427(A050374(n+1))`
-/

namespace A346482.P2628727393245310501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (n + 1) - A057427 (A050374 (n + 1)).toNat

end

end A346482.P2628727393245310501

/-! ## A346482.P6054488914249256536

`A346483(n+1)-A057427(A239968(n+1))`
-/

namespace A346482.P6054488914249256536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (n + 1) - A057427 (A239968 (n + 1)).toNat

end

end A346482.P6054488914249256536

/-! ## A346482.P7130528660289539839

`A346483(n+1)-A087049(A165827(n+1))`
-/

namespace A346482.P7130528660289539839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (n + 1) - A087049 (A165827 (n + 1)).toNat

end

end A346482.P7130528660289539839

/-!
# A346483: Sum of A005171 (characteristic function of nonprimes) and its Dirichlet inverse.

The programs for A346483, there is no canonical definition to state claims against.
-/

/-! ## A346483.P16109118965721479748

`A005171(n+1)+A346482(n+1)`
-/

namespace A346483.P16109118965721479748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + A346482 (n + 1)

end

end A346483.P16109118965721479748

/-! ## A346483.P1074855146162847809

`A346482(n+1)+1-A010051(n+1)`
-/

namespace A346483.P1074855146162847809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (n + 1) + (1 - A010051 (n + 1))

end

end A346483.P1074855146162847809

/-! ## A346483.P17949683830483839250

`A346482(n+1)+A000035(A105560(n+1))`
-/

namespace A346483.P17949683830483839250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (n + 1) + A000035 (A105560 (n + 1)).toNat

end

end A346483.P17949683830483839250

/-! ## A346483.P11644809613829198724

`A346482(n+1)+A057427(A050374(n+1))`
-/

namespace A346483.P11644809613829198724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (n + 1) + A057427 (A050374 (n + 1)).toNat

end

end A346483.P11644809613829198724

/-! ## A346483.P602458969520389384

`A346482(n+1)+A057427(A070821(n+1))`
-/

namespace A346483.P602458969520389384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (n + 1) + A057427 (A070821 (n + 1)).toNat

end

end A346483.P602458969520389384

/-! ## A346483.P2501419814521953175

`A346482(n+1)+A057427(A239968(n+1))`
-/

namespace A346483.P2501419814521953175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (n + 1) + A057427 (A239968 (n + 1)).toNat

end

end A346483.P2501419814521953175

/-! ## A346483.P9375500815324807691

`A346482(n+1)+A057427(A349347(n+1)+A346482(n+1))`
-/

namespace A346483.P9375500815324807691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (n + 1) + A057427 (A349347 (n + 1) + A346482 (n + 1)).toNat

end

end A346483.P9375500815324807691

/-! ## A346483.P3239404917675511687

`A346482(n+1)+A057427(A349347(n+1))`
-/

namespace A346483.P3239404917675511687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (n + 1) + A057427 (A349347 (n + 1)).toNat

end

end A346483.P3239404917675511687

/-!
# A346484: Composite numbers k for which A346482(k) = 0.

The programs for A346484, there is no canonical definition to state claims against.
-/

/-! ## A346484.P13364454429783589526

`eq[1, A346483(A028310(n))]`
-/

namespace A346484.P13364454429783589526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346484.P13364454429783589526

/-! ## A346484.P6697975004600071896

`A020725(eq[1, A346483(n+1)])`
-/

namespace A346484.P6697975004600071896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346484.P6697975004600071896

/-!
# A346485: Möbius transform of A342001, where A342001(n) = A003415(n)/A003557(n).

The programs for A346485, the canonical program `A346485.P14225594692106356284` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346485 has offset 1).

The definition of A346485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346485.P14225594692106356284

`∑{d}[n+1, A008683((n+1)/#)*A342001(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A346485

/-- `∑{d}[n+1, A008683((n+1)/#)*A342001(#)]` -/
def P14225594692106356284.Spec : Prop :=
  ∀ n, P14225594692106356284.a n = A346485 (n + 1)

theorem P14225594692106356284.correct : P14225594692106356284.Spec := by
  intro n
  simp only [A346485, Nat.add_sub_cancel]

end A346485

/-! ## A346485.P2107926098091864078

`∑{d}[n+1, A000010(#)*A349396((n+1)/#)]`
-/

namespace A346485.P2107926098091864078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346485.P2107926098091864078

namespace A346485

/-- `∑{d}[n+1, A000010(#)*A349396((n+1)/#)]` -/
def P2107926098091864078.Spec : Prop :=
  ∀ n, P2107926098091864078.a n = A346485 (n + 1)

end A346485

/-! ## A346485.P8234896324518423523

`∑{d}[n+1, A055615(#)*A347235((n+1)/#)]`
-/

namespace A346485.P8234896324518423523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A347235 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346485.P8234896324518423523

namespace A346485

/-- `∑{d}[n+1, A055615(#)*A347235((n+1)/#)]` -/
def P8234896324518423523.Spec : Prop :=
  ∀ n, P8234896324518423523.a n = A346485 (n + 1)

end A346485

/-! ## A346485.P6196692206680927888

`∑{d}[n+1, A271102(#)*A347395((n+1)/#)]`
-/

namespace A346485.P6196692206680927888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A347395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346485.P6196692206680927888

namespace A346485

/-- `∑{d}[n+1, A271102(#)*A347395((n+1)/#)]` -/
def P6196692206680927888.Spec : Prop :=
  ∀ n, P6196692206680927888.a n = A346485 (n + 1)

end A346485

/-! ## A346485.P5427489704661008490

`A347395(n+1)-A033665(A273013(n+1))`
-/

namespace A346485.P5427489704661008490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (n + 1) - A033665 (A273013 (n + 1)).toNat

end

end A346485.P5427489704661008490

namespace A346485

/-- `A347395(n+1)-A033665(A273013(n+1))` -/
def P5427489704661008490.Spec : Prop :=
  ∀ n, P5427489704661008490.a n = A346485 (n + 1)

end A346485

/-!
# A346486: a(1) = 1; for n > 1, a(n) = A020639(n) * a(A302044(n)).

The programs for A346486, there is no canonical definition to state claims against.
-/

/-! ## A346486.P2309174121159364213

`A250246(n+1)/A346487(n+1)`
-/

namespace A346486.P2309174121159364213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A346487 (n + 1) : ℚ)

end

end A346486.P2309174121159364213

/-! ## A346486.P10389209018766600697

`A020639(n+1)*a(A302044(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346486.P10389209018766600697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (n + 1) * a (A302044 (n + 1) - 1).toNat

end

end A346486.P10389209018766600697

/-! ## A346486.P6566838655961097602

`A007947(A250246(n+1))`
-/

namespace A346486.P6566838655961097602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A250246 (n + 1)).toNat

end

end A346486.P6566838655961097602

/-! ## A346486.P7843131724437326337

`∏{p}[A250246(n+1), #]`
-/

namespace A346486.P7843131724437326337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A346486.P7843131724437326337

/-! ## A346486.P14132464825995697583

`∏{p}[A302026(A269171(n+1)), #]`
-/

namespace A346486.P14132464825995697583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A346486.P14132464825995697583

/-! ## A346486.P9471058341087649591

`A280496(2*(n+1))/A003557(A280496(2*(n+1)))`
-/

namespace A346486.P9471058341087649591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280496 (2 * (n + 1)) : ℚ) / (A003557 (A280496 (2 * (n + 1))).toNat : ℚ)

end

end A346486.P9471058341087649591

/-! ## A346486.P12000511072079111926

`gcd(A144361(n+1), A250246(n+1))`
-/

namespace A346486.P12000511072079111926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144361 (n + 1)) (A250246 (n + 1))

end

end A346486.P12000511072079111926

/-! ## A346486.P4279451893413974293

`A250246(n+1)²/A003557(A250246(n+1)²)`
-/

namespace A346486.P4279451893413974293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) ^ 2 : ℚ) / (A003557 (A250246 (n + 1) ^ 2).toNat : ℚ)

end

end A346486.P4279451893413974293

/-!
# A346487: a(n) = A003557(A250246(n)).

The programs for A346487, there is no canonical definition to state claims against.
-/

/-! ## A346487.P13288629961733749436

`A250246(n+1)/A346486(n+1)`
-/

namespace A346487.P13288629961733749436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A346486 (n + 1) : ℚ)

end

end A346487.P13288629961733749436

/-! ## A346487.P2550326243674659128

`A003557(A250246(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346487.P2550326243674659128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A250246 (n + 1)).toNat

end

end A346487.P2550326243674659128

/-! ## A346487.P473745864541507220

`A250246(n+1)/∏{p}[A250246(n+1), A250246(#)]`
-/

namespace A346487.P473745864541507220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A250246 p : ℤ) : ℚ)

end

end A346487.P473745864541507220

/-! ## A346487.P9433817287081817987

`A250250(n+1)/A007947(A250250(n+1))`
-/

namespace A346487.P9433817287081817987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250250 (n + 1) : ℚ) / (A007947 (A250250 (n + 1)).toNat : ℚ)

end

end A346487.P9433817287081817987

/-! ## A346487.P17635882353945329728

`A003557(A250250(n+1))`
-/

namespace A346487.P17635882353945329728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A250250 (n + 1)).toNat

end

end A346487.P17635882353945329728

/-! ## A346487.P9203853175063567507

`A003557(A280496(2*(n+1)))`
-/

namespace A346487.P9203853175063567507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A280496 (2 * (n + 1))).toNat

end

end A346487.P9203853175063567507

/-! ## A346487.P11245781321142973321

`A003557(A324546(n+1)+A324535(n+1))`
-/

namespace A346487.P11245781321142973321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A324546 (n + 1) + A324535 (n + 1)).toNat

end

end A346487.P11245781321142973321

/-! ## A346487.P13259690104389608139

`A003557(A324545(n+1)-A324535(n+1))`
-/

namespace A346487.P13259690104389608139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A324545 (n + 1) - A324535 (n + 1)).toNat

end

end A346487.P13259690104389608139

/-! ## A346487.P703707729967582456

`A250246(n+1)/A007947(A028233(n+1)*A250246(n+1))`
-/

namespace A346487.P703707729967582456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A007947 (A028233 (n + 1) * A250246 (n + 1)).toNat : ℚ)

end

end A346487.P703707729967582456

/-! ## A346487.P3846254349441056009

`A250246(n+1)/A007947(A250246(n+1)²)`
-/

namespace A346487.P3846254349441056009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250246 (n + 1) : ℚ) / (A007947 (A250246 (n + 1) ^ 2).toNat : ℚ)

end

end A346487.P3846254349441056009

/-!
# A346488: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), for all i, j >= 1, where f(n) = 0 if mu(n) = -1, and f(n) = n for all other numbers (with mu = Möbius mu, A008683).

The programs for A346488, there is no canonical definition to state claims against.
-/

/-! ## A346488.P14504122872486024528

`A300835(∑[A034518(n+1)!])`
-/

namespace A346488.P14504122872486024528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034518 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300835 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346488.P14504122872486024528

/-! ## A346488.P2960042944135446137

`A344025(n+1)%A360081((n+1)/∏{p}[n+1, #])`
-/

namespace A346488.P2960042944135446137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344025 (n + 1)) (A360081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A346488.P2960042944135446137

/-! ## A346488.P15260262738951109836

`A344025(n+1)%A224534(A369997(n))`
-/

namespace A346488.P15260262738951109836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344025 (n + 1)) (A224534 (A369997 n).toNat)

end

end A346488.P15260262738951109836

/-! ## A346488.P7830026237859149704

`A373150(n+1)%A254929(A254929(n+1))`
-/

namespace A346488.P7830026237859149704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373150 (n + 1)) (A254929 (A254929 (n + 1)).toNat)

end

end A346488.P7830026237859149704

/-!
# A346489: a(n) is the index of the smallest prime whose digits sum to n-th prime.

The programs for A346489, there is no canonical definition to state claims against.
-/

/-! ## A346489.P15271267545152536817

`A000720(A054750(n+1))`
-/

namespace A346489.P15271267545152536817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054750 (n + 1)).toNat

end

end A346489.P15271267545152536817

/-! ## A346489.P17242092540307477258

`A104290(p?[comp[n²]])`
-/

namespace A346489.P17242092540307477258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104290 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A346489.P17242092540307477258

/-! ## A346489.P5371109159237262493

`A104290(A390240(n))`
-/

namespace A346489.P5371109159237262493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104290 (A390240 n).toNat

end

end A346489.P5371109159237262493

/-! ## A346489.P2962464433288186723

`A104290(A000040(n+1))`
-/

namespace A346489.P2962464433288186723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104290 (A000040 (n + 1)).toNat

end

end A346489.P2962464433288186723

/-! ## A346489.P2526557559162688208

`A104290(A030291(n+1))`
-/

namespace A346489.P2526557559162688208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104290 (A030291 (n + 1)).toNat

end

end A346489.P2526557559162688208

/-!
# A346490: Total number of partitions of all n-multisets {1,2,...,n-j,1,2,...,j} for 0 <= j <= n.

The programs for A346490, there is no canonical definition to state claims against.
-/

/-! ## A346490.P6968307779723650891

`∑{#}[n, A001055(A002110(n-#)*A002110(#))]`
-/

namespace A346490.P6968307779723650891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001055 (A002110 (n - k) * A002110 k).toNat

end

end A346490.P6968307779723650891

/-! ## A346490.P655319206611688875

`A262441(n)+A001222(A136654(n))`
-/

namespace A346490.P655319206611688875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262441 n + A001222 (A136654 n).toNat

end

end A346490.P655319206611688875

/-! ## A346490.P11955928010827765882

`A349258(A000258(n))+A262441(n)`
-/

namespace A346490.P11955928010827765882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 (A000258 n).toNat + A262441 n

end

end A346490.P11955928010827765882

/-!
# A346491: Number of factorizations of the n-th Fibonacci number.

The programs for A346491, there is no canonical definition to state claims against.
-/

/-! ## A346491.P7452371509952151870

`A001055(A278245(n+1))`
-/

namespace A346491.P7452371509952151870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A278245 (n + 1)).toNat

end

end A346491.P7452371509952151870

/-! ## A346491.P9331042236365884809

`A001055(A046523(A000045(n+1)))`
-/

namespace A346491.P9331042236365884809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A046523 (A000045 (n + 1)).toNat).toNat

end

end A346491.P9331042236365884809

/-! ## A346491.P1640117407314513340

`A347438(A278245(n+1)²)`
-/

namespace A346491.P1640117407314513340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A278245 (n + 1) ^ 2).toNat

end

end A346491.P1640117407314513340

/-! ## A346491.P1469343545408387451

`∑{d}[A278245(n+1), A050370(#)]`
-/

namespace A346491.P1469343545408387451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A346491.P1469343545408387451

/-! ## A346491.P17760668344586793788

`∑{d}[A071364(A000045(n+1)), A050370(#)]`
-/

namespace A346491.P17760668344586793788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A000045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A346491.P17760668344586793788

/-!
# A346492: Triangle read by rows: T(n,k) is the number of permutations of length n such that the minimum over maximum difference of elements in cycles is exactly k; 0 <= k < n.

The programs for A346492, there is no canonical definition to state claims against.
-/

/-! ## A346492.P10512938017830338678

`xor(A121373(A235517(n+1)), A145877(n+1))`
-/

namespace A346492.P10512938017830338678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121373 (A235517 (n + 1)).toNat) (A145877 (n + 1))

end

end A346492.P10512938017830338678

/-! ## A346492.P7050506653577338449

`xor(A145877(n+1), A341996(A339546(2*(n+3))))`
-/

namespace A346492.P7050506653577338449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A145877 (n + 1)) (A341996 (A339546 (2 * (n + 3))).toNat)

end

end A346492.P7050506653577338449

/-!
# A346494: Heptagonal numbers (A000566) with prime indices (A000040).

The programs for A346494, the canonical program `A346494.P7045344198634205373` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346494 has offset 1).

The definition of A346494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346494.P7045344198634205373

`A000566(A000040(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346494

/-- `A000566(A000040(n+1))` -/
def P7045344198634205373.Spec : Prop :=
  ∀ n, P7045344198634205373.a n = A346494 (n + 1)

theorem P7045344198634205373.correct : P7045344198634205373.Spec := by
  intro n
  simp only [A346494, Nat.add_sub_cancel]

end A346494

/-! ## A346494.P13238768332799162098

`A000566(p?[comp[n²]])`
-/

namespace A346494.P13238768332799162098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A346494.P13238768332799162098

namespace A346494

/-- `A000566(p?[comp[n²]])` -/
def P13238768332799162098.Spec : Prop :=
  ∀ n, P13238768332799162098.a n = A346494 (n + 1)

end A346494

/-! ## A346494.P8769298198472559878

`A192136(p?[xor(1, n)+1])-1`
-/

namespace A346494.P8769298198472559878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A346494.P8769298198472559878

namespace A346494

/-- `A192136(p?[xor(1, n)+1])-1` -/
def P8769298198472559878.Spec : Prop :=
  ∀ n, P8769298198472559878.a n = A346494 (n + 1)

end A346494

/-! ## A346494.P48540887115872599

`A130520(5*p?[xor(1, n)+1])`
-/

namespace A346494.P48540887115872599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A346494.P48540887115872599

namespace A346494

/-- `A130520(5*p?[xor(1, n)+1])` -/
def P48540887115872599.Spec : Prop :=
  ∀ n, P48540887115872599.a n = A346494 (n + 1)

end A346494

/-! ## A346494.P6377825906298222618

`A000566(A049551(n+1))`
-/

namespace A346494.P6377825906298222618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A049551 (n + 1)).toNat

end

end A346494.P6377825906298222618

namespace A346494

/-- `A000566(A049551(n+1))` -/
def P6377825906298222618.Spec : Prop :=
  ∀ n, P6377825906298222618.a n = A346494 (n + 1)

end A346494

/-!
# A346497: List of powers of 2 written in base 3 which contain no zero digits.

The programs for A346497, there is no canonical definition to state claims against.
-/

/-! ## A346497.P9398947822545634440

`A004642(lcm(n, ceil(or(2, n-1)/2)))`
-/

namespace A346497.P9398947822545634440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 (Int.lcm (n : ℤ) ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉)

end

end A346497.P9398947822545634440

/-!
# A346499: Prime numbers k where the d(j)-th digit is j for d(j) and j > 0 and d(j) = 0 if and only if j is not a digit of k and d(m) is the m-th digit of k reading from the left.

The programs for A346499, there is no canonical definition to state claims against.
-/

/-! ## A346499.P13029087118458642900

`p?[A348056(n+1)]`
-/

namespace A346499.P13029087118458642900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346499.P13029087118458642900

