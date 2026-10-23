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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A060900: Number of walks of length n on square lattice, starting at origin, staying on points with x >= 0, y <= x.

The programs for A060900, the canonical program `A060900.P6418703585910364633` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060900 has offset 0).

The definition of A060900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060900.P6418703585910364633

`A001318(2*n)/A001318(n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060900

/-- `A001318(2*n)/A001318(n)*a(n-1)` -/
def P6418703585910364633.Spec : Prop :=
  ∀ n, P6418703585910364633.a n = (A060900 n : ℚ)

end A060900

/-! ## A060900.P2698558896211529135

`A183407(A133263(n))`
-/

namespace A060900.P2698558896211529135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A133263 n).toNat

end

end A060900.P2698558896211529135

namespace A060900

/-- `A183407(A133263(n))` -/
def P2698558896211529135.Spec : Prop :=
  ∀ n, P2698558896211529135.a n = A060900 n

end A060900

/-! ## A060900.P1841879662711526565

`A183407(A238531(n+1))`
-/

namespace A060900.P1841879662711526565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A238531 (n + 1)).toNat

end

end A060900.P1841879662711526565

namespace A060900

/-- `A183407(A238531(n+1))` -/
def P1841879662711526565.Spec : Prop :=
  ∀ n, P1841879662711526565.a n = A060900 n

end A060900

/-! ## A060900.P12812918124860264248

`A183407(A238531(n)-(n-2*n))`
-/

namespace A060900.P12812918124860264248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183407 (A238531 n - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A060900.P12812918124860264248

namespace A060900

/-- `A183407(A238531(n)-(n-2*n))` -/
def P12812918124860264248.Spec : Prop :=
  ∀ n, P12812918124860264248.a n = A060900 n

end A060900

/-!
# A060901: Exact power of 3 that divides the n-th Fibonacci number (sequence A000045).

The programs for A060901, the canonical program `A060901.P2200091392654414110` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060901 has offset 1).

The definition of A060901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060901.P2200091392654414110

`A038500(A000045(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060901

/-- `A038500(A000045(n+1))` -/
def P2200091392654414110.Spec : Prop :=
  ∀ n, P2200091392654414110.a n = A060901 (n + 1)

theorem P2200091392654414110.correct : P2200091392654414110.Spec := by
  intro n
  simp only [A060901, Nat.add_sub_cancel]

end A060901

/-! ## A060901.P5260979749935821287

`3^val(∑[gcd(2, ∑[n+1])], 3)`
-/

namespace A060901.P5260979749935821287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A060901.P5260979749935821287

namespace A060901

/-- `3^val(∑[gcd(2, ∑[n+1])], 3)` -/
def P5260979749935821287.Spec : Prop :=
  ∀ n, (P5260979749935821287.a n : ℤ) = A060901 (n + 1)

end A060901

/-! ## A060901.P8104529535010110352

`(3^(val(n+1, 3)+1))^Δ[floor(n/4)]`
-/

namespace A060901.P8104529535010110352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060901.P8104529535010110352

namespace A060901

/-- `(3^(val(n+1, 3)+1))^Δ[floor(n/4)]` -/
def P8104529535010110352.Spec : Prop :=
  ∀ n, P8104529535010110352.a n = (A060901 (n + 1) : ℚ)

end A060901

/-! ## A060901.P4802677348431524636

`gcd(3^(val(n+1, 3)+1), A121373(2^val(n+1, 2)))`
-/

namespace A060901.P4802677348431524636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℤ) (A121373 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A060901.P4802677348431524636

namespace A060901

/-- `gcd(3^(val(n+1, 3)+1), A121373(2^val(n+1, 2)))` -/
def P4802677348431524636.Spec : Prop :=
  ∀ n, (P4802677348431524636.a n : ℤ) = A060901 (n + 1)

end A060901

/-! ## A060901.P14940485757371222660

`A038500(A037915(n))`
-/

namespace A060901.P14940485757371222660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A037915 n).toNat

end

end A060901.P14940485757371222660

namespace A060901

/-- `A038500(A037915(n))` -/
def P14940485757371222660.Spec : Prop :=
  ∀ n, P14940485757371222660.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P13356992912519605817

`A038500(A066530(n))`
-/

namespace A060901.P13356992912519605817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A066530 n).toNat

end

end A060901.P13356992912519605817

namespace A060901

/-- `A038500(A066530(n))` -/
def P13356992912519605817.Spec : Prop :=
  ∀ n, P13356992912519605817.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P6824919663683445835

`A038500(A267807(n))`
-/

namespace A060901.P6824919663683445835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A267807 n).toNat

end

end A060901.P6824919663683445835

namespace A060901

/-- `A038500(A267807(n))` -/
def P6824919663683445835.Spec : Prop :=
  ∀ n, P6824919663683445835.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P16225349192601293510

`gcd(A066530(n), A098355(n))`
-/

namespace A060901.P16225349192601293510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066530 n) (A098355 n)

end

end A060901.P16225349192601293510

namespace A060901

/-- `gcd(A066530(n), A098355(n))` -/
def P16225349192601293510.Spec : Prop :=
  ∀ n, (P16225349192601293510.a n : ℤ) = A060901 (n + 1)

end A060901

/-! ## A060901.P11297754558204229635

`gcd(A132171(n), A267807(n))`
-/

namespace A060901.P11297754558204229635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132171 n) (A267807 n)

end

end A060901.P11297754558204229635

namespace A060901

/-- `gcd(A132171(n), A267807(n))` -/
def P11297754558204229635.Spec : Prop :=
  ∀ n, (P11297754558204229635.a n : ℤ) = A060901 (n + 1)

end A060901

/-! ## A060901.P12357766694678647528

`A081320(n+1)/A060865(n+1)`
-/

namespace A060901.P12357766694678647528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081320 (n + 1) : ℚ) / (A060865 (n + 1) : ℚ)

end

end A060901.P12357766694678647528

namespace A060901

/-- `A081320(n+1)/A060865(n+1)` -/
def P12357766694678647528.Spec : Prop :=
  ∀ n, P12357766694678647528.a n = (A060901 (n + 1) : ℚ)

end A060901

/-! ## A060901.P7496373596420457105

`A038500(A160079(n+1))`
-/

namespace A060901.P7496373596420457105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A160079 (n + 1)).toNat

end

end A060901.P7496373596420457105

namespace A060901

/-- `A038500(A160079(n+1))` -/
def P7496373596420457105.Spec : Prop :=
  ∀ n, P7496373596420457105.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P7025072551711417707

`A000265(A081320(n+1))`
-/

namespace A060901.P7025072551711417707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A081320 (n + 1)).toNat

end

end A060901.P7025072551711417707

namespace A060901

/-- `A000265(A081320(n+1))` -/
def P7025072551711417707.Spec : Prop :=
  ∀ n, P7025072551711417707.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P14943987535491916486

`A038500(A006368(n)+1)`
-/

namespace A060901.P14943987535491916486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A006368 n + 1).toNat

end

end A060901.P14943987535491916486

namespace A060901

/-- `A038500(A006368(n)+1)` -/
def P14943987535491916486.Spec : Prop :=
  ∀ n, P14943987535491916486.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P10589611567596426142

`A038500(A210770(n+1))`
-/

namespace A060901.P10589611567596426142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A210770 (n + 1)).toNat

end

end A060901.P10589611567596426142

namespace A060901

/-- `A038500(A210770(n+1))` -/
def P10589611567596426142.Spec : Prop :=
  ∀ n, P10589611567596426142.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P14494574027427162754

`A038500(A028390(n+1))`
-/

namespace A060901.P14494574027427162754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A028390 (n + 1)).toNat

end

end A060901.P14494574027427162754

namespace A060901

/-- `A038500(A028390(n+1))` -/
def P14494574027427162754.Spec : Prop :=
  ∀ n, P14494574027427162754.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P14095500382449217259

`A038500(A047237(n+2))`
-/

namespace A060901.P14095500382449217259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A047237 (n + 2)).toNat

end

end A060901.P14095500382449217259

namespace A060901

/-- `A038500(A047237(n+2))` -/
def P14095500382449217259.Spec : Prop :=
  ∀ n, P14095500382449217259.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P6019049807124159178

`A038500(A118286(n+1)/2)`
-/

namespace A060901.P6019049807124159178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (SequenceMachineLib.roundAway ((A118286 (n + 1) : ℚ) / 2)).toNat

end

end A060901.P6019049807124159178

namespace A060901

/-- `A038500(A118286(n+1)/2)` -/
def P6019049807124159178.Spec : Prop :=
  ∀ n, P6019049807124159178.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P7170954811620566590

`A038500(comp[2*or(1, n)+n]+1)`
-/

namespace A060901.P7170954811620566590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A060901.P7170954811620566590

namespace A060901

/-- `A038500(comp[2*or(1, n)+n]+1)` -/
def P7170954811620566590.Spec : Prop :=
  ∀ n, P7170954811620566590.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P11835782523624125190

`A038500(A342131(n+1))`
-/

namespace A060901.P11835782523624125190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A342131 (n + 1)).toNat

end

end A060901.P11835782523624125190

namespace A060901

/-- `A038500(A342131(n+1))` -/
def P11835782523624125190.Spec : Prop :=
  ∀ n, P11835782523624125190.a n = A060901 (n + 1)

end A060901

/-! ## A060901.P2602043307109711934

`A038500(A047260(n+2))`
-/

namespace A060901.P2602043307109711934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A047260 (n + 2)).toNat

end

end A060901.P2602043307109711934

namespace A060901

/-- `A038500(A047260(n+2))` -/
def P2602043307109711934.Spec : Prop :=
  ∀ n, P2602043307109711934.a n = A060901 (n + 1)

end A060901

/-!
# A060902: Number of ordered factorizations of the identity permutation in the symmetric group S_n into 2n-2 transpositions such that the factors generate S_n.

The programs for A060902, the canonical program `A060902.P5338275797933240775` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060902 has offset 2).

The definition of A060902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060902.P5338275797933240775

`(2*(n+2)-2)!*(n+2)^(n-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060902

/-- `(2*(n+2)-2)!*(n+2)^(n-1)` -/
def P5338275797933240775.Spec : Prop :=
  ∀ n, P5338275797933240775.a n = (A060902 (n + 2) : ℚ)

end A060902

/-! ## A060902.P3083253996893800885

`(n+2)^(n-1)*(2*(n+1))!`
-/

namespace A060902.P3083253996893800885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial (2 * (n + 1)) : ℚ)

end

end A060902.P3083253996893800885

namespace A060902

/-- `(n+2)^(n-1)*(2*(n+1))!` -/
def P3083253996893800885.Spec : Prop :=
  ∀ n, P3083253996893800885.a n = (A060902 (n + 2) : ℚ)

end A060902

/-! ## A060902.P5045035869500011905

`(n+2)^(n-1)*A010050(n+1)`
-/

namespace A060902.P5045035869500011905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A010050 (n + 1) : ℚ)

end

end A060902.P5045035869500011905

namespace A060902

/-- `(n+2)^(n-1)*A010050(n+1)` -/
def P5045035869500011905.Spec : Prop :=
  ∀ n, P5045035869500011905.a n = (A060902 (n + 2) : ℚ)

end A060902

/-! ## A060902.P16044005822465019822

`A000142(2*n+1)*A089946(n)`
-/

namespace A060902.P16044005822465019822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n + 1) * A089946 n

end

end A060902.P16044005822465019822

namespace A060902

/-- `A000142(2*n+1)*A089946(n)` -/
def P16044005822465019822.Spec : Prop :=
  ∀ n, P16044005822465019822.a n = A060902 (n + 2)

end A060902

/-!
# A060903: a(n) = floor(6*n*sqrt(n)/Pi^2).

The programs for A060903, the canonical program `A060903.P4242041366982706783` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060903 has offset 0).

The definition of A060903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6*n*sqrt(n)/π²)` (program `A060903.P4242041366982706783`, by `A060903.P4242041366982706783.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060903.P4242041366982706783

`floor(6*n*sqrt(n)/π²)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060903

/-- `floor(6*n*sqrt(n)/π²)` -/
def P4242041366982706783.Spec : Prop :=
  ∀ n, P4242041366982706783.a n = A060903 n

theorem P4242041366982706783.correct : P4242041366982706783.Spec := by
  intro n
  simp only [A060903]

end A060903

/-! ## A060903.P8031982981162473340

`A000196(n*∑[A062276(2*n)])`
-/

namespace A060903.P8031982981162473340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A060903.P8031982981162473340

namespace A060903

/-- `A000196(n*∑[A062276(2*n)])` -/
def P8031982981162473340.Spec : Prop :=
  ∀ n, P8031982981162473340.a n = A060903 n

end A060903

/-! ## A060903.P13311272245194282596

`A095861(A061349(n)+A000125(n))`
-/

namespace A060903.P13311272245194282596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A061349 n + A000125 n).toNat

end

end A060903.P13311272245194282596

namespace A060903

/-- `A095861(A061349(n)+A000125(n))` -/
def P13311272245194282596.Spec : Prop :=
  ∀ n, P13311272245194282596.a n = A060903 n

end A060903

/-! ## A060903.P2228688638529325908

`A004526(A003056(n*A077043(n)))`
-/

namespace A060903.P2228688638529325908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003056 ((n : ℤ) * A077043 n).toNat).toNat

end

end A060903.P2228688638529325908

namespace A060903

/-- `A004526(A003056(n*A077043(n)))` -/
def P2228688638529325908.Spec : Prop :=
  ∀ n, P2228688638529325908.a n = A060903 n

end A060903

/-! ## A060903.P5803136521366229873

`A121902(A172073(n))`
-/

namespace A060903.P5803136521366229873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A172073 n).toNat

end

end A060903.P5803136521366229873

namespace A060903

/-- `A121902(A172073(n))` -/
def P5803136521366229873.Spec : Prop :=
  ∀ n, P5803136521366229873.a n = A060903 n

end A060903

/-!
# A060904: Largest power of 5 that divides n.

The programs for A060904, the canonical program `A060904.P2539972540385605862` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060904 has offset 1).

The definition of A060904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060904.P16944624439859412439

`5^val(n+1, 5)`
-/

namespace A060904.P16944624439859412439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (n + 1) 5

end

end A060904.P16944624439859412439

namespace A060904

/-- `5^val(n+1, 5)` -/
def P16944624439859412439.Spec : Prop :=
  ∀ n, (P16944624439859412439.a n : ℤ) = A060904 (n + 1)

end A060904

/-! ## A060904.P2539972540385605862

`5^A112765(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060904

/-- `5^A112765(n+1)` -/
def P2539972540385605862.Spec : Prop :=
  ∀ n, P2539972540385605862.a n = (A060904 (n + 1) : ℚ)

end A060904

/-! ## A060904.P520550045374989561

`(n+1)/A132739(n+1)`
-/

namespace A060904.P520550045374989561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132739 (n + 1) : ℚ)

end

end A060904.P520550045374989561

namespace A060904

/-- `(n+1)/A132739(n+1)` -/
def P520550045374989561.Spec : Prop :=
  ∀ n, P520550045374989561.a n = (A060904 (n + 1) : ℚ)

end A060904

/-! ## A060904.P1520848850331685575

`gcd(n+1, (5*n)^7)`
-/

namespace A060904.P1520848850331685575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((5 * n) ^ 7)

end

end A060904.P1520848850331685575

namespace A060904

/-- `gcd(n+1, (5*n)^7)` -/
def P1520848850331685575.Spec : Prop :=
  ∀ n, (P1520848850331685575.a n : ℤ) = A060904 (n + 1)

end A060904

/-! ## A060904.P5118451226600606896

`5^dr(val(2*n-(n-1), 5))`
-/

namespace A060904.P5118451226600606896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 5 : ℤ)

end

end A060904.P5118451226600606896

namespace A060904

/-- `5^dr(val(2*n-(n-1), 5))` -/
def P5118451226600606896.Spec : Prop :=
  ∀ n, (P5118451226600606896.a n : ℤ) = A060904 (n + 1)

end A060904

/-! ## A060904.P7347923786087073297

`5^Δ[A027868(n)]`
-/

namespace A060904.P7347923786087073297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060904.P7347923786087073297

namespace A060904

/-- `5^Δ[A027868(n)]` -/
def P7347923786087073297.Spec : Prop :=
  ∀ n, P7347923786087073297.a n = (A060904 (n + 1) : ℚ)

end A060904

/-! ## A060904.P11769031750819494477

`A000351(val(n+1, 5))`
-/

namespace A060904.P11769031750819494477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (SequenceMachineLib.valuation (n + 1) 5)

end

end A060904.P11769031750819494477

namespace A060904

/-- `A000351(val(n+1, 5))` -/
def P11769031750819494477.Spec : Prop :=
  ∀ n, P11769031750819494477.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P2674108472608443406

`A050735(val(n+1, 5))`
-/

namespace A060904.P2674108472608443406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050735 (SequenceMachineLib.valuation (n + 1) 5)

end

end A060904.P2674108472608443406

namespace A060904

/-- `A050735(val(n+1, 5))` -/
def P2674108472608443406.Spec : Prop :=
  ∀ n, P2674108472608443406.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P17934278362589178995

`A060391(val(n+1, 5))`
-/

namespace A060904.P17934278362589178995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060391 (SequenceMachineLib.valuation (n + 1) 5)

end

end A060904.P17934278362589178995

namespace A060904

/-- `A060391(val(n+1, 5))` -/
def P17934278362589178995.Spec : Prop :=
  ∀ n, P17934278362589178995.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P10558185312930017722

`A132741(A000265(n+1))`
-/

namespace A060904.P10558185312930017722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (A000265 (n + 1)).toNat

end

end A060904.P10558185312930017722

namespace A060904

/-- `A132741(A000265(n+1))` -/
def P10558185312930017722.Spec : Prop :=
  ∀ n, P10558185312930017722.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P10186193000502852331

`A170818(A132741(n+1))`
-/

namespace A060904.P10186193000502852331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A132741 (n + 1)).toNat

end

end A060904.P10186193000502852331

namespace A060904

/-- `A170818(A132741(n+1))` -/
def P10186193000502852331.Spec : Prop :=
  ∀ n, P10186193000502852331.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P17275811794626318493

`A000265(A370181(n+1))`
-/

namespace A060904.P17275811794626318493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A370181 (n + 1)).toNat

end

end A060904.P17275811794626318493

namespace A060904

/-- `A000265(A370181(n+1))` -/
def P17275811794626318493.Spec : Prop :=
  ∀ n, P17275811794626318493.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P3186185857418076619

`A355582(A065330(n+1))`
-/

namespace A060904.P3186185857418076619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A065330 (n + 1)).toNat

end

end A060904.P3186185857418076619

namespace A060904

/-- `A355582(A065330(n+1))` -/
def P3186185857418076619.Spec : Prop :=
  ∀ n, P3186185857418076619.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P9138410323098889926

`A355582(A170818(n+1))`
-/

namespace A060904.P9138410323098889926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A170818 (n + 1)).toNat

end

end A060904.P9138410323098889926

namespace A060904

/-- `A355582(A170818(n+1))` -/
def P9138410323098889926.Spec : Prop :=
  ∀ n, P9138410323098889926.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P7632292472094077777

`A355582(A343431(n+1))`
-/

namespace A060904.P7632292472094077777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A343431 (n + 1)).toNat

end

end A060904.P7632292472094077777

namespace A060904

/-- `A355582(A343431(n+1))` -/
def P7632292472094077777.Spec : Prop :=
  ∀ n, P7632292472094077777.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P17498367280257980236

`A343431(A392597(n+1))`
-/

namespace A060904.P17498367280257980236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (A392597 (n + 1)).toNat

end

end A060904.P17498367280257980236

namespace A060904

/-- `A343431(A392597(n+1))` -/
def P17498367280257980236.Spec : Prop :=
  ∀ n, P17498367280257980236.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P3355981303953385597

`A000265((n+1)/A132740(n+1))`
-/

namespace A060904.P3355981303953385597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A132740 (n + 1) : ℚ))).toNat

end

end A060904.P3355981303953385597

namespace A060904

/-- `A000265((n+1)/A132740(n+1))` -/
def P3355981303953385597.Spec : Prop :=
  ∀ n, P3355981303953385597.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P3428652359384768717

`A132741((n+1)/A006519(n+1))`
-/

namespace A060904.P3428652359384768717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A060904.P3428652359384768717

namespace A060904

/-- `A132741((n+1)/A006519(n+1))` -/
def P3428652359384768717.Spec : Prop :=
  ∀ n, P3428652359384768717.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P1138163725051695780

`A132741((n+1)/A065331(n+1))`
-/

namespace A060904.P1138163725051695780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A060904.P1138163725051695780

namespace A060904

/-- `A132741((n+1)/A065331(n+1))` -/
def P1138163725051695780.Spec : Prop :=
  ∀ n, P1138163725051695780.a n = A060904 (n + 1)

end A060904

/-! ## A060904.P16633022914166266889

`A065330((n+1)/A132740(n+1))`
-/

namespace A060904.P16633022914166266889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A132740 (n + 1) : ℚ))).toNat

end

end A060904.P16633022914166266889

namespace A060904

/-- `A065330((n+1)/A132740(n+1))` -/
def P16633022914166266889.Spec : Prop :=
  ∀ n, P16633022914166266889.a n = A060904 (n + 1)

end A060904

/-!
# A060905: Expansion of e.g.f. exp(x*exp(x) + 1/2*x^2*exp(x)^2).

The programs for A060905, there is no canonical definition to state claims against.
-/

/-! ## A060905.P15044640040331262491

`A245501(∑[n+3]+n+3)`
-/

namespace A060905.P15044640040331262491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A060905.P15044640040331262491

/-! ## A060905.P88224310244782853

`gcd(A000038(n), A245501(A046691(n+2)))`
-/

namespace A060905.P88224310244782853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245501 (A046691 (n + 2)).toNat)

end

end A060905.P88224310244782853

/-! ## A060905.P14271297886536033430

`A245501(A046691(n+2))+A000038(2*(n+1))`
-/

namespace A060905.P14271297886536033430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A046691 (n + 2)).toNat + A000038 (2 * (n + 1))

end

end A060905.P14271297886536033430

/-! ## A060905.P5715041291129859078

`A245501(A046691(n+2))+A004016(3*n+2)`
-/

namespace A060905.P5715041291129859078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A046691 (n + 2)).toNat + A004016 (3 * n + 2)

end

end A060905.P5715041291129859078

/-! ## A060905.P8242269123613227180

`A245501(A046691(n+2))+A027656(A276967(n+1))`
-/

namespace A060905.P8242269123613227180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A046691 (n + 2)).toNat + A027656 (A276967 (n + 1)).toNat

end

end A060905.P8242269123613227180

/-!
# A060906: E.g.f.: exp(x*exp(x) + 1/3*x^3*exp(x)^3).

The programs for A060906, there is no canonical definition to state claims against.
-/

/-! ## A060906.P2373352893243100880

`A245501(A052905(n+2))`
-/

namespace A060906.P2373352893243100880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A052905 (n + 2)).toNat

end

end A060906.P2373352893243100880

/-! ## A060906.P12907217018030345577

`A245501(eq[3, A212551(n)])`
-/

namespace A060906.P12907217018030345577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060906.P12907217018030345577

/-! ## A060906.P4690440472447965853

`A245501(eq[4, A025581(n)])`
-/

namespace A060906.P4690440472447965853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060906.P4690440472447965853

/-! ## A060906.P9244839719648400872

`A245501(eq[5, A193739(n)])`
-/

namespace A060906.P9244839719648400872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060906.P9244839719648400872

/-! ## A060906.P8657886146917196912

`A245501(eq[5, A004736(n+1)])`
-/

namespace A060906.P8657886146917196912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060906.P8657886146917196912

/-! ## A060906.P1107861602866728516

`A245501(A005843(n)+A055999(n)+10)`
-/

namespace A060906.P1107861602866728516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A005843 n + (A055999 n + 10)).toNat

end

end A060906.P1107861602866728516

/-!
# A060907: E.g.f.: exp(x*exp(x) + 1/2*x^2*exp(x)^2 + 1/4*x^4*exp(x)^4).

The programs for A060907, there is no canonical definition to state claims against.
-/

/-! ## A060907.P2367211848954692006

`A245501(A055999(n+3))`
-/

namespace A060907.P2367211848954692006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A055999 (n + 3)).toNat

end

end A060907.P2367211848954692006

/-! ## A060907.P14729414669059645544

`A245501(eq[4, A212551(n)])`
-/

namespace A060907.P14729414669059645544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060907.P14729414669059645544

/-! ## A060907.P6911166771295022260

`A245501(A052905(n+3)-1)`
-/

namespace A060907.P6911166771295022260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A052905 (n + 3) - 1).toNat

end

end A060907.P6911166771295022260

/-! ## A060907.P10755202035914770545

`A245501(A000217(n+6)-6)`
-/

namespace A060907.P10755202035914770545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A000217 (n + 6) - 6).toNat

end

end A060907.P10755202035914770545

/-! ## A060907.P5624491373880534274

`A245501(eq[6, A004736(n+1)])`
-/

namespace A060907.P5624491373880534274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060907.P5624491373880534274

/-! ## A060907.P4175442523421446650

`A245501(Δ[Δ[A006504(n+1)]]-1)`
-/

namespace A060907.P4175442523421446650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (f1 (n + 1) - f1 n - 1).toNat

end

end A060907.P4175442523421446650

/-!
# A060908: E.g.f.: exp(x*exp(x*exp(x)) + 1/2*x^2*exp(x*exp(x))^2).

The programs for A060908, there is no canonical definition to state claims against.
-/

/-! ## A060908.P8258170147996734004

`A049533(A075729(n)+A049502(n))`
-/

namespace A060908.P8258170147996734004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (A075729 n + A049502 n).toNat

end

end A060908.P8258170147996734004

/-! ## A060908.P15078346396488963338

`A192946(n)+A175427(A000108(n))`
-/

namespace A060908.P15078346396488963338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192946 n + A175427 (A000108 n).toNat

end

end A060908.P15078346396488963338

/-!
# A060909: E.g.f.: exp(x*exp(x*exp(x)) + 1/3*x^3*exp(x*exp(x))^3).

The programs for A060909, there is no canonical definition to state claims against.
-/

/-! ## A060909.P14147139781771160732

`A284530(or(1, A000108(n)))`
-/

namespace A060909.P14147139781771160732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284530 (Int.lor 1 (A000108 n)).toNat

end

end A060909.P14147139781771160732

/-! ## A060909.P3228697360608477122

`A284530(or(1, abs(A168491(n))))`
-/

namespace A060909.P3228697360608477122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284530 (Int.lor 1 |A168491 n|).toNat

end

end A060909.P3228697360608477122

/-!
# A060910: E.g.f.: exp(x*exp(x*exp(x)) + 1/2*x^2*exp(x*exp(x))^2 + 1/4*x^4*exp(x*exp(x))^4).

The programs for A060910, there is no canonical definition to state claims against.
-/

/-! ## A060910.P11917269691152966440

`A004277(A120732(n))-ceil(∑[3^(n-2)])`
-/

namespace A060910.P11917269691152966440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A120732 n).toNat - ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A060910.P11917269691152966440

/-! ## A060910.P5697410698358714455

`A007064(A019446((n+1)*a(n-1)-1))` with `a(0)=1`
-/

namespace A060910.P5697410698358714455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007064 (A019446 ((n + 1 : ℤ) * a (n - 1) - 1).toNat).toNat

end

end A060910.P5697410698358714455

/-!
# A060911: E.g.f.: exp(x*exp(x*exp(x*exp(x))) + 1/2*x^2*exp(x*exp(x*exp(x)))^2).

The programs for A060911, there is no canonical definition to state claims against.
-/

/-! ## A060911.P16242148714673669772

`A000556(n)-A103221(A137971(n))`
-/

namespace A060911.P16242148714673669772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n - A103221 (A137971 n).toNat

end

end A060911.P16242148714673669772

/-!
# A060912: E.g.f.: exp(x*exp(x*exp(x*exp(x*exp(x)))) + 1/2*x^2*exp(x*exp(x*exp(x*exp(x))))^2).

The programs for A060912, there is no canonical definition to state claims against.
-/

/-! ## A060912.P3970977715613161816

`A209319(n)+A001489(A052785(n))`
-/

namespace A060912.P3970977715613161816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209319 n + A001489 (A052785 n).toNat

end

end A060912.P3970977715613161816

/-!
# A060913: E.g.f.: exp(x*exp(x*exp(x*exp(x))) + 1/3*x^3*exp(x*exp(x*exp(x)))^3).

The programs for A060913, there is no canonical definition to state claims against.
-/

/-! ## A060913.P2336324615646610427

`A250246(A116956(n))`
-/

namespace A060913.P2336324615646610427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A116956 n).toNat

end

end A060913.P2336324615646610427

/-! ## A060913.P1709128932106288667

`A039144(A251598(n))+1`
-/

namespace A060913.P1709128932106288667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (A251598 n).toNat + 1

end

end A060913.P1709128932106288667

/-!
# A060916: Similar to A060400, but more than one digit may be taken (in order) from each prime.

The programs for A060916, there is no canonical definition to state claims against.
-/

/-! ## A060916.P11802943204215479983

`A060915(n+9)`
-/

namespace A060916.P11802943204215479983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (n + 9)

end

end A060916.P11802943204215479983

/-! ## A060916.P8004339113781818540

`p?[A060915(A020723(n))]`
-/

namespace A060916.P8004339113781818540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (A020723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060916.P8004339113781818540

/-! ## A060916.P12513172641087772977

`A060915(A020723(n))-2%A033999(n)`
-/

namespace A060916.P12513172641087772977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (A020723 n).toNat - Int.tmod 2 (A033999 n)

end

end A060916.P12513172641087772977

/-! ## A060916.P8258123139264680996

`A060915(A020723(n))*A174447(C(2, n))`
-/

namespace A060916.P8258123139264680996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (A020723 n).toNat * A174447 (Nat.choose 2 n)

end

end A060916.P8258123139264680996

/-! ## A060916.P14576231802584694692

`A060915(A020723(n))*A174449(C(2, n))`
-/

namespace A060916.P14576231802584694692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (A020723 n).toNat * A174449 (Nat.choose 2 n)

end

end A060916.P14576231802584694692

/-! ## A060916.P9850212197453095202

`A060915(A020723(n))/A007318(C(2, n))`
-/

namespace A060916.P9850212197453095202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060915 (A020723 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A060916.P9850212197453095202

/-! ## A060916.P14795770788969061911

`A060915(A020723(n))/A008288(C(2, n))`
-/

namespace A060916.P14795770788969061911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060915 (A020723 n).toNat : ℚ) / (A008288 (Nat.choose 2 n) : ℚ)

end

end A060916.P14795770788969061911

/-! ## A060916.P7511594350130370361

`A060915(A020723(n))*A194848(C(2, n)²)`
-/

namespace A060916.P7511594350130370361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060915 (A020723 n).toNat * A194848 (Nat.choose 2 n ^ 2)

end

end A060916.P7511594350130370361

/-! ## A060916.P12962426711352750834

`A060915(A020723(n))^A007318(C(n, 2))`
-/

namespace A060916.P12962426711352750834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060915 (A020723 n).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A060916.P12962426711352750834

/-! ## A060916.P11619211848942371869

`A007318(∑[n])*A060915(A020723(n))`
-/

namespace A060916.P11619211848942371869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A060915 (A020723 n).toNat

end

end A060916.P11619211848942371869

/-!
# A060917: Expansion of e.g.f.: exp((-1)^k/k*LambertW(-x)^k)/(k-1)!, k=3.

The programs for A060917, there is no canonical definition to state claims against.
-/

/-! ## A060917.P8783564994657454161

`A243098(A167614(n+2))/2`
-/

namespace A060917.P8783564994657454161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243098 (A167614 (n + 2)).toNat : ℚ) / 2

end

end A060917.P8783564994657454161

/-!
# A060919: Number of corners in a 4-sided fractal.

The programs for A060919, the canonical program `A060919.P5710835002215937669` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060919 has offset 1).

The definition of A060919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060919.P5710835002215937669

`4*(a(n-1)-1)-2^(n+1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060919

/-- `4*(a(n-1)-1)-2^(n+1)` -/
def P5710835002215937669.Spec : Prop :=
  ∀ n, P5710835002215937669.a n = A060919 (n + 1)

theorem P5710835002215937669.correct : P5710835002215937669.Spec := by
  intro n
  simp only [A060919, Nat.add_sub_cancel]

end A060919

/-! ## A060919.P7052190204261958881

`4*A007581(n)`
-/

namespace A060919.P7052190204261958881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007581 n

end

end A060919.P7052190204261958881

namespace A060919

/-- `4*A007581(n)` -/
def P7052190204261958881.Spec : Prop :=
  ∀ n, P7052190204261958881.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P3034030241876579188

`A028400(n)-A002450(n)`
-/

namespace A060919.P3034030241876579188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028400 n - A002450 n

end

end A060919.P3034030241876579188

namespace A060919

/-- `A028400(n)-A002450(n)` -/
def P3034030241876579188.Spec : Prop :=
  ∀ n, P3034030241876579188.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P5744191337999306997

`(2^(n+1)+2)*(2^(n+1)+4)/6`
-/

namespace A060919.P5744191337999306997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) + 2) * (2 ^ (n + 1) + 4) : ℚ) / 6

