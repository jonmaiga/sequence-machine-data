import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
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
import Seq.Opaque.C025

/-!
# A343901: a(n) is the number of primes p such that (p-1)|A000010(n).

The programs for A343901, there is no canonical definition to state claims against.
-/

/-! ## A343901.P14306517022446690958

`A067513((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A343901.P14306517022446690958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A343901.P14306517022446690958

/-! ## A343901.P4896662541265599296

`∑{e}[A322312((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]), #]`
-/

namespace A343901.P4896662541265599296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322312 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343901.P4896662541265599296

/-! ## A343901.P8867653145130646851

`A067513(Δ[A002088(n)])`
-/

namespace A343901.P8867653145130646851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (f1 (n + 1) - f1 n).toNat

end

end A343901.P8867653145130646851

/-! ## A343901.P5854514809868429001

`A067513(Δ[A005728(n)])`
-/

namespace A343901.P5854514809868429001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (f1 (n + 1) - f1 n).toNat

end

end A343901.P5854514809868429001

/-! ## A343901.P3414880478242187689

`A067513(A000010(n+1))`
-/

namespace A343901.P3414880478242187689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A000010 (n + 1)).toNat

end

end A343901.P3414880478242187689

/-! ## A343901.P3095967416422114918

`A067513(A349137(Δ[n²]))`
-/

namespace A343901.P3095967416422114918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A343901.P3095967416422114918

/-! ## A343901.P14746957437638443488

`A067513(A109606(n+1)+1)`
-/

namespace A343901.P14746957437638443488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A109606 (n + 1) + 1).toNat

end

end A343901.P14746957437638443488

/-! ## A343901.P1794180538474161507

`A067513(A039649(n+1)-1)`
-/

namespace A343901.P1794180538474161507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A039649 (n + 1) - 1).toNat

end

end A343901.P1794180538474161507

/-! ## A343901.P13946407503210933109

`A067513(A200905(n+1)/3)`
-/

namespace A343901.P13946407503210933109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (SequenceMachineLib.roundAway ((A200905 (n + 1) : ℚ) / 3)).toNat

end

end A343901.P13946407503210933109

/-! ## A343901.P7252889504070339622

`A067513(n-A219428(n+1))`
-/

namespace A343901.P7252889504070339622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A343901.P7252889504070339622

/-!
# A343902: Irregular array read by rows: T(n, k) is the k-th prime p such that (p-1)|A000010(n).

The programs for A343902, there is no canonical definition to state claims against.
-/

/-! ## A343902.P8813406418709482197

`A084740(or(A008574(n+1), A287270(n+1)))`
-/

namespace A343902.P8813406418709482197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084740 (Int.lor (A008574 (n + 1)) (A287270 (n + 1))).toNat

end

end A343902.P8813406418709482197

/-! ## A343902.P9726023692100652089

`p?[A385111(n)]`
-/

namespace A343902.P9726023692100652089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343902.P9726023692100652089

/-! ## A343902.P5356444489599106982

`filter[A385111(n), A010051(#)]`
-/

namespace A343902.P5356444489599106982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A343902.P5356444489599106982

/-! ## A343902.P10278787628265447611

`filter[A385111(n), A122257(#)]`
-/

namespace A343902.P10278787628265447611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122257 (f1 j).toNat = 1) n)

end

end A343902.P10278787628265447611

/-! ## A343902.P3006147463514726799

`filter[A385111(n), A252233(#)]`
-/

namespace A343902.P3006147463514726799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A343902.P3006147463514726799

/-!
# A343905: Number of ways of placing n nonattacking range-3 leprechauns on an n X n board.

The programs for A343905, there is no canonical definition to state claims against.
-/

/-! ## A343905.P3567177692014492597

`ceil(A205295(n)/e)`
-/

namespace A343905.P3567177692014492597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A205295 n : ℝ) / Real.exp 1⌉

end

end A343905.P3567177692014492597

/-! ## A343905.P13963280372728377947

`A264628(A205295(n)+1)`
-/

namespace A343905.P13963280372728377947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264628 (A205295 n + 1).toNat

end

end A343905.P13963280372728377947

/-! ## A343905.P18209901858849371116

`A205295(n)²%A334753(n+1)`
-/

namespace A343905.P18209901858849371116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205295 n ^ 2) (A334753 (n + 1))

end

end A343905.P18209901858849371116

/-! ## A343905.P6937933198663615731

`floor(A014371(n)/A373103(n+1))`
-/

namespace A343905.P6937933198663615731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014371 n : ℚ) / (A373103 (n + 1) : ℚ)⌋

end

end A343905.P6937933198663615731

/-! ## A343905.P17280358727814351946

`round(A024969(n+1)/A010932(n))`
-/

namespace A343905.P17280358727814351946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024969 (n + 1) : ℚ) / (A010932 n : ℚ))

end

end A343905.P17280358727814351946

/-!
# A343907: a(n) is the least s > 1 for which it is possible to place s nonattacking range-n leprechauns on an s X s board.

The programs for A343907, there is no canonical definition to state claims against.
-/

/-! ## A343907.P16861395455703855182

`A132894(n)%4+(n+2)²`
-/

namespace A343907.P16861395455703855182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132894 n) 4 + ((n + 2) ^ 2 : ℤ)

end

end A343907.P16861395455703855182

/-! ## A343907.P5972173763225001798

`A141584(∑[or(1, n+1)]+1)+1`
-/

namespace A343907.P5972173763225001798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141584 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A343907.P5972173763225001798

/-! ## A343907.P6296017246349623075

`A123023(n+1)%4+(n+2)²`
-/

namespace A343907.P6296017246349623075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123023 (n + 1)) 4 + ((n + 2) ^ 2 : ℤ)

end

end A343907.P6296017246349623075

/-! ## A343907.P4511996206529173603

`A264788(A160663(n+1))`
-/

namespace A343907.P4511996206529173603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264788 (A160663 (n + 1)).toNat

end

end A343907.P4511996206529173603

/-! ## A343907.P3177394153581295880

`A085914(A007491(n+2))`
-/

namespace A343907.P3177394153581295880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085914 (A007491 (n + 2)).toNat

end

end A343907.P3177394153581295880

/-!
# A343909: Number of generalized polyforms on the tetrahedral-octahedral honeycomb with n cells.

The programs for A343909, there is no canonical definition to state claims against.
-/

/-! ## A343909.P10511592801789762385

`A003602(A181080(n)+A001462(n+1))`
-/

namespace A343909.P10511592801789762385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A181080 n + A001462 (n + 1)).toNat

end

end A343909.P10511592801789762385

/-!
# A343910: a(n) = mu(phi(n)), where mu is the Möbius function and phi is the Euler totient function.

The programs for A343910, the canonical program `A343910.P10877772293069543811` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343910 has offset 1).

The definition of A343910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343910.P10877772293069543811

`A008683(A000010(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A343910

/-- `A008683(A000010(n+1))` -/
def P10877772293069543811.Spec : Prop :=
  ∀ n, P10877772293069543811.a n = A343910 (n + 1)

theorem P10877772293069543811.correct : P10877772293069543811.Spec := by
  intro n
  simp only [A343910, Nat.add_sub_cancel]

end A343910

/-! ## A343910.P658900886223988656

`A008683((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A343910.P658900886223988656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A343910.P658900886223988656

namespace A343910

/-- `A008683((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P658900886223988656.Spec : Prop :=
  ∀ n, P658900886223988656.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P15858128350467668432

`A008683(Δ[A002088(n)])`
-/

namespace A343910.P15858128350467668432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A343910.P15858128350467668432

namespace A343910

/-- `A008683(Δ[A002088(n)])` -/
def P15858128350467668432.Spec : Prop :=
  ∀ n, P15858128350467668432.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P13073174303308862840

`A008683(Δ[A005728(n)])`
-/

namespace A343910.P13073174303308862840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A343910.P13073174303308862840

namespace A343910

/-- `A008683(Δ[A005728(n)])` -/
def P13073174303308862840.Spec : Prop :=
  ∀ n, P13073174303308862840.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P12766828510631317149

`A008683(A277906(n+1))`
-/

namespace A343910.P12766828510631317149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A277906 (n + 1)).toNat

end

end A343910.P12766828510631317149

namespace A343910

/-- `A008683(A277906(n+1))` -/
def P12766828510631317149.Spec : Prop :=
  ∀ n, P12766828510631317149.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P13253997345654401215

`A008683(sqrt(A127473(n+1)))`
-/

namespace A343910.P13253997345654401215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A343910.P13253997345654401215

namespace A343910

/-- `A008683(sqrt(A127473(n+1)))` -/
def P13253997345654401215.Spec : Prop :=
  ∀ n, P13253997345654401215.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P10022024162373818035

`A008683(A109606(n+1)+1)`
-/

namespace A343910.P10022024162373818035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A109606 (n + 1) + 1).toNat

end

end A343910.P10022024162373818035

namespace A343910

/-- `A008683(A109606(n+1)+1)` -/
def P10022024162373818035.Spec : Prop :=
  ∀ n, P10022024162373818035.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P409833850776559405

`A008683(A039649(n+1)-1)`
-/

namespace A343910.P409833850776559405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A039649 (n + 1) - 1).toNat

end

end A343910.P409833850776559405

namespace A343910

/-- `A008683(A039649(n+1)-1)` -/
def P409833850776559405.Spec : Prop :=
  ∀ n, P409833850776559405.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P3641199768522468824

`A008683(A349137(2*n+1))`
-/

namespace A343910.P3641199768522468824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A349137 (2 * n + 1)).toNat

end

end A343910.P3641199768522468824

namespace A343910

/-- `A008683(A349137(2*n+1))` -/
def P3641199768522468824.Spec : Prop :=
  ∀ n, P3641199768522468824.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P2651123777127053511

`A008683(n-A219428(n+1))`
-/

namespace A343910.P2651123777127053511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A343910.P2651123777127053511

namespace A343910

/-- `A008683(n-A219428(n+1))` -/
def P2651123777127053511.Spec : Prop :=
  ∀ n, P2651123777127053511.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P12500744919073408322

`∑{d}[A000010(n+1), A007427(#)]`
-/

namespace A343910.P12500744919073408322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A343910.P12500744919073408322

namespace A343910

/-- `∑{d}[A000010(n+1), A007427(#)]` -/
def P12500744919073408322.Spec : Prop :=
  ∀ n, P12500744919073408322.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P15317613458024971010

`A008683(n+1-A051953(n+1))`
-/

namespace A343910.P15317613458024971010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1 : ℤ) - A051953 (n + 1)).toNat

end

end A343910.P15317613458024971010

namespace A343910

/-- `A008683(n+1-A051953(n+1))` -/
def P15317613458024971010.Spec : Prop :=
  ∀ n, P15317613458024971010.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P1070284091101513722

`A008683(A121048(n+1)-(n+1))`
-/

namespace A343910.P1070284091101513722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A121048 (n + 1) - (n + 1 : ℤ)).toNat

end

end A343910.P1070284091101513722

namespace A343910

/-- `A008683(A121048(n+1)-(n+1))` -/
def P1070284091101513722.Spec : Prop :=
  ∀ n, P1070284091101513722.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P917415546387288278

`A008683(A002618(n+1)/(n+1))`
-/

namespace A343910.P917415546387288278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A343910.P917415546387288278

namespace A343910

/-- `A008683(A002618(n+1)/(n+1))` -/
def P917415546387288278.Spec : Prop :=
  ∀ n, P917415546387288278.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P17604318504424609972

`A008683(A000010(-xor(n, -1)))^3`
-/

namespace A343910.P17604318504424609972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 (-Int.xor (n : ℤ) (-1)).toNat).toNat ^ 3

end

end A343910.P17604318504424609972

namespace A343910

/-- `A008683(A000010(-xor(n, -1)))^3` -/
def P17604318504424609972.Spec : Prop :=
  ∀ n, P17604318504424609972.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P13171918395956394092

`A008683(A000010(Δ[n²]-n))^3`
-/

namespace A343910.P13171918395956394092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat ^ 3

end

end A343910.P13171918395956394092

namespace A343910

/-- `A008683(A000010(Δ[n²]-n))^3` -/
def P13171918395956394092.Spec : Prop :=
  ∀ n, P13171918395956394092.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P590293573706835525

`A008683(A000010(n-log2(1/2)))%2`
-/

namespace A343910.P590293573706835525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (A000010 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat) 2

end

end A343910.P590293573706835525

namespace A343910

/-- `A008683(A000010(n-log2(1/2)))%2` -/
def P590293573706835525.Spec : Prop :=
  ∀ n, P590293573706835525.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P6522982203561753382

`A008683(∑{d}[n+1, (n+1)/#*A008683(#)])`
-/

namespace A343910.P6522982203561753382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))).toNat

end

end A343910.P6522982203561753382

namespace A343910

/-- `A008683(∑{d}[n+1, (n+1)/#*A008683(#)])` -/
def P6522982203561753382.Spec : Prop :=
  ∀ n, P6522982203561753382.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P8584852296024024314

`∑{d}[n+1, A055615(#)*A289627((n+1)/#)]`
-/

namespace A343910.P8584852296024024314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A289627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343910.P8584852296024024314

namespace A343910

/-- `∑{d}[n+1, A055615(#)*A289627((n+1)/#)]` -/
def P8584852296024024314.Spec : Prop :=
  ∀ n, P8584852296024024314.a n = A343910 (n + 1)

end A343910

/-! ## A343910.P14479360823806521589

`A008683(A000010(2*n-(n-1))-and(2, n²))`
-/

namespace A343910.P14479360823806521589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 2 (n ^ 2) : ℤ)).toNat

end

end A343910.P14479360823806521589

namespace A343910

/-- `A008683(A000010(2*n-(n-1))-and(2, n²))` -/
def P14479360823806521589.Spec : Prop :=
  ∀ n, P14479360823806521589.a n = A343910 (n + 1)

end A343910

/-!
# A343911: a(n) = Omega(phi(n)), where Omega is the number of prime factors of n with multiplicity and phi is the Euler totient function.

The programs for A343911, the canonical program `A343911.P9839514702629909330` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343911 has offset 1).

The definition of A343911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343911.P9839514702629909330

