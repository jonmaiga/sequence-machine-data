import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
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
# A395605: a(n) = ((Lucas(prime(n)) - 1) / prime(n)) mod prime(n).

The programs for A395605, there is no canonical definition to state claims against.
-/

/-! ## A395605.P6780843966048618070

`A064723(n+1)%A000040(n+1)`
-/

namespace A395605.P6780843966048618070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064723 (n + 1)) (A000040 (n + 1))

end

end A395605.P6780843966048618070

/-!
# A395607: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 6, a(2) = 36, a(3) = 42.

The programs for A395607, the canonical program `A395607.P18184942053276312114` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395607 has offset 0).

The definition of A395607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395607.P18184942053276312114`, by `A395607.P18184942053276312114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395607.P18184942053276312114

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=42`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A395607

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P18184942053276312114.Spec : Prop :=
  ∀ n, (P18184942053276312114.a n : ℤ) = A395607 n

theorem P18184942053276312114.correct : P18184942053276312114.Spec := by
  intro n
  simp only [A395607]

end A395607

/-!
# A395611: Triangle read by rows: coefficients of (1+x)*(1+(n+1)*x)^(n-1).

The programs for A395611, the canonical program `A395611.P8386097740936724914` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395611 has offset 0).

The definition of A395611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395611.P8386097740936724914

`A007318(n)*A058127(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A395611

/-- `A007318(n)*A058127(n+1)` -/
def P8386097740936724914.Spec : Prop :=
  ∀ n, P8386097740936724914.a n = A395611 n

theorem P8386097740936724914.correct : P8386097740936724914.Spec := by
  intro n
  simp only [A395611]

end A395611

/-! ## A395611.P5434452412277985595

`A122525(n+1)/A119502(n)`
-/

namespace A395611.P5434452412277985595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122525 (n + 1) : ℚ) / (A119502 n : ℚ)

end

end A395611.P5434452412277985595

namespace A395611

/-- `A122525(n+1)/A119502(n)` -/
def P5434452412277985595.Spec : Prop :=
  ∀ n, P5434452412277985595.a n = (A395611 n : ℚ)

end A395611

/-!
# A395614: a(n) = Sum_{k=0..floor(n/4)} binomial(n,k) * binomial(2*n,n+4*k).

The programs for A395614, there is no canonical definition to state claims against.
-/

/-! ## A395614.P4387530748770487138

`A344009(A217664(n+1))`
-/

namespace A395614.P4387530748770487138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 (A217664 (n + 1)).toNat

end

end A395614.P4387530748770487138

/-! ## A395614.P1862708364990913594

`∑[A335500(A000041(n)²)]`
-/

namespace A395614.P1862708364990913594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335500 (A000041 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395614.P1862708364990913594

/-!
# A395617: Start with a(1) = 1. Thereafter, a(n) is the least integer with a set of divisors whose sum add to the sum of all previous terms.

The programs for A395617, there is no canonical definition to state claims against.
-/

/-! ## A395617.P10965968661210011520

`A002093(A001399(n)%A396775(n+4))`
-/

namespace A395617.P10965968661210011520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (Int.tmod (A001399 n) (A396775 (n + 4))).toNat

end

end A395617.P10965968661210011520

/-! ## A395617.P14219508110812200753

`A002093(A001399(n))%A245470(3*n+5)`
-/

namespace A395617.P14219508110812200753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002093 (A001399 n).toNat) (A245470 (3 * n + 5))

end

end A395617.P14219508110812200753

/-!
# A395626: Numbers x*y such that |x-y| is a square, with nonnegative integers x and y.

The programs for A395626, there is no canonical definition to state claims against.
-/

/-! ## A395626.P8785939319839297356

`lt[A383980(A162232(n+1)), A004016(3*n+1)]`
-/