end

end A060919.P5744191337999306997

namespace A060919

/-- `(2^(n+1)+2)*(2^(n+1)+4)/6` -/
def P5744191337999306997.Spec : Prop :=
  ∀ n, P5744191337999306997.a n = (A060919 (n + 1) : ℚ)

theorem P5744191337999306997.correct : P5744191337999306997.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A060919, Nat.add_sub_cancel, A060919.P5744191337999306997.a, A060919.P5710835002215937669.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A060919, Nat.add_sub_cancel, A060919.P5744191337999306997.a, A060919.P5710835002215937669.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060919

/-! ## A060919.P17033666724369730689

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=4, a(1)=8, a(2)=20`
-/

namespace A060919.P17033666724369730689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 20] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A060919.P17033666724369730689

namespace A060919

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P17033666724369730689.Spec : Prop :=
  ∀ n, P17033666724369730689.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P11070248548836279542

`∑[4*a(n-1)-2^n]` with `a(0)=4, a(1)=4`
-/

namespace A060919.P11070248548836279542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060919.P11070248548836279542

namespace A060919

/-- `∑[4*a(n-1)-2^n]` -/
def P11070248548836279542.Spec : Prop :=
  ∀ n, P11070248548836279542.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P12400920959306920745

`∑[a(n-1)+a(n-1)+4^(n-1)]` with `a(0)=4, a(1)=4`
-/

namespace A060919.P12400920959306920745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060919.P12400920959306920745

namespace A060919

/-- `∑[a(n-1)+a(n-1)+4^(n-1)]` -/
def P12400920959306920745.Spec : Prop :=
  ∀ n, P12400920959306920745.a n = (A060919 (n + 1) : ℚ)

end A060919

/-! ## A060919.P17767208927432695184

`2*(A079319(n)+1)`
-/

namespace A060919.P17767208927432695184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A079319 n + 1)

end

end A060919.P17767208927432695184

namespace A060919

/-- `2*(A079319(n)+1)` -/
def P17767208927432695184.Spec : Prop :=
  ∀ n, P17767208927432695184.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P7972952809493711314

`2*A274232(n+1)`
-/

namespace A060919.P7972952809493711314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274232 (n + 1)

end

end A060919.P7972952809493711314

namespace A060919

/-- `2*A274232(n+1)` -/
def P7972952809493711314.Spec : Prop :=
  ∀ n, P7972952809493711314.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P5548929487772712788

`4*(A076024(n)+1)`
-/

namespace A060919.P5548929487772712788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A076024 n + 1)

end

end A060919.P5548929487772712788

namespace A060919

/-- `4*(A076024(n)+1)` -/
def P5548929487772712788.Spec : Prop :=
  ∀ n, P5548929487772712788.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P13913497835682292358

`4*A124303(n+1)`
-/

namespace A060919.P13913497835682292358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A124303 (n + 1)

end

end A060919.P13913497835682292358

namespace A060919

/-- `4*A124303(n+1)` -/
def P13913497835682292358.Spec : Prop :=
  ∀ n, P13913497835682292358.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P11888801266161805957

`2*A352737(2*(n+1))`
-/

namespace A060919.P11888801266161805957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352737 (2 * (n + 1))

end

end A060919.P11888801266161805957

namespace A060919

/-- `2*A352737(2*(n+1))` -/
def P11888801266161805957.Spec : Prop :=
  ∀ n, P11888801266161805957.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P10238760684502081742

`4*A056505(2*n+1)`
-/

namespace A060919.P10238760684502081742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A056505 (2 * n + 1)

end

end A060919.P10238760684502081742

namespace A060919

/-- `4*A056505(2*n+1)` -/
def P10238760684502081742.Spec : Prop :=
  ∀ n, P10238760684502081742.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P10641137210819381307

`4/3*A028401(n+2)`
-/

namespace A060919.P10641137210819381307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A028401 (n + 2) : ℚ)

end

end A060919.P10641137210819381307

namespace A060919

/-- `4/3*A028401(n+2)` -/
def P10641137210819381307.Spec : Prop :=
  ∀ n, P10641137210819381307.a n = (A060919 (n + 1) : ℚ)

end A060919

/-! ## A060919.P10836505978890066602

`A028403(n)+a(n-1)` with `a(0)=4`
-/

namespace A060919.P10836505978890066602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A028403 n + a (n - 1)

end

end A060919.P10836505978890066602

namespace A060919

/-- `A028403(n)+a(n-1)` -/
def P10836505978890066602.Spec : Prop :=
  ∀ n, P10836505978890066602.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P2404453442018926877

`A039301(n+1)+2^(n+1)`
-/

namespace A060919.P2404453442018926877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A060919.P2404453442018926877

namespace A060919

/-- `A039301(n+1)+2^(n+1)` -/
def P2404453442018926877.Spec : Prop :=
  ∀ n, P2404453442018926877.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P3798155163472479179

`A048578(n)+A007583(n)`
-/

namespace A060919.P3798155163472479179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n + A007583 n

end

end A060919.P3798155163472479179

namespace A060919

/-- `A048578(n)+A007583(n)` -/
def P3798155163472479179.Spec : Prop :=
  ∀ n, P3798155163472479179.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P14707207099940205418

`A321358(n)+A126646(n)`
-/

namespace A060919.P14707207099940205418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321358 n + A126646 n

end

end A060919.P14707207099940205418

namespace A060919

/-- `A321358(n)+A126646(n)` -/
def P14707207099940205418.Spec : Prop :=
  ∀ n, P14707207099940205418.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P3205780939774758974

`A049332(n)*A052953(n)`
-/

namespace A060919.P3205780939774758974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 n * A052953 n

end

end A060919.P3205780939774758974

namespace A060919

/-- `A049332(n)*A052953(n)` -/
def P3205780939774758974.Spec : Prop :=
  ∀ n, P3205780939774758974.a n = A060919 (n + 1)

end A060919

/-! ## A060919.P4303077873467368886

`A007581(n+1)+A000051(n)`
-/

namespace A060919.P4303077873467368886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1) + A000051 n

end

end A060919.P4303077873467368886

namespace A060919

/-- `A007581(n+1)+A000051(n)` -/
def P4303077873467368886.Spec : Prop :=
  ∀ n, P4303077873467368886.a n = A060919 (n + 1)

end A060919

/-!
# A060920: Bisection of Fibonacci triangle A037027: even-indexed members of column sequences of A037027 (not counting leading zeros).

The programs for A060920, there is no canonical definition to state claims against.
-/

/-! ## A060920.P14875864634409715620

`A128100(A061885(n))`
-/

namespace A060920.P14875864634409715620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128100 (A061885 n).toNat

end

end A060920.P14875864634409715620

/-! ## A060920.P16385149813482151846

`A037027(A128116(n+2)+n)`
-/

namespace A060920.P16385149813482151846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A128116 (n + 2) + (n : ℤ)).toNat

end

end A060920.P16385149813482151846

/-! ## A060920.P10670582629168893782

`A181974(A185868(n+1)-1)`
-/

namespace A060920.P10670582629168893782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 (A185868 (n + 1) - 1).toNat

end

end A060920.P10670582629168893782

/-! ## A060920.P2171786025178848811

`A181974(A063656(n)+A061885(n))`
-/

namespace A060920.P2171786025178848811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 (A063656 n + A061885 n).toNat

end

end A060920.P2171786025178848811

/-! ## A060920.P4764594278094409094

`A155161(A128116(n+1)+1+n)`
-/

namespace A060920.P4764594278094409094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A128116 (n + 1) + 1 + (n : ℤ)).toNat

end

end A060920.P4764594278094409094

/-! ## A060920.P182211186560315222

`A181974(eq[0, A155998(n)])`
-/

namespace A060920.P182211186560315222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060920.P182211186560315222

/-! ## A060920.P15681624587261229067

`2*A060921(n)-A200073(n)`
-/

namespace A060920.P15681624587261229067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060921 n - A200073 n

end

end A060920.P15681624587261229067

/-!
# A060921: Bisection of Fibonacci triangle A037027: odd-indexed members of column sequences of A037027 (not counting leading zeros).

The programs for A060921, there is no canonical definition to state claims against.
-/

/-! ## A060921.P17690215974800317801

`abs(A123027(A061579(n)))`
-/

namespace A060921.P17690215974800317801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123027 (A061579 n).toNat|

end

end A060921.P17690215974800317801

/-! ## A060921.P220710973751201677

`gcd(A000038(n), A123027(A061579(n)))`
-/

namespace A060921.P220710973751201677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123027 (A061579 n).toNat)

end

end A060921.P220710973751201677

/-! ## A060921.P11218890886724725327

`lcm(A020985(n), A123027(A061579(n)))`
-/

namespace A060921.P11218890886724725327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A123027 (A061579 n).toNat)

end

end A060921.P11218890886724725327

/-! ## A060921.P13002934786105782215

`A128100(A064801(n+1))`
-/

namespace A060921.P13002934786105782215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128100 (A064801 (n + 1)).toNat

end

end A060921.P13002934786105782215

/-! ## A060921.P6686168903495338241

`A037027(A128116(n+1)+n)`
-/

namespace A060921.P6686168903495338241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A128116 (n + 1) + (n : ℤ)).toNat

end

end A060921.P6686168903495338241

/-! ## A060921.P15586005422442133729

`A181974(A061579(n)+A016777(n))`
-/

namespace A060921.P15586005422442133729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 (A061579 n + A016777 n).toNat

end

end A060921.P15586005422442133729

/-! ## A060921.P245012117178620476

`∑{d}[A123027(A061579(n)), A000010(#)]`
-/

namespace A060921.P245012117178620476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123027 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A060921.P245012117178620476

/-!
# A060923: Bisection of Lucas triangle A060922: even-indexed members of column sequences of A060922 (not counting leading zeros).

The programs for A060923, there is no canonical definition to state claims against.
-/

/-! ## A060923.P289844017400990554

`A060922(A128116(n+2)+n)`
-/

namespace A060923.P289844017400990554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A128116 (n + 2) + (n : ℤ)).toNat

end

end A060923.P289844017400990554

/-!
# A060924: Bisection of Lucas triangle A060922: odd-indexed members of column sequences of A060922 (not counting leading zeros).

The programs for A060924, there is no canonical definition to state claims against.
-/

/-! ## A060924.P6633751233557177250

`A060922(A128116(n+1)+n)`
-/

namespace A060924.P6633751233557177250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A128116 (n + 1) + (n : ℤ)).toNat

end

end A060924.P6633751233557177250

/-!
# A060925: a(n) = 2*a(n-1) + 3*a(n-2), a(0) = 1, a(1) = 4.

The programs for A060925, the canonical program `A060925.P14851105397600140994` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060925 has offset 0).

The definition of A060925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)` (program `A060925.P14851105397600140994`, by `A060925.P14851105397600140994.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060925.P14851105397600140994

`2*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060925

/-- `2*a(n-1)+3*a(n-2)` -/
def P14851105397600140994.Spec : Prop :=
  ∀ n, (P14851105397600140994.a n : ℤ) = A060925 n

theorem P14851105397600140994.correct : P14851105397600140994.Spec := by
  intro n
  simp only [A060925]

end A060925

/-! ## A060925.P2504531536300313392

`(5*3^n-(-1)^n)/4`
-/

namespace A060925.P2504531536300313392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n : ℤ) - (-1) ^ n : ℚ) / 4

end

end A060925.P2504531536300313392

namespace A060925

/-- `(5*3^n-(-1)^n)/4` -/
def P2504531536300313392.Spec : Prop :=
  ∀ n, P2504531536300313392.a n = (A060925 n : ℚ)

theorem P2504531536300313392.correct : P2504531536300313392.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A060925, Nat.add_sub_cancel, A060925.P2504531536300313392.a, A060925.P14851105397600140994.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A060925, Nat.add_sub_cancel, A060925.P2504531536300313392.a, A060925.P14851105397600140994.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A060925

/-! ## A060925.P17993986759855686430

`ogf((1+2x)/(1-2x-3x^2))`
-/

namespace A060925.P17993986759855686430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, -3] n

end

end A060925.P17993986759855686430

namespace A060925

/-- `ogf((1+2x)/(1-2x-3x^2))` -/
def P17993986759855686430.Spec : Prop :=
  ∀ n, P17993986759855686430.a n = A060925 n

end A060925

/-! ## A060925.P14896449321500268430

`abs(xor(1, -(3*a(n-1))))` with `a(0)=1`
-/

namespace A060925.P14896449321500268430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor 1 (-(3 * a (n - 1)))|

end

end A060925.P14896449321500268430

namespace A060925

/-- `abs(xor(1, -(3*a(n-1))))` -/
def P14896449321500268430.Spec : Prop :=
  ∀ n, P14896449321500268430.a n = A060925 n

end A060925

/-! ## A060925.P7772167077044871706

`-xor(1, -(3*a(n-1)))` with `a(0)=1`
-/

namespace A060925.P7772167077044871706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor 1 (-(3 * a (n - 1)))

end

end A060925.P7772167077044871706

namespace A060925

/-- `-xor(1, -(3*a(n-1)))` -/
def P7772167077044871706.Spec : Prop :=
  ∀ n, P7772167077044871706.a n = A060925 n

end A060925

/-! ## A060925.P10742897126587734540

`-xor(1, -lcm(3, a(n-1)))` with `a(0)=1`
-/

namespace A060925.P10742897126587734540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor 1 (-(Int.lcm 3 (a (n - 1)) : ℤ))

end

end A060925.P10742897126587734540

namespace A060925

/-- `-xor(1, -lcm(3, a(n-1)))` -/
def P10742897126587734540.Spec : Prop :=
  ∀ n, P10742897126587734540.a n = A060925 n

end A060925

/-! ## A060925.P7611050278620595827

`3*a(n-1)-(-1)^n` with `a(0)=1`
-/

namespace A060925.P7611050278620595827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (-1) ^ n

end

end A060925.P7611050278620595827

namespace A060925

/-- `3*a(n-1)-(-1)^n` -/
def P7611050278620595827.Spec : Prop :=
  ∀ n, P7611050278620595827.a n = A060925 n

end A060925

/-! ## A060925.P8321489257928120246

`Δ[3*a(n-1)-n%2]` with `a(0)=1`
-/

namespace A060925.P8321489257928120246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060925.P8321489257928120246

namespace A060925

/-- `Δ[3*a(n-1)-n%2]` -/
def P8321489257928120246.Spec : Prop :=
  ∀ n, P8321489257928120246.a n = A060925 n

end A060925

/-! ## A060925.P4083174573432777323

`xor(1, 3*a(n-1)-1)+1` with `a(0)=1`
-/

namespace A060925.P4083174573432777323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (3 * a (n - 1) - 1) + 1

end

end A060925.P4083174573432777323

namespace A060925

/-- `xor(1, 3*a(n-1)-1)+1` -/
def P4083174573432777323.Spec : Prop :=
  ∀ n, P4083174573432777323.a n = A060925 n

end A060925

/-! ## A060925.P17828533064679922917

`a(n-1)+a(n-1)+a(n-1)-(-1)^n` with `a(0)=1`
-/

namespace A060925.P17828533064679922917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (-1) ^ n))

end

end A060925.P17828533064679922917

namespace A060925

/-- `a(n-1)+a(n-1)+a(n-1)-(-1)^n` -/
def P17828533064679922917.Spec : Prop :=
  ∀ n, P17828533064679922917.a n = A060925 n

end A060925

/-! ## A060925.P2446943776532652831

`a(n-1)-((-1)^n-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A060925.P2446943776532652831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((-1) ^ n - a (n - 1) - a (n - 1))

end

end A060925.P2446943776532652831

namespace A060925

/-- `a(n-1)-((-1)^n-a(n-1)-a(n-1))` -/
def P2446943776532652831.Spec : Prop :=
  ∀ n, P2446943776532652831.a n = A060925 n

end A060925

/-! ## A060925.P7043408382582546610

`3*(a(n-1)-(a(n-1)/3-a(n-2)))` with `a(0)=1, a(1)=4`
-/

namespace A060925.P7043408382582546610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - (a (n - 1) / 3 - a (n - 2)))

end

end A060925.P7043408382582546610

namespace A060925

/-- `3*(a(n-1)-(a(n-1)/3-a(n-2)))` -/
def P7043408382582546610.Spec : Prop :=
  ∀ n, P7043408382582546610.a n = (A060925 n : ℚ)

end A060925

/-! ## A060925.P15021769444072258006

`a(n-1)-(a(n-2)-4*a(n-2)-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A060925.P15021769444072258006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (a (n - 2) - 4 * a (n - 2) - a (n - 1))

end

end A060925.P15021769444072258006

namespace A060925

/-- `a(n-1)-(a(n-2)-4*a(n-2)-a(n-1))` -/
def P15021769444072258006.Spec : Prop :=
  ∀ n, P15021769444072258006.a n = A060925 n

end A060925

/-! ## A060925.P17043874221081507439

`Δ[A153773(n+1)]`
-/

namespace A060925.P17043874221081507439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060925.P17043874221081507439

namespace A060925

/-- `Δ[A153773(n+1)]` -/
def P17043874221081507439.Spec : Prop :=
  ∀ n, P17043874221081507439.a n = A060925 n

end A060925

/-! ## A060925.P18096649553975188129

`∑[or(1, A060816(n))]`
-/

namespace A060925.P18096649553975188129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060816 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060925.P18096649553975188129

namespace A060925

/-- `∑[or(1, A060816(n))]` -/
def P18096649553975188129.Spec : Prop :=
  ∀ n, P18096649553975188129.a n = A060925 n

end A060925

/-! ## A060925.P8731418159874588654

`A015518(n)+3^n`
-/

namespace A060925.P8731418159874588654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + (3 ^ n : ℤ)

end

end A060925.P8731418159874588654

namespace A060925

/-- `A015518(n)+3^n` -/
def P8731418159874588654.Spec : Prop :=
  ∀ n, P8731418159874588654.a n = A060925 n

end A060925

/-! ## A060925.P5006919514857386936

`abs(2-∑[A084244(n)])`
-/

namespace A060925.P5006919514857386936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060925.P5006919514857386936

namespace A060925

/-- `abs(2-∑[A084244(n)])` -/
def P5006919514857386936.Spec : Prop :=
  ∀ n, P5006919514857386936.a n = A060925 n

end A060925

/-! ## A060925.P13571866772728131387

`abs(5*A014983(n)-1)`
-/

namespace A060925.P13571866772728131387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * A014983 n - 1|

end

end A060925.P13571866772728131387

namespace A060925

/-- `abs(5*A014983(n)-1)` -/
def P13571866772728131387.Spec : Prop :=
  ∀ n, P13571866772728131387.a n = A060925 n

end A060925

/-! ## A060925.P10849273742550099632

`2*A104522(n)-(n+1)`
-/

namespace A060925.P10849273742550099632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104522 n - (n + 1 : ℤ)

end

end A060925.P10849273742550099632

namespace A060925

/-- `2*A104522(n)-(n+1)` -/
def P10849273742550099632.Spec : Prop :=
  ∀ n, P10849273742550099632.a n = A060925 n

end A060925

/-! ## A060925.P10280991838435015261

`A081250(n)+A000035(n)`
-/

namespace A060925.P10280991838435015261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081250 n + A000035 n

end

end A060925.P10280991838435015261

namespace A060925

/-- `A081250(n)+A000035(n)` -/
def P10280991838435015261.Spec : Prop :=
  ∀ n, P10280991838435015261.a n = A060925 n

end A060925

/-!
# A060926: Row sums of triangle A060923 (even part of bisection of Lucas triangle).

The programs for A060926, the canonical program `A060926.P3658268357209895681` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060926 has offset 0).

The definition of A060926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060926.P3919231064665548027

`ogf((1+4x^2)/(1-5x-4x^3))`
-/

namespace A060926.P3919231064665548027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 4] [1, -5, 0, -4] n

end

end A060926.P3919231064665548027

namespace A060926

/-- `ogf((1+4x^2)/(1-5x-4x^3))` -/
def P3919231064665548027.Spec : Prop :=
  ∀ n, P3919231064665548027.a n = A060926 n

end A060926

/-! ## A060926.P3658268357209895681

`A078006(A005843(n+1))-A077970(2*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060926

/-- `A078006(A005843(n+1))-A077970(2*n)` -/
def P3658268357209895681.Spec : Prop :=
  ∀ n, P3658268357209895681.a n = A060926 n

theorem P3658268357209895681.correct : P3658268357209895681.Spec := by
  intro n
  simp only [A060926]

end A060926

/-! ## A060926.P2649851696208944382

`A239812(2*n+1)-(A078006(2*n+1)+A078006(2*n))`
-/

namespace A060926.P2649851696208944382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (2 * n + 1) - (A078006 (2 * n + 1) + A078006 (2 * n))

end

end A060926.P2649851696208944382

namespace A060926

/-- `A239812(2*n+1)-(A078006(2*n+1)+A078006(2*n))` -/
def P2649851696208944382.Spec : Prop :=
  ∀ n, P2649851696208944382.a n = A060926 n

end A060926

/-! ## A060926.P3113391818663757454

`record[2*A078040(n)-A077970(n)]`
-/

namespace A060926.P3113391818663757454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078040 n - A077970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060926.P3113391818663757454

namespace A060926

/-- `record[2*A078040(n)-A077970(n)]` -/
def P3113391818663757454.Spec : Prop :=
  ∀ n, P3113391818663757454.a n = A060926 n

end A060926

/-! ## A060926.P2123469075989720320

`record[A077970(n+2)+Δ[A077970(n)]]`
-/

namespace A060926.P2123469075989720320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 (n + 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060926.P2123469075989720320

namespace A060926

/-- `record[A077970(n+2)+Δ[A077970(n)]]` -/
def P2123469075989720320.Spec : Prop :=
  ∀ n, P2123469075989720320.a n = A060926 n

end A060926

/-! ## A060926.P7971720110064921143

`2*A078040(2*n)-A077946(2*n)`
-/

namespace A060926.P7971720110064921143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078040 (2 * n) - A077946 (2 * n)

end

end A060926.P7971720110064921143

namespace A060926

/-- `2*A078040(2*n)-A077946(2*n)` -/
def P7971720110064921143.Spec : Prop :=
  ∀ n, P7971720110064921143.a n = A060926 n

end A060926

/-! ## A060926.P17247531326815251998

`2*A078040(2*n)-A077970(2*n)`
-/

namespace A060926.P17247531326815251998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078040 (2 * n) - A077970 (2 * n)

end

end A060926.P17247531326815251998

namespace A060926

/-- `2*A078040(2*n)-A077970(2*n)` -/
def P17247531326815251998.Spec : Prop :=
  ∀ n, P17247531326815251998.a n = A060926 n

end A060926

/-! ## A060926.P10260960863791591586

`A077970(2*n+1)+Δ[A077970(2*n)]`
-/

namespace A060926.P10260960863791591586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A060926.P10260960863791591586

namespace A060926

/-- `A077970(2*n+1)+Δ[A077970(2*n)]` -/
def P10260960863791591586.Spec : Prop :=
  ∀ n, P10260960863791591586.a n = A060926 n

end A060926

/-! ## A060926.P1281367848054015419

`Δ[A077946(2*n)]-A077946(2*n+1)`
-/

namespace A060926.P1281367848054015419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077946 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077946 (2 * n + 1)

end

end A060926.P1281367848054015419

namespace A060926

/-- `Δ[A077946(2*n)]-A077946(2*n+1)` -/
def P1281367848054015419.Spec : Prop :=
  ∀ n, P1281367848054015419.a n = A060926 n

end A060926

/-! ## A060926.P17834632854947501677

`A078040(2*n+1)+A077946(2*(n+1))`
-/

namespace A060926.P17834632854947501677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 (2 * n + 1) + A077946 (2 * (n + 1))

end

end A060926.P17834632854947501677

namespace A060926

/-- `A078040(2*n+1)+A077946(2*(n+1))` -/
def P17834632854947501677.Spec : Prop :=
  ∀ n, P17834632854947501677.a n = A060926 n

end A060926

/-! ## A060926.P1316345583974165541

`A078040(2*n+1)+A077970(2*(n+1))`
-/

namespace A060926.P1316345583974165541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 (2 * n + 1) + A077970 (2 * (n + 1))

end

end A060926.P1316345583974165541

namespace A060926

/-- `A078040(2*n+1)+A077970(2*(n+1))` -/
def P1316345583974165541.Spec : Prop :=
  ∀ n, P1316345583974165541.a n = A060926 n

end A060926

/-! ## A060926.P15287143731439938968

`A077970(2*n+1)+A077970(2*(n+1))-A077970(2*n)`
-/

namespace A060926.P15287143731439938968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 (2 * n + 1) + (A077970 (2 * (n + 1)) - A077970 (2 * n))

end

end A060926.P15287143731439938968

namespace A060926

/-- `A077970(2*n+1)+A077970(2*(n+1))-A077970(2*n)` -/
def P15287143731439938968.Spec : Prop :=
  ∀ n, P15287143731439938968.a n = A060926 n

end A060926

/-! ## A060926.P10521058644188996111

`A239812(2*(n+1))%(A239812(2*(n+3))%A239812(2*(n+2)))`
-/

namespace A060926.P10521058644188996111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239812 (2 * (n + 1))) (Int.tmod (A239812 (2 * (n + 3))) (A239812 (2 * (n + 2))))

end

end A060926.P10521058644188996111

namespace A060926

/-- `A239812(2*(n+1))%(A239812(2*(n+3))%A239812(2*(n+2)))` -/
def P10521058644188996111.Spec : Prop :=
  ∀ n, P10521058644188996111.a n = A060926 n

end A060926

/-!
# A060927: Row sums of triangle A060924 (odd part of bisection of Lucas triangle).

The programs for A060927, the canonical program `A060927.P1552723893086128136` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060927 has offset 0).