`A001222(A000010(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A343911

/-- `A001222(A000010(n+1))` -/
def P9839514702629909330.Spec : Prop :=
  ∀ n, P9839514702629909330.a n = A343911 (n + 1)

theorem P9839514702629909330.correct : P9839514702629909330.Spec := by
  intro n
  simp only [A343911, Nat.add_sub_cancel]

end A343911

/-! ## A343911.P9903204601140824003

`∑{e}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]`
-/

namespace A343911.P9903204601140824003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A343911.P9903204601140824003

namespace A343911

/-- `∑{e}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]` -/
def P9903204601140824003.Spec : Prop :=
  ∀ n, (P9903204601140824003.a n : ℤ) = A343911 (n + 1)

end A343911

/-! ## A343911.P10485691954696195366

`∑{e}[Δ[A005728(n)], #]`
-/

namespace A343911.P10485691954696195366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343911.P10485691954696195366

namespace A343911

/-- `∑{e}[Δ[A005728(n)], #]` -/
def P10485691954696195366.Spec : Prop :=
  ∀ n, (P10485691954696195366.a n : ℤ) = A343911 (n + 1)

end A343911

/-! ## A343911.P4747303264599412902

`∑{e}[A195459(n+1), #]`
-/

namespace A343911.P4747303264599412902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343911.P4747303264599412902

namespace A343911

/-- `∑{e}[A195459(n+1), #]` -/
def P4747303264599412902.Spec : Prop :=
  ∀ n, (P4747303264599412902.a n : ℤ) = A343911 (n + 1)

end A343911

/-! ## A343911.P7891692068240416036

`∑{e}[A277906(n+1), #]`
-/

namespace A343911.P7891692068240416036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343911.P7891692068240416036

namespace A343911

/-- `∑{e}[A277906(n+1), #]` -/
def P7891692068240416036.Spec : Prop :=
  ∀ n, (P7891692068240416036.a n : ℤ) = A343911 (n + 1)

end A343911

/-! ## A343911.P9014212723191304082

`∑{e}[A109606(n+1)+1, #]`
-/

namespace A343911.P9014212723191304082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343911.P9014212723191304082

namespace A343911

/-- `∑{e}[A109606(n+1)+1, #]` -/
def P9014212723191304082.Spec : Prop :=
  ∀ n, (P9014212723191304082.a n : ℤ) = A343911 (n + 1)

end A343911

/-! ## A343911.P4062831236446339906

`∑{e}[1-A039649(n+1), #]`
-/

namespace A343911.P4062831236446339906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343911.P4062831236446339906

namespace A343911

/-- `∑{e}[1-A039649(n+1), #]` -/
def P4062831236446339906.Spec : Prop :=
  ∀ n, (P4062831236446339906.a n : ℤ) = A343911 (n + 1)

end A343911

/-! ## A343911.P12784760787994398066

`∑{e}[A349137(2*n+1), #]`
-/

namespace A343911.P12784760787994398066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343911.P12784760787994398066

namespace A343911

/-- `∑{e}[A349137(2*n+1), #]` -/
def P12784760787994398066.Spec : Prop :=
  ∀ n, (P12784760787994398066.a n : ℤ) = A343911 (n + 1)

end A343911

/-! ## A343911.P8503838242702210542

`∑{e}[A219428(n+1)-n, #]`
-/

namespace A343911.P8503838242702210542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343911.P8503838242702210542

namespace A343911

/-- `∑{e}[A219428(n+1)-n, #]` -/
def P8503838242702210542.Spec : Prop :=
  ∀ n, (P8503838242702210542.a n : ℤ) = A343911 (n + 1)

end A343911

/-! ## A343911.P4230144794058389508

`A001222(Δ[A002088(n)])`
-/

namespace A343911.P4230144794058389508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A343911.P4230144794058389508

namespace A343911

/-- `A001222(Δ[A002088(n)])` -/
def P4230144794058389508.Spec : Prop :=
  ∀ n, P4230144794058389508.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P3626217088936665790

`A001222(Δ[A005728(n)])`
-/

namespace A343911.P3626217088936665790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A343911.P3626217088936665790

namespace A343911

/-- `A001222(Δ[A005728(n)])` -/
def P3626217088936665790.Spec : Prop :=
  ∀ n, P3626217088936665790.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P12545273580728931040

`A001222(A195459(n+1))`
-/

namespace A343911.P12545273580728931040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A195459 (n + 1)).toNat

end

end A343911.P12545273580728931040

namespace A343911

/-- `A001222(A195459(n+1))` -/
def P12545273580728931040.Spec : Prop :=
  ∀ n, P12545273580728931040.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P7947838362438453086

`A001222(A277906(n+1))`
-/

namespace A343911.P7947838362438453086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A277906 (n + 1)).toNat

end

end A343911.P7947838362438453086

namespace A343911

/-- `A001222(A277906(n+1))` -/
def P7947838362438453086.Spec : Prop :=
  ∀ n, P7947838362438453086.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P6012254161746846699

`A001222(sqrt(A127473(n+1)))`
-/

namespace A343911.P6012254161746846699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A343911.P6012254161746846699

namespace A343911

/-- `A001222(sqrt(A127473(n+1)))` -/
def P6012254161746846699.Spec : Prop :=
  ∀ n, P6012254161746846699.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P186841315939877859

`A001222(A109606(n+1)+1)`
-/

namespace A343911.P186841315939877859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A109606 (n + 1) + 1).toNat

end

end A343911.P186841315939877859

namespace A343911

/-- `A001222(A109606(n+1)+1)` -/
def P186841315939877859.Spec : Prop :=
  ∀ n, P186841315939877859.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P13454179722065946994

`A001222(A039649(n+1)-1)`
-/

namespace A343911.P13454179722065946994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039649 (n + 1) - 1).toNat

end

end A343911.P13454179722065946994

namespace A343911

/-- `A001222(A039649(n+1)-1)` -/
def P13454179722065946994.Spec : Prop :=
  ∀ n, P13454179722065946994.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P5525991683033522680

`A001222(A349137(2*n+1))`
-/

namespace A343911.P5525991683033522680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A349137 (2 * n + 1)).toNat

end

end A343911.P5525991683033522680

namespace A343911

/-- `A001222(A349137(2*n+1))` -/
def P5525991683033522680.Spec : Prop :=
  ∀ n, P5525991683033522680.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P4818569886225213671

`A001222(n-A219428(n+1))`
-/

namespace A343911.P4818569886225213671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A343911.P4818569886225213671

namespace A343911

/-- `A001222(n-A219428(n+1))` -/
def P4818569886225213671.Spec : Prop :=
  ∀ n, P4818569886225213671.a n = A343911 (n + 1)

end A343911

/-! ## A343911.P3256248812457944259

`∑{d}[A000010(n+1), A069513(#)]`
-/

namespace A343911.P3256248812457944259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A343911.P3256248812457944259

namespace A343911

/-- `∑{d}[A000010(n+1), A069513(#)]` -/
def P3256248812457944259.Spec : Prop :=
  ∀ n, P3256248812457944259.a n = A343911 (n + 1)

end A343911

/-!
# A343912: a(n) = n - phi(n - phi(n)), where phi is the Euler totient function.

The programs for A343912, the canonical program `A343912.P17867153873116999387` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343912 has offset 1).

The definition of A343912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343912.P7290690431719261357

`1-A054571(n+1)+n`
-/

namespace A343912.P7290690431719261357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054571 (n + 1) + (n : ℤ)

end

end A343912.P7290690431719261357

namespace A343912

/-- `1-A054571(n+1)+n` -/
def P7290690431719261357.Spec : Prop :=
  ∀ n, P7290690431719261357.a n = A343912 (n + 1)

end A343912

/-! ## A343912.P1360705031273599677

`2*n-(n-1)-A054571(2*n-(n-1))`
-/

namespace A343912.P1360705031273599677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1) - A054571 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A343912.P1360705031273599677

namespace A343912

/-- `2*n-(n-1)-A054571(2*n-(n-1))` -/
def P1360705031273599677.Spec : Prop :=
  ∀ n, P1360705031273599677.a n = A343912 (n + 1)

end A343912

/-! ## A343912.P17867153873116999387

`A053470(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A343912

/-- `A053470(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P17867153873116999387.Spec : Prop :=
  ∀ n, P17867153873116999387.a n = (A343912 (n + 1) : ℚ)

end A343912

/-! ## A343912.P13274009459750812635

`A346692(n+1)+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n`
-/

namespace A343912.P13274009459750812635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346692 (n + 1) : ℚ) + (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

end

end A343912.P13274009459750812635

namespace A343912

/-- `A346692(n+1)+1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n` -/
def P13274009459750812635.Spec : Prop :=
  ∀ n, P13274009459750812635.a n = (A343912 (n + 1) : ℚ)

end A343912

/-! ## A343912.P16951953187631452605

`n-A023443(A054571(n+1))`
-/

namespace A343912.P16951953187631452605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A054571 (n + 1)).toNat

end

end A343912.P16951953187631452605

namespace A343912

/-- `n-A023443(A054571(n+1))` -/
def P16951953187631452605.Spec : Prop :=
  ∀ n, P16951953187631452605.a n = A343912 (n + 1)

end A343912

/-! ## A343912.P18228557645628511287

`A053470(n+1)+Δ[A002088(n)]`
-/

namespace A343912.P18228557645628511287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (n + 1) + (f1 (n + 1) - f1 n)

end

end A343912.P18228557645628511287

namespace A343912

/-- `A053470(n+1)+Δ[A002088(n)]` -/
def P18228557645628511287.Spec : Prop :=
  ∀ n, P18228557645628511287.a n = A343912 (n + 1)

end A343912

/-! ## A343912.P11432054620093075385

`A053470(n+1)+A000010(n+1)`
-/

namespace A343912.P11432054620093075385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (n + 1) + A000010 (n + 1)

end

end A343912.P11432054620093075385

namespace A343912

/-- `A053470(n+1)+A000010(n+1)` -/
def P11432054620093075385.Spec : Prop :=
  ∀ n, P11432054620093075385.a n = A343912 (n + 1)

end A343912

/-! ## A343912.P6963710128759801482

`A346692(n+1)+A051953(n+1)`
-/

namespace A343912.P6963710128759801482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) + A051953 (n + 1)

end

end A343912.P6963710128759801482

namespace A343912

/-- `A346692(n+1)+A051953(n+1)` -/
def P6963710128759801482.Spec : Prop :=
  ∀ n, P6963710128759801482.a n = A343912 (n + 1)

end A343912

/-! ## A343912.P14619861356999035805

`n+1-∑{d}[A051953(n+1), A007431(#)]`
-/

namespace A343912.P14619861356999035805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A343912.P14619861356999035805

namespace A343912

/-- `n+1-∑{d}[A051953(n+1), A007431(#)]` -/
def P14619861356999035805.Spec : Prop :=
  ∀ n, P14619861356999035805.a n = A343912 (n + 1)

end A343912

/-! ## A343912.P16473434079375413513

`A346692(n+1)+1-A000010(n+1)+n`
-/

namespace A343912.P16473434079375413513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) + (1 - A000010 (n + 1) + (n : ℤ))

end

end A343912.P16473434079375413513

namespace A343912

/-- `A346692(n+1)+1-A000010(n+1)+n` -/
def P16473434079375413513.Spec : Prop :=
  ∀ n, P16473434079375413513.a n = A343912 (n + 1)

end A343912

/-! ## A343912.P12834329197133401849

`A053470(n+1)+A349679(n+1)-A067392(n+1)`
-/

namespace A343912.P12834329197133401849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (n + 1) + (A349679 (n + 1) - A067392 (n + 1))

end

end A343912.P12834329197133401849

namespace A343912

/-- `A053470(n+1)+A349679(n+1)-A067392(n+1)` -/
def P12834329197133401849.Spec : Prop :=
  ∀ n, P12834329197133401849.a n = A343912 (n + 1)

end A343912

/-!
# A343913: Positive integers m such that 2*m^2 - 1 = x^4 + y^4 for some nonnegative integers x and y with |x - y| > 1.

The programs for A343913, there is no canonical definition to state claims against.
-/

/-! ## A343913.P7495832637785503092

`record[A110962(A343917(n+1))]`
-/

namespace A343913.P7495832637785503092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A343917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343913.P7495832637785503092

/-!
# A343914: Riesel problem in base 3: a(n) is the smallest k >= 0 such that (2*n)*3^k-1 is prime, or -1 if no such k exists.

The programs for A343914, there is no canonical definition to state claims against.
-/

/-! ## A343914.P5077635124615878678

`A178948(2*(n+1))`
-/

namespace A343914.P5077635124615878678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (2 * (n + 1))

end

end A343914.P5077635124615878678

/-! ## A343914.P2145180781368310467

`A178948(n+2+n)%10`
-/

namespace A343914.P2145180781368310467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178948 (n + 2 + n)) 10

end

end A343914.P2145180781368310467

/-! ## A343914.P7231385064235244309

`abs(A178948(record[xor(1, n)+1]))`
-/

namespace A343914.P7231385064235244309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A343914.P7231385064235244309

/-! ## A343914.P12726969819402177955

`abs(A178948(A103517(n)))`
-/

namespace A343914.P12726969819402177955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178948 (A103517 n).toNat|

end

end A343914.P12726969819402177955

/-! ## A343914.P2716341195621202409

`abs(A178948(Δ[A002378(n)]))`
-/

namespace A343914.P2716341195621202409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178948 (f1 (n + 1) - f1 n).toNat|

end

end A343914.P2716341195621202409

/-!
# A343915: a(n) = floor(((n mod 6)+1) * 10^floor((n/6)+1) / 7).

The programs for A343915, there is no canonical definition to state claims against.
-/

/-! ## A343915.P3292790005068650288

`record[gcd(A101508(n), A134658(n))]`
-/

namespace A343915.P3292790005068650288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101508 n) (A134658 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343915.P3292790005068650288

/-! ## A343915.P3975246502334748490

`record[A224362(A075110(n+1)+n)]`
-/

namespace A343915.P3975246502334748490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224362 (A075110 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343915.P3975246502334748490

/-! ## A343915.P1153890870193024181

`record[gcd(A078181(n+1), A264029(n+1))]`
-/

namespace A343915.P1153890870193024181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078181 (n + 1)) (A264029 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343915.P1153890870193024181

/-! ## A343915.P12273738844538673513

`record[gcd(A175326(n+1), A202581(n+1))]`
-/

namespace A343915.P12273738844538673513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175326 (n + 1)) (A202581 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343915.P12273738844538673513

/-! ## A343915.P10930323012288298578

`lt[A330084(n), A231325(A349749(n+2))]`
-/

namespace A343915.P10930323012288298578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330084 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (A349749 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343915.P10930323012288298578

/-!
# A343916: a(n) is the minimal total number of faces of a polyhedron with at least one i-gonal face for every i in 3..n.

The programs for A343916, there is no canonical definition to state claims against.
-/

/-! ## A343916.P11998341508714998236

`A316846(or(6, A022105(n)))`
-/

namespace A343916.P11998341508714998236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (Int.lor 6 (A022105 n)).toNat

end

end A343916.P11998341508714998236

/-! ## A343916.P14112683134270654597

`A316846(A056019(n)+A000032(n+4))`
-/

namespace A343916.P14112683134270654597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A056019 n + A000032 (n + 4)).toNat

end

end A343916.P14112683134270654597

/-! ## A343916.P10834128238162215971

`A316846(A317586(n+5)+A000032(n+4))`
-/

namespace A343916.P10834128238162215971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A317586 (n + 5) + A000032 (n + 4)).toNat

end

end A343916.P10834128238162215971

/-! ## A343916.P7382387801730035062

`A132944(A289261(n+3)+A113501(n+1))+1`
-/

namespace A343916.P7382387801730035062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132944 (A289261 (n + 3) + A113501 (n + 1)).toNat + 1

end

end A343916.P7382387801730035062

/-!
# A343923: If n = Product (p_j^k_j) then a(n) = Sum (abs(p_j-k_j)) (a(1) = 0 by convention).

The programs for A343923, the canonical program `A343923.P3600779734433298053` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343923 has offset 1).

The definition of A343923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343923.P3600779734433298053

`∑{p}[n+1, abs(val(n+1, #)-#)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343923

/-- `∑{p}[n+1, abs(val(n+1, #)-#)]` -/
def P3600779734433298053.Spec : Prop :=
  ∀ n, P3600779734433298053.a n = A343923 (n + 1)

theorem P3600779734433298053.correct : P3600779734433298053.Spec := by
  intro n
  simp only [A343923, Nat.add_sub_cancel]

end A343923

/-! ## A343923.P3490418473863608558

`A001222(A259939(n))-A063958(n+1)`
-/

namespace A343923.P3490418473863608558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A259939 n).toNat - A063958 (n + 1)

end

end A343923.P3490418473863608558

namespace A343923

/-- `A001222(A259939(n))-A063958(n+1)` -/
def P3490418473863608558.Spec : Prop :=
  ∀ n, P3490418473863608558.a n = A343923 (n + 1)

end A343923

/-! ## A343923.P6465191520313877225

`A001222(A037019(n+1))-A063958(n+1)`
-/

namespace A343923.P6465191520313877225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037019 (n + 1)).toNat - A063958 (n + 1)

end

end A343923.P6465191520313877225

namespace A343923

/-- `A001222(A037019(n+1))-A063958(n+1)` -/
def P6465191520313877225.Spec : Prop :=
  ∀ n, P6465191520313877225.a n = A343923 (n + 1)

end A343923

/-! ## A343923.P2215737667272451524

`val(A344248(A043320(n+1)), 4)`
-/

namespace A343923.P2215737667272451524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A344248 (A043320 (n + 1)).toNat).toNat 4

end

end A343923.P2215737667272451524

namespace A343923

/-- `val(A344248(A043320(n+1)), 4)` -/
def P2215737667272451524.Spec : Prop :=
  ∀ n, (P2215737667272451524.a n : ℤ) = A343923 (n + 1)

end A343923

/-! ## A343923.P6155493898177296277

`val(A344248(A044917(n+1)), 4)`
-/

namespace A343923.P6155493898177296277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A344248 (A044917 (n + 1)).toNat).toNat 4

end

end A343923.P6155493898177296277

namespace A343923