namespace A395626.P8785939319839297356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383980 (A162232 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395626.P8785939319839297356

/-! ## A395626.P10649467511480939271

`lt[A353909(A356916(2*(n+1))), A353936(3*n+4)]`
-/

namespace A395626.P10649467511480939271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353909 (A356916 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353936 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395626.P10649467511480939271

/-! ## A395626.P3817781951482722395

`lt[A001055(A358914(n)), A005882(n)]`
-/

namespace A395626.P3817781951482722395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A358914 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395626.P3817781951482722395

/-!
# A395627: Infinite square array T(n,k) = (prime(n)-1)*prime(n)^k/2; n, k >= 1; read by falling antidiagonals.

The programs for A395627, there is no canonical definition to state claims against.
-/

/-! ## A395627.P7410928632507272653

`A090780(A182944(n+1))`
-/

namespace A395627.P7410928632507272653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090780 (A182944 (n + 1)).toNat

end

end A395627.P7410928632507272653

/-!
# A395628: a(n) = f(n+1) * n! where f(n) = n/f(n-1), f(1) = 1.

The programs for A395628, the canonical program `A395628.P10171134918520284731` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395628 has offset 0).

The definition of A395628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395628.P10171134918520284731

`(n+1)!*(n-1)!/a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A395628

/-- `(n+1)!*(n-1)!/a(n-1)` -/
def P10171134918520284731.Spec : Prop :=
  ∀ n, P10171134918520284731.a n = (A395628 n : ℚ)

end A395628

/-! ## A395628.P12575818799855344770

`(n²-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395628.P12575818799855344770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n ^ 2 : ℤ) - 1) * a (n - 2)

end

end A395628.P12575818799855344770

namespace A395628

/-- `(n²-1)*a(n-2)` -/
def P12575818799855344770.Spec : Prop :=
  ∀ n, P12575818799855344770.a n = A395628 n

end A395628

/-! ## A395628.P10292510742936050062

`a(n-2)*∑[2*n-1]` with `a(0)=1, a(1)=2`
-/

namespace A395628.P10292510742936050062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395628.P10292510742936050062

namespace A395628

/-- `a(n-2)*∑[2*n-1]` -/
def P10292510742936050062.Spec : Prop :=
  ∀ n, P10292510742936050062.a n = A395628 n

end A395628

/-! ## A395628.P2706461857663883385

`floor((n*n-1)*a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A395628.P2706461857663883385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n * n : ℤ) - 1) * a (n - 2)

end

end A395628.P2706461857663883385

namespace A395628

/-- `floor((n*n-1)*a(n-2))` -/
def P2706461857663883385.Spec : Prop :=
  ∀ n, P2706461857663883385.a n = A395628 n

end A395628

/-! ## A395628.P6078270049043465494

`(n+1)*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395628.P6078270049043465494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) * (((n : ℤ) - 1) * a (n - 2))

end

end A395628.P6078270049043465494

namespace A395628

/-- `(n+1)*(n-1)*a(n-2)` -/
def P6078270049043465494.Spec : Prop :=
  ∀ n, P6078270049043465494.a n = A395628 n

end A395628

/-! ## A395628.P4778810129248539030

`n*n*a(n-2)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395628.P4778810129248539030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * ((n : ℤ) * a (n - 2)) - a (n - 2)

end

end A395628.P4778810129248539030

namespace A395628

/-- `n*n*a(n-2)-a(n-2)` -/
def P4778810129248539030.Spec : Prop :=
  ∀ n, P4778810129248539030.a n = A395628 n

end A395628

/-! ## A395628.P12774532039868855420

`a(n-2)/(1/n)²-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395628.P12774532039868855420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / (1 / (n : ℚ)) ^ 2 - a (n - 2)

end

end A395628.P12774532039868855420

namespace A395628

/-- `a(n-2)/(1/n)²-a(n-2)` -/
def P12774532039868855420.Spec : Prop :=
  ∀ n, P12774532039868855420.a n = (A395628 n : ℚ)

end A395628

/-! ## A395628.P10295005579831378743

`(n+1)*A172089(∑[n])²`
-/

namespace A395628.P10295005579831378743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A172089 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A395628.P10295005579831378743

namespace A395628

