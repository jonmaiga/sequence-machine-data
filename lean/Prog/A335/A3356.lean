import SequenceMachineLib
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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A335601: The number of mixed trees with n nodes and n-2 arcs.

The programs for A335601, there is no canonical definition to state claims against.
-/

/-! ## A335601.P7308304409376884367

`A335362(∑[n+2])`
-/

namespace A335601.P7308304409376884367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335601.P7308304409376884367

/-! ## A335601.P59243563771067874

`record[A335362(A333530(n+1))]`
-/

namespace A335601.P59243563771067874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335362 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335601.P59243563771067874

/-! ## A335601.P12692346169700124308

`record[gcd(A101276(n), A335362(n+1))]`
-/

namespace A335601.P12692346169700124308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101276 n) (A335362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335601.P12692346169700124308

/-!
# A335602: Number of 3-regular cubic partitions of n.

The programs for A335602, there is no canonical definition to state claims against.
-/

/-! ## A335602.P669686773954696119

`A112164(Δ[n²])/3`
-/

namespace A335602.P669686773954696119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A335602.P669686773954696119

/-! ## A335602.P9131261401412627633

`abs(A112161(3*n+1))`
-/

namespace A335602.P9131261401412627633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112161 (3 * n + 1)|

end

end A335602.P9131261401412627633

/-! ## A335602.P8664184228052700993

`abs(A112164(2*n+1)/3)`
-/

namespace A335602.P8664184228052700993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A112164 (2 * n + 1) : ℚ) / 3|

end

end A335602.P8664184228052700993

/-!
# A335603: a(n) = p*q where p is the sequential number (or PrimePi, A000720) of the largest prime divisor of n, and q is the maximal exponent in the canonical representation of n (A051903).

The programs for A335603, the canonical program `A335603.P16960096878728577473` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335603 has offset 1).

The definition of A335603 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A006530, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335603.P16960096878728577473

`A000720(A006530(n+1))*A051903(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A335603

/-- `A000720(A006530(n+1))*A051903(n+1)` -/
def P16960096878728577473.Spec : Prop :=
  ∀ n, P16960096878728577473.a n = A335603 (n + 1)

theorem P16960096878728577473.correct : P16960096878728577473.Spec := by
  intro n
  simp only [A335603, Nat.add_sub_cancel]

end A335603

/-! ## A335603.P8197229677075245181

`A051903(n+1)*A061395(n+1)`
-/

namespace A335603.P8197229677075245181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) * A061395 (n + 1)

end

end A335603.P8197229677075245181

namespace A335603

/-- `A051903(n+1)*A061395(n+1)` -/
def P8197229677075245181.Spec : Prop :=
  ∀ n, P8197229677075245181.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P17096358552941418124

`(A067132(n+1)-1)*A061395(n+1)`
-/

namespace A335603.P17096358552941418124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067132 (n + 1) - 1) * A061395 (n + 1)

end

end A335603.P17096358552941418124

namespace A335603

/-- `(A067132(n+1)-1)*A061395(n+1)` -/
def P17096358552941418124.Spec : Prop :=
  ∀ n, P17096358552941418124.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P14222553051778945550

`val(A046523(n+1), 2)*A061395(n+1)`
-/

namespace A335603.P14222553051778945550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ) * A061395 (n + 1)

end

end A335603.P14222553051778945550

namespace A335603

/-- `val(A046523(n+1), 2)*A061395(n+1)` -/
def P14222553051778945550.Spec : Prop :=
  ∀ n, P14222553051778945550.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P10682594960359217096

`val(A328400(n+1), 2)*A061395(n+1)`
-/

namespace A335603.P10682594960359217096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A328400 (n + 1)).toNat 2 : ℤ) * A061395 (n + 1)

end

end A335603.P10682594960359217096

namespace A335603

/-- `val(A328400(n+1), 2)*A061395(n+1)` -/
def P10682594960359217096.Spec : Prop :=
  ∀ n, P10682594960359217096.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P14500597168779298237

`val(A278254(n+1), 4)*A061395(n+1)`
-/

namespace A335603.P14500597168779298237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4 : ℤ) * A061395 (n + 1)

end

end A335603.P14500597168779298237

namespace A335603

/-- `val(A278254(n+1), 4)*A061395(n+1)` -/
def P14500597168779298237.Spec : Prop :=
  ∀ n, P14500597168779298237.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P8497413878990170464

`∑{e}[A238745(n+1), #*A061395(n+1)]`
-/

namespace A335603.P8497413878990170464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A061395 (n + 1)

end

end A335603.P8497413878990170464

namespace A335603

/-- `∑{e}[A238745(n+1), #*A061395(n+1)]` -/
def P8497413878990170464.Spec : Prop :=
  ∀ n, P8497413878990170464.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P17428937069151515556

`A007814(A046523(n+1))*A061395(n+1)`
-/

namespace A335603.P17428937069151515556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (n + 1)).toNat * A061395 (n + 1)

end

end A335603.P17428937069151515556

namespace A335603

/-- `A007814(A046523(n+1))*A061395(n+1)` -/
def P17428937069151515556.Spec : Prop :=
  ∀ n, P17428937069151515556.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P16379951865412672647

`A001222(A238745(n+1))*A061395(n+1)`
-/

namespace A335603.P16379951865412672647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238745 (n + 1)).toNat * A061395 (n + 1)

end

end A335603.P16379951865412672647

namespace A335603

/-- `A001222(A238745(n+1))*A061395(n+1)` -/
def P16379951865412672647.Spec : Prop :=
  ∀ n, P16379951865412672647.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P11459237924291470520

`A061395(n+1)*A061395(A181819(n+1))`
-/

namespace A335603.P11459237924291470520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A061395 (A181819 (n + 1)).toNat

end

end A335603.P11459237924291470520

namespace A335603

/-- `A061395(n+1)*A061395(A181819(n+1))` -/
def P11459237924291470520.Spec : Prop :=
  ∀ n, P11459237924291470520.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P10878662141289970241

`A061395(n+1)*A061395(A329601(n+1))`
-/

namespace A335603.P10878662141289970241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A061395 (A329601 (n + 1)).toNat

end

end A335603.P10878662141289970241

namespace A335603

/-- `A061395(n+1)*A061395(A329601(n+1))` -/
def P10878662141289970241.Spec : Prop :=
  ∀ n, P10878662141289970241.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P13911232623245213693

`val(A046523(n+1), 2)*A049084(A006530(n+1))`
-/

namespace A335603.P13911232623245213693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ) * A049084 (A006530 (n + 1)).toNat

end

end A335603.P13911232623245213693

namespace A335603

/-- `val(A046523(n+1), 2)*A049084(A006530(n+1))` -/
def P13911232623245213693.Spec : Prop :=
  ∀ n, P13911232623245213693.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P13090602173031755755

`A007814(A046523(n+1))*A049084(A006530(n+1))`
-/

namespace A335603.P13090602173031755755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (n + 1)).toNat * A049084 (A006530 (n + 1)).toNat

end

end A335603.P13090602173031755755

namespace A335603

/-- `A007814(A046523(n+1))*A049084(A006530(n+1))` -/
def P13090602173031755755.Spec : Prop :=
  ∀ n, P13090602173031755755.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P17027066792307759368

`A001222(A238745(n+1))*A049084(A006530(n+1))`
-/

namespace A335603.P17027066792307759368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238745 (n + 1)).toNat * A049084 (A006530 (n + 1)).toNat

end

end A335603.P17027066792307759368

namespace A335603

/-- `A001222(A238745(n+1))*A049084(A006530(n+1))` -/
def P17027066792307759368.Spec : Prop :=
  ∀ n, P17027066792307759368.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P4439307659279885207

`(A243055(n+1)+A055396(n+1))*A001222(A238745(n+1))`
-/

namespace A335603.P4439307659279885207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243055 (n + 1) + A055396 (n + 1)) * A001222 (A238745 (n + 1)).toNat

end

end A335603.P4439307659279885207

namespace A335603

/-- `(A243055(n+1)+A055396(n+1))*A001222(A238745(n+1))` -/
def P4439307659279885207.Spec : Prop :=
  ∀ n, P4439307659279885207.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P4556270267397427641

`A001222(A238745(n+1))*A055396((n+1)/A052126(n+1))`
-/

namespace A335603.P4556270267397427641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238745 (n + 1)).toNat * A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A335603.P4556270267397427641

namespace A335603

/-- `A001222(A238745(n+1))*A055396((n+1)/A052126(n+1))` -/
def P4556270267397427641.Spec : Prop :=
  ∀ n, P4556270267397427641.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P13530668537033651157

`A051903(n+1)*A333352(2*(n+1))`
-/

namespace A335603.P13530668537033651157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) * A333352 (2 * (n + 1))

end

end A335603.P13530668537033651157

namespace A335603

/-- `A051903(n+1)*A333352(2*(n+1))` -/
def P13530668537033651157.Spec : Prop :=
  ∀ n, P13530668537033651157.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P5905025399310907985

`val(A283466(A266645(n+1)), 2)*A061395(n+1)`
-/

namespace A335603.P5905025399310907985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A283466 (A266645 (n + 1)).toNat).toNat 2 : ℤ) * A061395 (n + 1)

end

end A335603.P5905025399310907985

namespace A335603

/-- `val(A283466(A266645(n+1)), 2)*A061395(n+1)` -/
def P5905025399310907985.Spec : Prop :=
  ∀ n, P5905025399310907985.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P369387174846260438

`A056239(A304180(n+1))`
-/

namespace A335603.P369387174846260438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A304180 (n + 1)).toNat

end

end A335603.P369387174846260438

namespace A335603

/-- `A056239(A304180(n+1))` -/
def P369387174846260438.Spec : Prop :=
  ∀ n, P369387174846260438.a n = A335603 (n + 1)

end A335603

/-! ## A335603.P13769458521277735286

`A061395(n+1)*A061395(A293514(n+1))`
-/

namespace A335603.P13769458521277735286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A061395 (A293514 (n + 1)).toNat

end

end A335603.P13769458521277735286

namespace A335603

/-- `A061395(n+1)*A061395(A293514(n+1))` -/
def P13769458521277735286.Spec : Prop :=
  ∀ n, P13769458521277735286.a n = A335603 (n + 1)

end A335603

/-!
# A335604: Number of 9-regular cubic partitions of n.

The programs for A335604, there is no canonical definition to state claims against.
-/

/-! ## A335604.P6104168217765261361

`A002513(n)-A086074(A026533(n))`
-/

namespace A335604.P6104168217765261361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 n - A086074 (A026533 n).toNat

end

end A335604.P6104168217765261361

/-! ## A335604.P10395417967303467445

`A002513(n)-A103675(A018012(n))`
-/

namespace A335604.P10395417967303467445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 n - A103675 (A018012 n).toNat

end

end A335604.P10395417967303467445

/-! ## A335604.P14405001075982222256

`A002513(n)-A102679(A181153(n))`
-/

namespace A335604.P14405001075982222256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002513 n - A102679 (A181153 n).toNat

end

end A335604.P14405001075982222256

/-!
# A335606: The number of fixed n-ominoes with a convex hull of width 3.

The programs for A335606, there is no canonical definition to state claims against.
-/

/-! ## A335606.P13622243474580217626

`A308359(∑[n+2]+4)`
-/

namespace A335606.P13622243474580217626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308359 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A335606.P13622243474580217626

/-! ## A335606.P18183189165571087387

`record[A010054(n)*A308359(n+3)]`
-/

namespace A335606.P18183189165571087387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A308359 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335606.P18183189165571087387

/-! ## A335606.P8041690398438534841

`A308359(A167614(n+1))+A025442(n)`
-/

namespace A335606.P8041690398438534841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308359 (A167614 (n + 1)).toNat + A025442 n

end

end A335606.P8041690398438534841

/-! ## A335606.P8038446971927638012

`A308359(A167614(n+1))+A025443(n)`
-/

namespace A335606.P8038446971927638012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308359 (A167614 (n + 1)).toNat + A025443 n

end

end A335606.P8038446971927638012

/-! ## A335606.P1601904958014001623

`A308359(A167614(n+1))+A137579(n)`
-/

namespace A335606.P1601904958014001623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308359 (A167614 (n + 1)).toNat + A137579 n

end

end A335606.P1601904958014001623

/-!
# A335607: Rectangular array by antidiagonals: T(n,k) = floor(n + k*r), where r = sqrt(2).

The programs for A335607, there is no canonical definition to state claims against.
-/

/-! ## A335607.P11370121193010455956

`A057354(C(comp[∑[n]]-n, 2)-(n+1))+∑[char[∑[n+1]]]`
-/

namespace A335607.P11370121193010455956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A335607.P11370121193010455956

/-! ## A335607.P7047098690138158193

`A047381(C(comp[∑[n]]-n, 2)-n)+n-C(∑[char[∑[n]]], 2)`
-/

namespace A335607.P7047098690138158193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047381 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A335607.P7047098690138158193

/-! ## A335607.P11468727229224470077

`A001951(C(comp[∑[n]]-n, 2)-(n+1))+n-C(∑[char[∑[n]]], 2)`
-/

namespace A335607.P11468727229224470077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A335607.P11468727229224470077

/-! ## A335607.P16428072186091181064

`A057354(A025581(n))+∑[char[∑[n+1]]]`
-/

namespace A335607.P16428072186091181064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A025581 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A335607.P16428072186091181064

/-! ## A335607.P12127671077786705228

`A002262(n)+A001951(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A335607.P12127671077786705228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A001951 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A335607.P12127671077786705228

/-! ## A335607.P16303907185872641033

`A002262(n)+A001951(A025581(n))`
-/

namespace A335607.P16303907185872641033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A001951 (A025581 n).toNat

end

end A335607.P16303907185872641033

/-! ## A335607.P7043904275742559143

`A057354(log2(A130321(n)))+A003056(n)`
-/

namespace A335607.P7043904275742559143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat + A003056 n

end

end A335607.P7043904275742559143

/-! ## A335607.P14686843590324394541

`A002262(n)+A001951(A025660(n+1))`
-/

namespace A335607.P14686843590324394541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A001951 (A025660 (n + 1)).toNat

end

end A335607.P14686843590324394541

/-! ## A335607.P17195972106349263784

`A025668(n+1)+A001951(A025581(n))`
-/

namespace A335607.P17195972106349263784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1) + A001951 (A025581 n).toNat

end

end A335607.P17195972106349263784

/-! ## A335607.P17259708359521284973

`A001951(A025581(n))+A001222(A059268(n))`
-/

namespace A335607.P17259708359521284973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A025581 n).toNat + A001222 (A059268 n).toNat

end

end A335607.P17259708359521284973

/-!
# A335608: Number of sets (in the Hausdorff metric geometry) at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 2) missing one edge.

The programs for A335608, the canonical program `A335608.P4109684467009832344` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335608 has offset 2).

The definition of A335608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335608.P4109684467009832344

`3*7^(n+1)-5*3^(n+1)+2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335608

/-- `3*7^(n+1)-5*3^(n+1)+2` -/
def P4109684467009832344.Spec : Prop :=
  ∀ n, P4109684467009832344.a n = A335608 (n + 2)

theorem P4109684467009832344.correct : P4109684467009832344.Spec := by
  intro n
  simp only [A335608, Nat.add_sub_cancel]

end A335608

/-! ## A335608.P17215887332390997220

`8*(A346796(n+1)+A016212(n))`
-/

namespace A335608.P17215887332390997220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A346796 (n + 1) + A016212 n)

end

end A335608.P17215887332390997220

namespace A335608

/-- `8*(A346796(n+1)+A016212(n))` -/
def P17215887332390997220.Spec : Prop :=
  ∀ n, P17215887332390997220.a n = A335608 (n + 2)

end A335608

/-! ## A335608.P14360247149855650550

`A340898(n+4)%Δ[A058482(n+1)]`
-/