/-- `val(A344248(A044917(n+1)), 4)` -/
def P6155493898177296277.Spec : Prop :=
  ∀ n, (P6155493898177296277.a n : ℤ) = A343923 (n + 1)

end A343923

/-!
# A343926: a(n) is the least k such that A343443(k) = n or 0 if there is no such k.

The programs for A343926, there is no canonical definition to state claims against.
-/

/-! ## A343926.P13681731690382695848

`A011782(n)%A152204(A015219(n))`
-/

namespace A343926.P13681731690382695848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) (A152204 (A015219 n).toNat)

end

end A343926.P13681731690382695848

/-! ## A343926.P7017380030879737209

`and(A072978(A049311(n+1)), A107429(n+1))`
-/

namespace A343926.P7017380030879737209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072978 (A049311 (n + 1)).toNat) (A107429 (n + 1))

end

end A343926.P7017380030879737209

/-! ## A343926.P3863481819152084383

`and(A243283(A026079(n+1)), A299119(n+1))`
-/

namespace A343926.P3863481819152084383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243283 (A026079 (n + 1)).toNat) (A299119 (n + 1))

end

end A343926.P3863481819152084383

/-!
# A343930: Numbers k such that Sum_{j=1..k} (-j)^j == 1 (mod k).

The programs for A343930, there is no canonical definition to state claims against.
-/

/-! ## A343930.P10682331924876570285

`eq[ceil(sin(n)²), A343933(n+1)]+1`
-/

namespace A343930.P10682331924876570285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343930.P10682331924876570285

/-! ## A343930.P18361605262417497492

`eq[A057427(n), A343933(n+1)]+1`
-/

namespace A343930.P18361605262417497492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343930.P18361605262417497492

/-! ## A343930.P10478522700619456346

`eq[A060576(n), A343933(A028310(n))]`
-/

namespace A343930.P10478522700619456346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343933 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343930.P10478522700619456346

/-! ## A343930.P946457524227202367

`eq[A057427(n), A343933(A233583(n+1))]`
-/

namespace A343930.P946457524227202367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343933 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343930.P946457524227202367

/-!
# A343931: Numbers k such that Sum_{j=1..k} (-j)^j == 0 (mod k).

The programs for A343931, there is no canonical definition to state claims against.
-/

/-! ## A343931.P13035437194511771264

`eq[0, A343933(n+1)]+1`
-/

namespace A343931.P13035437194511771264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343931.P13035437194511771264

/-! ## A343931.P10509790700879547894

`eq[A000007(n), A343933(A028310(n))]`
-/

namespace A343931.P10509790700879547894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343933 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343931.P10509790700879547894

/-! ## A343931.P16959548368651700135

`eq[A000038(n), A343933(A028310(n))]`
-/

namespace A343931.P16959548368651700135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343933 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343931.P16959548368651700135

/-! ## A343931.P18112706643890476197

`lt[A343933(A028310(n)), A057427(n)]`
-/

namespace A343931.P18112706643890476197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343933 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343931.P18112706643890476197

/-!
# A343932: a(n) = (Sum_{k=1..n} k^k) mod n.

The programs for A343932, there is no canonical definition to state claims against.
-/

/-! ## A343932.P101095435045703094

`(∑[n^n]-1)%(n+1)`
-/

namespace A343932.P101095435045703094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)

end

end A343932.P101095435045703094

/-! ## A343932.P13386375424643198490

`lcm(A001923(n)%(n+1), A178334(n))`
-/

namespace A343932.P13386375424643198490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A001923 n) (n + 1 : ℤ)) (A178334 n)

end

end A343932.P13386375424643198490

/-! ## A343932.P17595219511662918077

`abs(∑[-(n+1)^(n+1)]%(n+1))`
-/

namespace A343932.P17595219511662918077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1) ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A343932.P17595219511662918077

/-! ## A343932.P3564951404349121155

`--∑[(n+1)^(n+1)]%(n+1)`
-/

namespace A343932.P3564951404349121155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A343932.P3564951404349121155

/-! ## A343932.P7631206923499516249

`A266151(A266151(∑[(n+1)^(n+1)]%(n+1)))`
-/

namespace A343932.P7631206923499516249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266151 (A266151 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))).toNat

end

end A343932.P7631206923499516249

/-!
# A343933: a(n) = (Sum_{k=1..n} (-k)^k) mod n.

The programs for A343933, there is no canonical definition to state claims against.
-/

/-! ## A343933.P11736957121689915381

`A003101(n)%(n+1)`
-/

namespace A343933.P11736957121689915381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003101 n) (n + 1 : ℤ)

end

end A343933.P11736957121689915381

/-! ## A343933.P426013583455416517

`(A026898(n)-1)%(n+1)`
-/

namespace A343933.P426013583455416517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026898 n - 1) (n + 1 : ℤ)

end

end A343933.P426013583455416517

/-! ## A343933.P18361715521719653588

`(Δ[A103439(n)]-1)%(n+1)`
-/

namespace A343933.P18361715521719653588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 1) (n + 1 : ℤ)

end

end A343933.P18361715521719653588

/-! ## A343933.P1900747659435134631

`(Δ[A104879(n)]-1)%(n+1)`
-/

namespace A343933.P1900747659435134631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 1) (n + 1 : ℤ)

end

end A343933.P1900747659435134631

/-! ## A343933.P18206254139052700651

`floor(A062810(n+1)/2)%(n+1)`
-/

namespace A343933.P18206254139052700651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A062810 (n + 1) : ℚ) / 2⌋ (n + 1 : ℤ)

end

end A343933.P18206254139052700651

/-! ## A343933.P1044430046988372764

`(A101494(∑[n+1])+n)%(n+1)`
-/

namespace A343933.P1044430046988372764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101494 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)) (n + 1 : ℤ)

end

end A343933.P1044430046988372764

/-! ## A343933.P461310699031576956

`(A028310(n)+A026898(n))%(n+1)`
-/

namespace A343933.P461310699031576956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n + A026898 n) (n + 1 : ℤ)

end

end A343933.P461310699031576956

/-! ## A343933.P12028788496645398556

`Δ[A103439(n)+A001489(n)]%(n+1)`
-/

namespace A343933.P12028788496645398556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A343933.P12028788496645398556

/-! ## A343933.P15563477303538135714

`A226140(2*(n+1))%(n+1)`
-/

namespace A343933.P15563477303538135714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226140 (2 * (n + 1))) (n + 1 : ℤ)

end

end A343933.P15563477303538135714

/-!
# A343934: Irregular triangle read by rows: row n gives the sequence of iterations of k - A006519(k), starting with k=n, until 0 is reached.

The programs for A343934, there is no canonical definition to state claims against.
-/

/-! ## A343934.P15864389308209650609

`A004736(∑[A011782(A048793(n))])`
-/

namespace A343934.P15864389308209650609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A048793 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343934.P15864389308209650609

/-! ## A343934.P17565362818578627216

`A000005(A003958(record[A276618(n)]))`
-/

namespace A343934.P17565362818578627216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A343934.P17565362818578627216

/-! ## A343934.P4804752378573887766

`A000005(A173557(record[A276618(n)]))`
-/

namespace A343934.P4804752378573887766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A173557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A343934.P4804752378573887766

/-! ## A343934.P9768746158252657548

`A277818(record[A276618(n)])`
-/

namespace A343934.P9768746158252657548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277818 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343934.P9768746158252657548

/-! ## A343934.P7131471425770926704

`A000005(A322352(record[A276618(n)]))`
-/

namespace A343934.P7131471425770926704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A322352 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A343934.P7131471425770926704

/-!
# A343935: Number of ways to choose a multiset of n divisors of n.

The programs for A343935, there is no canonical definition to state claims against.
-/

/-! ## A343935.P10780643327568310004

`C(∏{e}[n+1, #+1]+n, n+1)`
-/

namespace A343935.P10780643327568310004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + n) (n + 1)

end

end A343935.P10780643327568310004

/-! ## A343935.P369136910746945248

`C(∑{d}[n+1, gcd(n, #)]+n, n+1)`
-/

namespace A343935.P369136910746945248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d + n) (n + 1)

end

end A343935.P369136910746945248

/-! ## A343935.P13355839728243935263

`C(∑{d}[n+1, ceil(acot(#))]+n, n+1)`
-/

namespace A343935.P13355839728243935263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ + (n : ℤ)).toNat (n + 1)

end

end A343935.P13355839728243935263

/-! ## A343935.P7117235668656049474

`C(∑{d}[n+1, ceil(1/#)]+n, n+1)`
-/

namespace A343935.P7117235668656049474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ + (n : ℤ)).toNat (n + 1)

end

end A343935.P7117235668656049474

/-! ## A343935.P11064255919529449843

`C(2^∑{e}[n+1, log2(#+1)]+n, n+1)`
-/

namespace A343935.P11064255919529449843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)) + (n : ℝ))).toNat (n + 1)

end

end A343935.P11064255919529449843

/-!
# A343936: Number of ways to choose a multiset of n divisors of n - 1.

The programs for A343936, there is no canonical definition to state claims against.
-/

/-! ## A343936.P6170963581920126466

`C(∑{d}[n+1, floor(atan(#))]+n, n)`
-/

namespace A343936.P6170963581920126466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋ + (n : ℤ)).toNat n

end

end A343936.P6170963581920126466

/-! ## A343936.P18392024936094404532

`C(∏{e}[n+1, #+1]-1+n, n)`
-/

namespace A343936.P18392024936094404532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1 + (n : ℤ)).toNat n

end

end A343936.P18392024936094404532

/-! ## A343936.P3748481433743537986

`C(∑{d}[n+1, gcd(n, #)]-1+n, n)`
-/

namespace A343936.P3748481433743537986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - 1 + (n : ℤ)).toNat n

end

end A343936.P3748481433743537986

/-! ## A343936.P7344470342083517551

`C(∑{d}[n+1, ceil(acot(#))]+n-1, n)`
-/

namespace A343936.P7344470342083517551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ + ((n : ℤ) - 1)).toNat n

end

end A343936.P7344470342083517551

/-! ## A343936.P6825253895572695649

`C(∑{d}[n+1, ceil(2/#)]+n-2, n)`
-/

namespace A343936.P6825253895572695649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ + (n : ℤ) - 2).toNat n

end

end A343936.P6825253895572695649

/-!
# A343937: Number of unlabeled semi-identity plane trees with n nodes.

The programs for A343937, there is no canonical definition to state claims against.
-/

/-! ## A343937.P14701716933077747016

`A194640(A030238(n))`
-/

namespace A343937.P14701716933077747016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A030238 n).toNat

end

end A343937.P14701716933077747016

/-! ## A343937.P15842765860154640839

`A157271(A088704(n)+A026741(n))`
-/

namespace A343937.P15842765860154640839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A088704 n + A026741 n).toNat

end

end A343937.P15842765860154640839

/-! ## A343937.P7360006005581035623

`A360271(n)+A083917(A360266(n))`
-/

namespace A343937.P7360006005581035623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360271 n + A083917 (A360266 n).toNat

end

end A343937.P7360006005581035623

/-!
# A343938: Twice the number of prime factors of n minus the sum of prime indices of n, both counted with multiplicity.

The programs for A343938, the canonical program `A343938.P15178869709547633388` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343938 has offset 1).

The definition of A343938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343938.P15178869709547633388

`∑{e}[n+1, #]-A318995(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A343938

/-- `∑{e}[n+1, #]-A318995(n+1)` -/
def P15178869709547633388.Spec : Prop :=
  ∀ n, P15178869709547633388.a n = A343938 (n + 1)

theorem P15178869709547633388.correct : P15178869709547633388.Spec := by
  intro n
  simp only [A343938, Nat.add_sub_cancel]

end A343938

/-! ## A343938.P13626689286755852146

`val(∏{e}[n+1, 4^#], 2)-(A316436(2*(n+1))-1)`
-/

namespace A343938.P13626689286755852146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 4 ^ Nat.factorization (f1 n) p) 2 : ℤ) - (A316436 (2 * (n + 1)) - 1)

end

end A343938.P13626689286755852146

namespace A343938

/-- `val(∏{e}[n+1, 4^#], 2)-(A316436(2*(n+1))-1)` -/
def P13626689286755852146.Spec : Prop :=
  ∀ n, P13626689286755852146.a n = A343938 (n + 1)

end A343938

/-! ## A343938.P14476840003340988537

`Δ[A022559(n)]-A318995(n+1)`
-/

namespace A343938.P14476840003340988537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A318995 (n + 1)

end

end A343938.P14476840003340988537

namespace A343938

/-- `Δ[A022559(n)]-A318995(n+1)` -/
def P14476840003340988537.Spec : Prop :=
  ∀ n, P14476840003340988537.a n = A343938 (n + 1)

end A343938

/-! ## A343938.P2840040436430822043

`A255201(n+1)-A056239(n+1)`
-/

namespace A343938.P2840040436430822043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A056239 (n + 1)

end

end A343938.P2840040436430822043

namespace A343938

/-- `A255201(n+1)-A056239(n+1)` -/
def P2840040436430822043.Spec : Prop :=
  ∀ n, P2840040436430822043.a n = A343938 (n + 1)

end A343938

/-! ## A343938.P10357913242099086939

`A001222(n+1)-A318995(n+1)`
-/

namespace A343938.P10357913242099086939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A318995 (n + 1)

end

end A343938.P10357913242099086939

namespace A343938

/-- `A001222(n+1)-A318995(n+1)` -/
def P10357913242099086939.Spec : Prop :=
  ∀ n, P10357913242099086939.a n = A343938 (n + 1)

end A343938

/-! ## A343938.P15206315451550277361

`A001222(n+1)+A001222(n+1)-A056239(n+1)`
-/

namespace A343938.P15206315451550277361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A001222 (n + 1) - A056239 (n + 1))

end

end A343938.P15206315451550277361

namespace A343938

/-- `A001222(n+1)+A001222(n+1)-A056239(n+1)` -/
def P15206315451550277361.Spec : Prop :=
  ∀ n, P15206315451550277361.a n = A343938 (n + 1)

end A343938

/-! ## A343938.P11540621779823923398

`A056239(n+1)-A318995(n+1)-A318995(n+1)`
-/

namespace A343938.P11540621779823923398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A318995 (n + 1) - A318995 (n + 1)

end

end A343938.P11540621779823923398

namespace A343938

/-- `A056239(n+1)-A318995(n+1)-A318995(n+1)` -/
def P11540621779823923398.Spec : Prop :=
  ∀ n, P11540621779823923398.a n = A343938 (n + 1)

end A343938

/-! ## A343938.P15598171790380649420

`log(∏{e}[n+1, exp(#)])-A318995(2*(n+1))`
-/

namespace A343938.P15598171790380649420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ)) - (A318995 (2 * (n + 1)) : ℝ)

end

end A343938.P15598171790380649420

namespace A343938

/-- `log(∏{e}[n+1, exp(#)])-A318995(2*(n+1))` -/
def P15598171790380649420.Spec : Prop :=
  ∀ n, P15598171790380649420.a n = (A343938 (n + 1) : ℝ)

end A343938

/-! ## A343938.P6785145128416874789

`A001222((n+1)²)-A056239(n+1)`
-/

namespace A343938.P6785145128416874789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2) - A056239 (n + 1)

end

end A343938.P6785145128416874789

namespace A343938

/-- `A001222((n+1)²)-A056239(n+1)` -/
def P6785145128416874789.Spec : Prop :=
  ∀ n, P6785145128416874789.a n = A343938 (n + 1)

end A343938

/-! ## A343938.P742215085265071675

`A056239(n+1)-A318995((n+1)²)`
-/

namespace A343938.P742215085265071675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A318995 ((n + 1) ^ 2)

end

end A343938.P742215085265071675

namespace A343938

/-- `A056239(n+1)-A318995((n+1)²)` -/
def P742215085265071675.Spec : Prop :=
  ∀ n, P742215085265071675.a n = A343938 (n + 1)

end A343938

/-!
# A343939: Number of n-chains of divisors of n.

The programs for A343939, there is no canonical definition to state claims against.
-/

/-! ## A343939.P4769135040967905313

`∏{e}[n+1, C(n+1+#, #)]`
-/

namespace A343939.P4769135040967905313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (n + 1 + Nat.factorization (f1 n) p) (Nat.factorization (f1 n) p)

end

end A343939.P4769135040967905313

