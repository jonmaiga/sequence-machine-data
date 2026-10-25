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
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B012.C000
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
# A093101: Cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

The programs for A093101, the canonical program `A093101.P11854673214470439343` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093101 has offset 0).

The definition of A093101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093101.P11854673214470439343

`gcd(n!, A000522(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093101

/-- `gcd(n!, A000522(n))` -/
def P11854673214470439343.Spec : Prop :=
  ∀ n, (P11854673214470439343.a n : ℤ) = A093101 n

theorem P11854673214470439343.correct : P11854673214470439343.Spec := by
  intro n
  simp only [A093101]

end A093101

/-! ## A093101.P5271186059445897043

`n!/A061355(n)`
-/

namespace A093101.P5271186059445897043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A061355 n : ℚ)

end

end A093101.P5271186059445897043

namespace A093101

/-- `n!/A061355(n)` -/
def P5271186059445897043.Spec : Prop :=
  ∀ n, P5271186059445897043.a n = (A093101 n : ℚ)

end A093101

/-! ## A093101.P5505493215162158170

`n!*∑[1/n!]/A061354(n)`
-/

namespace A093101.P5505493215162158170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) / (A061354 n : ℚ)

end

end A093101.P5505493215162158170

namespace A093101

/-- `n!*∑[1/n!]/A061354(n)` -/
def P5505493215162158170.Spec : Prop :=
  ∀ n, P5505493215162158170.a n = (A093101 n : ℚ)

end A093101

/-! ## A093101.P1812092258873141297

`gcd((1-and(2, n))*n!, A143409(∑[n]))`
-/

namespace A093101.P1812092258873141297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((1 - (Nat.land 2 n : ℤ)) * (Nat.factorial n : ℤ)) (A143409 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A093101.P1812092258873141297

namespace A093101

/-- `gcd((1-and(2, n))*n!, A143409(∑[n]))` -/
def P1812092258873141297.Spec : Prop :=
  ∀ n, (P1812092258873141297.a n : ℤ) = A093101 n

end A093101

/-! ## A093101.P7692889956198273187

`A000142(n)/A061355(n)`
-/

namespace A093101.P7692889956198273187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A061355 n : ℚ)

end

end A093101.P7692889956198273187

namespace A093101

/-- `A000142(n)/A061355(n)` -/
def P7692889956198273187.Spec : Prop :=
  ∀ n, P7692889956198273187.a n = (A093101 n : ℚ)

end A093101

/-! ## A093101.P547433431468829886

`A000522(n)/A061354(n)`
-/

namespace A093101.P547433431468829886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n : ℚ) / (A061354 n : ℚ)

end

end A093101.P547433431468829886

namespace A093101

/-- `A000522(n)/A061354(n)` -/
def P547433431468829886.Spec : Prop :=
  ∀ n, P547433431468829886.a n = (A093101 n : ℚ)

end A093101

/-! ## A093101.P2281367234107758142

`gcd(A000142(n), A002627(n))`
-/

namespace A093101.P2281367234107758142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A002627 n)

end

end A093101.P2281367234107758142

namespace A093101

/-- `gcd(A000142(n), A002627(n))` -/
def P2281367234107758142.Spec : Prop :=
  ∀ n, (P2281367234107758142.a n : ℤ) = A093101 n

end A093101

/-! ## A093101.P16874445807499368022

`∏[A028310(n)]/A061355(n)`
-/

namespace A093101.P16874445807499368022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A061355 n : ℚ)

end

end A093101.P16874445807499368022

namespace A093101

/-- `∏[A028310(n)]/A061355(n)` -/
def P16874445807499368022.Spec : Prop :=
  ∀ n, P16874445807499368022.a n = (A093101 n : ℚ)

end A093101

/-! ## A093101.P368527142959349604

`gcd(Δ[A001338(n)], A133942(n))`
-/

namespace A093101.P368527142959349604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A133942 n)

end

end A093101.P368527142959349604

namespace A093101

/-- `gcd(Δ[A001338(n)], A133942(n))` -/
def P368527142959349604.Spec : Prop :=
  ∀ n, (P368527142959349604.a n : ℤ) = A093101 n

end A093101

/-!
# A093103: a(n+2) = 8*a(n+1) + 21*a(n), with a(1)=1, a(2)=8.

The programs for A093103, the canonical program `A093103.P9715137212583301055` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093103 has offset 1).

The definition of A093103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093103.P9715137212583301055

`8*a(n-1)+21*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093103

/-- `8*a(n-1)+21*a(n-2)` -/
def P9715137212583301055.Spec : Prop :=
  ∀ n, (P9715137212583301055.a n : ℤ) = A093103 (n + 1)

theorem P9715137212583301055.correct : P9715137212583301055.Spec := by
  intro n
  simp only [A093103, Nat.add_sub_cancel]

end A093103

/-! ## A093103.P7683050954684506535

`ogf(1/(1-8x-21x^2))`
-/

namespace A093103.P7683050954684506535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, -21] n

end

end A093103.P7683050954684506535

namespace A093103

/-- `ogf(1/(1-8x-21x^2))` -/
def P7683050954684506535.Spec : Prop :=
  ∀ n, P7683050954684506535.a n = A093103 (n + 1)

end A093103

/-! ## A093103.P9959703159123621313

`A094703(n+1)-3*a(n-1)` with `a(0)=1`
-/

namespace A093103.P9959703159123621313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094703 (n + 1) - 3 * a (n - 1)

end

end A093103.P9959703159123621313

namespace A093103

/-- `A094703(n+1)-3*a(n-1)` -/
def P9959703159123621313.Spec : Prop :=
  ∀ n, P9959703159123621313.a n = A093103 (n + 1)

end A093103

/-!
# A093104: An "L" digit is a digit "looking to the Left" (1,2,3,7,9); an "R" digit is a digit "looking to the Right" (4,5,6); an "U" digit is a digit "looking at Us" (0,8). This is the slowest increasing sequence showing the infinite pattern [LUR] (when read digit-by-digit).

The programs for A093104, there is no canonical definition to state claims against.
-/

/-! ## A093104.P4789803679405502759

`gcd(floor(acot(n)), A093105(n+2))`
-/

namespace A093104.P4789803679405502759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A093105 (n + 2))

end

end A093104.P4789803679405502759

/-! ## A093104.P10036942321145632292

`gcd(A000038(n), A093105(n+2))`
-/

namespace A093104.P10036942321145632292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A093105 (n + 2))

end

end A093104.P10036942321145632292

/-! ## A093104.P12585813321071528143

`A093105(n+2)%A000040(Δ[n^3])`
-/

namespace A093104.P12585813321071528143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093105 (n + 2)) (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A093104.P12585813321071528143

/-! ## A093104.P9550324271076429873

`A093105(n+2)^and(1, A000040(n+1))`
-/

namespace A093104.P9550324271076429873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093105 (n + 2) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A093104.P9550324271076429873

/-! ## A093104.P8477060127987111182

`A093105(n+2)^A000045(round(n/(n+1)))`
-/

namespace A093104.P8477060127987111182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093105 (n + 2) : ℚ) ^ (A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A093104.P8477060127987111182

/-!
# A093106: Numbers k such that the k-th cyclotomic polynomial evaluated at 2 (=A019320(k)) is not coprime to k.

The programs for A093106, there is no canonical definition to state claims against.
-/

/-! ## A093106.P4523750836800097853

`eq[A250208(n+1), A256267(n+1)]+1`
-/

namespace A093106.P4523750836800097853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093106.P4523750836800097853

/-! ## A093106.P2773694865562779211

`A153152(eq[A250208(n+1), A256267(n+1)])`
-/

namespace A093106.P2773694865562779211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A093106.P2773694865562779211

/-! ## A093106.P1922961827917159647

`A049705(A052529(n+2))*A093108(n+1)`
-/

namespace A093106.P1922961827917159647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A052529 (n + 2)).toNat * A093108 (n + 1)

end

end A093106.P1922961827917159647

/-!
# A093109: Numbers n such that the Zsigmondy number Zs(n,5,1) differs from the n-th cyclotomic polynomial evaluated at 5.

The programs for A093109, there is no canonical definition to state claims against.
-/

/-! ## A093109.P1690431713282044333

`A351870(2*A045583(n+1))`
-/

namespace A093109.P1690431713282044333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (2 * A045583 (n + 1)).toNat

end

end A093109.P1690431713282044333

/-! ## A093109.P14673478269027136954

`A000005(A045535(n))*A045583(n+1)`
-/

namespace A093109.P14673478269027136954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A045535 n).toNat * A045583 (n + 1)

end

end A093109.P14673478269027136954

/-! ## A093109.P7740952853313519479

`A000005(A171434(n+1))*A045583(n+1)`
-/

namespace A093109.P7740952853313519479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A171434 (n + 1)).toNat * A045583 (n + 1)

end

end A093109.P7740952853313519479

/-! ## A093109.P4021152965859060287

`A045583(n+1)*A126865(A077497(n+4))`
-/

namespace A093109.P4021152965859060287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1) * A126865 (A077497 (n + 4)).toNat

end

end A093109.P4021152965859060287

/-! ## A093109.P12967674052203112873

`A045583(n+1)*A286540(A045544(n+5))`
-/

namespace A093109.P12967674052203112873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1) * A286540 (A045544 (n + 5)).toNat

end

end A093109.P12967674052203112873

/-!
# A093110: Numbers that can be written as a sum of three elements from A051912.

The programs for A093110, there is no canonical definition to state claims against.
-/

/-! ## A093110.P17005589656563687651

`lt[A240231(A101278(2*n+3)), 4]`
-/

namespace A093110.P17005589656563687651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240231 (A101278 (2 * n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A093110.P17005589656563687651

/-! ## A093110.P8263612283940518064

`lt[A008611(A101278(2*n+3)), A004767(n)]`
-/

namespace A093110.P8263612283940518064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A101278 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093110.P8263612283940518064

/-! ## A093110.P1431341645664254649

`eq[A052375(n+1), A052721(A053735(2*n+3))]`
-/

namespace A093110.P1431341645664254649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052721 (A053735 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093110.P1431341645664254649

/-! ## A093110.P6284287680129846345

`lt[A227428(2*n+3), A335465(A035116(n+1))]`
-/

namespace A093110.P6284287680129846345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (A035116 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093110.P6284287680129846345

/-! ## A093110.P13869730615420803066

`lt[A240957(A053735(2*n+3)), A326259(n+1)]`
-/

namespace A093110.P13869730615420803066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240957 (A053735 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093110.P13869730615420803066

/-!
# A093112: a(n) = (2^n-1)^2 - 2.

The programs for A093112, the canonical program `A093112.P7388753159867486684` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093112 has offset 1).

The definition of A093112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1)-1)²-2` (program `A093112.P7388753159867486684`, by `A093112.P7388753159867486684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093112.P7388753159867486684

`(2^(n+1)-1)²-2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093112

/-- `(2^(n+1)-1)²-2` -/
def P7388753159867486684.Spec : Prop :=
  ∀ n, P7388753159867486684.a n = A093112 (n + 1)

theorem P7388753159867486684.correct : P7388753159867486684.Spec := by
  intro n
  simp only [A093112, Nat.add_sub_cancel]

end A093112

/-! ## A093112.P3210892266635180176

`floor(∑[2*a(n-1)]²-ϕ)` with `a(0)=1`
-/

namespace A093112.P3210892266635180176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ) - Real.goldenRatio⌋

end

end A093112.P3210892266635180176

namespace A093112

/-- `floor(∑[2*a(n-1)]²-ϕ)` -/
def P3210892266635180176.Spec : Prop :=
  ∀ n, P3210892266635180176.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P13433473921534603042

`or(1, ∑[2*a(n-1)]²-3)` with `a(0)=1`
-/

namespace A093112.P13433473921534603042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 3)

end

end A093112.P13433473921534603042

namespace A093112

/-- `or(1, ∑[2*a(n-1)]²-3)` -/
def P13433473921534603042.Spec : Prop :=
  ∀ n, P13433473921534603042.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P12398798775740170191

`or(1, A271061(n)-2)`
-/

namespace A093112.P12398798775740170191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271061 n - 2)

end

end A093112.P12398798775740170191

namespace A093112

/-- `or(1, A271061(n)-2)` -/
def P12398798775740170191.Spec : Prop :=
  ∀ n, P12398798775740170191.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P17457344213940104045

`record[A077896(n)²-2]`
-/

namespace A093112.P17457344213940104045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P17457344213940104045

namespace A093112

/-- `record[A077896(n)²-2]` -/
def P17457344213940104045.Spec : Prop :=
  ∀ n, P17457344213940104045.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P14699997974491010364

`record[A094024(n)²-2]`
-/

namespace A093112.P14699997974491010364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P14699997974491010364

namespace A093112

/-- `record[A094024(n)²-2]` -/
def P14699997974491010364.Spec : Prop :=
  ∀ n, P14699997974491010364.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P5924817193819435314

`record[A290418(n)²-2]`
-/

namespace A093112.P5924817193819435314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290418 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P5924817193819435314

namespace A093112

/-- `record[A290418(n)²-2]` -/
def P5924817193819435314.Spec : Prop :=
  ∀ n, P5924817193819435314.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P17316335007033328511

`record[A290422(n)²-2]`
-/

namespace A093112.P17316335007033328511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290422 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P17316335007033328511

namespace A093112

/-- `record[A290422(n)²-2]` -/
def P17316335007033328511.Spec : Prop :=
  ∀ n, P17316335007033328511.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P9173720678102718501

`record[A290673(n)²-2]`
-/

namespace A093112.P9173720678102718501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290673 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P9173720678102718501

namespace A093112

/-- `record[A290673(n)²-2]` -/
def P9173720678102718501.Spec : Prop :=
  ∀ n, P9173720678102718501.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P17164639875200030273

`record[Δ[A075427(n)]²-2]`
-/

namespace A093112.P17164639875200030273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P17164639875200030273

namespace A093112

/-- `record[Δ[A075427(n)]²-2]` -/
def P17164639875200030273.Spec : Prop :=
  ∀ n, P17164639875200030273.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P7740887254373269378

`or(1, A060867(n+1)-2)`
-/

namespace A093112.P7740887254373269378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060867 (n + 1) - 2)

end

end A093112.P7740887254373269378

namespace A093112

/-- `or(1, A060867(n+1)-2)` -/
def P7740887254373269378.Spec : Prop :=
  ∀ n, P7740887254373269378.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P3512647436887512300

`or(A273767(n)-2, A155212(n))`
-/

namespace A093112.P3512647436887512300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A273767 n - 2) (A155212 n)

end

end A093112.P3512647436887512300

namespace A093112

/-- `or(A273767(n)-2, A155212(n))` -/
def P3512647436887512300.Spec : Prop :=
  ∀ n, P3512647436887512300.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P16825440324987275709

`record[A130330(n)²-2]`
-/

namespace A093112.P16825440324987275709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P16825440324987275709

namespace A093112

/-- `record[A130330(n)²-2]` -/
def P16825440324987275709.Spec : Prop :=
  ∀ n, P16825440324987275709.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P10711251221884540650

`record[A104709(n)²-2]`
-/

namespace A093112.P10711251221884540650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P10711251221884540650

namespace A093112

/-- `record[A104709(n)²-2]` -/
def P10711251221884540650.Spec : Prop :=
  ∀ n, P10711251221884540650.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P7772429902146432429

`record[A130328(n)²-2]`
-/

namespace A093112.P7772429902146432429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P7772429902146432429

namespace A093112

/-- `record[A130328(n)²-2]` -/
def P7772429902146432429.Spec : Prop :=
  ∀ n, P7772429902146432429.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P7232649395535317807

`record[A050227(n+1)²-2]`
-/

namespace A093112.P7232649395535317807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050227 (n + 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P7232649395535317807

namespace A093112

/-- `record[A050227(n+1)²-2]` -/
def P7232649395535317807.Spec : Prop :=
  ∀ n, P7232649395535317807.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P4553887728733093354

`record[A177992(n)²-2]`
-/

namespace A093112.P4553887728733093354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177992 n ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P4553887728733093354

namespace A093112

/-- `record[A177992(n)²-2]` -/
def P4553887728733093354.Spec : Prop :=
  ∀ n, P4553887728733093354.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P586481636331487156

`record[Δ[A055248(n)]²-2]`
-/

namespace A093112.P586481636331487156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P586481636331487156

namespace A093112

/-- `record[Δ[A055248(n)]²-2]` -/
def P586481636331487156.Spec : Prop :=
  ∀ n, P586481636331487156.a n = A093112 (n + 1)

end A093112

/-! ## A093112.P2455078145657169807

`record[Δ[A068009(n)]²-2]`
-/

namespace A093112.P2455078145657169807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093112.P2455078145657169807

namespace A093112

/-- `record[Δ[A068009(n)]²-2]` -/
def P2455078145657169807.Spec : Prop :=
  ∀ n, P2455078145657169807.a n = A093112 (n + 1)

end A093112

/-!
# A093113: Coefficients of the solution to a functional equation.

The programs for A093113, there is no canonical definition to state claims against.
-/

/-! ## A093113.P5677344994719593001

`A327550(n)-A302983(∏[A123193(n+1)])`
-/

namespace A093113.P5677344994719593001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327550 n - A302983 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093113.P5677344994719593001

/-! ## A093113.P2038593687441701208

`A385890(A105319(n))`
-/

namespace A093113.P2038593687441701208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385890 (A105319 n).toNat

end

end A093113.P2038593687441701208

/-!
# A093115: Number of partitions of n^2 into squares not greater than n.

The programs for A093115, there is no canonical definition to state claims against.
-/

/-! ## A093115.P3347085957979542239

`A369340(n²)`
-/

namespace A093115.P3347085957979542239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369340 (n ^ 2)

end

end A093115.P3347085957979542239

/-! ## A093115.P17760718891106398868

`A368873(n)*A369340(A000290(n))`
-/

namespace A093115.P17760718891106398868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368873 n * A369340 (A000290 n).toNat

end

end A093115.P17760718891106398868

/-! ## A093115.P742195127134616715

`A369340(A000290(n))*A369340(n)`
-/

namespace A093115.P742195127134616715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369340 (A000290 n).toNat * A369340 n

end

end A093115.P742195127134616715

/-! ## A093115.P10476620013330848163

`A369340(A000290(n))%A001579(n)`
-/

namespace A093115.P10476620013330848163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369340 (A000290 n).toNat) (A001579 n)

end

end A093115.P10476620013330848163

/-!
# A093117: a(n) = 8*a(n-1) + 21*a(n-2), with a(1)=1, a(2)=15.

The programs for A093117, the canonical program `A093117.P14369187194372990801` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093117 has offset 1).

The definition of A093117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+21*a(n-2)` (program `A093117.P14369187194372990801`, by `A093117.P14369187194372990801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093117.P14369187194372990801

`8*a(n-1)+21*a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093117

/-- `8*a(n-1)+21*a(n-2)` -/
def P14369187194372990801.Spec : Prop :=
  ∀ n, (P14369187194372990801.a n : ℤ) = A093117 (n + 1)

theorem P14369187194372990801.correct : P14369187194372990801.Spec := by
  intro n
  simp only [A093117, Nat.add_sub_cancel]

end A093117

/-! ## A093117.P7098462916579333265

`ogf((1+7x)/(1-8x-21x^2))`
-/

namespace A093117.P7098462916579333265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -8, -21] n

end

end A093117.P7098462916579333265

namespace A093117

/-- `ogf((1+7x)/(1-8x-21x^2))` -/
def P7098462916579333265.Spec : Prop :=
  ∀ n, P7098462916579333265.a n = A093117 (n + 1)

end A093117

/-!
# A093118: Triangle T read by rows: T(m,n) = number of convex polyominoes with an m+1 X n+1 minimal bounding rectangle, m > 0, n <= m.

The programs for A093118, there is no canonical definition to state claims against.
-/

/-! ## A093118.P17890292907440172339

`(A319594(3*n+2)+1)*A000203((n+1)/2^val(n+1, 2))`
-/

namespace A093118.P17890292907440172339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319594 (3 * n + 2) + 1) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A093118.P17890292907440172339

/-!
# A093119: Number of convex polyominoes with a 3 X n+1 minimal bounding rectangle.

The programs for A093119, the canonical program `A093119.P9937394839075987494` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093119 has offset 1).

The definition of A093119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093119.P9937394839075987494

`(6*(n+1)^4+20*(n+1)^3+27*(n+1)²+19*(n+1)+6)/6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093119

/-- `(6*(n+1)^4+20*(n+1)^3+27*(n+1)²+19*(n+1)+6)/6` -/
def P9937394839075987494.Spec : Prop :=
  ∀ n, P9937394839075987494.a n = (A093119 (n + 1) : ℚ)

end A093119

/-! ## A093119.P11202722262914270997

`A253130(n+1)+A053134(n)`
-/

namespace A093119.P11202722262914270997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253130 (n + 1) + A053134 n

end

end A093119.P11202722262914270997

namespace A093119

/-- `A253130(n+1)+A053134(n)` -/
def P11202722262914270997.Spec : Prop :=
  ∀ n, P11202722262914270997.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P16606388793114766671

`A202785(n+1)-A213556(n+1)`
-/

namespace A093119.P16606388793114766671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202785 (n + 1) - A213556 (n + 1)

end

end A093119.P16606388793114766671

namespace A093119

/-- `A202785(n+1)-A213556(n+1)` -/
def P16606388793114766671.Spec : Prop :=
  ∀ n, P16606388793114766671.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P9263857215563792846

`abs(A202785(n+1)-(A276159(n)+A027480(n)))`
-/

namespace A093119.P9263857215563792846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202785 (n + 1) - (A276159 n + A027480 n)|

end

end A093119.P9263857215563792846

namespace A093119

/-- `abs(A202785(n+1)-(A276159(n)+A027480(n)))` -/
def P9263857215563792846.Spec : Prop :=
  ∀ n, P9263857215563792846.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P1557919262017895752

`A006324(n+1)+A006324(n+1)+A006324(n+2)`
-/

namespace A093119.P1557919262017895752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) + (A006324 (n + 1) + A006324 (n + 2))

end

end A093119.P1557919262017895752

namespace A093119

/-- `A006324(n+1)+A006324(n+1)+A006324(n+2)` -/
def P1557919262017895752.Spec : Prop :=
  ∀ n, P1557919262017895752.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P6528333703369762652

`abs(A202785(n+1)-(A213546(n+1)-A292053(n+1)))`
-/

namespace A093119.P6528333703369762652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202785 (n + 1) - (A213546 (n + 1) - A292053 (n + 1))|

end

end A093119.P6528333703369762652

namespace A093119

/-- `abs(A202785(n+1)-(A213546(n+1)-A292053(n+1)))` -/
def P6528333703369762652.Spec : Prop :=
  ∀ n, P6528333703369762652.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P6398544022823448000

`abs(A202785(n+1)-Δ[n*A024166(n)])`
-/

namespace A093119.P6398544022823448000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202785 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A093119.P6398544022823448000

namespace A093119

/-- `abs(A202785(n+1)-Δ[n*A024166(n)])` -/
def P6398544022823448000.Spec : Prop :=
  ∀ n, P6398544022823448000.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P11796939552130734635

`A213834(n+2)+A213834(n+2)-A081436(n+1)`
-/

namespace A093119.P11796939552130734635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213834 (n + 2) + (A213834 (n + 2) - A081436 (n + 1))

end

end A093119.P11796939552130734635

namespace A093119

/-- `A213834(n+2)+A213834(n+2)-A081436(n+1)` -/
def P11796939552130734635.Spec : Prop :=
  ∀ n, P11796939552130734635.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P15442096963290567988

`abs(A024166(n+1)+n*A000537(n+1)-A202785(n+1))`
-/

namespace A093119.P15442096963290567988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024166 (n + 1) + (n : ℤ) * A000537 (n + 1) - A202785 (n + 1)|

end

end A093119.P15442096963290567988

namespace A093119

/-- `abs(A024166(n+1)+n*A000537(n+1)-A202785(n+1))` -/
def P15442096963290567988.Spec : Prop :=
  ∀ n, P15442096963290567988.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P10274224168900750178

`A000583(n+2)-A016061(n+1)`
-/

namespace A093119.P10274224168900750178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 2) - A016061 (n + 1)

end

end A093119.P10274224168900750178

namespace A093119

/-- `A000583(n+2)-A016061(n+1)` -/
def P10274224168900750178.Spec : Prop :=
  ∀ n, P10274224168900750178.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P14002230384911005300

`∑[A006000(2*(n+1))+A000007(n)]`
-/

namespace A093119.P14002230384911005300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 (2 * (n + 1)) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093119.P14002230384911005300

namespace A093119

/-- `∑[A006000(2*(n+1))+A000007(n)]` -/
def P14002230384911005300.Spec : Prop :=
  ∀ n, P14002230384911005300.a n = A093119 (n + 1)

end A093119

/-! ## A093119.P17777119287549436169

`A070893(2*(n+1))+A002412(n+2)`
-/

namespace A093119.P17777119287549436169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (2 * (n + 1)) + A002412 (n + 2)

end

end A093119.P17777119287549436169

namespace A093119

/-- `A070893(2*(n+1))+A002412(n+2)` -/
def P17777119287549436169.Spec : Prop :=
  ∀ n, P17777119287549436169.a n = A093119 (n + 1)

end A093119

/-!
# A093120: Number of convex polyominoes with an n+1 X n+1 minimal bounding square.

The programs for A093120, the canonical program `A093120.P14751431558590947049` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093120 has offset 1).

The definition of A093120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093120.P14751431558590947049

`((2+n+1)*C(4*(n+1), 2*(n+1))-2*(n+1)*C(2*(n+1), n+1)²)/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093120

/-- `((2+n+1)*C(4*(n+1), 2*(n+1))-2*(n+1)*C(2*(n+1), n+1)²)/2` -/
def P14751431558590947049.Spec : Prop :=
  ∀ n, P14751431558590947049.a n = (A093120 (n + 1) : ℚ)

end A093120

/-! ## A093120.P2145034071122343116

`A093118(∑[n+1])`
-/

namespace A093120.P2145034071122343116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093120.P2145034071122343116

namespace A093120

/-- `A093118(∑[n+1])` -/
def P2145034071122343116.Spec : Prop :=
  ∀ n, P2145034071122343116.a n = A093120 (n + 1)

end A093120

/-! ## A093120.P9527692799934187794

`record[A093118(A007401(n+1))]`
-/