/-- `(n+1)*A172089(∑[n])²` -/
def P10295005579831378743.Spec : Prop :=
  ∀ n, P10295005579831378743.a n = A395628 n

end A395628

/-! ## A395628.P15461673164625214059

`A006882(n+1)*A095987(n)*A380910(n)`
-/

namespace A395628.P15461673164625214059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A095987 n * A380910 n

end

end A395628.P15461673164625214059

namespace A395628

/-- `A006882(n+1)*A095987(n)*A380910(n)` -/
def P15461673164625214059.Spec : Prop :=
  ∀ n, P15461673164625214059.a n = A395628 n

end A395628

/-! ## A395628.P15767887931785990031

`A006882(n+1)/A006882(n)*A000142(n)`
-/

namespace A395628.P15767887931785990031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A006882 n : ℚ) * (A000142 n : ℚ)

end

end A395628.P15767887931785990031

namespace A395628

/-- `A006882(n+1)/A006882(n)*A000142(n)` -/
def P15767887931785990031.Spec : Prop :=
  ∀ n, P15767887931785990031.a n = (A395628 n : ℚ)

end A395628

/-!
# A395630: Divisors of the order of the Baby Monster group, |B| = 4154781481226426191177580544000000.

The programs for A395630, there is no canonical definition to state claims against.
-/

/-! ## A395630.P1440096348072471541

`∪[A081333(n+1), A129618(n+1)]`
-/

namespace A395630.P1440096348072471541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P1440096348072471541

/-! ## A395630.P13709587383292938639

`∪[A048737(n+1), A129618(n+1)]`
-/

namespace A395630.P13709587383292938639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P13709587383292938639

/-! ## A395630.P8907457091800791760

`∪[A080682(n+1), A129618(n+1)]`
-/

namespace A395630.P8907457091800791760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P8907457091800791760

/-! ## A395630.P14470955101741818421

`∪[A080683(n+1), A129618(n+1)]`
-/

namespace A395630.P14470955101741818421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P14470955101741818421

/-! ## A395630.P13129893752840166554

`∪[A129618(n+1), A174228(n+1)]`
-/

namespace A395630.P13129893752840166554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395630.P13129893752840166554

/-!
# A395632: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers satisfying x < y <= z.

The programs for A395632, there is no canonical definition to state claims against.
-/

/-! ## A395632.P3384731076950088202

`A037806(A373510(n+1))`
-/

namespace A395632.P3384731076950088202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A373510 (n + 1)).toNat

end

end A395632.P3384731076950088202

/-! ## A395632.P15960929420535009911

`A086010(A350437(n+1))`
-/

namespace A395632.P15960929420535009911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086010 (A350437 (n + 1)).toNat

end

end A395632.P15960929420535009911

/-! ## A395632.P691860304713184247

`A269245(A000799(n+1))`
-/

namespace A395632.P691860304713184247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269245 (A000799 (n + 1)).toNat

end

end A395632.P691860304713184247

/-! ## A395632.P3486604555287414963

`A086073(A247124(n+1))`
-/

namespace A395632.P3486604555287414963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086073 (A247124 (n + 1)).toNat

end

end A395632.P3486604555287414963

/-! ## A395632.P14920839168183433354

`A229764(A024156(n+3)^A181796(n+1))`
-/

namespace A395632.P14920839168183433354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229764 (SequenceMachineLib.roundAway ((A024156 (n + 3) : ℚ) ^ (A181796 (n + 1) : ℤ))).toNat

end

end A395632.P14920839168183433354

/-!
# A395633: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers satisfying y < x < z.

The programs for A395633, there is no canonical definition to state claims against.
-/

/-! ## A395633.P5082665884340799067

`A353929(A322387(n+1))`
-/

namespace A395633.P5082665884340799067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353929 (A322387 (n + 1)).toNat

end

end A395633.P5082665884340799067

/-!
# A395634: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers with x coprime to y*z.

The programs for A395634, there is no canonical definition to state claims against.
-/

/-! ## A395634.P18000453384399670506

`∑{e}[A066317(n+2), #]`
-/