/-! ## A343939.P16547488699979392244

`A077592(2*(n+1)²)`
-/

namespace A343939.P16547488699979392244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (2 * (n + 1) ^ 2)

end

end A343939.P16547488699979392244

/-! ## A343939.P206457056242027516

`A334997(2*(n+1)²+1)`
-/

namespace A343939.P206457056242027516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (2 * (n + 1) ^ 2 + 1)

end

end A343939.P206457056242027516

/-! ## A343939.P209561066984250719

`gcd(floor(1/(n+1)), A334997(A058331(n+1)))`
-/

namespace A343939.P209561066984250719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A334997 (A058331 (n + 1)).toNat)

end

end A343939.P209561066984250719

/-! ## A343939.P12543939767239462372

`A334997(A058331(n+1))%A116292(n+1)`
-/

namespace A343939.P12543939767239462372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334997 (A058331 (n + 1)).toNat) (A116292 (n + 1))

end

end A343939.P12543939767239462372

/-!
# A343940: Sum of numbers of ways to choose a k-chain of divisors of n - k, for k = 0..n - 1.

The programs for A343940, there is no canonical definition to state claims against.
-/

/-! ## A343940.P13738237658304706682

`A347543(n+7)+A295659(A133221(n))`
-/

namespace A343940.P13738237658304706682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347543 (n + 7) + A295659 (A133221 n).toNat

end

end A343940.P13738237658304706682

/-! ## A343940.P12387554816983590761

`A046155(A000715(n)+n)`
-/

namespace A343940.P12387554816983590761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A000715 n + (n : ℤ)).toNat

end

end A343940.P12387554816983590761

/-! ## A343940.P8761218707752726838

`A347543(n+7)+A336835(A186724(n+4))`
-/

namespace A343940.P8761218707752726838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347543 (n + 7) + A336835 (A186724 (n + 4)).toNat

end

end A343940.P8761218707752726838

/-! ## A343940.P6841119070254410667

`∑[A089867(A008637(n))]`
-/

namespace A343940.P6841119070254410667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A008637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343940.P6841119070254410667

/-! ## A343940.P12473919609104468457

`∑[A089867(A238866(n))]`
-/

namespace A343940.P12473919609104468457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A238866 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343940.P12473919609104468457

/-!
# A343941: Number of strict integer partitions of 2*n with reverse-alternating sum 4.

The programs for A343941, there is no canonical definition to state claims against.
-/

/-! ## A343941.P15563868835990821775

`A344649(A133263(n))`
-/

namespace A343941.P15563868835990821775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344649 (A133263 n).toNat

end

end A343941.P15563868835990821775

/-! ## A343941.P5536269450467114178

`A344649(A238531(n+1))`
-/

namespace A343941.P5536269450467114178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344649 (A238531 (n + 1)).toNat

end

end A343941.P5536269450467114178

/-! ## A343941.P3886254617121914124

`A344649(∑[A091225(2*n)+n]+1)`
-/

namespace A343941.P3886254617121914124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344649 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A343941.P3886254617121914124

/-!
# A343942: Number of even-length strict integer partitions of 2n+1.

The programs for A343942, there is no canonical definition to state claims against.
-/

/-! ## A343942.P12162754721716370379

`A067661(Δ[n²])`
-/

namespace A343942.P12162754721716370379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A343942.P12162754721716370379

/-! ## A343942.P1066724800539913535

`A096792(Δ[n²])`
-/

namespace A343942.P1066724800539913535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096792 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A343942.P1066724800539913535

/-! ## A343942.P8894519123494580577

`record[A067661(xor(1, n))]`
-/

namespace A343942.P8894519123494580577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343942.P8894519123494580577

/-! ## A343942.P274100692265872980

`record[n%2*A067661(n)]`
-/

namespace A343942.P274100692265872980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A067661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343942.P274100692265872980

/-! ## A343942.P4836682368416247028

`record[A067661((-1)^n+n)]`
-/

namespace A343942.P4836682368416247028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 ((-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343942.P4836682368416247028

/-! ## A343942.P1662997720766990049

`and(-1, A067661(2*n+1))`
-/

namespace A343942.P1662997720766990049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A067661 (2 * n + 1))

end

end A343942.P1662997720766990049

/-! ## A343942.P7174588590885397102

`A078408(n)-A346634(n)`
-/

namespace A343942.P7174588590885397102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 n - A346634 n

end

end A343942.P7174588590885397102

/-! ## A343942.P6345195161031657878

`A346634(n)-A218173(n)`
-/

namespace A343942.P6345195161031657878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346634 n - A218173 n

end

end A343942.P6345195161031657878

/-! ## A343942.P4044350346862445964

`A346634(n)+A010815(2*n+1)`
-/

namespace A343942.P4044350346862445964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346634 n + A010815 (2 * n + 1)

end

end A343942.P4044350346862445964

/-! ## A343942.P1400707616838913908

`A346634(n)-A121373(2*n+1)`
-/

namespace A343942.P1400707616838913908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346634 n - A121373 (2 * n + 1)

end

end A343942.P1400707616838913908

/-! ## A343942.P2448483169063943654

`A318155(2*n+1)-A318155(2*n)`
-/

namespace A343942.P2448483169063943654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318155 (2 * n + 1) - A318155 (2 * n)

end

end A343942.P2448483169063943654

/-! ## A343942.P4901767649123868306

`A067659(2*n+1)+A010815(2*n+1)`
-/

namespace A343942.P4901767649123868306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (2 * n + 1) + A010815 (2 * n + 1)

end

end A343942.P4901767649123868306

/-! ## A343942.P4902688970469198592

`A067661(2*n+1)+A035457(2*n+1)`
-/

namespace A343942.P4902688970469198592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (2 * n + 1) + A035457 (2 * n + 1)

end

end A343942.P4902688970469198592

/-! ## A343942.P8411308125829285189

`A096791(2*n+1)+A010815(2*n+1)`
-/

namespace A343942.P8411308125829285189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096791 (2 * n + 1) + A010815 (2 * n + 1)

end

end A343942.P8411308125829285189

/-! ## A343942.P12271478738614779232

`A000009(2*n+1)-A067659(2*n+1)`
-/

namespace A343942.P12271478738614779232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 1) - A067659 (2 * n + 1)

end

end A343942.P12271478738614779232

/-! ## A343942.P1064243311150633467

`A000009(2*n+1)-A096791(2*n+1)`
-/

namespace A343942.P1064243311150633467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 1) - A096791 (2 * n + 1)

end

end A343942.P1064243311150633467

/-!
# A343943: Number of distinct possible alternating sums of permutations of the multiset of prime factors of n.

The programs for A343943, there is no canonical definition to state claims against.
-/

/-! ## A343943.P1716856510001504133

`floor(∏{e}[(n+1)², 2-acot(#)])`
-/

namespace A343943.P1716856510001504133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋

end

end A343943.P1716856510001504133

/-! ## A343943.P8527168771401548685

`ceil(∏{e}[n+1, round(exp(tanh(#)))]/3)`
-/

namespace A343943.P8527168771401548685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.exp (Real.tanh (Nat.factorization (f1 n) p : ℝ))) : ℤ) : ℚ) / 3⌉

end

end A343943.P8527168771401548685

/-! ## A343943.P6807535566026666164

`floor(∏{e}[n+1, round(exp(tanh(#)))]^γ)`
-/

namespace A343943.P6807535566026666164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.exp (Real.tanh (Nat.factorization (f1 n) p : ℝ))) : ℤ) : ℝ) ^ Real.eulerMascheroniConstant⌋

end

end A343943.P6807535566026666164

/-! ## A343943.P8450162975961608553

`ceil(∏{e}[n+1, 3-floor(1/#)]/3)`
-/

namespace A343943.P8450162975961608553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), (3 - ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) : ℤ) : ℚ) / 3⌉

end

end A343943.P8450162975961608553

/-! ## A343943.P2170822960753209651

`round(sqrt(∑{e}[n+1, #]!/∏{e}[n+1, #!]+1))`
-/

namespace A343943.P2170822960753209651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) + 1 : ℝ))

end

end A343943.P2170822960753209651

/-! ## A343943.P5171994199883898795

`∑{p}[n+1, gcd(n, #)]+C(42%∏{e}[n+1, #+1], 6)^n`
-/

namespace A343943.P5171994199883898795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + Nat.choose (42 % (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))) 6 ^ n

end

end A343943.P5171994199883898795

/-! ## A343943.P17871701628893589389

`ceil(A000005(∏{p}[n+1, gcd((n+1)*(n+2), #²)])/3)`
-/

namespace A343943.P17871701628893589389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2)) : ℚ) / 3⌉

end

end A343943.P17871701628893589389

/-! ## A343943.P6189553114021268435

`A039728(A050320(n+1))`
-/

namespace A343943.P6189553114021268435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039728 (A050320 (n + 1)).toNat

end

end A343943.P6189553114021268435

/-! ## A343943.P6145502363017931706

`A105224(A015999(n+1))`
-/

namespace A343943.P6145502363017931706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A015999 (n + 1)).toNat

end

end A343943.P6145502363017931706

/-! ## A343943.P7344780951141635360

`A266226(A007948(n+1))`
-/

namespace A343943.P7344780951141635360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266226 (A007948 (n + 1)).toNat

end

end A343943.P7344780951141635360

/-!
# A343944: Total number of parts in all partitions of n into powers of 2: p1 <= p2 <= ... <= p_k such that p_i <= 1 + Sum_{j=1..i-1} p_j.

The programs for A343944, there is no canonical definition to state claims against.
-/

/-! ## A343944.P13778652291710851956

`A370809(A060192(n+1))-1`
-/

namespace A343944.P13778652291710851956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 (A060192 (n + 1)).toNat - 1

end

end A343944.P13778652291710851956

/-! ## A343944.P4273573753301294453

`eq[A082497(n), A283360(n+1)]`
-/

namespace A343944.P4273573753301294453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082497 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343944.P4273573753301294453

/-! ## A343944.P13807993155299746582

`record[and(A029421(3*n+1), A122188(3*n+4))]`
-/

namespace A343944.P13807993155299746582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029421 (3 * n + 1)) (A122188 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343944.P13807993155299746582

/-! ## A343944.P3547813264854033790

`eq[A014473(A338934(n)), A256119(n)]`
-/

namespace A343944.P3547813264854033790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A338934 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343944.P3547813264854033790

/-! ## A343944.P13696344204893778884

`A168497(n+1)-A181386(A063886(n))`
-/

namespace A343944.P13696344204893778884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1) - A181386 (A063886 n).toNat

end

end A343944.P13696344204893778884

/-!
# A343945: a(1) = 1; for n >= 2, a(n) = floor(log(sigma(n)) / log(tau(n))).

The programs for A343945, there is no canonical definition to state claims against.
-/

/-! ## A343945.P17075940515019418582

`floor(root(A316983(2*n+1), ∑{d}[n+1, #]))`
-/

namespace A343945.P17075940515019418582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A316983 (2 * n + 1) : ℝ) ^ (1 / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ))⌋

end

end A343945.P17075940515019418582

/-! ## A343945.P11341082092101646675

`floor(A163101(3*n+1)/∑{d}[n+1, #])`
-/

namespace A343945.P11341082092101646675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163101 (3 * n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋

end

end A343945.P11341082092101646675

/-! ## A343945.P4385412001826015609

`A055642(ceil((n+1)/∏{p}[n+1, (n+1)/#])*A329605(n+1))`
-/

namespace A343945.P4385412001826015609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ * A329605 (n + 1)).toNat

end

end A343945.P4385412001826015609

/-! ## A343945.P12642941076751014266

`A055642(A048676(n+1)*A074828(n+1))`
-/

namespace A343945.P12642941076751014266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A048676 (n + 1) * A074828 (n + 1)).toNat

end

end A343945.P12642941076751014266

/-! ## A343945.P12167066001636949803

`A001221(A322483(n+1)+A005179(n+1))`
-/

namespace A343945.P12167066001636949803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A322483 (n + 1) + A005179 (n + 1)).toNat

end

end A343945.P12167066001636949803

/-!
# A343946: Surface area of a right prism whose base is a regular n-gon with unit side length and unit height (rounded to the nearest integer).

The programs for A343946, there is no canonical definition to state claims against.
-/

/-! ## A343946.P17062889810050323550

`lt[A007318(3*n+2)+1, A327076(n+1)]`
-/

namespace A343946.P17062889810050323550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343946.P17062889810050323550

/-! ## A343946.P3182064492511070211

`lt[A007318(3*n+2), A004090(A327076(n+1))]`
-/