namespace A093120.P9527692799934187794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093118 (A007401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093120.P9527692799934187794

namespace A093120

/-- `record[A093118(A007401(n+1))]` -/
def P9527692799934187794.Spec : Prop :=
  ∀ n, P9527692799934187794.a n = A093120 (n + 1)

end A093120

/-! ## A093120.P4092197779381911885

`record[A093118(A038722(n+1))]`
-/

namespace A093120.P4092197779381911885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093118 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093120.P4092197779381911885

namespace A093120

/-- `record[A093118(A038722(n+1))]` -/
def P4092197779381911885.Spec : Prop :=
  ∀ n, P4092197779381911885.a n = A093120 (n + 1)

end A093120

/-! ## A093120.P9118955891029907099

`record[A093118(n+1)*A152140(n)]`
-/

namespace A093120.P9118955891029907099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093118 (n + 1) * A152140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093120.P9118955891029907099

namespace A093120

/-- `record[A093118(n+1)*A152140(n)]` -/
def P9118955891029907099.Spec : Prop :=
  ∀ n, P9118955891029907099.a n = A093120 (n + 1)

end A093120

/-! ## A093120.P11271173402239023384

`record[root(A093118(n+1), A099375(n))]`
-/

namespace A093120.P11271173402239023384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093118 (n + 1) : ℝ) ^ (1 / (A099375 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093120.P11271173402239023384

namespace A093120

/-- `record[root(A093118(n+1), A099375(n))]` -/
def P11271173402239023384.Spec : Prop :=
  ∀ n, P11271173402239023384.a n = (A093120 (n + 1) : ℝ)

end A093120

/-! ## A093120.P10444116985000825103

`record[root(A093118(n+1), A004736(n+1))]`
-/

namespace A093120.P10444116985000825103
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093118 (n + 1) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093120.P10444116985000825103

namespace A093120

/-- `record[root(A093118(n+1), A004736(n+1))]` -/
def P10444116985000825103.Spec : Prop :=
  ∀ n, P10444116985000825103.a n = (A093120 (n + 1) : ℝ)

end A093120

/-! ## A093120.P3911249559578791806

`record[root(A093118(n+1), A075497(n+1))]`
-/

namespace A093120.P3911249559578791806
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093118 (n + 1) : ℝ) ^ (1 / (A075497 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093120.P3911249559578791806

namespace A093120

/-- `record[root(A093118(n+1), A075497(n+1))]` -/
def P3911249559578791806.Spec : Prop :=
  ∀ n, P3911249559578791806.a n = (A093120 (n + 1) : ℝ)

end A093120

/-! ## A093120.P13628958814862715839

`record[A093118(n+1)/A075504(n+1)]`
-/

namespace A093120.P13628958814862715839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093118 (n + 1) : ℚ) / (A075504 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093120.P13628958814862715839

namespace A093120

/-- `record[A093118(n+1)/A075504(n+1)]` -/
def P13628958814862715839.Spec : Prop :=
  ∀ n, P13628958814862715839.a n = (A093120 (n + 1) : ℚ)

end A093120

/-!
# A093121: A Jacobsthal Fibonacci product.

The programs for A093121, the canonical program `A093121.P10784834633618885467` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093121 has offset 0).

The definition of A093121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093121.P10784834633618885467

`A078008(n)*A000045(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093121

/-- `A078008(n)*A000045(n+1)` -/
def P10784834633618885467.Spec : Prop :=
  ∀ n, P10784834633618885467.a n = A093121 n

theorem P10784834633618885467.correct : P10784834633618885467.Spec := by
  intro n
  simp only [A093121]

end A093121

/-! ## A093121.P9764263527658498662

`Δ[round(2^n/3)]*A103609(2*(n+1))`
-/

namespace A093121.P9764263527658498662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A103609 (2 * (n + 1))

end

end A093121.P9764263527658498662

namespace A093121

/-- `Δ[round(2^n/3)]*A103609(2*(n+1))` -/
def P9764263527658498662.Spec : Prop :=
  ∀ n, P9764263527658498662.a n = A093121 n

end A093121

/-! ## A093121.P11410674793940817562

`A093045(n)+A093044(n)`
-/

namespace A093121.P11410674793940817562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093045 n + A093044 n

end

end A093121.P11410674793940817562

namespace A093121

/-- `A093045(n)+A093044(n)` -/
def P11410674793940817562.Spec : Prop :=
  ∀ n, P11410674793940817562.a n = A093121 n

end A093121

/-! ## A093121.P9050369447540221822

`∑[A212804(n)]*A078008(n)`
-/

namespace A093121.P9050369447540221822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A078008 n

end

end A093121.P9050369447540221822

namespace A093121

/-- `∑[A212804(n)]*A078008(n)` -/
def P9050369447540221822.Spec : Prop :=
  ∀ n, P9050369447540221822.a n = A093121 n

end A093121

/-! ## A093121.P16088890723953107729

`A078008(n)*A212804(n+2)`
-/

namespace A093121.P16088890723953107729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n * A212804 (n + 2)

end

end A093121.P16088890723953107729

namespace A093121

/-- `A078008(n)*A212804(n+2)` -/
def P16088890723953107729.Spec : Prop :=
  ∀ n, P16088890723953107729.a n = A093121 n

end A093121

/-! ## A093121.P7635116447653780543

`∑[A212804(n)]*Δ[A001045(n)]`
-/

namespace A093121.P7635116447653780543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A093121.P7635116447653780543

namespace A093121

/-- `∑[A212804(n)]*Δ[A001045(n)]` -/
def P7635116447653780543.Spec : Prop :=
  ∀ n, P7635116447653780543.a n = A093121 n

end A093121

/-! ## A093121.P11104655814641720928

`A000045(n+1)*Δ[A001045(n)]`
-/

namespace A093121.P11104655814641720928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A093121.P11104655814641720928

namespace A093121

/-- `A000045(n+1)*Δ[A001045(n)]` -/
def P11104655814641720928.Spec : Prop :=
  ∀ n, P11104655814641720928.a n = A093121 n

end A093121

/-! ## A093121.P13744316763570067902

`Δ[A000071(n+2)]*A078008(n)`
-/

namespace A093121.P13744316763570067902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078008 n

end

end A093121.P13744316763570067902

namespace A093121

/-- `Δ[A000071(n+2)]*A078008(n)` -/
def P13744316763570067902.Spec : Prop :=
  ∀ n, P13744316763570067902.a n = A093121 n

end A093121

/-! ## A093121.P13217915725931581235

`(A081659(n)-n)*Δ[A001045(n)]`
-/

namespace A093121.P13217915725931581235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081659 n - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A093121.P13217915725931581235

namespace A093121

/-- `(A081659(n)-n)*Δ[A001045(n)]` -/
def P13217915725931581235.Spec : Prop :=
  ∀ n, P13217915725931581235.a n = A093121 n

end A093121

/-! ## A093121.P8483400780280336360

`(A000071(n+1)+1)*A078008(n)`
-/

namespace A093121.P8483400780280336360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A078008 n

end

end A093121.P8483400780280336360

namespace A093121

/-- `(A000071(n+1)+1)*A078008(n)` -/
def P8483400780280336360.Spec : Prop :=
  ∀ n, P8483400780280336360.a n = A093121 n

end A093121

/-! ## A093121.P5479801746974916449

`A000045(n+1)*A230096(2*n)`
-/

namespace A093121.P5479801746974916449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A230096 (2 * n)

end

end A093121.P5479801746974916449

namespace A093121

/-- `A000045(n+1)*A230096(2*n)` -/
def P5479801746974916449.Spec : Prop :=
  ∀ n, P5479801746974916449.a n = A093121 n

end A093121

/-! ## A093121.P6514732612033020628

`(A000071(n+1)+1)*Δ[A001045(n)]`
-/

namespace A093121.P6514732612033020628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * (f1 (n + 1) - f1 n)

end

end A093121.P6514732612033020628

namespace A093121

/-- `(A000071(n+1)+1)*Δ[A001045(n)]` -/
def P6514732612033020628.Spec : Prop :=
  ∀ n, P6514732612033020628.a n = A093121 n

end A093121

/-! ## A093121.P14027531450874018531

`(A000071(n+1)+1)*Δ[A153643(n)]`
-/

namespace A093121.P14027531450874018531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * (f1 (n + 1) - f1 n)

end

end A093121.P14027531450874018531

namespace A093121

/-- `(A000071(n+1)+1)*Δ[A153643(n)]` -/
def P14027531450874018531.Spec : Prop :=
  ∀ n, P14027531450874018531.a n = A093121 n

end A093121

/-! ## A093121.P13590799143166712471

`(A001611(n+1)-1)*Δ[A001045(n)]`
-/

namespace A093121.P13590799143166712471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 (n + 1) - 1) * (f1 (n + 1) - f1 n)

end

end A093121.P13590799143166712471

namespace A093121

/-- `(A001611(n+1)-1)*Δ[A001045(n)]` -/
def P13590799143166712471.Spec : Prop :=
  ∀ n, P13590799143166712471.a n = A093121 n

end A093121

/-! ## A093121.P14451494117755496051

`(A141325(n+1)+A131531(n+1))*A078008(n)`
-/

namespace A093121.P14451494117755496051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141325 (n + 1) + A131531 (n + 1)) * A078008 n

end

end A093121.P14451494117755496051

namespace A093121

/-- `(A141325(n+1)+A131531(n+1))*A078008(n)` -/
def P14451494117755496051.Spec : Prop :=
  ∀ n, P14451494117755496051.a n = A093121 n

end A093121

/-! ## A093121.P4197297645522741463

`(A001045(n+1)-A001045(n))*A000045(n+1)`
-/

namespace A093121.P4197297645522741463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) - A001045 n) * A000045 (n + 1)

end

end A093121.P4197297645522741463

namespace A093121

/-- `(A001045(n+1)-A001045(n))*A000045(n+1)` -/
def P4197297645522741463.Spec : Prop :=
  ∀ n, P4197297645522741463.a n = A093121 n

end A093121

/-! ## A093121.P5473018300256776052

`(A128209(n+1)-A128209(n))*A000045(n+1)`
-/

namespace A093121.P5473018300256776052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128209 (n + 1) - A128209 n) * A000045 (n + 1)

end

end A093121.P5473018300256776052

namespace A093121

/-- `(A128209(n+1)-A128209(n))*A000045(n+1)` -/
def P5473018300256776052.Spec : Prop :=
  ∀ n, P5473018300256776052.a n = A093121 n

end A093121

/-! ## A093121.P9549985688842200571

`Δ[A093042(n)]-A093043(n)`
-/

namespace A093121.P9549985688842200571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A093043 n

end

end A093121.P9549985688842200571

namespace A093121

/-- `Δ[A093042(n)]-A093043(n)` -/
def P9549985688842200571.Spec : Prop :=
  ∀ n, P9549985688842200571.a n = A093121 n

end A093121

/-! ## A093121.P10009826005773392644

`A093042(n+1)-A093122(n)`
-/

namespace A093121.P10009826005773392644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093042 (n + 1) - A093122 n

end

end A093121.P10009826005773392644

namespace A093121

/-- `A093042(n+1)-A093122(n)` -/
def P10009826005773392644.Spec : Prop :=
  ∀ n, P10009826005773392644.a n = A093121 n

end A093121

/-!
# A093122: a(n) = Jacobsthal(n) * Fibonacci(n+1).

The programs for A093122, the canonical program `A093122.P10638775384320782677` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093122 has offset 0).

The definition of A093122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093122.P10638775384320782677

`a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093122

/-- `a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` -/
def P10638775384320782677.Spec : Prop :=
  ∀ n, P10638775384320782677.a n = A093122 n

theorem P10638775384320782677.correct : P10638775384320782677.Spec := by
  intro n
  simp only [A093122]

end A093122

/-! ## A093122.P3501581377962486130

`A001045(n)*A000045(n+1)`
-/

namespace A093122.P3501581377962486130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A000045 (n + 1)

end

end A093122.P3501581377962486130

namespace A093122

/-- `A001045(n)*A000045(n+1)` -/
def P3501581377962486130.Spec : Prop :=
  ∀ n, P3501581377962486130.a n = A093122 n

end A093122

/-! ## A093122.P4921546825892487126

`round(2^n/3)*∑[A212804(n)]`
-/

namespace A093122.P4921546825892487126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093122.P4921546825892487126

namespace A093122

/-- `round(2^n/3)*∑[A212804(n)]` -/
def P4921546825892487126.Spec : Prop :=
  ∀ n, P4921546825892487126.a n = A093122 n

end A093122

/-! ## A093122.P17765710527712955638

`round(2^n/3)*A103609(2*(n+1))`
-/

namespace A093122.P17765710527712955638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * A103609 (2 * (n + 1))

end

end A093122.P17765710527712955638

namespace A093122

/-- `round(2^n/3)*A103609(2*(n+1))` -/
def P17765710527712955638.Spec : Prop :=
  ∀ n, P17765710527712955638.a n = A093122 n

end A093122

/-! ## A093122.P14782385068542230091

`Δ[floor(2^n/3)]*Δ[A000045(n+2)]`
-/

namespace A093122.P14782385068542230091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 3⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093122.P14782385068542230091

namespace A093122

/-- `Δ[floor(2^n/3)]*Δ[A000045(n+2)]` -/
def P14782385068542230091.Spec : Prop :=
  ∀ n, P14782385068542230091.a n = A093122 n

end A093122

/-! ## A093122.P5674351074469347091

`A000045(-xor(n, -1))*Δ[floor(2^n/3)]`
-/

namespace A093122.P5674351074469347091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (-Int.xor (n : ℤ) (-1)).toNat * (f1 (n + 1) - f1 n)

end

end A093122.P5674351074469347091

namespace A093122

/-- `A000045(-xor(n, -1))*Δ[floor(2^n/3)]` -/
def P5674351074469347091.Spec : Prop :=
  ∀ n, P5674351074469347091.a n = A093122 n

end A093122

/-! ## A093122.P5502785957633550497

`A093043(n)+A093042(n)`
-/

namespace A093122.P5502785957633550497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093043 n + A093042 n

end

end A093122.P5502785957633550497

namespace A093122

/-- `A093043(n)+A093042(n)` -/
def P5502785957633550497.Spec : Prop :=
  ∀ n, P5502785957633550497.a n = A093122 n

end A093122

/-! ## A093122.P13401728464586125449

`∑[A212804(n)]*A001045(n)`
-/

namespace A093122.P13401728464586125449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001045 n

end

end A093122.P13401728464586125449

namespace A093122

/-- `∑[A212804(n)]*A001045(n)` -/
def P13401728464586125449.Spec : Prop :=
  ∀ n, P13401728464586125449.a n = A093122 n

end A093122

/-! ## A093122.P17239659471151759165

`A001045(n)*A212804(n+2)`
-/

namespace A093122.P17239659471151759165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A212804 (n + 2)

end

end A093122.P17239659471151759165

namespace A093122

/-- `A001045(n)*A212804(n+2)` -/
def P17239659471151759165.Spec : Prop :=
  ∀ n, P17239659471151759165.a n = A093122 n

end A093122

/-! ## A093122.P2003377285211597862

`A001045(n)*A324969(n+2)`
-/

namespace A093122.P2003377285211597862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A324969 (n + 2)

end

end A093122.P2003377285211597862

namespace A093122

/-- `A001045(n)*A324969(n+2)` -/
def P2003377285211597862.Spec : Prop :=
  ∀ n, P2003377285211597862.a n = A093122 n

end A093122

/-! ## A093122.P15552572956891321713

`(A081659(n)-n)*A001045(n)`
-/

namespace A093122.P15552572956891321713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081659 n - (n : ℤ)) * A001045 n

end

end A093122.P15552572956891321713

namespace A093122

/-- `(A081659(n)-n)*A001045(n)` -/
def P15552572956891321713.Spec : Prop :=
  ∀ n, P15552572956891321713.a n = A093122 n

end A093122

/-! ## A093122.P18310650807179636138

`A000045(n+1)*Δ[A005578(n)]`
-/

namespace A093122.P18310650807179636138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A093122.P18310650807179636138

namespace A093122

/-- `A000045(n+1)*Δ[A005578(n)]` -/
def P18310650807179636138.Spec : Prop :=
  ∀ n, P18310650807179636138.a n = A093122 n

end A093122

/-! ## A093122.P17968053703640764318

`Δ[A000071(n+2)]*A001045(n)`
-/

namespace A093122.P17968053703640764318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A093122.P17968053703640764318

namespace A093122

/-- `Δ[A000071(n+2)]*A001045(n)` -/
def P17968053703640764318.Spec : Prop :=
  ∀ n, P17968053703640764318.a n = A093122 n

end A093122

/-! ## A093122.P8676734459231097838

`∑[A212804(n)]*A092808(xor(1, n))`
-/

namespace A093122.P8676734459231097838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A092808 (Nat.xor 1 n)

end

end A093122.P8676734459231097838

namespace A093122

/-- `∑[A212804(n)]*A092808(xor(1, n))` -/
def P8676734459231097838.Spec : Prop :=
  ∀ n, P8676734459231097838.a n = A093122 n

end A093122

/-! ## A093122.P2479487451948247087

`(A000071(n+1)+1)*A001045(n)`
-/

namespace A093122.P2479487451948247087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A001045 n

end

end A093122.P2479487451948247087

namespace A093122

/-- `(A000071(n+1)+1)*A001045(n)` -/
def P2479487451948247087.Spec : Prop :=
  ∀ n, P2479487451948247087.a n = A093122 n

end A093122

/-! ## A093122.P6698438903046458441

`A000045(n+1)*A328284(n+3)`
-/

namespace A093122.P6698438903046458441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A328284 (n + 3)

end

end A093122.P6698438903046458441

namespace A093122

/-- `A000045(n+1)*A328284(n+3)` -/
def P6698438903046458441.Spec : Prop :=
  ∀ n, P6698438903046458441.a n = A093122 n

end A093122

/-! ## A093122.P7054620238498335207

`A000045(n+1)*A133684(2*n)`
-/

namespace A093122.P7054620238498335207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A133684 (2 * n)

end

end A093122.P7054620238498335207

namespace A093122

/-- `A000045(n+1)*A133684(2*n)` -/
def P7054620238498335207.Spec : Prop :=
  ∀ n, P7054620238498335207.a n = A093122 n

end A093122

/-! ## A093122.P5627424638326620335

`A001045(n)*A174619(2*n+1)`
-/

namespace A093122.P5627424638326620335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A174619 (2 * n + 1)

end

end A093122.P5627424638326620335

namespace A093122

/-- `A001045(n)*A174619(2*n+1)` -/
def P5627424638326620335.Spec : Prop :=
  ∀ n, P5627424638326620335.a n = A093122 n

end A093122

/-! ## A093122.P16631417548662923558

`Δ[A053602(2*n+1)]*A001045(n)`
-/

namespace A093122.P16631417548662923558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A093122.P16631417548662923558

namespace A093122

/-- `Δ[A053602(2*n+1)]*A001045(n)` -/
def P16631417548662923558.Spec : Prop :=
  ∀ n, P16631417548662923558.a n = A093122 n

end A093122

/-! ## A093122.P5136369198171954929

`(A001045(n+1)-A094687(n))*A001045(n)`
-/

namespace A093122.P5136369198171954929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) - A094687 n) * A001045 n

end

end A093122.P5136369198171954929

namespace A093122

/-- `(A001045(n+1)-A094687(n))*A001045(n)` -/
def P5136369198171954929.Spec : Prop :=
  ∀ n, P5136369198171954929.a n = A093122 n

end A093122

/-!
# A093123: Third binomial transform of Fibonacci(3n-1) (A015448).

The programs for A093123, the canonical program `A093123.P8087304089970880975` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093123 has offset 0).

The definition of A093123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093123.P8087304089970880975

`2^n*A093129(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093123

/-- `2^n*A093129(n)` -/
def P8087304089970880975.Spec : Prop :=
  ∀ n, P8087304089970880975.a n = A093123 n

theorem P8087304089970880975.correct : P8087304089970880975.Spec := by
  intro n
  simp only [A093123]

end A093123

/-! ## A093123.P8105022467229182978

`(5-sqrt(5))*(5+sqrt(5))^n/10+(5+sqrt(5))*(5-sqrt(5))^n/10`
-/

namespace A093123.P8105022467229182978
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 - Real.sqrt (5 : ℝ)) * (5 + Real.sqrt (5 : ℝ)) ^ n / 10 + (5 + Real.sqrt (5 : ℝ)) * (5 - Real.sqrt (5 : ℝ)) ^ n / 10

end

end A093123.P8105022467229182978

namespace A093123

/-- `(5-sqrt(5))*(5+sqrt(5))^n/10+(5+sqrt(5))*(5-sqrt(5))^n/10` -/
def P8105022467229182978.Spec : Prop :=
  ∀ n, P8105022467229182978.a n = (A093123 n : ℝ)

end A093123

/-! ## A093123.P11704327499916412631

`ogf((1-6x)/(1-10x+20x^2))`
-/

namespace A093123.P11704327499916412631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -10, 20] n

end

end A093123.P11704327499916412631

namespace A093123

/-- `ogf((1-6x)/(1-10x+20x^2))` -/
def P11704327499916412631.Spec : Prop :=
  ∀ n, P11704327499916412631.a n = A093123 n

end A093123

/-! ## A093123.P11953138734793270986

`2^n*Δ[A260304(n)]`
-/

namespace A093123.P11953138734793270986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A093123.P11953138734793270986

namespace A093123

/-- `2^n*Δ[A260304(n)]` -/
def P11953138734793270986.Spec : Prop :=
  ∀ n, P11953138734793270986.a n = A093123 n

end A093123

/-! ## A093123.P4871913667436615169

`lcm(A093129(n), A137717(n))`
-/

namespace A093123.P4871913667436615169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093129 n) (A137717 n)

end

end A093123.P4871913667436615169

namespace A093123

/-- `lcm(A093129(n), A137717(n))` -/
def P4871913667436615169.Spec : Prop :=
  ∀ n, (P4871913667436615169.a n : ℤ) = A093123 n

end A093123

/-! ## A093123.P11210404896251940185

`abs(A093129(n)*A171449(n))`
-/

namespace A093123.P11210404896251940185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093129 n * A171449 n|

end

end A093123.P11210404896251940185

namespace A093123

/-- `abs(A093129(n)*A171449(n))` -/
def P11210404896251940185.Spec : Prop :=
  ∀ n, P11210404896251940185.a n = A093123 n

end A093123

/-! ## A093123.P10769488917266125183

`Δ[A260304(n)]*A000079(n)`
-/

namespace A093123.P10769488917266125183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A093123.P10769488917266125183

namespace A093123

/-- `Δ[A260304(n)]*A000079(n)` -/
def P10769488917266125183.Spec : Prop :=
  ∀ n, P10769488917266125183.a n = A093123 n

end A093123

/-! ## A093123.P13557676073658990874

`A093129(n)*A135530(2*n+1)`
-/

namespace A093123.P13557676073658990874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n * A135530 (2 * n + 1)

end

end A093123.P13557676073658990874

namespace A093123

/-- `A093129(n)*A135530(2*n+1)` -/
def P13557676073658990874.Spec : Prop :=
  ∀ n, P13557676073658990874.a n = A093123 n

end A093123

/-! ## A093123.P15959411474797489040

`A093129(n)*A163864(2*n+1)`
-/

namespace A093123.P15959411474797489040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n * A163864 (2 * n + 1)

end

end A093123.P15959411474797489040

namespace A093123

/-- `A093129(n)*A163864(2*n+1)` -/
def P15959411474797489040.Spec : Prop :=
  ∀ n, P15959411474797489040.a n = A093123 n

end A093123

/-! ## A093123.P14680491794006780248

`2^n*∑[A178381(record[A006257(n)])]`
-/

namespace A093123.P14680491794006780248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093123.P14680491794006780248

namespace A093123

/-- `2^n*∑[A178381(record[A006257(n)])]` -/
def P14680491794006780248.Spec : Prop :=
  ∀ n, P14680491794006780248.a n = A093123 n

end A093123

/-! ## A093123.P12270728150874785639

`A093129(n)*A130321(A000217(n))`
-/

namespace A093123.P12270728150874785639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n * A130321 (A000217 n).toNat

end

end A093123.P12270728150874785639

namespace A093123

/-- `A093129(n)*A130321(A000217(n))` -/
def P12270728150874785639.Spec : Prop :=
  ∀ n, P12270728150874785639.a n = A093123 n

end A093123

/-! ## A093123.P3939512627198891159

`∑[A178381(A004273(n))]*A000079(n)`
-/

namespace A093123.P3939512627198891159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A093123.P3939512627198891159

namespace A093123

/-- `∑[A178381(A004273(n))]*A000079(n)` -/
def P3939512627198891159.Spec : Prop :=
  ∀ n, P3939512627198891159.a n = A093123 n

end A093123

/-! ## A093123.P5217754757642911982

`A093129(n)*A122111(A008578(n+1))`
-/

namespace A093123.P5217754757642911982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n * A122111 (A008578 (n + 1)).toNat

end

end A093123.P5217754757642911982

namespace A093123

/-- `A093129(n)*A122111(A008578(n+1))` -/
def P5217754757642911982.Spec : Prop :=
  ∀ n, P5217754757642911982.a n = A093123 n

end A093123

/-! ## A093123.P15409539587865032736

`A093129(n)/A001519(n)*A154626(n)`
-/

namespace A093123.P15409539587865032736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093129 n : ℚ) / (A001519 n : ℚ) * (A154626 n : ℚ)

end

end A093123.P15409539587865032736

namespace A093123

/-- `A093129(n)/A001519(n)*A154626(n)` -/
def P15409539587865032736.Spec : Prop :=
  ∀ n, P15409539587865032736.a n = (A093123 n : ℚ)

end A093123

/-!
# A093126: G.f.: A(x) = x/(1 - x - G001190(x^2)), where G001190 is the g.f. of A001190, the Wedderburn-Etherington numbers (binary rooted trees).

The programs for A093126, there is no canonical definition to state claims against.
-/

/-! ## A093126.P15094626324922068949

`A191519(n)-A051058(A037958(n))`
-/

namespace A093126.P15094626324922068949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191519 n - A051058 (A037958 n).toNat

end

end A093126.P15094626324922068949

/-! ## A093126.P1278062976690339936

`A191519(n)-A051058(A051053(n))`
-/

namespace A093126.P1278062976690339936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191519 n - A051058 (A051053 n).toNat

end

end A093126.P1278062976690339936

/-! ## A093126.P17548236601532122425

`A024362(A001006(n))+A003237(n+2)`
-/

namespace A093126.P17548236601532122425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A001006 n).toNat + A003237 (n + 2)

end

end A093126.P17548236601532122425

/-! ## A093126.P17945633048949011731

`A003237(n+2)%A250250(A000051(n))`
-/

namespace A093126.P17945633048949011731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003237 (n + 2)) (A250250 (A000051 n).toNat)

end

end A093126.P17945633048949011731

/-! ## A093126.P7329043637634030117

`A014548(A000081(n+1))+A003237(n+2)`
-/

namespace A093126.P7329043637634030117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014548 (A000081 (n + 1)).toNat + A003237 (n + 2)

end

end A093126.P7329043637634030117

/-!
# A093128: Number of dissections of a polygon using strictly disjoint diagonals.

The programs for A093128, there is no canonical definition to state claims against.
-/

/-! ## A093128.P12392809255705817247

`A166297(n+1)+A004148(n+1)`
-/

namespace A093128.P12392809255705817247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166297 (n + 1) + A004148 (n + 1)

end

end A093128.P12392809255705817247

/-! ## A093128.P2115275250123900003

`A075125(n+6)-A004148(n+1)`
-/

namespace A093128.P2115275250123900003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075125 (n + 6) - A004148 (n + 1)

end

end A093128.P2115275250123900003

/-! ## A093128.P2949775746076883632

`A292460(A254667(n+1))-A004148(n)`
-/

namespace A093128.P2949775746076883632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 (A254667 (n + 1)).toNat - A004148 n

end

end A093128.P2949775746076883632

/-! ## A093128.P13803950452998104980

`A004148(A028310(n)+2)-A004148(n)`
-/

namespace A093128.P13803950452998104980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (A028310 n + 2).toNat - A004148 n

end

end A093128.P13803950452998104980

/-! ## A093128.P8455038863212002627

`A292460(A254667(n+1))-A203019(n+2)`
-/

namespace A093128.P8455038863212002627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 (A254667 (n + 1)).toNat - A203019 (n + 2)

end

end A093128.P8455038863212002627

/-! ## A093128.P2699271085187409321

`A004148(n+2)-A004148(n)%A004148(n+2)`
-/

namespace A093128.P2699271085187409321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 2) - Int.tmod (A004148 n) (A004148 (n + 2))

end

end A093128.P2699271085187409321

/-! ## A093128.P17399957574240801440

`A203019(n+4)-A203019(n+2)%A203019(n+4)`
-/

namespace A093128.P17399957574240801440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (n + 4) - Int.tmod (A203019 (n + 2)) (A203019 (n + 4))

end

end A093128.P17399957574240801440

/-! ## A093128.P7478291274574903470

`A292461(n+2)%A292461(n+4)-A292461(n+4)`
-/

namespace A093128.P7478291274574903470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292461 (n + 2)) (A292461 (n + 4)) - A292461 (n + 4)

end

end A093128.P7478291274574903470

/-! ## A093128.P8412047821536529743

`Δ[A203019(A131209(n+1))+A004148(n+1)]`
-/

namespace A093128.P8412047821536529743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (A131209 (n + 1)).toNat + A004148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093128.P8412047821536529743

/-!
# A093129: Binomial transform of Fibonacci(2n-1) (A001519).

The programs for A093129, the canonical program `A093129.P8083823090599297839` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093129 has offset 0).

The definition of A093129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093129.P8083823090599297839

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093129

/-- `5*(a(n-1)-a(n-2))` -/
def P8083823090599297839.Spec : Prop :=
  ∀ n, P8083823090599297839.a n = A093129 n

theorem P8083823090599297839.correct : P8083823090599297839.Spec := by
  intro n
  simp only [A093129]

end A093129

/-! ## A093129.P11351551234247705800

`(5-sqrt(5))*((5+sqrt(5))/2)^n/10+(5+sqrt(5))*((5-sqrt(5))/2)^n/10`
-/

namespace A093129.P11351551234247705800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 - Real.sqrt (5 : ℝ)) * ((5 + Real.sqrt (5 : ℝ)) / 2) ^ n / 10 + (5 + Real.sqrt (5 : ℝ)) * ((5 - Real.sqrt (5 : ℝ)) / 2) ^ n / 10

end

end A093129.P11351551234247705800

namespace A093129

/-- `(5-sqrt(5))*((5+sqrt(5))/2)^n/10+(5+sqrt(5))*((5-sqrt(5))/2)^n/10` -/
def P11351551234247705800.Spec : Prop :=
  ∀ n, P11351551234247705800.a n = (A093129 n : ℝ)

theorem P11351551234247705800.correct : P11351551234247705800.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A093129, Nat.add_sub_cancel, A093129.P11351551234247705800.a, A093129.P8083823090599297839.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A093129, Nat.add_sub_cancel, A093129.P11351551234247705800.a, A093129.P8083823090599297839.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A093129

/-! ## A093129.P3141870163302784599

`A093123(n)/2^n`
-/

namespace A093129.P3141870163302784599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093123 n : ℚ) / (2 ^ n : ℚ)

end

end A093129.P3141870163302784599

namespace A093129

/-- `A093123(n)/2^n` -/
def P3141870163302784599.Spec : Prop :=
  ∀ n, P3141870163302784599.a n = (A093129 n : ℚ)

end A093129

/-! ## A093129.P2880227161570809063

`ogf((1-3x)/(1-5x+5x^2))`
-/

namespace A093129.P2880227161570809063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -5, 5] n

end

end A093129.P2880227161570809063

namespace A093129

/-- `ogf((1-3x)/(1-5x+5x^2))` -/
def P2880227161570809063.Spec : Prop :=
  ∀ n, P2880227161570809063.a n = A093129 n

end A093129

/-! ## A093129.P1391038968626271134

`∑[A178381(A004273(n))]`
-/

namespace A093129.P1391038968626271134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093129.P1391038968626271134

namespace A093129

/-- `∑[A178381(A004273(n))]` -/
def P1391038968626271134.Spec : Prop :=
  ∀ n, P1391038968626271134.a n = A093129 n

end A093129

/-! ## A093129.P13997666767681461250

`∑[A178381(record[A006257(n)])]`
-/

namespace A093129.P13997666767681461250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093129.P13997666767681461250

namespace A093129

/-- `∑[A178381(record[A006257(n)])]` -/
def P13997666767681461250.Spec : Prop :=
  ∀ n, P13997666767681461250.a n = A093129 n

end A093129

/-! ## A093129.P11806264396063583787

`∑[A178381(record[A026741(n)])]`
-/

namespace A093129.P11806264396063583787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093129.P11806264396063583787

namespace A093129

/-- `∑[A178381(record[A026741(n)])]` -/
def P11806264396063583787.Spec : Prop :=
  ∀ n, P11806264396063583787.a n = A093129 n

end A093129

/-! ## A093129.P11522510129685730716

`Δ[A260304(n)]`
-/

namespace A093129.P11522510129685730716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093129.P11522510129685730716

namespace A093129

/-- `Δ[A260304(n)]` -/
def P11522510129685730716.Spec : Prop :=
  ∀ n, P11522510129685730716.a n = A093129 n

end A093129

/-! ## A093129.P4373882769361371809

`(∑[A147748(n)]+1)/2`
-/

namespace A093129.P4373882769361371809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A093129.P4373882769361371809

namespace A093129

/-- `(∑[A147748(n)]+1)/2` -/
def P4373882769361371809.Spec : Prop :=
  ∀ n, P4373882769361371809.a n = (A093129 n : ℚ)

end A093129

/-! ## A093129.P12141912542616516885

`A260304(n+2)/5`
-/

namespace A093129.P12141912542616516885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260304 (n + 2) : ℚ) / 5

end

end A093129.P12141912542616516885

namespace A093129

/-- `A260304(n+2)/5` -/
def P12141912542616516885.Spec : Prop :=
  ∀ n, P12141912542616516885.a n = (A093129 n : ℚ)

end A093129

/-! ## A093129.P13907342424414397150

`2*A093123(n)/A000079(n+1)`
-/

namespace A093129.P13907342424414397150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A093123 n : ℚ) / (A000079 (n + 1) : ℚ)

end

end A093129.P13907342424414397150

namespace A093129

/-- `2*A093123(n)/A000079(n+1)` -/
def P13907342424414397150.Spec : Prop :=
  ∀ n, P13907342424414397150.a n = (A093129 n : ℚ)

theorem P13907342424414397150.correct : P13907342424414397150.Spec := by
  intro n
  simp only [A093129, Nat.add_sub_cancel, A093129.P13907342424414397150.a, A093129.P8083823090599297839.a, A000079, A000079.P10855139691139572931.a, A093123, A093123.P8087304089970880975.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093129

/-!
# A093130: Third binomial transform of Fibonacci(3n).

The programs for A093130, the canonical program `A093130.P4189122295408583229` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093130 has offset 0).

The definition of A093130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093130.P4189122295408583229

`10*a(n-1)-20*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093130