namespace A335608.P14360247149855650550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340898 (n + 4)) (f1 (n + 1) - f1 n)

end

end A335608.P14360247149855650550

namespace A335608

/-- `A340898(n+4)%Δ[A058482(n+1)]` -/
def P14360247149855650550.Spec : Prop :=
  ∀ n, P14360247149855650550.a n = A335608 (n + 2)

end A335608

/-!
# A335609: Number of sets (in the Hausdorff metric geometry) at each location between two sets defined by a K(4,n) (with n at least 2) complete bipartite graph missing one edge.

The programs for A335609, the canonical program `A335609.P1186962440972616815` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335609 has offset 2).

The definition of A335609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335609.P1186962440972616815

`7*15^(n+1)-16*7^(n+1)+4*3^(n+2)-3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335609

/-- `7*15^(n+1)-16*7^(n+1)+4*3^(n+2)-3` -/
def P1186962440972616815.Spec : Prop :=
  ∀ n, P1186962440972616815.a n = A335609 (n + 2)

theorem P1186962440972616815.correct : P1186962440972616815.Spec := by
  intro n
  simp only [A335609, Nat.add_sub_cancel]

end A335609

/-!
# A335612: Number of sets (in the Hausdorff metric geometry) at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 3) missing two edges, where the removed edges are incident to the same vertex in the three point part.

The programs for A335612, the canonical program `A335612.P773751551314279740` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335612 has offset 3).

The definition of A335612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335612.P773751551314279740

`9*7^(n+1)-11*3^(n+1)+2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335612

/-- `9*7^(n+1)-11*3^(n+1)+2` -/
def P773751551314279740.Spec : Prop :=
  ∀ n, P773751551314279740.a n = A335612 (n + 3)

theorem P773751551314279740.correct : P773751551314279740.Spec := by
  intro n
  simp only [A335612, Nat.add_sub_cancel]

end A335612

/-!
# A335613: Number of sets (in the Hausdorff metric geometry) at each location between two sets defined by a complete bipartite graph K(4,n) (with n at least 3) missing two edges, where the removed edges are incident to the same vertex in the four point part.

The programs for A335613, the canonical program `A335613.P15049444402921225697` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335613 has offset 3).

The definition of A335613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335613.P15049444402921225697

`49*15^(n+1)-76*7^(n+1)+10*3^(n+2)-3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335613

/-- `49*15^(n+1)-76*7^(n+1)+10*3^(n+2)-3` -/
def P15049444402921225697.Spec : Prop :=
  ∀ n, P15049444402921225697.a n = A335613 (n + 3)

theorem P15049444402921225697.correct : P15049444402921225697.Spec := by
  intro n
  simp only [A335613, Nat.add_sub_cancel]

end A335613

/-!
# A335616: a(n) is twice the number of partitions of n into consecutive parts, minus the number of partitions of n into consecutive parts that contain 1 as a part.

The programs for A335616, the canonical program `A335616.P11269408438136298047` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335616 has offset 1).

The definition of A335616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335616.P11269408438136298047

`A054844(n+1)-A010054(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A335616

/-- `A054844(n+1)-A010054(n+1)` -/
def P11269408438136298047.Spec : Prop :=
  ∀ n, P11269408438136298047.a n = A335616 (n + 1)

theorem P11269408438136298047.correct : P11269408438136298047.Spec := by
  intro n
  simp only [A335616, Nat.add_sub_cancel]

end A335616

/-! ## A335616.P14694895007751320728

`2*A136107(n+1)+A010054(n+1)`
-/

namespace A335616.P14694895007751320728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136107 (n + 1) + A010054 (n + 1)

end

end A335616.P14694895007751320728

namespace A335616

/-- `2*A136107(n+1)+A010054(n+1)` -/
def P14694895007751320728.Spec : Prop :=
  ∀ n, P14694895007751320728.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P7833682069283163004

`2*A001227(n+1)-A010054(n+1)`
-/

namespace A335616.P7833682069283163004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001227 (n + 1) - A010054 (n + 1)

end

end A335616.P7833682069283163004

namespace A335616

/-- `2*A001227(n+1)-A010054(n+1)` -/
def P7833682069283163004.Spec : Prop :=
  ∀ n, P7833682069283163004.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P14084998751484939902

`2*∑{d}[n+1, #%2]-char[∑[n-1]]`
-/

namespace A335616.P14084998751484939902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ d ∈ Nat.divisors (f1 n), d % 2) : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A335616.P14084998751484939902

namespace A335616

/-- `2*∑{d}[n+1, #%2]-char[∑[n-1]]` -/
def P14084998751484939902.Spec : Prop :=
  ∀ n, P14084998751484939902.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P300055796531606126

`2*A069283(n+1)+2-char[∑[n-1]]`
-/

namespace A335616.P300055796531606126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069283 (n + 1) + (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A335616.P300055796531606126

namespace A335616

/-- `2*A069283(n+1)+2-char[∑[n-1]]` -/
def P300055796531606126.Spec : Prop :=
  ∀ n, P300055796531606126.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P14718067094638367681

`A054844(n+1)-A023531(n)`
-/

namespace A335616.P14718067094638367681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - A023531 n

end

end A335616.P14718067094638367681

namespace A335616

/-- `A054844(n+1)-A023531(n)` -/
def P14718067094638367681.Spec : Prop :=
  ∀ n, P14718067094638367681.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P7473079354959755031

`A136107(n+1)+A001227(n+1)`
-/

namespace A335616.P7473079354959755031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (n + 1) + A001227 (n + 1)

end

end A335616.P7473079354959755031

namespace A335616

/-- `A136107(n+1)+A001227(n+1)` -/
def P7473079354959755031.Spec : Prop :=
  ∀ n, P7473079354959755031.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P17175240708750361542

`A136107(n+1)+A000005(A000265(n+1))`
-/

namespace A335616.P17175240708750361542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (n + 1) + A000005 (A000265 (n + 1)).toNat

end

end A335616.P17175240708750361542

namespace A335616

/-- `A136107(n+1)+A000005(A000265(n+1))` -/
def P17175240708750361542.Spec : Prop :=
  ∀ n, P17175240708750361542.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P9483130017714066393

`A000005(2*A000265(n+1))-char[A000096(n)]`
-/

namespace A335616.P9483130017714066393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A000265 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A335616.P9483130017714066393

namespace A335616

/-- `A000005(2*A000265(n+1))-char[A000096(n)]` -/
def P9483130017714066393.Spec : Prop :=
  ∀ n, P9483130017714066393.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P16259743058505056205

`A001227(n+1)+A003056(n)-A238005(n+1)`
-/

namespace A335616.P16259743058505056205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A003056 n - A238005 (n + 1))

end

end A335616.P16259743058505056205

namespace A335616

/-- `A001227(n+1)+A003056(n)-A238005(n+1)` -/
def P16259743058505056205.Spec : Prop :=
  ∀ n, P16259743058505056205.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P14968537780937705712

`A001227(n+1)+A054844(n+1)-A054843(n+1)`
-/

namespace A335616.P14968537780937705712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A054844 (n + 1) - A054843 (n + 1))

end

end A335616.P14968537780937705712

namespace A335616

/-- `A001227(n+1)+A054844(n+1)-A054843(n+1)` -/
def P14968537780937705712.Spec : Prop :=
  ∀ n, P14968537780937705712.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P5866407009092591281

`A136107(n+1)+Δ[A060831(n)]`
-/

namespace A335616.P5866407009092591281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (n + 1) + (f1 (n + 1) - f1 n)

end

end A335616.P5866407009092591281

namespace A335616

/-- `A136107(n+1)+Δ[A060831(n)]` -/
def P5866407009092591281.Spec : Prop :=
  ∀ n, P5866407009092591281.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P7691928873361608814

`Δ[2*A060831(n)-A003056(n)]`
-/

namespace A335616.P7691928873361608814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060831 n - A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335616.P7691928873361608814

namespace A335616

/-- `Δ[2*A060831(n)-A003056(n)]` -/
def P7691928873361608814.Spec : Prop :=
  ∀ n, P7691928873361608814.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P792591929848544646

`A069733(2*(n+1))-A023531(n)`
-/

namespace A335616.P792591929848544646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (2 * (n + 1)) - A023531 n

end

end A335616.P792591929848544646

namespace A335616

/-- `A069733(2*(n+1))-A023531(n)` -/
def P792591929848544646.Spec : Prop :=
  ∀ n, P792591929848544646.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P8454022876842750078

`A069733(2*(n+1))-Δ[A003056(n)]`
-/

namespace A335616.P8454022876842750078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A335616.P8454022876842750078

namespace A335616

/-- `A069733(2*(n+1))-Δ[A003056(n)]` -/
def P8454022876842750078.Spec : Prop :=
  ∀ n, P8454022876842750078.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P3461390111613300598

`A069733(2*(n+1))-Δ[A002024(n+1)]`
-/

namespace A335616.P3461390111613300598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A335616.P3461390111613300598

namespace A335616

/-- `A069733(2*(n+1))-Δ[A002024(n+1)]` -/
def P3461390111613300598.Spec : Prop :=
  ∀ n, P3461390111613300598.a n = A335616 (n + 1)

end A335616

/-! ## A335616.P8222478572857737556

`A000005(2*A000265(n+1))-A038309(n)%2`
-/

namespace A335616.P8222478572857737556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A000265 (n + 1)).toNat - Int.tmod (A038309 n) 2

end

end A335616.P8222478572857737556

namespace A335616

/-- `A000005(2*A000265(n+1))-A038309(n)%2` -/
def P8222478572857737556.Spec : Prop :=
  ∀ n, P8222478572857737556.a n = A335616 (n + 1)

end A335616

/-!
# A335617: Let c(1) = c(2) = 0, c(3) = 1, and c(n + 3) = (c(n) - 2*c(n + 1) + c(n + 2))/n, then a(n) = ceiling (c(n)).

The programs for A335617, there is no canonical definition to state claims against.
-/

/-! ## A335617.P11163576422625290777

`A267708(A141214(n)-floor(2*n/3))`
-/

namespace A335617.P11163576422625290777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 (A141214 n - ⌊2 * ((n : ℚ) / 3)⌋).toNat

end

end A335617.P11163576422625290777

/-! ## A335617.P1522279848358926585

`A118175(A141214(n)+A028293(n))`
-/

namespace A335617.P1522279848358926585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (A141214 n + A028293 n).toNat

end

end A335617.P1522279848358926585

/-! ## A335617.P3149653124838431370

`A118175(A273915(n)+A141214(n))`
-/

namespace A335617.P3149653124838431370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (A273915 n + A141214 n).toNat

end

end A335617.P3149653124838431370

/-! ## A335617.P1653742717158728850

`A118175(A275299(n)+A141214(n))`
-/

namespace A335617.P1653742717158728850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (A275299 n + A141214 n).toNat

end

end A335617.P1653742717158728850

/-! ## A335617.P13532521133015028378

`A118175(A282162(n)+A141214(n))`
-/

namespace A335617.P13532521133015028378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (A282162 n + A141214 n).toNat

end

end A335617.P13532521133015028378

/-!
# A335618: E.g.f.: Sum_{n>=0} Product_{k=1..n} tan(2*k*x).

The programs for A335618, there is no canonical definition to state claims against.
-/

/-! ## A335618.P17395649485444095278

`2^n*A177382(n)`
-/

namespace A335618.P17395649485444095278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A177382 n

end

end A335618.P17395649485444095278

/-! ## A335618.P9538477790897413973

`(A000079(n)*A177382(n))%A064071(n)`
-/

namespace A335618.P9538477790897413973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n * A177382 n) (A064071 n)

end

end A335618.P9538477790897413973

/-! ## A335618.P10320863107398144796

`or(A000079(n)*A177382(n), A000007(n))`
-/

namespace A335618.P10320863107398144796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n * A177382 n) (A000007 n)

end

end A335618.P10320863107398144796

/-! ## A335618.P1433740176688162872

`A000079(n)*A177382(n)*A014963(gcd(n, n+1))`
-/

namespace A335618.P1433740176688162872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A177382 n * A014963 (Nat.gcd n (n + 1))

end

end A335618.P1433740176688162872

/-! ## A335618.P4976559499566256337

`A000079(n)*A177382(n)*A007318(A007318(A007318(n)²))`
-/

namespace A335618.P4976559499566256337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A177382 n * A007318 (A007318 (A007318 n ^ 2).toNat).toNat

end

end A335618.P4976559499566256337

/-!
# A335619: Number of fundamentally different graceful labelings of the complete bipartite graph K_{n,n}.

The programs for A335619, there is no canonical definition to state claims against.
-/

/-! ## A335619.P422117198797461334

`A273013(n+1)+A100283(n)`
-/

namespace A335619.P422117198797461334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (n + 1) + A100283 n

end

end A335619.P422117198797461334

/-! ## A335619.P16503628657175358656

`A273013(n+1)+A144603(n)`
-/

namespace A335619.P16503628657175358656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (n + 1) + A144603 n

end

end A335619.P16503628657175358656

/-! ## A335619.P2019997394315572693

`A273013(n+1)+A163581(n)`
-/

namespace A335619.P2019997394315572693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (n + 1) + A163581 n

end

end A335619.P2019997394315572693

/-! ## A335619.P11788365846532125442

`A273013(n+1)+char[A329926(n+1)]`
-/

namespace A335619.P11788365846532125442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329926 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A335619.P11788365846532125442

/-! ## A335619.P11457072073064112585

`A273013(n+1)+char[A028310(3*(n+1))]`
-/

namespace A335619.P11457072073064112585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273013 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A335619.P11457072073064112585

/-!
# A335620: The depth (number of inherent divisions plus 1 for the initial integer) of the continued fraction form of the rational number n/pi(n), where n is an integer >= 2 and pi(n) is the number of primes <= n.

The programs for A335620, there is no canonical definition to state claims against.
-/

/-! ## A335620.P12441616311557072904

`A107435(A230980(n+2)+A000217(n+1))`
-/

namespace A335620.P12441616311557072904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A230980 (n + 2) + A000217 (n + 1)).toNat

end

end A335620.P12441616311557072904

/-! ## A335620.P7170425577234141188

`A001222(A332840(n)+A031317(n+1))`
-/

namespace A335620.P7170425577234141188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A332840 n + A031317 (n + 1)).toNat

end

end A335620.P7170425577234141188

/-! ## A335620.P3890230968226332480

`A304092(A350849(n+1)+A000079(n))`
-/

namespace A335620.P3890230968226332480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (A350849 (n + 1) + A000079 n).toNat

end

end A335620.P3890230968226332480

/-! ## A335620.P119264307965284713

`A001222(or(A003842(n), A188947(3*n+2)))`
-/

namespace A335620.P119264307965284713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A003842 n) (A188947 (3 * n + 2))).toNat

end

end A335620.P119264307965284713

/-! ## A335620.P17649050710835962315

`A001221(xor(A026300(5*(n+1)), A084536(3*n+5)))`
-/

namespace A335620.P17649050710835962315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A026300 (5 * (n + 1))) (A084536 (3 * n + 5))).toNat

end

end A335620.P17649050710835962315

/-!
# A335621: Number of integer-sided triangles with perimeter n such that the sum of each pair of side lengths is squarefree.

The programs for A335621, there is no canonical definition to state claims against.
-/

/-! ## A335621.P12282821995089093172

`A134023(A105291(n)+A105202(n))`
-/

namespace A335621.P12282821995089093172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (A105291 n + A105202 n).toNat

end

end A335621.P12282821995089093172

/-!
# A335622: Number of integer-sided triangles with perimeter n such that the average of each pair of side lengths is prime.

The programs for A335622, there is no canonical definition to state claims against.
-/

/-! ## A335622.P13318756560097882615

`A001221(A143619(2*(n+1)))%A059815(n+1)`
-/

namespace A335622.P13318756560097882615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (A143619 (2 * (n + 1))).toNat) (A059815 (n + 1))