namespace A395634.P18000453384399670506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066317 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A395634.P18000453384399670506

/-! ## A395634.P11130031708993769572

`A196046(A370440(n+2))`
-/

namespace A395634.P11130031708993769572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196046 (A370440 (n + 2)).toNat

end

end A395634.P11130031708993769572

/-!
# A395636: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are distinct primes satisfying y < z.

The programs for A395636, there is no canonical definition to state claims against.
-/

/-! ## A395636.P3089371818826011630

`A125999(A343525(n+2))`
-/

namespace A395636.P3089371818826011630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125999 (A343525 (n + 2)).toNat

end

end A395636.P3089371818826011630

/-!
# A395643: Numbers k whose largest prime factor exceeds k^(2/3).

The programs for A395643, there is no canonical definition to state claims against.
-/

/-! ## A395643.P12597726541297260600

`∪[A000040(n+1), A063764(n+1)]`
-/

namespace A395643.P12597726541297260600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A395643.P12597726541297260600

/-! ## A395643.P12448342320099423577

`lt[n², ∑{p}[n, #^3]]`
-/

namespace A395643.P12448342320099423577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395643.P12448342320099423577

/-! ## A395643.P17622491687498378346

`A325183(A325460(n+2))`
-/

namespace A395643.P17622491687498378346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325183 (A325460 (n + 2)).toNat

end

end A395643.P17622491687498378346

/-! ## A395643.P14189212925250833079

`A325183(A392707(n+2))`
-/

namespace A395643.P14189212925250833079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325183 (A392707 (n + 2)).toNat

end

end A395643.P14189212925250833079

/-! ## A395643.P3553941983606926115

`∩[A007412(n+1), A325460(n+1)]`
-/

namespace A395643.P3553941983606926115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395643.P3553941983606926115

/-!
# A395648: Consider the square spiral with its cells numbered starting at 0. Three players, Red, Green and Blue, take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different color. Sequence lists unoccupied squares.

The programs for A395648, there is no canonical definition to state claims against.
-/

/-! ## A395648.P11960831883732553529

`eq[0, A395649(n)]`
-/

namespace A395648.P11960831883732553529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395648.P11960831883732553529

/-! ## A395648.P194085217645027909

`lt[A395649(n), A046951(n+1)]`
-/

namespace A395648.P194085217645027909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395648.P194085217645027909

/-!
# A395655: Expansion of 1/(4*x) * (1/(3-2*g)^2 - 1), where g = 1+x*g^3 is the g.f. of A001764.

The programs for A395655, there is no canonical definition to state claims against.
-/

/-! ## A395655.P2124019926916051659

`A378504(n)/(n+1)`
-/

namespace A395655.P2124019926916051659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378504 n : ℚ) / (n + 1 : ℚ)

end

end A395655.P2124019926916051659

/-! ## A395655.P4210839827081945304

`A117375(A001844(n+1))`
-/

namespace A395655.P4210839827081945304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117375 (A001844 (n + 1)).toNat

end

end A395655.P4210839827081945304

/-! ## A395655.P5025637601979016417

`A117375(A099776(n+1))`
-/

namespace A395655.P5025637601979016417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117375 (A099776 (n + 1)).toNat

end

end A395655.P5025637601979016417

/-! ## A395655.P8517327261171248021

`A125170(A022267(n+1))`
-/

namespace A395655.P8517327261171248021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125170 (A022267 (n + 1)).toNat

end

end A395655.P8517327261171248021

/-! ## A395655.P5687744528519078776

`A160760(A081267(n+1))`
-/

namespace A395655.P5687744528519078776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160760 (A081267 (n + 1)).toNat

end

end A395655.P5687744528519078776

/-!
# A395656: Expansion of 1/(9*x) * (1/(4-3*g)^3 - 1), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A395656, there is no canonical definition to state claims against.
-/

/-! ## A395656.P16112458014712086888

`A395659(n)/(n+1)`
-/

namespace A395656.P16112458014712086888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395659 n : ℚ) / (n + 1 : ℚ)

end

end A395656.P16112458014712086888