/-- `10*a(n-1)-20*a(n-2)` -/
def P4189122295408583229.Spec : Prop :=
  ∀ n, P4189122295408583229.a n = A093130 n

theorem P4189122295408583229.correct : P4189122295408583229.Spec := by
  intro n
  simp only [A093130]

end A093130

/-! ## A093130.P9620182795525355314

`((5+sqrt(5))^n-(5-sqrt(5))^n)/sqrt(5)`
-/

namespace A093130.P9620182795525355314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (5 : ℝ)) ^ n - (5 - Real.sqrt (5 : ℝ)) ^ n) / Real.sqrt (5 : ℝ)

end

end A093130.P9620182795525355314

namespace A093130

/-- `((5+sqrt(5))^n-(5-sqrt(5))^n)/sqrt(5)` -/
def P9620182795525355314.Spec : Prop :=
  ∀ n, P9620182795525355314.a n = (A093130 n : ℝ)

theorem P9620182795525355314.correct : P9620182795525355314.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A093130, Nat.add_sub_cancel, A093130.P9620182795525355314.a, A093130.P4189122295408583229.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A093130, Nat.add_sub_cancel, A093130.P9620182795525355314.a, A093130.P4189122295408583229.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A093130

/-! ## A093130.P492407374527243109

`2^n*A093131(n)`
-/

namespace A093130.P492407374527243109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A093131 n

end

end A093130.P492407374527243109

namespace A093130

/-- `2^n*A093131(n)` -/
def P492407374527243109.Spec : Prop :=
  ∀ n, P492407374527243109.a n = A093130 n

end A093130

/-! ## A093130.P3721986027400079934

`ogf(2x/(1-10x+20x^2))`
-/

namespace A093130.P3721986027400079934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -10, 20] n

end

end A093130.P3721986027400079934

namespace A093130

/-- `ogf(2x/(1-10x+20x^2))` -/
def P3721986027400079934.Spec : Prop :=
  ∀ n, P3721986027400079934.a n = A093130 n

end A093130

/-! ## A093130.P5489253426727907799

`2*A093145(n)`
-/

namespace A093130.P5489253426727907799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093145 n

end

end A093130.P5489253426727907799

namespace A093130

/-- `2*A093145(n)` -/
def P5489253426727907799.Spec : Prop :=
  ∀ n, P5489253426727907799.a n = A093130 n

end A093130

/-! ## A093130.P12141636501913175348

`(A112091(n)-1)*2^n`
-/

namespace A093130.P12141636501913175348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112091 n - 1) * (2 ^ n : ℤ)

end

end A093130.P12141636501913175348

namespace A093130

/-- `(A112091(n)-1)*2^n` -/
def P12141636501913175348.Spec : Prop :=
  ∀ n, P12141636501913175348.a n = A093130 n

end A093130

/-! ## A093130.P17156597797363805697

`A093131(n)*A155559(n)`
-/

namespace A093130.P17156597797363805697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n * A155559 n

end

end A093130.P17156597797363805697

namespace A093130

/-- `A093131(n)*A155559(n)` -/
def P17156597797363805697.Spec : Prop :=
  ∀ n, P17156597797363805697.a n = A093130 n

end A093130

/-! ## A093130.P4446316290630294639

`A093131(n)*A171449(n)`
-/

namespace A093130.P4446316290630294639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n * A171449 n

end

end A093130.P4446316290630294639

namespace A093130

/-- `A093131(n)*A171449(n)` -/
def P4446316290630294639.Spec : Prop :=
  ∀ n, P4446316290630294639.a n = A093130 n

end A093130

/-! ## A093130.P6208014181377886694

`A093131(n)*A171559(n)`
-/

namespace A093130.P6208014181377886694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n * A171559 n

end

end A093130.P6208014181377886694

namespace A093130

/-- `A093131(n)*A171559(n)` -/
def P6208014181377886694.Spec : Prop :=
  ∀ n, P6208014181377886694.a n = A093130 n

end A093130

/-! ## A093130.P6278059463118768488

`A093145(n+1)-A093132(n)`
-/

namespace A093130.P6278059463118768488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093145 (n + 1) - A093132 n

end

end A093130.P6278059463118768488

namespace A093130

/-- `A093145(n+1)-A093132(n)` -/
def P6278059463118768488.Spec : Prop :=
  ∀ n, P6278059463118768488.a n = A093130 n

end A093130

/-! ## A093130.P14999467310128530153

`A093131(n)*A131577(n+1)`
-/

namespace A093130.P14999467310128530153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n * A131577 (n + 1)

end

end A093130.P14999467310128530153

namespace A093130

/-- `A093131(n)*A131577(n+1)` -/
def P14999467310128530153.Spec : Prop :=
  ∀ n, P14999467310128530153.a n = A093130 n

end A093130

/-! ## A093130.P9946449980914406302

`2*(A090041(n)-A090139(n))`
-/

namespace A093130.P9946449980914406302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090041 n - A090139 n)

end

end A093130.P9946449980914406302

namespace A093130

/-- `2*(A090041(n)-A090139(n))` -/
def P9946449980914406302.Spec : Prop :=
  ∀ n, P9946449980914406302.a n = A093130 n

end A093130

/-! ## A093130.P2888186815415697756

`2*(A090139(n)-A093123(n))`
-/

namespace A093130.P2888186815415697756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090139 n - A093123 n)

end

end A093130.P2888186815415697756

namespace A093130

/-- `2*(A090139(n)-A093123(n))` -/
def P2888186815415697756.Spec : Prop :=
  ∀ n, P2888186815415697756.a n = A093130 n

end A093130

/-! ## A093130.P10646915889216205657

`2*A011782(n)*A093131(n)`
-/

namespace A093130.P10646915889216205657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n * A093131 n)

end

end A093130.P10646915889216205657

namespace A093130

/-- `2*A011782(n)*A093131(n)` -/
def P10646915889216205657.Spec : Prop :=
  ∀ n, P10646915889216205657.a n = A093130 n

end A093130

/-! ## A093130.P5124079009214387026

`2*A093131(n)*A131577(n)`
-/

namespace A093130.P5124079009214387026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A093131 n * A131577 n)

end

end A093130.P5124079009214387026

namespace A093130

/-- `2*A093131(n)*A131577(n)` -/
def P5124079009214387026.Spec : Prop :=
  ∀ n, P5124079009214387026.a n = A093130 n

end A093130

/-! ## A093130.P11338862270329609151

`A093131(n)*A131572(2*n)`
-/

namespace A093130.P11338862270329609151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n * A131572 (2 * n)

end

end A093130.P11338862270329609151

namespace A093130

/-- `A093131(n)*A131572(2*n)` -/
def P11338862270329609151.Spec : Prop :=
  ∀ n, P11338862270329609151.a n = A093130 n

end A093130

/-! ## A093130.P2254690139470767079

`(A000225(n)+1)*(A112091(n)-1)`
-/

namespace A093130.P2254690139470767079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * (A112091 n - 1)

end

end A093130.P2254690139470767079

namespace A093130

/-- `(A000225(n)+1)*(A112091(n)-1)` -/
def P2254690139470767079.Spec : Prop :=
  ∀ n, P2254690139470767079.a n = A093130 n

end A093130

/-! ## A093130.P7653986957407548894

`(A063727(n)-A086344(n))*A074872(n+1)`
-/

namespace A093130.P7653986957407548894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063727 n - A086344 n) * A074872 (n + 1)

end

end A093130.P7653986957407548894

namespace A093130

/-- `(A063727(n)-A086344(n))*A074872(n+1)` -/
def P7653986957407548894.Spec : Prop :=
  ∀ n, P7653986957407548894.a n = A093130 n

end A093130

/-!
# A093131: Binomial transform of Fibonacci(2n).

The programs for A093131, the canonical program `A093131.P6839280013415824059` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093131 has offset 0).

The definition of A093131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093131.P6839280013415824059

`5*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093131

/-- `5*(a(n-1)-a(n-2))` -/
def P6839280013415824059.Spec : Prop :=
  ∀ n, P6839280013415824059.a n = A093131 n

theorem P6839280013415824059.correct : P6839280013415824059.Spec := by
  intro n
  simp only [A093131]

end A093131

/-! ## A093131.P17014310839358312679

`(((5+sqrt(5))/2)^n-((5-sqrt(5))/2)^n)/sqrt(5)`
-/

namespace A093131.P17014310839358312679
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((5 + Real.sqrt (5 : ℝ)) / 2) ^ n - ((5 - Real.sqrt (5 : ℝ)) / 2) ^ n) / Real.sqrt (5 : ℝ)

end

end A093131.P17014310839358312679

namespace A093131

/-- `(((5+sqrt(5))/2)^n-((5-sqrt(5))/2)^n)/sqrt(5)` -/
def P17014310839358312679.Spec : Prop :=
  ∀ n, P17014310839358312679.a n = (A093131 n : ℝ)

theorem P17014310839358312679.correct : P17014310839358312679.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A093131, Nat.add_sub_cancel, A093131.P17014310839358312679.a, A093131.P6839280013415824059.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A093131, Nat.add_sub_cancel, A093131.P17014310839358312679.a, A093131.P6839280013415824059.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A093131

/-! ## A093131.P2372921590654646761

`ogf(x/(1-5x+5x^2))`
-/

namespace A093131.P2372921590654646761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 5] n

end

end A093131.P2372921590654646761

namespace A093131

/-- `ogf(x/(1-5x+5x^2))` -/
def P2372921590654646761.Spec : Prop :=
  ∀ n, P2372921590654646761.a n = A093131 n

end A093131

/-! ## A093131.P128795246581048409

`A112091(n)-1`
-/

namespace A093131.P128795246581048409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n - 1

end

end A093131.P128795246581048409

namespace A093131

/-- `A112091(n)-1` -/
def P128795246581048409.Spec : Prop :=
  ∀ n, P128795246581048409.a n = A093131 n

end A093131

/-! ## A093131.P10367816011896866194

`A081567(n)-A093129(n)`
-/

namespace A093131.P10367816011896866194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n - A093129 n

end

end A093131.P10367816011896866194

namespace A093131

/-- `A081567(n)-A093129(n)` -/
def P10367816011896866194.Spec : Prop :=
  ∀ n, P10367816011896866194.a n = A093131 n

end A093131

/-! ## A093131.P12361768273432198718

`∑[A052936(n)]-A093129(n)`
-/

namespace A093131.P12361768273432198718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A093129 n

end

end A093131.P12361768273432198718

namespace A093131

/-- `∑[A052936(n)]-A093129(n)` -/
def P12361768273432198718.Spec : Prop :=
  ∀ n, P12361768273432198718.a n = A093131 n

end A093131

/-! ## A093131.P16424052805001851734

`Δ[A283842(n)+A000295(n)]`
-/

namespace A093131.P16424052805001851734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283842 n + A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093131.P16424052805001851734

namespace A093131

/-- `Δ[A283842(n)+A000295(n)]` -/
def P16424052805001851734.Spec : Prop :=
  ∀ n, P16424052805001851734.a n = A093131 n

end A093131

/-! ## A093131.P2844169552932401993

`A217778(n)-A033191(n+1)`
-/

namespace A093131.P2844169552932401993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n - A033191 (n + 1)

end

end A093131.P2844169552932401993

namespace A093131

/-- `A217778(n)-A033191(n+1)` -/
def P2844169552932401993.Spec : Prop :=
  ∀ n, P2844169552932401993.a n = A093131 n

end A093131

/-! ## A093131.P5420258960450122960

`A136775(n+1)-A147748(n)`
-/

namespace A093131.P5420258960450122960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (n + 1) - A147748 n

end

end A093131.P5420258960450122960

namespace A093131

/-- `A136775(n+1)-A147748(n)` -/
def P5420258960450122960.Spec : Prop :=
  ∀ n, P5420258960450122960.a n = A093131 n

end A093131

/-! ## A093131.P4238159620462760934

`A005013(n)*A074872(n+1)`
-/

namespace A093131.P4238159620462760934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n * A074872 (n + 1)

end

end A093131.P4238159620462760934

namespace A093131

/-- `A005013(n)*A074872(n+1)` -/
def P4238159620462760934.Spec : Prop :=
  ∀ n, P4238159620462760934.a n = A093131 n

end A093131

/-! ## A093131.P14817515666341735917

`A020876(n)-2*A093129(n)`
-/

namespace A093131.P14817515666341735917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - 2 * A093129 n

end

end A093131.P14817515666341735917

namespace A093131

/-- `A020876(n)-2*A093129(n)` -/
def P14817515666341735917.Spec : Prop :=
  ∀ n, P14817515666341735917.a n = A093131 n

end A093131

/-! ## A093131.P6207858662209358670

`2*A093129(n)-A260304(n)`
-/

namespace A093131.P6207858662209358670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093129 n - A260304 n

end

end A093131.P6207858662209358670

namespace A093131

/-- `2*A093129(n)-A260304(n)` -/
def P6207858662209358670.Spec : Prop :=
  ∀ n, P6207858662209358670.a n = A093131 n

end A093131

/-! ## A093131.P11739964819243936342

`A020876(n)-1-∑[A147748(n)]`
-/

namespace A093131.P11739964819243936342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093131.P11739964819243936342

namespace A093131

/-- `A020876(n)-1-∑[A147748(n)]` -/
def P11739964819243936342.Spec : Prop :=
  ∀ n, P11739964819243936342.a n = A093131 n

end A093131

/-! ## A093131.P9440762535340285118

`A094667(n+1)-A033190(n+1)`
-/

namespace A093131.P9440762535340285118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 1) - A033190 (n + 1)

end

end A093131.P9440762535340285118

namespace A093131

/-- `A094667(n+1)-A033190(n+1)` -/
def P9440762535340285118.Spec : Prop :=
  ∀ n, P9440762535340285118.a n = A093131 n

end A093131

/-! ## A093131.P9975426007543327163

`A033193(n+1)-A033191(n+2)`
-/

namespace A093131.P9975426007543327163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 (n + 1) - A033191 (n + 2)

end

end A093131.P9975426007543327163

namespace A093131

/-- `A033193(n+1)-A033191(n+2)` -/
def P9975426007543327163.Spec : Prop :=
  ∀ n, P9975426007543327163.a n = A093131 n

end A093131

/-! ## A093131.P8630318793682647712

`A093129(n+1)-2*A093129(n)`
-/

namespace A093131.P8630318793682647712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) - 2 * A093129 n

end

end A093131.P8630318793682647712

namespace A093131

/-- `A093129(n+1)-2*A093129(n)` -/
def P8630318793682647712.Spec : Prop :=
  ∀ n, P8630318793682647712.a n = A093131 n

end A093131

/-! ## A093131.P15799187754197449784

`∑[A178381(2*n+1)-A178381(2*n)]`
-/

namespace A093131.P15799187754197449784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n + 1) - A178381 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093131.P15799187754197449784

namespace A093131

/-- `∑[A178381(2*n+1)-A178381(2*n)]` -/
def P15799187754197449784.Spec : Prop :=
  ∀ n, P15799187754197449784.a n = A093131 n

end A093131

/-! ## A093131.P12318040575633094113

`A081567(n)+A081567(n)-A020876(n)`
-/

namespace A093131.P12318040575633094113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n + (A081567 n - A020876 n)

end

end A093131.P12318040575633094113

namespace A093131

/-- `A081567(n)+A081567(n)-A020876(n)` -/
def P12318040575633094113.Spec : Prop :=
  ∀ n, P12318040575633094113.a n = A093131 n

end A093131

/-! ## A093131.P17506990293613377769

`A094865(n)+A217778(n)-A093129(n)`
-/

namespace A093131.P17506990293613377769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + (A217778 n - A093129 n)

end

end A093131.P17506990293613377769

namespace A093131

/-- `A094865(n)+A217778(n)-A093129(n)` -/
def P17506990293613377769.Spec : Prop :=
  ∀ n, P17506990293613377769.a n = A093131 n

end A093131

/-! ## A093131.P9447740854404994165

`A217778(n)-(A122367(n)+A094865(n))`
-/

namespace A093131.P9447740854404994165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n - (A122367 n + A094865 n)

end

end A093131.P9447740854404994165

namespace A093131

/-- `A217778(n)-(A122367(n)+A094865(n))` -/
def P9447740854404994165.Spec : Prop :=
  ∀ n, P9447740854404994165.a n = A093131 n

end A093131

/-!
# A093132: Third binomial transform of Fibonacci(3n+2).

The programs for A093132, the canonical program `A093132.P2470619464986815204` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093132 has offset 0).

The definition of A093132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093132.P2470619464986815204

`10*(a(n-1)-2*a(n-2))` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093132

/-- `10*(a(n-1)-2*a(n-2))` -/
def P2470619464986815204.Spec : Prop :=
  ∀ n, P2470619464986815204.a n = A093132 n

theorem P2470619464986815204.correct : P2470619464986815204.Spec := by
  intro n
  simp only [A093132]

end A093132

/-! ## A093132.P11839390918390884889

`2^n*A039717(n+1)`
-/

namespace A093132.P11839390918390884889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A039717 (n + 1)

end

end A093132.P11839390918390884889

namespace A093132

/-- `2^n*A039717(n+1)` -/
def P11839390918390884889.Spec : Prop :=
  ∀ n, P11839390918390884889.a n = A093132 n

end A093132

/-! ## A093132.P9908400947556984436

`((5+3*sqrt(5))*(5+sqrt(5))^n+(5-3*sqrt(5))*(5-sqrt(5))^n)/10`
-/

namespace A093132.P9908400947556984436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 3 * Real.sqrt (5 : ℝ)) * (5 + Real.sqrt (5 : ℝ)) ^ n + (5 - 3 * Real.sqrt (5 : ℝ)) * (5 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A093132.P9908400947556984436

namespace A093132

/-- `((5+3*sqrt(5))*(5+sqrt(5))^n+(5-3*sqrt(5))*(5-sqrt(5))^n)/10` -/
def P9908400947556984436.Spec : Prop :=
  ∀ n, P9908400947556984436.a n = (A093132 n : ℝ)

theorem P9908400947556984436.correct : P9908400947556984436.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A093132, Nat.add_sub_cancel, A093132.P9908400947556984436.a, A093132.P2470619464986815204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A093132, Nat.add_sub_cancel, A093132.P9908400947556984436.a, A093132.P2470619464986815204.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A093132

/-! ## A093132.P8694863099044930119

`ogf((1-2x)/(1-10x+20x^2))`
-/

namespace A093132.P8694863099044930119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -10, 20] n

end

end A093132.P8694863099044930119

namespace A093132

/-- `ogf((1-2x)/(1-10x+20x^2))` -/
def P8694863099044930119.Spec : Prop :=
  ∀ n, P8694863099044930119.a n = A093132 n

end A093132

/-! ## A093132.P5239426341296673043

`2^n*Δ[A112091(n)]`
-/

namespace A093132.P5239426341296673043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A093132.P5239426341296673043

namespace A093132

/-- `2^n*Δ[A112091(n)]` -/
def P5239426341296673043.Spec : Prop :=
  ∀ n, P5239426341296673043.a n = A093132 n

end A093132

/-! ## A093132.P4148109151868098186

`2^n*∑[A136775(n+1)]`
-/

namespace A093132.P4148109151868098186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093132.P4148109151868098186

namespace A093132

/-- `2^n*∑[A136775(n+1)]` -/
def P4148109151868098186.Spec : Prop :=
  ∀ n, P4148109151868098186.a n = A093132 n

end A093132

/-! ## A093132.P3949835091885512572

`Δ[A093145(n)]-A093145(n)`
-/

namespace A093132.P3949835091885512572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A093145 n

end

end A093132.P3949835091885512572

namespace A093132

/-- `Δ[A093145(n)]-A093145(n)` -/
def P3949835091885512572.Spec : Prop :=
  ∀ n, P3949835091885512572.a n = A093132 n

end A093132

/-! ## A093132.P2680868151166424603

`Δ[A093131(n)]*A000079(n)`
-/

namespace A093132.P2680868151166424603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A093132.P2680868151166424603

namespace A093132

/-- `Δ[A093131(n)]*A000079(n)` -/
def P2680868151166424603.Spec : Prop :=
  ∀ n, P2680868151166424603.a n = A093132 n

end A093132

/-! ## A093132.P13741400741577541002

`Δ[A112091(n)]*A000079(n)`
-/

namespace A093132.P13741400741577541002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A093132.P13741400741577541002

namespace A093132

/-- `Δ[A112091(n)]*A000079(n)` -/
def P13741400741577541002.Spec : Prop :=
  ∀ n, P13741400741577541002.a n = A093132 n

end A093132

/-! ## A093132.P3919143930930889970

`A093145(n+1)-A093130(n)`
-/

namespace A093132.P3919143930930889970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093145 (n + 1) - A093130 n

end

end A093132.P3919143930930889970

namespace A093132

/-- `A093145(n+1)-A093130(n)` -/
def P3919143930930889970.Spec : Prop :=
  ∀ n, P3919143930930889970.a n = A093132 n

end A093132

/-! ## A093132.P8845049035273301775

`A093123(n)+2*A093130(n)`
-/

namespace A093132.P8845049035273301775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093123 n + 2 * A093130 n

end

end A093132.P8845049035273301775

namespace A093132

/-- `A093123(n)+2*A093130(n)` -/
def P8845049035273301775.Spec : Prop :=
  ∀ n, P8845049035273301775.a n = A093132 n

end A093132

/-! ## A093132.P3164487666771603218

`Δ[A000225(n)]*Δ[A093131(n)]`
-/

namespace A093132.P3164487666771603218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093132.P3164487666771603218

namespace A093132

/-- `Δ[A000225(n)]*Δ[A093131(n)]` -/
def P3164487666771603218.Spec : Prop :=
  ∀ n, P3164487666771603218.a n = A093132 n

end A093132

/-! ## A093132.P15469254932852121484

`∑[A136775(n+1)]*A000079(n)`
-/

namespace A093132.P15469254932852121484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A093132.P15469254932852121484

namespace A093132

/-- `∑[A136775(n+1)]*A000079(n)` -/
def P15469254932852121484.Spec : Prop :=
  ∀ n, P15469254932852121484.a n = A093132 n

end A093132

/-! ## A093132.P9542153267628044734

`A093145(n+1)-2*A093145(n)`
-/

namespace A093132.P9542153267628044734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093145 (n + 1) - 2 * A093145 n

end

end A093132.P9542153267628044734

namespace A093132

/-- `A093145(n+1)-2*A093145(n)` -/
def P9542153267628044734.Spec : Prop :=
  ∀ n, P9542153267628044734.a n = A093132 n

end A093132

/-! ## A093132.P9303426316311594460

`(A052936(n+1)-A081567(n))*A011782(n+1)`
-/

namespace A093132.P9303426316311594460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052936 (n + 1) - A081567 n) * A011782 (n + 1)

end

end A093132.P9303426316311594460

namespace A093132

/-- `(A052936(n+1)-A081567(n))*A011782(n+1)` -/
def P9303426316311594460.Spec : Prop :=
  ∀ n, P9303426316311594460.a n = A093132 n

end A093132

/-!
# A093133: Third binomial transform of Fib(3n-3) divided by 2.

The programs for A093133, the canonical program `A093133.P4612951084675112882` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093133 has offset 0).

The definition of A093133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093133.P4612951084675112882

`(1/2-sqrt(5)/5)*(5+sqrt(5))^n+(1/2+sqrt(5)/5)*(5-sqrt(5))^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093133

/-- `(1/2-sqrt(5)/5)*(5+sqrt(5))^n+(1/2+sqrt(5)/5)*(5-sqrt(5))^n` -/
def P4612951084675112882.Spec : Prop :=
  ∀ n, P4612951084675112882.a n = (A093133 n : ℝ)

end A093133

/-! ## A093133.P2151850843489840852

`ogf((1-7x)/(1-10x+20x^2))`
-/

namespace A093133.P2151850843489840852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -10, 20] n

end

end A093133.P2151850843489840852

namespace A093133

/-- `ogf((1-7x)/(1-10x+20x^2))` -/
def P2151850843489840852.Spec : Prop :=
  ∀ n, P2151850843489840852.a n = A093133 n

end A093133

/-! ## A093133.P7900190964335004398

`2^(n-1)*A260304(n)`
-/

namespace A093133.P7900190964335004398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A260304 n : ℚ)

end

end A093133.P7900190964335004398

namespace A093133

/-- `2^(n-1)*A260304(n)` -/
def P7900190964335004398.Spec : Prop :=
  ∀ n, P7900190964335004398.a n = (A093133 n : ℚ)

end A093133

/-! ## A093133.P11349409775245521080

`A000079(n)*A260304(n)/2`
-/

namespace A093133.P11349409775245521080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A260304 n : ℚ) / 2

end

end A093133.P11349409775245521080

namespace A093133

/-- `A000079(n)*A260304(n)/2` -/
def P11349409775245521080.Spec : Prop :=
  ∀ n, P11349409775245521080.a n = (A093133 n : ℚ)

end A093133

/-!
# A093134: A Jacobsthal trisection.

The programs for A093134, the canonical program `A093134.P17774222376320382685` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093134 has offset 0).

The definition of A093134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093134.P17774222376320382685

`7*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093134

/-- `7*a(n-1)+8*a(n-2)` -/
def P17774222376320382685.Spec : Prop :=
  ∀ n, (P17774222376320382685.a n : ℤ) = A093134 n

theorem P17774222376320382685.correct : P17774222376320382685.Spec := by
  intro n
  simp only [A093134]

end A093134

/-! ## A093134.P10043630911269117239

`(8^n+8*(-1)^n)/9`
-/

namespace A093134.P10043630911269117239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) + 8 * (-1) ^ n : ℚ) / 9

end

end A093134.P10043630911269117239

namespace A093134

/-- `(8^n+8*(-1)^n)/9` -/
def P10043630911269117239.Spec : Prop :=
  ∀ n, P10043630911269117239.a n = (A093134 n : ℚ)

theorem P10043630911269117239.correct : P10043630911269117239.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A093134, Nat.add_sub_cancel, A093134.P10043630911269117239.a, A093134.P17774222376320382685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A093134, Nat.add_sub_cancel, A093134.P10043630911269117239.a, A093134.P17774222376320382685.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A093134

/-! ## A093134.P11791299324215552557

`ogf((-1+7x)/(-1+7x+8x^2))`
-/

namespace A093134.P11791299324215552557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -7, -8] n

end

end A093134.P11791299324215552557

namespace A093134

/-- `ogf((-1+7x)/(-1+7x+8x^2))` -/
def P11791299324215552557.Spec : Prop :=
  ∀ n, P11791299324215552557.a n = A093134 n

end A093134

/-! ## A093134.P5954320005297378592

`8^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A093134.P5954320005297378592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A093134.P5954320005297378592

namespace A093134

/-- `8^(n-1)-a(n-1)` -/
def P5954320005297378592.Spec : Prop :=
  ∀ n, P5954320005297378592.a n = (A093134 n : ℚ)

end A093134

/-! ## A093134.P1301763384424990630

`A328881(3*n)`
-/

namespace A093134.P1301763384424990630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (3 * n)

end

end A093134.P1301763384424990630

namespace A093134

/-- `A328881(3*n)` -/
def P1301763384424990630.Spec : Prop :=
  ∀ n, P1301763384424990630.a n = A093134 n

end A093134

/-! ## A093134.P12012553224442492748

`A033999(n)+A015565(n)`
-/

namespace A093134.P12012553224442492748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A015565 n

end

end A093134.P12012553224442492748

namespace A093134

/-- `A033999(n)+A015565(n)` -/
def P12012553224442492748.Spec : Prop :=
  ∀ n, P12012553224442492748.a n = A093134 n

end A093134

/-! ## A093134.P14802922935180116246

`A062157(n+1)+A015565(n)`
-/

namespace A093134.P14802922935180116246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) + A015565 n

end

end A093134.P14802922935180116246

namespace A093134

/-- `A062157(n+1)+A015565(n)` -/
def P14802922935180116246.Spec : Prop :=
  ∀ n, P14802922935180116246.a n = A093134 n

end A093134

/-! ## A093134.P2353901229618464711

`A007613(n)-2*A015565(n)`
-/

namespace A093134.P2353901229618464711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007613 n - 2 * A015565 n

end

end A093134.P2353901229618464711

namespace A093134

/-- `A007613(n)-2*A015565(n)` -/
def P2353901229618464711.Spec : Prop :=
  ∀ n, P2353901229618464711.a n = A093134 n

end A093134

/-! ## A093134.P9651507538535031551

`A015565(n)+A131714(3*n)`
-/

namespace A093134.P9651507538535031551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 n + A131714 (3 * n)

end

end A093134.P9651507538535031551