namespace A343946.P3182064492511070211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 (A327076 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343946.P3182064492511070211

/-! ## A343946.P3195551747992979916

`lt[xor(3, A026670(3*n+2)), A306762(n+1)]`
-/

namespace A343946.P3195551747992979916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A026670 (3 * n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343946.P3195551747992979916

/-! ## A343946.P10774837399735715527

`lt[A250229(3*n+4), A008000(n)]`
-/

namespace A343946.P10774837399735715527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250229 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343946.P10774837399735715527

/-! ## A343946.P1704693131319107478

`lt[A250277(3*n+4), A008000(n)]`
-/

namespace A343946.P1704693131319107478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250277 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343946.P1704693131319107478

/-!
# A343947: Surface area to volume ratio of a right prism with unit height and whose base is a regular n-gon with side length 1 (rounded to the nearest integer).

The programs for A343947, the canonical program `A343947.P6425076047592630949` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343947 has offset 3).

The definition of A343947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343947.P6425076047592630949

`round((4+2*cot(π/(n+3)))/cot(π/(n+3)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343947

/-- `round((4+2*cot(π/(n+3)))/cot(π/(n+3)))` -/
def P6425076047592630949.Spec : Prop :=
  ∀ n, P6425076047592630949.a n = A343947 (n + 3)

theorem P6425076047592630949.correct : P6425076047592630949.Spec := by
  intro n
  simp only [A343947, Nat.add_sub_cancel]

end A343947

/-! ## A343947.P407702821277091515

`ceil(root(9, root(n+1, e)))`
-/

namespace A343947.P407702821277091515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 : ℝ) ^ (1 / (n + 1 : ℝ) ^ (1 / Real.exp 1))⌉

end

end A343947.P407702821277091515

namespace A343947

/-- `ceil(root(9, root(n+1, e)))` -/
def P407702821277091515.Spec : Prop :=
  ∀ n, P407702821277091515.a n = A343947 (n + 3)

end A343947

/-! ## A343947.P14536842707650842472

`round((3-tan(n/(n+1)))²)`
-/

namespace A343947.P14536842707650842472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 - Real.tan ((n : ℚ) / (n + 1 : ℚ) : ℝ)) ^ 2)

end

end A343947.P14536842707650842472

namespace A343947

/-- `round((3-tan(n/(n+1)))²)` -/
def P14536842707650842472.Spec : Prop :=
  ∀ n, P14536842707650842472.a n = A343947 (n + 3)

end A343947

/-! ## A343947.P3943785058479062888

`floor(6*sqrt(acot(π*n/2)))+2`
-/

namespace A343947.P3943785058479062888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * Real.sqrt (SequenceMachineLib.acot (Real.pi * ((n : ℚ) / 2 : ℝ)))⌋ + 2

end

end A343947.P3943785058479062888

namespace A343947

/-- `floor(6*sqrt(acot(π*n/2)))+2` -/
def P3943785058479062888.Spec : Prop :=
  ∀ n, P3943785058479062888.a n = A343947 (n + 3)

end A343947

/-! ## A343947.P17842859627105868693

`floor(16/log(A017221(n)))`
-/

namespace A343947.P17842859627105868693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊16 / Real.log (A017221 n : ℝ)⌋

end

end A343947.P17842859627105868693

namespace A343947

/-- `floor(16/log(A017221(n)))` -/
def P17842859627105868693.Spec : Prop :=
  ∀ n, P17842859627105868693.a n = A343947 (n + 3)

end A343947

/-! ## A343947.P12023659229903838588

`round(ratio[A055854(n+1)])`
-/

namespace A343947.P12023659229903838588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A343947.P12023659229903838588

namespace A343947

/-- `round(ratio[A055854(n+1)])` -/
def P12023659229903838588.Spec : Prop :=
  ∀ n, P12023659229903838588.a n = A343947 (n + 3)

end A343947

/-! ## A343947.P9952473465399742571

`round(3/∑[1/A175048(n+1)])`
-/

namespace A343947.P9952473465399742571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A175048 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A343947.P9952473465399742571

namespace A343947

/-- `round(3/∑[1/A175048(n+1)])` -/
def P9952473465399742571.Spec : Prop :=
  ∀ n, P9952473465399742571.a n = A343947 (n + 3)

end A343947

/-! ## A343947.P3833164667792249622

`floor(9/∑[1/A289129(n+1)])`
-/

namespace A343947.P3833164667792249622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A289129 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 / (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A343947.P3833164667792249622

namespace A343947

/-- `floor(9/∑[1/A289129(n+1)])` -/
def P3833164667792249622.Spec : Prop :=
  ∀ n, P3833164667792249622.a n = A343947 (n + 3)

end A343947

/-! ## A343947.P16469620638894000871

`floor((A018252(2*(n+1))+5)/(n+1))`
-/

namespace A343947.P16469620638894000871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018252 (2 * (n + 1)) + 5 : ℚ) / (n + 1 : ℚ)⌋

end

end A343947.P16469620638894000871

namespace A343947

/-- `floor((A018252(2*(n+1))+5)/(n+1))` -/
def P16469620638894000871.Spec : Prop :=
  ∀ n, P16469620638894000871.a n = A343947 (n + 3)

end A343947

/-! ## A343947.P3048156975613909938

`round(A093642(2*n+1)/(2*n+1))`
-/

namespace A343947.P3048156975613909938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093642 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A343947.P3048156975613909938

namespace A343947

/-- `round(A093642(2*n+1)/(2*n+1))` -/
def P3048156975613909938.Spec : Prop :=
  ∀ n, P3048156975613909938.a n = A343947 (n + 3)

end A343947

/-!
# A343949: Shortest distance from curve start to end along the segments of dragon curve expansion level n, and which is the diameter of the curve as a graph.

The programs for A343949, the canonical program `A343949.P13225009712520381373` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343949 has offset 0).

The definition of A343949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343949.P13225009712520381373

`a(n-1)+3*a(n-2)-3*a(n-3)-2*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=18`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343949

/-- `a(n-1)+3*a(n-2)-3*a(n-3)-2*a(n-4)+2*a(n-5)` -/
def P13225009712520381373.Spec : Prop :=
  ∀ n, P13225009712520381373.a n = A343949 n

theorem P13225009712520381373.correct : P13225009712520381373.Spec := by
  intro n
  simp only [A343949]

end A343949

/-! ## A343949.P13843860906024697438

`abs(2-(A163978(n+1)-gcd(2, n))-n)`
-/

namespace A343949.P13843860906024697438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A163978 (n + 1) - (Nat.gcd 2 n : ℤ)) - (n : ℤ)|

end

end A343949.P13843860906024697438

namespace A343949

/-- `abs(2-(A163978(n+1)-gcd(2, n))-n)` -/
def P13843860906024697438.Spec : Prop :=
  ∀ n, P13843860906024697438.a n = A343949 n

end A343949

/-! ## A343949.P9112702344428974844

`∑[A016116(n)+2%A133265(n)]`
-/

namespace A343949.P9112702344428974844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + Int.tmod 2 (A133265 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343949.P9112702344428974844

namespace A343949

/-- `∑[A016116(n)+2%A133265(n)]` -/
def P9112702344428974844.Spec : Prop :=
  ∀ n, P9112702344428974844.a n = A343949 n

end A343949

/-! ## A343949.P17405947692965638669

`∑[A016116(n)]+2*A140106(n+1)`
-/

namespace A343949.P17405947692965638669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A140106 (n + 1)

end

end A343949.P17405947692965638669

namespace A343949

/-- `∑[A016116(n)]+2*A140106(n+1)` -/
def P17405947692965638669.Spec : Prop :=
  ∀ n, P17405947692965638669.a n = A343949 n

end A343949

/-! ## A343949.P6854733483033586545

`A027383(n)+∑[A289296(n)%(n+1)]`
-/

namespace A343949.P6854733483033586545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289296 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343949.P6854733483033586545

namespace A343949

/-- `A027383(n)+∑[A289296(n)%(n+1)]` -/
def P6854733483033586545.Spec : Prop :=
  ∀ n, P6854733483033586545.a n = A343949 n

end A343949

/-! ## A343949.P15558388670306667462

`∑[A097581(n+1)%A016116(n+1)+1]`
-/

namespace A343949.P15558388670306667462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097581 (n + 1)) (A016116 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343949.P15558388670306667462

namespace A343949

/-- `∑[A097581(n+1)%A016116(n+1)+1]` -/
def P15558388670306667462.Spec : Prop :=
  ∀ n, P15558388670306667462.a n = A343949 n

end A343949

/-! ## A343949.P13714364420095498863

`∑[A016116(n)+A103889(n+2)%(n+1)]`
-/

namespace A343949.P13714364420095498863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + Int.tmod (A103889 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343949.P13714364420095498863

namespace A343949

/-- `∑[A016116(n)+A103889(n+2)%(n+1)]` -/
def P13714364420095498863.Spec : Prop :=
  ∀ n, P13714364420095498863.a n = A343949 n

end A343949

/-! ## A343949.P15747656378746672606

`A116921(2*(n+1))+A052955(n+1)-2`
-/

namespace A343949.P15747656378746672606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (2 * (n + 1)) + (A052955 (n + 1) - 2)

end

end A343949.P15747656378746672606

namespace A343949

/-- `A116921(2*(n+1))+A052955(n+1)-2` -/
def P15747656378746672606.Spec : Prop :=
  ∀ n, P15747656378746672606.a n = A343949 n

end A343949

/-! ## A343949.P16501402081182666231

`A027383(n)+n+1-A266664(A266664(n+1))`
-/

namespace A343949.P16501402081182666231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n + ((n + 1 : ℤ) - A266664 (A266664 (n + 1)).toNat)

end

end A343949.P16501402081182666231

namespace A343949

/-- `A027383(n)+n+1-A266664(A266664(n+1))` -/
def P16501402081182666231.Spec : Prop :=
  ∀ n, P16501402081182666231.a n = A343949 n

end A343949

/-! ## A343949.P3384001208363729157

`A027383(n)+and(A000918(n)+1+n, A000918(n))`
-/

namespace A343949.P3384001208363729157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n + Int.land (A000918 n + 1 + (n : ℤ)) (A000918 n)

end

end A343949.P3384001208363729157

namespace A343949

/-- `A027383(n)+and(A000918(n)+1+n, A000918(n))` -/
def P3384001208363729157.Spec : Prop :=
  ∀ n, P3384001208363729157.a n = A343949 n

end A343949

/-!
# A343951: Numbers with decimal expansion (d_1, ..., d_k) such that all the sums d_i + ... + d_j with 1 <= i <= j <= k are distinct.

The programs for A343951, there is no canonical definition to state claims against.
-/

/-! ## A343951.P17629512677909740768

`eq[1, A000377(A123895(n))]`
-/

namespace A343951.P17629512677909740768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A123895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343951.P17629512677909740768

/-! ## A343951.P15212677440660657938

`eq[1, A083888(A253909(n))]`
-/

namespace A343951.P15212677440660657938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343951.P15212677440660657938

/-! ## A343951.P16275259678546272992

`eq[A061901(n), A138908(n)]`
-/

namespace A343951.P16275259678546272992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343951.P16275259678546272992

/-! ## A343951.P11479810296890301422

`eq[A061901(n), A196222(n)]`
-/

namespace A343951.P11479810296890301422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343951.P11479810296890301422

/-! ## A343951.P8087034979880396219

`lt[A321800(A240237(n)), n]`
-/

namespace A343951.P8087034979880396219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A240237 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343951.P8087034979880396219

/-! ## A343951.P13323696586359382148

`lt[A000587(A123895(n)+6), 1]`
-/

namespace A343951.P13323696586359382148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (A123895 n + 6).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343951.P13323696586359382148

/-! ## A343951.P13383779642200179327

`lt[n, A051740(A020485(n)/(1-A057427(n)+n))]`
-/

namespace A343951.P13383779642200179327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 (SequenceMachineLib.roundAway ((A020485 n : ℚ) / (1 - A057427 n + (n : ℤ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343951.P13383779642200179327

/-!
# A343953: Square array T(n,k), n>=1, k>=0, read by antidiagonals, where row n is the expansion of x*(1+x^n)/((1-x)^2*(1-x^n)).

The programs for A343953, there is no canonical definition to state claims against.
-/

/-! ## A343953.P15283076967296480

`A004197(n)+A055641(A164899(n+1))²`
-/

namespace A343953.P15283076967296480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + A055641 (A164899 (n + 1)).toNat ^ 2

end

end A343953.P15283076967296480

/-! ## A343953.P11109527368681357076

`A261684(n)+A055641(A164899(n+1))²`
-/

namespace A343953.P11109527368681357076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 n + A055641 (A164899 (n + 1)).toNat ^ 2

end

end A343953.P11109527368681357076

/-! ## A343953.P15989545879451029594

`A261684(n)+(A101881(A000389(n))%A306680(n))²`
-/

namespace A343953.P15989545879451029594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 n + Int.tmod (A101881 (A000389 n).toNat) (A306680 n) ^ 2

end

end A343953.P15989545879451029594

/-! ## A343953.P6223627767913248613

`A163898(n)%A163912(A103438(n))`
-/

namespace A343953.P6223627767913248613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163898 n) (A163912 (A103438 n).toNat)

end

end A343953.P6223627767913248613

/-! ## A343953.P17216447468962185790

`A328179(A129116(n+1))`
-/

namespace A343953.P17216447468962185790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328179 (A129116 (n + 1)).toNat

end

end A343953.P17216447468962185790

/-!
# A343956: a(n) is the number of pentagonal faces of Johnson solid J_n.

The programs for A343956, there is no canonical definition to state claims against.
-/

/-! ## A343956.P1596996508515878713

`A092573(A256633(3*n+2)+A181057(n+2))`
-/

namespace A343956.P1596996508515878713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A256633 (3 * n + 2) + A181057 (n + 2)).toNat

end

end A343956.P1596996508515878713

/-! ## A343956.P9540854659019889330

`and(-A256761(n+1), A225766(n))`
-/

namespace A343956.P9540854659019889330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A256761 (n + 1)) (A225766 n)

end

end A343956.P9540854659019889330

/-! ## A343956.P6721263366485520968

`A126168(n+1)*A295896(A242882(n))`
-/

namespace A343956.P6721263366485520968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (n + 1) * A295896 (A242882 n).toNat

end

end A343956.P6721263366485520968

/-! ## A343956.P2818925465835331088

`A242926(n)%A115622(A005897(2*n))`
-/

namespace A343956.P2818925465835331088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242926 n) (A115622 (A005897 (2 * n)).toNat)

end

end A343956.P2818925465835331088

/-! ## A343956.P16434651897551445451

`A054383(A003347(n+1)-A296541(n+1))`
-/

namespace A343956.P16434651897551445451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054383 (A003347 (n + 1) - A296541 (n + 1)).toNat

end

end A343956.P16434651897551445451

/-!
# A343957: a(n) is the number of hexagonal faces of Johnson solid J_n.

The programs for A343957, there is no canonical definition to state claims against.
-/

/-! ## A343957.P3674781665496000532

`A046660(Δ[(n+5)^3])`
-/

namespace A343957.P3674781665496000532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A343957.P3674781665496000532

/-! ## A343957.P17363651325870620410

`A056170(Δ[(n+5)^3])`
-/

namespace A343957.P17363651325870620410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A343957.P17363651325870620410

/-! ## A343957.P13851848999137238756

`val(3*n+1, ∑{digits}[A316850(n+1), #])`
-/

namespace A343957.P13851848999137238756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 * n + 1) ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A343957.P13851848999137238756

/-! ## A343957.P8942706240483723695

`A117964(A117150(n))`
-/

namespace A343957.P8942706240483723695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117964 (A117150 n).toNat

end

end A343957.P8942706240483723695

/-! ## A343957.P15111317084458338717

`A023531(A095173(n+1))`
-/

namespace A343957.P15111317084458338717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A095173 (n + 1)).toNat

end

end A343957.P15111317084458338717

/-! ## A343957.P9847009713213859633

`A010054(A317493(n+3))`
-/

namespace A343957.P9847009713213859633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A317493 (n + 3)).toNat

end

end A343957.P9847009713213859633

/-! ## A343957.P17117649123381361732

`A111406(A383683(n))`
-/

namespace A343957.P17117649123381361732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111406 (A383683 n).toNat

end

end A343957.P17117649123381361732

/-! ## A343957.P13119060823907102976

`A296213(A130687(n+1))`
-/

namespace A343957.P13119060823907102976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296213 (A130687 (n + 1)).toNat

end

end A343957.P13119060823907102976

/-!
# A343958: a(n) is the number of octagonal faces of Johnson solid J_n.

The programs for A343958, there is no canonical definition to state claims against.
-/

/-! ## A343958.P3108103702377692291

`val(∑[∏{p}[n+1, #]], A137292(n+3))`
-/

namespace A343958.P3108103702377692291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A137292 (n + 3)).toNat

end

end A343958.P3108103702377692291

/-! ## A343958.P2365669125165684337

`val(∑[∏{e}[n+1, #+1]], A355529(n+1))`
-/

namespace A343958.P2365669125165684337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (A355529 (n + 1)).toNat

end

end A343958.P2365669125165684337

/-! ## A343958.P16437150136006313646

`val(A211394(A019456(n)), 25)`
-/

namespace A343958.P16437150136006313646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A211394 (A019456 n).toNat).toNat 25

end

end A343958.P16437150136006313646

/-! ## A343958.P7859617709091612212

`A073424(∑[A192267(n+2)])`
-/

namespace A343958.P7859617709091612212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192267 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343958.P7859617709091612212

/-! ## A343958.P14273729071377731978

`val(A006530(A244983(2*(n+1))), 13)`
-/

namespace A343958.P14273729071377731978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (A244983 (2 * (n + 1))).toNat).toNat 13

end

end A343958.P14273729071377731978

/-! ## A343958.P14663463744977675960

`∑{d}[∑[A233543(n)+A020639(n+2)], #]%2`
-/

namespace A343958.P14663463744977675960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n + A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d) % 2

end

end A343958.P14663463744977675960

/-! ## A343958.P9170237965790037600

`A307287(n)%A030394(n+1)`
-/

namespace A343958.P9170237965790037600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307287 n) (A030394 (n + 1))

end

end A343958.P9170237965790037600

/-! ## A343958.P8669948169598418274

`and(A144602(n), A182880(n))`
-/

namespace A343958.P8669948169598418274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144602 n) (A182880 n)

end

end A343958.P8669948169598418274

/-! ## A343958.P4111122968060632855

`and(A144602(n), A182898(n))`
-/

namespace A343958.P4111122968060632855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144602 n) (A182898 n)

end

end A343958.P4111122968060632855

/-! ## A343958.P4493093342866636626

`and(A259389(n+1), A287372(n+1))`
-/

namespace A343958.P4493093342866636626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A259389 (n + 1)) (A287372 (n + 1))

end

end A343958.P4493093342866636626

/-!
# A343959: a(n) is the number of decagonal faces of Johnson solid J_n.

The programs for A343959, there is no canonical definition to state claims against.
-/

/-! ## A343959.P15605766873780593106

`abs(Δ[A075802(A028797(n+1))])`
-/

namespace A343959.P15605766873780593106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A343959.P15605766873780593106

/-! ## A343959.P14219890207214533670

`Δ[A075802(A028797(n+1))]^A004277(n)`
-/

namespace A343959.P14219890207214533670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A004277 n : ℤ)

end

end A343959.P14219890207214533670

/-! ## A343959.P1201194453464710520

`Δ[A075802(A028797(n+1))]^A043529(n)`
-/

namespace A343959.P1201194453464710520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A043529 n : ℤ)

end

end A343959.P1201194453464710520

/-! ## A343959.P5577007137949218182

`Δ[A075802(A028797(n+1))]^A091350(n)`
-/

namespace A343959.P5577007137949218182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A091350 n : ℤ)

end

end A343959.P5577007137949218182