/-!
# A395657: Expansion of 1/(16*x) * (1/(5-4*g)^4 - 1), where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395657, there is no canonical definition to state claims against.
-/

/-! ## A395657.P15750388144610887179

`A395660(n)/(n+1)`
-/

namespace A395657.P15750388144610887179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395660 n : ℚ) / (n + 1 : ℚ)

end

end A395657.P15750388144610887179

/-!
# A395659: Expansion of (Sum_{k>=0} binomial(4*k,k) * x^k)^5.

The programs for A395659, there is no canonical definition to state claims against.
-/

/-! ## A395659.P6277220690401795126

`(n+1)*A395656(n)`
-/

namespace A395659.P6277220690401795126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395656 n

end

end A395659.P6277220690401795126

/-!
# A395660: Expansion of (Sum_{k>=0} binomial(5*k,k) * x^k)^6.

The programs for A395660, there is no canonical definition to state claims against.
-/

/-! ## A395660.P10398456476304366776

`(n+1)*A395657(n)`
-/

namespace A395660.P10398456476304366776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395657 n

end

end A395660.P10398456476304366776

/-!
# A395661: Number of rooted binary unlabeled general galled trees with n leaves and exactly 1 gall.

The programs for A395661, there is no canonical definition to state claims against.
-/

/-! ## A395661.P18060673072453315910

`A329815(A001523(n))`
-/

namespace A395661.P18060673072453315910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329815 (A001523 n).toNat

end

end A395661.P18060673072453315910

/-! ## A395661.P4236276671671877900

`A329815(A248729(n))`
-/

namespace A395661.P4236276671671877900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329815 (A248729 n).toNat

end

end A395661.P4236276671671877900

/-! ## A395661.P17690093085402608685

`A329815(A331554(n))`
-/

namespace A395661.P17690093085402608685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329815 (A331554 n).toNat

end

end A395661.P17690093085402608685

/-!
# A395665: Expansion of g^6/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395665, there is no canonical definition to state claims against.
-/

/-! ## A395665.P8738888767890711933

`(n+1)*A395668(n)`
-/

namespace A395665.P8738888767890711933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395668 n

end

end A395665.P8738888767890711933

/-!
# A395666: E.g.f. A(x) satisfies A(x) = 1 + x * A(x * exp(x)).

The programs for A395666, there is no canonical definition to state claims against.
-/

/-! ## A395666.P8877370972258222458

`A000010(A193098(n+1)*A273917(2*(n+1)))`
-/

namespace A395666.P8877370972258222458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A193098 (n + 1) * A273917 (2 * (n + 1))).toNat

end

end A395666.P8877370972258222458

/-!
# A395667: Expansion of g^8/(7-6*g)^4, where g = 1+x*g^7 is the g.f. of A002296.

The programs for A395667, there is no canonical definition to state claims against.
-/

/-! ## A395667.P5682623998605490534

`(n+1)*A395669(n)`
-/

namespace A395667.P5682623998605490534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395669 n

end

end A395667.P5682623998605490534

/-!
# A395668: Expansion of g^5*(3-2*g)/(5-4*g)^2, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395668, there is no canonical definition to state claims against.
-/

/-! ## A395668.P16075930559915105460

`A395665(n)/(n+1)`
-/

namespace A395668.P16075930559915105460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395665 n : ℚ) / (n + 1 : ℚ)

end

end A395668.P16075930559915105460

/-!
# A395669: Expansion of g^7*(4-3*g)/(7-6*g)^2, where g = 1+x*g^7 is the g.f. of A002296.

The programs for A395669, there is no canonical definition to state claims against.
-/

/-! ## A395669.P7800674907976552696

`A395667(n)/(n+1)`
-/

namespace A395669.P7800674907976552696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395667 n : ℚ) / (n + 1 : ℚ)

end

end A395669.P7800674907976552696

/-!
# A395674: Odd powerful numbers that are not powers of squarefree numbers.

The programs for A395674, there is no canonical definition to state claims against.
-/

/-! ## A395674.P319826774568745143