namespace A093134

/-- `A015565(n)+A131714(3*n)` -/
def P9651507538535031551.Spec : Prop :=
  ∀ n, P9651507538535031551.a n = A093134 n

end A093134

/-! ## A093134.P15956186713687695880

`A131090(3*n+1)-A131666(3*n)`
-/

namespace A093134.P15956186713687695880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (3 * n + 1) - A131666 (3 * n)

end

end A093134.P15956186713687695880

namespace A093134

/-- `A131090(3*n+1)-A131666(3*n)` -/
def P15956186713687695880.Spec : Prop :=
  ∀ n, P15956186713687695880.a n = A093134 n

end A093134

/-! ## A093134.P864297240711497639

`A015565(n)+A054878(n)-A015518(n)`
-/

namespace A093134.P864297240711497639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 n + (A054878 n - A015518 n)

end

end A093134.P864297240711497639

namespace A093134

/-- `A015565(n)+A054878(n)-A015518(n)` -/
def P864297240711497639.Spec : Prop :=
  ∀ n, P864297240711497639.a n = A093134 n

end A093134

/-! ## A093134.P15764700859878010681

`A015565(n)+A078008(n)-A001045(n)`
-/

namespace A093134.P15764700859878010681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 n + (A078008 n - A001045 n)

end

end A093134.P15764700859878010681

namespace A093134

/-- `A015565(n)+A078008(n)-A001045(n)` -/
def P15764700859878010681.Spec : Prop :=
  ∀ n, P15764700859878010681.a n = A093134 n

end A093134

/-! ## A093134.P5204667416217370473

`A015565(n)+A130196(n)/A131714(n)`
-/

namespace A093134.P5204667416217370473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015565 n : ℚ) + (A130196 n : ℚ) / (A131714 n : ℚ)

end

end A093134.P5204667416217370473

namespace A093134

/-- `A015565(n)+A130196(n)/A131714(n)` -/
def P5204667416217370473.Spec : Prop :=
  ∀ n, P5204667416217370473.a n = (A093134 n : ℚ)

end A093134

/-! ## A093134.P10146264986723215760

`A000035(n+1)+A015565(n)-A000035(n)`
-/

namespace A093134.P10146264986723215760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A015565 n - A000035 n)

end

end A093134.P10146264986723215760

namespace A093134

/-- `A000035(n+1)+A015565(n)-A000035(n)` -/
def P10146264986723215760.Spec : Prop :=
  ∀ n, P10146264986723215760.a n = A093134 n

end A093134

/-! ## A093134.P8364448481161442289

`A090409(n)-A132804(n)`
-/

namespace A093134.P8364448481161442289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090409 n - A132804 n

end

end A093134.P8364448481161442289

namespace A093134

/-- `A090409(n)-A132804(n)` -/
def P8364448481161442289.Spec : Prop :=
  ∀ n, P8364448481161442289.a n = A093134 n

end A093134

/-! ## A093134.P3493135151417959877

`Δ[A015565(n)]-A132804(n)`
-/

namespace A093134.P3493135151417959877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A132804 n

end

end A093134.P3493135151417959877

namespace A093134

/-- `Δ[A015565(n)]-A132804(n)` -/
def P3493135151417959877.Spec : Prop :=
  ∀ n, P3493135151417959877.a n = A093134 n

end A093134

/-! ## A093134.P6490531205369197165

`Δ[and(A023001(n), A132805(n))]`
-/

namespace A093134.P6490531205369197165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023001 n) (A132805 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093134.P6490531205369197165

namespace A093134

/-- `Δ[and(A023001(n), A132805(n))]` -/
def P6490531205369197165.Spec : Prop :=
  ∀ n, P6490531205369197165.a n = A093134 n

end A093134

/-! ## A093134.P16873428441453108517

`A090409(n)-2*A132805(n)`
-/

namespace A093134.P16873428441453108517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090409 n - 2 * A132805 n

end

end A093134.P16873428441453108517

namespace A093134

/-- `A090409(n)-2*A132805(n)` -/
def P16873428441453108517.Spec : Prop :=
  ∀ n, P16873428441453108517.a n = A093134 n

end A093134

/-! ## A093134.P2054846979818418751

`A015565(n)+A014990(n+1)/A015565(n+1)`
-/

namespace A093134.P2054846979818418751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015565 n : ℚ) + (A014990 (n + 1) : ℚ) / (A015565 (n + 1) : ℚ)

end

end A093134.P2054846979818418751

namespace A093134

/-- `A015565(n)+A014990(n+1)/A015565(n+1)` -/
def P2054846979818418751.Spec : Prop :=
  ∀ n, P2054846979818418751.a n = (A093134 n : ℚ)

end A093134

/-!
# A093135: Expansion of g.f. (1-8*x)/((1-x)*(1-10*x)).

The programs for A093135, the canonical program `A093135.P9929825520349986098` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093135 has offset 0).

The definition of A093135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x)/(1-11x+10x^2))` (program `A093135.P9929825520349986098`, by `A093135.P9929825520349986098.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093135.P9929825520349986098

`ogf((1-8x)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093135

/-- `ogf((1-8x)/(1-11x+10x^2))` -/
def P9929825520349986098.Spec : Prop :=
  ∀ n, P9929825520349986098.a n = A093135 n

theorem P9929825520349986098.correct : P9929825520349986098.Spec := by
  intro n
  simp only [A093135]

end A093135

/-! ## A093135.P747632270319813058

`10*a(n-1)-7` with `a(0)=1`
-/

namespace A093135.P747632270319813058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - 7

end

end A093135.P747632270319813058

namespace A093135

/-- `10*a(n-1)-7` -/
def P747632270319813058.Spec : Prop :=
  ∀ n, P747632270319813058.a n = A093135 n

end A093135

/-! ## A093135.P17828565719054867911

`(2*10^n+7)/9`
-/

namespace A093135.P17828565719054867911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ n + 7 : ℚ) / 9

end

end A093135.P17828565719054867911

namespace A093135

/-- `(2*10^n+7)/9` -/
def P17828565719054867911.Spec : Prop :=
  ∀ n, P17828565719054867911.a n = (A093135 n : ℚ)

end A093135

/-! ## A093135.P3498844266323756638

`lcm(10, a(n-1))-7` with `a(0)=1`
-/

namespace A093135.P3498844266323756638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - 7

end

end A093135.P3498844266323756638

namespace A093135

/-- `lcm(10, a(n-1))-7` -/
def P3498844266323756638.Spec : Prop :=
  ∀ n, P3498844266323756638.a n = A093135 n

end A093135

/-! ## A093135.P6335842368205513809

`or(1, ∑[floor(10^n/5)])`
-/

namespace A093135.P6335842368205513809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093135.P6335842368205513809

namespace A093135

/-- `or(1, ∑[floor(10^n/5)])` -/
def P6335842368205513809.Spec : Prop :=
  ∀ n, P6335842368205513809.a n = A093135 n

end A093135

/-! ## A093135.P2348596331030441973

`xor(1, ∑[floor(10^n/5)])`
-/

namespace A093135.P2348596331030441973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093135.P2348596331030441973

namespace A093135

/-- `xor(1, ∑[floor(10^n/5)])` -/
def P2348596331030441973.Spec : Prop :=
  ∀ n, P2348596331030441973.a n = A093135 n

end A093135

/-! ## A093135.P18317733341236724196

`lcm(2, floor(10^n/9))+1`
-/

namespace A093135.P18317733341236724196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(10 ^ n : ℚ) / 9⌋ + 1

end

end A093135.P18317733341236724196

namespace A093135

/-- `lcm(2, floor(10^n/9))+1` -/
def P18317733341236724196.Spec : Prop :=
  ∀ n, (P18317733341236724196.a n : ℤ) = A093135 n

end A093135

/-! ## A093135.P6647037527924892857

`a(n-1)+10^n/5` with `a(0)=1`
-/

namespace A093135.P6647037527924892857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (10 ^ n : ℚ) / 5

end

end A093135.P6647037527924892857

namespace A093135

/-- `a(n-1)+10^n/5` -/
def P6647037527924892857.Spec : Prop :=
  ∀ n, P6647037527924892857.a n = (A093135 n : ℚ)

end A093135

/-! ## A093135.P10820554215912791244

`∑[floor(10^n/5)]+(n%2)!`
-/

namespace A093135.P10820554215912791244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial (n % 2) : ℤ)

end

end A093135.P10820554215912791244

namespace A093135

/-- `∑[floor(10^n/5)]+(n%2)!` -/
def P10820554215912791244.Spec : Prop :=
  ∀ n, P10820554215912791244.a n = A093135 n

end A093135

/-! ## A093135.P10305564294747658804

`∑[A093136(n)]`
-/

namespace A093135.P10305564294747658804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093135.P10305564294747658804

namespace A093135

/-- `∑[A093136(n)]` -/
def P10305564294747658804.Spec : Prop :=
  ∀ n, P10305564294747658804.a n = A093135 n

end A093135

/-! ## A093135.P12672529388649533028

`1+A002276(n)`
-/

namespace A093135.P12672529388649533028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002276 n

end

end A093135.P12672529388649533028

namespace A093135

/-- `1+A002276(n)` -/
def P12672529388649533028.Spec : Prop :=
  ∀ n, P12672529388649533028.a n = A093135 n

end A093135

/-! ## A093135.P14997388806875937830

`A081857(Δ[n²])`
-/

namespace A093135.P14997388806875937830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A093135.P14997388806875937830

namespace A093135

/-- `A081857(Δ[n²])` -/
def P14997388806875937830.Spec : Prop :=
  ∀ n, P14997388806875937830.a n = A093135 n

end A093135

/-! ## A093135.P4213841047037692951

`Δ[A036544(n)]-1`
-/

namespace A093135.P4213841047037692951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093135.P4213841047037692951

namespace A093135

/-- `Δ[A036544(n)]-1` -/
def P4213841047037692951.Spec : Prop :=
  ∀ n, P4213841047037692951.a n = A093135 n

end A093135

/-! ## A093135.P4625411605977441328

`2*A002275(n)+1`
-/

namespace A093135.P4625411605977441328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002275 n + 1

end

end A093135.P4625411605977441328

namespace A093135

/-- `2*A002275(n)+1` -/
def P4625411605977441328.Spec : Prop :=
  ∀ n, P4625411605977441328.a n = A093135 n

end A093135

/-! ## A093135.P9949168221263954924

`A094626(2*n)+1`
-/

namespace A093135.P9949168221263954924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 (2 * n) + 1

end

end A093135.P9949168221263954924

namespace A093135

/-- `A094626(2*n)+1` -/
def P9949168221263954924.Spec : Prop :=
  ∀ n, P9949168221263954924.a n = A093135 n

end A093135

/-! ## A093135.P7622901458454543275

`A322925(2*n)+1`
-/

namespace A093135.P7622901458454543275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (2 * n) + 1

end

end A093135.P7622901458454543275

namespace A093135

/-- `A322925(2*n)+1` -/
def P7622901458454543275.Spec : Prop :=
  ∀ n, P7622901458454543275.a n = A093135 n

end A093135

/-! ## A093135.P444988149931027621

`A002278(n)/2+1`
-/

namespace A093135.P444988149931027621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002278 n : ℚ) / 2 + 1

end

end A093135.P444988149931027621

namespace A093135

/-- `A002278(n)/2+1` -/
def P444988149931027621.Spec : Prop :=
  ∀ n, P444988149931027621.a n = (A093135 n : ℚ)

end A093135

/-! ## A093135.P2947887986620691753

`2*A047855(n)-1`
-/

namespace A093135.P2947887986620691753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047855 n - 1

end

end A093135.P2947887986620691753

namespace A093135

/-- `2*A047855(n)-1` -/
def P2947887986620691753.Spec : Prop :=
  ∀ n, P2947887986620691753.a n = A093135 n

end A093135

/-! ## A093135.P422342230474457800

`A002280(n)/3+1`
-/

namespace A093135.P422342230474457800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002280 n : ℚ) / 3 + 1

end

end A093135.P422342230474457800

namespace A093135

/-- `A002280(n)/3+1` -/
def P422342230474457800.Spec : Prop :=
  ∀ n, P422342230474457800.a n = (A093135 n : ℚ)

end A093135

/-! ## A093135.P14726877273590852659

`A002282(n)/4+1`
-/

namespace A093135.P14726877273590852659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002282 n : ℚ) / 4 + 1

end

end A093135.P14726877273590852659

namespace A093135

/-- `A002282(n)/4+1` -/
def P14726877273590852659.Spec : Prop :=
  ∀ n, P14726877273590852659.a n = (A093135 n : ℚ)

end A093135

/-!
# A093136: Expansion of (1 - 8*x)/(1 - 10*x).

The programs for A093136, the canonical program `A093136.P5013562672639239419` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093136 has offset 0).

The definition of A093136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x)/(1-10x))` (program `A093136.P5013562672639239419`, by `A093136.P5013562672639239419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093136.P5013562672639239419

`ogf((1-8x)/(1-10x))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093136

/-- `ogf((1-8x)/(1-10x))` -/
def P5013562672639239419.Spec : Prop :=
  ∀ n, P5013562672639239419.a n = A093136 n

theorem P5013562672639239419.correct : P5013562672639239419.Spec := by
  intro n
  simp only [A093136]

end A093136

/-! ## A093136.P15253314730351292643

`ceil(10^n/5)`
-/

namespace A093136.P15253314730351292643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 5⌉

end

end A093136.P15253314730351292643

namespace A093136

/-- `ceil(10^n/5)` -/
def P15253314730351292643.Spec : Prop :=
  ∀ n, P15253314730351292643.a n = A093136 n

end A093136

/-! ## A093136.P8723651392430788936

`lcm(5, 10^n)/5`
-/

namespace A093136.P8723651392430788936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (10 ^ n) : ℚ) / 5

end

end A093136.P8723651392430788936

namespace A093136

/-- `lcm(5, 10^n)/5` -/
def P8723651392430788936.Spec : Prop :=
  ∀ n, P8723651392430788936.a n = (A093136 n : ℚ)

end A093136

/-! ## A093136.P14207144690955529392

`10*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A093136.P14207144690955529392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  10 * a (n - 1)

end

end A093136.P14207144690955529392

namespace A093136

/-- `10*a(n-1)` -/
def P14207144690955529392.Spec : Prop :=
  ∀ n, (P14207144690955529392.a n : ℤ) = A093136 n

end A093136

/-! ## A093136.P15503785693855179788

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A093136.P15503785693855179788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A093136.P15503785693855179788

namespace A093136

/-- `abs(∏[-a(n-1)])` -/
def P15503785693855179788.Spec : Prop :=
  ∀ n, P15503785693855179788.a n = A093136 n

end A093136

/-! ## A093136.P4497084031831480469

`lcm(2^n, ceil(5^(n-1)))`
-/

namespace A093136.P4497084031831480469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) ⌈(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A093136.P4497084031831480469

namespace A093136

/-- `lcm(2^n, ceil(5^(n-1)))` -/
def P4497084031831480469.Spec : Prop :=
  ∀ n, (P4497084031831480469.a n : ℤ) = A093136 n

end A093136

/-! ## A093136.P3151223523179146927

`5^(floor(acot(n))-1)*10^n`
-/

namespace A093136.P3151223523179146927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℤ) * (10 ^ n : ℚ)

end

end A093136.P3151223523179146927

namespace A093136

/-- `5^(floor(acot(n))-1)*10^n` -/
def P3151223523179146927.Spec : Prop :=
  ∀ n, P3151223523179146927.a n = (A093136 n : ℚ)

end A093136

/-! ## A093136.P8469173075602574079

`lcm(11, a(n-1))-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A093136.P8469173075602574079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - a (n - 1)

end

end A093136.P8469173075602574079

namespace A093136

/-- `lcm(11, a(n-1))-a(n-1)` -/
def P8469173075602574079.Spec : Prop :=
  ∀ n, P8469173075602574079.a n = A093136 n

end A093136

/-! ## A093136.P319278662288332251

`a(n-1)+a(n-1)/(1/3)²` with `a(0)=1, a(1)=2`
-/

namespace A093136.P319278662288332251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A093136.P319278662288332251

namespace A093136

/-- `a(n-1)+a(n-1)/(1/3)²` -/
def P319278662288332251.Spec : Prop :=
  ∀ n, P319278662288332251.a n = (A093136 n : ℚ)

end A093136

/-! ## A093136.P9775829163194038106

`A004643(A004273(n))`
-/

namespace A093136.P9775829163194038106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (A004273 n).toNat

end

end A093136.P9775829163194038106

namespace A093136

/-- `A004643(A004273(n))` -/
def P9775829163194038106.Spec : Prop :=
  ∀ n, P9775829163194038106.a n = A093136 n

end A093136

/-! ## A093136.P10264530638442693985

`A039690(A135042(n))`
-/

namespace A093136.P10264530638442693985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039690 (A135042 n).toNat

end

end A093136.P10264530638442693985

namespace A093136

/-- `A039690(A135042(n))` -/
def P10264530638442693985.Spec : Prop :=
  ∀ n, P10264530638442693985.a n = A093136 n

end A093136

/-! ## A093136.P10574897322317995809

`A194350(A131098(n+1))`
-/

namespace A093136.P10574897322317995809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A131098 (n + 1)).toNat

end

end A093136.P10574897322317995809

namespace A093136

/-- `A194350(A131098(n+1))` -/
def P10574897322317995809.Spec : Prop :=
  ∀ n, P10574897322317995809.a n = A093136 n

end A093136

/-! ## A093136.P8431320938837470902

`A281366(A111284(n+1))`
-/

namespace A093136.P8431320938837470902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (A111284 (n + 1)).toNat

end

end A093136.P8431320938837470902

namespace A093136

/-- `A281366(A111284(n+1))` -/
def P8431320938837470902.Spec : Prop :=
  ∀ n, P8431320938837470902.a n = A093136 n

end A093136

/-! ## A093136.P17842688010257978063

`A356520(A212342(n+1))`
-/

namespace A093136.P17842688010257978063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356520 (A212342 (n + 1)).toNat

end

end A093136.P17842688010257978063

namespace A093136

/-- `A356520(A212342(n+1))` -/
def P17842688010257978063.Spec : Prop :=
  ∀ n, P17842688010257978063.a n = A093136 n

end A093136

/-! ## A093136.P1987730912378284367

`A011782(n)*A020699(n)`
-/

namespace A093136.P1987730912378284367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A020699 n

end

end A093136.P1987730912378284367

namespace A093136

/-- `A011782(n)*A020699(n)` -/
def P1987730912378284367.Spec : Prop :=
  ∀ n, P1987730912378284367.a n = A093136 n

end A093136

/-! ## A093136.P18308947564421739549

`gcd(A090019(n), A093141(n))`
-/

namespace A093136.P18308947564421739549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090019 n) (A093141 n)

end

end A093136.P18308947564421739549

namespace A093136

/-- `gcd(A090019(n), A093141(n))` -/
def P18308947564421739549.Spec : Prop :=
  ∀ n, (P18308947564421739549.a n : ℤ) = A093136 n

end A093136

/-! ## A093136.P8586129483853518490

`gcd(A011557(n), A346178(n))`
-/

namespace A093136.P8586129483853518490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011557 n) (A346178 n)

end

end A093136.P8586129483853518490

namespace A093136

/-- `gcd(A011557(n), A346178(n))` -/
def P8586129483853518490.Spec : Prop :=
  ∀ n, (P8586129483853518490.a n : ℤ) = A093136 n

end A093136

/-! ## A093136.P7328121360465752148

`A194350(A019442(n+2)-1)`
-/

namespace A093136.P7328121360465752148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A019442 (n + 2) - 1).toNat

end

end A093136.P7328121360465752148

namespace A093136

/-- `A194350(A019442(n+2)-1)` -/
def P7328121360465752148.Spec : Prop :=
  ∀ n, P7328121360465752148.a n = A093136 n

end A093136

/-! ## A093136.P18012640610700751115

`A281366(xor(1, A008574(n)-1))`
-/

namespace A093136.P18012640610700751115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (Int.xor 1 (A008574 n - 1)).toNat

end

end A093136.P18012640610700751115

namespace A093136

/-- `A281366(xor(1, A008574(n)-1))` -/
def P18012640610700751115.Spec : Prop :=
  ∀ n, P18012640610700751115.a n = A093136 n

end A093136

/-! ## A093136.P9530515013059051486

`A000007(n)+2*A178501(n)`
-/

namespace A093136.P9530515013059051486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A178501 n

end

end A093136.P9530515013059051486

namespace A093136

/-- `A000007(n)+2*A178501(n)` -/
def P9530515013059051486.Spec : Prop :=
  ∀ n, P9530515013059051486.a n = A093136 n

end A093136

/-!
# A093137: Expansion of (1-7*x)/((1-x)*(1-10*x)).

The programs for A093137, the canonical program `A093137.P11781080347520605932` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093137 has offset 0).

The definition of A093137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x)/(1-11x+10x^2))` (program `A093137.P11781080347520605932`, by `A093137.P11781080347520605932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093137.P11781080347520605932

`ogf((1-7x)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093137

/-- `ogf((1-7x)/(1-11x+10x^2))` -/
def P11781080347520605932.Spec : Prop :=
  ∀ n, P11781080347520605932.a n = A093137 n

theorem P11781080347520605932.correct : P11781080347520605932.Spec := by
  intro n
  simp only [A093137]

end A093137

/-! ## A093137.P11869055800065822069

`10*a(n-1)-6` with `a(0)=1`
-/

namespace A093137.P11869055800065822069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - 6

end

end A093137.P11869055800065822069

namespace A093137

/-- `10*a(n-1)-6` -/
def P11869055800065822069.Spec : Prop :=
  ∀ n, P11869055800065822069.a n = A093137 n

end A093137

/-! ## A093137.P12881335961487125566

`3*10^n/9+6/9`
-/

namespace A093137.P12881335961487125566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 10 ^ n : ℚ) / 9 + (6 : ℚ) / 9

end

end A093137.P12881335961487125566

namespace A093137

/-- `3*10^n/9+6/9` -/
def P12881335961487125566.Spec : Prop :=
  ∀ n, P12881335961487125566.a n = (A093137 n : ℚ)

end A093137

/-! ## A093137.P13813811956536487563

`round(10^n/3-cos(4))`
-/

namespace A093137.P13813811956536487563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((10 ^ n : ℚ) / 3 : ℝ) - Real.cos (4 : ℝ))

end

end A093137.P13813811956536487563

namespace A093137

/-- `round(10^n/3-cos(4))` -/
def P13813811956536487563.Spec : Prop :=
  ∀ n, P13813811956536487563.a n = A093137 n

end A093137

/-! ## A093137.P10223369727046047279

`abs(xor(floor(10^n/3), -1))`
-/

namespace A093137.P10223369727046047279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌊(10 ^ n : ℚ) / 3⌋ (-1)|

end

end A093137.P10223369727046047279

namespace A093137

/-- `abs(xor(floor(10^n/3), -1))` -/
def P10223369727046047279.Spec : Prop :=
  ∀ n, P10223369727046047279.a n = A093137 n

end A093137

/-! ## A093137.P334573152033279605

`-xor(floor(10^n/3), -1)`
-/

namespace A093137.P334573152033279605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌊(10 ^ n : ℚ) / 3⌋ (-1)

end

end A093137.P334573152033279605

namespace A093137

/-- `-xor(floor(10^n/3), -1)` -/
def P334573152033279605.Spec : Prop :=
  ∀ n, P334573152033279605.a n = A093137 n

end A093137

/-! ## A093137.P11832513705665417521

`∑[A093138(n)]`
-/

namespace A093137.P11832513705665417521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093137.P11832513705665417521

namespace A093137

/-- `∑[A093138(n)]` -/
def P11832513705665417521.Spec : Prop :=
  ∀ n, P11832513705665417521.a n = A093137 n

end A093137

/-! ## A093137.P46415715398768857

`A308900(Δ[n²])`
-/

namespace A093137.P46415715398768857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A093137.P46415715398768857

namespace A093137

/-- `A308900(Δ[n²])` -/
def P46415715398768857.Spec : Prop :=
  ∀ n, P46415715398768857.a n = A093137 n

end A093137

/-! ## A093137.P13882422038911973724

`A237424(∑[n]+1)`
-/

namespace A093137.P13882422038911973724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093137.P13882422038911973724

namespace A093137

/-- `A237424(∑[n]+1)` -/
def P13882422038911973724.Spec : Prop :=
  ∀ n, P13882422038911973724.a n = A093137 n

end A093137

/-! ## A093137.P8199787946820435227

`A073555(n+1)/A174354(2*n)`
-/

namespace A093137.P8199787946820435227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073555 (n + 1) : ℚ) / (A174354 (2 * n) : ℚ)

end

end A093137.P8199787946820435227

namespace A093137

/-- `A073555(n+1)/A174354(2*n)` -/
def P8199787946820435227.Spec : Prop :=
  ∀ n, P8199787946820435227.a n = (A093137 n : ℚ)

end A093137

/-! ## A093137.P7984274690401923890

`∩[A069860(n+1), A237424(n+1)]`
-/

namespace A093137.P7984274690401923890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093137.P7984274690401923890

namespace A093137

/-- `∩[A069860(n+1), A237424(n+1)]` -/
def P7984274690401923890.Spec : Prop :=
  ∀ n, (P7984274690401923890.a n : ℤ) = A093137 n

end A093137

/-! ## A093137.P10364451460159303341

`(A062397(n)+1)/3`
-/

namespace A093137.P10364451460159303341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062397 n + 1 : ℚ) / 3

end

end A093137.P10364451460159303341

namespace A093137

/-- `(A062397(n)+1)/3` -/
def P10364451460159303341.Spec : Prop :=
  ∀ n, P10364451460159303341.a n = (A093137 n : ℚ)

end A093137

/-! ## A093137.P169654880317326304

`(A011557(n)+2)/3`
-/

namespace A093137.P169654880317326304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n + 2 : ℚ) / 3

end

end A093137.P169654880317326304

namespace A093137

/-- `(A011557(n)+2)/3` -/
def P169654880317326304.Spec : Prop :=
  ∀ n, P169654880317326304.a n = (A093137 n : ℚ)

end A093137

/-! ## A093137.P16242991365978733135

`(A097166(n)+3)/4`
-/

namespace A093137.P16242991365978733135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097166 n + 3 : ℚ) / 4

end

end A093137.P16242991365978733135

namespace A093137

/-- `(A097166(n)+3)/4` -/
def P16242991365978733135.Spec : Prop :=
  ∀ n, P16242991365978733135.a n = (A093137 n : ℚ)

end A093137

/-! ## A093137.P13432917512835464749

`(A126109(n)+3)/5`
-/

namespace A093137.P13432917512835464749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126109 n + 3 : ℚ) / 5

end

end A093137.P13432917512835464749

namespace A093137

/-- `(A126109(n)+3)/5` -/
def P13432917512835464749.Spec : Prop :=
  ∀ n, P13432917512835464749.a n = (A093137 n : ℚ)

end A093137

/-! ## A093137.P5715064427829006236

`(A246057(n)+4)/5`
-/

namespace A093137.P5715064427829006236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246057 n + 4 : ℚ) / 5

end

end A093137.P5715064427829006236

namespace A093137

/-- `(A246057(n)+4)/5` -/
def P5715064427829006236.Spec : Prop :=
  ∀ n, P5715064427829006236.a n = (A093137 n : ℚ)

end A093137

/-! ## A093137.P16165670926988507313

`(A073553(n+1)+2)/4`
-/

namespace A093137.P16165670926988507313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073553 (n + 1) + 2 : ℚ) / 4

end

end A093137.P16165670926988507313

namespace A093137

/-- `(A073553(n+1)+2)/4` -/
def P16165670926988507313.Spec : Prop :=
  ∀ n, P16165670926988507313.a n = (A093137 n : ℚ)

end A093137

/-! ## A093137.P6205378727543171560

`(A158799(n+1)+A002283(n))/A158799(n+1)`
-/

namespace A093137.P6205378727543171560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158799 (n + 1) + A002283 n : ℚ) / (A158799 (n + 1) : ℚ)

end

end A093137.P6205378727543171560

namespace A093137

/-- `(A158799(n+1)+A002283(n))/A158799(n+1)` -/
def P6205378727543171560.Spec : Prop :=
  ∀ n, P6205378727543171560.a n = (A093137 n : ℚ)

end A093137

/-!
# A093138: Expansion of (1-7x)/(1-10x).

The programs for A093138, the canonical program `A093138.P3564856560100504317` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093138 has offset 0).

The definition of A093138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x)/(1-10x))` (program `A093138.P3564856560100504317`, by `A093138.P3564856560100504317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093138.P3564856560100504317

`ogf((1-7x)/(1-10x))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093138

/-- `ogf((1-7x)/(1-10x))` -/
def P3564856560100504317.Spec : Prop :=
  ∀ n, P3564856560100504317.a n = A093138 n

theorem P3564856560100504317.correct : P3564856560100504317.Spec := by
  intro n
  simp only [A093138]

end A093138

/-! ## A093138.P2163102538859984752

`10*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A093138.P2163102538859984752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  10 * a (n - 1)

end

end A093138.P2163102538859984752

namespace A093138

/-- `10*a(n-1)` -/
def P2163102538859984752.Spec : Prop :=
  ∀ n, (P2163102538859984752.a n : ℤ) = A093138 n

end A093138

/-! ## A093138.P7171676179794041046

`ceil(3*10^(n-1))`
-/

namespace A093138.P7171676179794041046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A093138.P7171676179794041046

namespace A093138

/-- `ceil(3*10^(n-1))` -/
def P7171676179794041046.Spec : Prop :=
  ∀ n, P7171676179794041046.a n = A093138 n

end A093138

/-! ## A093138.P8678289618723410348

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A093138.P8678289618723410348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A093138.P8678289618723410348

namespace A093138

/-- `abs(∏[-a(n-1)])` -/
def P8678289618723410348.Spec : Prop :=
  ∀ n, P8678289618723410348.a n = A093138 n

end A093138

/-! ## A093138.P12165528786186853702

`lcm(10^(n-1), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A093138.P12165528786186853702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A093138.P12165528786186853702

namespace A093138

/-- `lcm(10^(n-1), a(n-1))` -/
def P12165528786186853702.Spec : Prop :=
  ∀ n, (P12165528786186853702.a n : ℤ) = A093138 n

end A093138

/-! ## A093138.P13912378338973756479

`a(n-1)+a(n-1)/(1/3)²` with `a(0)=1, a(1)=3`
-/

namespace A093138.P13912378338973756479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A093138.P13912378338973756479

namespace A093138

/-- `a(n-1)+a(n-1)/(1/3)²` -/
def P13912378338973756479.Spec : Prop :=
  ∀ n, P13912378338973756479.a n = (A093138 n : ℚ)

end A093138

/-! ## A093138.P6403894624238464684

`round(A090019(n)/2)`
-/

namespace A093138.P6403894624238464684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090019 n : ℚ) / 2)