The definition of A060927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060927.P5461598654420029019

`ogf((-3+2x)/(-1+5x+4x^3))`
-/

namespace A060927.P5461598654420029019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -5, 0, -4] n

end

end A060927.P5461598654420029019

namespace A060927

/-- `ogf((-3+2x)/(-1+5x+4x^3))` -/
def P5461598654420029019.Spec : Prop :=
  ∀ n, P5461598654420029019.a n = A060927 n

end A060927

/-! ## A060927.P1552723893086128136

`record[A077970(n)-Δ[A077970(n)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060927

/-- `record[A077970(n)-Δ[A077970(n)]]` -/
def P1552723893086128136.Spec : Prop :=
  ∀ n, P1552723893086128136.a n = A060927 n

theorem P1552723893086128136.correct : P1552723893086128136.Spec := by
  intro n
  simp only [A060927]

end A060927

/-! ## A060927.P5488435131934301398

`record[A077970(n)-A078040(n+1)]`
-/

namespace A060927.P5488435131934301398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n - A078040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060927.P5488435131934301398

namespace A060927

/-- `record[A077970(n)-A078040(n+1)]` -/
def P5488435131934301398.Spec : Prop :=
  ∀ n, P5488435131934301398.a n = A060927 n

end A060927

/-! ## A060927.P8832900207320027543

`A239812(2*n+1)+A078006(2*n)`
-/

namespace A060927.P8832900207320027543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (2 * n + 1) + A078006 (2 * n)

end

end A060927.P8832900207320027543

namespace A060927

/-- `A239812(2*n+1)+A078006(2*n)` -/
def P8832900207320027543.Spec : Prop :=
  ∀ n, P8832900207320027543.a n = A060927 n

end A060927

/-! ## A060927.P17596007816333096066

`A077946(2*n)-A078040(2*n+1)`
-/

namespace A060927.P17596007816333096066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077946 (2 * n) - A078040 (2 * n + 1)

end

end A060927.P17596007816333096066

namespace A060927

/-- `A077946(2*n)-A078040(2*n+1)` -/
def P17596007816333096066.Spec : Prop :=
  ∀ n, P17596007816333096066.a n = A060927 n

end A060927

/-! ## A060927.P12376832451518650144

`A077970(2*n)-A078040(2*n+1)`
-/

namespace A060927.P12376832451518650144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 (2 * n) - A078040 (2 * n + 1)

end

end A060927.P12376832451518650144

namespace A060927

/-- `A077970(2*n)-A078040(2*n+1)` -/
def P12376832451518650144.Spec : Prop :=
  ∀ n, P12376832451518650144.a n = A060927 n

end A060927

/-! ## A060927.P6126944972469927790

`∑[A078006(2*(n+1))+A078006(2*n)]`
-/

namespace A060927.P6126944972469927790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 (2 * (n + 1)) + A078006 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060927.P6126944972469927790

namespace A060927

/-- `∑[A078006(2*(n+1))+A078006(2*n)]` -/
def P6126944972469927790.Spec : Prop :=
  ∀ n, P6126944972469927790.a n = A060927 n

end A060927

/-! ## A060927.P10344792257883207901

`A077946(2*n+1)+2*A077946(2*n)`
-/

namespace A060927.P10344792257883207901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077946 (2 * n + 1) + 2 * A077946 (2 * n)

end

end A060927.P10344792257883207901

namespace A060927

/-- `A077946(2*n+1)+2*A077946(2*n)` -/
def P10344792257883207901.Spec : Prop :=
  ∀ n, P10344792257883207901.a n = A060927 n

end A060927

/-! ## A060927.P13646669624930814342

`2*A077970(2*n)-A077970(2*n+1)`
-/

namespace A060927.P13646669624930814342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077970 (2 * n) - A077970 (2 * n + 1)

end

end A060927.P13646669624930814342

namespace A060927

/-- `2*A077970(2*n)-A077970(2*n+1)` -/
def P13646669624930814342.Spec : Prop :=
  ∀ n, P13646669624930814342.a n = A060927 n

end A060927

/-! ## A060927.P16918324713587257626

`A297860(2*n+1)+A297860(2*n+3)+1`
-/

namespace A060927.P16918324713587257626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297860 (2 * n + 1) + (A297860 (2 * n + 3) + 1)

end

end A060927.P16918324713587257626

namespace A060927

/-- `A297860(2*n+1)+A297860(2*n+3)+1` -/
def P16918324713587257626.Spec : Prop :=
  ∀ n, P16918324713587257626.a n = A060927 n

end A060927

/-! ## A060927.P11895747059767459720

`A239812(2*n+1)+A239812(2*n+3)%A239812(2*n+1)`
-/

namespace A060927.P11895747059767459720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (2 * n + 1) + Int.tmod (A239812 (2 * n + 3)) (A239812 (2 * n + 1))

end

end A060927.P11895747059767459720

namespace A060927

/-- `A239812(2*n+1)+A239812(2*n+3)%A239812(2*n+1)` -/
def P11895747059767459720.Spec : Prop :=
  ∀ n, P11895747059767459720.a n = A060927 n

end A060927

/-!
# A060928: Expansion of 1/(1 - 5*x - 4*x^3).

The programs for A060928, the canonical program `A060928.P717337972243704966` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060928 has offset 0).

The definition of A060928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x-4x^3))` (program `A060928.P717337972243704966`, by `A060928.P717337972243704966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060928.P717337972243704966

`ogf(1/(1-5x-4x^3))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060928

/-- `ogf(1/(1-5x-4x^3))` -/
def P717337972243704966.Spec : Prop :=
  ∀ n, P717337972243704966.a n = A060928 n

theorem P717337972243704966.correct : P717337972243704966.Spec := by
  intro n
  simp only [A060928]

end A060928

/-! ## A060928.P277606730932647765

`5*a(n-1)+4*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A060928.P277606730932647765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  5 * a (n - 1) + 4 * a (n - 3)

end

end A060928.P277606730932647765

namespace A060928

/-- `5*a(n-1)+4*a(n-3)` -/
def P277606730932647765.Spec : Prop :=
  ∀ n, (P277606730932647765.a n : ℤ) = A060928 n

end A060928

/-! ## A060928.P18308816897279687604

`record[A239812(n+1)/A040005(n)]`
-/

namespace A060928.P18308816897279687604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239812 (n + 1) : ℚ) / (A040005 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060928.P18308816897279687604

namespace A060928

/-- `record[A239812(n+1)/A040005(n)]` -/
def P18308816897279687604.Spec : Prop :=
  ∀ n, P18308816897279687604.a n = (A060928 n : ℚ)

end A060928

/-! ## A060928.P6188250171102984445

`record[gcd(A166586(n+1), A239812(n+1))]`
-/

namespace A060928.P6188250171102984445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166586 (n + 1)) (A239812 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060928.P6188250171102984445

namespace A060928

/-- `record[gcd(A166586(n+1), A239812(n+1))]` -/
def P6188250171102984445.Spec : Prop :=
  ∀ n, (P6188250171102984445.a n : ℤ) = A060928 n

end A060928

/-! ## A060928.P12318760331274811233

`(A077946(2*n+1)+A077946(2*n))/2`
-/

namespace A060928.P12318760331274811233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077946 (2 * n + 1) + A077946 (2 * n) : ℚ) / 2

end

end A060928.P12318760331274811233

namespace A060928

/-- `(A077946(2*n+1)+A077946(2*n))/2` -/
def P12318760331274811233.Spec : Prop :=
  ∀ n, P12318760331274811233.a n = (A060928 n : ℚ)

end A060928

/-! ## A060928.P1691146042315937634

`A077970(2*n)+A078006(2*n+1)/2`
-/

namespace A060928.P1691146042315937634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077970 (2 * n) : ℚ) + (A078006 (2 * n + 1) : ℚ) / 2

end

end A060928.P1691146042315937634

namespace A060928

/-- `A077970(2*n)+A078006(2*n+1)/2` -/
def P1691146042315937634.Spec : Prop :=
  ∀ n, P1691146042315937634.a n = (A060928 n : ℚ)

end A060928

/-! ## A060928.P13772199828005736155

`(A077970(2*n)-A077970(2*n+1))/2`
-/

namespace A060928.P13772199828005736155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077970 (2 * n) - A077970 (2 * n + 1) : ℚ) / 2

end

end A060928.P13772199828005736155

namespace A060928

/-- `(A077970(2*n)-A077970(2*n+1))/2` -/
def P13772199828005736155.Spec : Prop :=
  ∀ n, P13772199828005736155.a n = (A060928 n : ℚ)

end A060928

/-! ## A060928.P2441766386426137163

`A239812(A004277(n))-A000035(A004277(n))`
-/

namespace A060928.P2441766386426137163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (A004277 n).toNat - A000035 (A004277 n).toNat

end

end A060928.P2441766386426137163

namespace A060928

/-- `A239812(A004277(n))-A000035(A004277(n))` -/
def P2441766386426137163.Spec : Prop :=
  ∀ n, P2441766386426137163.a n = A060928 n

end A060928

/-! ## A060928.P318263691907380961

`abs(A078040(2*n+1)/2)`
-/

namespace A060928.P318263691907380961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A078040 (2 * n + 1) : ℚ) / 2|

end

end A060928.P318263691907380961

namespace A060928

/-- `abs(A078040(2*n+1)/2)` -/
def P318263691907380961.Spec : Prop :=
  ∀ n, P318263691907380961.a n = (A060928 n : ℚ)

end A060928

/-! ## A060928.P4812954474877236555

`record[(A078006(n+4)/4)^(n%2)]`
-/

namespace A060928.P4812954474877236555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A078006 (n + 4) : ℚ) / 4) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060928.P4812954474877236555

namespace A060928

/-- `record[(A078006(n+4)/4)^(n%2)]` -/
def P4812954474877236555.Spec : Prop :=
  ∀ n, P4812954474877236555.a n = (A060928 n : ℚ)

end A060928

/-! ## A060928.P5848931639961970620

`A078006(Δ[A005563(n)])/4`
-/

namespace A060928.P5848931639961970620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078006 (f1 (n + 1) - f1 n).toNat : ℚ) / 4

end

end A060928.P5848931639961970620

namespace A060928

/-- `A078006(Δ[A005563(n)])/4` -/
def P5848931639961970620.Spec : Prop :=
  ∀ n, P5848931639961970620.a n = (A060928 n : ℚ)

end A060928

/-! ## A060928.P15395338044457683131

`A078006(A144396(n+1))/4`
-/

namespace A060928.P15395338044457683131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078006 (A144396 (n + 1)).toNat : ℚ) / 4

end

end A060928.P15395338044457683131

namespace A060928

/-- `A078006(A144396(n+1))/4` -/
def P15395338044457683131.Spec : Prop :=
  ∀ n, P15395338044457683131.a n = (A060928 n : ℚ)

end A060928

/-! ## A060928.P13852174699218857839

`A238768(2*(n+1))/2-A239812(2*n+1)`
-/

namespace A060928.P13852174699218857839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238768 (2 * (n + 1)) : ℚ) / 2 - (A239812 (2 * n + 1) : ℚ)

end

end A060928.P13852174699218857839

namespace A060928

/-- `A238768(2*(n+1))/2-A239812(2*n+1)` -/
def P13852174699218857839.Spec : Prop :=
  ∀ n, P13852174699218857839.a n = (A060928 n : ℚ)

end A060928

/-!
# A060929: Second convolution of Lucas numbers A000032(n+1), n >= 0.

The programs for A060929, the canonical program `A060929.P2101954034627007323` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060929 has offset 0).

The definition of A060929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060929.P35943296598649055

`(n+1)*((5*n+4)*A000032(n+2)+(5*n-2)*A000032(n+1))/10`
-/

namespace A060929.P35943296598649055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((5 * n + 4 : ℤ) * A000032 (n + 2) + ((5 * n : ℤ) - 2) * A000032 (n + 1) : ℚ) / 10)

end

end A060929.P35943296598649055

namespace A060929

/-- `(n+1)*((5*n+4)*A000032(n+2)+(5*n-2)*A000032(n+1))/10` -/
def P35943296598649055.Spec : Prop :=
  ∀ n, P35943296598649055.a n = (A060929 n : ℚ)

end A060929

/-! ## A060929.P2101954034627007323

`A005408(n)*A136376(n+1)-A086926(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060929

/-- `A005408(n)*A136376(n+1)-A086926(n)` -/
def P2101954034627007323.Spec : Prop :=
  ∀ n, P2101954034627007323.a n = A060929 n

theorem P2101954034627007323.correct : P2101954034627007323.Spec := by
  intro n
  simp only [A060929]

end A060929

/-! ## A060929.P9830043946119581781

`∪[A061169(n), A061172(n)]`
-/

namespace A060929.P9830043946119581781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061172 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060929.P9830043946119581781

namespace A060929

/-- `∪[A061169(n), A061172(n)]` -/
def P9830043946119581781.Spec : Prop :=
  ∀ n, (P9830043946119581781.a n : ℤ) = A060929 n

end A060929

/-! ## A060929.P18215790926446088995

`A060922(∑[n+2]+3)`
-/

namespace A060929.P18215790926446088995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A060929.P18215790926446088995

namespace A060929

/-- `A060922(∑[n+2]+3)` -/
def P18215790926446088995.Spec : Prop :=
  ∀ n, P18215790926446088995.a n = A060929 n

end A060929

/-! ## A060929.P12713281889123591479

`A060922(A340266(n+1))%A020514(n)`
-/

namespace A060929.P12713281889123591479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060922 (A340266 (n + 1)).toNat) (A020514 n)

end

end A060929.P12713281889123591479

namespace A060929

/-- `A060922(A340266(n+1))%A020514(n)` -/
def P12713281889123591479.Spec : Prop :=
  ∀ n, P12713281889123591479.a n = A060929 n

end A060929

/-!
# A060930: Third convolution of Lucas numbers A000032(n+1), n >= 0.

The programs for A060930, there is no canonical definition to state claims against.
-/

/-! ## A060930.P13492283953365627082

`A060922(A167614(n+2))`
-/

namespace A060930.P13492283953365627082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A167614 (n + 2)).toNat

end

end A060930.P13492283953365627082

/-! ## A060930.P11014828164157913009

`A060922(A052905(n)+8)`
-/

namespace A060930.P11014828164157913009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A052905 n + 8).toNat

end

end A060930.P11014828164157913009

/-! ## A060930.P14229648825968624051

`A060922(eq[3, A002262(n)])`
-/

namespace A060930.P14229648825968624051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060930.P14229648825968624051

/-! ## A060930.P2458961594282562973

`A060922(A340266(n+2)+1)`
-/

namespace A060930.P2458961594282562973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A340266 (n + 2) + 1).toNat

end

end A060930.P2458961594282562973

/-! ## A060930.P221035160134629009

`A060922(eq[2, A002260(n+1)-2])`
-/

namespace A060930.P221035160134629009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060930.P221035160134629009

/-! ## A060930.P3675211449518553369

`A060922(eq[2, A002260(n+1)/2])`
-/

namespace A060930.P3675211449518553369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A060930.P3675211449518553369

/-! ## A060930.P5121047859715103577

`A060922(A034856(n+3)-(n-1))`
-/

namespace A060930.P5121047859715103577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A034856 (n + 3) - ((n : ℤ) - 1)).toNat

end

end A060930.P5121047859715103577

/-! ## A060930.P9890504727899547060

`A060922(A046691(n+3)-2*(n+1))`
-/

namespace A060930.P9890504727899547060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A046691 (n + 3) - (2 * (n + 1) : ℤ)).toNat

end

end A060930.P9890504727899547060

/-!
# A060931: Fourth convolution of Lucas numbers A000032(n+1), n >= 0.

The programs for A060931, there is no canonical definition to state claims against.
-/

/-! ## A060931.P2190832498371263738

`A060922(∑[n+4]+10)`
-/

namespace A060931.P2190832498371263738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A060931.P2190832498371263738

/-!
# A060932: Fifth convolution of Lucas numbers A000032(n+1), n >= 0.

The programs for A060932, there is no canonical definition to state claims against.
-/

/-! ## A060932.P11392452527556127305

`A060922(A167499(n+4))`
-/

namespace A060932.P11392452527556127305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A167499 (n + 4)).toNat

end

end A060932.P11392452527556127305

/-! ## A060932.P8270709957922645269

`A060922(eq[5, A002262(n)])`
-/

namespace A060932.P8270709957922645269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060932.P8270709957922645269

/-! ## A060932.P7020594076080384152

`A060922(eq[32, A059268(n)])`
-/

namespace A060932.P7020594076080384152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060932.P7020594076080384152

/-! ## A060932.P11082951368268250201

`A060922(A167614(n+4)+2)`
-/

namespace A060932.P11082951368268250201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A167614 (n + 4) + 2).toNat

end

end A060932.P11082951368268250201

/-! ## A060932.P2664464251086080931

`A060922(A133263(n+5)+3)`
-/

namespace A060932.P2664464251086080931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A133263 (n + 5) + 3).toNat

end

end A060932.P2664464251086080931

/-! ## A060932.P14078269987434974596

`A060922(A000124(n+5)+4)`
-/

namespace A060932.P14078269987434974596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A000124 (n + 5) + 4).toNat

end

end A060932.P14078269987434974596

/-! ## A060932.P8231915275962679467

`A060922(A000096(n+4)+6)`
-/

namespace A060932.P8231915275962679467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A000096 (n + 4) + 6).toNat

end

end A060932.P8231915275962679467

/-! ## A060932.P7732873953296509186

`A060922(A000217(n+5)+5)`
-/

namespace A060932.P7732873953296509186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A000217 (n + 5) + 5).toNat

end

end A060932.P7732873953296509186

/-! ## A060932.P13933684578179870318

`A060922(eq[6, A002260(n+1)])`
-/

namespace A060932.P13933684578179870318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060932.P13933684578179870318

/-! ## A060932.P17336886365223625379

`A060922(Δ[A023545(n+1)]+9)`
-/

namespace A060932.P17336886365223625379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (f1 (n + 1) - f1 n + 9).toNat

end

end A060932.P17336886365223625379

/-!
# A060933: Sixth convolution of Lucas numbers A000032(n+1), n >= 0.

The programs for A060933, there is no canonical definition to state claims against.
-/

/-! ## A060933.P17418413150202780138

`A060922(A056119(n)+27)`
-/

namespace A060933.P17418413150202780138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A056119 n + 27).toNat

end

end A060933.P17418413150202780138

/-! ## A060933.P11465556455136272662

`A060922(eq[6, A002262(n)])`
-/

namespace A060933.P11465556455136272662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060933.P11465556455136272662

/-! ## A060933.P14766899969885102503

`A060922(A000124(n+6)+5)`
-/

namespace A060933.P14766899969885102503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A000124 (n + 6) + 5).toNat

end

end A060933.P14766899969885102503

/-! ## A060933.P11558339253312180137

`A060922(A000096(n+5)+7)`
-/

namespace A060933.P11558339253312180137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A000096 (n + 5) + 7).toNat

end

end A060933.P11558339253312180137

/-! ## A060933.P5026514504757473321

`A060922(A000217(n+6)+6)`
-/

namespace A060933.P5026514504757473321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A000217 (n + 6) + 6).toNat

end

end A060933.P5026514504757473321

/-! ## A060933.P12807163495723577925

`A060922(eq[7, A002260(n+1)])`
-/

namespace A060933.P12807163495723577925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060933.P12807163495723577925

/-!
# A060934: Second column of Lucas bisection triangle (even part).

The programs for A060934, the canonical program `A060934.P8901462586697626051` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060934 has offset 0).

The definition of A060934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060934.P8901462586697626051

`A004799(Δ[n²])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060934

/-- `A004799(Δ[n²])` -/
def P8901462586697626051.Spec : Prop :=
  ∀ n, P8901462586697626051.a n = A060934 n

theorem P8901462586697626051.correct : P8901462586697626051.Spec := by
  intro n
  simp only [A060934]

end A060934

/-! ## A060934.P571960498517263798

`A004799(2*n+1)/(2*n+1)%2`
-/

namespace A060934.P571960498517263798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004799 (2 * n + 1) : ℚ) / (((2 * n + 1) % 2 : ℕ) : ℚ)

end

end A060934.P571960498517263798

namespace A060934

/-- `A004799(2*n+1)/(2*n+1)%2` -/
def P571960498517263798.Spec : Prop :=
  ∀ n, P571960498517263798.a n = (A060934 n : ℚ)

end A060934

/-! ## A060934.P1401491617402160096

`A097039(2*n)+A053311(2*n)`
-/

namespace A060934.P1401491617402160096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097039 (2 * n) + A053311 (2 * n)

end

end A060934.P1401491617402160096

namespace A060934

/-- `A097039(2*n)+A053311(2*n)` -/
def P1401491617402160096.Spec : Prop :=
  ∀ n, P1401491617402160096.a n = A060934 n

end A060934

/-! ## A060934.P12906794062306689846

`A023619(2*n+1)+A023607(2*n)`
-/

namespace A060934.P12906794062306689846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023619 (2 * n + 1) + A023607 (2 * n)

end

end A060934.P12906794062306689846

namespace A060934

/-- `A023619(2*n+1)+A023607(2*n)` -/
def P12906794062306689846.Spec : Prop :=
  ∀ n, P12906794062306689846.a n = A060934 n

end A060934

/-! ## A060934.P10277357800194681483

`A004799(2*n+1)+A002939(n)%2`
-/

namespace A060934.P10277357800194681483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (2 * n + 1) + Int.tmod (A002939 n) 2

end

end A060934.P10277357800194681483

namespace A060934

/-- `A004799(2*n+1)+A002939(n)%2` -/
def P10277357800194681483.Spec : Prop :=
  ∀ n, P10277357800194681483.a n = A060934 n

end A060934

/-! ## A060934.P3708115979958268846

`A025089(2*n+1)+A024469(2*n+1)`
-/

namespace A060934.P3708115979958268846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025089 (2 * n + 1) + A024469 (2 * n + 1)

end

end A060934.P3708115979958268846

namespace A060934

/-- `A025089(2*n+1)+A024469(2*n+1)` -/
def P3708115979958268846.Spec : Prop :=
  ∀ n, P3708115979958268846.a n = A060934 n

end A060934

/-! ## A060934.P6465337189343221736

`A023607(2*n+1)+2*A023607(2*n)`
-/

namespace A060934.P6465337189343221736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (2 * n + 1) + 2 * A023607 (2 * n)

end

end A060934.P6465337189343221736

namespace A060934

/-- `A023607(2*n+1)+2*A023607(2*n)` -/
def P6465337189343221736.Spec : Prop :=
  ∀ n, P6465337189343221736.a n = A060934 n

end A060934

/-! ## A060934.P14247177702988707637

`A001906(n+1)+n*A022112(2*n+1)`
-/

namespace A060934.P14247177702988707637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) + (n : ℤ) * A022112 (2 * n + 1)

end

end A060934.P14247177702988707637

namespace A060934

/-- `A001906(n+1)+n*A022112(2*n+1)` -/
def P14247177702988707637.Spec : Prop :=
  ∀ n, P14247177702988707637.a n = A060934 n

end A060934

/-! ## A060934.P10115245492255806481

`A052952(2*n)+n*A022112(2*n+1)`
-/

namespace A060934.P10115245492255806481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (2 * n) + (n : ℤ) * A022112 (2 * n + 1)

end

end A060934.P10115245492255806481

namespace A060934

/-- `A052952(2*n)+n*A022112(2*n+1)` -/
def P10115245492255806481.Spec : Prop :=
  ∀ n, P10115245492255806481.a n = A060934 n

end A060934

/-! ## A060934.P1830387856639813292

`2*n*A000032(2*(n+1))+A000045(2*(n+1))`
-/

namespace A060934.P1830387856639813292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000032 (2 * (n + 1))) + A000045 (2 * (n + 1))

end

end A060934.P1830387856639813292

namespace A060934

/-- `2*n*A000032(2*(n+1))+A000045(2*(n+1))` -/
def P1830387856639813292.Spec : Prop :=
  ∀ n, P1830387856639813292.a n = A060934 n

end A060934

/-! ## A060934.P14427205723024975461

`A136376(2*n+1)+A146005(2*n)+A099920(2*n)`
-/

namespace A060934.P14427205723024975461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (2 * n + 1) + (A146005 (2 * n) + A099920 (2 * n))

end

end A060934.P14427205723024975461

namespace A060934

/-- `A136376(2*n+1)+A146005(2*n)+A099920(2*n)` -/
def P14427205723024975461.Spec : Prop :=
  ∀ n, P14427205723024975461.a n = A060934 n

end A060934

/-! ## A060934.P15718996290735635056

`A178521(2*n+1)+A178521(2*n)+A088209(2*n)`
-/

namespace A060934.P15718996290735635056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 (2 * n + 1) + (A178521 (2 * n) + A088209 (2 * n))

end

end A060934.P15718996290735635056

namespace A060934

/-- `A178521(2*n+1)+A178521(2*n)+A088209(2*n)` -/
def P15718996290735635056.Spec : Prop :=
  ∀ n, P15718996290735635056.a n = A060934 n

end A060934

/-! ## A060934.P778603963577916475

`A146005(2*n+1)+A146005(2*n)-A000045(2*n)`
-/

namespace A060934.P778603963577916475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (2 * n + 1) + (A146005 (2 * n) - A000045 (2 * n))

end

end A060934.P778603963577916475

namespace A060934

/-- `A146005(2*n+1)+A146005(2*n)-A000045(2*n)` -/
def P778603963577916475.Spec : Prop :=
  ∀ n, P778603963577916475.a n = A060934 n

end A060934

/-! ## A060934.P13900620686795674376

`A258321(2*n+1)+A258321(2*n)-A000032(2*n+1)`
-/

namespace A060934.P13900620686795674376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (2 * n + 1) + (A258321 (2 * n) - A000032 (2 * n + 1))

end

end A060934.P13900620686795674376

namespace A060934

/-- `A258321(2*n+1)+A258321(2*n)-A000032(2*n+1)` -/
def P13900620686795674376.Spec : Prop :=
  ∀ n, P13900620686795674376.a n = A060934 n

end A060934

/-! ## A060934.P13793285854638968402

`A258321(2*n+1)+A258321(2*n)-A000204(2*n+1)`
-/

namespace A060934.P13793285854638968402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (2 * n + 1) + (A258321 (2 * n) - A000204 (2 * n + 1))

end

end A060934.P13793285854638968402

namespace A060934

/-- `A258321(2*n+1)+A258321(2*n)-A000204(2*n+1)` -/
def P13793285854638968402.Spec : Prop :=
  ∀ n, P13793285854638968402.a n = A060934 n

end A060934

/-! ## A060934.P15186264069199705777

`A045925(2*n+1)+A136376(2*(n+1))-A000204(2*(n+1))`
-/

namespace A060934.P15186264069199705777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (2 * n + 1) + (A136376 (2 * (n + 1)) - A000204 (2 * (n + 1)))

end

end A060934.P15186264069199705777

namespace A060934

/-- `A045925(2*n+1)+A136376(2*(n+1))-A000204(2*(n+1))` -/
def P15186264069199705777.Spec : Prop :=
  ∀ n, P15186264069199705777.a n = A060934 n

end A060934

/-! ## A060934.P10867752857797486357

`A067981(2*n)-A067980(2*n)`
-/

namespace A060934.P10867752857797486357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067981 (2 * n) - A067980 (2 * n)

end

end A060934.P10867752857797486357

namespace A060934

/-- `A067981(2*n)-A067980(2*n)` -/
def P10867752857797486357.Spec : Prop :=
  ∀ n, P10867752857797486357.a n = A060934 n

end A060934

/-! ## A060934.P15502151827289430242

`2*A067981(2*n)-A067982(2*n)`
-/

namespace A060934.P15502151827289430242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067981 (2 * n) - A067982 (2 * n)

end

end A060934.P15502151827289430242

namespace A060934

/-- `2*A067981(2*n)-A067982(2*n)` -/
def P15502151827289430242.Spec : Prop :=
  ∀ n, P15502151827289430242.a n = A060934 n

end A060934

/-! ## A060934.P16563841508968314513

`A067982(2*n)-2*A067980(2*n)`
-/

namespace A060934.P16563841508968314513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067982 (2 * n) - 2 * A067980 (2 * n)

end

end A060934.P16563841508968314513

namespace A060934

/-- `A067982(2*n)-2*A067980(2*n)` -/
def P16563841508968314513.Spec : Prop :=
  ∀ n, P16563841508968314513.a n = A060934 n

end A060934

/-! ## A060934.P9452163838889996347

`A000204(2*(n+1))+A067981(2*n)-A004799(2*(n+1))`
-/

namespace A060934.P9452163838889996347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) + (A067981 (2 * n) - A004799 (2 * (n + 1)))

end

end A060934.P9452163838889996347

namespace A060934

/-- `A000204(2*(n+1))+A067981(2*n)-A004799(2*(n+1))` -/
def P9452163838889996347.Spec : Prop :=
  ∀ n, P9452163838889996347.a n = A060934 n

end A060934

/-!
# A060935: Sum of entries in n-th antidiagonal in A060854.

The programs for A060935, there is no canonical definition to state claims against.
-/

/-! ## A060935.P2501456067413768734

`A240809(∑[A242004(n)])`
-/

namespace A060935.P2501456067413768734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240809 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060935.P2501456067413768734

/-! ## A060935.P9561103979324303037

`A145198(A327078(n))+n`
-/

namespace A060935.P9561103979324303037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145198 (A327078 n).toNat + (n : ℤ)

end

end A060935.P9561103979324303037

/-!
# A060937: Number of iterations of d(n) (A000005) needed to reach 2 starting at n (n is counted).

The programs for A060937, the canonical program `A060937.P15699011180997261786` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060937 has offset 2).

The definition of A060937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060937.P15699011180997261786

`a(∏{e}[n+2, #+1]-2)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060937

/-- `a(∏{e}[n+2, #+1]-2)+1` -/
def P15699011180997261786.Spec : Prop :=
  ∀ n, (P15699011180997261786.a n : ℤ) = A060937 (n + 2)

theorem P15699011180997261786.correct : P15699011180997261786.Spec := by
  intro n
  simp only [A060937, Nat.add_sub_cancel]

end A060937

/-! ## A060937.P13431261500264336963

`a(A000005(n+2)-2)+1` with `a(0)=1`
-/

namespace A060937.P13431261500264336963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000005 (n + 2) - 2).toNat + 1

end

end A060937.P13431261500264336963

namespace A060937

/-- `a(A000005(n+2)-2)+1` -/
def P13431261500264336963.Spec : Prop :=
  ∀ n, (P13431261500264336963.a n : ℤ) = A060937 (n + 2)

end A060937

/-! ## A060937.P4183079580585811047

`a(∑[A051950(n+2)]-1)+1` with `a(0)=1`
-/

namespace A060937.P4183079580585811047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat + 1

end

end A060937.P4183079580585811047

namespace A060937

/-- `a(∑[A051950(n+2)]-1)+1` -/
def P4183079580585811047.Spec : Prop :=
  ∀ n, (P4183079580585811047.a n : ℤ) = A060937 (n + 2)

end A060937

/-! ## A060937.P5805767071843799441

`a(Δ[A006218(n+1)]-2)+1` with `a(0)=1`
-/

namespace A060937.P5805767071843799441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (f1 (n + 1) - f1 n - 2).toNat + 1

end

end A060937.P5805767071843799441

namespace A060937

/-- `a(Δ[A006218(n+1)]-2)+1` -/
def P5805767071843799441.Spec : Prop :=
  ∀ n, (P5805767071843799441.a n : ℤ) = A060937 (n + 2)

end A060937

/-! ## A060937.P15162076329875010250

`a(∑[Δ[A000005(n+1)]%(n+1)])+1` with `a(0)=1`
-/

namespace A060937.P15162076329875010250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A060937.P15162076329875010250

namespace A060937

/-- `a(∑[Δ[A000005(n+1)]%(n+1)])+1` -/
def P15162076329875010250.Spec : Prop :=
  ∀ n, (P15162076329875010250.a n : ℤ) = A060937 (n + 2)

end A060937

/-! ## A060937.P12116120777615729364

`A093515(a(A000005(n+2)-2))` with `a(0)=1`
-/

namespace A060937.P12116120777615729364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093515 (a (A000005 (n + 2) - 2).toNat).toNat

end

end A060937.P12116120777615729364

namespace A060937

/-- `A093515(a(A000005(n+2)-2))` -/
def P12116120777615729364.Spec : Prop :=
  ∀ n, P12116120777615729364.a n = A060937 (n + 2)

end A060937

/-! ## A060937.P4835786547540938575

`A036459(n+2)+1`
-/

namespace A060937.P4835786547540938575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (n + 2) + 1

end

end A060937.P4835786547540938575

namespace A060937

/-- `A036459(n+2)+1` -/
def P4835786547540938575.Spec : Prop :=
  ∀ n, P4835786547540938575.a n = A060937 (n + 2)

end A060937

/-! ## A060937.P12112110927785778137

`a(A070824(n+2))+1` with `a(0)=1`
-/

namespace A060937.P12112110927785778137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A070824 (n + 2)).toNat + 1