`∩[A062739(n+1), A359280(n+1)]`
-/

namespace A395674.P319826774568745143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P319826774568745143

/-! ## A395674.P6056724735291412322

`∩[A359280(n+1), A363217(n+1)]`
-/

namespace A395674.P6056724735291412322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P6056724735291412322

/-! ## A395674.P2903631936743410132

`∩[A062739(n+1), A389752(n+1)]`
-/

namespace A395674.P2903631936743410132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P2903631936743410132

/-! ## A395674.P7778097893918146659

`∩[A363217(n+1), A389752(n+1)]`
-/

namespace A395674.P7778097893918146659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P7778097893918146659

/-! ## A395674.P3724489396365968286

`∩[A359280(n+1), A361487(n+1)]`
-/

namespace A395674.P3724489396365968286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P3724489396365968286

/-! ## A395674.P11710948184747300498

`∩[A275250(n+1), A359280(n+1)]`
-/

namespace A395674.P11710948184747300498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P11710948184747300498

/-! ## A395674.P14401970352691993666

`∩[A275196(n+1), A359280(n+1)]`
-/

namespace A395674.P14401970352691993666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395674.P14401970352691993666

/-! ## A395674.P3070662094277115148

`filter[A359280(n+1), A039982(#)]`
-/

namespace A395674.P3070662094277115148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A395674.P3070662094277115148

/-! ## A395674.P9624337128037094439

`filter[A359280(n+1), A098725(#)]`
-/

namespace A395674.P9624337128037094439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A395674.P9624337128037094439

/-!
# A395675: Expansion of g^3/(2-g)^4, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A395675, the canonical program `A395675.P10573458847951959363` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395675 has offset 0).

The definition of A395675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339240, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395675.P10573458847951959363