end

end A093138.P6403894624238464684

namespace A093138

/-- `round(A090019(n)/2)` -/
def P6403894624238464684.Spec : Prop :=
  ∀ n, P6403894624238464684.a n = A093138 n

end A093138

/-! ## A093138.P2359613845360640860

`abs(10*a(A023443(n)))` with `a(0)=1, a(1)=3`
-/

namespace A093138.P2359613845360640860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  10 * a (A023443 n).toNat

end

end A093138.P2359613845360640860

namespace A093138

/-- `abs(10*a(A023443(n)))` -/
def P2359613845360640860.Spec : Prop :=
  ∀ n, (P2359613845360640860.a n : ℤ) = A093138 n

end A093138

/-! ## A093138.P3546044284134158464

`A004663(A004273(n))`
-/

namespace A093138.P3546044284134158464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 (A004273 n).toNat

end

end A093138.P3546044284134158464

namespace A093138

/-- `A004663(A004273(n))` -/
def P3546044284134158464.Spec : Prop :=
  ∀ n, P3546044284134158464.a n = A093138 n

end A093138

/-! ## A093138.P17663042898098556971

`A136853(A004280(n+2))`
-/

namespace A093138.P17663042898098556971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136853 (A004280 (n + 2)).toNat

end

end A093138.P17663042898098556971

namespace A093138

/-- `A136853(A004280(n+2))` -/
def P17663042898098556971.Spec : Prop :=
  ∀ n, P17663042898098556971.a n = A093138 n

end A093138

/-! ## A093138.P12041263611512057550

`A004663(A008486(n)-(n+1))`
-/

namespace A093138.P12041263611512057550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 (A008486 n - (n + 1 : ℤ)).toNat

end

end A093138.P12041263611512057550

namespace A093138

/-- `A004663(A008486(n)-(n+1))` -/
def P12041263611512057550.Spec : Prop :=
  ∀ n, P12041263611512057550.a n = A093138 n

end A093138

/-! ## A093138.P7517691013420081497

`A004663(A008486(n)-1-n)`
-/

namespace A093138.P7517691013420081497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 (A008486 n - 1 - (n : ℤ)).toNat

end

end A093138.P7517691013420081497

namespace A093138

/-- `A004663(A008486(n)-1-n)` -/
def P7517691013420081497.Spec : Prop :=
  ∀ n, P7517691013420081497.a n = A093138 n

end A093138

/-! ## A093138.P8168907884838275118

`2*A093141(n)-A093143(n)`
-/

namespace A093138.P8168907884838275118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093141 n - A093143 n

end

end A093138.P8168907884838275118

namespace A093138

/-- `2*A093141(n)-A093143(n)` -/
def P8168907884838275118.Spec : Prop :=
  ∀ n, P8168907884838275118.a n = A093138 n

end A093138

/-! ## A093138.P13790729552010850835

`lcm(2, A011557(n))-A196662(n)`
-/

namespace A093138.P13790729552010850835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A011557 n) : ℤ) - A196662 n

end

end A093138.P13790729552010850835

namespace A093138

/-- `lcm(2, A011557(n))-A196662(n)` -/
def P13790729552010850835.Spec : Prop :=
  ∀ n, P13790729552010850835.a n = A093138 n

end A093138

/-! ## A093138.P14125970301045136710

`A090019(n)/gcd(2, A093141(n))`
-/

namespace A093138.P14125970301045136710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090019 n : ℚ) / (Int.gcd 2 (A093141 n) : ℚ)

end

end A093138.P14125970301045136710

namespace A093138

/-- `A090019(n)/gcd(2, A093141(n))` -/
def P14125970301045136710.Spec : Prop :=
  ∀ n, P14125970301045136710.a n = (A093138 n : ℚ)

end A093138

/-! ## A093138.P13812702548611279537

`5^(A028310(n)-1)*A003945(n)`
-/

namespace A093138.P13812702548611279537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A028310 n - 1 : ℤ) * (A003945 n : ℚ)

end

end A093138.P13812702548611279537

namespace A093138

/-- `5^(A028310(n)-1)*A003945(n)` -/
def P13812702548611279537.Spec : Prop :=
  ∀ n, P13812702548611279537.a n = (A093138 n : ℚ)

end A093138

/-! ## A093138.P12338625891458412573

`A090019(n)/dr(A003953(n))`
-/

namespace A093138.P12338625891458412573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090019 n : ℚ) / (SequenceMachineLib.digitalRoot (A003953 n) : ℚ)

end

end A093138.P12338625891458412573

namespace A093138

/-- `A090019(n)/dr(A003953(n))` -/
def P12338625891458412573.Spec : Prop :=
  ∀ n, P12338625891458412573.a n = (A093138 n : ℚ)

end A093138

/-! ## A093138.P5922527336750037731

`gcd(Δ[A093143(n)], A090019(n))`
-/

namespace A093138.P5922527336750037731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A090019 n)

end

end A093138.P5922527336750037731

namespace A093138

/-- `gcd(Δ[A093143(n)], A090019(n))` -/
def P5922527336750037731.Spec : Prop :=
  ∀ n, (P5922527336750037731.a n : ℤ) = A093138 n

end A093138

/-!
# A093139: Primes of the form 10*R_k + 7, where R_k is the repunit (A002275) of length k.

The programs for A093139, there is no canonical definition to state claims against.
-/

/-! ## A093139.P16551607860998395089

`A002275(A097684(n+1))+6`
-/

namespace A093139.P16551607860998395089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A097684 (n + 1)).toNat + 6

end

end A093139.P16551607860998395089

/-! ## A093139.P16678071159688640287

`∩[A046703(n+1), A199985(n+1)+2]`
-/

namespace A093139.P16678071159688640287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199985 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093139.P16678071159688640287

/-!
# A093140: Expansion of (1-6*x)/((1-x)*(1-10*x)).

The programs for A093140, the canonical program `A093140.P6519660077975942834` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093140 has offset 0).

The definition of A093140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x)/(1-11x+10x^2))` (program `A093140.P6519660077975942834`, by `A093140.P6519660077975942834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093140.P6519660077975942834

`ogf((1-6x)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093140

/-- `ogf((1-6x)/(1-11x+10x^2))` -/
def P6519660077975942834.Spec : Prop :=
  ∀ n, P6519660077975942834.a n = A093140 n

theorem P6519660077975942834.correct : P6519660077975942834.Spec := by
  intro n
  simp only [A093140]

end A093140

/-! ## A093140.P13679911848943879577

`10*a(n-1)-5` with `a(0)=1`
-/

namespace A093140.P13679911848943879577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - 5

end

end A093140.P13679911848943879577

namespace A093140

/-- `10*a(n-1)-5` -/
def P13679911848943879577.Spec : Prop :=
  ∀ n, P13679911848943879577.a n = A093140 n

end A093140

/-! ## A093140.P16549352955887206025

`4*10^n/9+5/9`
-/

namespace A093140.P16549352955887206025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * 10 ^ n : ℚ) / 9 + (5 : ℚ) / 9

end

end A093140.P16549352955887206025

namespace A093140

/-- `4*10^n/9+5/9` -/
def P16549352955887206025.Spec : Prop :=
  ∀ n, P16549352955887206025.a n = (A093140 n : ℚ)

end A093140

/-! ## A093140.P361819526632349786

`or(1, floor(4/9*10^n))`
-/

namespace A093140.P361819526632349786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(4 : ℚ) / 9 * (10 ^ n : ℚ)⌋

end

end A093140.P361819526632349786

namespace A093140

/-- `or(1, floor(4/9*10^n))` -/
def P361819526632349786.Spec : Prop :=
  ∀ n, P361819526632349786.a n = A093140 n

end A093140

/-! ## A093140.P10242320840744159609

`xor(1, floor(4/9*10^n))`
-/

namespace A093140.P10242320840744159609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(4 : ℚ) / 9 * (10 ^ n : ℚ)⌋

end

end A093140.P10242320840744159609

namespace A093140

/-- `xor(1, floor(4/9*10^n))` -/
def P10242320840744159609.Spec : Prop :=
  ∀ n, P10242320840744159609.a n = A093140 n

end A093140

/-! ## A093140.P16486076932837762432

`lcm(5, 1-lcm(2, a(n-1)))` with `a(0)=1`
-/

namespace A093140.P16486076932837762432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 5 (1 - (Nat.lcm 2 (a (n - 1)) : ℤ))

end

end A093140.P16486076932837762432

namespace A093140

/-- `lcm(5, 1-lcm(2, a(n-1)))` -/
def P16486076932837762432.Spec : Prop :=
  ∀ n, (P16486076932837762432.a n : ℤ) = A093140 n

end A093140

/-! ## A093140.P3171225230358983782

`∑[A093141(n)]`
-/

namespace A093140.P3171225230358983782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093140.P3171225230358983782

namespace A093140

/-- `∑[A093141(n)]` -/
def P3171225230358983782.Spec : Prop :=
  ∀ n, P3171225230358983782.a n = A093140 n

end A093140

/-! ## A093140.P14925387937330901552

`round(A059482(n)/2)`
-/

namespace A093140.P14925387937330901552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059482 n : ℚ) / 2)

end

end A093140.P14925387937330901552

namespace A093140

/-- `round(A059482(n)/2)` -/
def P14925387937330901552.Spec : Prop :=
  ∀ n, P14925387937330901552.a n = A093140 n

end A093140

/-! ## A093140.P343328406855620093

`(∑[A346178(n)]+1)/2`
-/

namespace A093140.P343328406855620093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346178 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A093140.P343328406855620093

namespace A093140

/-- `(∑[A346178(n)]+1)/2` -/
def P343328406855620093.Spec : Prop :=
  ∀ n, P343328406855620093.a n = (A093140 n : ℚ)

end A093140

/-! ## A093140.P845628619604573070

`(A097166(n)+2)/3`
-/

namespace A093140.P845628619604573070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097166 n + 2 : ℚ) / 3

end

end A093140.P845628619604573070

namespace A093140

/-- `(A097166(n)+2)/3` -/
def P845628619604573070.Spec : Prop :=
  ∀ n, P845628619604573070.a n = (A093140 n : ℚ)

end A093140

/-! ## A093140.P2453232343910909722

`(A246058(n)+3)/4`
-/

namespace A093140.P2453232343910909722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246058 n + 3 : ℚ) / 4

end

end A093140.P2453232343910909722

namespace A093140

/-- `(A246058(n)+3)/4` -/
def P2453232343910909722.Spec : Prop :=
  ∀ n, P2453232343910909722.a n = (A093140 n : ℚ)

end A093140

/-! ## A093140.P13742043094999896076

`(A073553(n+1)+1)/3`
-/

namespace A093140.P13742043094999896076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073553 (n + 1) + 1 : ℚ) / 3

end

end A093140.P13742043094999896076

namespace A093140

/-- `(A073553(n+1)+1)/3` -/
def P13742043094999896076.Spec : Prop :=
  ∀ n, P13742043094999896076.a n = (A093140 n : ℚ)

end A093140

/-! ## A093140.P12989324215386195680

`(A173193(n+1)-2)/5`
-/

namespace A093140.P12989324215386195680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173193 (n + 1) - 2 : ℚ) / 5

end

end A093140.P12989324215386195680

namespace A093140

/-- `(A173193(n+1)-2)/5` -/
def P12989324215386195680.Spec : Prop :=
  ∀ n, P12989324215386195680.a n = (A093140 n : ℚ)

end A093140

/-! ## A093140.P13790050661474140768

`(A165402(n+1)+4)/5`
-/

namespace A093140.P13790050661474140768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165402 (n + 1) + 4 : ℚ) / 5

end

end A093140.P13790050661474140768

namespace A093140

/-- `(A165402(n+1)+4)/5` -/
def P13790050661474140768.Spec : Prop :=
  ∀ n, P13790050661474140768.a n = (A093140 n : ℚ)

end A093140

/-! ## A093140.P3574278280768997465

`(A173262(n+1)-4)/5`
-/

namespace A093140.P3574278280768997465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173262 (n + 1) - 4 : ℚ) / 5

end

end A093140.P3574278280768997465

namespace A093140

/-- `(A173262(n+1)-4)/5` -/
def P3574278280768997465.Spec : Prop :=
  ∀ n, P3574278280768997465.a n = (A093140 n : ℚ)

end A093140

/-!
# A093141: Expansion of (1-6*x)/(1-10*x).

The programs for A093141, the canonical program `A093141.P9613569312941629559` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093141 has offset 0).

The definition of A093141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x)/(1-10x))` (program `A093141.P9613569312941629559`, by `A093141.P9613569312941629559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093141.P9613569312941629559

`ogf((1-6x)/(1-10x))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093141

/-- `ogf((1-6x)/(1-10x))` -/
def P9613569312941629559.Spec : Prop :=
  ∀ n, P9613569312941629559.a n = A093141 n

theorem P9613569312941629559.correct : P9613569312941629559.Spec := by
  intro n
  simp only [A093141]

end A093141

/-! ## A093141.P16162569297115713894

`10*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A093141.P16162569297115713894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  10 * a (n - 1)

end

end A093141.P16162569297115713894

namespace A093141

/-- `10*a(n-1)` -/
def P16162569297115713894.Spec : Prop :=
  ∀ n, (P16162569297115713894.a n : ℤ) = A093141 n

end A093141

/-! ## A093141.P3598668186103517064

`ceil(4*10^(n-1))`
-/

namespace A093141.P3598668186103517064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A093141.P3598668186103517064

namespace A093141

/-- `ceil(4*10^(n-1))` -/
def P3598668186103517064.Spec : Prop :=
  ∀ n, P3598668186103517064.a n = A093141 n

end A093141

/-! ## A093141.P14096097800890079502

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A093141.P14096097800890079502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A093141.P14096097800890079502

namespace A093141

/-- `abs(∏[-a(n-1)])` -/
def P14096097800890079502.Spec : Prop :=
  ∀ n, P14096097800890079502.a n = A093141 n

end A093141

/-! ## A093141.P9662197225302746849

`ceil(10^n/5)*ceil(cosh(sin(n)))`
-/

namespace A093141.P9662197225302746849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 5⌉ * ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A093141.P9662197225302746849

namespace A093141

/-- `ceil(10^n/5)*ceil(cosh(sin(n)))` -/
def P9662197225302746849.Spec : Prop :=
  ∀ n, P9662197225302746849.a n = A093141 n

end A093141

/-! ## A093141.P12337918185193406036

`a(n-1)+lcm(9, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A093141.P12337918185193406036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + Nat.lcm 9 (a (n - 1))

end

end A093141.P12337918185193406036

namespace A093141

/-- `a(n-1)+lcm(9, a(n-1))` -/
def P12337918185193406036.Spec : Prop :=
  ∀ n, (P12337918185193406036.a n : ℤ) = A093141 n

end A093141

/-! ## A093141.P8207238811228895830

`(ceil(sin(n)²)+1)*ceil(10^n/5)`
-/

namespace A093141.P8207238811228895830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * ⌈(10 ^ n : ℚ) / 5⌉

end

end A093141.P8207238811228895830

namespace A093141

/-- `(ceil(sin(n)²)+1)*ceil(10^n/5)` -/
def P8207238811228895830.Spec : Prop :=
  ∀ n, P8207238811228895830.a n = A093141 n

end A093141

/-! ## A093141.P2946636986447849659

`a(n-1)+a(n-1)/(1/3)²` with `a(0)=1, a(1)=4`
-/

namespace A093141.P2946636986447849659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A093141.P2946636986447849659

namespace A093141

/-- `a(n-1)+a(n-1)/(1/3)²` -/
def P2946636986447849659.Spec : Prop :=
  ∀ n, P2946636986447849659.a n = (A093141 n : ℚ)

end A093141

/-! ## A093141.P16128586932383941289

`round(A346178(n)/2)`
-/

namespace A093141.P16128586932383941289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A346178 n : ℚ) / 2)

end

end A093141.P16128586932383941289

namespace A093141

/-- `round(A346178(n)/2)` -/
def P16128586932383941289.Spec : Prop :=
  ∀ n, P16128586932383941289.a n = A093141 n

end A093141

/-! ## A093141.P5046374728867279268

`2^n*A020699(n)`
-/

namespace A093141.P5046374728867279268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A020699 n

end

end A093141.P5046374728867279268

namespace A093141

/-- `2^n*A020699(n)` -/
def P5046374728867279268.Spec : Prop :=
  ∀ n, P5046374728867279268.a n = A093141 n

end A093141

/-! ## A093141.P5847054944284977813

`abs(10*a(A023443(n)))` with `a(0)=1, a(1)=4`
-/

namespace A093141.P5847054944284977813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  10 * a (A023443 n).toNat

end

end A093141.P5847054944284977813

namespace A093141

/-- `abs(10*a(A023443(n)))` -/
def P5847054944284977813.Spec : Prop :=
  ∀ n, (P5847054944284977813.a n : ℤ) = A093141 n

end A093141

/-! ## A093141.P6808266810810125711

`A097112(A004273(n))`
-/

namespace A093141.P6808266810810125711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097112 (A004273 n).toNat

end

end A093141.P6808266810810125711

namespace A093141

/-- `A097112(A004273(n))` -/
def P6808266810810125711.Spec : Prop :=
  ∀ n, P6808266810810125711.a n = A093141 n

end A093141

/-! ## A093141.P18217099083647446397

`A004655(A130824(n))`
-/

namespace A093141.P18217099083647446397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (A130824 n).toNat

end

end A093141.P18217099083647446397

namespace A093141

/-- `A004655(A130824(n))` -/
def P18217099083647446397.Spec : Prop :=
  ∀ n, P18217099083647446397.a n = A093141 n

end A093141

/-! ## A093141.P6564266676318902751

`A005054(n)*A011782(n)`
-/

namespace A093141.P6564266676318902751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n * A011782 n

end

end A093141.P6564266676318902751

namespace A093141

/-- `A005054(n)*A011782(n)` -/
def P6564266676318902751.Spec : Prop :=
  ∀ n, P6564266676318902751.a n = A093141 n

end A093141

/-! ## A093141.P17468882875120401916

`∩[A004647(n), A097112(n)]`
-/

namespace A093141.P17468882875120401916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093141.P17468882875120401916

namespace A093141

/-- `∩[A004647(n), A097112(n)]` -/
def P17468882875120401916.Spec : Prop :=
  ∀ n, (P17468882875120401916.a n : ℤ) = A093141 n

end A093141

/-! ## A093141.P18445548349419273376

`∩[A004655(n), A097112(n)]`
-/

namespace A093141.P18445548349419273376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093141.P18445548349419273376

namespace A093141

/-- `∩[A004655(n), A097112(n)]` -/
def P18445548349419273376.Spec : Prop :=
  ∀ n, (P18445548349419273376.a n : ℤ) = A093141 n

end A093141

/-! ## A093141.P6462580407686325315

`∩[A097112(n), A135262(n)]`
-/

namespace A093141.P6462580407686325315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135262 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093141.P6462580407686325315

namespace A093141

/-- `∩[A097112(n), A135262(n)]` -/
def P6462580407686325315.Spec : Prop :=
  ∀ n, (P6462580407686325315.a n : ℤ) = A093141 n

end A093141

/-! ## A093141.P6681615734898243200

`(A093136(n)+A090019(n))/2`
-/

namespace A093141.P6681615734898243200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093136 n + A090019 n : ℚ) / 2

end

end A093141.P6681615734898243200

namespace A093141

/-- `(A093136(n)+A090019(n))/2` -/
def P6681615734898243200.Spec : Prop :=
  ∀ n, P6681615734898243200.a n = (A093141 n : ℚ)

end A093141

/-! ## A093141.P526410382357744002

`2*A093143(n)-A090019(n)`
-/

namespace A093141.P526410382357744002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093143 n - A090019 n

end

end A093141.P526410382357744002

namespace A093141

/-- `2*A093143(n)-A090019(n)` -/
def P526410382357744002.Spec : Prop :=
  ∀ n, P526410382357744002.a n = A093141 n

end A093141

/-!
# A093142: Expansion of g.f. (1-5*x)/((1-x)*(1-10*x)).

The programs for A093142, the canonical program `A093142.P4498703461574976086` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093142 has offset 0).

The definition of A093142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x)/(1-11x+10x^2))` (program `A093142.P4498703461574976086`, by `A093142.P4498703461574976086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093142.P4498703461574976086