end

end A060937.P12112110927785778137

namespace A060937

/-- `a(A070824(n+2))+1` -/
def P12112110927785778137.Spec : Prop :=
  ∀ n, (P12112110927785778137.a n : ℤ) = A060937 (n + 2)

end A060937

/-! ## A060937.P1521392687301066609

`A048379(a(A325765(n+1)-1))` with `a(0)=1`
-/

namespace A060937.P1521392687301066609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048379 (a (A325765 (n + 1) - 1).toNat).toNat

end

end A060937.P1521392687301066609

namespace A060937

/-- `A048379(a(A325765(n+1)-1))` -/
def P1521392687301066609.Spec : Prop :=
  ∀ n, P1521392687301066609.a n = A060937 (n + 2)

end A060937

/-!
# A060938: Maximal degree of an irreducible representation of a group with n elements.

The programs for A060938, there is no canonical definition to state claims against.
-/

/-! ## A060938.P3075040546831028187

`or(A097805(A194673(n)), A346094(n+1))`
-/

namespace A060938.P3075040546831028187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 (A194673 n).toNat) (A346094 (n + 1))

end

end A060938.P3075040546831028187

/-! ## A060938.P8961957667373237606

`or(A164349(A053191(n+1)), A346094(n+1))`
-/

namespace A060938.P8961957667373237606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164349 (A053191 (n + 1)).toNat) (A346094 (n + 1))

end

end A060938.P8961957667373237606

/-! ## A060938.P12464214819120091810

`or(A265245(A106240(n+1)), A346094(n+1))`
-/

namespace A060938.P12464214819120091810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265245 (A106240 (n + 1)).toNat) (A346094 (n + 1))

end

end A060938.P12464214819120091810

/-! ## A060938.P5874366531380027243

`or(A346094(n+1), A359429(A005900(2*n+3)))`
-/

namespace A060938.P5874366531380027243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A346094 (n + 1)) (A359429 (A005900 (2 * n + 3)).toNat)

end

end A060938.P5874366531380027243

/-! ## A060938.P12196417027765085732

`gcd(A003377(A003373(n+1)), A052410(n+1))`
-/

namespace A060938.P12196417027765085732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003377 (A003373 (n + 1)).toNat) (A052410 (n + 1))

end

end A060938.P12196417027765085732

/-!
# A060939: a(n) = (Sum of the first n primes) + n.

The programs for A060939, the canonical program `A060939.P1241768612471461444` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060939 has offset 1).

The definition of A060939 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060939.P1241768612471461444

`A007504(n+1)+n+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A060939

/-- `A007504(n+1)+n+1` -/
def P1241768612471461444.Spec : Prop :=
  ∀ n, P1241768612471461444.a n = A060939 (n + 1)

theorem P1241768612471461444.correct : P1241768612471461444.Spec := by
  intro n
  simp only [A060939, Nat.add_sub_cancel]

end A060939

/-! ## A060939.P1361743581261706552

`∑[A008864(n+1)]`
-/

namespace A060939.P1361743581261706552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P1361743581261706552

namespace A060939

/-- `∑[A008864(n+1)]` -/
def P1361743581261706552.Spec : Prop :=
  ∀ n, P1361743581261706552.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P7198426096419076677

`∑[A028815(n+1)]`
-/

namespace A060939.P7198426096419076677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P7198426096419076677

namespace A060939

/-- `∑[A028815(n+1)]` -/
def P7198426096419076677.Spec : Prop :=
  ∀ n, P7198426096419076677.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P2549990895898558297

`∑[sqrt(A110833(n+1))]`
-/

namespace A060939.P2549990895898558297
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110833 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P2549990895898558297

namespace A060939

/-- `∑[sqrt(A110833(n+1))]` -/
def P2549990895898558297.Spec : Prop :=
  ∀ n, P2549990895898558297.a n = (A060939 (n + 1) : ℝ)

end A060939

/-! ## A060939.P692862012874216487

`∑[∑[A125266(n+1)]]`
-/

namespace A060939.P692862012874216487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P692862012874216487

namespace A060939

/-- `∑[∑[A125266(n+1)]]` -/
def P692862012874216487.Spec : Prop :=
  ∀ n, P692862012874216487.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P7258112324386440161

`∑[Δ[A007504(n)]+1]`
-/

namespace A060939.P7258112324386440161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P7258112324386440161

namespace A060939

/-- `∑[Δ[A007504(n)]+1]` -/
def P7258112324386440161.Spec : Prop :=
  ∀ n, P7258112324386440161.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P15309564272668195514

`∑[∑[A075526(n)]+2]`
-/

namespace A060939.P15309564272668195514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P15309564272668195514

namespace A060939

/-- `∑[∑[A075526(n)]+2]` -/
def P15309564272668195514.Spec : Prop :=
  ∀ n, P15309564272668195514.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P13780289425691830650

`∑[A000040(n+1)+1]`
-/

namespace A060939.P13780289425691830650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P13780289425691830650

namespace A060939

/-- `∑[A000040(n+1)+1]` -/
def P13780289425691830650.Spec : Prop :=
  ∀ n, P13780289425691830650.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P17425449444810298858

`∑[A006093(n+1)+2]`
-/

namespace A060939.P17425449444810298858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P17425449444810298858

namespace A060939

/-- `∑[A006093(n+1)+2]` -/
def P17425449444810298858.Spec : Prop :=
  ∀ n, P17425449444810298858.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P14085130093511658602

`∑[A052147(n+1)-1]`
-/

namespace A060939.P14085130093511658602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P14085130093511658602

namespace A060939

/-- `∑[A052147(n+1)-1]` -/
def P14085130093511658602.Spec : Prop :=
  ∀ n, P14085130093511658602.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P15031835384293740851

`∑[A055670(n+1)]+2`
-/

namespace A060939.P15031835384293740851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A060939.P15031835384293740851

namespace A060939

/-- `∑[A055670(n+1)]+2` -/
def P15031835384293740851.Spec : Prop :=
  ∀ n, P15031835384293740851.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P3744514870180892881

`∑[A175216(n+1)]-1`
-/

namespace A060939.P3744514870180892881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060939.P3744514870180892881

namespace A060939

/-- `∑[A175216(n+1)]-1` -/
def P3744514870180892881.Spec : Prop :=
  ∀ n, P3744514870180892881.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P4995281856245899865

`∑[A040976(n+1)+3]`
-/

namespace A060939.P4995281856245899865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P4995281856245899865

namespace A060939

/-- `∑[A040976(n+1)+3]` -/
def P4995281856245899865.Spec : Prop :=
  ∀ n, P4995281856245899865.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P10004045620020990914

`∑[A113935(n+1)-2]`
-/

namespace A060939.P10004045620020990914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P10004045620020990914

namespace A060939

/-- `∑[A113935(n+1)-2]` -/
def P10004045620020990914.Spec : Prop :=
  ∀ n, P10004045620020990914.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P8831612441266064554

`∑[A086801(n+1)+4]`
-/

namespace A060939.P8831612441266064554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P8831612441266064554

namespace A060939

/-- `∑[A086801(n+1)+4]` -/
def P8831612441266064554.Spec : Prop :=
  ∀ n, P8831612441266064554.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P2090772107819294406

`∑[A175221(n+1)-3]`
-/

namespace A060939.P2090772107819294406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P2090772107819294406

namespace A060939

/-- `∑[A175221(n+1)-3]` -/
def P2090772107819294406.Spec : Prop :=
  ∀ n, P2090772107819294406.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P6226376878804276547

`∑[A089241(n+1)/2]`
-/

namespace A060939.P6226376878804276547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089241 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P6226376878804276547

namespace A060939

/-- `∑[A089241(n+1)/2]` -/
def P6226376878804276547.Spec : Prop :=
  ∀ n, P6226376878804276547.a n = (A060939 (n + 1) : ℚ)

end A060939

/-! ## A060939.P10651787724595115554

`∑[A014688(n+1)-n]`
-/

namespace A060939.P10651787724595115554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P10651787724595115554

namespace A060939

/-- `∑[A014688(n+1)-n]` -/
def P10651787724595115554.Spec : Prop :=
  ∀ n, P10651787724595115554.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P324651688041343440

`A237589(n+1)+2+n`
-/

namespace A060939.P324651688041343440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + 2 + (n : ℤ)

end

end A060939.P324651688041343440

namespace A060939

/-- `A237589(n+1)+2+n` -/
def P324651688041343440.Spec : Prop :=
  ∀ n, P324651688041343440.a n = A060939 (n + 1)

end A060939

/-! ## A060939.P13205800550324192390

`∑[sqrt(A001248(n+1))+1]`
-/

namespace A060939.P13205800550324192390
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P13205800550324192390

namespace A060939

/-- `∑[sqrt(A001248(n+1))+1]` -/
def P13205800550324192390.Spec : Prop :=
  ∀ n, P13205800550324192390.a n = (A060939 (n + 1) : ℝ)

end A060939

/-!
# A060941: Duchon's numbers: the number of paths of length 5*n from the origin to the line y = 2*x/3 with unit East and North steps that stay below the line or touch it.

The programs for A060941, there is no canonical definition to state claims against.
-/

/-! ## A060941.P17404184549173075606

`A071201(A383465(n))`
-/

namespace A060941.P17404184549173075606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071201 (A383465 n).toNat

end

end A060941.P17404184549173075606

/-!
# A060942: a(n) is the largest integer m such that m is divisible by every integer in the interval 1 <= x <= m^(1/n).

The programs for A060942, there is no canonical definition to state claims against.
-/

/-! ## A060942.P146612760933728500

`A328449(A029470(n+2)-A000041(n))`
-/

namespace A060942.P146612760933728500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 (A029470 (n + 2) - A000041 n).toNat

end

end A060942.P146612760933728500

/-! ## A060942.P622787278879808611

`A051451(A262545(2*n+3)+A124762(3*n+2))`
-/

namespace A060942.P622787278879808611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A262545 (2 * n + 3) + A124762 (3 * n + 2)).toNat

end

end A060942.P622787278879808611

/-! ## A060942.P12923555815250128780

`A051451(lt[A051322(2*n+1), A083853(2*n+1)])`
-/

namespace A060942.P12923555815250128780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051322 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083853 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A060942.P12923555815250128780

/-!
# A060943: a(n) = n!^n * Sum_{k=1..n} 1/k^n.

The programs for A060943, there is no canonical definition to state claims against.
-/

/-! ## A060943.P2812631851436889076

`A291556(∑[4*(n+1)])`
-/

namespace A060943.P2812631851436889076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060943.P2812631851436889076

/-!
# A060945: Number of compositions (ordered partitions) of n into 1's, 2's and 4's.

The programs for A060945, the canonical program `A060945.P2960536356123340732` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060945 has offset 0).

The definition of A060945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060945.P2960536356123340732

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060945

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P2960536356123340732.Spec : Prop :=
  ∀ n, (P2960536356123340732.a n : ℤ) = A060945 n

theorem P2960536356123340732.correct : P2960536356123340732.Spec := by
  intro n
  simp only [A060945]

end A060945

/-! ## A060945.P4582717003100299187

`ogf(-1/(-1+x+x^2+x^4))`
-/

namespace A060945.P4582717003100299187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -1, 0, -1] n

end

end A060945.P4582717003100299187

namespace A060945

/-- `ogf(-1/(-1+x+x^2+x^4))` -/
def P4582717003100299187.Spec : Prop :=
  ∀ n, P4582717003100299187.a n = A060945 n

end A060945

/-! ## A060945.P10352951561632146482

`∑[A347493(n)]`
-/

namespace A060945.P10352951561632146482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060945.P10352951561632146482

namespace A060945

/-- `∑[A347493(n)]` -/
def P10352951561632146482.Spec : Prop :=
  ∀ n, P10352951561632146482.a n = A060945 n

end A060945

/-! ## A060945.P5599338712599104554

`A181532(n+1)`
-/

namespace A060945.P5599338712599104554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 (n + 1)

end

end A060945.P5599338712599104554

namespace A060945

/-- `A181532(n+1)` -/
def P5599338712599104554.Spec : Prop :=
  ∀ n, P5599338712599104554.a n = A060945 n

end A060945

/-! ## A060945.P10335311773358846197

`∑[A017818(2*n)]`
-/

namespace A060945.P10335311773358846197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060945.P10335311773358846197

namespace A060945

/-- `∑[A017818(2*n)]` -/
def P10335311773358846197.Spec : Prop :=
  ∀ n, P10335311773358846197.a n = A060945 n

end A060945

/-! ## A060945.P17630383496128674833

`A017818(2*n+3)`
-/

namespace A060945.P17630383496128674833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (2 * n + 3)

end

end A060945.P17630383496128674833

namespace A060945

/-- `A017818(2*n+3)` -/
def P17630383496128674833.Spec : Prop :=
  ∀ n, P17630383496128674833.a n = A060945 n

end A060945

/-! ## A060945.P4546867987843160620

`A017818(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A060945.P4546867987843160620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017818 (n + n) + a (n - 1)

end

end A060945.P4546867987843160620

namespace A060945

/-- `A017818(n+n)+a(n-1)` -/
def P4546867987843160620.Spec : Prop :=
  ∀ n, P4546867987843160620.a n = A060945 n

end A060945

/-! ## A060945.P14362506250984318560

`∑[A005251(n+1)-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A060945.P14362506250984318560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A005251 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060945.P14362506250984318560

namespace A060945

/-- `∑[A005251(n+1)-a(n-1)]` -/
def P14362506250984318560.Spec : Prop :=
  ∀ n, P14362506250984318560.a n = A060945 n

end A060945

/-! ## A060945.P7489074541234635106

`A017830(2*n+3)+A017830(2*n)`
-/

namespace A060945.P7489074541234635106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017830 (2 * n + 3) + A017830 (2 * n)

end

end A060945.P7489074541234635106

namespace A060945

/-- `A017830(2*n+3)+A017830(2*n)` -/
def P7489074541234635106.Spec : Prop :=
  ∀ n, P7489074541234635106.a n = A060945 n

end A060945

/-! ## A060945.P4459070172166933897

`A005314(n)+A307677(n)-A005251(n)`
-/

namespace A060945.P4459070172166933897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n + (A307677 n - A005251 n)

end

end A060945.P4459070172166933897

namespace A060945

/-- `A005314(n)+A307677(n)-A005251(n)` -/
def P4459070172166933897.Spec : Prop :=
  ∀ n, P4459070172166933897.a n = A060945 n

end A060945

/-! ## A060945.P11123627816671143747

`A005314(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A060945.P11123627816671143747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005314 (n + 1) - a (n - 1)

end

end A060945.P11123627816671143747

namespace A060945

/-- `A005314(n+1)-a(n-1)` -/
def P11123627816671143747.Spec : Prop :=
  ∀ n, P11123627816671143747.a n = A060945 n

end A060945

/-! ## A060945.P2865393066384341721

`∑[A005251(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A060945.P2865393066384341721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A060945.P2865393066384341721

namespace A060945

/-- `∑[A005251(n+1)]-a(n-1)` -/
def P2865393066384341721.Spec : Prop :=
  ∀ n, P2865393066384341721.a n = A060945 n

end A060945

/-! ## A060945.P5954910904944672902

`A049853(n+1)-A307677(n+1)`
-/

namespace A060945.P5954910904944672902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (n + 1) - A307677 (n + 1)

end

end A060945.P5954910904944672902

namespace A060945

/-- `A049853(n+1)-A307677(n+1)` -/
def P5954910904944672902.Spec : Prop :=
  ∀ n, P5954910904944672902.a n = A060945 n

end A060945

/-! ## A060945.P4055765087039632156

`(A122519(2*n+1)+A122519(2*(n+1)))/2`
-/

namespace A060945.P4055765087039632156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122519 (2 * n + 1) + A122519 (2 * (n + 1)) : ℚ) / 2

end

end A060945.P4055765087039632156

namespace A060945

/-- `(A122519(2*n+1)+A122519(2*(n+1)))/2` -/
def P4055765087039632156.Spec : Prop :=
  ∀ n, P4055765087039632156.a n = (A060945 n : ℚ)

end A060945

/-! ## A060945.P9914186165054178835

`Δ[A368299(n)]`
-/

namespace A060945.P9914186165054178835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060945.P9914186165054178835

namespace A060945

/-- `Δ[A368299(n)]` -/
def P9914186165054178835.Spec : Prop :=
  ∀ n, P9914186165054178835.a n = A060945 n

end A060945

/-! ## A060945.P50836645090943565

`Δ[A274110(n+1)]`
-/

namespace A060945.P50836645090943565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060945.P50836645090943565

namespace A060945

/-- `Δ[A274110(n+1)]` -/
def P50836645090943565.Spec : Prop :=
  ∀ n, P50836645090943565.a n = A060945 n

end A060945

/-! ## A060945.P1167178831386917077

`abs(∑[∑[A078065(n)]])`
-/

namespace A060945.P1167178831386917077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060945.P1167178831386917077

namespace A060945

/-- `abs(∑[∑[A078065(n)]])` -/
def P1167178831386917077.Spec : Prop :=
  ∀ n, P1167178831386917077.a n = A060945 n

end A060945

/-! ## A060945.P1341872132755445475

`A368299(n+1)-A368299(n)`
-/

namespace A060945.P1341872132755445475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368299 (n + 1) - A368299 n

end

end A060945.P1341872132755445475

namespace A060945

/-- `A368299(n+1)-A368299(n)` -/
def P1341872132755445475.Spec : Prop :=
  ∀ n, P1341872132755445475.a n = A060945 n

end A060945

/-! ## A060945.P977614072036970461

`A274110(n+2)-A274110(n+1)`
-/

namespace A060945.P977614072036970461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274110 (n + 2) - A274110 (n + 1)

end

end A060945.P977614072036970461

namespace A060945

/-- `A274110(n+2)-A274110(n+1)` -/
def P977614072036970461.Spec : Prop :=
  ∀ n, P977614072036970461.a n = A060945 n

end A060945

/-! ## A060945.P1403072692969049144

`abs(A077930(n))`
-/

namespace A060945.P1403072692969049144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077930 n|

end

end A060945.P1403072692969049144

namespace A060945

/-- `abs(A077930(n))` -/
def P1403072692969049144.Spec : Prop :=
  ∀ n, P1403072692969049144.a n = A060945 n

end A060945

/-!
# A060946: Trace of Vandermonde matrix of numbers 1,2,...,n, i.e., the matrix A with A[i,j] = i^(j-1), 1 <= i <= n, 1 <= j <= n.

The programs for A060946, there is no canonical definition to state claims against.
-/

/-! ## A060946.P6534743602720843402

`∑[(n+1)^n]`
-/

namespace A060946.P6534743602720843402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060946.P6534743602720843402

/-! ## A060946.P9183472990681346761

`abs(∑[(-xor(n, -1))^n])`
-/

namespace A060946.P9183472990681346761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.xor (n : ℤ) (-1)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060946.P9183472990681346761

/-! ## A060946.P15123982209426294763

`a(n-1)+(n+1)^n` with `a(0)=1`
-/

namespace A060946.P15123982209426294763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ n

end

end A060946.P15123982209426294763

/-! ## A060946.P7957437249070710591

`abs(∑[(n-(floor(acot(n))-1))^n])`
-/

namespace A060946.P7957437249070710591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A060946.P7957437249070710591

/-! ## A060946.P3164618777690302488

`∑[A055860(n)]+1`
-/

namespace A060946.P3164618777690302488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060946.P3164618777690302488

/-! ## A060946.P2306541733927622422

`∑[A037205(n)]+n+1`
-/

namespace A060946.P2306541733927622422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A060946.P2306541733927622422

/-! ## A060946.P17006507688066626193

`∑[A173235(n+1)]-∑[n]`
-/

namespace A060946.P17006507688066626193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173235 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A060946.P17006507688066626193

/-! ## A060946.P941329334385170189

`∑[2*A000169(n+1)]/2`
-/

namespace A060946.P941329334385170189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000169 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A060946.P941329334385170189

/-! ## A060946.P9170100941278975114

`gcd(∑[A000169(n+1)], A000038(n))`
-/

namespace A060946.P9170100941278975114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A060946.P9170100941278975114

/-! ## A060946.P15601658872897831149

`A007318(∑[n])*∑[A000169(n+1)]`
-/

namespace A060946.P15601658872897831149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A060946.P15601658872897831149

/-!
# A060947: Intrinsic 10-palindromes: n is an intrinsic k-palindrome if it is a k-digit palindrome in some base.

The programs for A060947, there is no canonical definition to state claims against.
-/

/-! ## A060947.P6394547384867943709

`A145800(A006995(n+48))`
-/

namespace A060947.P6394547384867943709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145800 (A006995 (n + 48)).toNat

end

end A060947.P6394547384867943709

/-! ## A060947.P2914576633046326195

`A001221(A030078(n+1))*A006995(n+48)`
-/

namespace A060947.P2914576633046326195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A030078 (n + 1)).toNat * A006995 (n + 48)

end

end A060947.P2914576633046326195

/-! ## A060947.P11124769654715980861

`A006995(A062399(n)+48)`
-/

namespace A060947.P11124769654715980861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A062399 n + 48).toNat

end

end A060947.P11124769654715980861

/-! ## A060947.P14668334854316413264

`A006995(A351870(n)+48)`
-/

namespace A060947.P14668334854316413264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A351870 n + 48).toNat

end

end A060947.P14668334854316413264

/-! ## A060947.P3228407341268006492

`A006995(A227549(n+1)+48)`
-/

namespace A060947.P3228407341268006492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A227549 (n + 1) + 48).toNat

end

end A060947.P3228407341268006492

/-!
# A060948: Intrinsic 11-palindromes: n is an intrinsic k-palindrome if it is a k-digit palindrome in some base.

The programs for A060948, there is no canonical definition to state claims against.
-/

/-! ## A060948.P10736649314429395590

`A006995(A048675(A019565(n))+64)`
-/

namespace A060948.P10736649314429395590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A048675 (A019565 n).toNat + 64).toNat

end

end A060948.P10736649314429395590

/-! ## A060948.P4917683131810832851

`record[A006995(A056792(n)+64)]`
-/

namespace A060948.P4917683131810832851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A056792 n + 64).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060948.P4917683131810832851

/-! ## A060948.P8979711571525496677

`record[A006995(or(64, A056792(n)))]`
-/

namespace A060948.P8979711571525496677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (Int.lor 64 (A056792 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060948.P8979711571525496677

/-! ## A060948.P5152659078500027899

`record[A006995(xor(64, A056792(n)))]`
-/

namespace A060948.P5152659078500027899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (Int.xor 64 (A056792 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060948.P5152659078500027899

/-! ## A060948.P9447782918143793050

`A006995(A130764(n+1)-1)`
-/

namespace A060948.P9447782918143793050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A130764 (n + 1) - 1).toNat

end

end A060948.P9447782918143793050

/-!
# A060949: Intrinsic 12-palindromes: n is an intrinsic k-palindrome if it is a k-digit palindrome in some base.

The programs for A060949, there is no canonical definition to state claims against.
-/

/-! ## A060949.P1083443558234606813

`A006995(A130764(n+1)+A009734(n+1))`
-/

namespace A060949.P1083443558234606813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A130764 (n + 1) + A009734 (n + 1)).toNat

end

end A060949.P1083443558234606813

/-! ## A060949.P4983969554818404837

`A092754(2*A060947(n+1))`
-/

namespace A060949.P4983969554818404837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (2 * A060947 (n + 1)).toNat

end

end A060949.P4983969554818404837

/-! ## A060949.P4663079515745824764

`A092754(lcm(2, A060947(n+1)))`
-/

namespace A060949.P4663079515745824764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (Int.lcm 2 (A060947 (n + 1)))

end

end A060949.P4663079515745824764

/-! ## A060949.P14019519295852230824

`A092754(A060947(n+1)+A060947(n+1))`
-/

namespace A060949.P14019519295852230824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (A060947 (n + 1) + A060947 (n + 1)).toNat

end

end A060949.P14019519295852230824

/-! ## A060949.P13763268817364889502

`A060947(n+1)+A004760(A060947(n+1)+1)`
-/

namespace A060949.P13763268817364889502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060947 (n + 1) + A004760 (A060947 (n + 1) + 1).toNat

end

end A060949.P13763268817364889502

/-!
# A060950: Rank of elliptic curve y^2 = x^3 + n.

The programs for A060950, there is no canonical definition to state claims against.
-/

/-! ## A060950.P4142799449940130941

`A060951(27*(n+1))`
-/

namespace A060950.P4142799449940130941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (27 * (n + 1))

end

end A060950.P4142799449940130941

/-! ## A060950.P2331551797058107630

`A080843(A299928(3*n+5)-A343380(n))`
-/

namespace A060950.P2331551797058107630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A299928 (3 * n + 5) - A343380 n).toNat

end

end A060950.P2331551797058107630

/-! ## A060950.P5280785938925971638

`A004197(A280161(∑[n+2]+4)%A190482(n+1))`
-/

namespace A060950.P5280785938925971638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (Int.tmod (A280161 (∑ j ∈ Finset.range (n + 1), f1 j + 4)) (A190482 (n + 1))).toNat

end

end A060950.P5280785938925971638

/-! ## A060950.P11230701367585030041

`val(A171781(A178430(n+1)), 4)`
-/

namespace A060950.P11230701367585030041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A171781 (A178430 (n + 1)).toNat).toNat 4

end

end A060950.P11230701367585030041

/-! ## A060950.P3682620215636315677

`A379300(A379265(3*n)+A008634(2*(n+1)))`
-/

namespace A060950.P3682620215636315677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379300 (A379265 (3 * n) + A008634 (2 * (n + 1))).toNat

end

end A060950.P3682620215636315677

/-!
# A060951: Rank of elliptic curve y^2 = x^3 - n.

The programs for A060951, there is no canonical definition to state claims against.
-/

/-! ## A060951.P10879204857054982562

`A060950(27*(n+1))`
-/

namespace A060951.P10879204857054982562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (27 * (n + 1))

end

end A060951.P10879204857054982562

/-! ## A060951.P7152053361703834715

`A277007(∑[record[A225636(n)]])`
-/

namespace A060951.P7152053361703834715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225636 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060951.P7152053361703834715

/-! ## A060951.P13124816829176130709

`A277017(∑[record[A225636(n)]])`
-/

namespace A060951.P13124816829176130709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225636 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060951.P13124816829176130709

/-! ## A060951.P9652341292894368458

`A270887(3*n+1)%A316496(A081120(n+1))`
-/

namespace A060951.P9652341292894368458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270887 (3 * n + 1)) (A316496 (A081120 (n + 1)).toNat)

end

end A060951.P9652341292894368458

/-!
# A060952: Rank of elliptic curve y^2 = x^3 - n*x.

The programs for A060952, there is no canonical definition to state claims against.
-/

/-! ## A060952.P12441718394337090885

`A060953(4*(n+1))`
-/

namespace A060952.P12441718394337090885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (4 * (n + 1))

end

end A060952.P12441718394337090885

/-! ## A060952.P6088201664232965823

`dr(A060953(Δ[A001844(n)]))`
-/

namespace A060952.P6088201664232965823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060953 (f1 (n + 1) - f1 n).toNat)

end

end A060952.P6088201664232965823

/-! ## A060952.P5900197342301594940

`dr(A060953(Δ[A046092(n)]))`
-/

namespace A060952.P5900197342301594940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060953 (f1 (n + 1) - f1 n).toNat)

end

end A060952.P5900197342301594940

/-! ## A060952.P5134031080315350909

`dr(A060953(Δ[A142463(n)]))`
-/

namespace A060952.P5134031080315350909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060953 (f1 (n + 1) - f1 n).toNat)

end

end A060952.P5134031080315350909

/-! ## A060952.P7801917548936944395

`dr(A060953(A008574(n+1)))`
-/

namespace A060952.P7801917548936944395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060953 (A008574 (n + 1)).toNat)

end

end A060952.P7801917548936944395

/-! ## A060952.P6145207988768414192

`A060953(A004767(n)+1)%4`
-/

namespace A060952.P6145207988768414192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060953 (A004767 n + 1).toNat) 4

end

end A060952.P6145207988768414192

/-! ## A060952.P10366812001280093732

`dr(A060953(Δ[A097080(n+1)]))`
-/

namespace A060952.P10366812001280093732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060953 (f1 (n + 1) - f1 n).toNat)

end

end A060952.P10366812001280093732

/-! ## A060952.P10500673444958687600

`A060953(A008574(n+1))+A000007(n+1)`
-/

namespace A060952.P10500673444958687600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A008574 (n + 1)).toNat + A000007 (n + 1)

end

end A060952.P10500673444958687600

/-! ## A060952.P17408457282068883544

`and(A060953(A008574(n+1)), A154555(n+1))`
-/

namespace A060952.P17408457282068883544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060953 (A008574 (n + 1)).toNat) (A154555 (n + 1))

end

end A060952.P17408457282068883544

/-! ## A060952.P5774464495254757036

`A060953(A008574(n+1))+A007814(or(1, n))`
-/

namespace A060952.P5774464495254757036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A008574 (n + 1)).toNat + A007814 (Nat.lor 1 n)

end

end A060952.P5774464495254757036

/-! ## A060952.P13206859044788026671

`A060953(A008574(n+1))/A008836(n+1)²`
-/

namespace A060952.P13206859044788026671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060953 (A008574 (n + 1)).toNat : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A060952.P13206859044788026671

/-! ## A060952.P14829237838439400971

`A060953(A008574(n+1))^Δ[A004754(n+1)]`
-/

namespace A060952.P14829237838439400971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060953 (A008574 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060952.P14829237838439400971

/-! ## A060952.P937482028412193049

`A060953(A008574(n+1))+char[A237228(n+1)]`
-/

namespace A060952.P937482028412193049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237228 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A008574 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A060952.P937482028412193049

/-! ## A060952.P9127797132477931346

`A060953(A008574(n+1))+char[A237230(n+1)]`
-/

namespace A060952.P9127797132477931346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237230 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A008574 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A060952.P9127797132477931346

/-! ## A060952.P10391353226608891726

`A060953(A008574(n+1))/A007318(C(2, n)+1)`
-/

namespace A060952.P10391353226608891726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060953 (A008574 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n + 1) : ℚ)

end

end A060952.P10391353226608891726

/-! ## A060952.P9836881554507877743

`A060953(A008574(n+1))/floor(1/A018252(n+1))!`
-/

namespace A060952.P9836881554507877743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060953 (A008574 (n + 1)).toNat : ℚ) / (Nat.factorial ⌊1 / (A018252 (n + 1) : ℚ)⌋.toNat : ℚ)

end

end A060952.P9836881554507877743

/-! ## A060952.P1717747173467937542

`A060953(A008574(n+1))/A001221(A002144(n+1))`
-/

namespace A060952.P1717747173467937542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060953 (A008574 (n + 1)).toNat : ℚ) / (A001221 (A002144 (n + 1)).toNat : ℚ)

end

end A060952.P1717747173467937542

/-! ## A060952.P7405579260079092502

`A060953(A008574(n+1))/A001222(A004139(n+1))`
-/

namespace A060952.P7405579260079092502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060953 (A008574 (n + 1)).toNat : ℚ) / (A001222 (A004139 (n + 1)).toNat : ℚ)

end

end A060952.P7405579260079092502

/-! ## A060952.P3208301391077990286

`A060953(A008574(n+1))/A008480(A000040(n+1))`
-/

namespace A060952.P3208301391077990286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060953 (A008574 (n + 1)).toNat : ℚ) / (A008480 (A000040 (n + 1)).toNat : ℚ)

end

end A060952.P3208301391077990286

/-! ## A060952.P13718480406321735989

`A060953(A008574(n+1))^A014963(∑[n+1])`
-/

namespace A060952.P13718480406321735989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060953 (A008574 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A060952.P13718480406321735989

/-!
# A060953: Rank of elliptic curve y^2 = x^3 + n*x.

The programs for A060953, there is no canonical definition to state claims against.
-/

/-! ## A060953.P97634505417665160

`A060952(4*(n+1))`
-/

namespace A060953.P97634505417665160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (4 * (n + 1))

end

end A060953.P97634505417665160

/-! ## A060953.P12796981080777316039

`dr(A060952(Δ[A001844(n)]))`
-/

namespace A060953.P12796981080777316039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060952 (f1 (n + 1) - f1 n).toNat)

end

end A060953.P12796981080777316039

/-! ## A060953.P7633218874168482652

`dr(A060952(Δ[A046092(n)]))`
-/

namespace A060953.P7633218874168482652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060952 (f1 (n + 1) - f1 n).toNat)

end

end A060953.P7633218874168482652

/-! ## A060953.P7738041117491895796

`dr(A060952(Δ[A142463(n)]))`
-/

namespace A060953.P7738041117491895796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060952 (f1 (n + 1) - f1 n).toNat)

end

end A060953.P7738041117491895796

/-! ## A060953.P8604110019707217857

`dr(A060952(A008574(n+1)))`
-/

namespace A060953.P8604110019707217857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060952 (A008574 (n + 1)).toNat)

end

end A060953.P8604110019707217857

/-! ## A060953.P18118799038525141610

`dr(A060952(A019442(n+3)))`
-/

namespace A060953.P18118799038525141610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060952 (A019442 (n + 3)).toNat)

end

end A060953.P18118799038525141610

/-! ## A060953.P5398474349351865284

`dr(A060952(Δ[A097080(n+1)]))`
-/

namespace A060953.P5398474349351865284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060952 (f1 (n + 1) - f1 n).toNat)

end

end A060953.P5398474349351865284

/-! ## A060953.P2172118577188093962

`A060952(A008574(n+1))/A020985(n)²`
-/

namespace A060953.P2172118577188093962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060952 (A008574 (n + 1)).toNat : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A060953.P2172118577188093962

/-! ## A060953.P15373908517376519633

`A060952(Δ[A046092(n)])+A000007(n+1)`
-/

namespace A060953.P15373908517376519633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A060953.P15373908517376519633

/-! ## A060953.P9464230172546301452

`A000034(2*n)*A060952(Δ[A046092(n)])`
-/

namespace A060953.P9464230172546301452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A060952 (f1 (n + 1) - f1 n).toNat

end

end A060953.P9464230172546301452

/-! ## A060953.P4528115610231360105

`A001489(n)+A060952(Δ[A046092(n)])+n`
-/

namespace A060953.P4528115610231360105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A060952 (f1 (n + 1) - f1 n).toNat + (n : ℤ))

end

end A060953.P4528115610231360105

/-! ## A060953.P7052052093394695522

`A060952(Δ[A046092(n)])^A008836(n+1)²`
-/

namespace A060953.P7052052093394695522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060952 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A008836 (n + 1) ^ 2 : ℤ)

end

end A060953.P7052052093394695522

/-! ## A060953.P4717314741768410272

`A060952(Δ[A046092(n)])^A033999(n+1)²`
-/

namespace A060953.P4717314741768410272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060952 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A033999 (n + 1) ^ 2 : ℤ)

end

end A060953.P4717314741768410272

/-! ## A060953.P14138817065713141774

`A060952(A008574(n+1))^A000041(gcd(n, n+1))`
-/

namespace A060953.P14138817065713141774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060952 (A008574 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.gcd n (n + 1)) : ℤ)

end

end A060953.P14138817065713141774

/-! ## A060953.P2725477169059604293

`A060952(A008574(n+1))/A000108(∑[(-1)^n])`
-/

namespace A060953.P2725477169059604293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060952 (A008574 (n + 1)).toNat : ℚ) / (A000108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A060953.P2725477169059604293

/-! ## A060953.P3847897543023038563

`A000045((-1)^(2*n))*A060952(Δ[A046092(n)])`
-/

namespace A060953.P3847897543023038563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ (2 * n)).toNat * A060952 (f1 (n + 1) - f1 n).toNat

end

end A060953.P3847897543023038563

/-!
# A060954: Largest prime factor of 10*n + 1.

The programs for A060954, the canonical program `A060954.P1185278210260250434` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060954 has offset 1).

The definition of A060954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060954.P1185278210260250434

`A006530(10*n+11)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A060954

/-- `A006530(10*n+11)` -/
def P1185278210260250434.Spec : Prop :=
  ∀ n, P1185278210260250434.a n = A060954 (n + 1)

theorem P1185278210260250434.correct : P1185278210260250434.Spec := by
  intro n
  simp only [A060954, Nat.add_sub_cancel]

end A060954

/-! ## A060954.P14411355959280110552

`p?[xor(-(n%10), A006530(n+1))]`
-/

namespace A060954.P14411355959280110552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((n % 10 : ℕ) : ℤ)) (A006530 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060954.P14411355959280110552

namespace A060954

/-- `p?[xor(-(n%10), A006530(n+1))]` -/
def P14411355959280110552.Spec : Prop :=
  ∀ n, P14411355959280110552.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P1937647446670093871

`p?[A006530(A008592(n)+1)]`
-/

namespace A060954.P1937647446670093871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008592 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060954.P1937647446670093871

namespace A060954

/-- `p?[A006530(A008592(n)+1)]` -/
def P1937647446670093871.Spec : Prop :=
  ∀ n, P1937647446670093871.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P13382253835661933449

`p?[A006530(A017293(n)-1)]`
-/

namespace A060954.P13382253835661933449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017293 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060954.P13382253835661933449

namespace A060954

/-- `p?[A006530(A017293(n)-1)]` -/
def P13382253835661933449.Spec : Prop :=
  ∀ n, P13382253835661933449.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P14874071225767483394

`∏{p}[A006530(A008592(n+1)+1), #]`
-/

namespace A060954.P14874071225767483394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008592 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A060954.P14874071225767483394

namespace A060954

/-- `∏{p}[A006530(A008592(n+1)+1), #]` -/
def P14874071225767483394.Spec : Prop :=
  ∀ n, (P14874071225767483394.a n : ℤ) = A060954 (n + 1)

end A060954

/-! ## A060954.P16397618357608206269

`A076565(5*(n+1))`
-/

namespace A060954.P16397618357608206269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (5 * (n + 1))

end

end A060954.P16397618357608206269

namespace A060954

/-- `A076565(5*(n+1))` -/
def P16397618357608206269.Spec : Prop :=
  ∀ n, P16397618357608206269.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P10019180025686071565

`A076567(5*n+4)`
-/

namespace A060954.P10019180025686071565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (5 * n + 4)

end

end A060954.P10019180025686071565

namespace A060954

/-- `A076567(5*n+4)` -/
def P10019180025686071565.Spec : Prop :=
  ∀ n, P10019180025686071565.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P8320710652459661263

`A076569(A016885(n))`
-/

namespace A060954.P8320710652459661263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A016885 n).toNat

end

end A060954.P8320710652459661263

namespace A060954

/-- `A076569(A016885(n))` -/
def P8320710652459661263.Spec : Prop :=
  ∀ n, P8320710652459661263.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P17986079016740029082

`A076569(A016945(n)-n)`
-/

namespace A060954.P17986079016740029082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A016945 n - (n : ℤ)).toNat