end

end A335622.P13318756560097882615

/-! ## A335622.P10995829594247297018

`A353672(∑[A309879(n)*A352064(n+1)+1])`
-/

namespace A335622.P10995829594247297018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309879 n * A352064 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335622.P10995829594247297018

/-! ## A335622.P4182202506610938323

`and(A003849(A169942(n+4)), A024790(n+1))`
-/

namespace A335622.P4182202506610938323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003849 (A169942 (n + 4)).toNat) (A024790 (n + 1))

end

end A335622.P4182202506610938323

/-! ## A335622.P1551511847796990158

`A008966(A360248(2*(n+1))+A124080(2*(n+1)))`
-/

namespace A335622.P1551511847796990158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A360248 (2 * (n + 1)) + A124080 (2 * (n + 1))).toNat

end

end A335622.P1551511847796990158

/-! ## A335622.P14534917857566918964

`A352103(A143208(3*(n+1)))%A326975(n+4)`
-/

namespace A335622.P14534917857566918964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352103 (A143208 (3 * (n + 1))).toNat) (A326975 (n + 4))

end

end A335622.P14534917857566918964

/-!
# A335623: Perimeters of integer-sided triangles such that the average of each pair of side lengths is prime.

The programs for A335623, there is no canonical definition to state claims against.
-/

/-! ## A335623.P2788796950731189144

`A020725(lt[A335622(2*(n+2)), A335622(n+1)])`
-/

namespace A335623.P2788796950731189144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335622 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335623.P2788796950731189144

/-! ## A335623.P6726166220744583118

`A035679(n+1)+lt[A035678(3*(n+1)), A035661(n+1)]`
-/

namespace A335623.P6726166220744583118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035678 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035679 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A335623.P6726166220744583118

/-!
# A335625: G.f. A(x) satisfies: Sum_{n>=0} A(x)^(n*(n+1)/2) * x^n = Sum_{n>=0} A(x)^((n+1)^2) * x^(2*n).

The programs for A335625, there is no canonical definition to state claims against.
-/

/-! ## A335625.P13976111006390370248

`A114999(A011924(n)+1)`
-/

namespace A335625.P13976111006390370248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114999 (A011924 n + 1).toNat

end

end A335625.P13976111006390370248

/-! ## A335625.P17740424805589025667

`A360674(A048096(n+1))`
-/

namespace A335625.P17740424805589025667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360674 (A048096 (n + 1)).toNat

end

end A335625.P17740424805589025667

/-! ## A335625.P2768711146821296039

`A141001(A325928(n))%A057679(n+1)`
-/

namespace A335625.P2768711146821296039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141001 (A325928 n).toNat) (A057679 (n + 1))

end

end A335625.P2768711146821296039

/-!
# A335626: Expansion of e.g.f. Product_{k>0} 1/(1-sin(x)^k).

The programs for A335626, there is no canonical definition to state claims against.
-/

/-! ## A335626.P2972949671687217244

`round(sqrt(A191179(floor(8^(n-1))+1)))`
-/

namespace A335626.P2972949671687217244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A191179 (⌊(8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat : ℝ))

end

end A335626.P2972949671687217244

/-! ## A335626.P17842118132711442230

`A008617(n)+A008616(A182017(n))`
-/

namespace A335626.P17842118132711442230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n + A008616 (A182017 n).toNat

end

end A335626.P17842118132711442230

/-!
# A335627: Expansion of e.g.f. Product_{k>0} 1/(1-tan(x)^k).

The programs for A335627, there is no canonical definition to state claims against.
-/

/-! ## A335627.P15715707535168038039

`∏{p}[A033536(n), A084684(#)]`
-/

namespace A335627.P15715707535168038039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A084684 p

end

end A335627.P15715707535168038039

/-! ## A335627.P9812862455214547714

`A051221(A336417(n))+A002873(n)`
-/

namespace A335627.P9812862455214547714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (A336417 n).toNat + A002873 n

end

end A335627.P9812862455214547714

/-!
# A335628: Number of regions after generation n of Conant's dissection of a square when dissected with both orthogonal and diagonal lines and where the starting edges rotate clockwise around the square and the dissection halves in size every second generation.

The programs for A335628, there is no canonical definition to state claims against.
-/

/-! ## A335628.P17335154072842079791

`ceil(sqrt(A102342(3^n+1)/2))`
-/

namespace A335628.P17335154072842079791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A102342 (3 ^ n + 1) : ℚ) / 2 : ℝ)⌉

end

end A335628.P17335154072842079791

/-! ## A335628.P465569113767122489

`A002024(floor((10^n-9^n)^(2/4))+1)`
-/

namespace A335628.P465569113767122489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (⌊((10 ^ n : ℤ) - (9 ^ n : ℤ) : ℝ) ^ ((2 : ℚ) / 4 : ℝ)⌋ + 1).toNat

end

end A335628.P465569113767122489

/-! ## A335628.P2841700898429953478

`A116939(A030186(n))`
-/

namespace A335628.P2841700898429953478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A030186 n).toNat

end

end A335628.P2841700898429953478

/-! ## A335628.P5204114257474727969

`A257639(A099448(n))`
-/

namespace A335628.P5204114257474727969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A099448 n).toNat

end

end A335628.P5204114257474727969

/-! ## A335628.P2940420608537756290

`A232746(A124820(n))`
-/

namespace A335628.P2940420608537756290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A124820 n).toNat

end

end A335628.P2940420608537756290

/-!
# A335629: Expansion of e.g.f. Product_{k>0} (1+sin(x)^k).

The programs for A335629, there is no canonical definition to state claims against.
-/

/-! ## A335629.P12886167949885499946

`A126613(A155580(n))`
-/

namespace A335629.P12886167949885499946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126613 (A155580 n).toNat

end

end A335629.P12886167949885499946

/-! ## A335629.P2875153965139946916

`A014085(A346646(n))-1`
-/

namespace A335629.P2875153965139946916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A346646 n).toNat - 1

end

end A335629.P2875153965139946916

/-!
# A335630: Expansion of e.g.f. Product_{k>0} (1+tan(x)^k).

The programs for A335630, there is no canonical definition to state claims against.
-/

/-! ## A335630.P10423919315798004533

`A348045(∏[A080512(n+1)])`
-/

namespace A335630.P10423919315798004533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335630.P10423919315798004533

/-! ## A335630.P15055814204475301932

`A263714(A215524(n)+ceil(n/2))`
-/

namespace A335630.P15055814204475301932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263714 (A215524 n + ⌈(n : ℚ) / 2⌉).toNat

end

end A335630.P15055814204475301932

/-!
# A335633: Number of ordered ways of writing the n-th n-gonal number as a sum of n n-gonal numbers (with 0's allowed).

The programs for A335633, there is no canonical definition to state claims against.
-/

/-! ## A335633.P17567199897155149881

`lcm(A109613(n), A329200(A268648(n)))`
-/

namespace A335633.P17567199897155149881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109613 n) (A329200 (A268648 n).toNat)

end

end A335633.P17567199897155149881

/-!
# A335634: Number of ordered ways of writing the n-th n-gonal number as a sum of n nonzero n-gonal numbers.

The programs for A335634, there is no canonical definition to state claims against.
-/

/-! ## A335634.P1825807323282239171

`A173679(C(A052330(n), 5))`
-/

namespace A335634.P1825807323282239171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 (Nat.choose (A052330 n).toNat 5)

end

end A335634.P1825807323282239171

/-! ## A335634.P12475402787889756549

`abs(A131505(A038196(n)!))`
-/

namespace A335634.P12475402787889756549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131505 (Nat.factorial (A038196 n).toNat)|

end

end A335634.P12475402787889756549

/-! ## A335634.P8904627835653944941

`A356163(A063443(n))+30*C(n, 5)`
-/

namespace A335634.P8904627835653944941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (A063443 n).toNat + (30 * Nat.choose n 5 : ℤ)

end

end A335634.P8904627835653944941

/-!
# A335635: Expansion of e.g.f. Product_{k>0} 1/(1 - sin(x)^k / k).

The programs for A335635, there is no canonical definition to state claims against.
-/

/-! ## A335635.P16468916390180449187

`A008617(∑[∏[ceil(record[sqrt(xor(3, n))])]])`
-/

namespace A335635.P16468916390180449187
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335635.P16468916390180449187

/-! ## A335635.P14567894111899540776

`A271928(a(n-1)+6)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A335635.P14567894111899540776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A271928 (a (n - 1) + 6).toNat

end

end A335635.P14567894111899540776

/-!
# A335636: Expansion of e.g.f. Product_{k>0} 1/(1 - tan(x)^k / k).

The programs for A335636, there is no canonical definition to state claims against.
-/

/-! ## A335636.P6785098752437735879

`A002264(record[n*a(n-1)]+1)` with `a(0)=2, a(1)=3, a(2)=0, a(3)=2`
-/

namespace A335636.P6785098752437735879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 0, 2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A335636.P6785098752437735879

/-! ## A335636.P15192290901801895931

`Δ[A002264(∑[(n+1)*a(n-1)]+1)]` with `a(0)=0, a(1)=4, a(2)=2`
-/

namespace A335636.P15192290901801895931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 2] fun n f2 =>
  (n + 1) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335636.P15192290901801895931

/-!
# A335637: Expansion of e.g.f. Product_{k>0} (1 + sin(x)^k / k).

The programs for A335637, there is no canonical definition to state claims against.
-/

/-! ## A335637.P1507804330933245687

`A219046(A001405(n)-A065339(n+1))`
-/

namespace A335637.P1507804330933245687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219046 (A001405 n - A065339 (n + 1)).toNat

end

end A335637.P1507804330933245687

/-! ## A335637.P18341449554159012028

`or(A038110(n+1), A097203(A001586(n)))`
-/

namespace A335637.P18341449554159012028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038110 (n + 1)) (A097203 (A001586 n).toNat)

end

end A335637.P18341449554159012028

/-! ## A335637.P10943375158391887764

`A219046(A001405(n)-A038189(2*(n+1)))`
-/

namespace A335637.P10943375158391887764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219046 (A001405 n - A038189 (2 * (n + 1))).toNat

end

end A335637.P10943375158391887764

/-!
# A335638: Expansion of e.g.f. Product_{k>0} (1 + tan(x)^k / k).

The programs for A335638, there is no canonical definition to state claims against.
-/

/-! ## A335638.P12751262315461321093

`A122642(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A335638.P12751262315461321093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 7] fun n a =>
  A122642 (a (n - 1) + 1).toNat

end

end A335638.P12751262315461321093

/-! ## A335638.P8051959070350695770

`A329395(A295504(n))`
-/

namespace A335638.P8051959070350695770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (A295504 n).toNat

end

end A335638.P8051959070350695770

/-!
# A335639: Sum of the positive differences of the cubed parts in each partition of n into two parts.

The programs for A335639, the canonical program `A335639.P1945513865759652654` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335639 has offset 1).

The definition of A335639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335639.P1945513865759652654

`∑[n^3-ceil(n/2)^3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335639

/-- `∑[n^3-ceil(n/2)^3]` -/
def P1945513865759652654.Spec : Prop :=
  ∀ n, P1945513865759652654.a n = A335639 (n + 1)

theorem P1945513865759652654.correct : P1945513865759652654.Spec := by
  intro n
  simp only [A335639, Nat.add_sub_cancel]

end A335639

/-! ## A335639.P13598435108017432062

`∑[n]²-(∑[n]%(n+1))^3-A163102(A004526(n))`
-/

namespace A335639.P13598435108017432062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) ^ 3 : ℕ) : ℤ) - A163102 (A004526 n).toNat

end

end A335639.P13598435108017432062

namespace A335639

/-- `∑[n]²-(∑[n]%(n+1))^3-A163102(A004526(n))` -/
def P13598435108017432062.Spec : Prop :=
  ∀ n, P13598435108017432062.a n = A335639 (n + 1)

end A335639

/-! ## A335639.P1466731413499493736

`A294287(n+1)-A163102(A004526(n))`
-/

namespace A335639.P1466731413499493736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294287 (n + 1) - A163102 (A004526 n).toNat

end

end A335639.P1466731413499493736

namespace A335639

/-- `A294287(n+1)-A163102(A004526(n))` -/
def P1466731413499493736.Spec : Prop :=
  ∀ n, P1466731413499493736.a n = A335639 (n + 1)

end A335639

/-! ## A335639.P412511477403502770

`A294270(n+1)-A163102(n-A004526(n))`
-/

namespace A335639.P412511477403502770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294270 (n + 1) - A163102 ((n : ℤ) - A004526 n).toNat

end

end A335639.P412511477403502770

namespace A335639

/-- `A294270(n+1)-A163102(n-A004526(n))` -/
def P412511477403502770.Spec : Prop :=
  ∀ n, P412511477403502770.a n = A335639 (n + 1)

end A335639

/-! ## A335639.P12993729053800097237

`∑[n]²-A317714(n+2)`
-/

namespace A335639.P12993729053800097237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A317714 (n + 2)

end

end A335639.P12993729053800097237

namespace A335639

/-- `∑[n]²-A317714(n+2)` -/
def P12993729053800097237.Spec : Prop :=
  ∀ n, P12993729053800097237.a n = A335639 (n + 1)

end A335639

/-! ## A335639.P9664735744004737443

`∑[n]²-A142150(n+1)^3-A163102(A004526(n))`
-/

namespace A335639.P9664735744004737443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A142150 (n + 1) ^ 3 - A163102 (A004526 n).toNat

end

end A335639.P9664735744004737443

namespace A335639

/-- `∑[n]²-A142150(n+1)^3-A163102(A004526(n))` -/
def P9664735744004737443.Spec : Prop :=
  ∀ n, P9664735744004737443.a n = A335639 (n + 1)

end A335639

/-! ## A335639.P13611274408905979101

`((n²+n)/2)²-A001971(A097063(n+1))`
-/

namespace A335639.P13611274408905979101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n : ℚ) / 2) ^ 2 - (A001971 (A097063 (n + 1)).toNat : ℚ)

end

end A335639.P13611274408905979101

namespace A335639

/-- `((n²+n)/2)²-A001971(A097063(n+1))` -/
def P13611274408905979101.Spec : Prop :=
  ∀ n, P13611274408905979101.a n = (A335639 (n + 1) : ℚ)

end A335639

/-! ## A335639.P9316444450258337216

`A176283(A194274(n))-1`
-/

namespace A335639.P9316444450258337216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176283 (A194274 n).toNat - 1

end

end A335639.P9316444450258337216

namespace A335639

/-- `A176283(A194274(n))-1` -/
def P9316444450258337216.Spec : Prop :=
  ∀ n, P9316444450258337216.a n = A335639 (n + 1)

end A335639

/-!
# A335640: Numbers k of the form r^2 - t*r*s + s^2, where r, s and t are positive integers, r + s = k and t < r <= s.

The programs for A335640, there is no canonical definition to state claims against.
-/

/-! ## A335640.P17456418263446694719

`lt[A276086(A055016(n)), n]`
-/

namespace A335640.P17456418263446694719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A055016 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335640.P17456418263446694719

/-! ## A335640.P2737303399158355387

`filter[A010448(n+3), A214284(#)]`
-/

namespace A335640.P2737303399158355387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010448 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214284 (f1 j).toNat = 1) n)

end

end A335640.P2737303399158355387

/-! ## A335640.P3406732031272382750

`filter[A010451(n+3), A214284(#)]`
-/

namespace A335640.P3406732031272382750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010451 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214284 (f1 j).toNat = 1) n)

end

end A335640.P3406732031272382750

/-! ## A335640.P5507805894066281526

`filter[A010454(n+3), A214284(#)]`
-/

namespace A335640.P5507805894066281526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010454 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214284 (f1 j).toNat = 1) n)

end

end A335640.P5507805894066281526

/-! ## A335640.P4797275011046986536