`A339240(n+1)/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A395675

/-- `A339240(n+1)/2` -/
def P10573458847951959363.Spec : Prop :=
  ∀ n, P10573458847951959363.a n = (A395675 n : ℚ)

end A395675

/-! ## A395675.P12271728576714696407

`(n+1)/2*A114121(n+1)`
-/

namespace A395675.P12271728576714696407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A114121 (n + 1) : ℚ)

end

end A395675.P12271728576714696407

namespace A395675

/-- `(n+1)/2*A114121(n+1)` -/
def P12271728576714696407.Spec : Prop :=
  ∀ n, P12271728576714696407.a n = (A395675 n : ℚ)

end A395675

/-! ## A395675.P10322845966635071281

`A018218(n)+A002457(n)`
-/

namespace A395675.P10322845966635071281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 n + A002457 n

end

end A395675.P10322845966635071281

namespace A395675

/-- `A018218(n)+A002457(n)` -/
def P10322845966635071281.Spec : Prop :=
  ∀ n, P10322845966635071281.a n = A395675 n

end A395675

/-! ## A395675.P17702678096003060919

`A240879(n)+A002697(n)`
-/

namespace A395675.P17702678096003060919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240879 n + A002697 n

end

end A395675.P17702678096003060919

namespace A395675

/-- `A240879(n)+A002697(n)` -/
def P17702678096003060919.Spec : Prop :=
  ∀ n, P17702678096003060919.a n = A395675 n

end A395675

/-! ## A395675.P16922787865880907005

`A210064(n+1)+A000531(n+1)`
-/

namespace A395675.P16922787865880907005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210064 (n + 1) + A000531 (n + 1)

end

end A395675.P16922787865880907005

namespace A395675

/-- `A210064(n+1)+A000531(n+1)` -/
def P16922787865880907005.Spec : Prop :=
  ∀ n, P16922787865880907005.a n = A395675 n

end A395675

/-! ## A395675.P8628918099354017946

`A185252(2*n+1)-A002699(n)`
-/

namespace A395675.P8628918099354017946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n + 1) - A002699 n

end

end A395675.P8628918099354017946

namespace A395675

/-- `A185252(2*n+1)-A002699(n)` -/
def P8628918099354017946.Spec : Prop :=
  ∀ n, P8628918099354017946.a n = A395675 n

end A395675

/-! ## A395675.P288816014393484378

`A185252(2*n+1)-A185251(2*n)`
-/

namespace A395675.P288816014393484378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n + 1) - A185251 (2 * n)

end

end A395675.P288816014393484378

namespace A395675

/-- `A185252(2*n+1)-A185251(2*n)` -/
def P288816014393484378.Spec : Prop :=
  ∀ n, P288816014393484378.a n = A395675 n

end A395675

/-! ## A395675.P4773881413201948656

`A185252(2*n+1)-A185252(2*n)`
-/

namespace A395675.P4773881413201948656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n + 1) - A185252 (2 * n)

end

end A395675.P4773881413201948656

namespace A395675

/-- `A185252(2*n+1)-A185252(2*n)` -/
def P4773881413201948656.Spec : Prop :=
  ∀ n, P4773881413201948656.a n = A395675 n

end A395675

/-! ## A395675.P11121920160832543669

`A002697(n+1)+A002699(n)-A303602(n)`
-/

namespace A395675.P11121920160832543669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) + (A002699 n - A303602 n)

end

end A395675.P11121920160832543669

namespace A395675

/-- `A002697(n+1)+A002699(n)-A303602(n)` -/
def P11121920160832543669.Spec : Prop :=
  ∀ n, P11121920160832543669.a n = A395675 n

end A395675

/-! ## A395675.P11083513392200842759

`A099326(2*n+1)/4`
-/

namespace A395675.P11083513392200842759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099326 (2 * n + 1) : ℚ) / 4

end

end A395675.P11083513392200842759

namespace A395675

/-- `A099326(2*n+1)/4` -/
def P11083513392200842759.Spec : Prop :=
  ∀ n, P11083513392200842759.a n = (A395675 n : ℚ)

end A395675

/-!
# A395694: Triangle read by rows: T(n,k) = number of labeled 5-multigraphs on n vertices with clique number exactly k.

The programs for A395694, there is no canonical definition to state claims against.
-/

/-! ## A395694.P817447651705049502

`A364757(A332477(n+1))`
-/

namespace A395694.P817447651705049502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364757 (A332477 (n + 1)).toNat

end

end A395694.P817447651705049502

/-!
# A395697: a(n) is the least multiple of n that is a partial sum of the primes.

The programs for A395697, there is no canonical definition to state claims against.
-/

/-! ## A395697.P14785150364627118352

`(n+1)*A308749(n+1)`
-/

namespace A395697.P14785150364627118352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308749 (n + 1)

end

end A395697.P14785150364627118352

/-! ## A395697.P9691527115809859857

`A007504(A053050(n+1))`
-/

namespace A395697.P9691527115809859857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A053050 (n + 1)).toNat

end

end A395697.P9691527115809859857

/-!
# A395698: Triangle read by rows: row n (n >= 1) gives the concatenated run-length encoding of the integer partitions of n, sorted first by length and then reverse-lexicographically.

The programs for A395698, there is no canonical definition to state claims against.
-/

/-! ## A395698.P9066669704816120065

`gcd(A000120(2*(n+1)), A000523(A071945(3*n+4)))`
-/

namespace A395698.P9066669704816120065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (2 * (n + 1))) (A000523 (A071945 (3 * n + 4)).toNat)

end

end A395698.P9066669704816120065

/-! ## A395698.P15295025466601963563

`A144790(A287621(n+1))`
-/

namespace A395698.P15295025466601963563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (A287621 (n + 1)).toNat

end

end A395698.P15295025466601963563

/-! ## A395698.P11515323125409032024

`A343029(2*n)+A119981(A246381(n))`
-/

namespace A395698.P11515323125409032024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (2 * n) + A119981 (A246381 n).toNat

end

end A395698.P11515323125409032024

/-! ## A395698.P3729148230616353743

`gcd(A000010(n+1), A091785(A077798(n+1)))`
-/

namespace A395698.P3729148230616353743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A091785 (A077798 (n + 1)).toNat)

end

end A395698.P3729148230616353743