end

end A060954.P17986079016740029082

namespace A060954

/-- `A076569(A016945(n)-n)` -/
def P17986079016740029082.Spec : Prop :=
  ∀ n, P17986079016740029082.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P12725910879840987404

`A076569(A047389(2*n+1)-2*n)`
-/

namespace A060954.P12725910879840987404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A047389 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A060954.P12725910879840987404

namespace A060954

/-- `A076569(A047389(2*n+1)-2*n)` -/
def P12725910879840987404.Spec : Prop :=
  ∀ n, P12725910879840987404.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P12295274571894698304

`A076566(9*(n+1)+n+1)`
-/

namespace A060954.P12295274571894698304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (9 * (n + 1) + (n + 1))

end

end A060954.P12295274571894698304

namespace A060954

/-- `A076566(9*(n+1)+n+1)` -/
def P12295274571894698304.Spec : Prop :=
  ∀ n, P12295274571894698304.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P14046852515818986231

`A111089(10*(n+1)+1)`
-/

namespace A060954.P14046852515818986231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (10 * (n + 1) + 1)

end

end A060954.P14046852515818986231

namespace A060954

/-- `A111089(10*(n+1)+1)` -/
def P14046852515818986231.Spec : Prop :=
  ∀ n, P14046852515818986231.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P11505446036811365831

`A053585(∏{p}[9*(n+1)+n+2, #])`
-/

namespace A060954.P11505446036811365831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1) + (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A060954.P11505446036811365831

namespace A060954

/-- `A053585(∏{p}[9*(n+1)+n+2, #])` -/
def P11505446036811365831.Spec : Prop :=
  ∀ n, P11505446036811365831.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P14112854895356745517

`A014963(A053585(10*(n+1)+1))`
-/

namespace A060954.P14112854895356745517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A053585 (10 * (n + 1) + 1)).toNat

end

end A060954.P14112854895356745517

namespace A060954

/-- `A014963(A053585(10*(n+1)+1))` -/
def P14112854895356745517.Spec : Prop :=
  ∀ n, P14112854895356745517.a n = A060954 (n + 1)

end A060954

/-! ## A060954.P4535941682131343351

`A076569(A257645(n))`
-/

namespace A060954.P4535941682131343351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A257645 n).toNat

end

end A060954.P4535941682131343351

namespace A060954

/-- `A076569(A257645(n))` -/
def P4535941682131343351.Spec : Prop :=
  ∀ n, P4535941682131343351.a n = A060954 (n + 1)

end A060954

/-!
# A060955: Highest degree of an irreducible representation of the alternating group A_n of degree n.

The programs for A060955, there is no canonical definition to state claims against.
-/

/-! ## A060955.P8121499214805394858

`A060240(A026905(n+1)-A049100(n+3))`
-/

namespace A060955.P8121499214805394858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (A026905 (n + 1) - A049100 (n + 3)).toNat

end

end A060955.P8121499214805394858

/-! ## A060955.P4195686009575378966

`A060240(eq[1, A104778(n+2)])`
-/

namespace A060955.P4195686009575378966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104778 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060955.P4195686009575378966

/-! ## A060955.P18303435846596681587

`A060240(lt[A104778(n+2), 2])`
-/

namespace A060955.P18303435846596681587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104778 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A060955.P18303435846596681587

/-! ## A060955.P18053027245323099931

`A060240(eq[-1, A133314(n+2)])`
-/

namespace A060955.P18053027245323099931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A060955.P18053027245323099931

/-! ## A060955.P802530585095843561

`A060240(eq[A036039(n+1), A111786(n+1)])`
-/

namespace A060955.P802530585095843561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A060955.P802530585095843561

/-!
# A060956: Leading digit of 3^n.

The programs for A060956, the canonical program `A060956.P15005000718154925161` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060956 has offset 0).

The definition of A060956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060956.P15005000718154925161

`floor(3^n/10^floor(n*log(3)/log(10)))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060956

/-- `floor(3^n/10^floor(n*log(3)/log(10)))` -/
def P15005000718154925161.Spec : Prop :=
  ∀ n, P15005000718154925161.a n = A060956 n

theorem P15005000718154925161.correct : P15005000718154925161.Spec := by
  intro n
  simp only [A060956]

end A060956

/-! ## A060956.P10785874943477226737

`A004167(n)%10`
-/

namespace A060956.P10785874943477226737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004167 n) 10

end

end A060956.P10785874943477226737

namespace A060956

/-- `A004167(n)%10` -/
def P10785874943477226737.Spec : Prop :=
  ∀ n, P10785874943477226737.a n = A060956 n

end A060956

/-! ## A060956.P4373042772198659816

`A008564(lt[A243366(n), A329193(n+3)])`
-/

namespace A060956.P4373042772198659816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243366 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329193 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008564 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A060956.P4373042772198659816

namespace A060956

/-- `A008564(lt[A243366(n), A329193(n+3)])` -/
def P4373042772198659816.Spec : Prop :=
  ∀ n, P4373042772198659816.a n = A060956 n

end A060956

/-! ## A060956.P5803490878286949607

`A138028(∑[n+3]+1)`
-/

namespace A060956.P5803490878286949607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060956.P5803490878286949607

namespace A060956

/-- `A138028(∑[n+3]+1)` -/
def P5803490878286949607.Spec : Prop :=
  ∀ n, P5803490878286949607.a n = A060956 n

end A060956

/-! ## A060956.P17063271730275256270

`A367556(A069476(n))`
-/

namespace A060956.P17063271730275256270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367556 (A069476 n).toNat

end

end A060956.P17063271730275256270

namespace A060956

/-- `A367556(A069476(n))` -/
def P17063271730275256270.Spec : Prop :=
  ∀ n, P17063271730275256270.a n = A060956 n

end A060956

/-!
# A060957: Number of different products (including the empty product) of any subset of {1, 2, 3, ..., n}.

The programs for A060957, there is no canonical definition to state claims against.
-/

/-! ## A060957.P659307865998780825

`A130130(n)!*A263292(n)`
-/

namespace A060957.P659307865998780825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A130130 n).toNat : ℤ) * A263292 n

end

end A060957.P659307865998780825

/-! ## A060957.P18060707647613673661

`round(sqrt(A096143(n+2)))*A263292(n)`
-/

namespace A060957.P18060707647613673661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A096143 (n + 2) : ℝ)) * A263292 n

end

end A060957.P18060707647613673661

/-! ## A060957.P6057129443479293619

`A000034(A019426(n))*A263292(n)`
-/

namespace A060957.P6057129443479293619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A019426 n).toNat * A263292 n

end

end A060957.P6057129443479293619

/-! ## A060957.P6705515824505754415

`A020639(A075526(n))*A263292(n)`
-/

namespace A060957.P6705515824505754415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A075526 n).toNat * A263292 n

end

end A060957.P6705515824505754415

/-! ## A060957.P15963148513481620220

`A020639(A214078(n))*A263292(n)`
-/

namespace A060957.P15963148513481620220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A214078 n).toNat * A263292 n

end

end A060957.P15963148513481620220

/-!
# A060959: Table by antidiagonals of generalized Fibonacci numbers: T(n,k) = T(n,k-1) + n*T(n,k-2) with T(n,0)=0 and T(n,1)=1.

The programs for A060959, there is no canonical definition to state claims against.
-/

/-! ## A060959.P12533350118383927700

`A083856(∑[2*n]%comp[∑[n]])`
-/

namespace A060959.P12533350118383927700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A060959.P12533350118383927700

/-! ## A060959.P5284268442285803051

`A083856(∑[char[∑[n]]]²-(n+1))`
-/

namespace A060959.P5284268442285803051
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A060959.P5284268442285803051

/-! ## A060959.P12178776983694458939

`A057427(n)*A083856(A061579(n))`
-/

namespace A060959.P12178776983694458939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A083856 (A061579 n).toNat

end

end A060959.P12178776983694458939

/-! ## A060959.P10487209443232533542

`lcm(A083856(A061579(n)), A165471(n))`
-/

namespace A060959.P10487209443232533542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083856 (A061579 n).toNat) (A165471 n)

end

end A060959.P10487209443232533542

/-! ## A060959.P8287852500512410242

`A083856(A061579(n))%A272919(n+1)`
-/

namespace A060959.P8287852500512410242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083856 (A061579 n).toNat) (A272919 (n + 1))

end

end A060959.P8287852500512410242

/-! ## A060959.P12746511562875592461

`A083856(A000124(n))*A083856(A061579(n))`
-/

namespace A060959.P12746511562875592461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 (A000124 n).toNat * A083856 (A061579 n).toNat

end

end A060959.P12746511562875592461

/-!
# A060961: Number of compositions (ordered partitions) of n into 1's, 3's and 5's.

The programs for A060961, the canonical program `A060961.P12113453787156718328` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060961 has offset 0).

The definition of A060961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060961.P12113453787156718328

`a(n-1)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060961

/-- `a(n-1)+a(n-3)+a(n-5)` -/
def P12113453787156718328.Spec : Prop :=
  ∀ n, (P12113453787156718328.a n : ℤ) = A060961 n

theorem P12113453787156718328.correct : P12113453787156718328.Spec := by
  intro n
  simp only [A060961]

end A060961

/-! ## A060961.P14462247882754042674

`ogf(-1/(-1+x+x^3+x^5))`
-/

namespace A060961.P14462247882754042674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -1, 0, -1] n

end

end A060961.P14462247882754042674

namespace A060961

/-- `ogf(-1/(-1+x+x^3+x^5))` -/
def P14462247882754042674.Spec : Prop :=
  ∀ n, P14462247882754042674.a n = A060961 n

end A060961

/-! ## A060961.P2073758544873959023

`A013983(abs(1-n))+A013983(n)`
-/

namespace A060961.P2073758544873959023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013983 |1 - (n : ℤ)|.toNat + A013983 n

end

end A060961.P2073758544873959023

namespace A060961

/-- `A013983(abs(1-n))+A013983(n)` -/
def P2073758544873959023.Spec : Prop :=
  ∀ n, P2073758544873959023.a n = A060961 n

end A060961

/-! ## A060961.P7157156126843325538

`(A109543(n+2)+A109543(n))/2`
-/

namespace A060961.P7157156126843325538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109543 (n + 2) + A109543 n : ℚ) / 2

end

end A060961.P7157156126843325538

namespace A060961

/-- `(A109543(n+2)+A109543(n))/2` -/
def P7157156126843325538.Spec : Prop :=
  ∀ n, P7157156126843325538.a n = (A060961 n : ℚ)

end A060961

/-! ## A060961.P9454948490750573498

`Δ[A109543(n+4)/2]`
-/

namespace A060961.P9454948490750573498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109543 (n + 4) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060961.P9454948490750573498

namespace A060961

/-- `Δ[A109543(n+4)/2]` -/
def P9454948490750573498.Spec : Prop :=
  ∀ n, P9454948490750573498.a n = (A060961 n : ℚ)

end A060961

/-! ## A060961.P8499724489512706279

`A246690(eq[27, A004736(n+1)])`
-/

namespace A060961.P8499724489512706279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060961.P8499724489512706279

namespace A060961

/-- `A246690(eq[27, A004736(n+1)])` -/
def P8499724489512706279.Spec : Prop :=
  ∀ n, P8499724489512706279.a n = A060961 n

end A060961

/-!
# A060962: Expansion of (1+x^2)*(1+x^5)/( Product_{j=1..7} (1-x^j) ).

The programs for A060962, there is no canonical definition to state claims against.
-/

/-! ## A060962.P8057491331007801078

`A003056((n+1)*A237753(3*n+2))`
-/

namespace A060962.P8057491331007801078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n + 1 : ℤ) * A237753 (3 * n + 2)).toNat

end

end A060962.P8057491331007801078

/-! ## A060962.P8242479162206075190

`A002024(A321620(3*n)+A240496(3*n))`
-/