`filter[A010460(n+3), A214284(#)]`
-/

namespace A335640.P4797275011046986536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010460 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214284 (f1 j).toNat = 1) n)

end

end A335640.P4797275011046986536

/-!
# A335641: Number of ordered ways to write 2n+1 as p + x*(9x+7) with p prime and x an integer.

The programs for A335641, there is no canonical definition to state claims against.
-/

/-! ## A335641.P10788837141298788787

`A287170(lcm(A270929(n+1), A333216(n+1)))`
-/

namespace A335641.P10788837141298788787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (Int.lcm (A270929 (n + 1)) (A333216 (n + 1)))

end

end A335641.P10788837141298788787

/-! ## A335641.P13314365908049454918

`A344164(or(n, A140353(n+1)))`
-/

namespace A335641.P13314365908049454918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344164 (Int.lor (n : ℤ) (A140353 (n + 1))).toNat

end

end A335641.P13314365908049454918

/-! ## A335641.P9506937093141822226

`∑{e}[A039930(2*(n+1))+A004593(n+6)+1, #]`
-/

namespace A335641.P9506937093141822226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039930 (2 * (n + 1)) + A004593 (n + 6) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A335641.P9506937093141822226

/-! ## A335641.P12748930068175999409

`A275948(xor(A037270(n), A161532(n)))`
-/

namespace A335641.P12748930068175999409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 (Int.xor (A037270 n) (A161532 n)).toNat

end

end A335641.P12748930068175999409

/-! ## A335641.P13129678930686415321

`A303975(A349398(n+1)+A005899(3*n+2))`
-/

namespace A335641.P13129678930686415321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A349398 (n + 1) + A005899 (3 * n + 2)).toNat

end

end A335641.P13129678930686415321

/-!
# A335642: Expansion of e.g.f. Product_{k>0} 1/(1 - sin(x)^k / k!).

The programs for A335642, there is no canonical definition to state claims against.
-/

/-! ## A335642.P14450368035440755847

`floor(sqrt(A255055(n^n)))`
-/

namespace A335642.P14450368035440755847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A255055 (n ^ n))

end

end A335642.P14450368035440755847

/-! ## A335642.P13310445234694722518

`floor(sqrt(A255056(n^n)))`
-/

namespace A335642.P13310445234694722518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A255056 (n ^ n))

end

end A335642.P13310445234694722518

/-!
# A335643: Expansion of e.g.f. Product_{k>0} 1/(1 - tan(x)^k / k!).

The programs for A335643, there is no canonical definition to state claims against.
-/

/-! ## A335643.P13495085502888834501

`A226190(∑[A203716(n)])`
-/

namespace A335643.P13495085502888834501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335643.P13495085502888834501

/-! ## A335643.P4875113641744652671

`A060384(A080337(n+1))`
-/

namespace A335643.P4875113641744652671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A080337 (n + 1)).toNat

end

end A335643.P4875113641744652671

/-!
# A335646: Irregular table read by rows: row n gives the number of 5-gon to k-gon contacts, with k>=5, for a regular n-gon with all diagonals drawn.

The programs for A335646, there is no canonical definition to state claims against.
-/

/-! ## A335646.P166093813292487201

`A210451(A284428(n))`
-/

namespace A335646.P166093813292487201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 (A284428 n).toNat

end

end A335646.P166093813292487201

/-! ## A335646.P4225972698421617136

`(n+3)*A000120(A184946(3*n+2))`
-/

namespace A335646.P4225972698421617136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000120 (A184946 (3 * n + 2)).toNat

end

end A335646.P4225972698421617136

/-! ## A335646.P14394097007256775583

`A095274(A033886(n)*A095274(n))`
-/

namespace A335646.P14394097007256775583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A033886 n * A095274 n).toNat

end

end A335646.P14394097007256775583

/-! ## A335646.P3376899224355308357

`A007093(n)*A034797(A184944(n))`
-/

namespace A335646.P3376899224355308357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n * A034797 (A184944 n).toNat

end

end A335646.P3376899224355308357

/-! ## A335646.P3608399625949020227

`A206559(n+1)*A210955(A184645(n))`
-/

namespace A335646.P3608399625949020227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206559 (n + 1) * A210955 (A184645 n).toNat

end

end A335646.P3608399625949020227

/-!
# A335647: a(n) = binomial(4*n+1,n+1).

The programs for A335647, the canonical program `A335647.P9165197942605619887` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335647 has offset 0).

The definition of A335647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n+1, n+1)` (program `A335647.P9165197942605619887`, by `A335647.P9165197942605619887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335647.P9165197942605619887

`C(4*n+1, n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335647

/-- `C(4*n+1, n+1)` -/
def P9165197942605619887.Spec : Prop :=
  ∀ n, (P9165197942605619887.a n : ℤ) = A335647 n

theorem P9165197942605619887.correct : P9165197942605619887.Spec := by
  intro n
  simp only [A335647]

end A335647

/-! ## A335647.P9265258860300362603

`A000260(n)*A060544(n+1)`
-/

namespace A335647.P9265258860300362603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A060544 (n + 1)

end

end A335647.P9265258860300362603

namespace A335647

/-- `A000260(n)*A060544(n+1)` -/
def P9265258860300362603.Spec : Prop :=
  ∀ n, P9265258860300362603.a n = A335647 n

end A335647

/-! ## A335647.P13450922065273816023

`A060544(n+1)*A146305(∑[n])`
-/

namespace A335647.P13450922065273816023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) * A146305 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335647.P13450922065273816023

namespace A335647

/-- `A060544(n+1)*A146305(∑[n])` -/
def P13450922065273816023.Spec : Prop :=
  ∀ n, P13450922065273816023.a n = A335647 n

end A335647

/-! ## A335647.P6137343380626904358

`A000260(n)*A017173(A000217(n))`
-/

namespace A335647.P6137343380626904358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A017173 (A000217 n).toNat

end

end A335647.P6137343380626904358

namespace A335647

/-- `A000260(n)*A017173(A000217(n))` -/
def P6137343380626904358.Spec : Prop :=
  ∀ n, P6137343380626904358.a n = A335647 n

end A335647

/-! ## A335647.P11477964625602175758

`A306290(n)/(n+1)`
-/

namespace A335647.P11477964625602175758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306290 n : ℚ) / (n + 1 : ℚ)

end

end A335647.P11477964625602175758

namespace A335647

/-- `A306290(n)/(n+1)` -/
def P11477964625602175758.Spec : Prop :=
  ∀ n, P11477964625602175758.a n = (A335647 n : ℚ)

end A335647

/-! ## A335647.P5170518586085036461

`record[C(lcm(2, n+1)-1, lcm(2, n+2)/2)]`
-/

namespace A335647.P5170518586085036461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.lcm 2 (n + 1) : ℤ) - 1).toNat (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335647.P5170518586085036461

namespace A335647

/-- `record[C(lcm(2, n+1)-1, lcm(2, n+2)/2)]` -/
def P5170518586085036461.Spec : Prop :=
  ∀ n, (P5170518586085036461.a n : ℤ) = A335647 n

end A335647

/-! ## A335647.P6858453628817825718

`record[C(A058281(n+1), n)]`
-/

namespace A335647.P6858453628817825718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A058281 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335647.P6858453628817825718

namespace A335647

/-- `record[C(A058281(n+1), n)]` -/
def P6858453628817825718.Spec : Prop :=
  ∀ n, (P6858453628817825718.a n : ℤ) = A335647 n

end A335647

/-! ## A335647.P13496692268624103101

`record[C(n+1, A324245(n))]`
-/

namespace A335647.P13496692268624103101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A324245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335647.P13496692268624103101

namespace A335647

/-- `record[C(n+1, A324245(n))]` -/
def P13496692268624103101.Spec : Prop :=
  ∀ n, (P13496692268624103101.a n : ℤ) = A335647 n

end A335647

/-! ## A335647.P16211372567429896651

`record[C(A110091(2*n), n)]`
-/

namespace A335647.P16211372567429896651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110091 (2 * n)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335647.P16211372567429896651

namespace A335647

/-- `record[C(A110091(2*n), n)]` -/
def P16211372567429896651.Spec : Prop :=
  ∀ n, (P16211372567429896651.a n : ℤ) = A335647 n

end A335647

/-! ## A335647.P9158471647442987045

`record[C(A206772(n+1), A002024(n+1))]`
-/

namespace A335647.P9158471647442987045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A206772 (n + 1)).toNat (A002024 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335647.P9158471647442987045

namespace A335647

/-- `record[C(A206772(n+1), A002024(n+1))]` -/
def P9158471647442987045.Spec : Prop :=
  ∀ n, (P9158471647442987045.a n : ℤ) = A335647 n

end A335647

/-!
# A335648: Partial sums of A006010.

The programs for A335648, the canonical program `A335648.P1699836471347907622` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335648 has offset 0).

The definition of A335648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335648.P1699836471347907622

`∑[∑[n*ceil(n²/2)]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335648

/-- `∑[∑[n*ceil(n²/2)]]` -/
def P1699836471347907622.Spec : Prop :=
  ∀ n, P1699836471347907622.a n = A335648 n

theorem P1699836471347907622.correct : P1699836471347907622.Spec := by
  intro n
  simp only [A335648]

end A335648

/-! ## A335648.P9905578771872006318

`∑[∑[n*(and(1, n)+n²)]]/2`
-/

namespace A335648.P9905578771872006318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A335648.P9905578771872006318

namespace A335648

/-- `∑[∑[n*(and(1, n)+n²)]]/2` -/
def P9905578771872006318.Spec : Prop :=
  ∀ n, P9905578771872006318.a n = (A335648 n : ℚ)

end A335648

/-! ## A335648.P8149957855596871050

`∑[n*(A080476(n+1)-n)]+a(n-1)` with `a(0)=0`
-/

namespace A335648.P8149957855596871050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A080476 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A335648.P8149957855596871050

namespace A335648

/-- `∑[n*(A080476(n+1)-n)]+a(n-1)` -/
def P8149957855596871050.Spec : Prop :=
  ∀ n, P8149957855596871050.a n = A335648 n

end A335648

/-! ## A335648.P8111187246741139819

`∑[A006010(n+1)]-A006010(n+1)`
-/

namespace A335648.P8111187246741139819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006010 (n + 1)

end

end A335648.P8111187246741139819

namespace A335648

/-- `∑[A006010(n+1)]-A006010(n+1)` -/
def P8111187246741139819.Spec : Prop :=
  ∀ n, P8111187246741139819.a n = A335648 n

end A335648

/-! ## A335648.P4409648446254786289

`∑[∑[A007531(n+1)+lcm(2, n)]]/2`
-/

namespace A335648.P4409648446254786289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 1) + (Nat.lcm 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A335648.P4409648446254786289

namespace A335648

/-- `∑[∑[A007531(n+1)+lcm(2, n)]]/2` -/
def P4409648446254786289.Spec : Prop :=
  ∀ n, P4409648446254786289.a n = (A335648 n : ℚ)

end A335648

/-! ## A335648.P16138140069079424403

`A059859(n+1)+A059859(n)`
-/

namespace A335648.P16138140069079424403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059859 (n + 1) + A059859 n

end

end A335648.P16138140069079424403

namespace A335648

/-- `A059859(n+1)+A059859(n)` -/
def P16138140069079424403.Spec : Prop :=
  ∀ n, P16138140069079424403.a n = A335648 n

end A335648

/-!
# A335649: a(n) is the frequency of multi-pairs in a sequence of multi-set designs with 2 blocks.

The programs for A335649, the canonical program `A335649.P1885497609821891369` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335649 has offset 1).

The definition of A335649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335649.P1885497609821891369