`ogf((1-5x)/(1-11x+10x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093142

/-- `ogf((1-5x)/(1-11x+10x^2))` -/
def P4498703461574976086.Spec : Prop :=
  ∀ n, P4498703461574976086.a n = A093142 n

theorem P4498703461574976086.correct : P4498703461574976086.Spec := by
  intro n
  simp only [A093142]

end A093142

/-! ## A093142.P10487894870024376693

`10*a(n-1)-4` with `a(0)=1`
-/

namespace A093142.P10487894870024376693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - 4

end

end A093142.P10487894870024376693

namespace A093142

/-- `10*a(n-1)-4` -/
def P10487894870024376693.Spec : Prop :=
  ∀ n, P10487894870024376693.a n = A093142 n

end A093142

/-! ## A093142.P17659422978686871295

`(5*10^n+4)/9`
-/

namespace A093142.P17659422978686871295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 10 ^ n + 4 : ℚ) / 9

end

end A093142.P17659422978686871295

namespace A093142

/-- `(5*10^n+4)/9` -/
def P17659422978686871295.Spec : Prop :=
  ∀ n, P17659422978686871295.a n = (A093142 n : ℚ)

end A093142

/-! ## A093142.P2055997732830089796

`abs(xor(∑[floor(10^n/2)], -1))`
-/

namespace A093142.P2055997732830089796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)|

end

end A093142.P2055997732830089796

namespace A093142

/-- `abs(xor(∑[floor(10^n/2)], -1))` -/
def P2055997732830089796.Spec : Prop :=
  ∀ n, P2055997732830089796.a n = A093142 n

end A093142

/-! ## A093142.P4861395597792353346

`a(n-1)+10^n/2` with `a(0)=1`
-/

namespace A093142.P4861395597792353346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (10 ^ n : ℚ) / 2

end

end A093142.P4861395597792353346

namespace A093142

/-- `a(n-1)+10^n/2` -/
def P4861395597792353346.Spec : Prop :=
  ∀ n, P4861395597792353346.a n = (A093142 n : ℚ)

end A093142

/-! ## A093142.P8443850666542352982

`∑[A093143(n)]`
-/

namespace A093142.P8443850666542352982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093142.P8443850666542352982

namespace A093142

/-- `∑[A093143(n)]` -/
def P8443850666542352982.Spec : Prop :=
  ∀ n, P8443850666542352982.a n = A093142 n

end A093142

/-! ## A093142.P1868190654038390827

`A002279(n)+1`
-/

namespace A093142.P1868190654038390827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n + 1

end

end A093142.P1868190654038390827

namespace A093142

/-- `A002279(n)+1` -/
def P1868190654038390827.Spec : Prop :=
  ∀ n, P1868190654038390827.a n = A093142 n

end A093142

/-! ## A093142.P16969878218506770634

`A178769(n)-1`
-/

namespace A093142.P16969878218506770634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 n - 1

end

end A093142.P16969878218506770634

namespace A093142

/-- `A178769(n)-1` -/
def P16969878218506770634.Spec : Prop :=
  ∀ n, P16969878218506770634.a n = A093142 n

end A093142

/-! ## A093142.P12585322513309827264

`A322927(2*n)+1`
-/

namespace A093142.P12585322513309827264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 (2 * n) + 1

end

end A093142.P12585322513309827264

namespace A093142

/-- `A322927(2*n)+1` -/
def P12585322513309827264.Spec : Prop :=
  ∀ n, P12585322513309827264.a n = A093142 n

end A093142

/-! ## A093142.P11047185214352830136

`5*A002275(n)+1`
-/

namespace A093142.P11047185214352830136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002275 n + 1

end

end A093142.P11047185214352830136

namespace A093142

/-- `5*A002275(n)+1` -/
def P11047185214352830136.Spec : Prop :=
  ∀ n, P11047185214352830136.a n = A093142 n

end A093142

/-! ## A093142.P12650840162651994118

`5*A047855(n)-4`
-/

namespace A093142.P12650840162651994118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A047855 n - 4

end

end A093142.P12650840162651994118

namespace A093142

/-- `5*A047855(n)-4` -/
def P12650840162651994118.Spec : Prop :=
  ∀ n, P12650840162651994118.a n = A093142 n

end A093142

/-! ## A093142.P10346499750699720599

`∑[∑[A346629(n+1)]]`
-/

namespace A093142.P10346499750699720599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346629 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093142.P10346499750699720599

namespace A093142

/-- `∑[∑[A346629(n+1)]]` -/
def P10346499750699720599.Spec : Prop :=
  ∀ n, P10346499750699720599.a n = A093142 n

end A093142

/-! ## A093142.P16627205150887025716

`A237344(A122709(n))`
-/

namespace A093142.P16627205150887025716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237344 (A122709 n).toNat

end

end A093142.P16627205150887025716

namespace A093142

/-- `A237344(A122709(n))` -/
def P16627205150887025716.Spec : Prop :=
  ∀ n, P16627205150887025716.a n = A093142 n

end A093142

/-! ## A093142.P11684014833010864083

`A011557(n)-A002278(n)`
-/

namespace A093142.P11684014833010864083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A002278 n

end

end A093142.P11684014833010864083

namespace A093142

/-- `A011557(n)-A002278(n)` -/
def P11684014833010864083.Spec : Prop :=
  ∀ n, P11684014833010864083.a n = A093142 n

end A093142

/-! ## A093142.P16090140180939424557

`A059482(n)-A002277(n)`
-/

namespace A093142.P16090140180939424557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n - A002277 n

end

end A093142.P16090140180939424557

namespace A093142

/-- `A059482(n)-A002277(n)` -/
def P16090140180939424557.Spec : Prop :=
  ∀ n, P16090140180939424557.a n = A093142 n

end A093142

/-! ## A093142.P5590248495854299301

`A067275(n+1)-A002275(n)`
-/

namespace A093142.P5590248495854299301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 1) - A002275 n

end

end A093142.P5590248495854299301

namespace A093142

/-- `A067275(n+1)-A002275(n)` -/
def P5590248495854299301.Spec : Prop :=
  ∀ n, P5590248495854299301.a n = A093142 n

end A093142

/-! ## A093142.P6379240474626510300

`A105279(n)/2+1`
-/

namespace A093142.P6379240474626510300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105279 n : ℚ) / 2 + 1

end

end A093142.P6379240474626510300

namespace A093142

/-- `A105279(n)/2+1` -/
def P6379240474626510300.Spec : Prop :=
  ∀ n, P6379240474626510300.a n = (A093142 n : ℚ)

end A093142

/-! ## A093142.P7419876535655442234

`A173737(n+1)/2-2`
-/

namespace A093142.P7419876535655442234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173737 (n + 1) : ℚ) / 2 - 2

end

end A093142.P7419876535655442234

namespace A093142

/-- `A173737(n+1)/2-2` -/
def P7419876535655442234.Spec : Prop :=
  ∀ n, P7419876535655442234.a n = (A093142 n : ℚ)

end A093142

/-! ## A093142.P1294340539165084683

`A173734(n+1)/2-3`
-/

namespace A093142.P1294340539165084683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173734 (n + 1) : ℚ) / 2 - 3

end

end A093142.P1294340539165084683

namespace A093142

/-- `A173734(n+1)/2-3` -/
def P1294340539165084683.Spec : Prop :=
  ∀ n, P1294340539165084683.a n = (A093142 n : ℚ)

end A093142

/-! ## A093142.P9955742121514282244

`A099915(n)-A002283(n)`
-/

namespace A093142.P9955742121514282244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099915 n - A002283 n

end

end A093142.P9955742121514282244

namespace A093142

/-- `A099915(n)-A002283(n)` -/
def P9955742121514282244.Spec : Prop :=
  ∀ n, P9955742121514282244.a n = A093142 n

end A093142

/-!
# A093143: Expansion of (1-5*x)/(1-10*x).

The programs for A093143, the canonical program `A093143.P12805157431638662158` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093143 has offset 0).

The definition of A093143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x)/(1-10x))` (program `A093143.P12805157431638662158`, by `A093143.P12805157431638662158.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093143.P12805157431638662158

`ogf((1-5x)/(1-10x))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093143

/-- `ogf((1-5x)/(1-10x))` -/
def P12805157431638662158.Spec : Prop :=
  ∀ n, P12805157431638662158.a n = A093143 n

theorem P12805157431638662158.correct : P12805157431638662158.Spec := by
  intro n
  simp only [A093143]

end A093143

/-! ## A093143.P9789269019727589316

`10*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A093143.P9789269019727589316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  10 * a (n - 1)

end

end A093143.P9789269019727589316

namespace A093143

/-- `10*a(n-1)` -/
def P9789269019727589316.Spec : Prop :=
  ∀ n, (P9789269019727589316.a n : ℤ) = A093143 n

end A093143

/-! ## A093143.P5643760381766982209

`ceil(1/2*10^n)`
-/

namespace A093143.P5643760381766982209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 : ℚ) / 2 * (10 ^ n : ℚ)⌉

end

end A093143.P5643760381766982209

namespace A093143

/-- `ceil(1/2*10^n)` -/
def P5643760381766982209.Spec : Prop :=
  ∀ n, P5643760381766982209.a n = A093143 n

end A093143

/-! ## A093143.P4490813941935034125

`lcm(2, 10^n)/2`
-/

namespace A093143.P4490813941935034125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (10 ^ n) : ℚ) / 2

end

end A093143.P4490813941935034125

namespace A093143

/-- `lcm(2, 10^n)/2` -/
def P4490813941935034125.Spec : Prop :=
  ∀ n, P4490813941935034125.a n = (A093143 n : ℚ)

end A093143

/-! ## A093143.P17286555476135576172

`10^n/gcd(2, 4^n)`
-/

namespace A093143.P17286555476135576172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / (Nat.gcd 2 (4 ^ n) : ℚ)

end

end A093143.P17286555476135576172

namespace A093143

/-- `10^n/gcd(2, 4^n)` -/
def P17286555476135576172.Spec : Prop :=
  ∀ n, P17286555476135576172.a n = (A093143 n : ℚ)

end A093143

/-! ## A093143.P896631760556075808

`lcm(5^n, ceil(2^(n-1)))`
-/

namespace A093143.P896631760556075808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (5 ^ n : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A093143.P896631760556075808

namespace A093143

/-- `lcm(5^n, ceil(2^(n-1)))` -/
def P896631760556075808.Spec : Prop :=
  ∀ n, (P896631760556075808.a n : ℤ) = A093143 n

end A093143

/-! ## A093143.P16735746581506596814

`a(n-1)+a(n-1)/(1/3)²` with `a(0)=1, a(1)=5`
-/

namespace A093143.P16735746581506596814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A093143.P16735746581506596814

namespace A093143

/-- `a(n-1)+a(n-1)/(1/3)²` -/
def P16735746581506596814.Spec : Prop :=
  ∀ n, P16735746581506596814.a n = (A093143 n : ℚ)

end A093143

/-! ## A093143.P319658798242315763

`∑[A346629(n+1)]`
-/

namespace A093143.P319658798242315763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093143.P319658798242315763

namespace A093143

/-- `∑[A346629(n+1)]` -/
def P319658798242315763.Spec : Prop :=
  ∀ n, P319658798242315763.a n = A093143 n

end A093143

/-! ## A093143.P10900996500790070645

`(A103456(n)+1)/2`
-/

namespace A093143.P10900996500790070645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103456 n + 1 : ℚ) / 2

end

end A093143.P10900996500790070645

namespace A093143

/-- `(A103456(n)+1)/2` -/
def P10900996500790070645.Spec : Prop :=
  ∀ n, P10900996500790070645.a n = (A093143 n : ℚ)

end A093143

/-! ## A093143.P12651748412409838288

`floor(A002283(n)/2)+1`
-/

namespace A093143.P12651748412409838288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002283 n : ℚ) / 2⌋ + 1

end

end A093143.P12651748412409838288

namespace A093143

/-- `floor(A002283(n)/2)+1` -/
def P12651748412409838288.Spec : Prop :=
  ∀ n, P12651748412409838288.a n = A093143 n

end A093143

/-! ## A093143.P1155781906957470581

`round(A178501(n+1)/2)`
-/

namespace A093143.P1155781906957470581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178501 (n + 1) : ℚ) / 2)

end

end A093143.P1155781906957470581

namespace A093143

/-- `round(A178501(n+1)/2)` -/
def P1155781906957470581.Spec : Prop :=
  ∀ n, P1155781906957470581.a n = A093143 n

end A093143

/-! ## A093143.P7496781712946739289

`round(A017935(2*n)/2)`
-/

namespace A093143.P7496781712946739289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A017935 (2 * n) : ℚ) / 2)

end

end A093143.P7496781712946739289

namespace A093143

/-- `round(A017935(2*n)/2)` -/
def P7496781712946739289.Spec : Prop :=
  ∀ n, P7496781712946739289.a n = A093143 n

end A093143

/-! ## A093143.P4558241796801546443

`record[round(A054841(n+2)/2)]`
-/

namespace A093143.P4558241796801546443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054841 (n + 2) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093143.P4558241796801546443

namespace A093143

/-- `record[round(A054841(n+2)/2)]` -/
def P4558241796801546443.Spec : Prop :=
  ∀ n, P4558241796801546443.a n = A093143 n

end A093143

/-! ## A093143.P16314092316367614135

`A101654(A004273(n))`
-/

namespace A093143.P16314092316367614135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101654 (A004273 n).toNat

end

end A093143.P16314092316367614135

namespace A093143

/-- `A101654(A004273(n))` -/
def P16314092316367614135.Spec : Prop :=
  ∀ n, P16314092316367614135.a n = A093143 n

end A093143

/-! ## A093143.P6070614700755950294

`A194350(A008574(n))`
-/

namespace A093143.P6070614700755950294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A008574 n).toNat

end

end A093143.P6070614700755950294

namespace A093143

/-- `A194350(A008574(n))` -/
def P6070614700755950294.Spec : Prop :=
  ∀ n, P6070614700755950294.a n = A093143 n

end A093143

/-! ## A093143.P16548297648907226882

`A366610(A122709(n))`
-/

namespace A093143.P16548297648907226882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366610 (A122709 n).toNat

end

end A093143.P16548297648907226882

namespace A093143

/-- `A366610(A122709(n))` -/
def P16548297648907226882.Spec : Prop :=
  ∀ n, P16548297648907226882.a n = A093143 n

end A093143

/-! ## A093143.P2303702862166251671

`A366610(A179805(n+1))`
-/

namespace A093143.P2303702862166251671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366610 (A179805 (n + 1)).toNat

end

end A093143.P2303702862166251671

namespace A093143

/-- `A366610(A179805(n+1))` -/
def P2303702862166251671.Spec : Prop :=
  ∀ n, P2303702862166251671.a n = A093143 n

end A093143

/-! ## A093143.P9226789908192384995

`A051109(A008486(n)-1)`
-/

namespace A093143.P9226789908192384995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (A008486 n - 1).toNat

end

end A093143.P9226789908192384995

namespace A093143

/-- `A051109(A008486(n)-1)` -/
def P9226789908192384995.Spec : Prop :=
  ∀ n, P9226789908192384995.a n = A093143 n

end A093143

/-! ## A093143.P14481140659480854950

`A194350(A019442(n+2))`
-/

namespace A093143.P14481140659480854950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A019442 (n + 2)).toNat

end

end A093143.P14481140659480854950

namespace A093143

/-- `A194350(A019442(n+2))` -/
def P14481140659480854950.Spec : Prop :=
  ∀ n, P14481140659480854950.a n = A093143 n

end A093143

/-! ## A093143.P16476114785969631801

`A000351(n)*A011782(n)`
-/

namespace A093143.P16476114785969631801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A011782 n

end

end A093143.P16476114785969631801

namespace A093143

/-- `A000351(n)*A011782(n)` -/
def P16476114785969631801.Spec : Prop :=
  ∀ n, P16476114785969631801.a n = A093143 n

end A093143

/-!
# A093144: Third binomial transform of Pell(3*n)/Pell(3).

The programs for A093144, the canonical program `A093144.P16828134498463361537` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093144 has offset 0).

The definition of A093144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093144.P16828134498463361537

`((10+5*sqrt(2))^n-(10-5*sqrt(2))^n)/(10*sqrt(2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093144

/-- `((10+5*sqrt(2))^n-(10-5*sqrt(2))^n)/(10*sqrt(2))` -/
def P16828134498463361537.Spec : Prop :=
  ∀ n, P16828134498463361537.a n = (A093144 n : ℝ)

end A093144

/-! ## A093144.P15775451977063973549

`10*(2*a(n-1)-5*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A093144.P15775451977063973549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * (2 * a (n - 1) - 5 * a (n - 2))

end

end A093144.P15775451977063973549

namespace A093144

/-- `10*(2*a(n-1)-5*a(n-2))` -/
def P15775451977063973549.Spec : Prop :=
  ∀ n, P15775451977063973549.a n = A093144 n

end A093144

/-! ## A093144.P15011499210501409

`floor(5^(n-1))*A204089(n)`
-/

namespace A093144.P15011499210501409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A204089 n

end

end A093144.P15011499210501409

namespace A093144

/-- `floor(5^(n-1))*A204089(n)` -/
def P15011499210501409.Spec : Prop :=
  ∀ n, P15011499210501409.a n = A093144 n

end A093144

/-! ## A093144.P13961551586169574748

`abs(A106731(n)/2)*5^(n-1)`
-/

namespace A093144.P13961551586169574748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A106731 n : ℚ) / 2| * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A093144.P13961551586169574748

namespace A093144

/-- `abs(A106731(n)/2)*5^(n-1)` -/
def P13961551586169574748.Spec : Prop :=
  ∀ n, P13961551586169574748.a n = (A093144 n : ℚ)

end A093144

/-!
# A093145: Third binomial transform of Fibonacci(3n)/Fibonacci(3).

The programs for A093145, the canonical program `A093145.P17536245033066901900` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093145 has offset 0).

The definition of A093145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093145.P17536245033066901900

`10*a(n-1)-20*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093145

/-- `10*a(n-1)-20*a(n-2)` -/
def P17536245033066901900.Spec : Prop :=
  ∀ n, P17536245033066901900.a n = A093145 n

theorem P17536245033066901900.correct : P17536245033066901900.Spec := by
  intro n
  simp only [A093145]

end A093145

/-! ## A093145.P6392593272932188044

`((5+sqrt(5))^n-(5-sqrt(5))^n)/(2*sqrt(5))`
-/

namespace A093145.P6392593272932188044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (5 : ℝ)) ^ n - (5 - Real.sqrt (5 : ℝ)) ^ n) / (2 * Real.sqrt (5 : ℝ))

end

end A093145.P6392593272932188044

namespace A093145

/-- `((5+sqrt(5))^n-(5-sqrt(5))^n)/(2*sqrt(5))` -/
def P6392593272932188044.Spec : Prop :=
  ∀ n, P6392593272932188044.a n = (A093145 n : ℝ)

theorem P6392593272932188044.correct : P6392593272932188044.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A093145, Nat.add_sub_cancel, A093145.P6392593272932188044.a, A093145.P17536245033066901900.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A093145, Nat.add_sub_cancel, A093145.P6392593272932188044.a, A093145.P17536245033066901900.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A093145

/-! ## A093145.P15268914064988659216

`ogf(x/(1-10x+20x^2))`
-/

namespace A093145.P15268914064988659216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 20] n

end

end A093145.P15268914064988659216

namespace A093145

/-- `ogf(x/(1-10x+20x^2))` -/
def P15268914064988659216.Spec : Prop :=
  ∀ n, P15268914064988659216.a n = A093145 n

end A093145

/-! ## A093145.P8144287466928955034

`2^(n-1)*A093131(n)`
-/

namespace A093145.P8144287466928955034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A093131 n : ℚ)

end

end A093145.P8144287466928955034

namespace A093145

/-- `2^(n-1)*A093131(n)` -/
def P8144287466928955034.Spec : Prop :=
  ∀ n, P8144287466928955034.a n = (A093145 n : ℚ)

end A093145

/-! ## A093145.P870441602352625371

`A093131(n)*A131577(n)`
-/

namespace A093145.P870441602352625371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n * A131577 n

end

end A093145.P870441602352625371

namespace A093145

/-- `A093131(n)*A131577(n)` -/
def P870441602352625371.Spec : Prop :=
  ∀ n, P870441602352625371.a n = A093145 n

end A093145

/-! ## A093145.P3188917746243513138

`(A112091(n)-1)*A011782(n)`
-/

namespace A093145.P3188917746243513138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112091 n - 1) * A011782 n

end

end A093145.P3188917746243513138

namespace A093145

/-- `(A112091(n)-1)*A011782(n)` -/
def P3188917746243513138.Spec : Prop :=
  ∀ n, P3188917746243513138.a n = A093145 n

end A093145

/-! ## A093145.P15839015836275617540

`A093131(n)/2*A155559(n)`
-/

namespace A093145.P15839015836275617540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093131 n : ℚ) / 2 * (A155559 n : ℚ)

end

end A093145.P15839015836275617540

namespace A093145

/-- `A093131(n)/2*A155559(n)` -/
def P15839015836275617540.Spec : Prop :=
  ∀ n, P15839015836275617540.a n = (A093145 n : ℚ)

end A093145

/-! ## A093145.P11406636962466327497

`A093131(n)/2*A171449(n)`
-/

namespace A093145.P11406636962466327497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093131 n : ℚ) / 2 * (A171449 n : ℚ)

end

end A093145.P11406636962466327497

namespace A093145

/-- `A093131(n)/2*A171449(n)` -/
def P11406636962466327497.Spec : Prop :=
  ∀ n, P11406636962466327497.a n = (A093145 n : ℚ)

end A093145

/-! ## A093145.P16878006464570293359

`A093131(n)/2*A171559(n)`
-/

namespace A093145.P16878006464570293359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093131 n : ℚ) / 2 * (A171559 n : ℚ)

end

end A093145.P16878006464570293359

namespace A093145

/-- `A093131(n)/2*A171559(n)` -/
def P16878006464570293359.Spec : Prop :=
  ∀ n, P16878006464570293359.a n = (A093145 n : ℚ)

end A093145

/-! ## A093145.P13271372583189148179

`A093131(n)*A131572(comp[2*n+3])`
-/

namespace A093145.P13271372583189148179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n * A131572 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A093145.P13271372583189148179

namespace A093145

/-- `A093131(n)*A131572(comp[2*n+3])` -/
def P13271372583189148179.Spec : Prop :=
  ∀ n, P13271372583189148179.a n = A093145 n

end A093145

/-! ## A093145.P4846561547380675878

`A090041(n)-A090139(n)`
-/

namespace A093145.P4846561547380675878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090041 n - A090139 n

end

end A093145.P4846561547380675878

namespace A093145

/-- `A090041(n)-A090139(n)` -/
def P4846561547380675878.Spec : Prop :=
  ∀ n, P4846561547380675878.a n = A093145 n

end A093145

/-! ## A093145.P17507527779800154189

`A090139(n)-A093123(n)`
-/

namespace A093145.P17507527779800154189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090139 n - A093123 n

end

end A093145.P17507527779800154189

namespace A093145

/-- `A090139(n)-A093123(n)` -/
def P17507527779800154189.Spec : Prop :=
  ∀ n, P17507527779800154189.a n = A093145 n

end A093145

/-!
# A093146: Third binomial transform of Pell(3n-1).

The programs for A093146, there is no canonical definition to state claims against.
-/

/-! ## A093146.P551602288214063352

`2*5*(2*a(n-1)-5*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A093146.P551602288214063352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (5 * (2 * a (n - 1) - 5 * a (n - 2)))

end

end A093146.P551602288214063352

/-! ## A093146.P8697837537535397299

`5^n*A006012(A289207(n+1))`
-/

namespace A093146.P8697837537535397299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A006012 (A289207 (n + 1)).toNat

end

end A093146.P8697837537535397299

/-! ## A093146.P10790143402861097817

`(A056236(n)-A007052(n))*5^n`
-/

namespace A093146.P10790143402861097817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056236 n - A007052 n) * (5 ^ n : ℤ)

end

end A093146.P10790143402861097817

/-! ## A093146.P6584501996879122163

`A000351(n)*A006012((2*n)%(n+1))`
-/

namespace A093146.P6584501996879122163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A006012 (2 * n % (n + 1))

end

end A093146.P6584501996879122163

/-! ## A093146.P3259769516018069163

`A000351(n)*A030436(A004275(n))`
-/

namespace A093146.P3259769516018069163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A030436 (A004275 n).toNat

end

end A093146.P3259769516018069163

/-! ## A093146.P12875020852318780530

`A006012(log2(A011782(n)))/A011782(n+1)*10^n`
-/

namespace A093146.P12875020852318780530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006012 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat : ℚ) / (A011782 (n + 1) : ℚ) * (10 ^ n : ℚ)

end

end A093146.P12875020852318780530

/-!
# A093147: Third binomial transform of Pell(3n+1).

The programs for A093147, the canonical program `A093147.P6650719392397365699` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093147 has offset 0).

The definition of A093147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093147.P6650719392397365699

`20*a(n-1)-50*a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093147

/-- `20*a(n-1)-50*a(n-2)` -/
def P6650719392397365699.Spec : Prop :=
  ∀ n, P6650719392397365699.a n = A093147 n

theorem P6650719392397365699.correct : P6650719392397365699.Spec := by
  intro n
  simp only [A093147]

end A093147

/-! ## A093147.P15055789722666378268

`((1+sqrt(2))*(10+5*sqrt(2))^n-(1-sqrt(2))*(10-5*sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A093147.P15055789722666378268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (10 + 5 * Real.sqrt (2 : ℝ)) ^ n - (1 - Real.sqrt (2 : ℝ)) * (10 - 5 * Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A093147.P15055789722666378268

namespace A093147

/-- `((1+sqrt(2))*(10+5*sqrt(2))^n-(1-sqrt(2))*(10-5*sqrt(2))^n)/(2*sqrt(2))` -/
def P15055789722666378268.Spec : Prop :=
  ∀ n, P15055789722666378268.a n = (A093147 n : ℝ)

theorem P15055789722666378268.correct : P15055789722666378268.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A093147, Nat.add_sub_cancel, A093147.P15055789722666378268.a, A093147.P6650719392397365699.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A093147, Nat.add_sub_cancel, A093147.P15055789722666378268.a, A093147.P6650719392397365699.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A093147

/-! ## A093147.P8780401747943629168

`5^n*A007052(n)`
-/

namespace A093147.P8780401747943629168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A007052 n

end

end A093147.P8780401747943629168

namespace A093147

/-- `5^n*A007052(n)` -/
def P8780401747943629168.Spec : Prop :=
  ∀ n, P8780401747943629168.a n = A093147 n

end A093147

/-! ## A093147.P2519334904548183412

`5^n*∑[A003480(n)]`
-/

namespace A093147.P2519334904548183412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093147.P2519334904548183412

namespace A093147

/-- `5^n*∑[A003480(n)]` -/
def P2519334904548183412.Spec : Prop :=
  ∀ n, P2519334904548183412.a n = A093147 n

end A093147

/-! ## A093147.P15334974334771586287

`5^n*A030436(2*n+1)`
-/

namespace A093147.P15334974334771586287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A030436 (2 * n + 1)

end

end A093147.P15334974334771586287

namespace A093147

/-- `5^n*A030436(2*n+1)` -/
def P15334974334771586287.Spec : Prop :=
  ∀ n, P15334974334771586287.a n = A093147 n

end A093147

/-! ## A093147.P14146971213098228768

`A007052(n)*A056487(2*n)`
-/

namespace A093147.P14146971213098228768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n * A056487 (2 * n)

end

end A093147.P14146971213098228768

namespace A093147

/-- `A007052(n)*A056487(2*n)` -/
def P14146971213098228768.Spec : Prop :=
  ∀ n, P14146971213098228768.a n = A093147 n

end A093147

/-! ## A093147.P3712120036012998810

`A030436(2*n+1)*A056487(2*n)`
-/

namespace A093147.P3712120036012998810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n + 1) * A056487 (2 * n)

end

end A093147.P3712120036012998810

namespace A093147

/-- `A030436(2*n+1)*A056487(2*n)` -/
def P3712120036012998810.Spec : Prop :=
  ∀ n, P3712120036012998810.a n = A093147 n

end A093147

/-! ## A093147.P12854545169840448109

`A006012(n+1)/2*A193685(A000217(n))`
-/

namespace A093147.P12854545169840448109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006012 (n + 1) : ℚ) / 2 * (A193685 (A000217 n).toNat : ℚ)

end

end A093147.P12854545169840448109

namespace A093147

/-- `A006012(n+1)/2*A193685(A000217(n))` -/
def P12854545169840448109.Spec : Prop :=
  ∀ n, P12854545169840448109.a n = (A093147 n : ℚ)

end A093147

/-!
# A093148: a(n) = gcd(Fibonacci(n+5), Fibonacci(n+1)).

The programs for A093148, the canonical program `A093148.P13253956686497616578` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093148 has offset 0).

The definition of A093148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093148.P13253956686497616578

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093148

/-- `a(n-4)` -/
def P13253956686497616578.Spec : Prop :=
  ∀ n, (P13253956686497616578.a n : ℤ) = A093148 n

theorem P13253956686497616578.correct : P13253956686497616578.Spec := by
  intro n
  simp only [A093148]

end A093148

/-!
# A093149: a(1) = 4; a(n) = (n^(n+1)+2*n-3)/(n-1) for n > 1.

The programs for A093149, there is no canonical definition to state claims against.
-/

/-! ## A093149.P15904567639307607534

`A031973(n+1)+2`
-/

namespace A093149.P15904567639307607534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031973 (n + 1) + 2

end

end A093149.P15904567639307607534

/-! ## A093149.P16719229546779834498

`A031972(n+1)+3`
-/

namespace A093149.P16719229546779834498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031972 (n + 1) + 3

end

end A093149.P16719229546779834498

/-! ## A093149.P961312900567879094

`(n+1)*A023037(n+1)+3`
-/

namespace A093149.P961312900567879094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023037 (n + 1) + 3

end

end A093149.P961312900567879094

/-! ## A093149.P1398027731396771613

`(n+1)²*A060072(n+1)+n+4`
-/

namespace A093149.P1398027731396771613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A060072 (n + 1) + (n + 4 : ℤ)

end

end A093149.P1398027731396771613

/-! ## A093149.P14701194847275501592

`A055129((n+1)²+(n+1)²+1)+2`
-/

namespace A093149.P14701194847275501592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 ((n + 1) ^ 2 + (n + 1) ^ 2 + 1) + 2

end

end A093149.P14701194847275501592

/-!
# A093150: Absolute value of difference between (sum of digits of n if n odd, otherwise sum of digits of 2n) and (sum of digits of n if n even, otherwise sum of digits of 2n).

The programs for A093150, the canonical program `A093150.P17824992506077108220` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093150 has offset 0).

The definition of A093150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093150.P17824992506077108220

`abs(∑{digits}[2*n, #]-∑{digits}[n, #])`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093150

/-- `abs(∑{digits}[2*n, #]-∑{digits}[n, #])` -/
def P17824992506077108220.Spec : Prop :=
  ∀ n, P17824992506077108220.a n = A093150 n

theorem P17824992506077108220.correct : P17824992506077108220.Spec := by
  intro n
  simp only [A093150]

end A093150

/-! ## A093150.P9296485717938029392

`dr(∑{digits}[2*n, #]-∑{digits}[n, #])`
-/

namespace A093150.P9296485717938029392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A093150.P9296485717938029392

namespace A093150

/-- `dr(∑{digits}[2*n, #]-∑{digits}[n, #])` -/
def P9296485717938029392.Spec : Prop :=
  ∀ n, (P9296485717938029392.a n : ℤ) = A093150 n

end A093150

/-! ## A093150.P5208378371395975863

`∑{digits}[∑{digits}[2*n, #]-∑{digits}[n, #], #]`
-/

namespace A093150.P5208378371395975863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A093150.P5208378371395975863

namespace A093150

/-- `∑{digits}[∑{digits}[2*n, #]-∑{digits}[n, #], #]` -/
def P5208378371395975863.Spec : Prop :=
  ∀ n, (P5208378371395975863.a n : ℤ) = A093150 n

end A093150

/-! ## A093150.P11958218941958075919

`abs(1-(∑{digits}[Δ[n²], #]-∑{digits}[n, #]))`
-/

namespace A093150.P11958218941958075919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))|

end

end A093150.P11958218941958075919

namespace A093150

/-- `abs(1-(∑{digits}[Δ[n²], #]-∑{digits}[n, #]))` -/
def P11958218941958075919.Spec : Prop :=
  ∀ n, P11958218941958075919.a n = A093150 n

end A093150

/-! ## A093150.P14945592922913476917

`abs(∑{digits}[n, #]-A004092(n))`
-/

namespace A093150.P14945592922913476917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A004092 n|

end

end A093150.P14945592922913476917

namespace A093150

/-- `abs(∑{digits}[n, #]-A004092(n))` -/
def P14945592922913476917.Spec : Prop :=
  ∀ n, P14945592922913476917.a n = A093150 n

end A093150

/-! ## A093150.P4932380751120862212

`abs(∑{digits}[2*n, #]-A007953(n))`
-/

namespace A093150.P4932380751120862212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A007953 n|

end

end A093150.P4932380751120862212

namespace A093150

/-- `abs(∑{digits}[2*n, #]-A007953(n))` -/
def P4932380751120862212.Spec : Prop :=
  ∀ n, P4932380751120862212.a n = A093150 n

end A093150

/-! ## A093150.P17812280690974173894

`abs(A004092(n)-A007953(n))`
-/

namespace A093150.P17812280690974173894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004092 n - A007953 n|

end

end A093150.P17812280690974173894

namespace A093150

/-- `abs(A004092(n)-A007953(n))` -/
def P17812280690974173894.Spec : Prop :=
  ∀ n, P17812280690974173894.a n = A093150 n

end A093150

/-! ## A093150.P7245225963492630660

`abs(A004092(n)-log2(A329562(n)))`
-/

namespace A093150.P7245225963492630660
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(A004092 n : ℝ) - Real.logb 2 (A329562 n : ℝ)|

end

end A093150.P7245225963492630660

namespace A093150

/-- `abs(A004092(n)-log2(A329562(n)))` -/
def P7245225963492630660.Spec : Prop :=
  ∀ n, P7245225963492630660.a n = (A093150 n : ℝ)

end A093150

/-! ## A093150.P5695260058527258712

`abs(A007953(2*n)-A007953(n))`
-/

namespace A093150.P5695260058527258712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007953 (2 * n) - A007953 n|

end

end A093150.P5695260058527258712

namespace A093150

/-- `abs(A007953(2*n)-A007953(n))` -/
def P5695260058527258712.Spec : Prop :=
  ∀ n, P5695260058527258712.a n = A093150 n

end A093150

/-! ## A093150.P12982581896272526998

`abs(A180018(2*n)-A180018(n))`
-/

namespace A093150.P12982581896272526998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A180018 (2 * n) - A180018 n|

end

end A093150.P12982581896272526998

namespace A093150

/-- `abs(A180018(2*n)-A180018(n))` -/
def P12982581896272526998.Spec : Prop :=
  ∀ n, P12982581896272526998.a n = A093150 n

end A093150

/-! ## A093150.P16973695842602807275

`dr(A326746(2*n)-A007953(n))`
-/

namespace A093150.P16973695842602807275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326746 (2 * n) - A007953 n)

end

end A093150.P16973695842602807275

namespace A093150

/-- `dr(A326746(2*n)-A007953(n))` -/
def P16973695842602807275.Spec : Prop :=
  ∀ n, (P16973695842602807275.a n : ℤ) = A093150 n

end A093150

/-! ## A093150.P10194630790226451322

`dr(A180018(2*n+1)-A180018(n))`
-/

namespace A093150.P10194630790226451322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A180018 (2 * n + 1) - A180018 n)

end

end A093150.P10194630790226451322

namespace A093150

/-- `dr(A180018(2*n+1)-A180018(n))` -/
def P10194630790226451322.Spec : Prop :=
  ∀ n, (P10194630790226451322.a n : ℤ) = A093150 n

end A093150

/-! ## A093150.P8448433259689342187

`abs(A004092(n)-A004092(A008587(n)))`
-/

namespace A093150.P8448433259689342187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004092 n - A004092 (A008587 n).toNat|

end

end A093150.P8448433259689342187

namespace A093150

/-- `abs(A004092(n)-A004092(A008587(n)))` -/
def P8448433259689342187.Spec : Prop :=
  ∀ n, P8448433259689342187.a n = A093150 n

end A093150

/-! ## A093150.P712853867707824893

`A000194((A004092(n)-A007953(n))²)`
-/

namespace A093150.P712853867707824893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A004092 n - A007953 n) ^ 2).toNat

end

end A093150.P712853867707824893

namespace A093150

/-- `A000194((A004092(n)-A007953(n))²)` -/
def P712853867707824893.Spec : Prop :=
  ∀ n, P712853867707824893.a n = A093150 n

end A093150

/-! ## A093150.P12235550764247771324

`A000196((A004092(n)-A007953(n))²)`
-/

namespace A093150.P12235550764247771324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A004092 n - A007953 n) ^ 2).toNat

end

end A093150.P12235550764247771324

namespace A093150

/-- `A000196((A004092(n)-A007953(n))²)` -/
def P12235550764247771324.Spec : Prop :=
  ∀ n, P12235550764247771324.a n = A093150 n

end A093150

/-! ## A093150.P11333227274680463813

`dr(A004092(A004086(n))-A007953(n))`
-/

namespace A093150.P11333227274680463813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004092 (A004086 n).toNat - A007953 n)

end

end A093150.P11333227274680463813

namespace A093150

/-- `dr(A004092(A004086(n))-A007953(n))` -/
def P11333227274680463813.Spec : Prop :=
  ∀ n, (P11333227274680463813.a n : ℤ) = A093150 n

end A093150

/-! ## A093150.P9573013361289186909

`dr(A004092(n)-A007953(A004185(n)))`
-/

namespace A093150.P9573013361289186909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004092 n - A007953 (A004185 n).toNat)

end

end A093150.P9573013361289186909

namespace A093150

/-- `dr(A004092(n)-A007953(A004185(n)))` -/
def P9573013361289186909.Spec : Prop :=
  ∀ n, (P9573013361289186909.a n : ℤ) = A093150 n

end A093150

/-! ## A093150.P11842716496739843322

`∑{d}[A004092(n)-A007953(n), A000010(#)]`
-/

namespace A093150.P11842716496739843322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n - A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A093150.P11842716496739843322

namespace A093150

/-- `∑{d}[A004092(n)-A007953(n), A000010(#)]` -/
def P11842716496739843322.Spec : Prop :=
  ∀ n, P11842716496739843322.a n = A093150 n

end A093150

/-! ## A093150.P6349325012822631288

`∑{d}[A007953(2*n)-A007953(n), A000010(#)]`
-/

namespace A093150.P6349325012822631288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n) - A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A093150.P6349325012822631288

namespace A093150