namespace A060962.P8242479162206075190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A321620 (3 * n) + A240496 (3 * n)).toNat

end

end A060962.P8242479162206075190

/-! ## A060962.P2842862676396519243

`A004964(A303858(n+8))%A303858(n+8)`
-/

namespace A060962.P2842862676396519243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004964 (A303858 (n + 8)).toNat) (A303858 (n + 8))

end

end A060962.P2842862676396519243

/-! ## A060962.P17693480414538529045

`or(A132462(3*n+4), A135387(A323531(2*(n+2))))`
-/

namespace A060962.P17693480414538529045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132462 (3 * n + 4)) (A135387 (A323531 (2 * (n + 2))).toNat)

end

end A060962.P17693480414538529045

/-! ## A060962.P17293251636322394894

`A003059(A005515(n))`
-/

namespace A060962.P17293251636322394894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A005515 (n + 10)).toNat

end

end A060962.P17293251636322394894

/-!
# A060963: Number of pairings of the first 2n positive integers so that the absolute differences of each pair are different.

The programs for A060963, there is no canonical definition to state claims against.
-/

/-! ## A060963.P16790669430405476322

`A098181(A258416(n+2)%A005867(n))`
-/

namespace A060963.P16790669430405476322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (Int.tmod (A258416 (n + 2)) (A005867 n)).toNat

end

end A060963.P16790669430405476322

/-! ## A060963.P3532398233623450723

`A115345(A076865(n))`
-/

namespace A060963.P3532398233623450723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115345 (A076865 n).toNat

end

end A060963.P3532398233623450723

/-!
# A060965: For p=prime(n), a(n) = number of points (x,y) on the elliptic curve x^3 + y^3 = 1 (mod p), including the point at infinity.

The programs for A060965, there is no canonical definition to state claims against.
-/

/-! ## A060965.P10381095701844617945

`A087412(Δ[A007504(n)])+1`
-/

namespace A060965.P10381095701844617945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087412 (f1 (n + 1) - f1 n).toNat + 1

end

end A060965.P10381095701844617945

/-! ## A060965.P4773634624313622995

`∑{d}[Δ[A007504(n)], A087412(#)]`
-/

namespace A060965.P4773634624313622995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087412 d

end

end A060965.P4773634624313622995

/-! ## A060965.P7622205671544545175

`A087412(A000040(n+1))+1`
-/

namespace A060965.P7622205671544545175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087412 (A000040 (n + 1)).toNat + 1

end

end A060965.P7622205671544545175

/-! ## A060965.P15435609644533367290

`A087412(record[A006530(n+2)])+1`
-/

namespace A060965.P15435609644533367290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A060965.P15435609644533367290

/-! ## A060965.P5218268793950325761

`A087412(record[A014963(n+2)])+1`
-/

namespace A060965.P5218268793950325761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A060965.P5218268793950325761

/-! ## A060965.P7772599631930839332

`A087412(record[A020639(n+2)])+1`
-/

namespace A060965.P7772599631930839332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A060965.P7772599631930839332

/-! ## A060965.P7541834899168484577

`∑{d}[A000040(-xor(n, -1)), A087412(#)]`
-/

namespace A060965.P7541834899168484577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087412 d

end

end A060965.P7541834899168484577

/-!
# A060967: Number of squared primes <= 2^n.

The programs for A060967, the canonical program `A060967.P12225233603475588556` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060967 has offset 0).

The definition of A060967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060967.P12225233603475588556

`A000720(A017910(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060967

/-- `A000720(A017910(n))` -/
def P12225233603475588556.Spec : Prop :=
  ∀ n, P12225233603475588556.a n = A060967 n

theorem P12225233603475588556.correct : P12225233603475588556.Spec := by
  intro n
  simp only [A060967]

end A060967

/-! ## A060967.P14765441548787669120

`A060970(2*n)`
-/

namespace A060967.P14765441548787669120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060970 (2 * n)

end

end A060967.P14765441548787669120

namespace A060967

/-- `A060970(2*n)` -/
def P14765441548787669120.Spec : Prop :=
  ∀ n, P14765441548787669120.a n = A060967 n

end A060967

/-! ## A060967.P6360435281375790237

`and(-1, A060970(A004277(n)))`
-/

namespace A060967.P6360435281375790237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A060970 (A004277 n).toNat)

end

end A060967.P6360435281375790237

namespace A060967

/-- `and(-1, A060970(A004277(n)))` -/
def P6360435281375790237.Spec : Prop :=
  ∀ n, P6360435281375790237.a n = A060967 n

end A060967

/-! ## A060967.P11102185522530966941

`and(-1, A060970(A005843(n)))`
-/

namespace A060967.P11102185522530966941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A060970 (A005843 n).toNat)

end

end A060967.P11102185522530966941

namespace A060967

/-- `and(-1, A060970(A005843(n)))` -/
def P11102185522530966941.Spec : Prop :=
  ∀ n, P11102185522530966941.a n = A060967 n

end A060967

/-! ## A060967.P5559815569901041069

`A060970(A005843(n))+char[A065403(n+3)]`
-/

namespace A060967.P5559815569901041069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065403 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060970 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A060967.P5559815569901041069

namespace A060967

/-- `A060970(A005843(n))+char[A065403(n+3)]` -/
def P5559815569901041069.Spec : Prop :=
  ∀ n, P5559815569901041069.a n = A060967 n

end A060967

/-! ## A060967.P2064477741681650840

`A060970(A005843(n))^A008836(A046306(n+1))`
-/

namespace A060967.P2064477741681650840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060970 (A005843 n).toNat : ℚ) ^ (A008836 (A046306 (n + 1)).toNat : ℤ)

end

end A060967.P2064477741681650840

namespace A060967

/-- `A060970(A005843(n))^A008836(A046306(n+1))` -/
def P2064477741681650840.Spec : Prop :=
  ∀ n, P2064477741681650840.a n = (A060967 n : ℚ)

end A060967

/-! ## A060967.P7334675416751115975

`A060970(A005843(n))^A008836(A110227(n+1))`
-/

namespace A060967.P7334675416751115975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060970 (A005843 n).toNat : ℚ) ^ (A008836 (A110227 (n + 1)).toNat : ℤ)

end

end A060967.P7334675416751115975

namespace A060967

/-- `A060970(A005843(n))^A008836(A110227(n+1))` -/
def P7334675416751115975.Spec : Prop :=
  ∀ n, P7334675416751115975.a n = (A060967 n : ℚ)

end A060967

/-! ## A060967.P9797546261731724432

`A060970(A005843(n))^A008836(A110231(n+1))`
-/

namespace A060967.P9797546261731724432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060970 (A005843 n).toNat : ℚ) ^ (A008836 (A110231 (n + 1)).toNat : ℤ)

end

end A060967.P9797546261731724432

namespace A060967

/-- `A060970(A005843(n))^A008836(A110231(n+1))` -/
def P9797546261731724432.Spec : Prop :=
  ∀ n, P9797546261731724432.a n = (A060967 n : ℚ)

end A060967

/-!
# A060968: Number of solutions to x^2 + y^2 == 1 (mod n).

The programs for A060968, the canonical program `A060968.P17331185296749833849` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060968 has offset 1).

The definition of A060968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060968.P4875604034755795017

`A182039(n+1)/A060594(n+1)`
-/

namespace A060968.P4875604034755795017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182039 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A060968.P4875604034755795017

namespace A060968

/-- `A182039(n+1)/A060594(n+1)` -/
def P4875604034755795017.Spec : Prop :=
  ∀ n, P4875604034755795017.a n = (A060968 (n + 1) : ℚ)

end A060968

/-! ## A060968.P8523350721242096665

`gcd(4, n+1)*A204617(n+1)`
-/

namespace A060968.P8523350721242096665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n + 1) : ℤ) * A204617 (n + 1)

end

end A060968.P8523350721242096665

namespace A060968

/-- `gcd(4, n+1)*A204617(n+1)` -/
def P8523350721242096665.Spec : Prop :=
  ∀ n, P8523350721242096665.a n = A060968 (n + 1)

end A060968

/-! ## A060968.P17331185296749833849

`A177704(n)*A395768(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060968

/-- `A177704(n)*A395768(n+1)` -/
def P17331185296749833849.Spec : Prop :=
  ∀ n, P17331185296749833849.a n = A060968 (n + 1)

theorem P17331185296749833849.correct : P17331185296749833849.Spec := by
  intro n
  simp only [A060968, Nat.add_sub_cancel]

end A060968

/-! ## A060968.P12750132094687867199

`Δ[A047514(n+1)]*A204617(n+1)`
-/

namespace A060968.P12750132094687867199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A204617 (n + 1)

end

end A060968.P12750132094687867199

namespace A060968

/-- `Δ[A047514(n+1)]*A204617(n+1)` -/
def P12750132094687867199.Spec : Prop :=
  ∀ n, P12750132094687867199.a n = A060968 (n + 1)

end A060968

/-! ## A060968.P10600870736010594283

`gcd(A008586(A204617(n+1)), A086932(n+1))`
-/

namespace A060968.P10600870736010594283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008586 (A204617 (n + 1)).toNat) (A086932 (n + 1))

end

end A060968.P10600870736010594283

namespace A060968

/-- `gcd(A008586(A204617(n+1)), A086932(n+1))` -/
def P10600870736010594283.Spec : Prop :=
  ∀ n, (P10600870736010594283.a n : ℤ) = A060968 (n + 1)

end A060968

/-! ## A060968.P9922066189856570507

`A208895(n+1)/A227553(n+1)`
-/

namespace A060968.P9922066189856570507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208895 (n + 1) : ℚ) / (A227553 (n + 1) : ℚ)

end

end A060968.P9922066189856570507

namespace A060968

/-- `A208895(n+1)/A227553(n+1)` -/
def P9922066189856570507.Spec : Prop :=
  ∀ n, P9922066189856570507.a n = (A060968 (n + 1) : ℚ)

end A060968

/-! ## A060968.P16136324103887556634

`A305191(A133263(n))`
-/

namespace A060968.P16136324103887556634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A133263 n).toNat

end

end A060968.P16136324103887556634

namespace A060968

/-- `A305191(A133263(n))` -/
def P16136324103887556634.Spec : Prop :=
  ∀ n, P16136324103887556634.a n = A060968 (n + 1)

end A060968

/-! ## A060968.P5465895218483675758

`A305191(A238531(n+1))`
-/

namespace A060968.P5465895218483675758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A238531 (n + 1)).toNat

end

end A060968.P5465895218483675758

namespace A060968

/-- `A305191(A238531(n+1))` -/
def P5465895218483675758.Spec : Prop :=
  ∀ n, P5465895218483675758.a n = A060968 (n + 1)

end A060968

/-! ## A060968.P826421718613853224

`A305191(A266259(n)+1)`
-/

namespace A060968.P826421718613853224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A266259 n + 1).toNat

end

end A060968.P826421718613853224

namespace A060968

/-- `A305191(A266259(n)+1)` -/
def P826421718613853224.Spec : Prop :=
  ∀ n, P826421718613853224.a n = A060968 (n + 1)

end A060968

/-! ## A060968.P8946614202844289506

`A305191(A020639(n+1)+∑[n])`
-/

namespace A060968.P8946614202844289506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A020639 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A060968.P8946614202844289506

namespace A060968

/-- `A305191(A020639(n+1)+∑[n])` -/
def P8946614202844289506.Spec : Prop :=
  ∀ n, P8946614202844289506.a n = A060968 (n + 1)

end A060968

/-! ## A060968.P10075629937401670155

`A305191(A294453(∑[n+1]+2)+n)`
-/

namespace A060968.P10075629937401670155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A294453 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + (n : ℤ)).toNat

end

end A060968.P10075629937401670155

namespace A060968

/-- `A305191(A294453(∑[n+1]+2)+n)` -/
def P10075629937401670155.Spec : Prop :=
  ∀ n, P10075629937401670155.a n = A060968 (n + 1)

end A060968

/-!
# A060969: Number of cubes of primes <= 2^n.

The programs for A060969, the canonical program `A060969.P5244792844776780560` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060969 has offset 0).

The definition of A060969 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A017979, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060969.P5244792844776780560