`1/3*A092184(n+1)*(A092184(n+1)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335649

/-- `1/3*A092184(n+1)*(A092184(n+1)-1)` -/
def P1885497609821891369.Spec : Prop :=
  ∀ n, P1885497609821891369.a n = (A335649 (n + 1) : ℚ)

end A335649

/-! ## A335649.P5845819663443296005

`∑[∑[A052530(n)]*A001834(n)]`
-/

namespace A335649.P5845819663443296005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335649.P5845819663443296005

namespace A335649

/-- `∑[∑[A052530(n)]*A001834(n)]` -/
def P5845819663443296005.Spec : Prop :=
  ∀ n, P5845819663443296005.a n = A335649 (n + 1)

end A335649

/-! ## A335649.P9873807054355973543

`∑[Δ[A003500(n)]*A061278(n)]`
-/

namespace A335649.P9873807054355973543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335649.P9873807054355973543

namespace A335649

/-- `∑[Δ[A003500(n)]*A061278(n)]` -/
def P9873807054355973543.Spec : Prop :=
  ∀ n, P9873807054355973543.a n = A335649 (n + 1)

end A335649

/-! ## A335649.P5991587178207491317

`∑[record[A110294(n)]-A001834(n)]`
-/

namespace A335649.P5991587178207491317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335649.P5991587178207491317

namespace A335649

/-- `∑[record[A110294(n)]-A001834(n)]` -/
def P5991587178207491317.Spec : Prop :=
  ∀ n, P5991587178207491317.a n = A335649 (n + 1)

end A335649

/-! ## A335649.P7732835510050610878

`∑[A028230(n+1)-A001834(n)]`
-/

namespace A335649.P7732835510050610878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028230 (n + 1) - A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335649.P7732835510050610878

namespace A335649

/-- `∑[A028230(n+1)-A001834(n)]` -/
def P7732835510050610878.Spec : Prop :=
  ∀ n, P7732835510050610878.a n = A335649 (n + 1)

end A335649

/-! ## A335649.P16654039969970590842

`∑[A110294(2*n)-A001834(n)]`
-/

namespace A335649.P16654039969970590842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110294 (2 * n) - A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335649.P16654039969970590842

namespace A335649

/-- `∑[A110294(2*n)-A001834(n)]` -/
def P16654039969970590842.Spec : Prop :=
  ∀ n, P16654039969970590842.a n = A335649 (n + 1)

end A335649

/-! ## A335649.P5489576291216193240

`∑[2*A001834(n)*A061278(n)]`
-/

namespace A335649.P5489576291216193240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001834 n * A061278 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335649.P5489576291216193240

namespace A335649

/-- `∑[2*A001834(n)*A061278(n)]` -/
def P5489576291216193240.Spec : Prop :=
  ∀ n, P5489576291216193240.a n = A335649 (n + 1)

end A335649

/-! ## A335649.P9706038389677061112

`∑[A001353(Δ[n²])-A001834(n)]`
-/

namespace A335649.P9706038389677061112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335649.P9706038389677061112

namespace A335649

/-- `∑[A001353(Δ[n²])-A001834(n)]` -/
def P9706038389677061112.Spec : Prop :=
  ∀ n, P9706038389677061112.a n = A335649 (n + 1)

end A335649

/-! ## A335649.P17063628854951816119

`A098301(n+1)-A092184(n+1)`
-/

namespace A335649.P17063628854951816119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098301 (n + 1) - A092184 (n + 1)

end

end A335649.P17063628854951816119

namespace A335649

/-- `A098301(n+1)-A092184(n+1)` -/
def P17063628854951816119.Spec : Prop :=
  ∀ n, P17063628854951816119.a n = A335649 (n + 1)

end A335649

/-! ## A335649.P4349177360841921961

`2*A061278(n)*A061278(n+1)`
-/

namespace A335649.P4349177360841921961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061278 n * A061278 (n + 1)

end

end A335649.P4349177360841921961

namespace A335649

/-- `2*A061278(n)*A061278(n+1)` -/
def P4349177360841921961.Spec : Prop :=
  ∀ n, P4349177360841921961.a n = A335649 (n + 1)

end A335649

/-!
# A335650: Numbers that are multiples of 2,3,5, or 7 but not multiples of the product of any combination of 2,3,5, and 7.

The programs for A335650, there is no canonical definition to state claims against.
-/

/-! ## A335650.P17528418300012848844

`eq[2*A216983(n+1), A090088(n+1)]`
-/

namespace A335650.P17528418300012848844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335650.P17528418300012848844

/-! ## A335650.P18106636649641629098

`eq[gcd(n, 7*(n+30)), A020639(A233583(n+1))]`
-/

namespace A335650.P18106636649641629098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (7 * (n + 30))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335650.P18106636649641629098

/-! ## A335650.P14347730201920538923

`eq[A006530(A090088(n+1)), A216983(n+1)]`
-/

namespace A335650.P14347730201920538923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090088 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335650.P14347730201920538923

/-! ## A335650.P2995052864583137763

`record[A080672(n+1)/A210679(A080672(n+1))]`
-/

namespace A335650.P2995052864583137763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080672 (n + 1) : ℚ) / (A210679 (A080672 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335650.P2995052864583137763

/-!
# A335651: a(n) is the sum, over all overpartitions of n, of the non-overlined parts.

The programs for A335651, there is no canonical definition to state claims against.
-/

/-! ## A335651.P8683007318116350074

`A235793(n+1)-A335666(n+1)`
-/

namespace A335651.P8683007318116350074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235793 (n + 1) - A335666 (n + 1)

end

end A335651.P8683007318116350074

/-! ## A335651.P16945746849697979277

`(n+1)*Δ[A277643(n)]-A335666(n+1)`
-/

namespace A335651.P16945746849697979277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A335666 (n + 1)

end

end A335651.P16945746849697979277

/-! ## A335651.P9327635610418563634

`(n+1)*A015128(n+1)-A335666(n+1)`
-/

namespace A335651.P9327635610418563634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A015128 (n + 1) - A335666 (n + 1)

end

end A335651.P9327635610418563634

/-! ## A335651.P9348450425856143687

`(n+1)*(A304627(n+1)+2)-A335666(n+1)`
-/

namespace A335651.P9348450425856143687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A304627 (n + 1) + 2) - A335666 (n + 1)

end

end A335651.P9348450425856143687

/-! ## A335651.P7351887471722918048

`(n+1)*(∑[A211971(n+1)]+1)-A335666(n+1)`
-/

namespace A335651.P7351887471722918048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A335666 (n + 1)

end

end A335651.P7351887471722918048

/-!
# A335652: Numbers k such that Omega(k+1) = Omega(k) + 2, where Omega(k) = A001222(k) is the number of prime factors of k with multiplicity.

The programs for A335652, the canonical program `A335652.P8498315715645255614` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335652 has offset 1).

The definition of A335652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335652.P8498315715645255614

`eq[2, Δ[∑{e}[n, #]]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335652

/-- `eq[2, Δ[∑{e}[n, #]]]` -/
def P8498315715645255614.Spec : Prop :=
  ∀ n, (P8498315715645255614.a n : ℤ) = A335652 (n + 1)

theorem P8498315715645255614.correct : P8498315715645255614.Spec := by
  intro n
  simp only [A335652, Nat.add_sub_cancel]

end A335652

/-! ## A335652.P5379791797918013454

`eq[2, A076191(n+1)]+1`
-/

namespace A335652.P5379791797918013454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335652.P5379791797918013454

namespace A335652

/-- `eq[2, A076191(n+1)]+1` -/
def P5379791797918013454.Spec : Prop :=
  ∀ n, (P5379791797918013454.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P2537535907169628891

`eq[2, Δ[A001222(n+1)]]+1`
-/

namespace A335652.P2537535907169628891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335652.P2537535907169628891

namespace A335652

/-- `eq[2, Δ[A001222(n+1)]]+1` -/
def P2537535907169628891.Spec : Prop :=
  ∀ n, (P2537535907169628891.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P3913567059824829380

`eq[2, Δ[A086436(n+1)]]+1`
-/

namespace A335652.P3913567059824829380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335652.P3913567059824829380

namespace A335652

/-- `eq[2, Δ[A086436(n+1)]]+1` -/
def P3913567059824829380.Spec : Prop :=
  ∀ n, (P3913567059824829380.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P1157056030570252500

`eq[2, Δ[val(A165825(n+1), 4)]]+1`
-/

namespace A335652.P1157056030570252500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335652.P1157056030570252500

namespace A335652

/-- `eq[2, Δ[val(A165825(n+1), 4)]]+1` -/
def P1157056030570252500.Spec : Prop :=
  ∀ n, (P1157056030570252500.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P8939154387208715753

`eq[2, A076191(A028310(n))]`
-/

namespace A335652.P8939154387208715753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335652.P8939154387208715753

namespace A335652

/-- `eq[2, A076191(A028310(n))]` -/
def P8939154387208715753.Spec : Prop :=
  ∀ n, (P8939154387208715753.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P7917166622498317612

`A020725(eq[2, A076191(n+1)])`
-/

namespace A335652.P7917166622498317612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335652.P7917166622498317612

namespace A335652

/-- `A020725(eq[2, A076191(n+1)])` -/
def P7917166622498317612.Spec : Prop :=
  ∀ n, P7917166622498317612.a n = A335652 (n + 1)

end A335652

/-! ## A335652.P13847946792695688242

`eq[2, A076191(A004277(n)-n)]`
-/

namespace A335652.P13847946792695688242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335652.P13847946792695688242

namespace A335652

/-- `eq[2, A076191(A004277(n)-n)]` -/
def P13847946792695688242.Spec : Prop :=
  ∀ n, (P13847946792695688242.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P4719586002429783387

`eq[A001222(n+1)+2, A001222(n+2)]+1`
-/

namespace A335652.P4719586002429783387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335652.P4719586002429783387

namespace A335652

/-- `eq[A001222(n+1)+2, A001222(n+2)]+1` -/
def P4719586002429783387.Spec : Prop :=
  ∀ n, (P4719586002429783387.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P14910545538712954119

`eq[A001222(A004277(n))+1, A001222(n+1)]`
-/

namespace A335652.P14910545538712954119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P14910545538712954119

namespace A335652

/-- `eq[A001222(A004277(n))+1, A001222(n+1)]` -/
def P14910545538712954119.Spec : Prop :=
  ∀ n, (P14910545538712954119.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P15288351895793865479

`eq[A001222(A008486(n))+1, A001222(n+1)]`
-/

namespace A335652.P15288351895793865479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P15288351895793865479

namespace A335652

/-- `eq[A001222(A008486(n))+1, A001222(n+1)]` -/
def P15288351895793865479.Spec : Prop :=
  ∀ n, (P15288351895793865479.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P5472928156324155708

`eq[A001222(A008706(n))+1, A001222(n+1)]`
-/

namespace A335652.P5472928156324155708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P5472928156324155708

namespace A335652

/-- `eq[A001222(A008706(n))+1, A001222(n+1)]` -/
def P5472928156324155708.Spec : Prop :=
  ∀ n, (P5472928156324155708.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P5695697586878778666

`eq[A001222(n+1)+1, A001222(A022144(n))]`
-/

namespace A335652.P5695697586878778666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P5695697586878778666

namespace A335652

/-- `eq[A001222(n+1)+1, A001222(A022144(n))]` -/
def P5695697586878778666.Spec : Prop :=
  ∀ n, (P5695697586878778666.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P8472186438588439474

`eq[A001222(A028310(n))+2, A001222(n+1)]`
-/

namespace A335652.P8472186438588439474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P8472186438588439474

namespace A335652

/-- `eq[A001222(A028310(n))+2, A001222(n+1)]` -/
def P8472186438588439474.Spec : Prop :=
  ∀ n, (P8472186438588439474.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P4398054605172298940

`eq[A001222(n+1), A001222(A130824(n)+2)]`
-/

namespace A335652.P4398054605172298940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130824 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P4398054605172298940

namespace A335652

/-- `eq[A001222(n+1), A001222(A130824(n)+2)]` -/
def P4398054605172298940.Spec : Prop :=
  ∀ n, (P4398054605172298940.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P5891270899066619024

`eq[A001222(A257143(n))+2, A001222(n+1)]`
-/

namespace A335652.P5891270899066619024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257143 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P5891270899066619024

namespace A335652

/-- `eq[A001222(A257143(n))+2, A001222(n+1)]` -/
def P5891270899066619024.Spec : Prop :=
  ∀ n, (P5891270899066619024.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P10802689163456709722

`eq[A001222(A055456(n+1))+2, A001222(n+1)]`
-/

namespace A335652.P10802689163456709722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055456 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P10802689163456709722

namespace A335652

/-- `eq[A001222(A055456(n+1))+2, A001222(n+1)]` -/
def P10802689163456709722.Spec : Prop :=
  ∀ n, (P10802689163456709722.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P424170012513523477

`eq[A001222(n+1)+1, A001222(A008458(2*n))]`
-/

namespace A335652.P424170012513523477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P424170012513523477

namespace A335652

/-- `eq[A001222(n+1)+1, A001222(A008458(2*n))]` -/
def P424170012513523477.Spec : Prop :=
  ∀ n, (P424170012513523477.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P10299587624881717686

`eq[A001222(n+1)+1, A001222(A008574(2*n))]`
-/

namespace A335652.P10299587624881717686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P10299587624881717686

namespace A335652

/-- `eq[A001222(n+1)+1, A001222(A008574(2*n))]` -/
def P10299587624881717686.Spec : Prop :=
  ∀ n, (P10299587624881717686.a n : ℤ) = A335652 (n + 1)

end A335652

/-! ## A335652.P7348161305713485526

`eq[A252736(A008486(n))+1, A252736(n+1)]`
-/

namespace A335652.P7348161305713485526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A008486 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335652.P7348161305713485526

namespace A335652

/-- `eq[A252736(A008486(n))+1, A252736(n+1)]` -/
def P7348161305713485526.Spec : Prop :=
  ∀ n, (P7348161305713485526.a n : ℤ) = A335652 (n + 1)

end A335652

/-!
# A335655: Numbers k such that Omega(k+1) = Omega(k) + m, where Omega(k) = A001222(k) is the number of prime factors of k with multiplicity, case m = 3.

The programs for A335655, there is no canonical definition to state claims against.
-/

/-! ## A335655.P6154122635343648753

`eq[3, A076191(n+1)]+1`
-/

namespace A335655.P6154122635343648753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335655.P6154122635343648753

/-! ## A335655.P10214792688291992541

`eq[A001222(n+1)+3, A001222(n+2)]+1`
-/

namespace A335655.P10214792688291992541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335655.P10214792688291992541

/-! ## A335655.P2367317913156150903

`eq[A001222(A008458(n))+1, A001222(n+1)]`
-/

namespace A335655.P2367317913156150903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335655.P2367317913156150903

/-! ## A335655.P4571926243015562285

`eq[A001222(A008574(n))+1, A001222(n+1)]`
-/

namespace A335655.P4571926243015562285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335655.P4571926243015562285

/-! ## A335655.P12123597054770084063

`eq[A001222(A004277(n))+2, A001222(n+1)]`
-/

namespace A335655.P12123597054770084063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335655.P12123597054770084063

/-!
# A335657: Numbers whose prime factors (including repetitions) sum to an odd number.

The programs for A335657, the canonical program `A335657.P17958321216927884544` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335657 has offset 1).

The definition of A335657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335657.P17958321216927884544

`A036348(n+1)/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A335657

/-- `A036348(n+1)/2` -/
def P17958321216927884544.Spec : Prop :=
  ∀ n, P17958321216927884544.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P13475458277682906112

`∪[A036350(n+1), A038550(n+1)]`
-/

namespace A335657.P13475458277682906112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335657.P13475458277682906112

namespace A335657

/-- `∪[A036350(n+1), A038550(n+1)]` -/
def P13475458277682906112.Spec : Prop :=
  ∀ n, (P13475458277682906112.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P14031893575816276177

`∪[A036350(n+1), A056912(n+1)]`
-/

namespace A335657.P14031893575816276177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335657.P14031893575816276177

namespace A335657

/-- `∪[A036350(n+1), A056912(n+1)]` -/
def P14031893575816276177.Spec : Prop :=
  ∀ n, (P14031893575816276177.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P7570681268608945762

`∪[A036350(n+1), A064728(n+1)]`
-/

namespace A335657.P7570681268608945762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335657.P7570681268608945762

namespace A335657

/-- `∪[A036350(n+1), A064728(n+1)]` -/
def P7570681268608945762.Spec : Prop :=
  ∀ n, (P7570681268608945762.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P8876776666790140852

`∪[A036350(n+1), A065091(n+1)]`
-/

namespace A335657.P8876776666790140852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335657.P8876776666790140852

namespace A335657

/-- `∪[A036350(n+1), A065091(n+1)]` -/
def P8876776666790140852.Spec : Prop :=
  ∀ n, (P8876776666790140852.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P1874075562602255928

`∪[A036348(n+1), A067019(n+1)]`
-/

namespace A335657.P1874075562602255928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335657.P1874075562602255928

namespace A335657

/-- `∪[A036348(n+1), A067019(n+1)]` -/
def P1874075562602255928.Spec : Prop :=
  ∀ n, (P1874075562602255928.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P342836465415284942

`∪[A036350(n+1), A067019(n+1)]`
-/

namespace A335657.P342836465415284942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335657.P342836465415284942

namespace A335657

/-- `∪[A036350(n+1), A067019(n+1)]` -/
def P342836465415284942.Spec : Prop :=
  ∀ n, (P342836465415284942.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P12471524680695473079

`∪[A036350(n+1), A351398(n+1)]`
-/

namespace A335657.P12471524680695473079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335657.P12471524680695473079

namespace A335657

/-- `∪[A036350(n+1), A351398(n+1)]` -/
def P12471524680695473079.Spec : Prop :=
  ∀ n, (P12471524680695473079.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P17722389508327210871

`∪[A036350(n+1), A381218(n+1)]`
-/

namespace A335657.P17722389508327210871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335657.P17722389508327210871

namespace A335657

/-- `∪[A036350(n+1), A381218(n+1)]` -/
def P17722389508327210871.Spec : Prop :=
  ∀ n, (P17722389508327210871.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P10645582232016895347

`lt[A194577(n+1), 1]+1`
-/

namespace A335657.P10645582232016895347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A335657.P10645582232016895347

namespace A335657

/-- `lt[A194577(n+1), 1]+1` -/
def P10645582232016895347.Spec : Prop :=
  ∀ n, (P10645582232016895347.a n : ℤ) = A335657 (n + 1)

end A335657

/-! ## A335657.P11987818269256540056

`∩[A036350(n+1), A004275(n)]/2`
-/

namespace A335657.P11987818269256540056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P11987818269256540056

namespace A335657

/-- `∩[A036350(n+1), A004275(n)]/2` -/
def P11987818269256540056.Spec : Prop :=
  ∀ n, P11987818269256540056.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P8896188491242198683

`∩[A036350(n+1), A004277(n)]/2`
-/

namespace A335657.P8896188491242198683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P8896188491242198683

namespace A335657

/-- `∩[A036350(n+1), A004277(n)]/2` -/
def P8896188491242198683.Spec : Prop :=
  ∀ n, P8896188491242198683.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P17879727860488740099

`∩[A036350(n+1), A005843(n)]/2`
-/

namespace A335657.P17879727860488740099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P17879727860488740099

namespace A335657

/-- `∩[A036350(n+1), A005843(n)]/2` -/
def P17879727860488740099.Spec : Prop :=
  ∀ n, P17879727860488740099.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P12472557117291732893

`∩[A036350(n+1), A020739(n)]/2`
-/

namespace A335657.P12472557117291732893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P12472557117291732893

namespace A335657

/-- `∩[A036350(n+1), A020739(n)]/2` -/
def P12472557117291732893.Spec : Prop :=
  ∀ n, P12472557117291732893.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P18251204175115677058

`∩[A036350(n+1), A103517(n)]/2`
-/

namespace A335657.P18251204175115677058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P18251204175115677058

namespace A335657

/-- `∩[A036350(n+1), A103517(n)]/2` -/
def P18251204175115677058.Spec : Prop :=
  ∀ n, P18251204175115677058.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P17344112413455680562

`∩[A036350(n+1), A004271(n)]/2`
-/

namespace A335657.P17344112413455680562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P17344112413455680562

namespace A335657

/-- `∩[A036350(n+1), A004271(n)]/2` -/
def P17344112413455680562.Spec : Prop :=
  ∀ n, P17344112413455680562.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P1201312456587496489

`∩[A036350(n+1), A004272(n)]/2`
-/

namespace A335657.P1201312456587496489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P1201312456587496489

namespace A335657

/-- `∩[A036350(n+1), A004272(n)]/2` -/
def P1201312456587496489.Spec : Prop :=
  ∀ n, P1201312456587496489.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P6131482639017709471

`∩[A036350(n+1), A004279(n)]/2`
-/

namespace A335657.P6131482639017709471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P6131482639017709471

namespace A335657

/-- `∩[A036350(n+1), A004279(n)]/2` -/
def P6131482639017709471.Spec : Prop :=
  ∀ n, P6131482639017709471.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P1532207025751109375

`∩[A036347(n+1), A005843(n)]/2`
-/

namespace A335657.P1532207025751109375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P1532207025751109375

namespace A335657

/-- `∩[A036347(n+1), A005843(n)]/2` -/
def P1532207025751109375.Spec : Prop :=
  ∀ n, P1532207025751109375.a n = (A335657 (n + 1) : ℚ)

end A335657

/-! ## A335657.P6599306489031345285

`∩[A036347(n+1), A020739(n)]/2`
-/

namespace A335657.P6599306489031345285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A335657.P6599306489031345285

namespace A335657

/-- `∩[A036347(n+1), A020739(n)]/2` -/
def P6599306489031345285.Spec : Prop :=
  ∀ n, P6599306489031345285.a n = (A335657 (n + 1) : ℚ)

end A335657

/-!
# A335658: Numbers that are not the sum of 3 nonzero squares and a positive cube.

The programs for A335658, there is no canonical definition to state claims against.
-/

/-! ## A335658.P18155646030738587608

`∪[A357640(n+1), A002372(A119375(n))]`
-/

namespace A335658.P18155646030738587608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (A119375 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335658.P18155646030738587608

/-! ## A335658.P4241690956851430376

`eq[A001519(A318810(n+1)), A176452(n+1)]`
-/

namespace A335658.P4241690956851430376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A318810 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335658.P4241690956851430376

/-!
# A335659: Numbers that are not the sum of 3 nonzero squares and a positive 5th power.

The programs for A335659, there is no canonical definition to state claims against.
-/

/-! ## A335659.P8863651414697047567

`eq[char[A144020(n+1)], A185245(n)]`
-/

namespace A335659.P8863651414697047567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A335659.P8863651414697047567

/-! ## A335659.P1221961061995753089

`eq[char[A144020(n+1)], A034512(n+1)]`
-/

namespace A335659.P1221961061995753089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A335659.P1221961061995753089

/-! ## A335659.P190352220417531913

`eq[A185245(n), A211649(A004275(n))]`
-/

namespace A335659.P190352220417531913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (A004275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335659.P190352220417531913

/-! ## A335659.P12098474545908222449

`eq[A034569(n+1), A211649(A004275(n))]`
-/

namespace A335659.P12098474545908222449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211649 (A004275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335659.P12098474545908222449

/-! ## A335659.P6726645217158323748

`lt[A242379(3*n+4), A003987(A095419(n+5))]`
-/

namespace A335659.P6726645217158323748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242379 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A095419 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335659.P6726645217158323748

/-!
# A335660: a(n) = n - A334714(n).

The programs for A335660, the canonical program `A335660.P10141285614841351256` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335660 has offset 1).

The definition of A335660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A334714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335660.P10141285614841351256

`n+1-A334714(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335660

/-- `n+1-A334714(n+1)` -/
def P10141285614841351256.Spec : Prop :=
  ∀ n, P10141285614841351256.a n = A335660 (n + 1)

theorem P10141285614841351256.correct : P10141285614841351256.Spec := by
  intro n
  simp only [A335660, Nat.add_sub_cancel]

end A335660

/-! ## A335660.P10668078273511078132

`∑[1-A335294(n+1)]`
-/

namespace A335660.P10668078273511078132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A335294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335660.P10668078273511078132

namespace A335660

/-- `∑[1-A335294(n+1)]` -/
def P10668078273511078132.Spec : Prop :=
  ∀ n, P10668078273511078132.a n = A335660 (n + 1)

end A335660

/-! ## A335660.P1131845353231406425

`A024000(A334714(n+1))+n`
-/

namespace A335660.P1131845353231406425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A334714 (n + 1)).toNat + (n : ℤ)

end

end A335660.P1131845353231406425

namespace A335660

/-- `A024000(A334714(n+1))+n` -/
def P1131845353231406425.Spec : Prop :=
  ∀ n, P1131845353231406425.a n = A335660 (n + 1)

end A335660

/-! ## A335660.P7793517700523826997

`A000027(n+1)%A334714(n+1)`
-/

namespace A335660.P7793517700523826997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A334714 (n + 1))

end

end A335660.P7793517700523826997

namespace A335660

/-- `A000027(n+1)%A334714(n+1)` -/
def P7793517700523826997.Spec : Prop :=
  ∀ n, P7793517700523826997.a n = A335660 (n + 1)

end A335660

/-! ## A335660.P7074040535887108757

`A087156(n+1)%A334714(n+1)`
-/

namespace A335660.P7074040535887108757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A334714 (n + 1))

end

end A335660.P7074040535887108757

namespace A335660

/-- `A087156(n+1)%A334714(n+1)` -/
def P7074040535887108757.Spec : Prop :=
  ∀ n, P7074040535887108757.a n = A335660 (n + 1)

end A335660

/-! ## A335660.P3693440666323933260

`A178915(n+1)%A334714(n+1)`
-/

namespace A335660.P3693440666323933260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178915 (n + 1)) (A334714 (n + 1))

end

end A335660.P3693440666323933260

namespace A335660

/-- `A178915(n+1)%A334714(n+1)` -/
def P3693440666323933260.Spec : Prop :=
  ∀ n, P3693440666323933260.a n = A335660 (n + 1)

end A335660

/-! ## A335660.P3927028449154190756

`A060401(n+1)%A334714(n+1)`
-/

namespace A335660.P3927028449154190756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A334714 (n + 1))

end

end A335660.P3927028449154190756

namespace A335660

/-- `A060401(n+1)%A334714(n+1)` -/
def P3927028449154190756.Spec : Prop :=
  ∀ n, P3927028449154190756.a n = A335660 (n + 1)

end A335660

/-!
# A335662: Numbers k such that A335660(k) = 2.

The programs for A335662, there is no canonical definition to state claims against.
-/

/-! ## A335662.P9065217551624219642

`eq[2, A335660(n+1)]+1`
-/

namespace A335662.P9065217551624219642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335662.P9065217551624219642

/-! ## A335662.P14689085407522306547

`eq[2, A335660(A028310(n))]`
-/

namespace A335662.P14689085407522306547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335662.P14689085407522306547

/-! ## A335662.P14310991035537415386

`A020725(eq[2, A335660(n+1)])`
-/

namespace A335662.P14310991035537415386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335662.P14310991035537415386

/-! ## A335662.P5050029175839078859

`eq[2, A335660(A000038(n)+n)]`
-/

namespace A335662.P5050029175839078859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335662.P5050029175839078859

/-! ## A335662.P402630572141768841

`eq[2, A335660(A233583(n+1))]`
-/

namespace A335662.P402630572141768841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335662.P402630572141768841

/-!
# A335663: For n >= 1, a(n) = f(n) where f is a bijection on Z such that f(x)-x is also a bijection on Z and f(f(x)) = x.

The programs for A335663, there is no canonical definition to state claims against.
-/

/-! ## A335663.P3647574806346899664

`Δ[2*n*round(n/sqrt(2))]-n`
-/

namespace A335663.P3647574806346899664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A335663.P3647574806346899664

/-!
# A335664: a(n) = f(n) - f(Sum_{k=1..n-1} a(k)) with a(1) = 1, where f = A000006.

The programs for A335664, there is no canonical definition to state claims against.
-/

/-! ## A335664.P17105441230117429351

`A230106(A110740(n+4)%(A279337(n+1)+1)+1)`
-/

namespace A335664.P17105441230117429351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 (Int.tmod (A110740 (n + 4)) (A279337 (n + 1) + 1) + 1).toNat

end

end A335664.P17105441230117429351

/-! ## A335664.P10979943876905635904

`A106602(lcm(15, A106596(n+1)))`
-/

namespace A335664.P10979943876905635904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106602 (Int.lcm 15 (A106596 (n + 1)))

end

end A335664.P10979943876905635904

/-! ## A335664.P14333107234062940405

`A004526(∑{e}[A056381(n+4)+1, #])`
-/

namespace A335664.P14333107234062940405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056381 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A335664.P14333107234062940405

/-! ## A335664.P6016411662791886412

`A100380(∑{e}[A056381(n+4)+1, #])`
-/

namespace A335664.P6016411662791886412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056381 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100380 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A335664.P6016411662791886412

/-! ## A335664.P17356066470343940116

`A131229(n+4)%A001221(A324170(2*n+1))`
-/

namespace A335664.P17356066470343940116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131229 (n + 4)) (A001221 (A324170 (2 * n + 1)).toNat)

end

end A335664.P17356066470343940116

/-!
# A335665: Product of the refactorable divisors of n.

The programs for A335665, the canonical program `A335665.P13969876994009969227` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335665 has offset 1).

The definition of A335665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335665.P13969876994009969227

`∏{d}[n+1, gcd(#, A336040(#)+n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A335665

/-- `∏{d}[n+1, gcd(#, A336040(#)+n)]` -/
def P13969876994009969227.Spec : Prop :=
  ∀ n, (P13969876994009969227.a n : ℤ) = A335665 (n + 1)

theorem P13969876994009969227.correct : P13969876994009969227.Spec := by
  intro n
  simp only [A335665, Nat.add_sub_cancel]

end A335665

/-! ## A335665.P11296790480968210646

`A331287(A048788(n+1))`
-/

namespace A335665.P11296790480968210646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331287 (A048788 (n + 1)).toNat

end

end A335665.P11296790480968210646

namespace A335665

/-- `A331287(A048788(n+1))` -/
def P11296790480968210646.Spec : Prop :=
  ∀ n, P11296790480968210646.a n = A335665 (n + 1)

end A335665

/-! ## A335665.P44951119796761233

`gcd(A037270((n+1)*Δ[n^3]), A062355(n+1))`
-/

namespace A335665.P44951119796761233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037270 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A062355 (n + 1))

end

end A335665.P44951119796761233

namespace A335665

/-- `gcd(A037270((n+1)*Δ[n^3]), A062355(n+1))` -/
def P44951119796761233.Spec : Prop :=
  ∀ n, (P44951119796761233.a n : ℤ) = A335665 (n + 1)

end A335665

/-! ## A335665.P12715720867400364709

`gcd(A000005(A093432(n+1)), A020478(n+1))`
-/

namespace A335665.P12715720867400364709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A093432 (n + 1)).toNat) (A020478 (n + 1))

end

end A335665.P12715720867400364709

namespace A335665

/-- `gcd(A000005(A093432(n+1)), A020478(n+1))` -/
def P12715720867400364709.Spec : Prop :=
  ∀ n, (P12715720867400364709.a n : ℤ) = A335665 (n + 1)

end A335665

/-! ## A335665.P2826117187806206837

`gcd((n+1)²/∏{p}[n+1, #], A000010(A145671(n+1)+1))`
-/

namespace A335665.P2826117187806206837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A000010 (A145671 (n + 1) + 1).toNat)

end

end A335665.P2826117187806206837

namespace A335665

/-- `gcd((n+1)²/∏{p}[n+1, #], A000010(A145671(n+1)+1))` -/
def P2826117187806206837.Spec : Prop :=
  ∀ n, (P2826117187806206837.a n : ℤ) = A335665 (n + 1)

end A335665

/-!
# A335666: a(n) is the sum, over all overpartitions of n, of the overlined parts.

The programs for A335666, there is no canonical definition to state claims against.
-/

/-! ## A335666.P10151350427950691978

`A235793(n+1)-A335651(n+1)`
-/

namespace A335666.P10151350427950691978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235793 (n + 1) - A335651 (n + 1)

end

end A335666.P10151350427950691978

/-! ## A335666.P17206409669961057951

`(n+1)*Δ[A277643(n)]-A335651(n+1)`
-/

namespace A335666.P17206409669961057951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A335651 (n + 1)

end

end A335666.P17206409669961057951

/-! ## A335666.P6499428194558339929

`(n+1)*A015128(n+1)-A335651(n+1)`
-/

namespace A335666.P6499428194558339929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A015128 (n + 1) - A335651 (n + 1)

end

end A335666.P6499428194558339929

/-! ## A335666.P7517461226926623634

`2*(n+1)*A014968(n+1)-A335651(n+1)`
-/

namespace A335666.P7517461226926623634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A014968 (n + 1)) - A335651 (n + 1)

end

end A335666.P7517461226926623634

/-! ## A335666.P2744116646517386756

`(n+1)*(∑[A211971(n+1)]+1)-A335651(n+1)`
-/

namespace A335666.P2744116646517386756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A335651 (n + 1)

end

end A335666.P2744116646517386756

/-!
# A335668: Even composites m such that A002203(m) == 2 (mod m).

The programs for A335668, the canonical program `A335668.P17103927484557371149` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335668 has offset 1).

The definition of A335668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335668.P17103927484557371149

`2*A246692(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335668

/-- `2*A246692(n+2)` -/
def P17103927484557371149.Spec : Prop :=
  ∀ n, P17103927484557371149.a n = A335668 (n + 1)

theorem P17103927484557371149.correct : P17103927484557371149.Spec := by
  intro n
  simp only [A335668, Nat.add_sub_cancel]

end A335668

/-! ## A335668.P3552437795426679696

`A246692(n+2)+A246692(n+2)%A167614(n+1)`
-/

namespace A335668.P3552437795426679696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246692 (n + 2) + Int.tmod (A246692 (n + 2)) (A167614 (n + 1))

end

end A335668.P3552437795426679696

namespace A335668

/-- `A246692(n+2)+A246692(n+2)%A167614(n+1)` -/
def P3552437795426679696.Spec : Prop :=
  ∀ n, P3552437795426679696.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P16906022174232360917

`A246692(or(n+1, A010873(n+1))+1)+A246692(n+2)`
-/

namespace A335668.P16906022174232360917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246692 (Int.lor (n + 1 : ℤ) (A010873 (n + 1)) + 1).toNat + A246692 (n + 2)

end

end A335668.P16906022174232360917

namespace A335668

/-- `A246692(or(n+1, A010873(n+1))+1)+A246692(n+2)` -/
def P16906022174232360917.Spec : Prop :=
  ∀ n, P16906022174232360917.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P3249309856784164507

`A246692(n+2)+A246692((n+1)%A229428(n+1)+1)`
-/

namespace A335668.P3249309856784164507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246692 (n + 2) + A246692 (Int.tmod (n + 1 : ℤ) (A229428 (n + 1)) + 1).toNat

end

end A335668.P3249309856784164507

namespace A335668

/-- `A246692(n+2)+A246692((n+1)%A229428(n+1)+1)` -/
def P3249309856784164507.Spec : Prop :=
  ∀ n, P3249309856784164507.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P14021982996745765537

`A004277(A246692(n+2))`
-/

namespace A335668.P14021982996745765537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A246692 (n + 2)).toNat

end

end A335668.P14021982996745765537

namespace A335668

/-- `A004277(A246692(n+2))` -/
def P14021982996745765537.Spec : Prop :=
  ∀ n, P14021982996745765537.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P4989339441579632953

`∩[2*n, A270342(n+1)]`
-/

namespace A335668.P4989339441579632953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335668.P4989339441579632953

namespace A335668

/-- `∩[2*n, A270342(n+1)]` -/
def P4989339441579632953.Spec : Prop :=
  ∀ n, (P4989339441579632953.a n : ℤ) = A335668 (n + 1)

end A335668

/-! ## A335668.P14095357539592941534

`filter[A270342(n+1), A011765(#)]`
-/

namespace A335668.P14095357539592941534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A335668.P14095357539592941534

namespace A335668

/-- `filter[A270342(n+1), A011765(#)]` -/
def P14095357539592941534.Spec : Prop :=
  ∀ n, P14095357539592941534.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P9879203732576534272

`filter[A270342(n+1), A059841(#)]`
-/

namespace A335668.P9879203732576534272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A335668.P9879203732576534272

namespace A335668

/-- `filter[A270342(n+1), A059841(#)]` -/
def P9879203732576534272.Spec : Prop :=
  ∀ n, P9879203732576534272.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P17918162057493791331

`filter[A270342(n+1), A108357(#)]`
-/

namespace A335668.P17918162057493791331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A335668.P17918162057493791331

namespace A335668

/-- `filter[A270342(n+1), A108357(#)]` -/
def P17918162057493791331.Spec : Prop :=
  ∀ n, P17918162057493791331.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P17866852624554772550

`filter[A270342(n+1), A121262(#)]`
-/

namespace A335668.P17866852624554772550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A335668.P17866852624554772550

namespace A335668

/-- `filter[A270342(n+1), A121262(#)]` -/
def P17866852624554772550.Spec : Prop :=
  ∀ n, P17866852624554772550.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P14551353835391535279

`filter[A270342(n+1), A135528(#)]`
-/

namespace A335668.P14551353835391535279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A335668.P14551353835391535279

namespace A335668

/-- `filter[A270342(n+1), A135528(#)]` -/
def P14551353835391535279.Spec : Prop :=
  ∀ n, P14551353835391535279.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P1932219232998197362

`filter[A270342(n+1), A264739(#)]`
-/

namespace A335668.P1932219232998197362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A335668.P1932219232998197362

namespace A335668

/-- `filter[A270342(n+1), A264739(#)]` -/
def P1932219232998197362.Spec : Prop :=
  ∀ n, P1932219232998197362.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P7645707529154888460

`filter[A270342(n+1), A266591(#)]`
-/

namespace A335668.P7645707529154888460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A335668.P7645707529154888460

namespace A335668

/-- `filter[A270342(n+1), A266591(#)]` -/
def P7645707529154888460.Spec : Prop :=
  ∀ n, P7645707529154888460.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P17192366141773551371

`filter[A270342(n+1), A267043(#)]`
-/

namespace A335668.P17192366141773551371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A335668.P17192366141773551371

namespace A335668

/-- `filter[A270342(n+1), A267043(#)]` -/
def P17192366141773551371.Spec : Prop :=
  ∀ n, P17192366141773551371.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P7343628577856332446

`filter[A270342(n+1), A322860(#)]`
-/

namespace A335668.P7343628577856332446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A335668.P7343628577856332446

namespace A335668

/-- `filter[A270342(n+1), A322860(#)]` -/
def P7343628577856332446.Spec : Prop :=
  ∀ n, P7343628577856332446.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P17910177265622125866

`record[2*A032742(A270342(n+2))]`
-/

namespace A335668.P17910177265622125866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032742 (A270342 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335668.P17910177265622125866

namespace A335668

/-- `record[2*A032742(A270342(n+2))]` -/
def P17910177265622125866.Spec : Prop :=
  ∀ n, P17910177265622125866.a n = A335668 (n + 1)

end A335668

/-! ## A335668.P11557940453552712363

`∩[A270342(n+1), A280877(n+1)]`
-/

namespace A335668.P11557940453552712363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335668.P11557940453552712363

namespace A335668

/-- `∩[A270342(n+1), A280877(n+1)]` -/
def P11557940453552712363.Spec : Prop :=
  ∀ n, (P11557940453552712363.a n : ℤ) = A335668 (n + 1)

end A335668

/-! ## A335668.P1988783428156688912

`∩[A270342(n+1), A305726(n+1)]`
-/

namespace A335668.P1988783428156688912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335668.P1988783428156688912

namespace A335668

/-- `∩[A270342(n+1), A305726(n+1)]` -/
def P1988783428156688912.Spec : Prop :=
  ∀ n, (P1988783428156688912.a n : ℤ) = A335668 (n + 1)

end A335668

/-! ## A335668.P10071641447487150107

`∩[A270342(n+1), A308115(n+1)]`
-/

namespace A335668.P10071641447487150107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335668.P10071641447487150107

namespace A335668

/-- `∩[A270342(n+1), A308115(n+1)]` -/
def P10071641447487150107.Spec : Prop :=
  ∀ n, (P10071641447487150107.a n : ℤ) = A335668 (n + 1)

end A335668

/-!
# A335672: Odd composite integers m such that A005248(m) == 3 (mod m).

The programs for A335672, there is no canonical definition to state claims against.
-/

/-! ## A335672.P6315347824964754347

`A339562(A017281(n)+A006530(n+1))`
-/

namespace A335672.P6315347824964754347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339562 (A017281 n + A006530 (n + 1)).toNat

end

end A335672.P6315347824964754347

/-!
# A335674: Odd composite integers m such that A003501(m) == 5 (mod m).

The programs for A335674, there is no canonical definition to state claims against.
-/

/-! ## A335674.P17566294279210354268

`A340019(A127581(n))+A013929(n+4)`
-/

namespace A335674.P17566294279210354268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (A127581 n).toNat + A013929 (n + 4)

end

end A335674.P17566294279210354268

/-!
# A335675: Number of smooth arithmetical structures on D_n.

The programs for A335675, there is no canonical definition to state claims against.
-/

/-! ## A335675.P2882132052902150762

`A259983(A116581(n+1)+A002262(n))`
-/

namespace A335675.P2882132052902150762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259983 (A116581 (n + 1) + A002262 n).toNat

end

end A335675.P2882132052902150762

/-!
# A335677: a(n) = A159065(n+1) - A334701(n).

The programs for A335677, there is no canonical definition to state claims against.
-/

/-! ## A335677.P10489451492835821123

`A159065(n+2)-A334701(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335677.P10489451492835821123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 2) - A334701 (n + 1)

end

end A335677.P10489451492835821123

/-! ## A335677.P2930330721410919330

`record[A225606(n)/2-n]`
-/

namespace A335677.P2930330721410919330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225606 n : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335677.P2930330721410919330

/-! ## A335677.P13257079657572107214

`A335179(n+1)-A331761(n+1)`
-/

namespace A335677.P13257079657572107214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335179 (n + 1) - A331761 (n + 1)

end

end A335677.P13257079657572107214

/-! ## A335677.P16894905805921593195

`A159065(n+2)-A333275((n+1)²+2)`
-/

namespace A335677.P16894905805921593195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 2) - A333275 ((n + 1) ^ 2 + 2)

end

end A335677.P16894905805921593195

/-! ## A335677.P13726777909276830525

`A335179(n+1)-(A177719(n+2)/2-n*(n+2))`
-/

namespace A335677.P13726777909276830525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335179 (n + 1) : ℚ) - ((A177719 (n + 2) : ℚ) / 2 - (n * (n + 2) : ℚ))

end

end A335677.P13726777909276830525

/-!
# A335678: Array read by antidiagonals: T(m,n) (m>=1, n>=1) = number of cells in figure formed by taking m equally spaced points on a line and n equally spaced points on a parallel line, and joining each of the m points to each of the n points by a line segment.

The programs for A335678, there is no canonical definition to state claims against.
-/

/-! ## A335678.P14867121336521259051

`(A115009(n)+A003056(n))/2`
-/

namespace A335678.P14867121336521259051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115009 n + A003056 n : ℚ) / 2

end

end A335678.P14867121336521259051

/-! ## A335678.P14533658905481184268

`floor((A115009(n)+A002024(n+1))/2)`
-/

namespace A335678.P14533658905481184268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115009 n + A002024 (n + 1) : ℚ) / 2⌋

end

end A335678.P14533658905481184268

/-! ## A335678.P5364692993127903082

`A001281(A115009(n)+A003056(n))`
-/

namespace A335678.P5364692993127903082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A115009 n + A003056 n).toNat

end

end A335678.P5364692993127903082

/-! ## A335678.P3222646844643147780

`A004525(A115009(n)+A003056(n))`
-/

namespace A335678.P3222646844643147780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A115009 n + A003056 n).toNat

end

end A335678.P3222646844643147780

/-! ## A335678.P10028121460793819565

`A004526(A115009(n)+A003056(n))`
-/

namespace A335678.P10028121460793819565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A115009 n + A003056 n).toNat

end

end A335678.P10028121460793819565

/-! ## A335678.P12515433677161372861

`A004524(A115009(n)+A002024(n+1))`
-/

namespace A335678.P12515433677161372861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A115009 n + A002024 (n + 1)).toNat

end

end A335678.P12515433677161372861

/-! ## A335678.P3522888881946382268

`A004526(A115009(n)+A002024(n+1))`
-/

namespace A335678.P3522888881946382268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A115009 n + A002024 (n + 1)).toNat

end

end A335678.P3522888881946382268

/-! ## A335678.P11383804001823280664

`A001057(A115009(n)+A002024(n+1))-1`
-/

namespace A335678.P11383804001823280664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A115009 n + A002024 (n + 1)).toNat - 1

end

end A335678.P11383804001823280664

/-! ## A335678.P14890347538744743062

`A003602(A115009(n)+A002024(n+1))-1`
-/

namespace A335678.P14890347538744743062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A115009 n + A002024 (n + 1)).toNat - 1

end

end A335678.P14890347538744743062

/-! ## A335678.P18254099299931966764

`A004442(A115009(n)+A002024(n+1))/2`
-/

namespace A335678.P18254099299931966764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 (A115009 n + A002024 (n + 1)).toNat : ℚ) / 2

end

end A335678.P18254099299931966764

/-!
# A335679: Array read by antidiagonals: T(m,n) (m>=1, n>=1) = number of edges in figure formed by taking m equally spaced points on a line and n equally spaced points on a parallel line, and joining each of the m points to each of the n points by a line segment.

The programs for A335679, there is no canonical definition to state claims against.
-/

/-! ## A335679.P13960125485078848790

`A335678(n+1)+A335680(n+1)-1`
-/

namespace A335679.P13960125485078848790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335678 (n + 1) + (A335680 (n + 1) - 1)

end

end A335679.P13960125485078848790

/-! ## A335679.P15054343982418317868

`A335678(n+1)+A023443(A335680(n+1))`
-/

namespace A335679.P15054343982418317868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335678 (n + 1) + A023443 (A335680 (n + 1)).toNat

end

end A335679.P15054343982418317868

/-! ## A335679.P7042479072296762349

`A002024(n+1)+A335681(n+1)+A335678(n+1)`
-/

namespace A335679.P7042479072296762349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A335681 (n + 1) + A335678 (n + 1))

end

end A335679.P7042479072296762349

/-! ## A335679.P15528848108424481340

`A335680(n+1)-(1-floor((A115009(n)+A002024(n+1))/2))`
-/

namespace A335679.P15528848108424481340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335680 (n + 1) - (1 - ⌊(A115009 n + A002024 (n + 1) : ℚ) / 2⌋)

end

end A335679.P15528848108424481340

/-! ## A335679.P13887344425269963908

`A023443(A335680(n+1)+(A115009(n)+A003056(n))/2)`
-/

namespace A335679.P13887344425269963908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway ((A335680 (n + 1) : ℚ) + (A115009 n + A003056 n : ℚ) / 2)).toNat

end

end A335679.P13887344425269963908

/-! ## A335679.P15952226425788812986

`A335680(n+1)-(1-A004526(A115009(n)+A002024(n+1)))`
-/

namespace A335679.P15952226425788812986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335680 (n + 1) - (1 - A004526 (A115009 n + A002024 (n + 1)).toNat)

end

end A335679.P15952226425788812986

/-!
# A335680: Array read by antidiagonals: T(m,n) (m>=1, n>=1) = number of vertices in figure formed by taking m equally spaced points on a line and n equally spaced points on a parallel line, and joining each of the m points to each of the n points by a line segment.

The programs for A335680, there is no canonical definition to state claims against.
-/

/-! ## A335680.P7533194217498795250

`A335681(n+1)+comp[∑[n]]-n`
-/

namespace A335680.P7533194217498795250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335681 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A335680.P7533194217498795250

/-! ## A335680.P5614677211126086521

`A003056(n)+2+A335681(n+1)`
-/

namespace A335680.P5614677211126086521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 2 + A335681 (n + 1)

end

end A335680.P5614677211126086521

/-! ## A335680.P3706659134949281340

`A335681(n+1)+∑[A010054(n)]+1`
-/

namespace A335680.P3706659134949281340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335681 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A335680.P3706659134949281340

/-! ## A335680.P2841194665975343160

`A020725(A335681(n+1)+∑[char[∑[n]]])`
-/

namespace A335680.P2841194665975343160
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335681 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A335680.P2841194665975343160

/-! ## A335680.P8682793587162141951

`A002024(n+1)+A335681(n+1)+1`
-/

namespace A335680.P8682793587162141951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A335681 (n + 1) + 1)

end

end A335680.P8682793587162141951

/-! ## A335680.P16977150116405692672

`A348553(∑[A010054(n)])+A335681(n+1)`
-/

namespace A335680.P16977150116405692672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A335681 (n + 1)

end

end A335680.P16977150116405692672

/-! ## A335680.P376175056662868892

`A348553(A002024(n+1))+A335681(n+1)`
-/

namespace A335680.P376175056662868892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A002024 (n + 1)).toNat + A335681 (n + 1)

end

end A335680.P376175056662868892

/-! ## A335680.P15492047437971754945

`A000027(A335681(n+1)+A003057(n+2))`
-/

namespace A335680.P15492047437971754945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A335681 (n + 1) + A003057 (n + 2)).toNat

end

end A335680.P15492047437971754945

/-! ## A335680.P7928258881032947739

`A335679(n+1)+1-A335678(n+1)`
-/

namespace A335680.P7928258881032947739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335679 (n + 1) + (1 - A335678 (n + 1))

end

end A335680.P7928258881032947739

/-! ## A335680.P960788776311197327

`A020725(A335679(n+1)-A335678(n+1))`
-/

namespace A335680.P960788776311197327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335679 (n + 1) - A335678 (n + 1)).toNat

end

end A335680.P960788776311197327

/-!
# A335681: Array read by antidiagonals: T(m,n) (m>=1, n>=1) = number of interior vertices in figure formed by taking m equally spaced points on a line and n equally spaced points on a parallel line, and joining each of the m points to each of the n points by a line segment.

The programs for A335681, there is no canonical definition to state claims against.
-/

/-! ## A335681.P4163200999603442153

`A335680(n+1)-comp[∑[n]]+n`
-/

namespace A335681.P4163200999603442153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335680 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (n : ℤ)

end

end A335681.P4163200999603442153

/-! ## A335681.P9613354139547732996

`A335680(n+1)-A003057(n+2)`
-/

namespace A335681.P9613354139547732996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335680 (n + 1) - A003057 (n + 2)

end

end A335681.P9613354139547732996

/-! ## A335681.P5731802095055638439

`A335679(n+1)-(A335678(n+1)+A002024(n+1))`
-/

namespace A335681.P5731802095055638439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335679 (n + 1) - (A335678 (n + 1) + A002024 (n + 1))

end

end A335681.P5731802095055638439

/-! ## A335681.P11080790852835149688

`A119466(A154218(n))`
-/

namespace A335681.P11080790852835149688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119466 (A154218 n).toNat

end

end A335681.P11080790852835149688

/-! ## A335681.P2513599430091166843

`A333124(A296548(n))`
-/

namespace A335681.P2513599430091166843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333124 (A296548 n).toNat

end

end A335681.P2513599430091166843

/-!
# A335683: Array read by antidiagonals: T(n,k) (n >= 1, k >= 1) = Sum_{i=1..n, j=1..k, gcd(i,j)=2} (n+1-i)*(k+1-j).

The programs for A335683, there is no canonical definition to state claims against.
-/

/-! ## A335683.P2618690343918598027

`floor(floor(A097292(A001263(n+1))/2)/2)`
-/

namespace A335683.P2618690343918598027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A097292 (A001263 (n + 1)).toNat : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A335683.P2618690343918598027

/-! ## A335683.P9526938241959828716

`A338034(n+1)-A049819(A008300(n))`
-/

namespace A335683.P9526938241959828716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338034 (n + 1) - A049819 (A008300 n).toNat

end

end A335683.P9526938241959828716

/-! ## A335683.P7236387474309083477

`A111654(A320500(n+1))-(1-A329697(A156584(n)))`
-/

namespace A335683.P7236387474309083477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A320500 (n + 1)).toNat - (1 - A329697 (A156584 n).toNat)

end

end A335683.P7236387474309083477

/-! ## A335683.P14092682122787768353

`A257177(A146771(n)+1)`
-/

namespace A335683.P14092682122787768353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257177 (A146771 n + 1).toNat

end

end A335683.P14092682122787768353

/-! ## A335683.P16294536016211093262

`A222759(A230926(n+1)+1)`
-/

namespace A335683.P16294536016211093262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222759 (A230926 (n + 1) + 1).toNat

end

end A335683.P16294536016211093262

/-!
# A335684: Array read by antidiagonals: T(m,n) = number of m-by-n hexagonal digraphs without oriented 3-cycles (for m >= 1, n >= 1).

The programs for A335684, there is no canonical definition to state claims against.
-/

/-! ## A335684.P17441698029691168292

`A078099(n+1)*A171968(A078099(n+1))`
-/

namespace A335684.P17441698029691168292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078099 (n + 1) * A171968 (A078099 (n + 1)).toNat

end

end A335684.P17441698029691168292

/-! ## A335684.P453805399990151542

`A171968(A208314(n+1))*A208314(n+1)`
-/

namespace A335684.P453805399990151542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171968 (A208314 (n + 1)).toNat * A208314 (n + 1)

end

end A335684.P453805399990151542

/-! ## A335684.P16929497148323835477

`A005349(A256890(n)^A288069(n+1))`
-/

namespace A335684.P16929497148323835477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.roundAway ((A256890 n : ℚ) ^ (A288069 (n + 1) : ℤ))).toNat

end

end A335684.P16929497148323835477

/-! ## A335684.P15107967830216251839

`A005349(A256890(n)^A343132(n+1))`
-/

namespace A335684.P15107967830216251839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.roundAway ((A256890 n : ℚ) ^ (A343132 (n + 1) : ℤ))).toNat

end

end A335684.P15107967830216251839

/-!
# A335685: Main diagonal of A335684.

The programs for A335685, there is no canonical definition to state claims against.
-/

/-! ## A335685.P7696748796365335190

`A335684(∑[4*n]+1)`
-/

namespace A335685.P7696748796365335190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335684 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A335685.P7696748796365335190

/-!
# A335686: Number of even entries in the character table of the symmetric group S_n.

The programs for A335686, there is no canonical definition to state claims against.
-/

/-! ## A335686.P17461938616666987124

`A001255(n)-A274691(n)`
-/

namespace A335686.P17461938616666987124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A274691 n

end

end A335686.P17461938616666987124

/-! ## A335686.P3563225674113978018

`A000041(n)²-A274691(n)`
-/

namespace A335686.P3563225674113978018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 2 - A274691 n

end

end A335686.P3563225674113978018

/-! ## A335686.P2448431866199855128

`A000041(n)^A020639(2*(n+1))-A274691(n)`
-/

namespace A335686.P2448431866199855128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) - (A274691 n : ℚ)

end

end A335686.P2448431866199855128

/-! ## A335686.P7147579305447988692

`A000041(n)^A000040((-1)^(2*n))-A274691(n)`
-/

namespace A335686.P7147579305447988692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ) - (A274691 n : ℚ)

end

end A335686.P7147579305447988692

/-!
# A335687: (A331763(n) - A331755(n+1))/2.

The programs for A335687, there is no canonical definition to state claims against.
-/

/-! ## A335687.P17218147483023839217

`(A331763(n+1)-A331755(n+2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335687.P17218147483023839217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331763 (n + 1) - A331755 (n + 2) : ℚ) / 2

end

end A335687.P17218147483023839217

/-! ## A335687.P674045489974050098

`(A331763(n+1)-A331453(∑[n]+1))/2`
-/

namespace A335687.P674045489974050098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331763 (n + 1) - A331453 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A335687.P674045489974050098

/-! ## A335687.P4982515542471710721

`A038572(A331763(n+1)-A331755(n+2))`
-/

namespace A335687.P4982515542471710721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A331763 (n + 1) - A331755 (n + 2)).toNat

end

end A335687.P4982515542471710721

/-! ## A335687.P4299532766628567340

`A065033(A331763(n+1)-A331755(n+2))`
-/

namespace A335687.P4299532766628567340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A331763 (n + 1) - A331755 (n + 2)).toNat

end

end A335687.P4299532766628567340

/-! ## A335687.P2193475452927840881

`A110654(A331763(n+1)-A331755(n+2))`
-/

namespace A335687.P2193475452927840881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A331763 (n + 1) - A331755 (n + 2)).toNat

end

end A335687.P2193475452927840881

/-!
# A335688: Numerator of b(n), where b(1)=b(2)=1, and for n>2, b(n) = (1+b(n-2))/b(n-1).

The programs for A335688, there is no canonical definition to state claims against.
-/

/-! ## A335688.P3337121017924909164

`A056148(∑[A151575(n)]²)`
-/

namespace A335688.P3337121017924909164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056148 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A335688.P3337121017924909164

/-! ## A335688.P5261776731611776459

`A003963(A139514(n)-1)*A286364(n+1)`
-/

namespace A335688.P5261776731611776459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A139514 n - 1).toNat * A286364 (n + 1)

end

end A335688.P5261776731611776459

/-!
# A335690: a(1) = 1, a(2) = a(3) = 2; a(n) = (a(n-1) + a(n-2) + 1)/a(n-3) (for n>3).

The programs for A335690, the canonical program `A335690.P12311737603652209348` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335690 has offset 1).

The definition of A335690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335690.P12311737603652209348

`(a(n-1)+a(n-2)+1)/a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335690

/-- `(a(n-1)+a(n-2)+1)/a(n-3)` -/
def P12311737603652209348.Spec : Prop :=
  ∀ n, P12311737603652209348.a n = (A335690 (n + 1) : ℚ)

end A335690

/-!
# A335691: A000166(n)^2.

The programs for A335691, the canonical program `A335691.P3112059523892470956` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335691 has offset 0).

The definition of A335691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335691.P3112059523892470956

`A000166(n)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335691

/-- `A000166(n)²` -/
def P3112059523892470956.Spec : Prop :=
  ∀ n, P3112059523892470956.a n = A335691 n

theorem P3112059523892470956.correct : P3112059523892470956.Spec := by
  intro n
  simp only [A335691]

end A335691

/-! ## A335691.P17914913993877661878

`A182386(n)²`
-/

namespace A335691.P17914913993877661878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n ^ 2

end

end A335691.P17914913993877661878

namespace A335691

/-- `A182386(n)²` -/
def P17914913993877661878.Spec : Prop :=
  ∀ n, P17914913993877661878.a n = A335691 n

end A335691

/-! ## A335691.P4083374192510210353

`A008290(∑[n])²`
-/

namespace A335691.P4083374192510210353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A335691.P4083374192510210353

namespace A335691

/-- `A008290(∑[n])²` -/
def P4083374192510210353.Spec : Prop :=
  ∀ n, P4083374192510210353.a n = A335691 n

end A335691

/-! ## A335691.P9215711731621283903

`A068106(∑[n])²`
-/

namespace A335691.P9215711731621283903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A335691.P9215711731621283903

namespace A335691

/-- `A068106(∑[n])²` -/
def P9215711731621283903.Spec : Prop :=
  ∀ n, P9215711731621283903.a n = A335691 n

end A335691

/-! ## A335691.P817353678379218689

`A086764(∑[n])²`
-/

namespace A335691.P817353678379218689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A335691.P817353678379218689

namespace A335691

/-- `A086764(∑[n])²` -/
def P817353678379218689.Spec : Prop :=
  ∀ n, P817353678379218689.a n = A335691 n

end A335691

/-!
# A335692: Inverse BINOMIAL transform of A335691.

The programs for A335692, there is no canonical definition to state claims against.
-/

/-! ## A335692.P2898869173590142111

`A259212(n+1)-n*a(n-1)` with `a(0)=1`
-/

namespace A335692.P2898869173590142111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259212 (n + 1) - (n : ℤ) * a (n - 1)

end

end A335692.P2898869173590142111

/-!
# A335693: A000904(n) - (-1)^n.

The programs for A335693, there is no canonical definition to state claims against.
-/

/-! ## A335693.P811513307182116549

`A000271(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A335693.P811513307182116549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000271 (n + 2) - a (n - 1)

end

end A335693.P811513307182116549

/-! ## A335693.P17748666696202837950

`∑[A000179(n+2)]-a(n-1)` with `a(0)=0`
-/

namespace A335693.P17748666696202837950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A335693.P17748666696202837950

/-! ## A335693.P658106484912805166

`Δ[A332710(n+3)]-A000904(n+1)`
-/

namespace A335693.P658106484912805166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332710 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000904 (n + 1)

end

end A335693.P658106484912805166

/-! ## A335693.P4352710913912993530

`∑[A094314(A253145(n+1))-a(n-1)]` with `a(0)=0`
-/

namespace A335693.P4352710913912993530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A094314 (A253145 (n + 1)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335693.P4352710913912993530

/-! ## A335693.P17848538079245228456

`a(n-2)+A058087(A000096(n+2))+A000035(2*(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A335693.P17848538079245228456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (A058087 (A000096 (n + 2)).toNat + A000035 (2 * (n + 1)))

end

end A335693.P17848538079245228456

/-!
# A335694: a(n) = 3*binomial(n,4) - 6*binomial(n,3) + 4*binomial(n,2) - 2.

The programs for A335694, the canonical program `A335694.P7585133119647058320` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335694 has offset 0).

The definition of A335694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(n, 4)-6*C(n, 3)+4*C(n, 2)-2` (program `A335694.P7585133119647058320`, by `A335694.P7585133119647058320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335694.P17340198774656668652

`n*(n-1)*((n-13)*n+38)/8-2`
-/

namespace A335694.P17340198774656668652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * (((n : ℤ) - 13) * (n : ℤ) + 38) : ℚ) / 8 - 2

end

end A335694.P17340198774656668652

namespace A335694

/-- `n*(n-1)*((n-13)*n+38)/8-2` -/
def P17340198774656668652.Spec : Prop :=
  ∀ n, P17340198774656668652.a n = (A335694 n : ℚ)

end A335694

/-! ## A335694.P7585133119647058320

`3*C(n, 4)-6*C(n, 3)+4*C(n, 2)-2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335694

/-- `3*C(n, 4)-6*C(n, 3)+4*C(n, 2)-2` -/
def P7585133119647058320.Spec : Prop :=
  ∀ n, P7585133119647058320.a n = A335694 n

theorem P7585133119647058320.correct : P7585133119647058320.Spec := by
  intro n
  simp only [A335694]

end A335694

/-!
# A335695: Number of geometry-minimal periodic tilings of the sphere with Dress-complexity n.

The programs for A335695, there is no canonical definition to state claims against.
-/

/-! ## A335695.P12511297692615663330

`A335698(n+1)-(A335697(n+1)+A335696(n+1))`
-/

namespace A335695.P12511297692615663330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335698 (n + 1) - (A335697 (n + 1) + A335696 (n + 1))

end

end A335695.P12511297692615663330

/-! ## A335695.P5982767605549772628

`or(A000203(3*(n+1)), A376567(A376577(n)))`
-/

namespace A335695.P5982767605549772628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000203 (3 * (n + 1))) (A376567 (A376577 n).toNat)

end

end A335695.P5982767605549772628

/-!
# A335696: Number of geometry-minimal periodic tilings of the Euclidean plane with Dress-complexity n.

The programs for A335696, there is no canonical definition to state claims against.
-/

/-! ## A335696.P13022145989764111090

`A335698(n+1)-(A335697(n+1)+A335695(n+1))`
-/

namespace A335696.P13022145989764111090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335698 (n + 1) - (A335697 (n + 1) + A335695 (n + 1))

end

end A335696.P13022145989764111090

/-!
# A335697: Number of geometry-minimal periodic tilings of the hyperbolic plane with Dress-complexity n.

The programs for A335697, there is no canonical definition to state claims against.
-/

/-! ## A335697.P11628684485397592144

`A335698(n+1)-(A335696(n+1)+A335695(n+1))`
-/

namespace A335697.P11628684485397592144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335698 (n + 1) - (A335696 (n + 1) + A335695 (n + 1))

end

end A335697.P11628684485397592144

/-!
# A335698: A335695(n) + A335696(n) + A335697(n).

The programs for A335698, there is no canonical definition to state claims against.
-/

/-! ## A335698.P5319394583986495263

`A335695(n+1)+A335696(n+1)+A335697(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335698.P5319394583986495263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335695 (n + 1) + A335696 (n + 1) + A335697 (n + 1)

end

end A335698.P5319394583986495263

/-!
# A335699: Irregular tree read by rows: take the Stern-Brocot tree A007305(n)/A007306(n) and set a(n) = A007306(n) - A007305(n) mod 3.

The programs for A335699, there is no canonical definition to state claims against.
-/

/-! ## A335699.P8308635480139851397

`A049465(n)%3`
-/

namespace A335699.P8308635480139851397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049465 n) 3

end

end A335699.P8308635480139851397

/-! ## A335699.P1654455393143675873

`(2*A049468(n))%3`
-/

namespace A335699.P1654455393143675873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A049468 n) 3

end

end A335699.P1654455393143675873

/-! ## A335699.P11502942528432484239

`A057431(Δ[n²])%3`
-/

namespace A335699.P11502942528432484239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057431 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 3

end

end A335699.P11502942528432484239

/-! ## A335699.P14506518259191993805

`dr(A057431(2*n+1)%3)`
-/

namespace A335699.P14506518259191993805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A057431 (2 * n + 1)) 3)

end

end A335699.P14506518259191993805

/-! ## A335699.P5672708479119692484

`A010872(A049465(n))`
-/

namespace A335699.P5672708479119692484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A049465 n).toNat

end

end A335699.P5672708479119692484

/-! ## A335699.P15615269324296845354

`A080425(A049468(n))`
-/

namespace A335699.P15615269324296845354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A049468 n).toNat

end

end A335699.P15615269324296845354

/-! ## A335699.P13764595360821099798

`A010872(A057431(Δ[n²]))`
-/

namespace A335699.P13764595360821099798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A057431 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A335699.P13764595360821099798

/-! ## A335699.P3767677386839114935

`(A049448(n)+A007305(n))%3`
-/

namespace A335699.P3767677386839114935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049448 n + A007305 n) 3

end

end A335699.P3767677386839114935

/-! ## A335699.P15401270452934867846

`(A007306(n)-A007305(n))%3`
-/

namespace A335699.P15401270452934867846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007306 n - A007305 n) 3

end

end A335699.P15401270452934867846