/-- `∑{d}[A007953(2*n)-A007953(n), A000010(#)]` -/
def P6349325012822631288.Spec : Prop :=
  ∀ n, P6349325012822631288.a n = A093150 n

end A093150

/-! ## A093150.P4225356201002272651

`lcm(A004092(n)-A007953(n), A008683(n+1)²!)`
-/

namespace A093150.P4225356201002272651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004092 n - A007953 n) (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ)

end

end A093150.P4225356201002272651

namespace A093150

/-- `lcm(A004092(n)-A007953(n), A008683(n+1)²!)` -/
def P4225356201002272651.Spec : Prop :=
  ∀ n, (P4225356201002272651.a n : ℤ) = A093150 n

end A093150

/-!
# A093151: Number of odd composites 1 mod 4 less than 10^n.

The programs for A093151, there is no canonical definition to state claims against.
-/

/-! ## A093151.P8446088596801383128

`A344656(n+1)-A093152(n+1)`
-/

namespace A093151.P8446088596801383128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344656 (n + 1) - A093152 (n + 1)

end

end A093151.P8446088596801383128

/-! ## A093151.P958740365487994628

`A093152(n+1)+A151933(n)+A093153(n+1)`
-/

namespace A093151.P958740365487994628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093152 (n + 1) + (A151933 n + A093153 (n + 1))

end

end A093151.P958740365487994628

/-! ## A093151.P13686646091556942996

`Δ[A002279(n)]-A006880(n+1)-A093152(n+1)`
-/

namespace A093151.P13686646091556942996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006880 (n + 1) - A093152 (n + 1)

end

end A093151.P13686646091556942996

/-! ## A093151.P9352209220788617742

`Δ[A178769(n)]-A006880(n+1)-A093152(n+1)`
-/

namespace A093151.P9352209220788617742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006880 (n + 1) - A093152 (n + 1)

end

end A093151.P9352209220788617742

/-! ## A093151.P17213317692367735054

`Δ[A002279(n)]-A122121(2*(n+1))-A093152(n+1)`
-/

namespace A093151.P17213317692367735054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122121 (2 * (n + 1)) - A093152 (n + 1)

end

end A093151.P17213317692367735054

/-!
# A093152: Number of odd composites below 10^n that are congruent to 3 modulo 4.

The programs for A093152, there is no canonical definition to state claims against.
-/

/-! ## A093152.P17846572232367297637

`A344656(n+1)-A093151(n+1)`
-/

namespace A093152.P17846572232367297637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344656 (n + 1) - A093151 (n + 1)

end

end A093152.P17846572232367297637

/-! ## A093152.P13913988784800131893

`A093151(n+1)-(A151933(n)+A093153(n+1))`
-/

namespace A093152.P13913988784800131893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093151 (n + 1) - (A151933 n + A093153 (n + 1))

end

end A093152.P13913988784800131893

/-! ## A093152.P7104640210446935585

`Δ[A002279(n)]-A006880(n+1)-A093151(n+1)`
-/

namespace A093152.P7104640210446935585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006880 (n + 1) - A093151 (n + 1)

end

end A093152.P7104640210446935585

/-! ## A093152.P4448628614089052978

`Δ[A178769(n)]-A006880(n+1)-A093151(n+1)`
-/

namespace A093152.P4448628614089052978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006880 (n + 1) - A093151 (n + 1)

end

end A093152.P4448628614089052978

/-! ## A093152.P17537454349562282660

`abs(A093151(n+1)-(A198971(n)+1-A006880(n+1)))`
-/

namespace A093152.P17537454349562282660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093151 (n + 1) - (A198971 n + 1 - A006880 (n + 1))|

end

end A093152.P17537454349562282660

/-!
# A093153: Difference between counts of odd composites in A093151 and A093152 [Count (1 mod 4) - count (3 mod 4)].

The programs for A093153, there is no canonical definition to state claims against.
-/

/-! ## A093153.P11679313137857849441

`A091099(n+1)-A091098(n+1)-1`
-/

namespace A093153.P11679313137857849441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - A091098 (n + 1) - 1

end

end A093153.P11679313137857849441

/-! ## A093153.P2384717482372343997

`A091295(n+1)-1`
-/

namespace A093153.P2384717482372343997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091295 (n + 1) - 1

end

end A093153.P2384717482372343997

/-! ## A093153.P2286567463548378639

`A153881(n+2)+A091295(n+1)`
-/

namespace A093153.P2286567463548378639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A091295 (n + 1)

end

end A093153.P2286567463548378639

/-! ## A093153.P4446503551357650028

`A260196(n+2)+A091295(n+1)`
-/

namespace A093153.P4446503551357650028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A091295 (n + 1)

end

end A093153.P4446503551357650028

/-! ## A093153.P7647539082773834150

`abs(A091295(n+1)+A057428(n+1))`
-/

namespace A093153.P7647539082773834150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091295 (n + 1) + A057428 (n + 1)|

end

end A093153.P7647539082773834150

/-!
# A093155: Primes resulting from serial multiplication of even composites, minus 1.

The programs for A093155, there is no canonical definition to state claims against.
-/

/-! ## A093155.P15293170794852317207

`p?[∏[2*(n+2)]-1]`
-/

namespace A093155.P15293170794852317207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093155.P15293170794852317207

/-!
# A093156: Another approximation to A000084(n).

The programs for A093156, there is no canonical definition to state claims against.
-/

/-! ## A093156.P12238436821353320299

`A001573(n+1)+Δ[A003059(n+5)]`
-/

namespace A093156.P12238436821353320299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001573 (n + 1) + (f1 (n + 1) - f1 n)

end

end A093156.P12238436821353320299

/-! ## A093156.P13894438213801402785

`A001573(n+1)+char[A014012(n+1)]`
-/

namespace A093156.P13894438213801402785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001573 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093156.P13894438213801402785

/-! ## A093156.P6789530193045993805

`A001573(n+1)+char[A282856(n+1)]`
-/

namespace A093156.P6789530193045993805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282856 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001573 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093156.P6789530193045993805

/-! ## A093156.P1425661533736674696

`A001573(n+1)+char[∑[A084400(2*(n+2))]]`
-/

namespace A093156.P1425661533736674696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001573 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093156.P1425661533736674696

/-! ## A093156.P8484021747173732520

`A089806(A144303(n))+A001573(n+1)`
-/

namespace A093156.P8484021747173732520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (A144303 n).toNat + A001573 (n + 1)

end

end A093156.P8484021747173732520

/-!
# A093158: Reduced numerators of the raw moments of the distribution of areas for triangles picked at random in a unit square.

The programs for A093158, there is no canonical definition to state claims against.
-/

/-! ## A093158.P4510069746625441879

`A175441(n+2)/gcd(A004282(n+1), A175441(n+2))`
-/

namespace A093158.P4510069746625441879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175441 (n + 2) : ℚ) / (Int.gcd (A004282 (n + 1)) (A175441 (n + 2)) : ℚ)

end

end A093158.P4510069746625441879

/-! ## A093158.P11761298656631589857

`A370116(A368373(n+2))`
-/

namespace A093158.P11761298656631589857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370116 (A368373 (n + 2)).toNat

end

end A093158.P11761298656631589857

/-! ## A093158.P13925759277230890173

`A001008(n+2)^A268643(A002450(n))`
-/

namespace A093158.P13925759277230890173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 2) : ℚ) ^ (A268643 (A002450 n).toNat : ℤ)

end

end A093158.P13925759277230890173

/-! ## A093158.P8369265908948695836

`A001008(n+2)^A171966(A319501(n))`
-/

namespace A093158.P8369265908948695836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 2) : ℚ) ^ (A171966 (A319501 n).toNat : ℤ)

end

end A093158.P8369265908948695836

/-!
# A093160: Expansion of q^(-1/2) * (eta(q^4) / eta(q))^4 in powers of q.

The programs for A093160, there is no canonical definition to state claims against.
-/

/-! ## A093160.P8632509269342314121

`abs(A001938(n))`
-/

namespace A093160.P8632509269342314121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001938 n|

end

end A093160.P8632509269342314121

/-! ## A093160.P2340503045756246109

`A123655(Δ[n²])`
-/

namespace A093160.P2340503045756246109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A093160.P2340503045756246109

/-! ## A093160.P9568369191646852136

`A001938(n)*A033999(n)`
-/

namespace A093160.P9568369191646852136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001938 n * A033999 n

end

end A093160.P9568369191646852136

/-! ## A093160.P6183454827231434854

`gcd(A000038(n), A001938(n))`
-/

namespace A093160.P6183454827231434854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001938 n)

end

end A093160.P6183454827231434854

/-! ## A093160.P3445204508972086477

`lcm(A000034(n), A001938(n))`
-/

namespace A093160.P3445204508972086477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A001938 n)

end

end A093160.P3445204508972086477

/-! ## A093160.P7093907137544613494

`A001935(n)/A083365(n)*A001938(n)`
-/

namespace A093160.P7093907137544613494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) / (A083365 n : ℚ) * (A001938 n : ℚ)

end

end A093160.P7093907137544613494

/-! ## A093160.P18427721543325258274

`A001938(n)/A029841(n)*A112143(n)`
-/

namespace A093160.P18427721543325258274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n : ℚ) / (A029841 n : ℚ) * (A112143 n : ℚ)

end

end A093160.P18427721543325258274

/-! ## A093160.P2325753300728201715

`A001938(n)/A007096(n)*A189925(n)`
-/

namespace A093160.P2325753300728201715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001938 n : ℚ) / (A007096 n : ℚ) * (A189925 n : ℚ)

end

end A093160.P2325753300728201715

/-! ## A093160.P16308244957712649547

`A208933(Δ[n²])/2`
-/

namespace A093160.P16308244957712649547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A093160.P16308244957712649547

/-! ## A093160.P6277776275374347196

`(A208933(2*n+1)+2)/2-1`
-/

namespace A093160.P6277776275374347196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 (2 * n + 1) + 2 : ℚ) / 2 - 1

end

end A093160.P6277776275374347196

/-! ## A093160.P12825423295293208143

`A208933(2*n+1)-A123655(2*n+1)`
-/

namespace A093160.P12825423295293208143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (2 * n + 1) - A123655 (2 * n + 1)

end

end A093160.P12825423295293208143

/-! ## A093160.P11877226059474625010

`A007096(2*n+1)/4`
-/

namespace A093160.P11877226059474625010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (2 * n + 1) : ℚ) / 4

end

end A093160.P11877226059474625010

/-! ## A093160.P1659235935134345507

`A208605(Δ[n²])`
-/

namespace A093160.P1659235935134345507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A093160.P1659235935134345507

/-! ## A093160.P15246849088756115380

`record[A208605(n+1)]`
-/

namespace A093160.P15246849088756115380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093160.P15246849088756115380

/-! ## A093160.P18135733646988296573

`abs(A208605(2*n+1))`
-/

namespace A093160.P18135733646988296573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A208605 (2 * n + 1)|

end

end A093160.P18135733646988296573

/-! ## A093160.P17442468755150820937

`A208933(2*n+1)-A208605(2*n+1)`
-/

namespace A093160.P17442468755150820937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (2 * n + 1) - A208605 (2 * n + 1)

end

end A093160.P17442468755150820937

/-!
# A093161: Even integers k such that there exists a prime p with p = min{q: q prime and (k - q) prime} and (k - p) < p^3.

The programs for A093161, there is no canonical definition to state claims against.
-/

/-! ## A093161.P4962863714731147635

`A307782(n+1)%A115744(n+1)`
-/

namespace A093161.P4962863714731147635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307782 (n + 1)) (A115744 (n + 1))

end

end A093161.P4962863714731147635

/-! ## A093161.P14110446027058034936

`A307782(n+1)+A000007(A278226(n))`
-/

namespace A093161.P14110446027058034936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307782 (n + 1) + A000007 (A278226 n).toNat

end

end A093161.P14110446027058034936

/-! ## A093161.P6063871863809862631

`A307782(n+1)+A185284(A309555(n))`
-/

namespace A093161.P6063871863809862631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307782 (n + 1) + A185284 (A309555 n).toNat

end

end A093161.P6063871863809862631

/-! ## A093161.P10570873467636217469

`A307782(n+1)*A320889(A151800(n))`
-/

namespace A093161.P10570873467636217469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307782 (n + 1) * A320889 (A151800 n).toNat

end

end A093161.P10570873467636217469

/-! ## A093161.P6947675637261023679

`A307782(n+1)%A322689(A245013(n))`
-/

namespace A093161.P6947675637261023679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307782 (n + 1)) (A322689 (A245013 n).toNat)

end

end A093161.P6947675637261023679

/-! ## A093161.P17460925865132573583

`A001222(A118849(n+1))*A307782(n+1)`
-/

namespace A093161.P17460925865132573583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118849 (n + 1)).toNat * A307782 (n + 1)

end

end A093161.P17460925865132573583

/-! ## A093161.P4563881757485614771

`A001222(A118850(n+1))*A307782(n+1)`
-/

namespace A093161.P4563881757485614771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118850 (n + 1)).toNat * A307782 (n + 1)

end

end A093161.P4563881757485614771

/-! ## A093161.P16401704710428390055

`A001222(A297935(∑{d}[n+1, #]))*A307782(n+1)`
-/

namespace A093161.P16401704710428390055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A297935 (∑ d ∈ Nat.divisors (f1 n), d)).toNat * A307782 (n + 1)

end

end A093161.P16401704710428390055

/-! ## A093161.P11422736948936366080

`A307782(n+1)%A002189(n)`
-/

namespace A093161.P11422736948936366080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307782 (n + 1)) (A002189 n)

end

end A093161.P11422736948936366080

/-! ## A093161.P7695178887082348312

`lcm(A020639(A355303(n+1)), A307782(n+1))`
-/

namespace A093161.P7695178887082348312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A355303 (n + 1)).toNat) (A307782 (n + 1))

end

end A093161.P7695178887082348312

/-!
# A093162: Primes of the form 20*R_k + 3, where R_k is the repunit (A002275) of length k.

The programs for A093162, there is no canonical definition to state claims against.
-/

/-! ## A093162.P6422380402730313365

`(2*10^A096506(n+1)+7)/9`
-/

namespace A093162.P6422380402730313365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (10 : ℚ) ^ (A096506 (n + 1) : ℤ) + 7) / 9

end

end A093162.P6422380402730313365

/-! ## A093162.P11997594147404152025

`A002276(A096506(n+1))+1`
-/

namespace A093162.P11997594147404152025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (A096506 (n + 1)).toNat + 1

end

end A093162.P11997594147404152025

/-! ## A093162.P8691899325892367783

`∩[A090146(n+1), A237341(n)]`
-/

namespace A093162.P8691899325892367783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237341 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093162.P8691899325892367783

/-!
# A093163: Primes of the form 40*R_k + 3, where R_k is the repunit (A002275) of length k.

The programs for A093163, there is no canonical definition to state claims against.
-/

/-! ## A093163.P17393782900278747943

`A173770(A056661(n+1)+1)`
-/

namespace A093163.P17393782900278747943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173770 (A056661 (n + 1) + 1).toNat

end

end A093163.P17393782900278747943

/-! ## A093163.P18019655686843729541

`A002278(A096845(n+1))-1`
-/

namespace A093163.P18019655686843729541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 (A096845 (n + 1)).toNat - 1

end

end A093163.P18019655686843729541

/-!
# A093165: Primes of the form 70*R_k + 3, where R_k is the repunit (A002275) of length k.

The programs for A093165, there is no canonical definition to state claims against.
-/

/-! ## A093165.P3638051932301460060

`A173807(A099420(n+1))`
-/

namespace A093165.P3638051932301460060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173807 (A099420 (n + 1)).toNat

end

end A093165.P3638051932301460060

/-! ## A093165.P14942157766282535715

`A173807(A056689(n+1)+1)`
-/

namespace A093165.P14942157766282535715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173807 (A056689 (n + 1) + 1).toNat

end

end A093165.P14942157766282535715

/-! ## A093165.P11167934652892875276

`A173806(A056689(n+1)+1)+2`
-/

namespace A093165.P11167934652892875276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173806 (A056689 (n + 1) + 1).toNat + 2

end

end A093165.P11167934652892875276

/-! ## A093165.P12108231745455315803

`A002281(A056689(n+1)+1)-4`
-/

namespace A093165.P12108231745455315803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 (A056689 (n + 1) + 1).toNat - 4

end

end A093165.P12108231745455315803

/-!
# A093166: Primes of the form 80*R_k + 3, where R_k is the repunit (A002275) of length k.

The programs for A093166, there is no canonical definition to state claims against.
-/

/-! ## A093166.P18427544352303325884

`A173811(A099422(n+1))`
-/

namespace A093166.P18427544352303325884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173811 (A099422 (n + 1)).toNat

end

end A093166.P18427544352303325884

/-! ## A093166.P1269396750666378449

`A173811(A056694(n+1)+1)`
-/

namespace A093166.P1269396750666378449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173811 (A056694 (n + 1) + 1).toNat

end

end A093166.P1269396750666378449

/-! ## A093166.P14248480314658857630

`A173811(eq[1, A105973(n)]+1)`
-/

namespace A093166.P14248480314658857630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A093166.P14248480314658857630

/-! ## A093166.P1333029126884630184

`∩[A090146(n+1), A237346(n)]`
-/

namespace A093166.P1333029126884630184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093166.P1333029126884630184

/-! ## A093166.P7690918102586413677

`A173810(A056694(n+1)+1)+2`
-/

namespace A093166.P7690918102586413677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173810 (A056694 (n + 1) + 1).toNat + 2

end

end A093166.P7690918102586413677

/-!
# A093169: Primes of the form 50*R_k + 7, where R_k is the repunit (A002275) of length k.

The programs for A093169, there is no canonical definition to state claims against.
-/

/-! ## A093169.P18142408629312130249

`∩[A090147(n+1), A237344(n)]`
-/

namespace A093169.P18142408629312130249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237344 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093169.P18142408629312130249

/-! ## A093169.P5194280957713281110

`∩[A020467(n+1), A090147(n+1)]`
-/

namespace A093169.P5194280957713281110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093169.P5194280957713281110

/-!
# A093170: Primes of the form 60*R_k + 7, where R_k is the repunit (A002275) of length k.

The programs for A093170, there is no canonical definition to state claims against.
-/

/-! ## A093170.P14709766794149859979

`(2*10^A096507(n+1)+1)/3`
-/

namespace A093170.P14709766794149859979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (10 : ℚ) ^ (A096507 (n + 1) : ℤ) + 1) / 3

end

end A093170.P14709766794149859979

/-! ## A093170.P3818006532705521481

`(20*10^A056657(n+1)+1)/3`
-/

namespace A093170.P3818006532705521481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 * (10 : ℚ) ^ (A056657 (n + 1) : ℤ) + 1) / 3

end

end A093170.P3818006532705521481

/-! ## A093170.P10549929395592279399

`A002280(A096507(n+1))+1`
-/

namespace A093170.P10549929395592279399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 (A096507 (n + 1)).toNat + 1

end

end A093170.P10549929395592279399

/-!
# A093171: Primes of the form 80*R_k + 7, where R_k is the repunit (A002275) of length k.

The programs for A093171, there is no canonical definition to state claims against.
-/

/-! ## A093171.P6294789439848959702

`A173812(A096846(n+1))`
-/

namespace A093171.P6294789439848959702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173812 (A096846 (n + 1)).toNat

end

end A093171.P6294789439848959702

/-! ## A093171.P12416779033178545516

`∩[A090147(n+1), A237346(n)]`
-/

namespace A093171.P12416779033178545516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093171.P12416779033178545516

/-!
# A093173: Primes of the form (2^n * n!) - 1.

The programs for A093173, there is no canonical definition to state claims against.
-/

/-! ## A093173.P12503495383883056181

`A117141(n+2)`
-/

namespace A093173.P12503495383883056181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117141 (n + 2)

end

end A093173.P12503495383883056181

/-! ## A093173.P9828302501616590525

`A128882(A007749(n+2))`
-/

namespace A093173.P9828302501616590525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (A007749 (n + 2)).toNat

end

end A093173.P9828302501616590525

/-! ## A093173.P10190936555199656150

`A274385(n+3)`
-/

namespace A093173.P10190936555199656150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274385 (n + 3)

end

end A093173.P10190936555199656150

/-!
# A093175: Tetranacci numbers starting with first four squares.

The programs for A093175, the canonical program `A093175.P2719934479082856003` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093175 has offset 1).

The definition of A093175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093175.P2719934479082856003

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093175

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P2719934479082856003.Spec : Prop :=
  ∀ n, (P2719934479082856003.a n : ℤ) = A093175 (n + 1)

theorem P2719934479082856003.correct : P2719934479082856003.Spec := by
  intro n
  simp only [A093175, Nat.add_sub_cancel]

end A093175

/-! ## A093175.P11048428139523185593

`2*A000078(n+4)+2*A000078(n+1)-A001631(n+2)`
-/

namespace A093175.P11048428139523185593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000078 (n + 4) + 2 * A000078 (n + 1) - A001631 (n + 2)

end

end A093175.P11048428139523185593

namespace A093175

/-- `2*A000078(n+4)+2*A000078(n+1)-A001631(n+2)` -/
def P11048428139523185593.Spec : Prop :=
  ∀ n, P11048428139523185593.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P16825128595788233644

`ogf((1+3x+4x^2+2x^3)/(1-x-x^2-x^3-x^4))`
-/

namespace A093175.P16825128595788233644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 2] [1, -1, -1, -1, -1] n

end

end A093175.P16825128595788233644

namespace A093175

/-- `ogf((1+3x+4x^2+2x^3)/(1-x-x^2-x^3-x^4))` -/
def P16825128595788233644.Spec : Prop :=
  ∀ n, P16825128595788233644.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P3216091677029726039

`∑[A100532(n+1)]-A000288(n)`
-/

namespace A093175.P3216091677029726039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000288 n

end

end A093175.P3216091677029726039

namespace A093175

/-- `∑[A100532(n+1)]-A000288(n)` -/
def P3216091677029726039.Spec : Prop :=
  ∀ n, P3216091677029726039.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P1321733133411054162

`A251703(n+2)+A000288(n+3)`
-/

namespace A093175.P1321733133411054162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 (n + 2) + A000288 (n + 3)

end

end A093175.P1321733133411054162

namespace A093175

/-- `A251703(n+2)+A000288(n+3)` -/
def P1321733133411054162.Spec : Prop :=
  ∀ n, P1321733133411054162.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P13704440176451198652

`A251705(n+3)+A000288(n+2)`
-/

namespace A093175.P13704440176451198652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (n + 3) + A000288 (n + 2)

end

end A093175.P13704440176451198652

namespace A093175

/-- `A251705(n+3)+A000288(n+2)` -/
def P13704440176451198652.Spec : Prop :=
  ∀ n, P13704440176451198652.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P10807339205200952727

`A251704(n+2)+A251655(n+3)`
-/

namespace A093175.P10807339205200952727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 2) + A251655 (n + 3)

end

end A093175.P10807339205200952727

namespace A093175

/-- `A251704(n+2)+A251655(n+3)` -/
def P10807339205200952727.Spec : Prop :=
  ∀ n, P10807339205200952727.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P6567707329885657307

`A001648(n+1)+A251655(n)+A001631(n)`
-/

namespace A093175.P6567707329885657307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 1) + (A251655 n + A001631 n)

end

end A093175.P6567707329885657307

namespace A093175

/-- `A001648(n+1)+A251655(n)+A001631(n)` -/
def P6567707329885657307.Spec : Prop :=
  ∀ n, P6567707329885657307.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P8981274497401474261

`A073817(n+1)+A251655(n)+A001631(n)`
-/

namespace A093175.P8981274497401474261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (n + 1) + (A251655 n + A001631 n)

end

end A093175.P8981274497401474261

namespace A093175

/-- `A073817(n+1)+A251655(n)+A001631(n)` -/
def P8981274497401474261.Spec : Prop :=
  ∀ n, P8981274497401474261.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P7011067916978015985

`A000078(n+1)+A251654(n)+A001648(n+1)`
-/

namespace A093175.P7011067916978015985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + (A251654 n + A001648 (n + 1))

end

end A093175.P7011067916978015985

namespace A093175

/-- `A000078(n+1)+A251654(n)+A001648(n+1)` -/
def P7011067916978015985.Spec : Prop :=
  ∀ n, P7011067916978015985.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P13754591873823515835

`A000078(n+1)+A251654(n)+A073817(n+1)`
-/

namespace A093175.P13754591873823515835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + (A251654 n + A073817 (n + 1))

end

end A093175.P13754591873823515835

namespace A093175

/-- `A000078(n+1)+A251654(n)+A073817(n+1)` -/
def P13754591873823515835.Spec : Prop :=
  ∀ n, P13754591873823515835.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P1164116826019793115

`Δ[A014610(n)-∑[A251654(n)]]`
-/

namespace A093175.P1164116826019793115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014610 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093175.P1164116826019793115

namespace A093175

/-- `Δ[A014610(n)-∑[A251654(n)]]` -/
def P1164116826019793115.Spec : Prop :=
  ∀ n, P1164116826019793115.a n = A093175 (n + 1)

end A093175

/-! ## A093175.P5069346648983208584

`Δ[A014610(n)]-A251654(n+1)`
-/

namespace A093175.P5069346648983208584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A251654 (n + 1)

end

end A093175.P5069346648983208584

namespace A093175

/-- `Δ[A014610(n)]-A251654(n+1)` -/
def P5069346648983208584.Spec : Prop :=
  ∀ n, P5069346648983208584.a n = A093175 (n + 1)

end A093175

/-!
# A093178: If n is even then 1, otherwise n.

The programs for A093178, the canonical program `A093178.P12085837158869515185` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093178 has offset 0).

The definition of A093178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093178.P12085837158869515185