`A000720(A017979(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060969

/-- `A000720(A017979(n))` -/
def P5244792844776780560.Spec : Prop :=
  ∀ n, P5244792844776780560.a n = A060969 n

theorem P5244792844776780560.correct : P5244792844776780560.Spec := by
  intro n
  simp only [A060969]

end A060969

/-! ## A060969.P5283972601570652909

`A000720(floor(2^(n/3)))`
-/

namespace A060969.P5283972601570652909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(2 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋.toNat

end

end A060969.P5283972601570652909

namespace A060969

/-- `A000720(floor(2^(n/3)))` -/
def P5283972601570652909.Spec : Prop :=
  ∀ n, P5283972601570652909.a n = A060969 n

end A060969

/-! ## A060969.P4853620903183582024

`A056811(A017985(n))`
-/

namespace A060969.P4853620903183582024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A017985 n).toNat

end

end A060969.P4853620903183582024

namespace A060969

/-- `A056811(A017985(n))` -/
def P4853620903183582024.Spec : Prop :=
  ∀ n, P4853620903183582024.a n = A060969 n

end A060969

/-! ## A060969.P99347987171959200

`A056811(A017986(n))`
-/

namespace A060969.P99347987171959200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A017986 n).toNat

end

end A060969.P99347987171959200

namespace A060969

/-- `A056811(A017986(n))` -/
def P99347987171959200.Spec : Prop :=
  ∀ n, P99347987171959200.a n = A060969 n

end A060969

/-! ## A060969.P4965026168925683143

`A056811(A017987(n))`
-/

namespace A060969.P4965026168925683143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A017987 n).toNat

end

end A060969.P4965026168925683143

namespace A060969

/-- `A056811(A017987(n))` -/
def P4965026168925683143.Spec : Prop :=
  ∀ n, P4965026168925683143.a n = A060969 n

end A060969

/-!
# A060970: Number of fourth powers of primes <= 2^n.

The programs for A060970, the canonical program `A060970.P18394782073799357360` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060970 has offset 0).

The definition of A060970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A018048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060970.P18394782073799357360

`A000720(A018048(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060970

/-- `A000720(A018048(n))` -/
def P18394782073799357360.Spec : Prop :=
  ∀ n, P18394782073799357360.a n = A060970 n

theorem P18394782073799357360.correct : P18394782073799357360.Spec := by
  intro n
  simp only [A060970]

end A060970

/-! ## A060970.P3704018816751193056

`A000720(floor(2^(n/4)))`
-/

namespace A060970.P3704018816751193056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(2 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat

end

end A060970.P3704018816751193056

namespace A060970

/-- `A000720(floor(2^(n/4)))` -/
def P3704018816751193056.Spec : Prop :=
  ∀ n, P3704018816751193056.a n = A060970 n

end A060970

/-! ## A060970.P9775781746982920965

`A095117(floor(2^(n/4)))-floor(2^(n/4))`
-/

namespace A060970.P9775781746982920965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 ⌊(2 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat - ⌊(2 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A060970.P9775781746982920965

namespace A060970

/-- `A095117(floor(2^(n/4)))-floor(2^(n/4))` -/
def P9775781746982920965.Spec : Prop :=
  ∀ n, P9775781746982920965.a n = A060970 n

end A060970

/-! ## A060970.P582412874781804267

`A056811(ceil(sqrt(∑{d}[n+1, #%2]+2^n))-1)`
-/

namespace A060970.P582412874781804267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (⌈Real.sqrt ((∑ d ∈ Nat.divisors (f1 n), d % 2 + 2 ^ n : ℕ) : ℝ)⌉ - 1).toNat

end

end A060970.P582412874781804267

namespace A060970

/-- `A056811(ceil(sqrt(∑{d}[n+1, #%2]+2^n))-1)` -/
def P582412874781804267.Spec : Prop :=
  ∀ n, P582412874781804267.a n = A060970 n

end A060970

/-! ## A060970.P391975895982137648

`A056811(A017910(n))`
-/

namespace A060970.P391975895982137648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A017910 n).toNat

end

end A060970.P391975895982137648

namespace A060970

/-- `A056811(A017910(n))` -/
def P391975895982137648.Spec : Prop :=
  ∀ n, P391975895982137648.a n = A060970 n

end A060970

/-!
# A060971: Number of fifth powers of primes <= 2^n.

The programs for A060971, the canonical program `A060971.P12339436187900354391` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060971 has offset 0).

The definition of A060971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A018117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060971.P12339436187900354391

`A000720(A018117(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060971

/-- `A000720(A018117(n))` -/
def P12339436187900354391.Spec : Prop :=
  ∀ n, P12339436187900354391.a n = A060971 n

theorem P12339436187900354391.correct : P12339436187900354391.Spec := by
  intro n
  simp only [A060971]

end A060971

/-! ## A060971.P14493783791966119659

`A000720(floor(2^(n/5)))`
-/

namespace A060971.P14493783791966119659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(2 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋.toNat

end

end A060971.P14493783791966119659

namespace A060971

/-- `A000720(floor(2^(n/5)))` -/
def P14493783791966119659.Spec : Prop :=
  ∀ n, P14493783791966119659.a n = A060971 n

end A060971

/-! ## A060971.P8673362289054658497

`A000720(floor(root(2^n, 5)))%A000041(n)`
-/

namespace A060971.P8673362289054658497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 ⌊(2 ^ n : ℝ) ^ (1 / (5 : ℝ))⌋.toNat) (A000041 n)

end

end A060971.P8673362289054658497

namespace A060971

/-- `A000720(floor(root(2^n, 5)))%A000041(n)` -/
def P8673362289054658497.Spec : Prop :=
  ∀ n, P8673362289054658497.a n = A060971 n

end A060971

/-! ## A060971.P18296315496564705735

`A000720(floor(root(2^n, 5)))+A000007(2*(n+2))`
-/

namespace A060971.P18296315496564705735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(2 ^ n : ℝ) ^ (1 / (5 : ℝ))⌋.toNat + A000007 (2 * (n + 2))

end

end A060971.P18296315496564705735

namespace A060971

/-- `A000720(floor(root(2^n, 5)))+A000007(2*(n+2))` -/
def P18296315496564705735.Spec : Prop :=
  ∀ n, P18296315496564705735.a n = A060971 n

end A060971

/-! ## A060971.P3153961625649948400

`A056811(A018123(n))`
-/

namespace A060971.P3153961625649948400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A018123 n).toNat

end

end A060971.P3153961625649948400

namespace A060971

/-- `A056811(A018123(n))` -/
def P3153961625649948400.Spec : Prop :=
  ∀ n, P3153961625649948400.a n = A060971 n

end A060971

/-!
# A060972: Triangle giving numbers of closed plane meanders.

The programs for A060972, there is no canonical definition to state claims against.
-/

/-! ## A060972.P9532158890779782421

`2*A056940(n)-A048264(A124216(n))`
-/

namespace A060972.P9532158890779782421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056940 n - A048264 (A124216 n).toNat

end

end A060972.P9532158890779782421

/-! ## A060972.P6174211308931325953

`2*A275823(A156587(n))-A056939(n)`
-/

namespace A060972.P6174211308931325953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275823 (A156587 n).toNat - A056939 n

end

end A060972.P6174211308931325953

/-! ## A060972.P17980593337162474631

`A275823(A156587(n))+A123575(A056939(n))`
-/

namespace A060972.P17980593337162474631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275823 (A156587 n).toNat + A123575 (A056939 n).toNat

end

end A060972.P17980593337162474631

/-! ## A060972.P16287548500712638083

`A004275(A157221(n))`
-/

namespace A060972.P16287548500712638083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A157221 n).toNat

end

end A060972.P16287548500712638083

/-! ## A060972.P7123363022654078097

`A034298(A157268(n))`
-/

namespace A060972.P7123363022654078097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A157268 n).toNat

end

end A060972.P7123363022654078097

/-!
# A060973: a(2*n+1) = a(n+1)+a(n), a(2*n) = 2*a(n), with a(1)=0 and a(2)=1.

The programs for A060973, the canonical program `A060973.P9569280493827899348` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060973 has offset 1).

The definition of A060973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060973.P9569280493827899348

`n+1-A006165(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060973

/-- `n+1-A006165(n+1)` -/
def P9569280493827899348.Spec : Prop :=
  ∀ n, P9569280493827899348.a n = A060973 (n + 1)

theorem P9569280493827899348.correct : P9569280493827899348.Spec := by
  intro n
  simp only [A060973, Nat.add_sub_cancel]

end A060973

/-! ## A060973.P10133403067899235436

`∑[a(floor(n/2))²]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A060973.P10133403067899235436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060973.P10133403067899235436

namespace A060973

/-- `∑[a(floor(n/2))²]` -/
def P10133403067899235436.Spec : Prop :=
  ∀ n, (P10133403067899235436.a n : ℤ) = A060973 (n + 1)

end A060973

/-! ## A060973.P17154763560819494494

`∑[floor(a(floor(n/2)))]` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A060973.P17154763560819494494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060973.P17154763560819494494

namespace A060973

/-- `∑[floor(a(floor(n/2)))]` -/
def P17154763560819494494.Spec : Prop :=
  ∀ n, (P17154763560819494494.a n : ℤ) = A060973 (n + 1)

end A060973

/-! ## A060973.P6701631115258204863

`∑[char[or(n, a(n-1)+1)]]` with `a(0)=1`
-/

namespace A060973.P6701631115258204863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.lor n (f2 (n - 1) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060973.P6701631115258204863

namespace A060973

/-- `∑[char[or(n, a(n-1)+1)]]` -/
def P6701631115258204863.Spec : Prop :=
  ∀ n, (P6701631115258204863.a n : ℤ) = A060973 (n + 1)

end A060973

/-! ## A060973.P15087370258917386385

`a(n-1)+C(n, or(n, a(n-1)))` with `a(0)=0`
-/

namespace A060973.P15087370258917386385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose n (Nat.lor n (a (n - 1)))

end

end A060973.P15087370258917386385

namespace A060973

/-- `a(n-1)+C(n, or(n, a(n-1)))` -/
def P15087370258917386385.Spec : Prop :=
  ∀ n, (P15087370258917386385.a n : ℤ) = A060973 (n + 1)

end A060973

/-! ## A060973.P3074529881204790871

`a(floor((n-1)/2))+a(ceil((n-1)/2))` with `a(0)=0, a(1)=1`
-/

namespace A060973.P3074529881204790871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A060973.P3074529881204790871

namespace A060973

/-- `a(floor((n-1)/2))+a(ceil((n-1)/2))` -/
def P3074529881204790871.Spec : Prop :=
  ∀ n, (P3074529881204790871.a n : ℤ) = A060973 (n + 1)

end A060973

/-! ## A060973.P17642969103719782005

`char[or(a(n-1)+1, n-1)]+a(n-1)` with `a(0)=0`
-/

namespace A060973.P17642969103719782005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor (f1 (n - 1) + 1) ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A060973.P17642969103719782005

namespace A060973

/-- `char[or(a(n-1)+1, n-1)]+a(n-1)` -/
def P17642969103719782005.Spec : Prop :=
  ∀ n, (P17642969103719782005.a n : ℤ) = A060973 (n + 1)

end A060973

/-! ## A060973.P10149226596301992385

`a(n-1)+C(and(n, a(n-1)), a(n-1))` with `a(0)=0`
-/

namespace A060973.P10149226596301992385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (Nat.land n (a (n - 1))) (a (n - 1))

end

end A060973.P10149226596301992385

namespace A060973

/-- `a(n-1)+C(and(n, a(n-1)), a(n-1))` -/
def P10149226596301992385.Spec : Prop :=
  ∀ n, (P10149226596301992385.a n : ℤ) = A060973 (n + 1)

end A060973

/-! ## A060973.P17972437314557043226

`2*n-comp[lt[2*n+1, xor(n, 2*n)]+n]`
-/

namespace A060973.P17972437314557043226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A060973.P17972437314557043226

namespace A060973

/-- `2*n-comp[lt[2*n+1, xor(n, 2*n)]+n]` -/
def P17972437314557043226.Spec : Prop :=
  ∀ n, P17972437314557043226.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P10755606033626537755

`A166079(n+2)-1`
-/

namespace A060973.P10755606033626537755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (n + 2) - 1

end

end A060973.P10755606033626537755

namespace A060973

/-- `A166079(n+2)-1` -/
def P10755606033626537755.Spec : Prop :=
  ∀ n, P10755606033626537755.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P17115763948231238841

`2*n-A294456(n+1)`
-/

namespace A060973.P17115763948231238841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A294456 (n + 1)

end

end A060973.P17115763948231238841

namespace A060973

/-- `2*n-A294456(n+1)` -/
def P17115763948231238841.Spec : Prop :=
  ∀ n, P17115763948231238841.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P16524535109246021653

`∑[char[A004760(n+1)]]-1`
-/

namespace A060973.P16524535109246021653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A060973.P16524535109246021653

namespace A060973

/-- `∑[char[A004760(n+1)]]-1` -/
def P16524535109246021653.Spec : Prop :=
  ∀ n, P16524535109246021653.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P13635111767260306454

`comp[A004761(2*(n+1))]-n`
-/

namespace A060973.P13635111767260306454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A060973.P13635111767260306454

namespace A060973

/-- `comp[A004761(2*(n+1))]-n` -/
def P13635111767260306454.Spec : Prop :=
  ∀ n, P13635111767260306454.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P2779523049776954372

`2*(n+1)-A275202(n+1)`
-/

namespace A060973.P2779523049776954372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A275202 (n + 1)

end

end A060973.P2779523049776954372

namespace A060973

/-- `2*(n+1)-A275202(n+1)` -/
def P2779523049776954372.Spec : Prop :=
  ∀ n, P2779523049776954372.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P8137930565124471082

`n+1-∑[and(1, A145342(n+1))]`
-/

namespace A060973.P8137930565124471082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A145342 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060973.P8137930565124471082

namespace A060973

/-- `n+1-∑[and(1, A145342(n+1))]` -/
def P8137930565124471082.Spec : Prop :=
  ∀ n, P8137930565124471082.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P5699409537745091939

`A024000(A006165(n+1))+n`
-/

namespace A060973.P5699409537745091939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A006165 (n + 1)).toNat + (n : ℤ)

end

end A060973.P5699409537745091939

namespace A060973

/-- `A024000(A006165(n+1))+n` -/
def P5699409537745091939.Spec : Prop :=
  ∀ n, P5699409537745091939.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P12096863731879133920

`A163300(n+1)%A275202(n+1)`
-/

namespace A060973.P12096863731879133920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A275202 (n + 1))

end

end A060973.P12096863731879133920

namespace A060973

/-- `A163300(n+1)%A275202(n+1)` -/
def P12096863731879133920.Spec : Prop :=
  ∀ n, P12096863731879133920.a n = A060973 (n + 1)

end A060973

/-! ## A060973.P6040529645143305087

`A352228(n+2)`
-/

namespace A060973.P6040529645143305087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (n + 2)

end

end A060973.P6040529645143305087

namespace A060973

/-- `A352228(n+2)` -/
def P6040529645143305087.Spec : Prop :=
  ∀ n, P6040529645143305087.a n = A060973 (n + 1)

end A060973

/-!
# A060974: Irregular primes with irregularity > 1.

The programs for A060974, there is no canonical definition to state claims against.
-/

/-! ## A060974.P9758500955966297519

`p?[A000928(n+1)%(A000928(n+1)*A091887(n+1))]`
-/

namespace A060974.P9758500955966297519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000928 (n + 1)) (A000928 (n + 1) * A091887 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060974.P9758500955966297519

/-! ## A060974.P15557435755887085862

`A000040(lt[1, A091888(n+2)]+2)`
-/

namespace A060974.P15557435755887085862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A060974.P15557435755887085862

/-! ## A060974.P17658053133197870851

`record[gcd(A090798(n+8), A090798(n+9))]`
-/

namespace A060974.P17658053133197870851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090798 (n + 8)) (A090798 (n + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060974.P17658053133197870851

/-! ## A060974.P7447652077035072406

`A028310(∪[A060975(n+1), A073277(n+1)])`
-/

namespace A060974.P7447652077035072406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073277 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A060974.P7447652077035072406

/-! ## A060974.P2950868905218422496

`A254667(∪[A060975(n+1), A073277(n+1)])`
-/

namespace A060974.P2950868905218422496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073277 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A060974.P2950868905218422496

/-! ## A060974.P5162077972298580284

`∪[A060975(n+1), A073277(n+1)]%A219335(n+1)`
-/

namespace A060974.P5162077972298580284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073277 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A219335 (n + 1))

end

end A060974.P5162077972298580284

/-!
# A060975: Irregular primes with irregularity index three.

The programs for A060975, there is no canonical definition to state claims against.
-/

/-! ## A060975.P15272601696614358494

`p?[(A091887(n+1)-2)*A000928(n+1)]`
-/

namespace A060975.P15272601696614358494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091887 (n + 1) - 2) * A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060975.P15272601696614358494

/-! ## A060975.P17709321447359490204

`A000040(eq[3, A091888(n+2)]+2)`
-/

namespace A060975.P17709321447359490204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A060975.P17709321447359490204

/-! ## A060975.P18428586753978066882

`or(1, A065091(eq[3, A091888(n+2)]+1))`
-/

namespace A060975.P18428586753978066882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A060975.P18428586753978066882

/-! ## A060975.P6017600722430137722

`p?[(A091888(n+2)-2)*A065091(n+1)]`
-/

namespace A060975.P6017600722430137722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091888 (n + 2) - 2) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060975.P6017600722430137722

/-! ## A060975.P4022319983354821037

`A006093((eq[3, A091888(n+2)]-1)^A055642(n)+3)+1`
-/

namespace A060975.P4022319983354821037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.roundAway (((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1 : ℚ) ^ (A055642 n : ℤ) + 3)).toNat + 1

end

end A060975.P4022319983354821037

/-!
# A060976: Odd nonprimes c which divide Bernoulli(2*c).

The programs for A060976, the canonical program `A060976.P3405785496244581185` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060976 has offset 1).

The definition of A060976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3597 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060976.P3699412743341150803

`filter[A069040(n+1), A005171(#)]`
-/

namespace A060976.P3699412743341150803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A060976.P3699412743341150803

namespace A060976

/-- `filter[A069040(n+1), A005171(#)]` -/
def P3699412743341150803.Spec : Prop :=
  ∀ n, P3699412743341150803.a n = A060976 (n + 1)

end A060976

/-! ## A060976.P17547246362383515360

`filter[A069040(n+1), A292438(#)]`
-/

namespace A060976.P17547246362383515360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A060976.P17547246362383515360

namespace A060976

/-- `filter[A069040(n+1), A292438(#)]` -/
def P17547246362383515360.Spec : Prop :=
  ∀ n, P17547246362383515360.a n = A060976 (n + 1)

end A060976

/-! ## A060976.P3057224937496361247

`∩[A014076(n+1), A069040(n+1)]`
-/

namespace A060976.P3057224937496361247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P3057224937496361247

namespace A060976

/-- `∩[A014076(n+1), A069040(n+1)]` -/
def P3057224937496361247.Spec : Prop :=
  ∀ n, (P3057224937496361247.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P3527987785924074499

`∩[A067800(n+1), A069040(n+1)]`
-/

namespace A060976.P3527987785924074499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P3527987785924074499

namespace A060976

/-- `∩[A067800(n+1), A069040(n+1)]` -/
def P3527987785924074499.Spec : Prop :=
  ∀ n, (P3527987785924074499.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P9481796855036523928

`∩[A069040(n+1), A090818(n+1)]`
-/

namespace A060976.P9481796855036523928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P9481796855036523928

namespace A060976

/-- `∩[A069040(n+1), A090818(n+1)]` -/
def P9481796855036523928.Spec : Prop :=
  ∀ n, (P9481796855036523928.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P15516995178282065973

`∩[A069040(n+1), A264828(n+1)]`
-/

namespace A060976.P15516995178282065973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P15516995178282065973

namespace A060976

/-- `∩[A069040(n+1), A264828(n+1)]` -/
def P15516995178282065973.Spec : Prop :=
  ∀ n, (P15516995178282065973.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P6253051856493988244

`∩[A018252(n+1), A069040(n+1)]`
-/

namespace A060976.P6253051856493988244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P6253051856493988244

namespace A060976

/-- `∩[A018252(n+1), A069040(n+1)]` -/
def P6253051856493988244.Spec : Prop :=
  ∀ n, (P6253051856493988244.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P9800377082377566316

`∩[A069040(n+1), A141468(n+1)]`
-/

namespace A060976.P9800377082377566316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P9800377082377566316

namespace A060976

/-- `∩[A069040(n+1), A141468(n+1)]` -/
def P9800377082377566316.Spec : Prop :=
  ∀ n, (P9800377082377566316.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P8217386000345071659

`∩[A069040(n+1), A171993(n+1)]`
-/

namespace A060976.P8217386000345071659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P8217386000345071659

namespace A060976

/-- `∩[A069040(n+1), A171993(n+1)]` -/
def P8217386000345071659.Spec : Prop :=
  ∀ n, (P8217386000345071659.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P8332319175654199725

`∩[A014076(n+1), A229303(n+1)]`
-/

namespace A060976.P8332319175654199725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P8332319175654199725

namespace A060976

/-- `∩[A014076(n+1), A229303(n+1)]` -/
def P8332319175654199725.Spec : Prop :=
  ∀ n, (P8332319175654199725.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P17219941195813489628

`∩[A067800(n+1), A229303(n+1)]`
-/

namespace A060976.P17219941195813489628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P17219941195813489628

namespace A060976

/-- `∩[A067800(n+1), A229303(n+1)]` -/
def P17219941195813489628.Spec : Prop :=
  ∀ n, (P17219941195813489628.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P4081714127361040542

`record[A171435(∩[2*n+1, A229303(n+1)])]`
-/

namespace A060976.P4081714127361040542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060976.P4081714127361040542

namespace A060976

/-- `record[A171435(∩[2*n+1, A229303(n+1)])]` -/
def P4081714127361040542.Spec : Prop :=
  ∀ n, P4081714127361040542.a n = A060976 (n + 1)

end A060976

/-! ## A060976.P3405785496244581185

`record[A171435(A171435(A226872(n+1)))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A060976

/-- `record[A171435(A171435(A226872(n+1)))]` -/
def P3405785496244581185.Spec : Prop :=
  ∀ n, P3405785496244581185.a n = A060976 (n + 1)

theorem P3405785496244581185.correct : P3405785496244581185.Spec := by
  intro n
  simp only [A060976, Nat.add_sub_cancel]

end A060976

/-! ## A060976.P6899473921947284479

`∩[A069040(n+1), A325037(n+1)]`
-/

namespace A060976.P6899473921947284479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P6899473921947284479

namespace A060976

/-- `∩[A069040(n+1), A325037(n+1)]` -/
def P6899473921947284479.Spec : Prop :=
  ∀ n, (P6899473921947284479.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P11350907188797448858

`∩[A069040(n+1), A347202(n+1)]`
-/

namespace A060976.P11350907188797448858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P11350907188797448858

namespace A060976

/-- `∩[A069040(n+1), A347202(n+1)]` -/
def P11350907188797448858.Spec : Prop :=
  ∀ n, (P11350907188797448858.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P7190443517305613450

`∩[A069040(n+1), A257586(n+1)]`
-/

namespace A060976.P7190443517305613450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P7190443517305613450

namespace A060976

/-- `∩[A069040(n+1), A257586(n+1)]` -/
def P7190443517305613450.Spec : Prop :=
  ∀ n, (P7190443517305613450.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P6643977742440558330

`∩[A069040(n+1), A164276(n+1)]`
-/

namespace A060976.P6643977742440558330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P6643977742440558330

namespace A060976

/-- `∩[A069040(n+1), A164276(n+1)]` -/
def P6643977742440558330.Spec : Prop :=
  ∀ n, (P6643977742440558330.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P9100660349610913786

`∩[A056653(n+1), A069040(n+1)]`
-/

namespace A060976.P9100660349610913786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P9100660349610913786

namespace A060976

/-- `∩[A056653(n+1), A069040(n+1)]` -/
def P9100660349610913786.Spec : Prop :=
  ∀ n, (P9100660349610913786.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P8966803067547665134

`∩[A065090(n+1), A069040(n+1)]`
-/

namespace A060976.P8966803067547665134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P8966803067547665134

namespace A060976

/-- `∩[A065090(n+1), A069040(n+1)]` -/
def P8966803067547665134.Spec : Prop :=
  ∀ n, (P8966803067547665134.a n : ℤ) = A060976 (n + 1)

end A060976

/-! ## A060976.P17801268331807791302

`∩[A069040(n+1), A171581(n+1)]`
-/

namespace A060976.P17801268331807791302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060976.P17801268331807791302

namespace A060976

/-- `∩[A069040(n+1), A171581(n+1)]` -/
def P17801268331807791302.Spec : Prop :=
  ∀ n, (P17801268331807791302.a n : ℤ) = A060976 (n + 1)

end A060976

/-!
# A060977: The nonprimes n!+2 ... n!+n are the a(n)-th string of n-1 prime-free consecutive terms, the first such one being the string of composite numbers A000230(k)+1 through A001632(k)-1 when n=2k, or through A001632(k)-2 when n=2k-1.

The programs for A060977, there is no canonical definition to state claims against.
-/

/-! ## A060977.P9958837045418640409

`A059252(∑[A322500(n)])`
-/

namespace A060977.P9958837045418640409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060977.P9958837045418640409

/-! ## A060977.P5180853335737544903

`A268443(A005594(n+1))`
-/

namespace A060977.P5180853335737544903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268443 (A005594 (n + 1)).toNat

end

end A060977.P5180853335737544903

/-!
# A060978: |First digit - second digit + third digit - fourth digit ...| = 10.

The programs for A060978, the canonical program `A060978.P9465525614971023355` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060978 has offset 1).

The definition of A060978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060978.P9465525614971023355

`eq[10, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060978

/-- `eq[10, abs(A055017(n))]` -/
def P9465525614971023355.Spec : Prop :=
  ∀ n, (P9465525614971023355.a n : ℤ) = A060978 (n + 1)

theorem P9465525614971023355.correct : P9465525614971023355.Spec := by
  intro n
  simp only [A060978, Nat.add_sub_cancel]

end A060978

/-! ## A060978.P7954731019497192694

`eq[10, abs(A225693(n))]`
-/

namespace A060978.P7954731019497192694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060978.P7954731019497192694

namespace A060978

/-- `eq[10, abs(A225693(n))]` -/
def P7954731019497192694.Spec : Prop :=
  ∀ n, (P7954731019497192694.a n : ℤ) = A060978 (n + 1)

end A060978

/-! ## A060978.P9695796597027631235

`A286956(A061879(n+1))`
-/

namespace A060978.P9695796597027631235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 (A061879 (n + 1)).toNat

end

end A060978.P9695796597027631235

namespace A060978

/-- `A286956(A061879(n+1))` -/
def P9695796597027631235.Spec : Prop :=
  ∀ n, P9695796597027631235.a n = A060978 (n + 1)

end A060978

/-! ## A060978.P15252509706501625661

`A002266(5*A061879(n+1))`
-/

namespace A060978.P15252509706501625661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (5 * A061879 (n + 1)).toNat

end

end A060978.P15252509706501625661

namespace A060978

/-- `A002266(5*A061879(n+1))` -/
def P15252509706501625661.Spec : Prop :=
  ∀ n, P15252509706501625661.a n = A060978 (n + 1)

end A060978

/-! ## A060978.P12270396408557459678

`A008615(6*A061879(n+1))`
-/

namespace A060978.P12270396408557459678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (6 * A061879 (n + 1)).toNat

end

end A060978.P12270396408557459678

namespace A060978

/-- `A008615(6*A061879(n+1))` -/
def P12270396408557459678.Spec : Prop :=
  ∀ n, P12270396408557459678.a n = A060978 (n + 1)

end A060978

/-!
# A060979: |First digit - second digit + third digit - fourth digit ...| = 11.

The programs for A060979, the canonical program `A060979.P5913686302778209989` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060979 has offset 1).

The definition of A060979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060979.P14355725627937024450

`11*eq[1, A088705(A245627(n))]`
-/

namespace A060979.P14355725627937024450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A245627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060979.P14355725627937024450

namespace A060979

/-- `11*eq[1, A088705(A245627(n))]` -/
def P14355725627937024450.Spec : Prop :=
  ∀ n, (P14355725627937024450.a n : ℤ) = A060979 (n + 1)

end A060979

/-! ## A060979.P5913686302778209989

`11*eq[A000007(n), A142150(A245627(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060979

/-- `11*eq[A000007(n), A142150(A245627(n))]` -/
def P5913686302778209989.Spec : Prop :=
  ∀ n, (P5913686302778209989.a n : ℤ) = A060979 (n + 1)

theorem P5913686302778209989.correct : P5913686302778209989.Spec := by
  intro n
  simp only [A060979, Nat.add_sub_cancel]

end A060979

/-! ## A060979.P15988987503687120378

`11*eq[A000038(n), A142150(A245627(n))]`
-/

namespace A060979.P15988987503687120378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A245627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060979.P15988987503687120378

namespace A060979

/-- `11*eq[A000038(n), A142150(A245627(n))]` -/
def P15988987503687120378.Spec : Prop :=
  ∀ n, (P15988987503687120378.a n : ℤ) = A060979 (n + 1)

end A060979

/-! ## A060979.P8831300455944262608

`11*A173639(n+1)`
-/

namespace A060979.P8831300455944262608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A173639 (n + 1)

end

end A060979.P8831300455944262608

namespace A060979

/-- `11*A173639(n+1)` -/
def P8831300455944262608.Spec : Prop :=
  ∀ n, P8831300455944262608.a n = A060979 (n + 1)

end A060979

/-! ## A060979.P14979018850312396574

`A008593(A173639(n+1))`
-/

namespace A060979.P14979018850312396574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A173639 (n + 1)).toNat

end

end A060979.P14979018850312396574

namespace A060979

/-- `A008593(A173639(n+1))` -/
def P14979018850312396574.Spec : Prop :=
  ∀ n, P14979018850312396574.a n = A060979 (n + 1)

end A060979

/-! ## A060979.P6208622085232547681

`∩[A054684(n+1), A008593(n)]`
-/

namespace A060979.P6208622085232547681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060979.P6208622085232547681

namespace A060979

/-- `∩[A054684(n+1), A008593(n)]` -/
def P6208622085232547681.Spec : Prop :=
  ∀ n, (P6208622085232547681.a n : ℤ) = A060979 (n + 1)

end A060979

/-! ## A060979.P17014371861948830252

`eq[11, abs(A055017(n))]`
-/

namespace A060979.P17014371861948830252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060979.P17014371861948830252

namespace A060979

/-- `eq[11, abs(A055017(n))]` -/
def P17014371861948830252.Spec : Prop :=
  ∀ n, (P17014371861948830252.a n : ℤ) = A060979 (n + 1)

end A060979

/-! ## A060979.P9755868368664750896

`eq[11, abs(A225693(n))]`
-/

namespace A060979.P9755868368664750896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060979.P9755868368664750896

namespace A060979

/-- `eq[11, abs(A225693(n))]` -/
def P9755868368664750896.Spec : Prop :=
  ∀ n, (P9755868368664750896.a n : ℤ) = A060979 (n + 1)

end A060979

/-! ## A060979.P6420367069809363580

`filter[11*n, A179081(#)]`
-/

namespace A060979.P6420367069809363580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j) = 1) n)

end

end A060979.P6420367069809363580

namespace A060979

/-- `filter[11*n, A179081(#)]` -/
def P6420367069809363580.Spec : Prop :=
  ∀ n, (P6420367069809363580.a n : ℤ) = A060979 (n + 1)

end A060979

/-! ## A060979.P10412618542140637452

`A008593(eq[1, A179081(A008593(n))])`
-/

namespace A060979.P10412618542140637452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A008593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060979.P10412618542140637452

namespace A060979

/-- `A008593(eq[1, A179081(A008593(n))])` -/
def P10412618542140637452.Spec : Prop :=
  ∀ n, P10412618542140637452.a n = A060979 (n + 1)

end A060979

/-!
# A060980: |First digit - second digit + third digit - fourth digit ...| = 12.

The programs for A060980, the canonical program `A060980.P16396531685761901116` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060980 has offset 1).

The definition of A060980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060980.P16396531685761901116

`eq[12, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060980

/-- `eq[12, abs(A055017(n))]` -/
def P16396531685761901116.Spec : Prop :=
  ∀ n, (P16396531685761901116.a n : ℤ) = A060980 (n + 1)

theorem P16396531685761901116.correct : P16396531685761901116.Spec := by
  intro n
  simp only [A060980, Nat.add_sub_cancel]

end A060980

/-! ## A060980.P8213764422610232651

`eq[12, abs(A225693(n))]`
-/

namespace A060980.P8213764422610232651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060980.P8213764422610232651

namespace A060980

/-- `eq[12, abs(A225693(n))]` -/
def P8213764422610232651.Spec : Prop :=
  ∀ n, (P8213764422610232651.a n : ℤ) = A060980 (n + 1)

end A060980

/-! ## A060980.P12577074388408089023

`A075617(A061881(n+1))`
-/

namespace A060980.P12577074388408089023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A061881 (n + 1)).toNat

end

end A060980.P12577074388408089023

namespace A060980

/-- `A075617(A061881(n+1))` -/
def P12577074388408089023.Spec : Prop :=
  ∀ n, P12577074388408089023.a n = A060980 (n + 1)

end A060980

/-! ## A060980.P9714490596348678213

`A233583(A061881(n+1)+1)`
-/

namespace A060980.P9714490596348678213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A061881 (n + 1) + 1).toNat

end

end A060980.P9714490596348678213

namespace A060980

/-- `A233583(A061881(n+1)+1)` -/
def P9714490596348678213.Spec : Prop :=
  ∀ n, P9714490596348678213.a n = A060980 (n + 1)

end A060980

/-! ## A060980.P16611738894765264750

`A008615(6*A061881(n+1))`
-/

namespace A060980.P16611738894765264750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (6 * A061881 (n + 1)).toNat

end

end A060980.P16611738894765264750

namespace A060980

/-- `A008615(6*A061881(n+1))` -/
def P16611738894765264750.Spec : Prop :=
  ∀ n, P16611738894765264750.a n = A060980 (n + 1)

end A060980

/-!
# A060981: Primes of the form 4k^2 - 152k + 1487 + (6k - 114)*(-1)^k.

The programs for A060981, the canonical program `A060981.P12747927169127028284` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060981 has offset 1).

The definition of A060981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060981.P12747927169127028284

`p?[A226097(xor(1, n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060981

/-- `p?[A226097(xor(1, n))]` -/
def P12747927169127028284.Spec : Prop :=
  ∀ n, P12747927169127028284.a n = A060981 (n + 1)

theorem P12747927169127028284.correct : P12747927169127028284.Spec := by
  intro n
  simp only [A060981, Nat.add_sub_cancel]

end A060981

/-! ## A060981.P949896632659147443

`p?[A226097(A004442(n))]`
-/

namespace A060981.P949896632659147443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060981.P949896632659147443

namespace A060981

/-- `p?[A226097(A004442(n))]` -/
def P949896632659147443.Spec : Prop :=
  ∀ n, P949896632659147443.a n = A060981 (n + 1)

end A060981

/-! ## A060981.P17255205123574146168

`p?[A226097(A033999(n)+n)]`
-/

namespace A060981.P17255205123574146168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060981.P17255205123574146168

namespace A060981

/-- `p?[A226097(A033999(n)+n)]` -/
def P17255205123574146168.Spec : Prop :=
  ∀ n, P17255205123574146168.a n = A060981 (n + 1)

end A060981

/-! ## A060981.P4255800998437204537

`p?[A060566(A292576(2*n+1))]`
-/

namespace A060981.P4255800998437204537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (A292576 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060981.P4255800998437204537

namespace A060981

/-- `p?[A060566(A292576(2*n+1))]` -/
def P4255800998437204537.Spec : Prop :=
  ∀ n, P4255800998437204537.a n = A060981 (n + 1)

end A060981

/-! ## A060981.P14214256936463444901

`p?[A226097(A028242(A042948(n)))]`
-/

namespace A060981.P14214256936463444901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (A028242 (A042948 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060981.P14214256936463444901

namespace A060981

/-- `p?[A226097(A028242(A042948(n)))]` -/
def P14214256936463444901.Spec : Prop :=
  ∀ n, P14214256936463444901.a n = A060981 (n + 1)

end A060981

/-! ## A060981.P1079246859292108703

`p?[A226097(A109613(n)-A000035(n))]`
-/

namespace A060981.P1079246859292108703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (A109613 n - A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060981.P1079246859292108703

namespace A060981

/-- `p?[A226097(A109613(n)-A000035(n))]` -/
def P1079246859292108703.Spec : Prop :=
  ∀ n, P1079246859292108703.a n = A060981 (n + 1)

end A060981

/-! ## A060981.P11930094402337730975

`A226097(A004442(n)%A118751(n))`
-/

namespace A060981.P11930094402337730975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (Int.tmod (A004442 n) (A118751 n)).toNat

end

end A060981.P11930094402337730975

namespace A060981

/-- `A226097(A004442(n)%A118751(n))` -/
def P11930094402337730975.Spec : Prop :=
  ∀ n, P11930094402337730975.a n = A060981 (n + 1)

end A060981

/-! ## A060981.P17146154406211194337

`A324388(3*A226097(A004442(n)))`
-/

namespace A060981.P17146154406211194337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (3 * A226097 (A004442 n).toNat).toNat

end

end A060981.P17146154406211194337

namespace A060981

/-- `A324388(3*A226097(A004442(n)))` -/
def P17146154406211194337.Spec : Prop :=
  ∀ n, P17146154406211194337.a n = A060981 (n + 1)

end A060981

/-!
# A060982: a(n) = Smallest nontrivial number k > 9 such that |first (leftmost) decimal digit of k - second digit + third digit - fourth digit ...| = n.

The programs for A060982, there is no canonical definition to state claims against.
-/

/-! ## A060982.P15109183733876445093

`or(A086919(n+1), A193581(A351870(n)))`
-/

namespace A060982.P15109183733876445093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086919 (n + 1)) (A193581 (A351870 n).toNat)

end

end A060982.P15109183733876445093

/-! ## A060982.P17586380826448034830

`A086919(A062399(n+1))`
-/

namespace A060982.P17586380826448034830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086919 (A062399 (n + 1)).toNat

end

end A060982.P17586380826448034830

/-! ## A060982.P18244460408704815014

`A118759(A086919(n+1))`
-/

namespace A060982.P18244460408704815014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A086919 (n + 1)).toNat

end

end A060982.P18244460408704815014

/-! ## A060982.P5834648414196997504

`A086919(A351870(n+1))`
-/

namespace A060982.P5834648414196997504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086919 (A351870 (n + 1)).toNat

end

end A060982.P5834648414196997504

/-! ## A060982.P10580660284805303641

`filter[A086919(n+1), A385395(#)]`
-/

namespace A060982.P10580660284805303641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A060982.P10580660284805303641

/-!
# A060983: Number of primitive sublattices of index n in generic 3-dimensional lattice.

The programs for A060983, the canonical program `A060983.P4598278765053728380` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060983 has offset 1).

The definition of A060983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060983.P11874485438904473869

`∑{d}[A007948(n+1), A064987((n+1)/#)]`
-/

namespace A060983.P11874485438904473869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060983.P11874485438904473869

namespace A060983

/-- `∑{d}[A007948(n+1), A064987((n+1)/#)]` -/
def P11874485438904473869.Spec : Prop :=
  ∀ n, P11874485438904473869.a n = A060983 (n + 1)

end A060983

/-! ## A060983.P4598278765053728380

`∑{d}[n+1, A069097(#)*A073184((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060983

/-- `∑{d}[n+1, A069097(#)*A073184((n+1)/#)]` -/
def P4598278765053728380.Spec : Prop :=
  ∀ n, P4598278765053728380.a n = A060983 (n + 1)

theorem P4598278765053728380.correct : P4598278765053728380.Spec := by
  intro n
  simp only [A060983, Nat.add_sub_cancel]

end A060983

/-! ## A060983.P7529625362152044716

`∑{d}[n+1, A000290(#)*A254981((n+1)/#)]`
-/

namespace A060983.P7529625362152044716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A254981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060983.P7529625362152044716

namespace A060983

/-- `∑{d}[n+1, A000290(#)*A254981((n+1)/#)]` -/
def P7529625362152044716.Spec : Prop :=
  ∀ n, P7529625362152044716.a n = A060983 (n + 1)

end A060983

/-! ## A060983.P2050872757374753531

`∑{d}[n+1, A001157(#)*A254926((n+1)/#)]`
-/

namespace A060983.P2050872757374753531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A254926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060983.P2050872757374753531

namespace A060983

/-- `∑{d}[n+1, A001157(#)*A254926((n+1)/#)]` -/
def P2050872757374753531.Spec : Prop :=
  ∀ n, P2050872757374753531.a n = A060983 (n + 1)

end A060983

/-! ## A060983.P14586679485720261044

`∑{d}[n+1, A064987(#)*A212793((n+1)/#)]`
-/

namespace A060983.P14586679485720261044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060983.P14586679485720261044

namespace A060983

/-- `∑{d}[n+1, A064987(#)*A212793((n+1)/#)]` -/
def P14586679485720261044.Spec : Prop :=
  ∀ n, P14586679485720261044.a n = A060983 (n + 1)

end A060983

/-!
# A060984: a(1) = 1; a(n+1) = a(n) + (largest square <= a(n)).

The programs for A060984, the canonical program `A060984.P6903514058607523429` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060984 has offset 1).

The definition of A060984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060984.P6903514058607523429

`a(n-1)+floor(sqrt(a(n-1)))²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060984

/-- `a(n-1)+floor(sqrt(a(n-1)))²` -/
def P6903514058607523429.Spec : Prop :=
  ∀ n, (P6903514058607523429.a n : ℤ) = A060984 (n + 1)

theorem P6903514058607523429.correct : P6903514058607523429.Spec := by
  intro n
  simp only [A060984, Nat.add_sub_cancel]

end A060984

/-! ## A060984.P3786914705731138338

`a(n-1)+floor(root(a(n-1), 2))²` with `a(0)=1`
-/

namespace A060984.P3786914705731138338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌋ ^ 2

end

end A060984.P3786914705731138338

namespace A060984

/-- `a(n-1)+floor(root(a(n-1), 2))²` -/
def P3786914705731138338.Spec : Prop :=
  ∀ n, P3786914705731138338.a n = A060984 (n + 1)

end A060984

/-! ## A060984.P399877619037967437

`a(n-1)+floor(sqrt(a(n-1)))^2` with `a(0)=1`
-/

namespace A060984.P399877619037967437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.sqrt (a (n - 1)) ^ 2

end

end A060984.P399877619037967437

namespace A060984

/-- `a(n-1)+floor(sqrt(a(n-1)))^2` -/
def P399877619037967437.Spec : Prop :=
  ∀ n, (P399877619037967437.a n : ℤ) = A060984 (n + 1)

theorem P399877619037967437.correct : P399877619037967437.Spec := by
  intro n
  simp only [A060984, Nat.add_sub_cancel, A060984.P399877619037967437.a, A060984.P6903514058607523429.a, SequenceMachineLib.memo_apply]

end A060984

/-! ## A060984.P11077916815773313204

`a(n-1)+ceil(-sqrt(a(n-1)))²` with `a(0)=1`
-/

namespace A060984.P11077916815773313204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈-Real.sqrt (a (n - 1) : ℝ)⌉ ^ 2

end

end A060984.P11077916815773313204

namespace A060984

/-- `a(n-1)+ceil(-sqrt(a(n-1)))²` -/
def P11077916815773313204.Spec : Prop :=
  ∀ n, P11077916815773313204.a n = A060984 (n + 1)

end A060984

/-! ## A060984.P2075206252297468020

`a(n-1)+floor(a(n-1)^(1/2))²` with `a(0)=1`
-/

namespace A060984.P2075206252297468020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ ^ 2

end

end A060984.P2075206252297468020

namespace A060984

/-- `a(n-1)+floor(a(n-1)^(1/2))²` -/
def P2075206252297468020.Spec : Prop :=
  ∀ n, P2075206252297468020.a n = A060984 (n + 1)

end A060984

/-! ## A060984.P6005308605408814844

`∑[A061886(n)]`
-/

namespace A060984.P6005308605408814844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060984.P6005308605408814844

namespace A060984

/-- `∑[A061886(n)]` -/
def P6005308605408814844.Spec : Prop :=
  ∀ n, P6005308605408814844.a n = A060984 (n + 1)

end A060984

/-! ## A060984.P3600356039863154071

`∑[A067859(n+1)²]`
-/

namespace A060984.P3600356039863154071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067859 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060984.P3600356039863154071

namespace A060984

/-- `∑[A067859(n+1)²]` -/
def P3600356039863154071.Spec : Prop :=
  ∀ n, P3600356039863154071.a n = A060984 (n + 1)

end A060984

/-!
# A060985: a(1) = 1; a(n+1) = a(n) + (largest triangular number <= a(n)).

The programs for A060985, there is no canonical definition to state claims against.
-/

/-! ## A060985.P2312186157445409145

`∑[A061883(n)]`
-/

namespace A060985.P2312186157445409145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060985.P2312186157445409145

/-! ## A060985.P3881525558876208689

`A061883(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A060985.P3881525558876208689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061883 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A060985.P3881525558876208689

/-! ## A060985.P9729030823350193076

`a(n-1)+A061883(n)+A000038(n)` with `a(0)=1`
-/

namespace A060985.P9729030823350193076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A061883 n + A000038 n)

end

end A060985.P9729030823350193076

/-! ## A060985.P3704011608452548825

`a(n-1)+A054977(n)*A061883(n)` with `a(0)=1`
-/

namespace A060985.P3704011608452548825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054977 n * A061883 n

end

end A060985.P3704011608452548825

/-! ## A060985.P2246156739376753257

`a(n-1)+A000041(C(2, n+2))*A061883(n)` with `a(0)=1`
-/

namespace A060985.P2246156739376753257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000041 (Nat.choose 2 (n + 2)) * A061883 n

end

end A060985.P2246156739376753257

/-! ## A060985.P17735568526815877410

`a(n-1)-A061883(n)*A302050(A039949(n+1))` with `a(0)=1`
-/

namespace A060985.P17735568526815877410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A061883 n * A302050 (A039949 (n + 1)).toNat

end

end A060985.P17735568526815877410

/-!
# A060991: a(n) is the smallest positive integer c such that the equation A049820(x) = c has exactly n solutions.

The programs for A060991, there is no canonical definition to state claims against.
-/

/-! ## A060991.P5830972672318997113

`A236565(n)+char[2]`
-/

namespace A060991.P5830972672318997113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236565 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060991.P5830972672318997113

/-! ## A060991.P14435853693202459971

`A316863(n)+A236565(n)`
-/

namespace A060991.P14435853693202459971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n + A236565 n

end

end A060991.P14435853693202459971

/-! ## A060991.P9180191390455610490

`A236565(n)^A081753(n)`
-/

namespace A060991.P9180191390455610490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236565 n : ℚ) ^ (A081753 n : ℤ)

end

end A060991.P9180191390455610490

/-! ## A060991.P8912951328444244703

`or(char[A089663(n)], A236565(n))`
-/

namespace A060991.P8912951328444244703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089663 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A236565 n)

end

end A060991.P8912951328444244703

/-! ## A060991.P4474239303112715798

`A343957(n+1)+A236565(n)`
-/

namespace A060991.P4474239303112715798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343957 (n + 1) + A236565 n

end

end A060991.P4474239303112715798

/-!
# A060992: a(n) = Sum_{gcd(i,j) | 0 < i <= j < n and i+j = n}.

The programs for A060992, the canonical program `A060992.P2954310029962380558` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060992 has offset 1).

The definition of A060992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060992.P4794519019445873585

`∑{d}[n+1, A110654(#-1)*A000010((n+1)/#)]`
-/

namespace A060992.P4794519019445873585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A110654 (d - 1) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060992.P4794519019445873585

namespace A060992

/-- `∑{d}[n+1, A110654(#-1)*A000010((n+1)/#)]` -/
def P4794519019445873585.Spec : Prop :=
  ∀ n, P4794519019445873585.a n = A060992 (n + 1)

end A060992

/-! ## A060992.P6798133006668017650

`∑{d}[n+1, A162728(#)*A166514((n+1)/#-1)]`
-/

namespace A060992.P6798133006668017650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A166514 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A060992.P6798133006668017650

namespace A060992

/-- `∑{d}[n+1, A162728(#)*A166514((n+1)/#-1)]` -/
def P6798133006668017650.Spec : Prop :=
  ∀ n, P6798133006668017650.a n = A060992 (n + 1)

end A060992

/-! ## A060992.P6281988510856463870

`∑{d}[n+1, A000010(#)*A004526((n+1)/#)]`
-/

namespace A060992.P6281988510856463870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A004526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060992.P6281988510856463870

namespace A060992

/-- `∑{d}[n+1, A000010(#)*A004526((n+1)/#)]` -/
def P6281988510856463870.Spec : Prop :=
  ∀ n, P6281988510856463870.a n = A060992 (n + 1)

end A060992

/-! ## A060992.P9303403827716146408

`∑{d}[n+1, A000010(#)*A123108((n+1)/#)]`
-/

namespace A060992.P9303403827716146408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A123108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060992.P9303403827716146408

namespace A060992

/-- `∑{d}[n+1, A000010(#)*A123108((n+1)/#)]` -/
def P9303403827716146408.Spec : Prop :=
  ∀ n, P9303403827716146408.a n = A060992 (n + 1)

end A060992

/-! ## A060992.P2954310029962380558

`(A018804(n+1)-A008619(A022998(n)))/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060992

/-- `(A018804(n+1)-A008619(A022998(n)))/2` -/
def P2954310029962380558.Spec : Prop :=
  ∀ n, P2954310029962380558.a n = (A060992 (n + 1) : ℚ)

end A060992

/-! ## A060992.P770658508000488096

`A038572(A018804(n+1)-A008619(A022998(n)))`
-/

namespace A060992.P770658508000488096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A018804 (n + 1) - A008619 (A022998 n).toNat).toNat

end

end A060992.P770658508000488096

namespace A060992

/-- `A038572(A018804(n+1)-A008619(A022998(n)))` -/
def P770658508000488096.Spec : Prop :=
  ∀ n, P770658508000488096.a n = A060992 (n + 1)

end A060992

/-! ## A060992.P1566333856829597393

`A065033(A018804(n+1))-A106466(n)`
-/

namespace A060992.P1566333856829597393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A018804 (n + 1)).toNat - A106466 n

end

end A060992.P1566333856829597393

namespace A060992

/-- `A065033(A018804(n+1))-A106466(n)` -/
def P1566333856829597393.Spec : Prop :=
  ∀ n, P1566333856829597393.a n = A060992 (n + 1)

end A060992

/-! ## A060992.P1393693446820897833

`A004526(A018804(n+1)-A026741(A004442(n)))`
-/

namespace A060992.P1393693446820897833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A018804 (n + 1) - A026741 (A004442 n).toNat).toNat

end

end A060992.P1393693446820897833

namespace A060992

/-- `A004526(A018804(n+1)-A026741(A004442(n)))` -/
def P1393693446820897833.Spec : Prop :=
  ∀ n, P1393693446820897833.a n = A060992 (n + 1)

end A060992

/-! ## A060992.P3977785092398414442

`A327029(∑[n+1]+2)`
-/

namespace A060992.P3977785092398414442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327029 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A060992.P3977785092398414442

namespace A060992

/-- `A327029(∑[n+1]+2)` -/
def P3977785092398414442.Spec : Prop :=
  ∀ n, P3977785092398414442.a n = A060992 (n + 1)

end A060992

/-!
# A060993: Radii of Integer Distance Skew Tetrahedra.

The programs for A060993, there is no canonical definition to state claims against.
-/

/-! ## A060993.P1014415707377759809

`lt[A261915(A001105(n)), n]`
-/

namespace A060993.P1014415707377759809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 (A001105 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060993.P1014415707377759809

/-! ## A060993.P3419986299208116409

`eq[A010055(A010554(3*(n+1))), A185284(n)]+1`
-/

namespace A060993.P3419986299208116409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A010554 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060993.P3419986299208116409

/-! ## A060993.P8550732848927316165

`A040056(A015459(n))+A008578(n+1)`
-/

namespace A060993.P8550732848927316165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A015459 n).toNat + A008578 (n + 1)

end

end A060993.P8550732848927316165

/-! ## A060993.P12733557182523878777

`A040056(A027471(n+1))+A008578(n+1)`
-/

namespace A060993.P12733557182523878777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A027471 (n + 1)).toNat + A008578 (n + 1)

end

end A060993.P12733557182523878777

/-! ## A060993.P12221204280667333445

`A134660(A122041(n+1))+A008578(n+1)`
-/

namespace A060993.P12221204280667333445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 (A122041 (n + 1)).toNat + A008578 (n + 1)

end

end A060993.P12221204280667333445

/-!
# A060995: Number of routes of length 2n on the sides of an octagon from a point to opposite point.

The programs for A060995, the canonical program `A060995.P18033901739238950703` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060995 has offset 1).

The definition of A060995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060995.P18033901739238950703

`4*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060995

/-- `4*a(n-1)-2*a(n-2)` -/
def P18033901739238950703.Spec : Prop :=
  ∀ n, P18033901739238950703.a n = A060995 (n + 1)

theorem P18033901739238950703.correct : P18033901739238950703.Spec := by
  intro n
  simp only [A060995, Nat.add_sub_cancel]

end A060995

/-! ## A060995.P15750327144268052608

`ogf(2x/(1-4x+2x^2))`
-/

namespace A060995.P15750327144268052608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, 2] n

end

end A060995.P15750327144268052608

namespace A060995

/-- `ogf(2x/(1-4x+2x^2))` -/
def P15750327144268052608.Spec : Prop :=
  ∀ n, P15750327144268052608.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P12615149468494508227

`ceil((sqrt(2)+2)*a(n-1))` with `a(0)=0, a(1)=2, a(2)=8`
-/

namespace A060995.P12615149468494508227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A060995.P12615149468494508227

namespace A060995

/-- `ceil((sqrt(2)+2)*a(n-1))` -/
def P12615149468494508227.Spec : Prop :=
  ∀ n, P12615149468494508227.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P8659492394167615194

`∑[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A060995.P8659492394167615194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060995.P8659492394167615194

namespace A060995

/-- `∑[floor((sqrt(2)+2)*a(n-1))]` -/
def P8659492394167615194.Spec : Prop :=
  ∀ n, P8659492394167615194.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P4094065055218515776

`∑[round((sqrt(2)+2)*a(n-1))]` with `a(0)=0, a(1)=2, a(2)=6`
-/

namespace A060995.P4094065055218515776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060995.P4094065055218515776

namespace A060995

/-- `∑[round((sqrt(2)+2)*a(n-1))]` -/
def P4094065055218515776.Spec : Prop :=
  ∀ n, P4094065055218515776.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P17883961913246195879

`1/2*sqrt(2)*((2+sqrt(2))^n-(2-sqrt(2))^n)`
-/

namespace A060995.P17883961913246195879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ) * ((2 + Real.sqrt (2 : ℝ)) ^ n - (2 - Real.sqrt (2 : ℝ)) ^ n)

end

end A060995.P17883961913246195879

namespace A060995

/-- `1/2*sqrt(2)*((2+sqrt(2))^n-(2-sqrt(2))^n)` -/
def P17883961913246195879.Spec : Prop :=
  ∀ n, P17883961913246195879.a n = (A060995 (n + 1) : ℝ)

end A060995

/-! ## A060995.P11130156114407546890

`abs(A106731(n))`
-/

namespace A060995.P11130156114407546890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106731 n|

end

end A060995.P11130156114407546890

namespace A060995

/-- `abs(A106731(n))` -/
def P11130156114407546890.Spec : Prop :=
  ∀ n, P11130156114407546890.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P15232511982067016663

`∑[A006012(n)]-1`
-/

namespace A060995.P15232511982067016663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060995.P15232511982067016663

namespace A060995

/-- `∑[A006012(n)]-1` -/
def P15232511982067016663.Spec : Prop :=
  ∀ n, P15232511982067016663.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P10505814153441027921

`A087161(n+2)-2`
-/

namespace A060995.P10505814153441027921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087161 (n + 2) - 2

end

end A060995.P10505814153441027921

namespace A060995

/-- `A087161(n+2)-2` -/
def P10505814153441027921.Spec : Prop :=
  ∀ n, P10505814153441027921.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P2580900420003396918

`∑[∑[A204089(n)]]-1`
-/

namespace A060995.P2580900420003396918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060995.P2580900420003396918

namespace A060995

/-- `∑[∑[A204089(n)]]-1` -/
def P2580900420003396918.Spec : Prop :=
  ∀ n, P2580900420003396918.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P13850695422651469024

`∑[A030436(2*n)]-1`
-/

namespace A060995.P13850695422651469024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060995.P13850695422651469024

namespace A060995

/-- `∑[A030436(2*n)]-1` -/
def P13850695422651469024.Spec : Prop :=
  ∀ n, P13850695422651469024.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P4367539043303914433

`∑[A056236(n)/2]-1`
-/

namespace A060995.P4367539043303914433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056236 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060995.P4367539043303914433

namespace A060995

/-- `∑[A056236(n)/2]-1` -/
def P4367539043303914433.Spec : Prop :=
  ∀ n, P4367539043303914433.a n = (A060995 (n + 1) : ℚ)

end A060995

/-! ## A060995.P14106661991965178985

`A293067(n+2)/2-1`
-/

namespace A060995.P14106661991965178985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293067 (n + 2) : ℚ) / 2 - 1

end

end A060995.P14106661991965178985

namespace A060995

/-- `A293067(n+2)/2-1` -/
def P14106661991965178985.Spec : Prop :=
  ∀ n, P14106661991965178985.a n = (A060995 (n + 1) : ℚ)

end A060995

/-! ## A060995.P10891017106021641061

`∑[∑[A062112(2*n)]]+n`
-/

namespace A060995.P10891017106021641061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A060995.P10891017106021641061

namespace A060995

/-- `∑[∑[A062112(2*n)]]+n` -/
def P10891017106021641061.Spec : Prop :=
  ∀ n, P10891017106021641061.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P5368980807091417524

`Δ[A030435(A004275(n))]`
-/

namespace A060995.P5368980807091417524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060995.P5368980807091417524

namespace A060995

/-- `Δ[A030435(A004275(n))]` -/
def P5368980807091417524.Spec : Prop :=
  ∀ n, P5368980807091417524.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P10335922339233624036

`A007070(n)-A006012(n)`
-/

namespace A060995.P10335922339233624036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - A006012 n

end

end A060995.P10335922339233624036

namespace A060995

/-- `A007070(n)-A006012(n)` -/
def P10335922339233624036.Spec : Prop :=
  ∀ n, P10335922339233624036.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P9853617030142643229

`A111567(n)-A007052(n)`
-/

namespace A060995.P9853617030142643229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111567 n - A007052 n

end

end A060995.P9853617030142643229

namespace A060995

/-- `A111567(n)-A007052(n)` -/
def P9853617030142643229.Spec : Prop :=
  ∀ n, P9853617030142643229.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P11394293168441620332

`∑[xor(A000007(n), A006012(n))]`
-/

namespace A060995.P11394293168441620332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A006012 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060995.P11394293168441620332

namespace A060995

/-- `∑[xor(A000007(n), A006012(n))]` -/
def P11394293168441620332.Spec : Prop :=
  ∀ n, P11394293168441620332.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P15195566409101018919

`A006012(n+1)-A056236(n)`
-/

namespace A060995.P15195566409101018919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) - A056236 n

end

end A060995.P15195566409101018919

namespace A060995

/-- `A006012(n+1)-A056236(n)` -/
def P15195566409101018919.Spec : Prop :=
  ∀ n, P15195566409101018919.a n = A060995 (n + 1)

end A060995

/-! ## A060995.P4907433393654661360

`A204089(n+1)-A006012(n)`
-/

namespace A060995.P4907433393654661360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1) - A006012 n

end

end A060995.P4907433393654661360

namespace A060995

/-- `A204089(n+1)-A006012(n)` -/
def P4907433393654661360.Spec : Prop :=
  ∀ n, P4907433393654661360.a n = A060995 (n + 1)

end A060995

/-!
# A060996: Stirling2 transform of [2,3,3,3,3,3,3,3,...].

The programs for A060996, there is no canonical definition to state claims against.
-/

/-! ## A060996.P2226971271293228696

`3*A011972(∑[n])-1`
-/

namespace A060996.P2226971271293228696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A011972 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A060996.P2226971271293228696

/-! ## A060996.P11585239223429431378

`record[3*A108087(n)]-1`
-/

namespace A060996.P11585239223429431378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A060996.P11585239223429431378

/-! ## A060996.P8065114207945933803

`record[3*A186020(n)]-1`
-/

namespace A060996.P8065114207945933803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A060996.P8065114207945933803

/-! ## A060996.P729292317997678049

`record[3*A275069(n)-1]`
-/

namespace A060996.P729292317997678049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A275069 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060996.P729292317997678049

/-! ## A060996.P8968902750388213651

`record[3*A346426(n)]-1`
-/

namespace A060996.P8968902750388213651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A346426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A060996.P8968902750388213651

/-! ## A060996.P14841371030226141646

`A060719(n)+A000110(n+1)`
-/

namespace A060996.P14841371030226141646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 n + A000110 (n + 1)

end

end A060996.P14841371030226141646

/-! ## A060996.P16814128177482784918

`A060719(n)+A186021(n+1)/2`
-/

namespace A060996.P16814128177482784918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060719 n : ℚ) + (A186021 (n + 1) : ℚ) / 2

end

end A060996.P16814128177482784918

/-! ## A060996.P2868119836092894589

`A032347(n+1)+A038560(n+1)-1`
-/

namespace A060996.P2868119836092894589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032347 (n + 1) + (A038560 (n + 1) - 1)

end

end A060996.P2868119836092894589

/-! ## A060996.P13933071625411088598

`A000110(n+1)+A186021(n+1)-1`
-/

namespace A060996.P13933071625411088598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) + (A186021 (n + 1) - 1)

end

end A060996.P13933071625411088598

/-!
# A060998: Squares of 1 and primes, written backwards.

The programs for A060998, there is no canonical definition to state claims against.
-/

/-! ## A060998.P15823995542136833378

`A002942(A008578(n+1))`
-/

namespace A060998.P15823995542136833378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A008578 (n + 1)).toNat

end

end A060998.P15823995542136833378

/-! ## A060998.P968581309019246410

`A002942(A158611(n+2))`
-/

namespace A060998.P968581309019246410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A158611 (n + 2)).toNat

end

end A060998.P968581309019246410

/-! ## A060998.P7979975271832477524

`A002942(eq[1, A074206(n)])`
-/

namespace A060998.P7979975271832477524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060998.P7979975271832477524

/-! ## A060998.P4501844691706393377

`A002942(eq[1, A078898(n)])`
-/

namespace A060998.P4501844691706393377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060998.P4501844691706393377

/-! ## A060998.P10929467279554260606

`A002942(eq[1, A107463(n)])`
-/

namespace A060998.P10929467279554260606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060998.P10929467279554260606

/-! ## A060998.P14158694782930455364

`A002942(record[A006530(n+1)])`
-/

namespace A060998.P14158694782930455364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060998.P14158694782930455364

/-! ## A060998.P15070155136125163740

`A002942(record[A014963(n+1)])`
-/

namespace A060998.P15070155136125163740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060998.P15070155136125163740

/-! ## A060998.P5132042182502438195

`A002942(record[A020639(n+1)])`
-/

namespace A060998.P5132042182502438195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060998.P5132042182502438195

/-! ## A060998.P9124122408435867753

`A002942(A001747(n+1)/2)`
-/

namespace A060998.P9124122408435867753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

end

end A060998.P9124122408435867753

/-! ## A060998.P8547706679456166204

`A002942(record[(n+1)/A002033(n)])`
-/

namespace A060998.P8547706679456166204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002033 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A060998.P8547706679456166204

/-! ## A060998.P11131863015296996447

`A002942(eq[1, A080339(n+1)]+1)`
-/

namespace A060998.P11131863015296996447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060998.P11131863015296996447

/-! ## A060998.P8181564089967231849

`A002942(A090178(n+1)-(n+1))`
-/

namespace A060998.P8181564089967231849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A090178 (n + 1) - (n + 1 : ℤ)).toNat

end

end A060998.P8181564089967231849

/-! ## A060998.P15151031924474220067

`A061226(record[A166333(n)])-A280076(n+1)`
-/

namespace A060998.P15151031924474220067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A280076 (n + 1)

end

end A060998.P15151031924474220067

/-! ## A060998.P2052842094594339193

`A061226(A008578(n+1))-A280076(n+1)`
-/

namespace A060998.P2052842094594339193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061226 (A008578 (n + 1)).toNat - A280076 (n + 1)

end

end A060998.P2052842094594339193

/-!
# A060999: Nearest integer to (n+1)^3/9.

The programs for A060999, the canonical program `A060999.P15073048062583888466` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060999 has offset 0).

The definition of A060999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060999.P15073048062583888466

`round((n+1)^3/9)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A060999

/-- `round((n+1)^3/9)` -/
def P15073048062583888466.Spec : Prop :=
  ∀ n, P15073048062583888466.a n = A060999 n

theorem P15073048062583888466.correct : P15073048062583888466.Spec := by
  intro n
  simp only [A060999]

end A060999

/-! ## A060999.P15875443152296033510

`∑[ceil(lcm(n, n+1)/3)]`
-/

namespace A060999.P15875443152296033510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm n (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P15875443152296033510

namespace A060999

/-- `∑[ceil(lcm(n, n+1)/3)]` -/
def P15875443152296033510.Spec : Prop :=
  ∀ n, P15875443152296033510.a n = A060999 n

end A060999

/-! ## A060999.P18176463548906864460

`∑[∑[floor(or(1, 2*n)/3)]]`
-/

namespace A060999.P18176463548906864460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P18176463548906864460

namespace A060999

/-- `∑[∑[floor(or(1, 2*n)/3)]]` -/
def P18176463548906864460.Spec : Prop :=
  ∀ n, P18176463548906864460.a n = A060999 n

end A060999

/-! ## A060999.P13108167744733428387

`∑[∑[round(or(1, 6*n)/9)]]`
-/

namespace A060999.P13108167744733428387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (6 * n) : ℚ) / 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P13108167744733428387

namespace A060999

/-- `∑[∑[round(or(1, 6*n)/9)]]` -/
def P13108167744733428387.Spec : Prop :=
  ∀ n, P13108167744733428387.a n = A060999 n

end A060999

/-! ## A060999.P10089801337742433412

`∑[floor(n/sin(3/(n+1)))]`
-/

namespace A060999.P10089801337742433412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (3 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P10089801337742433412

namespace A060999

/-- `∑[floor(n/sin(3/(n+1)))]` -/
def P10089801337742433412.Spec : Prop :=
  ∀ n, P10089801337742433412.a n = A060999 n

end A060999

/-! ## A060999.P6459010419938302748

`∑[round(n/sin(3/(n+1)))]`
-/

namespace A060999.P6459010419938302748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sin (3 / (n + 1 : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P6459010419938302748

namespace A060999

/-- `∑[round(n/sin(3/(n+1)))]` -/
def P6459010419938302748.Spec : Prop :=
  ∀ n, P6459010419938302748.a n = A060999 n

end A060999

/-! ## A060999.P15922981091924987298

`∑[floor(n/atan(3/(n+1)))]`
-/

namespace A060999.P15922981091924987298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.arctan (3 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P15922981091924987298

namespace A060999

/-- `∑[floor(n/atan(3/(n+1)))]` -/
def P15922981091924987298.Spec : Prop :=
  ∀ n, P15922981091924987298.a n = A060999 n

end A060999

/-! ## A060999.P552556224438882715

`∑[floor(n/tanh(3/(n+1)))]`
-/

namespace A060999.P552556224438882715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tanh (3 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P552556224438882715

namespace A060999

/-- `∑[floor(n/tanh(3/(n+1)))]` -/
def P552556224438882715.Spec : Prop :=
  ∀ n, P552556224438882715.a n = A060999 n

end A060999

/-! ## A060999.P14109465358328689281

`∑[round((n+1)/(3*acot(n)))]`
-/

namespace A060999.P14109465358328689281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / (3 * SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P14109465358328689281

namespace A060999

/-- `∑[round((n+1)/(3*acot(n)))]` -/
def P14109465358328689281.Spec : Prop :=
  ∀ n, P14109465358328689281.a n = A060999 n

end A060999

/-! ## A060999.P10939404687662148720

`∑[∑[a(n-3)+2]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A060999.P10939404687662148720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  f2 (n - 3) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P10939404687662148720

namespace A060999

/-- `∑[∑[a(n-3)+2]]` -/
def P10939404687662148720.Spec : Prop :=
  ∀ n, (P10939404687662148720.a n : ℤ) = A060999 n

end A060999

/-! ## A060999.P17788544115992652241

`∑[ceil(2*C(n+1, 2)/3)]`
-/

namespace A060999.P17788544115992652241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Nat.choose (n + 1) 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P17788544115992652241

namespace A060999

/-- `∑[ceil(2*C(n+1, 2)/3)]` -/
def P17788544115992652241.Spec : Prop :=
  ∀ n, P17788544115992652241.a n = A060999 n

end A060999

/-! ## A060999.P16055868132076652313

`∑[∑[∑[(n+1)²%3]-1]]`
-/

namespace A060999.P16055868132076652313
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P16055868132076652313

namespace A060999

/-- `∑[∑[∑[(n+1)²%3]-1]]` -/
def P16055868132076652313.Spec : Prop :=
  ∀ n, P16055868132076652313.a n = A060999 n

end A060999

/-! ## A060999.P16931421563029409614

`∑[∑[∑[a(n-3)²]]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A060999.P16931421563029409614
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f3 =>
  f3 (n - 3) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P16931421563029409614

namespace A060999

/-- `∑[∑[∑[a(n-3)²]]]` -/
def P16931421563029409614.Spec : Prop :=
  ∀ n, (P16931421563029409614.a n : ℤ) = A060999 n

end A060999

/-! ## A060999.P14338397910432022857

`∑[∑[∑[floor(a(n-3))]]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060999.P14338397910432022857
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P14338397910432022857

namespace A060999

/-- `∑[∑[∑[floor(a(n-3))]]]` -/
def P14338397910432022857.Spec : Prop :=
  ∀ n, (P14338397910432022857.a n : ℤ) = A060999 n

end A060999

/-! ## A060999.P5949946233636820412

`∑[∑[∑[a(n-3)^3]]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A060999.P5949946233636820412
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f3 =>
  f3 (n - 3) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P5949946233636820412

namespace A060999

/-- `∑[∑[∑[a(n-3)^3]]]` -/
def P5949946233636820412.Spec : Prop :=
  ∀ n, (P5949946233636820412.a n : ℤ) = A060999 n

end A060999

/-! ## A060999.P4434107024920457928

`∑[∑[∑[a(n-3)%2]]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A060999.P4434107024920457928
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f3 =>
  f3 (n - 3) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P4434107024920457928

namespace A060999

/-- `∑[∑[∑[a(n-3)%2]]]` -/
def P4434107024920457928.Spec : Prop :=
  ∀ n, (P4434107024920457928.a n : ℤ) = A060999 n

end A060999

/-! ## A060999.P5229577730705874300

`∑[∑[ogf((x+x^3)/(1-x-x^3+x^4))]]`
-/

namespace A060999.P5229577730705874300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -1, 0, -1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P5229577730705874300

namespace A060999

/-- `∑[∑[ogf((x+x^3)/(1-x-x^3+x^4))]]` -/
def P5229577730705874300.Spec : Prop :=
  ∀ n, P5229577730705874300.a n = A060999 n

end A060999

/-! ## A060999.P3491184080982983467

`∑[2*n-(2-a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A060999.P3491184080982983467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  (2 * n : ℤ) - (2 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060999.P3491184080982983467

namespace A060999

/-- `∑[2*n-(2-a(n-3))]` -/
def P3491184080982983467.Spec : Prop :=
  ∀ n, P3491184080982983467.a n = A060999 n

end A060999

/-! ## A060999.P1836357167890654857

`floor(a(n-1)+(n²+1+n)/3)` with `a(0)=0`
-/

namespace A060999.P1836357167890654857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 2 + 1 + n : ℚ) / 3⌋

end

end A060999.P1836357167890654857

namespace A060999

/-- `floor(a(n-1)+(n²+1+n)/3)` -/
def P1836357167890654857.Spec : Prop :=
  ∀ n, P1836357167890654857.a n = A060999 n

end A060999

/-! ## A060999.P6621569805018805354

`∑[round(abs(C(2*(n+1), 2)-n)/3)]/2`
-/

namespace A060999.P6621569805018805354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|(Nat.choose (2 * (n + 1)) 2 : ℤ) - (n : ℤ)| : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A060999.P6621569805018805354

namespace A060999

/-- `∑[round(abs(C(2*(n+1), 2)-n)/3)]/2` -/
def P6621569805018805354.Spec : Prop :=
  ∀ n, P6621569805018805354.a n = (A060999 n : ℚ)

end A060999