/-! ## A343959.P10016600795887909051

`Δ[A075802(A028797(n+1))]^A097190(n)`
-/

namespace A343959.P10016600795887909051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A097190 n : ℤ)

end

end A343959.P10016600795887909051

/-! ## A343959.P11872354842995801588

`Δ[A075802(A028797(n+1))]^A136693(n)`
-/

namespace A343959.P11872354842995801588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A136693 n : ℤ)

end

end A343959.P11872354842995801588

/-! ## A343959.P7732948374374401068

`Δ[A075802(A028797(n+1))]^A299256(n)`
-/

namespace A343959.P7732948374374401068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A299256 n : ℤ)

end

end A343959.P7732948374374401068

/-! ## A343959.P8859873673619022484

`Δ[A075802(A028797(n+1))]^A312269(n)`
-/

namespace A343959.P8859873673619022484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A312269 n : ℤ)

end

end A343959.P8859873673619022484

/-! ## A343959.P6890679097124971002

`∑{d}[Δ[A075802(A028797(n+1))], A000005(#)]`
-/

namespace A343959.P6890679097124971002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A343959.P6890679097124971002

/-! ## A343959.P8770332082378726861

`∑{d}[Δ[A075802(A028797(n+1))], A000010(#)]`
-/

namespace A343959.P8770332082378726861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A028797 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A343959.P8770332082378726861

/-!
# A343960: Triangle read by rows: T(n,m) = Sum_{k=1..m} (k/n)*binomial(n,m-k)*binomial(n,m), n >= m >= 1.

The programs for A343960, there is no canonical definition to state claims against.
-/

/-! ## A343960.P7431307590701686399

`A246187(A245300(n)+A025581(n))`
-/

namespace A343960.P7431307590701686399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246187 (A245300 n + A025581 n).toNat

end

end A343960.P7431307590701686399

/-! ## A343960.P9284623279614452656

`A246187(A004736(n+1)+A245300(n)-1)`
-/

namespace A343960.P9284623279614452656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246187 (A004736 (n + 1) + (A245300 n - 1)).toNat

end

end A343960.P9284623279614452656

/-! ## A343960.P15851063042627882841

`A380573(A056242(n+1))`
-/

namespace A343960.P15851063042627882841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A056242 (n + 1)).toNat

end

end A343960.P15851063042627882841

/-! ## A343960.P479739393463696841

`A122168(A157011(n+1)+1)`
-/

namespace A343960.P479739393463696841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122168 (A157011 (n + 1) + 1).toNat

end

end A343960.P479739393463696841

/-! ## A343960.P7153183169453056314

`A133082(A157011(n+1)+2)`
-/

namespace A343960.P7153183169453056314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133082 (A157011 (n + 1) + 2).toNat

end

end A343960.P7153183169453056314

/-!
# A343963: a(0) = 0, and for any n > 0, the binary expansion of n has n digits and starts with the binary expansion of n, say of w digits, and in case n > w, the remaining binary digits in a(n) are those of a(n-w).

The programs for A343963, there is no canonical definition to state claims against.
-/

/-! ## A343963.P7566885644344658768

`A375546(A213762(n+3))+A097076(n)`
-/

namespace A343963.P7566885644344658768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375546 (A213762 (n + 3)).toNat + A097076 n

end

end A343963.P7566885644344658768

/-! ## A343963.P12336548341592842519

`eq[A056965(n), A308400(A084127(n+1))]`
-/

namespace A343963.P12336548341592842519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308400 (A084127 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343963.P12336548341592842519

/-!
# A343967: Numbers that are the sum of three positive cubes in five or more ways.

The programs for A343967, there is no canonical definition to state claims against.
-/

/-! ## A343967.P11994042967301363613

`∪[A343970(n+1), A345083(n+1)]`
-/

namespace A343967.P11994042967301363613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343967.P11994042967301363613

/-! ## A343967.P8559180415505130380

`A343970(n+1)+A000007(A117401(n))`
-/

namespace A343967.P8559180415505130380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343970 (n + 1) + A000007 (A117401 n).toNat

end

end A343967.P8559180415505130380

/-! ## A343967.P3578691060489807157

`A343970(n+1)+A132440(A005581(n))`
-/

namespace A343967.P3578691060489807157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343970 (n + 1) + A132440 (A005581 n).toNat

end

end A343967.P3578691060489807157

/-! ## A343967.P4522211680066243615

`A343970(n+1)+A152894(A000292(n))`
-/

namespace A343967.P4522211680066243615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343970 (n + 1) + A152894 (A000292 n).toNat

end

end A343967.P4522211680066243615

/-! ## A343967.P7266563126317955816

`A343970(n+1)^A157103(A233427(n))`
-/

namespace A343967.P7266563126317955816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343970 (n + 1) : ℚ) ^ (A157103 (A233427 n).toNat : ℤ)

end

end A343967.P7266563126317955816

/-!
# A343968: Numbers that are the sum of three positive cubes in four or more ways.

The programs for A343968, there is no canonical definition to state claims against.
-/

/-! ## A343968.P4477519439009298991

`∪[A343967(n+1), A343969(n+1)]`
-/

namespace A343968.P4477519439009298991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343968.P4477519439009298991

/-! ## A343968.P17359822101101611223

`A343969(∑[∑[A072189(n)]])`
-/

namespace A343968.P17359822101101611223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343969 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343968.P17359822101101611223

/-! ## A343968.P14067576081248595188

`A343969(∑[∑[A151838(n)]])`
-/

namespace A343968.P14067576081248595188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343969 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343968.P14067576081248595188

/-! ## A343968.P16264042085516089476

`A343969(C(A077342(n+1), n))`
-/

namespace A343968.P16264042085516089476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343969 (Nat.choose (A077342 (n + 1)).toNat n)

end

end A343968.P16264042085516089476

/-! ## A343968.P6912793344501212314

`∏{e}[A000079(n+1), A343969(#)]`
-/

namespace A343968.P6912793344501212314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A343969 (Nat.factorization (f1 n).natAbs p)

end

end A343968.P6912793344501212314

/-!
# A343969: Numbers that are the sum of three positive cubes in exactly 4 ways.

The programs for A343969, there is no canonical definition to state claims against.
-/

/-! ## A343969.P11585055749980919256

`A343968(comp[A087641(n+1)-A025750(2*(n+1))]+1)`
-/

namespace A343969.P11585055749980919256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087641 (n + 1) - A025750 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343968 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A343969.P11585055749980919256

/-! ## A343969.P498007998209549959

`A343968(comp[A033691(n+6)-A111530(3*n+2)]+1)`
-/

namespace A343969.P498007998209549959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033691 (n + 6) - A111530 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343968 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A343969.P498007998209549959

/-! ## A343969.P7305261905702904354

`A343968(comp[A077957(3*n+4)-A128362(3*(n+1))]+1)`
-/

namespace A343969.P7305261905702904354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (3 * n + 4) - A128362 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343968 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A343969.P7305261905702904354

/-!
# A343971: Numbers that are the sum of four positive cubes in four or more ways.

The programs for A343971, there is no canonical definition to state claims against.
-/

/-! ## A343971.P4994351257438272632

`∪[A343972(n+1), A343987(n+1)]`
-/

namespace A343971.P4994351257438272632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343971.P4994351257438272632

/-! ## A343971.P6674520268465909660

`A343972(n+1)-A308923(A112960(n+1))`
-/

namespace A343971.P6674520268465909660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343972 (n + 1) - A308923 (A112960 (n + 1)).toNat

end

end A343971.P6674520268465909660

/-! ## A343971.P5224816864206950642

`A343972(A032551(n+2))`
-/

namespace A343971.P5224816864206950642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343972 (A032551 (n + 2)).toNat

end

end A343971.P5224816864206950642

/-!
# A343972: Numbers that are the sum of four positive cubes in exactly four ways.

The programs for A343972, there is no canonical definition to state claims against.
-/

/-! ## A343972.P12076811290156062178

`A343971(A032846(n+1)%A000668(n+1))`
-/

namespace A343972.P12076811290156062178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343971 (Int.tmod (A032846 (n + 1)) (A000668 (n + 1))).toNat

end

end A343972.P12076811290156062178

/-! ## A343972.P15458638844357933427

`A343971(and(A000668(n+1), A032846(n+1)))`
-/

namespace A343972.P15458638844357933427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343971 (Int.land (A000668 (n + 1)) (A032846 (n + 1))).toNat

end

end A343972.P15458638844357933427

/-! ## A343972.P676276959342805086

`A343971(A032846(n+1))%A323536(3*n+5)`
-/

namespace A343972.P676276959342805086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343971 (A032846 (n + 1)).toNat) (A323536 (3 * n + 5))

end

end A343972.P676276959342805086

/-! ## A343972.P17686861115629759134

`A343971(∪[A323536(3*n+5), A032846(n+1)])`
-/

namespace A343972.P17686861115629759134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323536 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032846 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343971 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A343972.P17686861115629759134

/-! ## A343972.P6698921857269862022

`A343971(record[A317508(n+1)])`
-/

namespace A343972.P6698921857269862022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343972.P6698921857269862022

/-!
# A343973: Primes p such that both p-1 and p+1 are in A093641.

The programs for A343973, there is no canonical definition to state claims against.
-/

/-! ## A343973.P4975837676177624879

`∪[A275598(A005941(n+1)), A038614(n+1)]`
-/

namespace A343973.P4975837676177624879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275598 (A005941 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343973.P4975837676177624879

/-!
# A343974: Even numbers k such that the two sets of primes in the Goldbach representation of k and k+2 as the sum of two odd primes do not intersect.

The programs for A343974, there is no canonical definition to state claims against.
-/

/-! ## A343974.P11991615849428987717

`A064635(n+1)-2`
-/

namespace A343974.P11991615849428987717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064635 (n + 1) - 2

end

end A343974.P11991615849428987717

/-! ## A343974.P14567071724193042070

`A092256(n+1)+3`
-/

namespace A343974.P14567071724193042070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1) + 3

end

end A343974.P14567071724193042070

/-! ## A343974.P15802674326429533916

`6*A046953(n+1)+2`
-/

namespace A343974.P15802674326429533916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A046953 (n + 1) + 2

end

end A343974.P15802674326429533916

/-! ## A343974.P13638310225012240602

`3*A125164(n+1)+5`
-/

namespace A343974.P13638310225012240602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A125164 (n + 1) + 5

end

end A343974.P13638310225012240602

/-! ## A343974.P12158271585366147552

`2*(A138685(n+1)+6)`
-/

namespace A343974.P12158271585366147552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138685 (n + 1) + 6)

end

end A343974.P12158271585366147552

/-! ## A343974.P9284891927846091261

`6*A153245(n+1)-4`
-/

namespace A343974.P9284891927846091261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A153245 (n + 1) - 4

end

end A343974.P9284891927846091261

/-! ## A343974.P14698836507089140431

`6*A059324(n+1)+8`
-/

namespace A343974.P14698836507089140431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A059324 (n + 1) + 8

end

end A343974.P14698836507089140431

/-! ## A343974.P9773653287141919095

`2*(A064634(n+1)+n+3)`
-/

namespace A343974.P9773653287141919095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A064634 (n + 1) + (n + 3 : ℤ))

end

end A343974.P9773653287141919095

/-! ## A343974.P7019556886654259655

`3*eq[2, and(2*n, A001222(3*n+2))]+5`
-/

namespace A343974.P7019556886654259655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A001222 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 5

end

end A343974.P7019556886654259655

/-! ## A343974.P16766434354588882088

`A016933(A046953(n+1))`
-/

namespace A343974.P16766434354588882088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (A046953 (n + 1)).toNat

end

end A343974.P16766434354588882088

/-!
# A343975: a(0) = 1; a(n) = 3 * Sum_{k=1..n} binomial(n,k) * a(k-1).

The programs for A343975, there is no canonical definition to state claims against.
-/

/-! ## A343975.P10405150067743314832

`A004273(A005043(2*n+1)+A001519(n))`
-/

namespace A343975.P10405150067743314832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005043 (2 * n + 1) + A001519 n).toNat

end

end A343975.P10405150067743314832

/-!
# A343976: Primes that are the sum of two consecutive terms of A093641.

The programs for A343976, the canonical program `A343976.P7720806449729072559` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343976 has offset 1).

The definition of A343976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 694 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343976.P7720806449729072559

`p?[A093641(n+2)+A093641(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A343976

/-- `p?[A093641(n+2)+A093641(n+1)]` -/
def P7720806449729072559.Spec : Prop :=
  ∀ n, P7720806449729072559.a n = A343976 (n + 1)

theorem P7720806449729072559.correct : P7720806449729072559.Spec := by
  intro n
  simp only [A343976, Nat.add_sub_cancel]

end A343976

/-! ## A343976.P13953764747772750565

`record[A020639(A093641(n+1)+A093641(n+2))]`
-/

namespace A343976.P13953764747772750565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093641 (n + 1) + A093641 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343976.P13953764747772750565

namespace A343976

/-- `record[A020639(A093641(n+1)+A093641(n+2))]` -/
def P13953764747772750565.Spec : Prop :=
  ∀ n, P13953764747772750565.a n = A343976 (n + 1)

end A343976

/-! ## A343976.P16194940965948282727

`∩[A008578(n+1), A093641(n+1)+A093641(n+2)]`
-/

namespace A343976.P16194940965948282727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1) + A093641 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343976.P16194940965948282727

namespace A343976

/-- `∩[A008578(n+1), A093641(n+1)+A093641(n+2)]` -/
def P16194940965948282727.Spec : Prop :=
  ∀ n, (P16194940965948282727.a n : ℤ) = A343976 (n + 1)

end A343976

/-! ## A343976.P9055603819556244197

`record[A014963(A093641(n+1)+A093641(n+2))]`
-/

namespace A343976.P9055603819556244197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A093641 (n + 1) + A093641 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343976.P9055603819556244197

namespace A343976

/-- `record[A014963(A093641(n+1)+A093641(n+2))]` -/
def P9055603819556244197.Spec : Prop :=
  ∀ n, P9055603819556244197.a n = A343976 (n + 1)

end A343976

/-! ## A343976.P4383655861117874387

`record[A006530(Δ[A093641(n+1)²])]`
-/

namespace A343976.P4383655861117874387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343976.P4383655861117874387

namespace A343976

/-- `record[A006530(Δ[A093641(n+1)²])]` -/
def P4383655861117874387.Spec : Prop :=
  ∀ n, P4383655861117874387.a n = A343976 (n + 1)

end A343976

/-!
# A343977: Numbers k such that k | 11^k + 7^k + 5^k + 3^k + 2^k.

The programs for A343977, there is no canonical definition to state claims against.
-/

/-! ## A343977.P16134360384936143701

`record[gcd(A000290(3*n+1), A261931(n))]`
-/

namespace A343977.P16134360384936143701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (3 * n + 1)) (A261931 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343977.P16134360384936143701

/-! ## A343977.P15901345513077130686

`A151553(A007089(n)+A001542(n))`
-/

namespace A343977.P15901345513077130686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 (A007089 n + A001542 n).toNat

end

end A343977.P15901345513077130686

/-! ## A343977.P150785956956920876

`A046927(A357162(n)+A188763(n+1))`
-/

namespace A343977.P150785956956920876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (A357162 n + A188763 (n + 1)).toNat

end

end A343977.P150785956956920876

/-!
# A343978: Number of ordered 6-tuples (a,b,c,d,e,f) with gcd(a,b,c,d,e,f)=1 (1<= {a,b,c,d,e,f} <= n).

The programs for A343978, there is no canonical definition to state claims against.
-/

/-! ## A343978.P5733898567449809232

`A344527(A052905(n+3))`
-/

namespace A343978.P5733898567449809232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A052905 (n + 3)).toNat

end

end A343978.P5733898567449809232

/-! ## A343978.P3135349691337383587

`A344527(A000217(n+6)-5)`
-/

namespace A343978.P3135349691337383587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A000217 (n + 6) - 5).toNat

end

end A343978.P3135349691337383587

/-! ## A343978.P10819724177986176816

`A344527(A161680(n+7)-5)`
-/

namespace A343978.P10819724177986176816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A161680 (n + 7) - 5).toNat

end

end A343978.P10819724177986176816

/-! ## A343978.P8673992372358384728

`A344527(Δ[A023545(n+2)]-1)`
-/

namespace A343978.P8673992372358384728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (f1 (n + 1) - f1 n - 1).toNat

end

end A343978.P8673992372358384728

/-! ## A343978.P5767859938372490332

`record[A344527(n+10)/A343510(n+16)]`
-/

namespace A343978.P5767859938372490332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344527 (n + 10) : ℚ) / (A343510 (n + 16) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343978.P5767859938372490332

/-! ## A343978.P9101636955414431042

`record[A344527(n+10)/A344479(n+16)]`
-/

namespace A343978.P9101636955414431042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344527 (n + 10) : ℚ) / (A344479 (n + 16) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343978.P9101636955414431042

/-! ## A343978.P3874162830292045928

`A344527(eq[A135223(n+1)+2, A052146(n+1)])`
-/

namespace A343978.P3874162830292045928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343978.P3874162830292045928

/-!
# A343982: Numbers k that divide Sum_{j|k} j^(k/j).

The programs for A343982, there is no canonical definition to state claims against.
-/

/-! ## A343982.P8979540219594158965

`∑{d}[A047009(2*n), A000005(#)]`
-/

namespace A343982.P8979540219594158965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047009 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A343982.P8979540219594158965

/-!
# A343983: Numbers k such that Sum_{j|k} j^j == 1 (mod k).

The programs for A343983, there is no canonical definition to state claims against.
-/

/-! ## A343983.P14330486245512287170

`eq[A065652(A078898(n)), A323436(n)]`
-/

namespace A343983.P14330486245512287170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065652 (A078898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343983.P14330486245512287170

/-!
# A343984: a(n) = number of n-digit singular subwords of the Thue-Morse word A010060; see Comments.

The programs for A343984, there is no canonical definition to state claims against.
-/

/-! ## A343984.P8519583302440903014

`2*A343985(n+1)`
-/

namespace A343984.P8519583302440903014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343985 (n + 1)

end

end A343984.P8519583302440903014

/-! ## A343984.P7843998226445894687

`A005843(A343985(n+1))`
-/

namespace A343984.P7843998226445894687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A343985 (n + 1)).toNat

end

end A343984.P7843998226445894687

/-! ## A343984.P16619410828019382743

`A005942(n)-Δ[A214212(n)]`
-/

namespace A343984.P16619410828019382743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n - (f1 (n + 1) - f1 n)

end

end A343984.P16619410828019382743

/-! ## A343984.P10797330095999683783

`A005942(n+1)-Δ[A214214(n)]`
-/

namespace A343984.P10797330095999683783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (n + 1) - (f1 (n + 1) - f1 n)

end

end A343984.P10797330095999683783

/-! ## A343984.P14979445490147524241

`A005942(n+1)-A214212(n+1)`
-/

namespace A343984.P14979445490147524241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (n + 1) - A214212 (n + 1)

end

end A343984.P14979445490147524241

/-! ## A343984.P15922172552747849998

`2*(A275202(n+1)-Δ[A214214(n)])`
-/

namespace A343984.P15922172552747849998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A275202 (n + 1) - (f1 (n + 1) - f1 n))

end

end A343984.P15922172552747849998

/-! ## A343984.P12703670775848118017

`2*A294456(char[A004760(n+1)]+n)`
-/

namespace A343984.P12703670775848118017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294456 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A343984.P12703670775848118017

/-! ## A343984.P15154242093514598464

`2*(A346301(n+1)-A166079(n+1))`
-/

namespace A343984.P15154242093514598464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A346301 (n + 1) - A166079 (n + 1))