`C(n, 2*floor(n/2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093178

/-- `C(n, 2*floor(n/2))` -/
def P12085837158869515185.Spec : Prop :=
  ∀ n, (P12085837158869515185.a n : ℤ) = A093178 n

theorem P12085837158869515185.correct : P12085837158869515185.Spec := by
  intro n
  simp only [A093178]

end A093178

/-! ## A093178.P2786473890381439331

`(n+1+(1-n)*(-1)^n)/2`
-/

namespace A093178.P2786473890381439331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + (1 - (n : ℤ)) * (-1) ^ n : ℚ) / 2

end

end A093178.P2786473890381439331

namespace A093178

/-- `(n+1+(1-n)*(-1)^n)/2` -/
def P2786473890381439331.Spec : Prop :=
  ∀ n, P2786473890381439331.a n = (A093178 n : ℚ)

end A093178

/-! ## A093178.P18089517535134529059

`n^(n%2)`
-/

namespace A093178.P18089517535134529059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

end

end A093178.P18089517535134529059

namespace A093178

/-- `n^(n%2)` -/
def P18089517535134529059.Spec : Prop :=
  ∀ n, (P18089517535134529059.a n : ℤ) = A093178 n

end A093178

/-! ## A093178.P12334329730382602852

`n^and(1, n)`
-/

namespace A093178.P12334329730382602852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n

end

end A093178.P12334329730382602852

namespace A093178

/-- `n^and(1, n)` -/
def P12334329730382602852.Spec : Prop :=
  ∀ n, (P12334329730382602852.a n : ℤ) = A093178 n

end A093178

/-! ## A093178.P16801955783737585118

`gcd(n, or(1, n))`
-/

namespace A093178.P16801955783737585118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 1 n)

end

end A093178.P16801955783737585118

namespace A093178

/-- `gcd(n, or(1, n))` -/
def P16801955783737585118.Spec : Prop :=
  ∀ n, (P16801955783737585118.a n : ℤ) = A093178 n

end A093178

/-! ## A093178.P6737976728802763053

`or(1, lcm(2, n)-n)`
-/

namespace A093178.P6737976728802763053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.lcm 2 n : ℤ) - (n : ℤ))

end

end A093178.P6737976728802763053

namespace A093178

/-- `or(1, lcm(2, n)-n)` -/
def P6737976728802763053.Spec : Prop :=
  ∀ n, P6737976728802763053.a n = A093178 n

end A093178

/-! ## A093178.P9339074082337184740

`or(1, n*and(1, n))`
-/

namespace A093178.P9339074082337184740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.land 1 n)

end

end A093178.P9339074082337184740

namespace A093178

/-- `or(1, n*and(1, n))` -/
def P9339074082337184740.Spec : Prop :=
  ∀ n, (P9339074082337184740.a n : ℤ) = A093178 n

end A093178

/-! ## A093178.P9323979344499731697

`n^C(n, or(1, n))`
-/

namespace A093178.P9323979344499731697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose n (Nat.lor 1 n)

end

end A093178.P9323979344499731697

namespace A093178

/-- `n^C(n, or(1, n))` -/
def P9323979344499731697.Spec : Prop :=
  ∀ n, (P9323979344499731697.a n : ℤ) = A093178 n

end A093178

/-! ## A093178.P16598643459611995807

`xor(n, C(xor(1, n), n))`
-/

namespace A093178.P16598643459611995807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.choose (Nat.xor 1 n) n)

end

end A093178.P16598643459611995807

namespace A093178

/-- `xor(n, C(xor(1, n), n))` -/
def P16598643459611995807.Spec : Prop :=
  ∀ n, (P16598643459611995807.a n : ℤ) = A093178 n

end A093178

/-! ## A093178.P461345399142228235

`or(1, n*char[or(1, n)])`
-/

namespace A093178.P461345399142228235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A093178.P461345399142228235

namespace A093178

/-- `or(1, n*char[or(1, n)])` -/
def P461345399142228235.Spec : Prop :=
  ∀ n, (P461345399142228235.a n : ℤ) = A093178 n

end A093178

/-! ## A093178.P18003938575229619501

`abs(or(n, n-or(1, n)))`
-/

namespace A093178.P18003938575229619501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) ((n : ℤ) - (Nat.lor 1 n : ℤ))|

end

end A093178.P18003938575229619501

namespace A093178

/-- `abs(or(n, n-or(1, n)))` -/
def P18003938575229619501.Spec : Prop :=
  ∀ n, P18003938575229619501.a n = A093178 n

end A093178

/-! ## A093178.P3217893505042500160

`(n-1)*and(1, n)+1`
-/

namespace A093178.P3217893505042500160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ) + 1

end

end A093178.P3217893505042500160

namespace A093178

/-- `(n-1)*and(1, n)+1` -/
def P3217893505042500160.Spec : Prop :=
  ∀ n, P3217893505042500160.a n = A093178 n

end A093178

/-! ## A093178.P17844410679675228965

`1-(1-n)*and(1, n)`
-/

namespace A093178.P17844410679675228965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (1 - (n : ℤ)) * (Nat.land 1 n : ℤ)

end

end A093178.P17844410679675228965

namespace A093178

/-- `1-(1-n)*and(1, n)` -/
def P17844410679675228965.Spec : Prop :=
  ∀ n, P17844410679675228965.a n = A093178 n

end A093178

/-! ## A093178.P5245414454863896597

`xor(1, n)%(n+1)+1`
-/

namespace A093178.P5245414454863896597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n % (n + 1) + 1

end

end A093178.P5245414454863896597

namespace A093178

/-- `xor(1, n)%(n+1)+1` -/
def P5245414454863896597.Spec : Prop :=
  ∀ n, (P5245414454863896597.a n : ℤ) = A093178 n

end A093178

/-! ## A093178.P5594854257380999684

`or(1, n-a(n-1))` with `a(0)=1`
-/

namespace A093178.P5594854257380999684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ((n : ℤ) - a (n - 1))

end

end A093178.P5594854257380999684

namespace A093178

/-- `or(1, n-a(n-1))` -/
def P5594854257380999684.Spec : Prop :=
  ∀ n, P5594854257380999684.a n = A093178 n

end A093178

/-! ## A093178.P9026704256416291224

`n^(n+1-or(1, n))`
-/

namespace A093178.P9026704256416291224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n + 1 : ℤ) - (Nat.lor 1 n : ℤ) : ℤ)

end

end A093178.P9026704256416291224

namespace A093178

/-- `n^(n+1-or(1, n))` -/
def P9026704256416291224.Spec : Prop :=
  ∀ n, P9026704256416291224.a n = (A093178 n : ℚ)

end A093178

/-! ## A093178.P13973435529991287095

`floor(n/a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A093178.P13973435529991287095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A093178.P13973435529991287095

namespace A093178

/-- `floor(n/a(n-1))` -/
def P13973435529991287095.Spec : Prop :=
  ∀ n, P13973435529991287095.a n = A093178 n

end A093178

/-! ## A093178.P6946993984370466094

`round(n/a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A093178.P6946993984370466094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / (a (n - 1) : ℚ))

end

end A093178.P6946993984370466094

namespace A093178

/-- `round(n/a(n-1))` -/
def P6946993984370466094.Spec : Prop :=
  ∀ n, P6946993984370466094.a n = A093178 n

end A093178

/-! ## A093178.P16551686304362485688

`(n-1)*n²%2+1`
-/

namespace A093178.P16551686304362485688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n ^ 2 % 2 : ℕ) : ℤ) + 1

end

end A093178.P16551686304362485688

namespace A093178

/-- `(n-1)*n²%2+1` -/
def P16551686304362485688.Spec : Prop :=
  ∀ n, P16551686304362485688.a n = A093178 n

end A093178

/-! ## A093178.P16592899893854411921

`n²-(n-1)*or(1, n)`
-/

namespace A093178.P16592899893854411921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n : ℤ) - 1) * (Nat.lor 1 n : ℤ)

end

end A093178.P16592899893854411921

namespace A093178

/-- `n²-(n-1)*or(1, n)` -/
def P16592899893854411921.Spec : Prop :=
  ∀ n, P16592899893854411921.a n = A093178 n

end A093178

/-!
# A093179: Smallest prime factor of the n-th Fermat number F(n) = 2^(2^n) + 1.

The programs for A093179, there is no canonical definition to state claims against.
-/

/-! ## A093179.P5952354347939339491

`A002586(2^n)`
-/

namespace A093179.P5952354347939339491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (2 ^ n)

end

end A093179.P5952354347939339491

/-! ## A093179.P1482260878825679547

`A112092(2^n)`
-/

namespace A093179.P1482260878825679547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112092 (2 ^ n)

end

end A093179.P1482260878825679547

/-! ## A093179.P10836561458375918399

`A050922(lt[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], 5])`
-/

namespace A093179.P10836561458375918399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050922 (SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n)

end

end A093179.P10836561458375918399

/-! ## A093179.P11929037746643568510

`A070592(n)-2*A257917(n)`
-/

namespace A093179.P11929037746643568510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070592 n - 2 * A257917 n

end

end A093179.P11929037746643568510

/-! ## A093179.P2934752463238648094

`A340988(3*n+2)+A112092(A000079(n))`
-/

namespace A093179.P2934752463238648094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 (3 * n + 2 + 91) + A112092 (A000079 n).toNat

end

end A093179.P2934752463238648094

/-!
# A093180: Odd composites (including 1 in the count) where the number 1 mod 4 equals the number 3 mod 4.

The programs for A093180, there is no canonical definition to state claims against.
-/

/-! ## A093180.P4436456783882380449

`A091113(A093182(n+1))`
-/

namespace A093180.P4436456783882380449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (A093182 (n + 1)).toNat

end

end A093180.P4436456783882380449

/-!
# A093181: Odd composites (including 1 in the count) where the number 3 mod 4 equals the number 1 mod 4.

The programs for A093181, there is no canonical definition to state claims against.
-/

/-! ## A093181.P9247569211976435184

`A091236(A093182(n+1))`
-/

namespace A093181.P9247569211976435184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (A093182 (n + 1)).toNat

end

end A093181.P9247569211976435184

/-!
# A093185: Number of consecutive runs of 2 odd nonprimes congruent to 1 mod 4 below 10^n.

The programs for A093185, there is no canonical definition to state claims against.
-/

/-! ## A093185.P16872694565468615384

`A310699(round(9^(n-1)))`
-/

namespace A093185.P16872694565468615384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310699 (SequenceMachineLib.roundAway ((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A093185.P16872694565468615384

/-!
# A093186: Number of consecutive runs of 2 odd nonprimes congruent to 3 mod 4 below 10^n.

The programs for A093186, there is no canonical definition to state claims against.
-/

/-! ## A093186.P12524878224224039517

`∑[A111557(n)-A287149(n)]`
-/

namespace A093186.P12524878224224039517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111557 n - A287149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093186.P12524878224224039517

/-!
# A093187: Number of consecutive runs of 3 odd nonprimes congruent to 1 mod 4 below 10^n.

The programs for A093187, there is no canonical definition to state claims against.
-/

/-! ## A093187.P1922059786075528844

`A093399(n+1)+A093188(n+1)`
-/

namespace A093187.P1922059786075528844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093399 (n + 1) + A093188 (n + 1)

end

end A093187.P1922059786075528844

/-! ## A093187.P12088778066165293171

`A093188(n+1)+A145018(A088874(3*n+1)+1)%A271166(n)`
-/

namespace A093187.P12088778066165293171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093188 (n + 1) + Int.tmod (A145018 (A088874 (3 * n + 1) + 1).toNat) (A271166 n)

end

end A093187.P12088778066165293171

/-!
# A093188: Number of consecutive runs of 3 odd nonprimes congruent to 3 mod 4 below 10^n.

The programs for A093188, there is no canonical definition to state claims against.
-/

/-! ## A093188.P1493434427945757932

`A093187(n+1)-A093399(n+1)`
-/

namespace A093188.P1493434427945757932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093187 (n + 1) - A093399 (n + 1)

end

end A093188.P1493434427945757932

/-! ## A093188.P8698887573799388431

`A093187(n+1)-A231154(A101301(n+2)+1)`
-/

namespace A093188.P8698887573799388431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093187 (n + 1) - A231154 (A101301 (n + 2) + 1).toNat

end

end A093188.P8698887573799388431

/-!
# A093190: Array t read by antidiagonals: number of {112,212}-avoiding words.

The programs for A093190, there is no canonical definition to state claims against.
-/

/-! ## A093190.P16446657328869865929

`A002260(n+1)*A088699(n)`
-/

namespace A093190.P16446657328869865929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A088699 n

end

end A093190.P16446657328869865929

/-! ## A093190.P17099731194654470293

`(A002262(n)+1)*A088699(n)`
-/

namespace A093190.P17099731194654470293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A088699 n

end

end A093190.P17099731194654470293

/-! ## A093190.P2586465352118639627

`sqrt(A133819(n+1))*A088699(n)`
-/

namespace A093190.P2586465352118639627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A088699 n : ℝ)

end

end A093190.P2586465352118639627

/-! ## A093190.P11717045445690056696

`A004736(A038722(n+1))*A088699(n)`
-/

namespace A093190.P11717045445690056696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A088699 n

end

end A093190.P11717045445690056696

/-! ## A093190.P7810826562344868544

`A008619(A158405(n+1))*A088699(n)`
-/

namespace A093190.P7810826562344868544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A158405 (n + 1)).toNat * A088699 n

end

end A093190.P7810826562344868544

/-! ## A093190.P17456404252222179683

`A065033(A211197(n+1))*A088699(n)`
-/

namespace A093190.P17456404252222179683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A211197 (n + 1)).toNat * A088699 n

end

end A093190.P17456404252222179683

/-! ## A093190.P8020890143783902978

`A002262(lt[1, A088699(n)])*A088699(n)`
-/

namespace A093190.P8020890143783902978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A088699 n

end

end A093190.P8020890143783902978

/-! ## A093190.P16019632946155220385

`A000005(A059268(n))*A088699(n)`
-/

namespace A093190.P16019632946155220385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A088699 n

end

end A093190.P16019632946155220385

/-! ## A093190.P11492578392725812838

`A000120(A099627(n))*A088699(n)`
-/

namespace A093190.P11492578392725812838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A099627 n).toNat * A088699 n

end

end A093190.P11492578392725812838

/-!
# A093191: Primes congruent to 4 mod 13.

The programs for A093191, the canonical program `A093191.P2249662244197298181` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093191 has offset 1).

The definition of A093191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093191.P2249662244197298181

`∪[A142161(n+1), A142169(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093191

/-- `∪[A142161(n+1), A142169(n+1)]` -/
def P2249662244197298181.Spec : Prop :=
  ∀ n, (P2249662244197298181.a n : ℤ) = A093191 (n + 1)

theorem P2249662244197298181.correct : P2249662244197298181.Spec := by
  intro n
  simp only [A093191, Nat.add_sub_cancel]

end A093191

/-! ## A093191.P12997683477539445521

`∪[A142515(n+1), A142527(n+1)]`
-/

namespace A093191.P12997683477539445521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P12997683477539445521

namespace A093191

/-- `∪[A142515(n+1), A142527(n+1)]` -/
def P12997683477539445521.Spec : Prop :=
  ∀ n, (P12997683477539445521.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P12083594292322441879

`p?[13*n+4]`
-/

namespace A093191.P12083594292322441879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A093191.P12083594292322441879

namespace A093191

/-- `p?[13*n+4]` -/
def P12083594292322441879.Spec : Prop :=
  ∀ n, (P12083594292322441879.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P3394707255269672575

`or(1, p?[a(n-1)+13])` with `a(0)=4`
-/

namespace A093191.P3394707255269672575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A093191.P3394707255269672575

namespace A093191

/-- `or(1, p?[a(n-1)+13])` -/
def P3394707255269672575.Spec : Prop :=
  ∀ n, (P3394707255269672575.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P4769422178568438888

`∏{d}[p?[a(n-1)+13], #]` with `a(0)=4`
-/

namespace A093191.P4769422178568438888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A093191.P4769422178568438888

namespace A093191

/-- `∏{d}[p?[a(n-1)+13], #]` -/
def P4769422178568438888.Spec : Prop :=
  ∀ n, (P4769422178568438888.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P5576119720505137901

`∑{p}[p?[a(n-1)+13], #]` with `a(0)=4`
-/

namespace A093191.P5576119720505137901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A093191.P5576119720505137901

namespace A093191

/-- `∑{p}[p?[a(n-1)+13], #]` -/
def P5576119720505137901.Spec : Prop :=
  ∀ n, (P5576119720505137901.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P8917954838998854769

`∏{p}[p?[a(n-1)+13], #]` with `a(0)=4`
-/

namespace A093191.P8917954838998854769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A093191.P8917954838998854769

namespace A093191

/-- `∏{p}[p?[a(n-1)+13], #]` -/
def P8917954838998854769.Spec : Prop :=
  ∀ n, (P8917954838998854769.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P4551635983980660405

`∑{d}[p?[9*(3*n-1)-n], #]-1`
-/

namespace A093191.P4551635983980660405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((3 * n : ℤ) - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A093191.P4551635983980660405

namespace A093191

/-- `∑{d}[p?[9*(3*n-1)-n], #]-1` -/
def P4551635983980660405.Spec : Prop :=
  ∀ n, P4551635983980660405.a n = A093191 (n + 1)

end A093191

/-! ## A093191.P5520283931285807043

`∩[A215164(n+1), A215280(n+1)]`
-/

namespace A093191.P5520283931285807043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P5520283931285807043

namespace A093191

/-- `∩[A215164(n+1), A215280(n+1)]` -/
def P5520283931285807043.Spec : Prop :=
  ∀ n, (P5520283931285807043.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P629554083375963045

`∩[A215164(n+1), A215359(n+1)]`
-/

namespace A093191.P629554083375963045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P629554083375963045

namespace A093191

/-- `∩[A215164(n+1), A215359(n+1)]` -/
def P629554083375963045.Spec : Prop :=
  ∀ n, (P629554083375963045.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P11962780901187608024

`∩[A215164(n+1), A215315(n+1)]`
-/

namespace A093191.P11962780901187608024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P11962780901187608024

namespace A093191

/-- `∩[A215164(n+1), A215315(n+1)]` -/
def P11962780901187608024.Spec : Prop :=
  ∀ n, (P11962780901187608024.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P18304032101594584163

`∩[A215164(n+1), A215355(n+1)]`
-/

namespace A093191.P18304032101594584163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P18304032101594584163

namespace A093191

/-- `∩[A215164(n+1), A215355(n+1)]` -/
def P18304032101594584163.Spec : Prop :=
  ∀ n, (P18304032101594584163.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P8297916760392876095

`∩[A215164(n+1), A215351(n+1)]`
-/

namespace A093191.P8297916760392876095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P8297916760392876095

namespace A093191

/-- `∩[A215164(n+1), A215351(n+1)]` -/
def P8297916760392876095.Spec : Prop :=
  ∀ n, (P8297916760392876095.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P13501808153162231434

`∩[A215164(n+1), A215276(n+1)]`
-/

namespace A093191.P13501808153162231434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P13501808153162231434

namespace A093191

/-- `∩[A215164(n+1), A215276(n+1)]` -/
def P13501808153162231434.Spec : Prop :=
  ∀ n, (P13501808153162231434.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P10927684530283231397

`∩[A215164(n+1), A215428(n+1)]`
-/

namespace A093191.P10927684530283231397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P10927684530283231397

namespace A093191

/-- `∩[A215164(n+1), A215428(n+1)]` -/
def P10927684530283231397.Spec : Prop :=
  ∀ n, (P10927684530283231397.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P18344347881455116055

`∩[A038883(n+1), A215276(n+1)]`
-/

namespace A093191.P18344347881455116055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P18344347881455116055

namespace A093191

/-- `∩[A038883(n+1), A215276(n+1)]` -/
def P18344347881455116055.Spec : Prop :=
  ∀ n, (P18344347881455116055.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P551847110521175904

`∩[A215276(n+1), A296937(n+1)]`
-/

namespace A093191.P551847110521175904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P551847110521175904

namespace A093191

/-- `∩[A215276(n+1), A296937(n+1)]` -/
def P551847110521175904.Spec : Prop :=
  ∀ n, (P551847110521175904.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P15579458603198007193

`∩[A215428(n+1), A296937(n+1)]`
-/

namespace A093191.P15579458603198007193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P15579458603198007193

namespace A093191

/-- `∩[A215428(n+1), A296937(n+1)]` -/
def P15579458603198007193.Spec : Prop :=
  ∀ n, (P15579458603198007193.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P3229001142307087420

`∩[A215276(n+1), A270997(n+1)]`
-/

namespace A093191.P3229001142307087420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P3229001142307087420

namespace A093191

/-- `∩[A215276(n+1), A270997(n+1)]` -/
def P3229001142307087420.Spec : Prop :=
  ∀ n, (P3229001142307087420.a n : ℤ) = A093191 (n + 1)

end A093191

/-! ## A093191.P2297549748089381050

`∩[A215428(n+1), A270997(n+1)]`
-/

namespace A093191.P2297549748089381050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P2297549748089381050

namespace A093191

/-- `∩[A215428(n+1), A270997(n+1)]` -/
def P2297549748089381050.Spec : Prop :=
  ∀ n, (P2297549748089381050.a n : ℤ) = A093191 (n + 1)

end A093191

/-!
# A093194: Minimal values of m=a^2+b^2=c^2+d^2 for each x=a+b+c+d=6*p (p=any odd prime).

The programs for A093194, there is no canonical definition to state claims against.
-/

/-! ## A093194.P6106836137305041400

`5*(p?[Δ[n²]]²+1)`
-/

namespace A093194.P6106836137305041400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1)

end

end A093194.P6106836137305041400

/-! ## A093194.P9375141541153485568

`5*(or(1, p?[2*n+1])²+1)`
-/

namespace A093194.P9375141541153485568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2 + 1)

end

end A093194.P9375141541153485568

/-! ## A093194.P11166895214380669394

`5*(∏{p}[p?[2*n+1], #]²+1)`
-/

namespace A093194.P11166895214380669394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2 + 1)

end

end A093194.P11166895214380669394

/-! ## A093194.P11752108556546259745

`∑{d}[2*p?[a(n-1)+2], #²]` with `a(0)=1`
-/

namespace A093194.P11752108556546259745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A093194.P11752108556546259745

/-! ## A093194.P173096835683938925

`2*5*ceil(p?[2*n+1]²/2)`
-/

namespace A093194.P173096835683938925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 2⌉)

end

end A093194.P173096835683938925

/-!
# A093195: Least number which is the sum of two distinct nonzero squares in exactly n ways.

The programs for A093195, there is no canonical definition to state claims against.
-/

/-! ## A093195.P5148138556387262354

`A328151(2*(n+1))`
-/

namespace A093195.P5148138556387262354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328151 (2 * (n + 1))

end

end A093195.P5148138556387262354

/-! ## A093195.P4490695185545337571

`A126441(A286962(2*n+1))+A016032(n+1)`
-/

namespace A093195.P4490695185545337571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (A286962 (2 * n + 1)).toNat + A016032 (n + 1)

end

end A093195.P4490695185545337571

/-!
# A093196: Number of 4 X 4 pandiagonal magic squares with line sum 2*n.

The programs for A093196, the canonical program `A093196.P12084554466604382958` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093196 has offset 0).

The definition of A093196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093196.P12084554466604382958

`∑[A302298(n)+∑[8*n²+2]-1]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093196

/-- `∑[A302298(n)+∑[8*n²+2]-1]` -/
def P12084554466604382958.Spec : Prop :=
  ∀ n, P12084554466604382958.a n = A093196 n

theorem P12084554466604382958.correct : P12084554466604382958.Spec := by
  intro n
  simp only [A093196]

end A093196

/-!
# A093197: Number of labeled plane 2-trees on n triangles.

The programs for A093197, the canonical program `A093197.P11419636686192684969` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093197 has offset 2).

The definition of A093197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093197.P11419636686192684969

`(n+2)!*(4*C(2*(n+2), n+2)/(n+3)-C(2*(n+2)+2, n+3)/(n+4))/6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093197

/-- `(n+2)!*(4*C(2*(n+2), n+2)/(n+3)-C(2*(n+2)+2, n+3)/(n+4))/6` -/
def P11419636686192684969.Spec : Prop :=
  ∀ n, P11419636686192684969.a n = (A093197 (n + 2) : ℚ)

end A093197

/-! ## A093197.P3370636183267593120

`n!*C(2*(n+2), n)`
-/

namespace A093197.P3370636183267593120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (2 * (n + 2)) n

end

end A093197.P3370636183267593120

namespace A093197

/-- `n!*C(2*(n+2), n)` -/
def P3370636183267593120.Spec : Prop :=
  ∀ n, (P3370636183267593120.a n : ℤ) = A093197 (n + 2)

end A093197

/-! ## A093197.P10000906340022963390

`n!*A002694(n+2)`
-/

namespace A093197.P10000906340022963390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002694 (n + 2)

end

end A093197.P10000906340022963390

namespace A093197

/-- `n!*A002694(n+2)` -/
def P10000906340022963390.Spec : Prop :=
  ∀ n, P10000906340022963390.a n = A093197 (n + 2)

end A093197

/-! ## A093197.P18089358348313531317

`(n+1)!/3*Δ[A000108(n+2)]`
-/

namespace A093197.P18089358348313531317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ)

end

end A093197.P18089358348313531317

namespace A093197

/-- `(n+1)!/3*Δ[A000108(n+2)]` -/
def P18089358348313531317.Spec : Prop :=
  ∀ n, P18089358348313531317.a n = (A093197 (n + 2) : ℚ)

end A093197

/-! ## A093197.P3038042828522536294

`(n+2)!*record[A000108(n)/(n+2)]`
-/

namespace A093197.P3038042828522536294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093197.P3038042828522536294

namespace A093197

/-- `(n+2)!*record[A000108(n)/(n+2)]` -/
def P3038042828522536294.Spec : Prop :=
  ∀ n, P3038042828522536294.a n = (A093197 (n + 2) : ℚ)

end A093197

/-! ## A093197.P9876800039730427603

`A000142(n)*A002694(n+2)`
-/

namespace A093197.P9876800039730427603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002694 (n + 2)

end

end A093197.P9876800039730427603

namespace A093197

/-- `A000142(n)*A002694(n+2)` -/
def P9876800039730427603.Spec : Prop :=
  ∀ n, P9876800039730427603.a n = A093197 (n + 2)

end A093197

/-! ## A093197.P6761393981531842243

`∏[A028310(n)]*A002694(n+2)`
-/

namespace A093197.P6761393981531842243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002694 (n + 2)

end

end A093197.P6761393981531842243

namespace A093197

/-- `∏[A028310(n)]*A002694(n+2)` -/
def P6761393981531842243.Spec : Prop :=
  ∀ n, P6761393981531842243.a n = A093197 (n + 2)

end A093197

/-! ## A093197.P17517251628848236128

`record[A001761(n)/(A036453(n+1)+n)]`
-/

namespace A093197.P17517251628848236128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001761 n : ℚ) / (A036453 (n + 1) + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093197.P17517251628848236128

namespace A093197

/-- `record[A001761(n)/(A036453(n+1)+n)]` -/
def P17517251628848236128.Spec : Prop :=
  ∀ n, P17517251628848236128.a n = (A093197 (n + 2) : ℚ)

end A093197

/-! ## A093197.P6922119985990596370

`A092956(n+1)/A005563(n+2)`
-/

namespace A093197.P6922119985990596370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092956 (n + 1) : ℚ) / (A005563 (n + 2) : ℚ)

end

end A093197.P6922119985990596370

namespace A093197

/-- `A092956(n+1)/A005563(n+2)` -/
def P6922119985990596370.Spec : Prop :=
  ∀ n, P6922119985990596370.a n = (A093197 (n + 2) : ℚ)

end A093197

/-!
# A093198: Number of 4 X 4 symmetric magic squares with line sum 2n.

The programs for A093198, the canonical program `A093198.P2960952486116502484` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093198 has offset 0).

The definition of A093198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093198.P2960952486116502484

`∑[∑[A299289(n)+n²]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093198

/-- `∑[∑[A299289(n)+n²]]` -/
def P2960952486116502484.Spec : Prop :=
  ∀ n, P2960952486116502484.a n = A093198 n

theorem P2960952486116502484.correct : P2960952486116502484.Spec := by
  intro n
  simp only [A093198]

end A093198

/-! ## A093198.P3742445691965925214

`∑[A299290(n)+∑[n²]]`
-/

namespace A093198.P3742445691965925214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299290 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093198.P3742445691965925214

namespace A093198

/-- `∑[A299290(n)+∑[n²]]` -/
def P3742445691965925214.Spec : Prop :=
  ∀ n, P3742445691965925214.a n = A093198 n

end A093198

/-! ## A093198.P10667916667325936813

`∑[∑[A204467(n)]+n^3]`
-/

namespace A093198.P10667916667325936813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204467 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093198.P10667916667325936813

namespace A093198

/-- `∑[∑[A204467(n)]+n^3]` -/
def P10667916667325936813.Spec : Prop :=
  ∀ n, P10667916667325936813.a n = A093198 n

end A093198

/-! ## A093198.P2641160776306684108

`∑[A256328(n)]+∑[n+1]²`
-/

namespace A093198.P2641160776306684108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256328 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A093198.P2641160776306684108

namespace A093198

/-- `∑[A256328(n)]+∑[n+1]²` -/
def P2641160776306684108.Spec : Prop :=
  ∀ n, P2641160776306684108.a n = A093198 n

end A093198

/-! ## A093198.P13184171990292457477

`A186707(n)-∑[∑[3*n²]]`
-/

namespace A093198.P13184171990292457477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186707 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093198.P13184171990292457477

namespace A093198

/-- `A186707(n)-∑[∑[3*n²]]` -/
def P13184171990292457477.Spec : Prop :=
  ∀ n, P13184171990292457477.a n = A093198 n

end A093198

/-! ## A093198.P17186602714585641462

`A380353(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A093198.P17186602714585641462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A380353 (n + 1) - a (n - 1)

end

end A093198.P17186602714585641462

namespace A093198

/-- `A380353(n+1)-a(n-1)` -/
def P17186602714585641462.Spec : Prop :=
  ∀ n, P17186602714585641462.a n = A093198 n

end A093198

/-! ## A093198.P5836959381089091396

`A302560(n+1)-A212981(n)`
-/

namespace A093198.P5836959381089091396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1) - A212981 n

end

end A093198.P5836959381089091396

namespace A093198

/-- `A302560(n+1)-A212981(n)` -/
def P5836959381089091396.Spec : Prop :=
  ∀ n, P5836959381089091396.a n = A093198 n

end A093198

/-! ## A093198.P9486166728212338291

`∑[A063490(n+1)+∑[A007590(n)]]`
-/

namespace A093198.P9486166728212338291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093198.P9486166728212338291

namespace A093198

/-- `∑[A063490(n+1)+∑[A007590(n)]]` -/
def P9486166728212338291.Spec : Prop :=
  ∀ n, P9486166728212338291.a n = A093198 n

end A093198

/-! ## A093198.P10625783389871883514

`A000124(n)*A005891(n)-a(n-1)` with `a(0)=1`
-/

namespace A093198.P10625783389871883514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000124 n * A005891 n - a (n - 1)

end

end A093198.P10625783389871883514

namespace A093198

/-- `A000124(n)*A005891(n)-a(n-1)` -/
def P10625783389871883514.Spec : Prop :=
  ∀ n, P10625783389871883514.a n = A093198 n

end A093198

/-! ## A093198.P9016606752003456137

`round(Δ[Δ[n^3]*A000330(n)]/8)`
-/

namespace A093198.P9016606752003456137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 8)

end

end A093198.P9016606752003456137

namespace A093198

/-- `round(Δ[Δ[n^3]*A000330(n)]/8)` -/
def P9016606752003456137.Spec : Prop :=
  ∀ n, P9016606752003456137.a n = A093198 n

end A093198

/-! ## A093198.P106822863149423618

`A000537(n+1)+A105636(n)+A000537(n)`
-/

namespace A093198.P106822863149423618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A105636 n + A000537 n)

end

end A093198.P106822863149423618

namespace A093198

/-- `A000537(n+1)+A105636(n)+A000537(n)` -/
def P106822863149423618.Spec : Prop :=
  ∀ n, P106822863149423618.a n = A093198 n

end A093198

/-! ## A093198.P10961311757542573318

`∑[∑[A005893(2*n)-A001971(2*n)]]`
-/

namespace A093198.P10961311757542573318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) - A001971 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093198.P10961311757542573318

namespace A093198

/-- `∑[∑[A005893(2*n)-A001971(2*n)]]` -/
def P10961311757542573318.Spec : Prop :=
  ∀ n, P10961311757542573318.a n = A093198 n

end A093198

/-! ## A093198.P3970227118582157303

`∑[A167875(2*n)-∑[A001971(2*n)]]`
-/

namespace A093198.P3970227118582157303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 (2 * n) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093198.P3970227118582157303

namespace A093198

/-- `∑[A167875(2*n)-∑[A001971(2*n)]]` -/
def P3970227118582157303.Spec : Prop :=
  ∀ n, P3970227118582157303.a n = A093198 n

end A093198

/-! ## A093198.P4139902727006501001

`A212674(n+1)+A001296(n)+A000914(n)`
-/

namespace A093198.P4139902727006501001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212674 (n + 1) + (A001296 n + A000914 n)

end

end A093198.P4139902727006501001

namespace A093198

/-- `A212674(n+1)+A001296(n)+A000914(n)` -/
def P4139902727006501001.Spec : Prop :=
  ∀ n, P4139902727006501001.a n = A093198 n

end A093198

/-! ## A093198.P1372767026895238705

`A226292((n+1)²)/2`
-/

namespace A093198.P1372767026895238705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226292 ((n + 1) ^ 2) : ℚ) / 2

end

end A093198.P1372767026895238705

namespace A093198

/-- `A226292((n+1)²)/2` -/
def P1372767026895238705.Spec : Prop :=
  ∀ n, P1372767026895238705.a n = (A093198 n : ℚ)

end A093198

/-!
# A093199: Number of 4 X 4 magic squares with line sum n.

The programs for A093199, there is no canonical definition to state claims against.
-/

/-! ## A093199.P10611760296947333877

`A359210(A026734(n))`
-/

namespace A093199.P10611760296947333877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359210 (A026734 n).toNat

end

end A093199.P10611760296947333877