end

end A343984.P15154242093514598464

/-! ## A343984.P15977759737877793426

`A014681(∑[A214212(n)])-A214212(n+1)`
-/

namespace A343984.P15977759737877793426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A214212 (n + 1)

end

end A343984.P15977759737877793426

/-! ## A343984.P15539693843015365877

`A005942(n)-Δ[A214214(n)-A005942(n)]`
-/

namespace A343984.P15539693843015365877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214214 n - A005942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n - (f1 (n + 1) - f1 n)

end

end A343984.P15539693843015365877

/-!
# A343985: a(n) = A343984(n)/2.

The programs for A343985, there is no canonical definition to state claims against.
-/

/-! ## A343985.P1744107782938468630

`A343984(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343985.P1744107782938468630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343984 (n + 1) : ℚ) / 2

end

end A343985.P1744107782938468630

/-! ## A343985.P17149235210626428887

`A275202(n+1)-Δ[A214214(n)]`
-/

namespace A343985.P17149235210626428887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (n + 1) - (f1 (n + 1) - f1 n)

end

end A343985.P17149235210626428887

/-! ## A343985.P9889558777487120547

`(A005942(n)-Δ[A214212(n)])/2`
-/

namespace A343985.P9889558777487120547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005942 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A343985.P9889558777487120547

/-! ## A343985.P14523890141583366853

`A294456(char[A004760(n+1)]+n)`
-/

namespace A343985.P14523890141583366853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A343985.P14523890141583366853

/-! ## A343985.P7894140459765198963

`A005942(n+1)-A275202(n+1)`
-/

namespace A343985.P7894140459765198963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (n + 1) - A275202 (n + 1)

end

end A343985.P7894140459765198963

/-! ## A343985.P17222614057745849173

`A275202(n+1)-A214212(n+1)`
-/

namespace A343985.P17222614057745849173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (n + 1) - A214212 (n + 1)

end

end A343985.P17222614057745849173

/-! ## A343985.P5872549960716387655

`A346301(n+1)-A166079(n+1)`
-/

namespace A343985.P5872549960716387655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346301 (n + 1) - A166079 (n + 1)

end

end A343985.P5872549960716387655

/-! ## A343985.P171813871073644092

`∑[A214212(n)-log2(A214212(n+1))]`
-/

namespace A343985.P171813871073644092
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214212 n : ℝ) - Real.logb 2 (A214212 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343985.P171813871073644092

/-! ## A343985.P18439474168387532698

`(A005942(n+1)-A214212(n+1))/2`
-/

namespace A343985.P18439474168387532698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005942 (n + 1) - A214212 (n + 1) : ℚ) / 2

end

end A343985.P18439474168387532698

/-! ## A343985.P5047085734495430195

`A005942(2*(n+1))%A275202(n+1)`
-/

namespace A343985.P5047085734495430195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005942 (2 * (n + 1))) (A275202 (n + 1))

end

end A343985.P5047085734495430195

/-!
# A343986: Numbers that are the sum of four positive cubes in exactly five ways.

The programs for A343986, there is no canonical definition to state claims against.
-/

/-! ## A343986.P4439764172297617538

`A343987(∑[A030580(2^n)])`
-/

namespace A343986.P4439764172297617538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030580 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343987 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343986.P4439764172297617538

/-! ## A343986.P13239030234382965320

`A343987(A333943(n+1)%A336419(2*(n+1)))`
-/

namespace A343986.P13239030234382965320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343987 (Int.tmod (A333943 (n + 1)) (A336419 (2 * (n + 1)))).toNat

end

end A343986.P13239030234382965320

/-! ## A343986.P2079508309965472383

`record[A191558(A343987(n+1))]`
-/

namespace A343986.P2079508309965472383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A343987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343986.P2079508309965472383

/-! ## A343986.P7592653027541854957

`filter[A343987(n+1), A143731(#)]`
-/

namespace A343986.P7592653027541854957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A343986.P7592653027541854957

/-! ## A343986.P472074029916980530

`filter[A343987(n+1), A333922(#)]`
-/

namespace A343986.P472074029916980530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A333922 (f1 j).toNat = 1) n)

end

end A343986.P472074029916980530

/-!
# A343987: Numbers that are the sum of four positive cubes in five or more ways.

The programs for A343987, there is no canonical definition to state claims against.
-/

/-! ## A343987.P12102391147189096486

`∪[A343986(n+1), A345148(n+1)]`
-/

namespace A343987.P12102391147189096486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343987.P12102391147189096486

/-!
# A343988: Numbers that are the sum of five positive cubes in exactly five ways.

The programs for A343988, there is no canonical definition to state claims against.
-/

/-! ## A343988.P10210568326860454341

`A343989(record[A086257(n)])`
-/

namespace A343988.P10210568326860454341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343988.P10210568326860454341

/-! ## A343988.P16596216093795695481

`A343989(A051037(n+1)%A096523(n+1))`
-/

namespace A343988.P16596216093795695481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343989 (Int.tmod (A051037 (n + 1)) (A096523 (n + 1))).toNat

end

end A343988.P16596216093795695481

/-! ## A343988.P14646618559353722476

`A343989(A336109(n+1)%A138327(n+1))`
-/

namespace A343988.P14646618559353722476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343989 (Int.tmod (A336109 (n + 1)) (A138327 (n + 1))).toNat

end

end A343988.P14646618559353722476

/-! ## A343988.P12025956724013151505

`A343989(A348579(n+1)%A138327(n+1))`
-/

namespace A343988.P12025956724013151505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343989 (Int.tmod (A348579 (n + 1)) (A138327 (n + 1))).toNat

end

end A343988.P12025956724013151505

/-! ## A343988.P243104347563801480

`A343989(comp[A067031(3*n)-A329635(n+1)])`
-/

namespace A343988.P243104347563801480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067031 (3 * n) - A329635 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A343988.P243104347563801480

/-!
# A343989: Numbers that are the sum of five positive cubes in five or more ways.

The programs for A343989, there is no canonical definition to state claims against.
-/

/-! ## A343989.P7565861671339003624

`∪[A343988(n+1), A345174(n+1)]`
-/

namespace A343989.P7565861671339003624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343989.P7565861671339003624

/-! ## A343989.P16887249708803536973

`A343988(A292125(n+1))`
-/

namespace A343989.P16887249708803536973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343988 (A292125 (n + 1)).toNat

end

end A343989.P16887249708803536973

/-!
# A343990: Number of grid-filling curves of order n (on the square grid) with turns by +-90 degrees generated by folding morphisms that are self-avoiding but not plane-filling.

The programs for A343990, there is no canonical definition to state claims against.
-/

/-! ## A343990.P4666564856795875051

`A236831(A071725(n)+n²)`
-/

namespace A343990.P4666564856795875051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236831 (A071725 n + (n ^ 2 : ℤ)).toNat

end

end A343990.P4666564856795875051

/-! ## A343990.P3819586331380104156

`A003602(A000667(n))%A011782(n)`
-/

namespace A343990.P3819586331380104156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A000667 n).toNat) (A011782 n)

end

end A343990.P3819586331380104156

/-! ## A343990.P1953089208714453088

`A236412(A121198(n+1)+A000108(n))`
-/

namespace A343990.P1953089208714453088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236412 (A121198 (n + 1) + A000108 n).toNat

end

end A343990.P1953089208714453088

/-! ## A343990.P14434131324491451575

`A038698(A364605(n+1)+A072856(n))`
-/

namespace A343990.P14434131324491451575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (A364605 (n + 1) + A072856 n).toNat

end

end A343990.P14434131324491451575

/-! ## A343990.P13469497410489234588

`A000194(A290517(n+1)-A290518(n))`
-/

namespace A343990.P13469497410489234588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A290517 (n + 1) - A290518 n).toNat

end

end A343990.P13469497410489234588

/-!
# A343993: Number of nodes in the graph AC(n,n).

The programs for A343993, there is no canonical definition to state claims against.
-/

/-! ## A343993.P14224770644723399615

`A288180(∑[n+1])`
-/

namespace A343993.P14224770644723399615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288180 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343993.P14224770644723399615

/-! ## A343993.P7443852065799167211

`record[A288180(abs(A145063(n)))]`
-/

namespace A343993.P7443852065799167211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288180 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343993.P7443852065799167211

/-! ## A343993.P2027735858837215028

`record[A288180(A038722(n+1))]`
-/

namespace A343993.P2027735858837215028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288180 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343993.P2027735858837215028

/-! ## A343993.P329722708358017522

`record[A288180(A049777(n+1))]`
-/

namespace A343993.P329722708358017522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288180 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343993.P329722708358017522

/-! ## A343993.P2916153220164317647

`record[A288180(A059399(n+1))]`
-/

namespace A343993.P2916153220164317647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288180 (A059399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343993.P2916153220164317647

/-!
# A343994: Number of nodes in graph BC(n,2) when the internal nodes are counted with multiplicity.

The programs for A343994, the canonical program `A343994.P3831886060688003141` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343994 has offset 0).

The definition of A343994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343994.P3831886060688003141

`(n^4+10*n^3+25*n²+12*n+12)/4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343994

/-- `(n^4+10*n^3+25*n²+12*n+12)/4` -/
def P3831886060688003141.Spec : Prop :=
  ∀ n, P3831886060688003141.a n = (A343994 n : ℚ)

end A343994

/-! ## A343994.P12728995338081131943

`A000027(3*(n+1))+A055998(n)²`
-/

namespace A343994.P12728995338081131943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * (n + 1)) + A055998 n ^ 2

end

end A343994.P12728995338081131943

namespace A343994

/-- `A000027(3*(n+1))+A055998(n)²` -/
def P12728995338081131943.Spec : Prop :=
  ∀ n, P12728995338081131943.a n = A343994 n

end A343994

/-! ## A343994.P3480589007415113378

`A008585(n+1)+A055998(n)²`
-/

namespace A343994.P3480589007415113378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + A055998 n ^ 2

end

end A343994.P3480589007415113378

namespace A343994

/-- `A008585(n+1)+A055998(n)²` -/
def P3480589007415113378.Spec : Prop :=
  ∀ n, P3480589007415113378.a n = A343994 n

end A343994

/-! ## A343994.P8685211487348716086

`A000217(n+1)*A055998(n+1)-A028557(n)`
-/

namespace A343994.P8685211487348716086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A055998 (n + 1) - A028557 n

end

end A343994.P8685211487348716086

namespace A343994

/-- `A000217(n+1)*A055998(n+1)-A028557(n)` -/
def P8685211487348716086.Spec : Prop :=
  ∀ n, P8685211487348716086.a n = A343994 n

end A343994

/-! ## A343994.P4890817872413913318

`A004483(3*n+4)+A055998(n)²`
-/

namespace A343994.P4890817872413913318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (3 * n + 4) + A055998 n ^ 2

end

end A343994.P4890817872413913318

namespace A343994

/-- `A004483(3*n+4)+A055998(n)²` -/
def P4890817872413913318.Spec : Prop :=
  ∀ n, P4890817872413913318.a n = A343994 n

end A343994

/-!
# A343995: Smallest m > 0 such that the triangular number m*(m+1)/2 is divisible by 2^n-1.

The programs for A343995, there is no canonical definition to state claims against.
-/

/-! ## A343995.P10890061025007480915

`A011772(∑[2^n])`
-/

namespace A343995.P10890061025007480915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343995.P10890061025007480915

/-! ## A343995.P5004356293583544969

`A345444(2^n-1)`
-/

namespace A343995.P5004356293583544969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345444 (2 ^ n - 1)

end

end A343995.P5004356293583544969

/-! ## A343995.P1692069823682391820

`∑{d}[∑[2^n], A344767(#)]`
-/

namespace A343995.P1692069823682391820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344767 d

end

end A343995.P1692069823682391820

/-! ## A343995.P10962039453821131172

`∑[2^n]-A344763(∑[2^n])`
-/

namespace A343995.P10962039453821131172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A344763 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A343995.P10962039453821131172

/-! ## A343995.P8980381738479841772

`lcm((-1)^n, A011772(A126646(n)))`
-/

namespace A343995.P8980381738479841772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A011772 (A126646 n).toNat)

end

end A343995.P8980381738479841772

/-!
# A343996: a(n) = A011772(n) if that number is odd, otherwise A011772(n)+1.

The programs for A343996, there is no canonical definition to state claims against.
-/

/-! ## A343996.P11477097326513897353

`or(1, A011772(n+1))`
-/

namespace A343996.P11477097326513897353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011772 (n + 1))

end

end A343996.P11477097326513897353

/-! ## A343996.P520424468564491477

`or(1, A321366(n+1)-1)`
-/

namespace A343996.P520424468564491477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A321366 (n + 1) - 1)

end

end A343996.P520424468564491477

/-! ## A343996.P3380127589611489555

`A321366(n+1)-A343999(n+1)`
-/

namespace A343996.P3380127589611489555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (n + 1) - A343999 (n + 1)

end

end A343996.P3380127589611489555

/-! ## A343996.P1302411553450713635

`A011772(n+1)+1-A343999(n+1)`
-/

namespace A343996.P1302411553450713635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + (1 - A343999 (n + 1))

end

end A343996.P1302411553450713635

/-! ## A343996.P4528962389466004015

`2*A066561(n+1)/A343997(n+1)`
-/

namespace A343996.P4528962389466004015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A066561 (n + 1) : ℚ) / (A343997 (n + 1) : ℚ))

end

end A343996.P4528962389466004015

/-! ## A343996.P8501927734564947302

`or(1, A000203(n+1)-A344765(n+1))`
-/

namespace A343996.P8501927734564947302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000203 (n + 1) - A344765 (n + 1))

end

end A343996.P8501927734564947302

/-! ## A343996.P18446703894613360065

`A004277(ceil((A011772(n+1)-1)/2)+1)-1`
-/

namespace A343996.P18446703894613360065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (⌈(A011772 (n + 1) - 1 : ℚ) / 2⌉ + 1).toNat - 1

end

end A343996.P18446703894613360065

/-! ## A343996.P16674739570456298143

`A000265(2*ceil((A011772(n+1)-1)/2)+1)`
-/

namespace A343996.P16674739570456298143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * ⌈(A011772 (n + 1) - 1 : ℚ) / 2⌉ + 1).toNat

end

end A343996.P16674739570456298143

/-! ## A343996.P10289668927030007450

`2*A000217(A011772(n+1))/A343997(n+1)`
-/

namespace A343996.P10289668927030007450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000217 (A011772 (n + 1)).toNat : ℚ) / (A343997 (n + 1) : ℚ))

end

end A343996.P10289668927030007450

/-! ## A343996.P2635827780889600892

`A109613(A011772(n+1))`
-/

namespace A343996.P2635827780889600892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A011772 (n + 1)).toNat

end

end A343996.P2635827780889600892

/-! ## A343996.P2799813624152463856

`A063196(A321366(n+1))`
-/

namespace A343996.P2799813624152463856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (A321366 (n + 1)).toNat

end

end A343996.P2799813624152463856

/-! ## A343996.P7580837928436805642

`A052928(A321366(n+1)+1)-1`
-/

namespace A343996.P7580837928436805642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A321366 (n + 1) + 1).toNat - 1

end

end A343996.P7580837928436805642

/-! ## A343996.P16668551443676930412

`A011772(n+1)+A000035(A011772(n+1)+1)`
-/

namespace A343996.P16668551443676930412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + A000035 (A011772 (n + 1) + 1).toNat

end

end A343996.P16668551443676930412

/-! ## A343996.P15443140827617010097

`A321366(n+1)-A059841(A321366(n+1)+2)`
-/

namespace A343996.P15443140827617010097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (n + 1) - A059841 (A321366 (n + 1) + 2).toNat

end

end A343996.P15443140827617010097

/-! ## A343996.P5556574040706506569

`A266246(A011772(n+1)+5)+A011772(n+1)`
-/

namespace A343996.P5556574040706506569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 (A011772 (n + 1) + 5).toNat + A011772 (n + 1)

end

end A343996.P5556574040706506569

/-! ## A343996.P6109494388460450264

`or(1, A344005(2*(n+1)))`
-/

namespace A343996.P6109494388460450264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344005 (2 * (n + 1)))

end

end A343996.P6109494388460450264

/-! ## A343996.P3438560575597623949

`or(1, floor(sqrt(A345988(2*(n+1)))))`
-/

namespace A343996.P3438560575597623949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.sqrt (A345988 (2 * (n + 1))))

end

end A343996.P3438560575597623949

/-! ## A343996.P17412408072553462278

`A109613(A344005(2*(n+1)))`
-/

namespace A343996.P17412408072553462278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A344005 (2 * (n + 1))).toNat

end

end A343996.P17412408072553462278

/-! ## A343996.P3741353071191872845

`or(1, or(1, A344005(A103517(n))))`
-/

namespace A343996.P3741353071191872845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor 1 (A344005 (A103517 n).toNat))

end

end A343996.P3741353071191872845

/-! ## A343996.P13328104836945933655

`A344005(2*(n+1))+1-A354918(2*(n+1))`
-/

namespace A343996.P13328104836945933655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (2 * (n + 1)) + (1 - A354918 (2 * (n + 1)))

end

end A343996.P13328104836945933655

/-!
# A343997: a(n) = A011772(n) if that number is even, otherwise A011772(n)+1.

The programs for A343997, there is no canonical definition to state claims against.
-/

/-! ## A343997.P18383991399276175623

`or(1, A321366(n+1))-1`
-/

namespace A343997.P18383991399276175623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A321366 (n + 1)) - 1

end

end A343997.P18383991399276175623

/-! ## A343997.P4583161066991297025

`2*ceil(A011772(n+1)/2)`
-/

namespace A343997.P4583161066991297025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A011772 (n + 1) : ℚ) / 2⌉

end

end A343997.P4583161066991297025

/-! ## A343997.P12177609649848380767

`A004277(ceil(A011772(n+1)/2))`
-/

namespace A343997.P12177609649848380767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌈(A011772 (n + 1) : ℚ) / 2⌉.toNat

end

end A343997.P12177609649848380767

/-! ## A343997.P725225157705352016

`A004277(round(A011772(n+1)/2))`
-/

namespace A343997.P725225157705352016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A011772 (n + 1) : ℚ) / 2)).toNat

end

end A343997.P725225157705352016

/-! ## A343997.P7597945593180346822

`A343999(n+1)+A011772(n+1)`
-/

namespace A343997.P7597945593180346822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343999 (n + 1) + A011772 (n + 1)

end

end A343997.P7597945593180346822

/-! ## A343997.P15144051428527246377

`A321366(n+1)+A343999(n+1)-1`
-/

namespace A343997.P15144051428527246377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (n + 1) + (A343999 (n + 1) - 1)

end

end A343997.P15144051428527246377

/-! ## A343997.P7671235109999335673

`A354918(2*(n+1))+A011772(n+1)`
-/

namespace A343997.P7671235109999335673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (2 * (n + 1)) + A011772 (n + 1)

end

end A343997.P7671235109999335673

/-! ## A343997.P2467514498238940143

`2*A066561(n+1)/A343996(n+1)`
-/

namespace A343997.P2467514498238940143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A066561 (n + 1) : ℚ) / (A343996 (n + 1) : ℚ))

end

end A343997.P2467514498238940143

/-! ## A343997.P15510163314720737876

`A011772(n+1)+A344969(n+1)%2`
-/

namespace A343997.P15510163314720737876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + Int.tmod (A344969 (n + 1)) 2

end

end A343997.P15510163314720737876

/-! ## A343997.P2504528032886729224

`2*A000217(A011772(n+1))/A343996(n+1)`
-/

namespace A343997.P2504528032886729224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000217 (A011772 (n + 1)).toNat : ℚ) / (A343996 (n + 1) : ℚ))

end

end A343997.P2504528032886729224

/-! ## A343997.P10116026664075600645

`A011772(n+1)+A000007(val(A011772(n+1), 2))`
-/

namespace A343997.P10116026664075600645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + A000007 (SequenceMachineLib.valuation (A011772 (n + 1)).toNat 2)

end

end A343997.P10116026664075600645

/-! ## A343997.P2564205320948040996

`A011772(A000027(n+1))+and(1, A011772(n+1))`
-/

namespace A343997.P2564205320948040996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A000027 (n + 1)).toNat + Int.land 1 (A011772 (n + 1))

end

end A343997.P2564205320948040996

/-! ## A343997.P11750139590730447719

`A011772(n+1)+and(A011772(n+1), A158388(n))`
-/

namespace A343997.P11750139590730447719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + Int.land (A011772 (n + 1)) (A158388 n)

end

end A343997.P11750139590730447719

/-! ## A343997.P6667613174656566375

`A011772(n+1)+and(A011772(n+1), A076877(n+1))`
-/

namespace A343997.P6667613174656566375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + Int.land (A011772 (n + 1)) (A076877 (n + 1))

end

end A343997.P6667613174656566375

/-! ## A343997.P11120596251690083797

`A011772(n+1)+and(A011772(n+1), A080076(n+1))`
-/

namespace A343997.P11120596251690083797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + Int.land (A011772 (n + 1)) (A080076 (n + 1))

end

end A343997.P11120596251690083797

/-! ## A343997.P8848586120966491499

`(A321366(n+1)²-A321366(n+1))/A343996(n+1)`
-/

namespace A343997.P8848586120966491499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321366 (n + 1) ^ 2 - A321366 (n + 1) : ℚ) / (A343996 (n + 1) : ℚ)

end

end A343997.P8848586120966491499

/-! ## A343997.P9517171802327469278

`A052928(A321366(n+1))`
-/

namespace A343997.P9517171802327469278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A321366 (n + 1)).toNat

end

end A343997.P9517171802327469278

/-! ## A343997.P2025942467791939676

`A052928(A011772(n+1)+1)`
-/

namespace A343997.P2025942467791939676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A011772 (n + 1) + 1).toNat

end

end A343997.P2025942467791939676

/-! ## A343997.P12422573932346891975

`A109613(A011772(n+1)+1)-1`
-/

namespace A343997.P12422573932346891975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A011772 (n + 1) + 1).toNat - 1

end

end A343997.P12422573932346891975

/-!
# A343998: a(n) = A343997(n)/2.

The programs for A343998, there is no canonical definition to state claims against.
-/

/-! ## A343998.P1566779784605318008

`A343997(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343998.P1566779784605318008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343997 (n + 1) : ℚ) / 2

end

end A343998.P1566779784605318008

/-! ## A343998.P15056105908241559823

`floor(A321366(n+1)/2)`
-/

namespace A343998.P15056105908241559823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321366 (n + 1) : ℚ) / 2⌋

end

end A343998.P15056105908241559823

/-! ## A343998.P8376272284067275175

`ceil(A011772(n+1)/2)`
-/

namespace A343998.P8376272284067275175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011772 (n + 1) : ℚ) / 2⌉

end

end A343998.P8376272284067275175

/-! ## A343998.P10290159795315337800

`round(sqrt(A066561(n+1)/2))`
-/

namespace A343998.P10290159795315337800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A066561 (n + 1) : ℚ) / 2 : ℝ))

end

end A343998.P10290159795315337800

/-! ## A343998.P5676464167201362923

`ceil(A344005(2*(n+1))/2)`
-/

namespace A343998.P5676464167201362923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344005 (2 * (n + 1)) : ℚ) / 2⌉

end

end A343998.P5676464167201362923

/-! ## A343998.P7809684804933126499

`round(A344005(2*n+2)/2)`
-/

namespace A343998.P7809684804933126499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A344005 (2 * n + 2) : ℚ) / 2)

end

end A343998.P7809684804933126499

/-! ## A343998.P8213621289139106267

`round(A011772(abs(1-n)+2)/2)`
-/

namespace A343998.P8213621289139106267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A011772 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2)

end

end A343998.P8213621289139106267

/-! ## A343998.P11048295250481927211

`round(sqrt(A345988(2*(n+1)))/2)`
-/

namespace A343998.P11048295250481927211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A345988 (2 * (n + 1)) : ℝ) / 2)

end

end A343998.P11048295250481927211

/-! ## A343998.P10433658011918899845

`A065033(A011772(n+1))`
-/

namespace A343998.P10433658011918899845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A011772 (n + 1)).toNat

end

end A343998.P10433658011918899845

/-! ## A343998.P12053911409726100434

`A057059(A066561(n+1))`
-/

namespace A343998.P12053911409726100434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (A066561 (n + 1)).toNat

end

end A343998.P12053911409726100434

/-!
# A343999: a(n) = A011772(n) mod 2, where A011772(n) is the smallest number m such that m(m+1)/2 is divisible by n.

The programs for A343999, there is no canonical definition to state claims against.
-/

/-! ## A343999.P10971039467507508606

`A354918(2*(n+1))`
-/

namespace A343999.P10971039467507508606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354918 (2 * (n + 1))

end

end A343999.P10971039467507508606

/-! ## A343999.P8618251064585701192

`A000035(A011772(n+1))`
-/

namespace A343999.P8618251064585701192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A011772 (n + 1)).toNat

end

end A343999.P8618251064585701192

/-! ## A343999.P1793394015790640000

`A354920(2*(n+1))`
-/

namespace A343999.P1793394015790640000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (2 * (n + 1))

end

end A343999.P1793394015790640000

/-! ## A343999.P17458691428744194173

`A344969(n+1)%2`
-/

namespace A343999.P17458691428744194173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344969 (n + 1)) 2

end

end A343999.P17458691428744194173

/-! ## A343999.P1812092789137926961

`(A321366(n+1)+1)%2`
-/

namespace A343999.P1812092789137926961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321366 (n + 1) + 1) 2

end

end A343999.P1812092789137926961

/-! ## A343999.P16866813333895843889

`A354985(2*(n+1))%2`
-/

namespace A343999.P16866813333895843889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354985 (2 * (n + 1))) 2

end

end A343999.P16866813333895843889

/-! ## A343999.P3924865137808235947

`and(1, A354985(2*n+2))`
-/

namespace A343999.P3924865137808235947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A354985 (2 * n + 2))

end

end A343999.P3924865137808235947

/-! ## A343999.P15820239690951648574

`A000007(val(A011772(n+1), 2))`
-/

namespace A343999.P15820239690951648574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A011772 (n + 1)).toNat 2)

end

end A343999.P15820239690951648574

/-! ## A343999.P16103666252767497386

`and(1, A011772(A000027(n+1)))`
-/

namespace A343999.P16103666252767497386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A011772 (A000027 (n + 1)).toNat)

end

end A343999.P16103666252767497386

/-! ## A343999.P14080200055903005238

`and(A011772(n+1), A158388(n))`
-/

namespace A343999.P14080200055903005238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011772 (n + 1)) (A158388 n)

end

end A343999.P14080200055903005238

/-! ## A343999.P18336370455212997313

`A343997(n+1)-A011772(n+1)`
-/

namespace A343999.P18336370455212997313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (n + 1) - A011772 (n + 1)

end

end A343999.P18336370455212997313

/-! ## A343999.P12733246743968206154

`A321366(n+1)-A343996(n+1)`
-/

namespace A343999.P12733246743968206154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (n + 1) - A343996 (n + 1)

end

end A343999.P12733246743968206154

/-! ## A343999.P3972679792818918326

`C(A011772(n+1), A343996(n+1))`
-/

namespace A343999.P3972679792818918326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A011772 (n + 1)).toNat (A343996 (n + 1)).toNat

end

end A343999.P3972679792818918326

/-! ## A343999.P6966055660782726104

`and(A011772(n+1), A076877(n+1))`
-/

namespace A343999.P6966055660782726104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011772 (n + 1)) (A076877 (n + 1))

end

end A343999.P6966055660782726104

/-! ## A343999.P14100752540866794392

`and(A011772(n+1), A080076(n+1))`
-/

namespace A343999.P14100752540866794392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011772 (n + 1)) (A080076 (n + 1))

end

end A343999.P14100752540866794392

/-! ## A343999.P4724086081770243374

`and(1, A011772(n+1)*A239609(n))`
-/

namespace A343999.P4724086081770243374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A011772 (n + 1) * A239609 n)

end

end A343999.P4724086081770243374

/-! ## A343999.P14261833279797201122

`and(1, A011772(n+1)*A243134(n))`
-/

namespace A343999.P14261833279797201122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A011772 (n + 1) * A243134 n)

end

end A343999.P14261833279797201122

/-! ## A343999.P18042871667716637571

`(A000203(n+1)-A344765(n+1))%2`
-/

namespace A343999.P18042871667716637571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - A344765 (n + 1)) 2

end

end A343999.P18042871667716637571

/-! ## A343999.P3256843290150408857

`A001222(2-and(1, A000203(n+1)-A344765(n+1)+1))`
-/

namespace A343999.P3256843290150408857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - Int.land 1 (A000203 (n + 1) - A344765 (n + 1) + 1)).toNat

end

end A343999.P3256843290150408857

