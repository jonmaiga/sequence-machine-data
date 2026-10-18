import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C002
import Seq.B002.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A087401: Triangle of n*r-binomial(r+1,2).

The programs for A087401, the canonical program `A087401.P10568550885334757291` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087401 has offset 0).

The definition of A087401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087401.P7258888758111170598

`A303273(n)-1`
-/

namespace A087401.P7258888758111170598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 n - 1

end

end A087401.P7258888758111170598

namespace A087401

/-- `A303273(n)-1` -/
def P7258888758111170598.Spec : Prop :=
  ∀ n, P7258888758111170598.a n = A087401 n

end A087401

/-! ## A087401.P7509540330167879144

`A309559(n)-(comp[∑[n]]-n)+1`
-/

namespace A087401.P7509540330167879144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) + 1

end

end A087401.P7509540330167879144

namespace A087401

/-- `A309559(n)-(comp[∑[n]]-n)+1` -/
def P7509540330167879144.Spec : Prop :=
  ∀ n, P7509540330167879144.a n = A087401 n

end A087401

/-! ## A087401.P16668245902270121823

`A141418(n+1)-∑[char[∑[n+1]]]`
-/

namespace A087401.P16668245902270121823
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A087401.P16668245902270121823

namespace A087401

/-- `A141418(n+1)-∑[char[∑[n+1]]]` -/
def P16668245902270121823.Spec : Prop :=
  ∀ n, P16668245902270121823.a n = A087401 n

end A087401

/-! ## A087401.P13497259090512077728

`A023443(A303273(n))`
-/

namespace A087401.P13497259090512077728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A303273 n).toNat

end

end A087401.P13497259090512077728

namespace A087401

/-- `A023443(A303273(n))` -/
def P13497259090512077728.Spec : Prop :=
  ∀ n, P13497259090512077728.a n = A087401 n

end A087401

/-! ## A087401.P10568550885334757291

`A079904(n)-A112367(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A087401

/-- `A079904(n)-A112367(n)` -/
def P10568550885334757291.Spec : Prop :=
  ∀ n, P10568550885334757291.a n = A087401 n

theorem P10568550885334757291.correct : P10568550885334757291.Spec := by
  intro n
  simp only [A087401]

end A087401

/-! ## A087401.P15191958757701533040

`A126890(n)-A367964(n)`
-/

namespace A087401.P15191958757701533040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n - A367964 n

end

end A087401.P15191958757701533040

namespace A087401

/-- `A126890(n)-A367964(n)` -/
def P15191958757701533040.Spec : Prop :=
  ∀ n, P15191958757701533040.a n = A087401 n

end A087401

/-! ## A087401.P14130893796538127812

`A309559(n)-A002024(n+1)`
-/

namespace A087401.P14130893796538127812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n - A002024 (n + 1)

end

end A087401.P14130893796538127812

namespace A087401

/-- `A309559(n)-A002024(n+1)` -/
def P14130893796538127812.Spec : Prop :=
  ∀ n, P14130893796538127812.a n = A087401 n

end A087401

/-! ## A087401.P16333466276265812652

`A309559(n)-(A003056(n)+1)`
-/

namespace A087401.P16333466276265812652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n - (A003056 n + 1)

end

end A087401.P16333466276265812652

namespace A087401

/-- `A309559(n)-(A003056(n)+1)` -/
def P16333466276265812652.Spec : Prop :=
  ∀ n, P16333466276265812652.a n = A087401 n

end A087401

/-! ## A087401.P5904987633085424691

`A386319(n)-A144328(n+1)`
-/

namespace A087401.P5904987633085424691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386319 n - A144328 (n + 1)

end

end A087401.P5904987633085424691

namespace A087401

/-- `A386319(n)-A144328(n+1)` -/
def P5904987633085424691.Spec : Prop :=
  ∀ n, P5904987633085424691.a n = A087401 n

end A087401

/-! ## A087401.P17921175768789192333

`A008867(n+2)-A271668(n)`
-/

namespace A087401.P17921175768789192333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008867 (n + 2) - A271668 n

end

end A087401.P17921175768789192333

namespace A087401

/-- `A008867(n+2)-A271668(n)` -/
def P17921175768789192333.Spec : Prop :=
  ∀ n, P17921175768789192333.a n = A087401 n

end A087401

/-! ## A087401.P11289418747779607157

`A076110(n+1)-(A112367(n)+1)`
-/

namespace A087401.P11289418747779607157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) - (A112367 n + 1)

end

end A087401.P11289418747779607157

namespace A087401

/-- `A076110(n+1)-(A112367(n)+1)` -/
def P11289418747779607157.Spec : Prop :=
  ∀ n, P11289418747779607157.a n = A087401 n

end A087401

/-! ## A087401.P16535323673701783238

`A141419(n+1)-(A051162(n)+1)`
-/

namespace A087401.P16535323673701783238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - (A051162 n + 1)

end

end A087401.P16535323673701783238

namespace A087401

/-- `A141419(n+1)-(A051162(n)+1)` -/
def P16535323673701783238.Spec : Prop :=
  ∀ n, P16535323673701783238.a n = A087401 n

end A087401

/-! ## A087401.P4196135220200060414

`A075362(n+1)-A134464(n+1)`
-/

namespace A087401.P4196135220200060414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A134464 (n + 1)

end

end A087401.P4196135220200060414

namespace A087401

/-- `A075362(n+1)-A134464(n+1)` -/
def P4196135220200060414.Spec : Prop :=
  ∀ n, P4196135220200060414.a n = A087401 n

end A087401

/-! ## A087401.P8968846263789721180

`A141419(n+1)-A094727(n+1)`
-/

namespace A087401.P8968846263789721180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A094727 (n + 1)

end

end A087401.P8968846263789721180

namespace A087401

/-- `A141419(n+1)-A094727(n+1)` -/
def P8968846263789721180.Spec : Prop :=
  ∀ n, P8968846263789721180.a n = A087401 n

end A087401

/-! ## A087401.P15482556119243574459

`A070543(n+1)-A204250(n+1)`
-/

namespace A087401.P15482556119243574459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070543 (n + 1) - A204250 (n + 1)

end

end A087401.P15482556119243574459

namespace A087401

/-- `A070543(n+1)-A204250(n+1)` -/
def P15482556119243574459.Spec : Prop :=
  ∀ n, P15482556119243574459.a n = A087401 n

end A087401

/-! ## A087401.P17325421600613037006

`A309559(n)-A309559(n-A002262(n))`
-/

namespace A087401.P17325421600613037006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n - A309559 ((n : ℤ) - A002262 n).toNat

end

end A087401.P17325421600613037006

namespace A087401

/-- `A309559(n)-A309559(n-A002262(n))` -/
def P17325421600613037006.Spec : Prop :=
  ∀ n, P17325421600613037006.a n = A087401 n

end A087401

/-! ## A087401.P2684378433741627345

`A002262(n)*A003056(n)-A000217(A002262(n))`
-/

namespace A087401.P2684378433741627345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A003056 n - A000217 (A002262 n).toNat

end

end A087401.P2684378433741627345

namespace A087401

/-- `A002262(n)*A003056(n)-A000217(A002262(n))` -/
def P2684378433741627345.Spec : Prop :=
  ∀ n, P2684378433741627345.a n = A087401 n

end A087401

/-! ## A087401.P5633409381946907144

`A002024(n+1)*A002262(n)-A000096(A002262(n))`
-/

namespace A087401.P5633409381946907144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A002262 n - A000096 (A002262 n).toNat

end

end A087401.P5633409381946907144

namespace A087401

/-- `A002024(n+1)*A002262(n)-A000096(A002262(n))` -/
def P5633409381946907144.Spec : Prop :=
  ∀ n, P5633409381946907144.a n = A087401 n

end A087401

/-! ## A087401.P17871293660658936881

`A329854(A061579(n))-1`
-/

namespace A087401.P17871293660658936881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329854 (A061579 n).toNat - 1

end

end A087401.P17871293660658936881

namespace A087401

/-- `A329854(A061579(n))-1` -/
def P17871293660658936881.Spec : Prop :=
  ∀ n, P17871293660658936881.a n = A087401 n

end A087401

/-! ## A087401.P6398998184762289529

`A049780(A061579(n))-A002262(n)`
-/

namespace A087401.P6398998184762289529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 (A061579 n).toNat - A002262 n

end

end A087401.P6398998184762289529

namespace A087401

/-- `A049780(A061579(n))-A002262(n)` -/
def P6398998184762289529.Spec : Prop :=
  ∀ n, P6398998184762289529.a n = A087401 n

end A087401

/-!
# A087404: a(n) = 4*a(n-1) + 5*a(n-2) for n > 1, with a(0) = 2 and a(1) = 4.

The programs for A087404, the canonical program `A087404.P10821392888699546081` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087404 has offset 0).

The definition of A087404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+5*a(n-2)` (program `A087404.P10821392888699546081`, by `A087404.P10821392888699546081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087404.P2286572145231666012

`5^n+(-1)^n`
-/

namespace A087404.P2286572145231666012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) + (-1) ^ n

end

end A087404.P2286572145231666012

namespace A087404

/-- `5^n+(-1)^n` -/
def P2286572145231666012.Spec : Prop :=
  ∀ n, P2286572145231666012.a n = A087404 n

theorem P2286572145231666012.correct : P2286572145231666012.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A087404, Nat.add_sub_cancel, A087404.P2286572145231666012.a, A087404.P10821392888699546081.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A087404, Nat.add_sub_cancel, A087404.P2286572145231666012.a, A087404.P10821392888699546081.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087404

/-! ## A087404.P10821392888699546081

`4*a(n-1)+5*a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087404

/-- `4*a(n-1)+5*a(n-2)` -/
def P10821392888699546081.Spec : Prop :=
  ∀ n, (P10821392888699546081.a n : ℤ) = A087404 n

theorem P10821392888699546081.correct : P10821392888699546081.Spec := by
  intro n
  simp only [A087404]

end A087404

/-! ## A087404.P11527227657124462861

`2*A081340(n)`
-/

namespace A087404.P11527227657124462861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081340 n

end

end A087404.P11527227657124462861

namespace A087404

/-- `2*A081340(n)` -/
def P11527227657124462861.Spec : Prop :=
  ∀ n, P11527227657124462861.a n = A087404 n

end A087404

/-! ## A087404.P8937047321959993785

`ogf((-2+4x)/(-1+4x+5x^2))`
-/

namespace A087404.P8937047321959993785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -4, -5] n

end

end A087404.P8937047321959993785

namespace A087404

/-- `ogf((-2+4x)/(-1+4x+5x^2))` -/
def P8937047321959993785.Spec : Prop :=
  ∀ n, P8937047321959993785.a n = A087404 n

end A087404

/-! ## A087404.P1663784233899836903

`xor(5^n+1, Δ[or(1, n)])`
-/

namespace A087404.P1663784233899836903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 ^ n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A087404.P1663784233899836903

namespace A087404

/-- `xor(5^n+1, Δ[or(1, n)])` -/
def P1663784233899836903.Spec : Prop :=
  ∀ n, P1663784233899836903.a n = A087404 n

end A087404

/-! ## A087404.P15368897538587066505

`xor(4, 5*xor(2, a(n-1)))` with `a(0)=2`
-/

namespace A087404.P15368897538587066505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 4 (5 * Nat.xor 2 (a (n - 1)))

end

end A087404.P15368897538587066505

namespace A087404

/-- `xor(4, 5*xor(2, a(n-1)))` -/
def P15368897538587066505.Spec : Prop :=
  ∀ n, (P15368897538587066505.a n : ℤ) = A087404 n

end A087404

/-! ## A087404.P8481073988648279344

`∑[A087405(n)]`
-/

namespace A087404.P8481073988648279344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087404.P8481073988648279344

namespace A087404

/-- `∑[A087405(n)]` -/
def P8481073988648279344.Spec : Prop :=
  ∀ n, P8481073988648279344.a n = A087404 n

end A087404

/-! ## A087404.P584850063091376690

`xor(2, A274072(n))`
-/

namespace A087404.P584850063091376690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A274072 n)

end

end A087404.P584850063091376690

namespace A087404

/-- `xor(2, A274072(n))` -/
def P584850063091376690.Spec : Prop :=
  ∀ n, P584850063091376690.a n = A087404 n

end A087404

/-! ## A087404.P17265771819138127034

`2*(A034478(n)-A000035(n))`
-/

namespace A087404.P17265771819138127034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034478 n - A000035 n)

end

end A087404.P17265771819138127034

namespace A087404

/-- `2*(A034478(n)-A000035(n))` -/
def P17265771819138127034.Spec : Prop :=
  ∀ n, P17265771819138127034.a n = A087404 n

end A087404

/-! ## A087404.P4844909674256864255

`∑[A280560(n)+∑[A055842(n)]]`
-/

namespace A087404.P4844909674256864255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087404.P4844909674256864255

namespace A087404

/-- `∑[A280560(n)+∑[A055842(n)]]` -/
def P4844909674256864255.Spec : Prop :=
  ∀ n, P4844909674256864255.a n = A087404 n

end A087404

/-! ## A087404.P4429475282420070803

`2*(A054884(n)+A030518(n+1))`
-/

namespace A087404.P4429475282420070803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054884 n + A030518 (n + 1))

end

end A087404.P4429475282420070803

namespace A087404

/-- `2*(A054884(n)+A030518(n+1))` -/
def P4429475282420070803.Spec : Prop :=
  ∀ n, P4429475282420070803.a n = A087404 n

end A087404

/-!
# A087405: First differences of A087404: a(n) = A087404(n) - A087404(n-1), a(0) = A087404(0).

The programs for A087405, the canonical program `A087405.P2819718858922802785` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087405 has offset 0).

The definition of A087405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087405.P12257548045364701027

`A087404(a(n-1))` with `a(0)=2, a(1)=2, a(2)=22, a(3)=98, a(4)=502`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087405.P12257548045364701027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 22, 98, 502] fun n a =>
  A087404 (a (n - 1)).toNat

end

end A087405.P12257548045364701027

namespace A087405

/-- `A087404(a(n-1))` -/
def P12257548045364701027.Spec : Prop :=
  ∀ n, P12257548045364701027.a n = A087405 n

end A087405

/-! ## A087405.P9994337380030722122

`ogf((2-6x+4x^2)/(1-4x-5x^2))`
-/

namespace A087405.P9994337380030722122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 4] [1, -4, -5] n

end

end A087405.P9994337380030722122

namespace A087405

/-- `ogf((2-6x+4x^2)/(1-4x-5x^2))` -/
def P9994337380030722122.Spec : Prop :=
  ∀ n, P9994337380030722122.a n = A087405 n

end A087405

/-! ## A087405.P2819718858922802785

`Δ[or(floor(5^(n-1)), A000034(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087405

/-- `Δ[or(floor(5^(n-1)), A000034(n))]` -/
def P2819718858922802785.Spec : Prop :=
  ∀ n, P2819718858922802785.a n = A087405 n

theorem P2819718858922802785.correct : P2819718858922802785.Spec := by
  intro n
  simp only [A087405]

end A087405

/-! ## A087405.P11985874678270184713

`A280560(n)+A005054(n)`
-/

namespace A087405.P11985874678270184713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + A005054 n

end

end A087405.P11985874678270184713

namespace A087405

/-- `A280560(n)+A005054(n)` -/
def P11985874678270184713.Spec : Prop :=
  ∀ n, P11985874678270184713.a n = A087405 n

end A087405

/-! ## A087405.P13152569839392636937

`A280560(n)+∑[A055842(n)]`
-/

namespace A087405.P13152569839392636937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087405.P13152569839392636937

namespace A087405

/-- `A280560(n)+∑[A055842(n)]` -/
def P13152569839392636937.Spec : Prop :=
  ∀ n, P13152569839392636937.a n = A087405 n

end A087405

/-! ## A087405.P2928073706295548067

`lcm(2, A020699(n)+1-A010873(2*n))`
-/

namespace A087405.P2928073706295548067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A020699 n + (1 - A010873 (2 * n)))

end

end A087405.P2928073706295548067

namespace A087405

/-- `lcm(2, A020699(n)+1-A010873(2*n))` -/
def P2928073706295548067.Spec : Prop :=
  ∀ n, (P2928073706295548067.a n : ℤ) = A087405 n

end A087405

/-! ## A087405.P17956869651783110748

`A005054(n)+A002448(n²)`
-/

namespace A087405.P17956869651783110748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n + A002448 (n ^ 2)

end

end A087405.P17956869651783110748

namespace A087405

/-- `A005054(n)+A002448(n²)` -/
def P17956869651783110748.Spec : Prop :=
  ∀ n, P17956869651783110748.a n = A087405 n

end A087405

/-!
# A087408: Multiples of 5 with digits grouped in pairs and leading zeros omitted.

The programs for A087408, there is no canonical definition to state claims against.
-/

/-! ## A087408.P1281163570182389199

`(a(n-2)+1)*A040001(A341234(n+1))` with `a(0)=51, a(1)=1`
-/

namespace A087408.P1281163570182389199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [51, 1] fun n a =>
  (a (n - 2) + 1) * A040001 (A341234 (n + 1)).toNat

end

end A087408.P1281163570182389199

/-! ## A087408.P6303005378669058252

`a(n-2)+A040001(A341234(n+1))^A000040(n+1)` with `a(0)=51, a(1)=1`
-/

namespace A087408.P6303005378669058252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [51, 1] fun n a =>
  a (n - 2) + (A040001 (A341234 (n + 1)).toNat : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A087408.P6303005378669058252

/-! ## A087408.P16773943615287221854

`a(n-2)+A040001(A341234(n+1))^A000203(n+1)` with `a(0)=51, a(1)=1`
-/

namespace A087408.P16773943615287221854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [51, 1] fun n a =>
  a (n - 2) + (A040001 (A341234 (n + 1)).toNat : ℚ) ^ (A000203 (n + 1) : ℤ)

end

end A087408.P16773943615287221854

/-! ## A087408.P3605350720725886435

`a(n-2)+a(A001222(A117387(n)))` with `a(0)=51, a(1)=1`
-/

namespace A087408.P3605350720725886435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [51, 1] fun n a =>
  a (n - 2) + a (A001222 (A117387 n).toNat).toNat

end

end A087408.P3605350720725886435

/-! ## A087408.P1448309538759933977

`a(n-2)+2-A001221(A000079(n))` with `a(0)=51, a(1)=1`
-/

namespace A087408.P1448309538759933977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [51, 1] fun n a =>
  a (n - 2) + 2 - A001221 (A000079 n).toNat

end

end A087408.P1448309538759933977

/-!
# A087413: a(n) = Sum_{k=1..n} C(3*k,k)/3.

The programs for A087413, the canonical program `A087413.P4648167049105143445` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087413 has offset 1).

The definition of A087413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087413.P4648167049105143445

`∑[A025174(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087413

/-- `∑[A025174(n+1)]` -/
def P4648167049105143445.Spec : Prop :=
  ∀ n, P4648167049105143445.a n = A087413 (n + 1)

theorem P4648167049105143445.correct : P4648167049105143445.Spec := by
  intro n
  simp only [A087413, Nat.add_sub_cancel]

end A087413

/-! ## A087413.P9964390385401916939

`∑[A127040(2*n)]`
-/

namespace A087413.P9964390385401916939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P9964390385401916939

namespace A087413

/-- `∑[A127040(2*n)]` -/
def P9964390385401916939.Spec : Prop :=
  ∀ n, P9964390385401916939.a n = A087413 (n + 1)

end A087413

/-! ## A087413.P6989544401924954423

`∑[abs(Δ[A024719(n)])]`
-/

namespace A087413.P6989544401924954423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024719 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P6989544401924954423

namespace A087413

/-- `∑[abs(Δ[A024719(n)])]` -/
def P6989544401924954423.Spec : Prop :=
  ∀ n, P6989544401924954423.a n = A087413 (n + 1)

end A087413

/-! ## A087413.P4881396290397262520

`A024719(n+1)-1`
-/

namespace A087413.P4881396290397262520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024719 (n + 1) - 1

end

end A087413.P4881396290397262520

namespace A087413

/-- `A024719(n+1)-1` -/
def P4881396290397262520.Spec : Prop :=
  ∀ n, P4881396290397262520.a n = A087413 (n + 1)

end A087413

/-! ## A087413.P6788783840338706374

`∑[A099578(comp[2*n])]`
-/

namespace A087413.P6788783840338706374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P6788783840338706374

namespace A087413

/-- `∑[A099578(comp[2*n])]` -/
def P6788783840338706374.Spec : Prop :=
  ∀ n, P6788783840338706374.a n = A087413 (n + 1)

end A087413

/-! ## A087413.P12300926727934791360

`∑[A165817(n+1)/2]`
-/

namespace A087413.P12300926727934791360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165817 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P12300926727934791360

namespace A087413

/-- `∑[A165817(n+1)/2]` -/
def P12300926727934791360.Spec : Prop :=
  ∀ n, P12300926727934791360.a n = (A087413 (n + 1) : ℚ)

end A087413

/-! ## A087413.P13852140548926027787

`∑[A005809(n+1)/3]`
-/

namespace A087413.P13852140548926027787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P13852140548926027787

namespace A087413

/-- `∑[A005809(n+1)/3]` -/
def P13852140548926027787.Spec : Prop :=
  ∀ n, P13852140548926027787.a n = (A087413 (n + 1) : ℚ)

end A087413

/-! ## A087413.P16945974275595316887

`∑[A227726(n+1)/4]`
-/

namespace A087413.P16945974275595316887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227726 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P16945974275595316887

namespace A087413

/-- `∑[A227726(n+1)/4]` -/
def P16945974275595316887.Spec : Prop :=
  ∀ n, P16945974275595316887.a n = (A087413 (n + 1) : ℚ)

end A087413

/-! ## A087413.P9775235201264435267

`(A188675(n+1)-1)/3`
-/

namespace A087413.P9775235201264435267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188675 (n + 1) - 1 : ℚ) / 3

end

end A087413.P9775235201264435267

namespace A087413

/-- `(A188675(n+1)-1)/3` -/
def P9775235201264435267.Spec : Prop :=
  ∀ n, P9775235201264435267.a n = (A087413 (n + 1) : ℚ)

end A087413

/-! ## A087413.P13201104157972413651

`∑[A081204(2*n+1)/2]`
-/

namespace A087413.P13201104157972413651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081204 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P13201104157972413651

namespace A087413

/-- `∑[A081204(2*n+1)/2]` -/
def P13201104157972413651.Spec : Prop :=
  ∀ n, P13201104157972413651.a n = (A087413 (n + 1) : ℚ)

end A087413

/-! ## A087413.P15520019374867520387

`∑[A051033(2*n+n+2)]`
-/

namespace A087413.P15520019374867520387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P15520019374867520387

namespace A087413

/-- `∑[A051033(2*n+n+2)]` -/
def P15520019374867520387.Spec : Prop :=
  ∀ n, P15520019374867520387.a n = A087413 (n + 1)

end A087413

/-! ## A087413.P15056939079802915861

`A127040(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A087413.P15056939079802915861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127040 (n + n) + a (n - 1)

end

end A087413.P15056939079802915861

namespace A087413

/-- `A127040(n+n)+a(n-1)` -/
def P15056939079802915861.Spec : Prop :=
  ∀ n, P15056939079802915861.a n = A087413 (n + 1)

end A087413

/-! ## A087413.P7001624857136106013

`∑[(A117671(n)+A045721(n))/2]`
-/

namespace A087413.P7001624857136106013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117671 n + A045721 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P7001624857136106013

namespace A087413

/-- `∑[(A117671(n)+A045721(n))/2]` -/
def P7001624857136106013.Spec : Prop :=
  ∀ n, P7001624857136106013.a n = (A087413 (n + 1) : ℚ)

end A087413

/-! ## A087413.P3261357389785237829

`∑[A225006(n+1)-A088536(n+1)]`
-/

namespace A087413.P3261357389785237829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225006 (n + 1) - A088536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P3261357389785237829

namespace A087413

/-- `∑[A225006(n+1)-A088536(n+1)]` -/
def P3261357389785237829.Spec : Prop :=
  ∀ n, P3261357389785237829.a n = A087413 (n + 1)

end A087413

/-! ## A087413.P5487177608161623488

`∑[A090763(n)/(n+1)]`
-/

namespace A087413.P5487177608161623488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090763 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P5487177608161623488

namespace A087413

/-- `∑[A090763(n)/(n+1)]` -/
def P5487177608161623488.Spec : Prop :=
  ∀ n, P5487177608161623488.a n = (A087413 (n + 1) : ℚ)

end A087413

/-! ## A087413.P12392686411350378275

`∑[C(3*n+2, n)]`
-/

namespace A087413.P12392686411350378275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 2) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P12392686411350378275

namespace A087413

/-- `∑[C(3*n+2, n)]` -/
def P12392686411350378275.Spec : Prop :=
  ∀ n, (P12392686411350378275.a n : ℤ) = A087413 (n + 1)

end A087413

/-! ## A087413.P10202540781635261125

`a(n-1)+C(3*n+2, n)` with `a(0)=1, a(1)=6`
-/

namespace A087413.P10202540781635261125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + Nat.choose (3 * n + 2) n

end

end A087413.P10202540781635261125

namespace A087413

/-- `a(n-1)+C(3*n+2, n)` -/
def P10202540781635261125.Spec : Prop :=
  ∀ n, (P10202540781635261125.a n : ℤ) = A087413 (n + 1)

end A087413

/-! ## A087413.P13830039901477563033

`∑[record[C(n+2, A130724(n))]]`
-/

namespace A087413.P13830039901477563033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A130724 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P13830039901477563033

namespace A087413

/-- `∑[record[C(n+2, A130724(n))]]` -/
def P13830039901477563033.Spec : Prop :=
  ∀ n, (P13830039901477563033.a n : ℤ) = A087413 (n + 1)

end A087413

/-!
# A087415: Odd numbers k such that abs(sigma(k)-2k) <= sqrt(k). Abundance-radius = abs(sigma(k)-2k) does not exceed square root of k and k is odd.

The programs for A087415, there is no canonical definition to state claims against.
-/

/-! ## A087415.P2017865161741407991

`∩[A088007(n+1), A088648(n)]`
-/

namespace A087415.P2017865161741407991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088648 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087415.P2017865161741407991

/-! ## A087415.P6070287246346812111

`record[A093178(A088007(n+1))]`
-/

namespace A087415.P6070287246346812111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A088007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087415.P6070287246346812111

/-! ## A087415.P804904271722983732

`A028310(∪[A088010(n+1), A188263(n+1)])`
-/

namespace A087415.P804904271722983732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A087415.P804904271722983732

/-! ## A087415.P7230084781240717156

`A093178(∪[A088010(n+1), A188263(n+1)])`
-/

namespace A087415.P7230084781240717156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A087415.P7230084781240717156

/-!
# A087416: Take unbounded lunar divisors of n as defined in A087029, add them using lunar addition. See A087083 for their conventional sum.

The programs for A087416, there is no canonical definition to state claims against.
-/

/-! ## A087416.P18347348568862267195

`A186442(n+1)+A087029(n+1)`
-/

namespace A087416.P18347348568862267195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186442 (n + 1) + A087029 (n + 1)

end

end A087416.P18347348568862267195

/-!
# A087417: Sum of the cubes of A058182.

The programs for A087417, there is no canonical definition to state claims against.
-/

/-! ## A087417.P1085698994725163318

`A001112(n)-A000002(A000346(n))`
-/

namespace A087417.P1085698994725163318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001112 n - A000002 (A000346 n).toNat

end

end A087417.P1085698994725163318

/-! ## A087417.P313344520009256990

`A029578(A120494(n))-A123108(n)`
-/

namespace A087417.P313344520009256990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A120494 n).toNat - A123108 n

end

end A087417.P313344520009256990

/-! ## A087417.P678574196058227627

`A288002(A005700(n))-A000360(n)`
-/

namespace A087417.P678574196058227627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (A005700 n).toNat - A000360 n

end

end A087417.P678574196058227627

/-!
# A087420: a(n) is the sum of the squares of the sizes of the conjugacy classes in the dihedral group D_2n.

The programs for A087420, the canonical program `A087420.P3135418299966563538` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087420 has offset 1).

The definition of A087420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087420.P3135418299966563538

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=2, a(1)=4, a(2)=14, a(3)=14, a(4)=34, a(5)=28`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087420

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P3135418299966563538.Spec : Prop :=
  ∀ n, P3135418299966563538.a n = A087420 (n + 1)

theorem P3135418299966563538.correct : P3135418299966563538.Spec := by
  intro n
  simp only [A087420, Nat.add_sub_cancel]

end A087420

/-! ## A087420.P14571756845365878540

`lcm(2, n)+lcm(n+1, n+3)-(n+1)`
-/

namespace A087420.P14571756845365878540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) + ((Nat.lcm (n + 1) (n + 3) : ℤ) - (n + 1 : ℤ))

end

end A087420.P14571756845365878540

namespace A087420

/-- `lcm(2, n)+lcm(n+1, n+3)-(n+1)` -/
def P14571756845365878540.Spec : Prop :=
  ∀ n, P14571756845365878540.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P18108892442461581118

`n-1+A164900(n)+n`
-/

namespace A087420.P18108892442461581118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A164900 n + (n : ℤ))

end

end A087420.P18108892442461581118

namespace A087420

/-- `n-1+A164900(n)+n` -/
def P18108892442461581118.Spec : Prop :=
  ∀ n, P18108892442461581118.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P17288078130322007753

`lcm(2, ∑[A109613(n)])+2*n`
-/

namespace A087420.P17288078130322007753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * n

end

end A087420.P17288078130322007753

namespace A087420

/-- `lcm(2, ∑[A109613(n)])+2*n` -/
def P17288078130322007753.Spec : Prop :=
  ∀ n, (P17288078130322007753.a n : ℤ) = A087420 (n + 1)

end A087420

/-! ## A087420.P17363170128573740345

`A164900(n)+A060747(n)`
-/

namespace A087420.P17363170128573740345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164900 n + A060747 n

end

end A087420.P17363170128573740345

namespace A087420

/-- `A164900(n)+A060747(n)` -/
def P17363170128573740345.Spec : Prop :=
  ∀ n, P17363170128573740345.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P9072486804203971469

`A164900(n)-A165747(n)`
-/

namespace A087420.P9072486804203971469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164900 n - A165747 n

end

end A087420.P9072486804203971469

namespace A087420

/-- `A164900(n)-A165747(n)` -/
def P9072486804203971469.Spec : Prop :=
  ∀ n, P9072486804203971469.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P12332136100739341548

`2*(Δ[A235355(n)]+n)`
-/

namespace A087420.P12332136100739341548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + (n : ℤ))

end

end A087420.P12332136100739341548

namespace A087420

/-- `2*(Δ[A235355(n)]+n)` -/
def P12332136100739341548.Spec : Prop :=
  ∀ n, P12332136100739341548.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P462094092996725652

`2*(A147685(n+1)+n)`
-/

namespace A087420.P462094092996725652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A147685 (n + 1) + (n : ℤ))

end

end A087420.P462094092996725652

namespace A087420

/-- `2*(A147685(n+1)+n)` -/
def P462094092996725652.Spec : Prop :=
  ∀ n, P462094092996725652.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P11144053039259621164

`gcd(2, n)*A266074(n+1)-2`
-/

namespace A087420.P11144053039259621164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A266074 (n + 1) - 2

end

end A087420.P11144053039259621164

namespace A087420

/-- `gcd(2, n)*A266074(n+1)-2` -/
def P11144053039259621164.Spec : Prop :=
  ∀ n, P11144053039259621164.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P17910777740484601230

`A042963(n+1)+Δ[Δ[A002620(n)²]]`
-/

namespace A087420.P17910777740484601230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) + (f1 (n + 1) - f1 n)

end

end A087420.P17910777740484601230

namespace A087420

/-- `A042963(n+1)+Δ[Δ[A002620(n)²]]` -/
def P17910777740484601230.Spec : Prop :=
  ∀ n, P17910777740484601230.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P11450140418446427772

`A005843(n)+A000034(n+1)*A000982(n+1)`
-/

namespace A087420.P11450140418446427772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A000034 (n + 1) * A000982 (n + 1)

end

end A087420.P11450140418446427772

namespace A087420

/-- `A005843(n)+A000034(n+1)*A000982(n+1)` -/
def P11450140418446427772.Spec : Prop :=
  ∀ n, P11450140418446427772.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P11117099692819937683

`A000034(n+1)*A000982(n+1)-A239229(n+1)`
-/

namespace A087420.P11117099692819937683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A000982 (n + 1) - A239229 (n + 1)

end

end A087420.P11117099692819937683

namespace A087420

/-- `A000034(n+1)*A000982(n+1)-A239229(n+1)` -/
def P11117099692819937683.Spec : Prop :=
  ∀ n, P11117099692819937683.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P14736689419412065018

`A005843(n+1)+2*A115880(2*(n+1))`
-/

namespace A087420.P14736689419412065018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + 2 * A115880 (2 * (n + 1))

end

end A087420.P14736689419412065018

namespace A087420

/-- `A005843(n+1)+2*A115880(2*(n+1))` -/
def P14736689419412065018.Spec : Prop :=
  ∀ n, P14736689419412065018.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P6343529995572967543

`A004525(2*n+1)+A129194(n+1)+n`
-/

namespace A087420.P6343529995572967543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1) + (A129194 (n + 1) + (n : ℤ))

end

end A087420.P6343529995572967543

namespace A087420

/-- `A004525(2*n+1)+A129194(n+1)+n` -/
def P6343529995572967543.Spec : Prop :=
  ∀ n, P6343529995572967543.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P6748247686341085919

`A186421(2*n+1)+A129194(n+1)+n`
-/

namespace A087420.P6748247686341085919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (2 * n + 1) + (A129194 (n + 1) + (n : ℤ))

end

end A087420.P6748247686341085919

namespace A087420

/-- `A186421(2*n+1)+A129194(n+1)+n` -/
def P6748247686341085919.Spec : Prop :=
  ∀ n, P6748247686341085919.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P2850237009049828539

`A005843(A115880(2*(n+1)))+A005843(n+1)`
-/

namespace A087420.P2850237009049828539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A115880 (2 * (n + 1))).toNat + A005843 (n + 1)

end

end A087420.P2850237009049828539

namespace A087420

/-- `A005843(A115880(2*(n+1)))+A005843(n+1)` -/
def P2850237009049828539.Spec : Prop :=
  ∀ n, P2850237009049828539.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P7099536738657261772

`A004277(Δ[A235355(n)]+n)`
-/

namespace A087420.P7099536738657261772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A087420.P7099536738657261772

namespace A087420

/-- `A004277(Δ[A235355(n)]+n)` -/
def P7099536738657261772.Spec : Prop :=
  ∀ n, P7099536738657261772.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P9680546250401385905

`2*A026741(A266723(n)+n)`
-/

namespace A087420.P9680546250401385905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026741 (A266723 n + (n : ℤ)).toNat

end

end A087420.P9680546250401385905

namespace A087420

/-- `2*A026741(A266723(n)+n)` -/
def P9680546250401385905.Spec : Prop :=
  ∀ n, P9680546250401385905.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P11082067243015198256

`A174239(A005563(n))+2*n+1`
-/

namespace A087420.P11082067243015198256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (A005563 n).toNat + (2 * n + 1 : ℤ)

end

end A087420.P11082067243015198256

namespace A087420

/-- `A174239(A005563(n))+2*n+1` -/
def P11082067243015198256.Spec : Prop :=
  ∀ n, P11082067243015198256.a n = A087420 (n + 1)

end A087420

/-! ## A087420.P9077285270882836135

`A052928(A129194(n+1)+2*n+1)`
-/

namespace A087420.P9077285270882836135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A129194 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A087420.P9077285270882836135

namespace A087420

/-- `A052928(A129194(n+1)+2*n+1)` -/
def P9077285270882836135.Spec : Prop :=
  ∀ n, P9077285270882836135.a n = A087420 (n + 1)

end A087420

/-!
# A087421: Smallest prime >= n!.

The programs for A087421, the canonical program `A087421.P6567527335620102044` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087421 has offset 0).

The definition of A087421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087421.P6567527335620102044

`A007918(A000142(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087421

/-- `A007918(A000142(n))` -/
def P6567527335620102044.Spec : Prop :=
  ∀ n, P6567527335620102044.a n = A087421 n

theorem P6567527335620102044.correct : P6567527335620102044.Spec := by
  intro n
  simp only [A087421]

end A087421

/-! ## A087421.P4366909981956300849

`A037151(gcd(n, A094497(n)))`
-/

namespace A087421.P4366909981956300849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (Int.gcd (n : ℤ) (A094497 n))

end

end A087421.P4366909981956300849

namespace A087421

/-- `A037151(gcd(n, A094497(n)))` -/
def P4366909981956300849.Spec : Prop :=
  ∀ n, P4366909981956300849.a n = A087421 n

end A087421

/-! ## A087421.P11473975622238819636

`A037151(A028310(n-char[2]))`
-/

namespace A087421.P11473975622238819636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (A028310 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A087421.P11473975622238819636

namespace A087421

/-- `A037151(A028310(n-char[2]))` -/
def P11473975622238819636.Spec : Prop :=
  ∀ n, P11473975622238819636.a n = A087421 n

end A087421

/-! ## A087421.P11231737367107346651

`A000142(n)+A245695(n+1)/(n+1)`
-/

namespace A087421.P11231737367107346651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) + (A245695 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A087421.P11231737367107346651

namespace A087421

/-- `A000142(n)+A245695(n+1)/(n+1)` -/
def P11231737367107346651.Spec : Prop :=
  ∀ n, P11231737367107346651.a n = (A087421 n : ℚ)

end A087421

/-! ## A087421.P6322335727185190420

`A037151(A233583(n+1)-A094497(n))`
-/

namespace A087421.P6322335727185190420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (A233583 (n + 1) - A094497 n).toNat

end

end A087421.P6322335727185190420

namespace A087421

/-- `A037151(A233583(n+1)-A094497(n))` -/
def P6322335727185190420.Spec : Prop :=
  ∀ n, P6322335727185190420.a n = A087421 n

end A087421

/-! ## A087421.P2796804741180038857

`A037151(A233583(n+1)/(A094497(n)+1))`
-/

namespace A087421.P2796804741180038857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (SequenceMachineLib.roundAway ((A233583 (n + 1) : ℚ) / (A094497 n + 1 : ℚ))).toNat

end

end A087421.P2796804741180038857

namespace A087421

/-- `A037151(A233583(n+1)/(A094497(n)+1))` -/
def P2796804741180038857.Spec : Prop :=
  ∀ n, P2796804741180038857.a n = A087421 n

end A087421

/-!
# A087422: Number of terms in the expansion of Product(x_i + x_{i+1} + ... + x_j) over 1 <= i < j <= n.

The programs for A087422, there is no canonical definition to state claims against.
-/

/-! ## A087422.P17575205191856282350

`A054861(A381142(n)+3)`
-/

namespace A087422.P17575205191856282350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A381142 n + 3).toNat

end

end A087422.P17575205191856282350

/-! ## A087422.P1741477595710761436

`∑[A230293(∑[A000272(n+1)])]`
-/

namespace A087422.P1741477595710761436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230293 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087422.P1741477595710761436

/-!
# A087423: a(n) = S(3*n,3)/S(n,3) where S(n,m) = Sum_{k=0..n} binomial(n,k)*Fibonacci(m*k).

The programs for A087423, there is no canonical definition to state claims against.
-/

/-! ## A087423.P12966514375579000779

`4*(Δ[A000071(4*n+2)]+1)*4^n`
-/

namespace A087423.P12966514375579000779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n + 1) * (4 ^ n : ℤ)

end

end A087423.P12966514375579000779

/-! ## A087423.P2437635754000765861

`A228842(n+1)²-A000302(n+1)`
-/

namespace A087423.P2437635754000765861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228842 (n + 1) ^ 2 - A000302 (n + 1)

end

end A087423.P2437635754000765861

/-! ## A087423.P14974585164961347536

`A228842(2*(n+1))+A000302(n+1)`
-/

namespace A087423.P14974585164961347536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228842 (2 * (n + 1)) + A000302 (n + 1)

end

end A087423.P14974585164961347536

/-! ## A087423.P8175132167489208919

`(A173661(2*(n+1))+1)*A087288(2*n+1)`
-/

namespace A087423.P8175132167489208919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173661 (2 * (n + 1)) + 1) * A087288 (2 * n + 1)

end

end A087423.P8175132167489208919

/-! ## A087423.P5528085185829539640

`A087635(3*(n+1))/A087635(n+1)`
-/

namespace A087423.P5528085185829539640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087635 (3 * (n + 1)) : ℚ) / (A087635 (n + 1) : ℚ)

end

end A087423.P5528085185829539640

/-!
# A087426: a(n) = S(n,4) where S(n,m) = Sum_{k=0..n} binomial(n,k)*Fibonacci(m*k).

The programs for A087426, the canonical program `A087426.P14051638566221699049` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087426 has offset 0).

The definition of A087426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087426.P14051638566221699049

`9*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087426

/-- `9*a(n-1)-9*a(n-2)` -/
def P14051638566221699049.Spec : Prop :=
  ∀ n, P14051638566221699049.a n = A087426 n

theorem P14051638566221699049.correct : P14051638566221699049.Spec := by
  intro n
  simp only [A087426]

end A087426

/-! ## A087426.P2423880740122282504

`1/sqrt(5)*(((9+3*sqrt(5))/2)^n-((9-3*sqrt(5))/2)^n)`
-/

namespace A087426.P2423880740122282504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.sqrt (5 : ℝ) * (((9 + 3 * Real.sqrt (5 : ℝ)) / 2) ^ n - ((9 - 3 * Real.sqrt (5 : ℝ)) / 2) ^ n)

end

end A087426.P2423880740122282504

namespace A087426

/-- `1/sqrt(5)*(((9+3*sqrt(5))/2)^n-((9-3*sqrt(5))/2)^n)` -/
def P2423880740122282504.Spec : Prop :=
  ∀ n, P2423880740122282504.a n = (A087426 n : ℝ)

end A087426

/-! ## A087426.P4308878595925570660

`ogf(3x/(1-9x+9x^2))`
-/

namespace A087426.P4308878595925570660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -9, 9] n

end

end A087426.P4308878595925570660

namespace A087426

/-- `ogf(3x/(1-9x+9x^2))` -/
def P4308878595925570660.Spec : Prop :=
  ∀ n, P4308878595925570660.a n = A087426 n

end A087426

/-! ## A087426.P11485025282430864292

`(a(n-1)-a(n-2))/(1/3)²` with `a(0)=0, a(1)=3`
-/

namespace A087426.P11485025282430864292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 3) ^ 2

end

end A087426.P11485025282430864292

namespace A087426

/-- `(a(n-1)-a(n-2))/(1/3)²` -/
def P11485025282430864292.Spec : Prop :=
  ∀ n, P11485025282430864292.a n = (A087426 n : ℚ)

end A087426

/-! ## A087426.P6006209784791435067

`A057085(n)+2*A057085(n)`
-/

namespace A087426.P6006209784791435067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057085 n + 2 * A057085 n

end

end A087426.P6006209784791435067

namespace A087426

/-- `A057085(n)+2*A057085(n)` -/
def P6006209784791435067.Spec : Prop :=
  ∀ n, P6006209784791435067.a n = A087426 n

end A087426

/-!
# A087427: Number of lattice points on or inside the rectangle formed by [1 <= x <= (q-1)/2] and [1 <= y <= (p-1)/2], where p = n-th prime, q = (n-1)-st prime.

The programs for A087427, the canonical program `A087427.P1757067230807995280` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087427 has offset 3).

The definition of A087427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087427.P1757067230807995280

`(A089038(n+1)+2)*A005097(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087427

/-- `(A089038(n+1)+2)*A005097(n+1)` -/
def P1757067230807995280.Spec : Prop :=
  ∀ n, P1757067230807995280.a n = A087427 (n + 3)

theorem P1757067230807995280.correct : P1757067230807995280.Spec := by
  intro n
  simp only [A087427, Nat.add_sub_cancel]

end A087427

/-! ## A087427.P12289195252904799996

`(A014302(n+3)-A005097(n+1))/2`
-/

namespace A087427.P12289195252904799996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014302 (n + 3) - A005097 (n + 1) : ℚ) / 2

end

end A087427.P12289195252904799996

namespace A087427

/-- `(A014302(n+3)-A005097(n+1))/2` -/
def P12289195252904799996.Spec : Prop :=
  ∀ n, P12289195252904799996.a n = (A087427 (n + 3) : ℚ)

end A087427

/-! ## A087427.P8632160750441968237

`A099407(n+2)/2`
-/

namespace A087427.P8632160750441968237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099407 (n + 2) : ℚ) / 2

end

end A087427.P8632160750441968237

namespace A087427

/-- `A099407(n+2)/2` -/
def P8632160750441968237.Spec : Prop :=
  ∀ n, P8632160750441968237.a n = (A087427 (n + 3) : ℚ)

end A087427

/-! ## A087427.P8328072640662039369

`A083553(n+2)/4`
-/

namespace A087427.P8328072640662039369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083553 (n + 2) : ℚ) / 4

end

end A087427.P8328072640662039369

namespace A087427

/-- `A083553(n+2)/4` -/
def P8328072640662039369.Spec : Prop :=
  ∀ n, P8328072640662039369.a n = (A087427 (n + 3) : ℚ)

end A087427

/-! ## A087427.P11724563969843908589

`ceil(A037165(n+2)/4)`
-/

namespace A087427.P11724563969843908589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037165 (n + 2) : ℚ) / 4⌉

end

end A087427.P11724563969843908589

namespace A087427

/-- `ceil(A037165(n+2)/4)` -/
def P11724563969843908589.Spec : Prop :=
  ∀ n, P11724563969843908589.a n = A087427 (n + 3)

end A087427

/-! ## A087427.P782081096581733359

`A005097(n+1)*A005097(n+2)`
-/

namespace A087427.P782081096581733359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A005097 (n + 2)

end

end A087427.P782081096581733359

namespace A087427

/-- `A005097(n+1)*A005097(n+2)` -/
def P782081096581733359.Spec : Prop :=
  ∀ n, P782081096581733359.a n = A087427 (n + 3)

end A087427

/-! ## A087427.P10408470566612440990

`A006254(n+1)*A006254(n+2)-A024675(n+1)`
-/

namespace A087427.P10408470566612440990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) * A006254 (n + 2) - A024675 (n + 1)

end

end A087427.P10408470566612440990

namespace A087427

/-- `A006254(n+1)*A006254(n+2)-A024675(n+1)` -/
def P10408470566612440990.Spec : Prop :=
  ∀ n, P10408470566612440990.a n = A087427 (n + 3)

end A087427

/-! ## A087427.P1492967125992239048

`A102781(n+2)*A102781(n+3)`
-/

namespace A087427.P1492967125992239048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2) * A102781 (n + 3)

end

end A087427.P1492967125992239048

namespace A087427

/-- `A102781(n+2)*A102781(n+3)` -/
def P1492967125992239048.Spec : Prop :=
  ∀ n, P1492967125992239048.a n = A087427 (n + 3)

end A087427

/-! ## A087427.P12992837626782562654

`A130290(n+2)*A130290(n+3)`
-/

namespace A087427.P12992837626782562654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) * A130290 (n + 3)

end

end A087427.P12992837626782562654

namespace A087427

/-- `A130290(n+2)*A130290(n+3)` -/
def P12992837626782562654.Spec : Prop :=
  ∀ n, P12992837626782562654.a n = A087427 (n + 3)

end A087427

/-! ## A087427.P16286293525325299731

`floor(p?[2*n+1]/2)*A023022(p?[2*n+5])`
-/

namespace A087427.P16286293525325299731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ * A023022 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A087427.P16286293525325299731

namespace A087427

/-- `floor(p?[2*n+1]/2)*A023022(p?[2*n+5])` -/
def P16286293525325299731.Spec : Prop :=
  ∀ n, P16286293525325299731.a n = A087427 (n + 3)

end A087427

/-! ## A087427.P8287752673939896616

`∏{p}[A006094(n+2), floor(#/2)]`
-/

namespace A087427.P8287752673939896616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(p : ℚ) / 2⌋

end

end A087427.P8287752673939896616

namespace A087427

/-- `∏{p}[A006094(n+2), floor(#/2)]` -/
def P8287752673939896616.Spec : Prop :=
  ∀ n, P8287752673939896616.a n = A087427 (n + 3)

end A087427

/-!
# A087428: a(n) = [(p-1)/2 * (q-1)/2] mod p where p = (n+1)th odd prime, q = n-th odd prime.

The programs for A087428, there is no canonical definition to state claims against.
-/

/-! ## A087428.P12738415136705271777

`A087427(n+3)%A004139(n+1)`
-/

namespace A087428.P12738415136705271777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087427 (n + 3)) (A004139 (n + 1))

end

end A087428.P12738415136705271777

/-! ## A087428.P10428934292035556581

`(A083553(n+2)/4)%A065091(n+2)`
-/

namespace A087428.P10428934292035556581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A083553 (n + 2) : ℚ) / 4)) (A065091 (n + 2))

end

end A087428.P10428934292035556581

/-! ## A087428.P6886018191602018418

`(A099407(n+2)/2)%record[A014963(n+5)]`
-/

namespace A087428.P6886018191602018418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A099407 (n + 2) : ℚ) / 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A087428.P6886018191602018418

/-! ## A087428.P18287397276672982333

`ceil(A037165(n+2)/4)%record[A014963(n+5)]`
-/

namespace A087428.P18287397276672982333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A037165 (n + 2) : ℚ) / 4⌉ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A087428.P18287397276672982333

/-! ## A087428.P8445745088949856829

`A014682(A099407(n+2))%A004139(n+1)`
-/

namespace A087428.P8445745088949856829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 (A099407 (n + 2)).toNat) (A004139 (n + 1))

end

end A087428.P8445745088949856829

/-! ## A087428.P7457092951273235800

`(A005097(n+1)*A005097(n+2))%A008578(n+4)`
-/

namespace A087428.P7457092951273235800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005097 (n + 1) * A005097 (n + 2)) (A008578 (n + 4))

end

end A087428.P7457092951273235800

/-! ## A087428.P16366298108247952972

`(A102781(n+2)*A102781(n+3))%A008578(n+4)`
-/

namespace A087428.P16366298108247952972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102781 (n + 2) * A102781 (n + 3)) (A008578 (n + 4))

end

end A087428.P16366298108247952972

/-! ## A087428.P16225207509766507335

`(A000010(A006094(n+2))/4)%record[A014963(n+5)]`
-/

namespace A087428.P16225207509766507335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000010 (A006094 (n + 2)).toNat : ℚ) / 4)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A087428.P16225207509766507335

/-! ## A087428.P16266019046934104337

`(A000010(A116570(2*(n+1)))/4)%record[A014963(n+5)]`
-/

namespace A087428.P16266019046934104337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000010 (A116570 (2 * (n + 1))).toNat : ℚ) / 4)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A087428.P16266019046934104337

/-! ## A087428.P12117078831438021882

`A318317(A006094(n+2))%A000040(n+3)`
-/

namespace A087428.P12117078831438021882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318317 (A006094 (n + 2)).toNat) (A000040 (n + 3))

end

end A087428.P12117078831438021882

/-!
# A087429: a(n) = 1 if gpf(n) < gpf(n+1), otherwise 0, where gpf = A006530 (greatest prime factor).

The programs for A087429, the canonical program `A087429.P13691814880217108665` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087429 has offset 1).

The definition of A087429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087429.P5608810127200194450

`ceil(Δ[atan(A006530(n+1))])`
-/

namespace A087429.P5608810127200194450
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A006530 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A087429.P5608810127200194450

namespace A087429

/-- `ceil(Δ[atan(A006530(n+1))])` -/
def P5608810127200194450.Spec : Prop :=
  ∀ n, P5608810127200194450.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P16482572984157942336

`ceil(Δ[atan(A061395(n+1))])`
-/

namespace A087429.P16482572984157942336
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A061395 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A087429.P16482572984157942336

namespace A087429

/-- `ceil(Δ[atan(A061395(n+1))])` -/
def P16482572984157942336.Spec : Prop :=
  ∀ n, P16482572984157942336.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P6225807266779949932

`floor(ratio[atan(A006530(2*(n+1)))])`
-/

namespace A087429.P6225807266779949932
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A006530 (2 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A087429.P6225807266779949932

namespace A087429

/-- `floor(ratio[atan(A006530(2*(n+1)))])` -/
def P6225807266779949932.Spec : Prop :=
  ∀ n, P6225807266779949932.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P13691814880217108665

`floor(Δ[1/A006530(2*n+1-n)])²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A087429

/-- `floor(Δ[1/A006530(2*n+1-n)])²` -/
def P13691814880217108665.Spec : Prop :=
  ∀ n, P13691814880217108665.a n = A087429 (n + 1)

theorem P13691814880217108665.correct : P13691814880217108665.Spec := by
  intro n
  simp only [A087429, Nat.add_sub_cancel]

end A087429

/-! ## A087429.P8856090242467411036

`A081437(n)%A074399(n+1)`
-/

namespace A087429.P8856090242467411036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081437 n) (A074399 (n + 1))

end

end A087429.P8856090242467411036

namespace A087429

/-- `A081437(n)%A074399(n+1)` -/
def P8856090242467411036.Spec : Prop :=
  ∀ n, P8856090242467411036.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P6999518613541336599

`A269237(n)%A074399(n+1)`
-/

namespace A087429.P6999518613541336599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269237 n) (A074399 (n + 1))

end

end A087429.P6999518613541336599

namespace A087429

/-- `A269237(n)%A074399(n+1)` -/
def P6999518613541336599.Spec : Prop :=
  ∀ n, P6999518613541336599.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P16953116887300775329

`A000045(floor(ratio[atan(A006530(n+1))]))`
-/

namespace A087429.P16953116887300775329
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A006530 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊f1 (n + 1) / f1 n⌋.toNat

end

end A087429.P16953116887300775329

namespace A087429

/-- `A000045(floor(ratio[atan(A006530(n+1))]))` -/
def P16953116887300775329.Spec : Prop :=
  ∀ n, P16953116887300775329.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P12334491679937652408

`A001221(ceil(ratio[atan(A006530(n+1))]))`
-/

namespace A087429.P12334491679937652408
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A006530 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈f1 (n + 1) / f1 n⌉.toNat

end

end A087429.P12334491679937652408

namespace A087429

/-- `A001221(ceil(ratio[atan(A006530(n+1))]))` -/
def P12334491679937652408.Spec : Prop :=
  ∀ n, P12334491679937652408.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P2375820614001771596

`A001222(ceil(ratio[atan(A006530(n+1))]))`
-/

namespace A087429.P2375820614001771596
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A006530 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈f1 (n + 1) / f1 n⌉.toNat

end

end A087429.P2375820614001771596

namespace A087429

/-- `A001222(ceil(ratio[atan(A006530(n+1))]))` -/
def P2375820614001771596.Spec : Prop :=
  ∀ n, P2375820614001771596.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P6450137626185423311

`A002594(n+1)%A074399(n+1)`
-/

namespace A087429.P6450137626185423311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002594 (n + 1)) (A074399 (n + 1))

end

end A087429.P6450137626185423311

namespace A087429

/-- `A002594(n+1)%A074399(n+1)` -/
def P6450137626185423311.Spec : Prop :=
  ∀ n, P6450137626185423311.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P10155550944975838371

`A039623(n+1)%A074399(n+1)`
-/

namespace A087429.P10155550944975838371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039623 (n + 1)) (A074399 (n + 1))

end

end A087429.P10155550944975838371

namespace A087429

/-- `A039623(n+1)%A074399(n+1)` -/
def P10155550944975838371.Spec : Prop :=
  ∀ n, P10155550944975838371.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P15936946332331157591

`A079414(n+1)%A074399(n+1)`
-/

namespace A087429.P15936946332331157591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079414 (n + 1)) (A074399 (n + 1))

end

end A087429.P15936946332331157591

namespace A087429

/-- `A079414(n+1)%A074399(n+1)` -/
def P15936946332331157591.Spec : Prop :=
  ∀ n, P15936946332331157591.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P17058158537045260154

`A127736(n+1)%A074399(n+1)`
-/

namespace A087429.P17058158537045260154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127736 (n + 1)) (A074399 (n + 1))

end

end A087429.P17058158537045260154

namespace A087429

/-- `A127736(n+1)%A074399(n+1)` -/
def P17058158537045260154.Spec : Prop :=
  ∀ n, P17058158537045260154.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P13724063659773135840

`A128766(n+1)%A074399(n+1)`
-/

namespace A087429.P13724063659773135840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128766 (n + 1)) (A074399 (n + 1))

end

end A087429.P13724063659773135840

namespace A087429

/-- `A128766(n+1)%A074399(n+1)` -/
def P13724063659773135840.Spec : Prop :=
  ∀ n, P13724063659773135840.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P13820431048674678531

`A179865(n+1)%A074399(n+1)`
-/

namespace A087429.P13820431048674678531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179865 (n + 1)) (A074399 (n + 1))

end

end A087429.P13820431048674678531

namespace A087429

/-- `A179865(n+1)%A074399(n+1)` -/
def P13820431048674678531.Spec : Prop :=
  ∀ n, P13820431048674678531.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P2456418161140840773

`A187277(n+1)%A074399(n+1)`
-/

namespace A087429.P2456418161140840773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187277 (n + 1)) (A074399 (n + 1))

end

end A087429.P2456418161140840773

namespace A087429

/-- `A187277(n+1)%A074399(n+1)` -/
def P2456418161140840773.Spec : Prop :=
  ∀ n, P2456418161140840773.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P18279481876763571671

`A192398(n+1)%A074399(n+1)`
-/

namespace A087429.P18279481876763571671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192398 (n + 1)) (A074399 (n + 1))

end

end A087429.P18279481876763571671

namespace A087429

/-- `A192398(n+1)%A074399(n+1)` -/
def P18279481876763571671.Spec : Prop :=
  ∀ n, P18279481876763571671.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P8204559916835458806

`A204557(n+1)%A074399(n+1)`
-/

namespace A087429.P8204559916835458806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204557 (n + 1)) (A074399 (n + 1))

end

end A087429.P8204559916835458806

namespace A087429

/-- `A204557(n+1)%A074399(n+1)` -/
def P8204559916835458806.Spec : Prop :=
  ∀ n, P8204559916835458806.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P10756709217892240501

`A221465(n+1)%A074399(n+1)`
-/

namespace A087429.P10756709217892240501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221465 (n + 1)) (A074399 (n + 1))

end

end A087429.P10756709217892240501

namespace A087429

/-- `A221465(n+1)%A074399(n+1)` -/
def P10756709217892240501.Spec : Prop :=
  ∀ n, P10756709217892240501.a n = A087429 (n + 1)

end A087429

/-! ## A087429.P13648622319944846092

`A253679(n+1)%A074399(n+1)`
-/

namespace A087429.P13648622319944846092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253679 (n + 1)) (A074399 (n + 1))

end

end A087429.P13648622319944846092

namespace A087429

/-- `A253679(n+1)%A074399(n+1)` -/
def P13648622319944846092.Spec : Prop :=
  ∀ n, P13648622319944846092.a n = A087429 (n + 1)

end A087429

/-!
# A087430: Nonprimes n with gpf(n) > gpf(n+1), where gpf=A006530 (greatest prime factor).

The programs for A087430, the canonical program `A087430.P17348898548535610470` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087430 has offset 1).

The definition of A087430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7732 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087430.P17348898548535610470

`filter[A070087(n+1), A005171(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A087430

/-- `filter[A070087(n+1), A005171(#)]` -/
def P17348898548535610470.Spec : Prop :=
  ∀ n, P17348898548535610470.a n = A087430 (n + 1)

theorem P17348898548535610470.correct : P17348898548535610470.Spec := by
  intro n
  simp only [A087430, Nat.add_sub_cancel]

end A087430

/-! ## A087430.P12147051821063411751

`filter[A070087(n+1), A066247(#)]`
-/

namespace A087430.P12147051821063411751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A087430.P12147051821063411751

namespace A087430

/-- `filter[A070087(n+1), A066247(#)]` -/
def P12147051821063411751.Spec : Prop :=
  ∀ n, P12147051821063411751.a n = A087430 (n + 1)

end A087430

/-! ## A087430.P17487504035532164184

`filter[A070087(n+1), A202238(#)]`
-/

namespace A087430.P17487504035532164184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A087430.P17487504035532164184

namespace A087430

/-- `filter[A070087(n+1), A202238(#)]` -/
def P17487504035532164184.Spec : Prop :=
  ∀ n, P17487504035532164184.a n = A087430 (n + 1)

end A087430

/-! ## A087430.P902393632041826385

`filter[A070087(n+1), A292438(#)]`
-/

namespace A087430.P902393632041826385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A087430.P902393632041826385

namespace A087430

/-- `filter[A070087(n+1), A292438(#)]` -/
def P902393632041826385.Spec : Prop :=
  ∀ n, P902393632041826385.a n = A087430 (n + 1)

end A087430

/-! ## A087430.P14333416699052191988

`∩[A068780(n+1), A070087(n+1)]`
-/

namespace A087430.P14333416699052191988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P14333416699052191988

namespace A087430

/-- `∩[A068780(n+1), A070087(n+1)]` -/
def P14333416699052191988.Spec : Prop :=
  ∀ n, (P14333416699052191988.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P8643773508855501025

`∩[A070087(n+1), A164276(n+1)]`
-/

namespace A087430.P8643773508855501025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P8643773508855501025

namespace A087430

/-- `∩[A070087(n+1), A164276(n+1)]` -/
def P8643773508855501025.Spec : Prop :=
  ∀ n, (P8643773508855501025.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P6756121238566231561

`∩[A070087(n+1), A138592(n+1)]`
-/

namespace A087430.P6756121238566231561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P6756121238566231561

namespace A087430

/-- `∩[A070087(n+1), A138592(n+1)]` -/
def P6756121238566231561.Spec : Prop :=
  ∀ n, (P6756121238566231561.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P9423000732388067855

`∩[A070087(n+1), A343311(n+1)]`
-/

namespace A087430.P9423000732388067855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P9423000732388067855

namespace A087430

/-- `∩[A070087(n+1), A343311(n+1)]` -/
def P9423000732388067855.Spec : Prop :=
  ∀ n, (P9423000732388067855.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P11979645702092688059

`∩[A070087(n+1), A387319(n+1)]`
-/

namespace A087430.P11979645702092688059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P11979645702092688059

namespace A087430

/-- `∩[A070087(n+1), A387319(n+1)]` -/
def P11979645702092688059.Spec : Prop :=
  ∀ n, (P11979645702092688059.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P5996781706912703560

`∩[A002808(n+1), A070087(n+1)]`
-/

namespace A087430.P5996781706912703560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P5996781706912703560

namespace A087430

/-- `∩[A002808(n+1), A070087(n+1)]` -/
def P5996781706912703560.Spec : Prop :=
  ∀ n, (P5996781706912703560.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P10687801846615049161

`∩[A056653(n+1), A070087(n+1)]`
-/

namespace A087430.P10687801846615049161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P10687801846615049161

namespace A087430

/-- `∩[A056653(n+1), A070087(n+1)]` -/
def P10687801846615049161.Spec : Prop :=
  ∀ n, (P10687801846615049161.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P16529338691250361929

`∩[A018252(n+1), A070087(n+1)]`
-/

namespace A087430.P16529338691250361929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P16529338691250361929

namespace A087430

/-- `∩[A018252(n+1), A070087(n+1)]` -/
def P16529338691250361929.Spec : Prop :=
  ∀ n, (P16529338691250361929.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P15966331738574139112

`∩[A065090(n+1), A070087(n+1)]`
-/

namespace A087430.P15966331738574139112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P15966331738574139112

namespace A087430

/-- `∩[A065090(n+1), A070087(n+1)]` -/
def P15966331738574139112.Spec : Prop :=
  ∀ n, (P15966331738574139112.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P4798654125818087559

`∩[A070087(n+1), A141468(n+1)]`
-/

namespace A087430.P4798654125818087559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087430.P4798654125818087559

namespace A087430

/-- `∩[A070087(n+1), A141468(n+1)]` -/
def P4798654125818087559.Spec : Prop :=
  ∀ n, (P4798654125818087559.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P8911210435966706248

`eq[A074399(n+1), A085392(n+1)]+1`
-/

namespace A087430.P8911210435966706248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087430.P8911210435966706248

namespace A087430

/-- `eq[A074399(n+1), A085392(n+1)]+1` -/
def P8911210435966706248.Spec : Prop :=
  ∀ n, (P8911210435966706248.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P242017231622977550

`lt[A076566(n+1), A085392(n+1)]+1`
-/

namespace A087430.P242017231622977550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A087430.P242017231622977550

namespace A087430

/-- `lt[A076566(n+1), A085392(n+1)]+1` -/
def P242017231622977550.Spec : Prop :=
  ∀ n, (P242017231622977550.a n : ℤ) = A087430 (n + 1)

end A087430

/-! ## A087430.P8558949485536310739

`A061767(eq[A074399(n+1), A085392(n+1)])`
-/

namespace A087430.P8558949485536310739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087430.P8558949485536310739

namespace A087430

/-- `A061767(eq[A074399(n+1), A085392(n+1)])` -/
def P8558949485536310739.Spec : Prop :=
  ∀ n, P8558949485536310739.a n = A087430 (n + 1)

end A087430

/-! ## A087430.P11982994774524368795

`A153152(eq[A074399(n+1), A085392(n+1)])`
-/

namespace A087430.P11982994774524368795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A087430.P11982994774524368795

namespace A087430

/-- `A153152(eq[A074399(n+1), A085392(n+1)])` -/
def P11982994774524368795.Spec : Prop :=
  ∀ n, P11982994774524368795.a n = A087430 (n + 1)

end A087430

/-! ## A087430.P9431968155849127007

`A061767(lt[A076566(n+1), A085392(n+1)])`
-/

namespace A087430.P9431968155849127007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087430.P9431968155849127007

namespace A087430

/-- `A061767(lt[A076566(n+1), A085392(n+1)])` -/
def P9431968155849127007.Spec : Prop :=
  ∀ n, P9431968155849127007.a n = A087430 (n + 1)

end A087430

/-! ## A087430.P15149565104989228690

`eq[1, A174869(A181569(n+1))]+2`
-/

namespace A087430.P15149565104989228690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (A181569 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A087430.P15149565104989228690

namespace A087430

/-- `eq[1, A174869(A181569(n+1))]+2` -/
def P15149565104989228690.Spec : Prop :=
  ∀ n, (P15149565104989228690.a n : ℤ) = A087430 (n + 1)

end A087430

/-!
# A087431: a(n) = 0^n/2 + 2^n*(n^2+n+2)/4.

The programs for A087431, the canonical program `A087431.P10390432343491526938` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087431 has offset 0).

The definition of A087431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087431.P10390432343491526938

`ceil((∑[n]+1)*2^(n-1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087431

/-- `ceil((∑[n]+1)*2^(n-1))` -/
def P10390432343491526938.Spec : Prop :=
  ∀ n, P10390432343491526938.a n = A087431 n

theorem P10390432343491526938.correct : P10390432343491526938.Spec := by
  intro n
  simp only [A087431]

end A087431

/-! ## A087431.P9961654157093921338

`(∑[n]+1)*lcm(10, 2^n)/10`
-/

namespace A087431.P9961654157093921338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) * ((Nat.lcm 10 (2 ^ n) : ℚ) / 10)

end

end A087431.P9961654157093921338

namespace A087431

/-- `(∑[n]+1)*lcm(10, 2^n)/10` -/
def P9961654157093921338.Spec : Prop :=
  ∀ n, P9961654157093921338.a n = (A087431 n : ℚ)

end A087431

/-! ## A087431.P3540399390097152563

`2*a(n-1)+n*2^(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A087431.P3540399390097152563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A087431.P3540399390097152563

namespace A087431

/-- `2*a(n-1)+n*2^(n-1)` -/
def P3540399390097152563.Spec : Prop :=
  ∀ n, P3540399390097152563.a n = (A087431 n : ℚ)

end A087431

/-! ## A087431.P9055394917780301412

`∑[A309294(n+1)]+1`
-/

namespace A087431.P9055394917780301412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087431.P9055394917780301412

namespace A087431

/-- `∑[A309294(n+1)]+1` -/
def P9055394917780301412.Spec : Prop :=
  ∀ n, P9055394917780301412.a n = A087431 n

end A087431

/-! ## A087431.P14635350304973937084

`(∑[n]+1)*A011782(n)`
-/

namespace A087431.P14635350304973937084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A011782 n

end

end A087431.P14635350304973937084

namespace A087431

/-- `(∑[n]+1)*A011782(n)` -/
def P14635350304973937084.Spec : Prop :=
  ∀ n, P14635350304973937084.a n = A087431 n

end A087431

/-! ## A087431.P7847486734764350675

`A001787(n)+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A087431.P7847486734764350675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001787 n + 2 * a (n - 1)

end

end A087431.P7847486734764350675

namespace A087431

/-- `A001787(n)+2*a(n-1)` -/
def P7847486734764350675.Spec : Prop :=
  ∀ n, P7847486734764350675.a n = A087431 n

end A087431

/-! ## A087431.P1895181709689149000

`Δ[A131577(n)]+2^(n-1)*∑[n]`
-/

namespace A087431.P1895181709689149000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A087431.P1895181709689149000

namespace A087431

/-- `Δ[A131577(n)]+2^(n-1)*∑[n]` -/
def P1895181709689149000.Spec : Prop :=
  ∀ n, P1895181709689149000.a n = (A087431 n : ℚ)

end A087431

/-! ## A087431.P12367482728062180804

`A011782(n)+A001788(n)`
-/

namespace A087431.P12367482728062180804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A001788 n

end

end A087431.P12367482728062180804

namespace A087431

/-- `A011782(n)+A001788(n)` -/
def P12367482728062180804.Spec : Prop :=
  ∀ n, P12367482728062180804.a n = A087431 n

end A087431

/-! ## A087431.P7448799691825145393

`A080929(n)-A001787(n)`
-/

namespace A087431.P7448799691825145393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 n - A001787 n

end

end A087431.P7448799691825145393

namespace A087431

/-- `A080929(n)-A001787(n)` -/
def P7448799691825145393.Spec : Prop :=
  ∀ n, P7448799691825145393.a n = A087431 n

end A087431

/-! ## A087431.P10109827839107965553

`A042950(n)-A127276(n)`
-/

namespace A087431.P10109827839107965553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A127276 n

end

end A087431.P10109827839107965553

namespace A087431

/-- `A042950(n)-A127276(n)` -/
def P10109827839107965553.Spec : Prop :=
  ∀ n, P10109827839107965553.a n = A087431 n

end A087431

/-! ## A087431.P7789452935317753486

`∑[A309294(A028310(n)+1)]`
-/

namespace A087431.P7789452935317753486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309294 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087431.P7789452935317753486

namespace A087431

/-- `∑[A309294(A028310(n)+1)]` -/
def P7789452935317753486.Spec : Prop :=
  ∀ n, P7789452935317753486.a n = A087431 n

end A087431

/-! ## A087431.P4327794419900687393

`A001788(n)+Δ[A131577(n)]`
-/

namespace A087431.P4327794419900687393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (f1 (n + 1) - f1 n)

end

end A087431.P4327794419900687393

namespace A087431

/-- `A001788(n)+Δ[A131577(n)]` -/
def P4327794419900687393.Spec : Prop :=
  ∀ n, P4327794419900687393.a n = A087431 n

end A087431

/-! ## A087431.P1322792870214416942

`Δ[A056469(n)]*A000124(n)`
-/

namespace A087431.P1322792870214416942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000124 n

end

end A087431.P1322792870214416942

namespace A087431

/-- `Δ[A056469(n)]*A000124(n)` -/
def P1322792870214416942.Spec : Prop :=
  ∀ n, P1322792870214416942.a n = A087431 n

end A087431

/-! ## A087431.P11834831105281817093

`A166444(n+1)+A001788(n)`
-/

namespace A087431.P11834831105281817093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + A001788 n

end

end A087431.P11834831105281817093

namespace A087431

/-- `A166444(n+1)+A001788(n)` -/
def P11834831105281817093.Spec : Prop :=
  ∀ n, P11834831105281817093.a n = A087431 n

end A087431

/-! ## A087431.P7007925917890902762

`A178987(n)+A128135(n+1)`
-/

namespace A087431.P7007925917890902762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A128135 (n + 1)

end

end A087431.P7007925917890902762

namespace A087431

/-- `A178987(n)+A128135(n+1)` -/
def P7007925917890902762.Spec : Prop :=
  ∀ n, P7007925917890902762.a n = A087431 n

end A087431

/-! ## A087431.P4254428793286603714

`A104270(n+1)-A131577(n)`
-/

namespace A087431.P4254428793286603714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) - A131577 n

end

end A087431.P4254428793286603714

namespace A087431

/-- `A104270(n+1)-A131577(n)` -/
def P4254428793286603714.Spec : Prop :=
  ∀ n, P4254428793286603714.a n = A087431 n

end A087431

/-! ## A087431.P15125481013851172930

`A000124(n)*A166444(n+1)`
-/

namespace A087431.P15125481013851172930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A166444 (n + 1)

end

end A087431.P15125481013851172930

namespace A087431

/-- `A000124(n)*A166444(n+1)` -/
def P15125481013851172930.Spec : Prop :=
  ∀ n, P15125481013851172930.a n = A087431 n

end A087431

/-! ## A087431.P1828311618569690682

`A011782(n)*A152947(n+2)`
-/

namespace A087431.P1828311618569690682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A152947 (n + 2)

end

end A087431.P1828311618569690682

namespace A087431

/-- `A011782(n)*A152947(n+2)` -/
def P1828311618569690682.Spec : Prop :=
  ∀ n, P1828311618569690682.a n = A087431 n

end A087431

/-! ## A087431.P1010563101387817308

`A080929(n)-A036289(n)/2`
-/

namespace A087431.P1010563101387817308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080929 n : ℚ) - (A036289 n : ℚ) / 2

end

end A087431.P1010563101387817308

namespace A087431

/-- `A080929(n)-A036289(n)/2` -/
def P1010563101387817308.Spec : Prop :=
  ∀ n, P1010563101387817308.a n = (A087431 n : ℚ)

end A087431

/-! ## A087431.P12790166766117351251

`A011782(n)*A106247(2*n)`
-/

namespace A087431.P12790166766117351251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A106247 (2 * n)

end

end A087431.P12790166766117351251

namespace A087431

/-- `A011782(n)*A106247(2*n)` -/
def P12790166766117351251.Spec : Prop :=
  ∀ n, P12790166766117351251.a n = A087431 n

end A087431

/-!
# A087432: Expansion of 1+x*(1-x-4*x^2)/((1+x)*(1-2*x)*(1-3*x)).

The programs for A087432, the canonical program `A087432.P4825622516273733442` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087432 has offset 0).

The definition of A087432 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+2x^3)/(1-4x+x^2+6x^3))` (program `A087432.P4825622516273733442`, by `A087432.P4825622516273733442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087432.P4825622516273733442

`ogf((1-3x+2x^3)/(1-4x+x^2+6x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087432

/-- `ogf((1-3x+2x^3)/(1-4x+x^2+6x^3))` -/
def P4825622516273733442.Spec : Prop :=
  ∀ n, P4825622516273733442.a n = A087432 n

theorem P4825622516273733442.correct : P4825622516273733442.Spec := by
  intro n
  simp only [A087432]

end A087432

/-! ## A087432.P5807230655382209770

`6*a(n-1)-9*a(n-2)-4*a(n-3)+12*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7, a(4)=19`
-/

namespace A087432.P5807230655382209770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7, 19] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) - 4 * a (n - 3) + 12 * a (n - 4)

end

end A087432.P5807230655382209770

namespace A087432

/-- `6*a(n-1)-9*a(n-2)-4*a(n-3)+12*a(n-4)` -/
def P5807230655382209770.Spec : Prop :=
  ∀ n, P5807230655382209770.a n = A087432 n

end A087432

/-! ## A087432.P6892353290901519059

`∑[3*a(n-1)]+2^n-floor(∑[2^n/3])` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A087432.P6892353290901519059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  3 * f1 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n : ℕ) : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

end

end A087432.P6892353290901519059

namespace A087432

/-- `∑[3*a(n-1)]+2^n-floor(∑[2^n/3])` -/
def P6892353290901519059.Spec : Prop :=
  ∀ n, P6892353290901519059.a n = A087432 n

end A087432

/-! ## A087432.P5730457378364551179

`ceil(2^n/3)+2*a(n-1)-n%2-(2^(n-1)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A087432.P5730457378364551179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (⌈(2 ^ n : ℚ) / 3⌉ : ℚ) + (2 * a (n - 1) - ((n % 2 : ℕ) : ℚ)) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A087432.P5730457378364551179

namespace A087432

/-- `ceil(2^n/3)+2*a(n-1)-n%2-(2^(n-1)-a(n-1))` -/
def P5730457378364551179.Spec : Prop :=
  ∀ n, P5730457378364551179.a n = (A087432 n : ℚ)

end A087432

/-! ## A087432.P1201320496354244593

`A087211(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A087432.P1201320496354244593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A087211 (n - 1) + a (n - 1)

end

end A087432.P1201320496354244593

namespace A087432

/-- `A087211(n-1)+a(n-1)` -/
def P1201320496354244593.Spec : Prop :=
  ∀ n, P1201320496354244593.a n = A087432 n

end A087432

/-! ## A087432.P15402122124323940559

`A005578(n)+A124302(n)-1`
-/

namespace A087432.P15402122124323940559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + (A124302 n - 1)

end

end A087432.P15402122124323940559

namespace A087432

/-- `A005578(n)+A124302(n)-1` -/
def P15402122124323940559.Spec : Prop :=
  ∀ n, P15402122124323940559.a n = A087432 n

end A087432

/-! ## A087432.P8806049629908446991

`A000225(n)+A124302(n)-A000975(n)`
-/

namespace A087432.P8806049629908446991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A124302 n - A000975 n)

end

end A087432.P8806049629908446991

namespace A087432

/-- `A000225(n)+A124302(n)-A000975(n)` -/
def P8806049629908446991.Spec : Prop :=
  ∀ n, P8806049629908446991.a n = A087432 n

end A087432

/-! ## A087432.P3763311592697027840

`A000225(n)+A124302(n)-∑[A001045(n)]`
-/

namespace A087432.P3763311592697027840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A124302 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087432.P3763311592697027840

namespace A087432

/-- `A000225(n)+A124302(n)-∑[A001045(n)]` -/
def P3763311592697027840.Spec : Prop :=
  ∀ n, P3763311592697027840.a n = A087432 n

end A087432

/-! ## A087432.P5902400110016565977

`ceil((∑[floor(3^(n-1))]+2^n)/3)`
-/

namespace A087432.P5902400110016565977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ) : ℤ) : ℚ) / 3⌉

end

end A087432.P5902400110016565977

namespace A087432

/-- `ceil((∑[floor(3^(n-1))]+2^n)/3)` -/
def P5902400110016565977.Spec : Prop :=
  ∀ n, P5902400110016565977.a n = A087432 n

end A087432

/-! ## A087432.P11213471469605770637

`Δ[A093379(n)]`
-/

namespace A087432.P11213471469605770637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087432.P11213471469605770637

namespace A087432

/-- `Δ[A093379(n)]` -/
def P11213471469605770637.Spec : Prop :=
  ∀ n, P11213471469605770637.a n = A087432 n

end A087432

/-! ## A087432.P10269406144383299522

`round(A099754(n)/3)`
-/

namespace A087432.P10269406144383299522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A099754 n : ℚ) / 3)

end

end A087432.P10269406144383299522

namespace A087432

/-- `round(A099754(n)/3)` -/
def P10269406144383299522.Spec : Prop :=
  ∀ n, P10269406144383299522.a n = A087432 n

end A087432

/-! ## A087432.P4822279071277925418

`A085281(n)-A094039(n)`
-/

namespace A087432.P4822279071277925418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n - A094039 n

end

end A087432.P4822279071277925418

namespace A087432

/-- `A085281(n)-A094039(n)` -/
def P4822279071277925418.Spec : Prop :=
  ∀ n, P4822279071277925418.a n = A087432 n

end A087432

/-! ## A087432.P10933161686580806350

`A093379(n+1)-A093379(n)`
-/

namespace A087432.P10933161686580806350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093379 (n + 1) - A093379 n

end

end A087432.P10933161686580806350

namespace A087432

/-- `A093379(n+1)-A093379(n)` -/
def P10933161686580806350.Spec : Prop :=
  ∀ n, P10933161686580806350.a n = A087432 n

end A087432

/-! ## A087432.P17144875978569482734

`A085279(n)-2*A093379(n)`
-/

namespace A087432.P17144875978569482734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 n - 2 * A093379 n

end

end A087432.P17144875978569482734

namespace A087432

/-- `A085279(n)-2*A093379(n)` -/
def P17144875978569482734.Spec : Prop :=
  ∀ n, P17144875978569482734.a n = A087432 n

end A087432

/-! ## A087432.P8607872845038834531

`floor(A254028(n)/6)`
-/

namespace A087432.P8607872845038834531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254028 n : ℚ) / 6⌋

end

end A087432.P8607872845038834531

namespace A087432

/-- `floor(A254028(n)/6)` -/
def P8607872845038834531.Spec : Prop :=
  ∀ n, P8607872845038834531.a n = A087432 n

end A087432

/-! ## A087432.P4132621844339902043

`A000079(n)+A004054(n)-A003946(n)`
-/

namespace A087432.P4132621844339902043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A004054 n - A003946 n)

end

end A087432.P4132621844339902043

namespace A087432

/-- `A000079(n)+A004054(n)-A003946(n)` -/
def P4132621844339902043.Spec : Prop :=
  ∀ n, P4132621844339902043.a n = A087432 n

end A087432

/-! ## A087432.P17242685971968181795

`A025192(n)+Δ[A001045(n)-A015518(n)]`
-/

namespace A087432.P17242685971968181795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A015518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + (f1 (n + 1) - f1 n)

end

end A087432.P17242685971968181795

namespace A087432

/-- `A025192(n)+Δ[A001045(n)-A015518(n)]` -/
def P17242685971968181795.Spec : Prop :=
  ∀ n, P17242685971968181795.a n = A087432 n

end A087432

/-! ## A087432.P1440605827147188635

`A094039(n+1)+A025192(n)-A000244(n)`
-/

namespace A087432.P1440605827147188635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094039 (n + 1) + (A025192 n - A000244 n)

end

end A087432.P1440605827147188635

namespace A087432

/-- `A094039(n+1)+A025192(n)-A000244(n)` -/
def P1440605827147188635.Spec : Prop :=
  ∀ n, P1440605827147188635.a n = A087432 n

end A087432

/-! ## A087432.P2506200004786283945

`A001045(n+1)+A025192(n)-A094039(n+1)`
-/

namespace A087432.P2506200004786283945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A025192 n - A094039 (n + 1))

end

end A087432.P2506200004786283945

namespace A087432

/-- `A001045(n+1)+A025192(n)-A094039(n+1)` -/
def P2506200004786283945.Spec : Prop :=
  ∀ n, P2506200004786283945.a n = A087432 n

end A087432

/-!
# A087433: Expansion of g.f.: (1-2*x)*(1-4*x+x^2)/((1-x)*(1-3*x)*(1-4*x)).

The programs for A087433, the canonical program `A087433.P8347538860456945563` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087433 has offset 0).

The definition of A087433 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+9x^2-2x^3)/(1-8x+19x^2-12x^3))` (program `A087433.P8347538860456945563`, by `A087433.P8347538860456945563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087433.P8347538860456945563

`ogf((1-6x+9x^2-2x^3)/(1-8x+19x^2-12x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087433

/-- `ogf((1-6x+9x^2-2x^3)/(1-8x+19x^2-12x^3))` -/
def P8347538860456945563.Spec : Prop :=
  ∀ n, P8347538860456945563.a n = A087433 n

theorem P8347538860456945563.correct : P8347538860456945563.Spec := by
  intro n
  simp only [A087433]

end A087433

/-! ## A087433.P13544932972812539470

`8*a(n-1)-19*a(n-2)+12*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`
-/

namespace A087433.P13544932972812539470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20] fun n a =>
  8 * a (n - 1) - 19 * a (n - 2) + 12 * a (n - 3)

end

end A087433.P13544932972812539470

namespace A087433

/-- `8*a(n-1)-19*a(n-2)+12*a(n-3)` -/
def P13544932972812539470.Spec : Prop :=
  ∀ n, P13544932972812539470.a n = A087433 n

end A087433

/-! ## A087433.P10981492185933125760

`A036557(2*n)`
-/

namespace A087433.P10981492185933125760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n)

end

end A087433.P10981492185933125760

namespace A087433

/-- `A036557(2*n)` -/
def P10981492185933125760.Spec : Prop :=
  ∀ n, P10981492185933125760.a n = A087433 n

end A087433

/-! ## A087433.P549923976984048612

`A001045(comp[2*(n+1)])+ceil(3^(n-1))`
-/

namespace A087433.P549923976984048612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A087433.P549923976984048612

namespace A087433

/-- `A001045(comp[2*(n+1)])+ceil(3^(n-1))` -/
def P549923976984048612.Spec : Prop :=
  ∀ n, P549923976984048612.a n = A087433 n

end A087433

/-! ## A087433.P17938543364892689956

`A006095(n)+ceil(2^(n-1)+3^(n-1))`
-/

namespace A087433.P17938543364892689956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A087433.P17938543364892689956

namespace A087433

/-- `A006095(n)+ceil(2^(n-1)+3^(n-1))` -/
def P17938543364892689956.Spec : Prop :=
  ∀ n, P17938543364892689956.a n = A087433 n

end A087433

/-! ## A087433.P107413944274765191

`Δ[A000392(n)]+(2^n+1)*(2^n+2)/6`
-/

namespace A087433.P107413944274765191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6)

end

end A087433.P107413944274765191

namespace A087433

/-- `Δ[A000392(n)]+(2^n+1)*(2^n+2)/6` -/
def P107413944274765191.Spec : Prop :=
  ∀ n, P107413944274765191.a n = (A087433 n : ℚ)

end A087433

/-! ## A087433.P14670464609402220028

`record[A036557(A014681(n))]`
-/

namespace A087433.P14670464609402220028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087433.P14670464609402220028

namespace A087433

/-- `record[A036557(A014681(n))]` -/
def P14670464609402220028.Spec : Prop :=
  ∀ n, P14670464609402220028.a n = A087433 n

end A087433

/-! ## A087433.P8502303201212002357

`record[A036557(A029578(n))]`
-/

namespace A087433.P8502303201212002357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087433.P8502303201212002357

namespace A087433

/-- `record[A036557(A029578(n))]` -/
def P8502303201212002357.Spec : Prop :=
  ∀ n, P8502303201212002357.a n = A087433 n

end A087433

/-! ## A087433.P10633467301940125524

`record[A036557(A110090(n))]`
-/

namespace A087433.P10633467301940125524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A110090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087433.P10633467301940125524

namespace A087433

/-- `record[A036557(A110090(n))]` -/
def P10633467301940125524.Spec : Prop :=
  ∀ n, P10633467301940125524.a n = A087433 n

end A087433

/-! ## A087433.P11744160028940350278

`record[A036557(A153733(n))]`
-/

namespace A087433.P11744160028940350278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087433.P11744160028940350278

namespace A087433

/-- `record[A036557(A153733(n))]` -/
def P11744160028940350278.Spec : Prop :=
  ∀ n, P11744160028940350278.a n = A087433 n

end A087433

/-! ## A087433.P2146617627105364439

`A085281(n)+A006095(n)`
-/

namespace A087433.P2146617627105364439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n + A006095 n

end

end A087433.P2146617627105364439

namespace A087433

/-- `A085281(n)+A006095(n)` -/
def P2146617627105364439.Spec : Prop :=
  ∀ n, P2146617627105364439.a n = A087433 n

end A087433

/-! ## A087433.P14108815416674526677

`A140431(n)+A054881(n)`
-/

namespace A087433.P14108815416674526677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140431 n + A054881 n

end

end A087433.P14108815416674526677

namespace A087433

/-- `A140431(n)+A054881(n)` -/
def P14108815416674526677.Spec : Prop :=
  ∀ n, P14108815416674526677.a n = A087433 n

end A087433

/-! ## A087433.P328379663589485951

`record[A036557(A006257(n)+1)]`
-/

namespace A087433.P328379663589485951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087433.P328379663589485951

namespace A087433

/-- `record[A036557(A006257(n)+1)]` -/
def P328379663589485951.Spec : Prop :=
  ∀ n, P328379663589485951.a n = A087433 n

end A087433

/-! ## A087433.P6810459006885386328

`record[A036557(A093411(n)+1)]`
-/

namespace A087433.P6810459006885386328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A093411 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087433.P6810459006885386328

namespace A087433

/-- `record[A036557(A093411(n)+1)]` -/
def P6810459006885386328.Spec : Prop :=
  ∀ n, P6810459006885386328.a n = A087433 n

end A087433

/-! ## A087433.P448252928996189483

`A007581(n)+Δ[A000392(n)]`
-/

namespace A087433.P448252928996189483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n + (f1 (n + 1) - f1 n)

end

end A087433.P448252928996189483

namespace A087433

/-- `A007581(n)+Δ[A000392(n)]` -/
def P448252928996189483.Spec : Prop :=
  ∀ n, P448252928996189483.a n = A087433 n

end A087433

/-! ## A087433.P7428295702328362817

`A175992(A133707(n+1))+A036557(n+n)`
-/

namespace A087433.P7428295702328362817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175992 (A133707 (n + 1)).toNat + A036557 (n + n)

end

end A087433.P7428295702328362817

namespace A087433

/-- `A175992(A133707(n+1))+A036557(n+n)` -/
def P7428295702328362817.Spec : Prop :=
  ∀ n, P7428295702328362817.a n = A087433 n

end A087433

/-! ## A087433.P6450583375717171382

`A000392(n+1)+A007581(n)-A000392(n)`
-/

namespace A087433.P6450583375717171382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + (A007581 n - A000392 n)

end

end A087433.P6450583375717171382

namespace A087433

/-- `A000392(n+1)+A007581(n)-A000392(n)` -/
def P6450583375717171382.Spec : Prop :=
  ∀ n, P6450583375717171382.a n = A087433 n

end A087433

/-! ## A087433.P4276397720007707501

`A000392(n+1)+A124303(n+1)-A000392(n)`
-/

namespace A087433.P4276397720007707501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + (A124303 (n + 1) - A000392 n)

end

end A087433.P4276397720007707501

namespace A087433

/-- `A000392(n+1)+A124303(n+1)-A000392(n)` -/
def P4276397720007707501.Spec : Prop :=
  ∀ n, P4276397720007707501.a n = A087433 n

end A087433

/-! ## A087433.P1220794585936476212

`A074324(A004273(n))+A001045(A004273(n))`
-/

namespace A087433.P1220794585936476212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A004273 n).toNat + A001045 (A004273 n).toNat

end

end A087433.P1220794585936476212

namespace A087433

/-- `A074324(A004273(n))+A001045(A004273(n))` -/
def P1220794585936476212.Spec : Prop :=
  ∀ n, P1220794585936476212.a n = A087433 n

end A087433

/-! ## A087433.P3805256244903265169

`record[A305750(n)-Δ[A304974(n)]]`
-/

namespace A087433.P3805256244903265169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087433.P3805256244903265169

namespace A087433

/-- `record[A305750(n)-Δ[A304974(n)]]` -/
def P3805256244903265169.Spec : Prop :=
  ∀ n, P3805256244903265169.a n = A087433 n

end A087433

/-!
# A087434: Number of brilliant numbers whose prime factors each have n digits.

The programs for A087434, there is no canonical definition to state claims against.
-/

/-! ## A087434.P12479918628984397964

`A000217(A006879(n+1))`
-/

namespace A087434.P12479918628984397964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A006879 (n + 1)).toNat

end

end A087434.P12479918628984397964

/-! ## A087434.P11225715821227801940

`C(Δ[A006880(n)]+1, 2)`
-/

namespace A087434.P11225715821227801940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A087434.P11225715821227801940

/-! ## A087434.P5218812220140583212

`C(Δ[A090226(n+1)]+1, 2)`
-/

namespace A087434.P5218812220140583212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A087434.P5218812220140583212

/-! ## A087434.P12657068653841979215

`C(Δ[A122121(2*n)]+1, 2)`
-/

namespace A087434.P12657068653841979215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A087434.P12657068653841979215

/-! ## A087434.P13005519131461996871

`C(Δ[A058289(n)-A058290(n)]+1, 2)`
-/

namespace A087434.P13005519131461996871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058289 n - A058290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2

end

end A087434.P13005519131461996871

/-!
# A087435: Partial sums of A087434.

The programs for A087435, there is no canonical definition to state claims against.
-/

/-! ## A087435.P3922003762127688980

`∑[A087434(n+1)]`
-/

namespace A087435.P3922003762127688980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087435.P3922003762127688980

/-! ## A087435.P4962730913527534912

`∑[record[A087434(A154958(n))]]`
-/

namespace A087435.P4962730913527534912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087434 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087435.P4962730913527534912

/-! ## A087435.P13061023811762651779

`∑[record[A087434(A195663(n))]]`
-/

namespace A087435.P13061023811762651779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087434 (A195663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087435.P13061023811762651779

/-! ## A087435.P9230472974090775650

`A086846(2*(n+1))`
-/

namespace A087435.P9230472974090775650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086846 (2 * (n + 1))

end

end A087435.P9230472974090775650

/-!
# A087436: Number of odd prime factors of n, counted with repetitions.

The programs for A087436, the canonical program `A087436.P13287701826401831056` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087436 has offset 1).

The definition of A087436 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087436.P9840127934673083956

`A001222(A000265(n+1))`
-/

namespace A087436.P9840127934673083956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (n + 1)).toNat

end

end A087436.P9840127934673083956

namespace A087436

/-- `A001222(A000265(n+1))` -/
def P9840127934673083956.Spec : Prop :=
  ∀ n, P9840127934673083956.a n = A087436 (n + 1)

end A087436

/-! ## A087436.P13287701826401831056

`A001222(n+1)-A007814(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A087436

/-- `A001222(n+1)-A007814(n+1)` -/
def P13287701826401831056.Spec : Prop :=
  ∀ n, P13287701826401831056.a n = A087436 (n + 1)

theorem P13287701826401831056.correct : P13287701826401831056.Spec := by
  intro n
  simp only [A087436, Nat.add_sub_cancel]

end A087436

/-! ## A087436.P17000897754869263790

`∑{e}[n+1, #]-val(n+1, 2)`
-/

namespace A087436.P17000897754869263790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A087436.P17000897754869263790

namespace A087436

/-- `∑{e}[n+1, #]-val(n+1, 2)` -/
def P17000897754869263790.Spec : Prop :=
  ∀ n, P17000897754869263790.a n = A087436 (n + 1)

end A087436

/-! ## A087436.P2661787155400396506

`∑{e}[(n+1)/2^val(n+1, 2), #]`
-/

namespace A087436.P2661787155400396506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A087436.P2661787155400396506

namespace A087436

/-- `∑{e}[(n+1)/2^val(n+1, 2), #]` -/
def P2661787155400396506.Spec : Prop :=
  ∀ n, (P2661787155400396506.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P2329819456735703743

`∑{e}[(n+1)/and(n+1, -(n+1)), #]`
-/

namespace A087436.P2329819456735703743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A087436.P2329819456735703743

namespace A087436

/-- `∑{e}[(n+1)/and(n+1, -(n+1)), #]` -/
def P2329819456735703743.Spec : Prop :=
  ∀ n, (P2329819456735703743.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P12987701268797577689

`∑{e}[(n+1)/or(n+1, -(n+1)), #]`
-/

namespace A087436.P12987701268797577689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A087436.P12987701268797577689

namespace A087436

/-- `∑{e}[(n+1)/or(n+1, -(n+1)), #]` -/
def P12987701268797577689.Spec : Prop :=
  ∀ n, (P12987701268797577689.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P17369153256764889795

`∑{e}[n+1, #]-log2(and(n+1, -(n+1)))`
-/

namespace A087436.P17369153256764889795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) - Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

end

end A087436.P17369153256764889795

namespace A087436

/-- `∑{e}[n+1, #]-log2(and(n+1, -(n+1)))` -/
def P17369153256764889795.Spec : Prop :=
  ∀ n, P17369153256764889795.a n = (A087436 (n + 1) : ℝ)

end A087436

/-! ## A087436.P4749815136327696374

`val(A289320(n+1), 2)`
-/

namespace A087436.P4749815136327696374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289320 (n + 1)).toNat 2

end

end A087436.P4749815136327696374

namespace A087436

/-- `val(A289320(n+1), 2)` -/
def P4749815136327696374.Spec : Prop :=
  ∀ n, (P4749815136327696374.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P1417938991194831082

`val(A079065(n+1), 3)`
-/

namespace A087436.P1417938991194831082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079065 (n + 1)).toNat 3

end

end A087436.P1417938991194831082

namespace A087436

/-- `val(A079065(n+1), 3)` -/
def P1417938991194831082.Spec : Prop :=
  ∀ n, (P1417938991194831082.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P14542406439660831557

`∑{d}[n+1, A174275(#)]`
-/

namespace A087436.P14542406439660831557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174275 d

end

end A087436.P14542406439660831557

namespace A087436

/-- `∑{d}[n+1, A174275(#)]` -/
def P14542406439660831557.Spec : Prop :=
  ∀ n, P14542406439660831557.a n = A087436 (n + 1)

end A087436

/-! ## A087436.P6643302576953698706

`∑{e}[A064989(n+1), #]`
-/

namespace A087436.P6643302576953698706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P6643302576953698706

namespace A087436

/-- `∑{e}[A064989(n+1), #]` -/
def P6643302576953698706.Spec : Prop :=
  ∀ n, (P6643302576953698706.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P17000498156321038216

`∑{e}[A198328(n+1), #]`
-/

namespace A087436.P17000498156321038216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P17000498156321038216

namespace A087436

/-- `∑{e}[A198328(n+1), #]` -/
def P17000498156321038216.Spec : Prop :=
  ∀ n, (P17000498156321038216.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P13309822974838313422

`∑{e}[A290099(n+1), #]`
-/

namespace A087436.P13309822974838313422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P13309822974838313422

namespace A087436

/-- `∑{e}[A290099(n+1), #]` -/
def P13309822974838313422.Spec : Prop :=
  ∀ n, (P13309822974838313422.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P17873145182456930153

`∑{e}[A332819(n+1), #]`
-/

namespace A087436.P17873145182456930153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P17873145182456930153

namespace A087436

/-- `∑{e}[A332819(n+1), #]` -/
def P17873145182456930153.Spec : Prop :=
  ∀ n, (P17873145182456930153.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P15937028657424755163

`∑{e}[A336158(n+1), #]`
-/

namespace A087436.P15937028657424755163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P15937028657424755163

namespace A087436

/-- `∑{e}[A336158(n+1), #]` -/
def P15937028657424755163.Spec : Prop :=
  ∀ n, (P15937028657424755163.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P5432540419045427201

`∑{e}[A348747(n+1), #]`
-/

namespace A087436.P5432540419045427201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P5432540419045427201

namespace A087436

/-- `∑{e}[A348747(n+1), #]` -/
def P5432540419045427201.Spec : Prop :=
  ∀ n, (P5432540419045427201.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P3491163476268763120

`∑{e}[A354092(n+1), #]`
-/

namespace A087436.P3491163476268763120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P3491163476268763120

namespace A087436

/-- `∑{e}[A354092(n+1), #]` -/
def P3491163476268763120.Spec : Prop :=
  ∀ n, (P3491163476268763120.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P7062708693648363579

`∑{e}[A357980(n+1), #]`
-/

namespace A087436.P7062708693648363579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357980 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P7062708693648363579

namespace A087436

/-- `∑{e}[A357980(n+1), #]` -/
def P7062708693648363579.Spec : Prop :=
  ∀ n, (P7062708693648363579.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P17832259664635637835

`∑{e}[A359587(n+1), #]`
-/

namespace A087436.P17832259664635637835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P17832259664635637835

namespace A087436

/-- `∑{e}[A359587(n+1), #]` -/
def P17832259664635637835.Spec : Prop :=
  ∀ n, (P17832259664635637835.a n : ℤ) = A087436 (n + 1)

end A087436

/-! ## A087436.P15747374618151481777

`∑{e}[A171435(2*(n+1)), #]`
-/

namespace A087436.P15747374618151481777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A087436.P15747374618151481777

namespace A087436

/-- `∑{e}[A171435(2*(n+1)), #]` -/
def P15747374618151481777.Spec : Prop :=
  ∀ n, (P15747374618151481777.a n : ℤ) = A087436 (n + 1)

end A087436

/-!
# A087437: A077565 indexed by A025487.

The programs for A087437, there is no canonical definition to state claims against.
-/

/-! ## A087437.P15238021356041483473

`A077565(A025487(n+1))`
-/

namespace A087437.P15238021356041483473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (A025487 (n + 1)).toNat

end

end A087437.P15238021356041483473

/-! ## A087437.P9766179133254412527

`A077565(record[A046523(n+1)])`
-/

namespace A087437.P9766179133254412527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087437.P9766179133254412527

/-! ## A087437.P12593410381579451328

`A077565(record[A329899(n+1)])`
-/

namespace A087437.P12593410381579451328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087437.P12593410381579451328

/-! ## A087437.P16619078087705410240

`A077565(record[A051466(n+2)])`
-/

namespace A087437.P16619078087705410240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087437.P16619078087705410240

/-! ## A087437.P1218362204021520172

`A077565(A247451(n+1)*A307107(n+1))`
-/

namespace A087437.P1218362204021520172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A087437.P1218362204021520172

/-! ## A087437.P10802973177330088943

`A077565(A181817(n+1)/A181816(n+1))`
-/

namespace A087437.P10802973177330088943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A087437.P10802973177330088943

/-! ## A087437.P14742853295602144705

`A077565(A324577(n+1)/A324576(n+1))`
-/

namespace A087437.P14742853295602144705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (SequenceMachineLib.roundAway ((A324577 (n + 1) : ℚ) / (A324576 (n + 1) : ℚ))).toNat

end

end A087437.P14742853295602144705

/-!
# A087438: a(n) = 3*2^(2*(n-1)) + 2^(n-2)*(n+1).

The programs for A087438, the canonical program `A087438.P6254669670625907354` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087438 has offset 0).

The definition of A087438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087438.P6254669670625907354

`8*a(n-1)-20*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=4, a(2)=15`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087438

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)` -/
def P6254669670625907354.Spec : Prop :=
  ∀ n, P6254669670625907354.a n = A087438 n

theorem P6254669670625907354.correct : P6254669670625907354.Spec := by
  intro n
  simp only [A087438]

end A087438

/-! ## A087438.P5475018322071078796

`4^n-(2^n-(n+1))*2^(n-2)`
-/

namespace A087438.P5475018322071078796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - ((2 ^ n : ℤ) - (n + 1 : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A087438.P5475018322071078796

namespace A087438

/-- `4^n-(2^n-(n+1))*2^(n-2)` -/
def P5475018322071078796.Spec : Prop :=
  ∀ n, P5475018322071078796.a n = (A087438 n : ℚ)

end A087438

/-! ## A087438.P1883479134672636280

`Δ[A139756(n)+A131577(n)²]`
-/

namespace A087438.P1883479134672636280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A131577 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087438.P1883479134672636280

namespace A087438

/-- `Δ[A139756(n)+A131577(n)²]` -/
def P1883479134672636280.Spec : Prop :=
  ∀ n, P1883479134672636280.a n = A087438 n

end A087438

/-! ## A087438.P6067940656985983012

`Δ[xor(A011782(n)², A097067(n))]`
-/

namespace A087438.P6067940656985983012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 n ^ 2) (A097067 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087438.P6067940656985983012

namespace A087438

/-- `Δ[xor(A011782(n)², A097067(n))]` -/
def P6067940656985983012.Spec : Prop :=
  ∀ n, P6067940656985983012.a n = A087438 n

end A087438

/-! ## A087438.P400347991503361276

`(A003945(n+1)+n+1)/12*A003945(n+1)`
-/

namespace A087438.P400347991503361276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003945 (n + 1) + (n + 1 : ℤ) : ℚ) / 12 * (A003945 (n + 1) : ℚ)

end

end A087438.P400347991503361276

namespace A087438

/-- `(A003945(n+1)+n+1)/12*A003945(n+1)` -/
def P400347991503361276.Spec : Prop :=
  ∀ n, P400347991503361276.a n = (A087438 n : ℚ)

end A087438

/-! ## A087438.P723817821198541356

`Δ[A139756(n)+A131577(A004273(n))]`
-/

namespace A087438.P723817821198541356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A131577 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087438.P723817821198541356

namespace A087438

/-- `Δ[A139756(n)+A131577(A004273(n))]` -/
def P723817821198541356.Spec : Prop :=
  ∀ n, P723817821198541356.a n = A087438 n

end A087438

/-! ## A087438.P11117049689506992373

`(A010036(n)+A001792(n))/2`
-/

namespace A087438.P11117049689506992373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010036 n + A001792 n : ℚ) / 2

end

end A087438.P11117049689506992373

namespace A087438

/-- `(A010036(n)+A001792(n))/2` -/
def P11117049689506992373.Spec : Prop :=
  ∀ n, P11117049689506992373.a n = (A087438 n : ℚ)

end A087438

/-! ## A087438.P14622820699881701238

`(A129952(n+1)+A111286(2*n+1))/2`
-/

namespace A087438.P14622820699881701238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129952 (n + 1) + A111286 (2 * n + 1) : ℚ) / 2

end

end A087438.P14622820699881701238

namespace A087438

/-- `(A129952(n+1)+A111286(2*n+1))/2` -/
def P14622820699881701238.Spec : Prop :=
  ∀ n, P14622820699881701238.a n = (A087438 n : ℚ)

end A087438

/-!
# A087439: Expansion of (1-4x)/((1-x)(1-3x)(1-5x)).

The programs for A087439, the canonical program `A087439.P12745674260093999143` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087439 has offset 0).

The definition of A087439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-9x+23x^2-15x^3))` (program `A087439.P12745674260093999143`, by `A087439.P12745674260093999143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087439.P12745674260093999143

`ogf((1-4x)/(1-9x+23x^2-15x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087439

/-- `ogf((1-4x)/(1-9x+23x^2-15x^3))` -/
def P12745674260093999143.Spec : Prop :=
  ∀ n, P12745674260093999143.a n = A087439 n

theorem P12745674260093999143.correct : P12745674260093999143.Spec := by
  intro n
  simp only [A087439]

end A087439

/-! ## A087439.P11708009204113529836

`∑[(3^n+5^n)/2]`
-/

namespace A087439.P11708009204113529836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 5 ^ n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087439.P11708009204113529836

namespace A087439

/-- `∑[(3^n+5^n)/2]` -/
def P11708009204113529836.Spec : Prop :=
  ∀ n, P11708009204113529836.a n = (A087439 n : ℚ)

end A087439

/-! ## A087439.P8325417554014023760

`a(n-1)+(3^n+5^n)/2` with `a(0)=1`
-/

namespace A087439.P8325417554014023760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 ^ n + 5 ^ n : ℚ) / 2

end

end A087439.P8325417554014023760

namespace A087439

/-- `a(n-1)+(3^n+5^n)/2` -/
def P8325417554014023760.Spec : Prop :=
  ∀ n, P8325417554014023760.a n = (A087439 n : ℚ)

end A087439

/-! ## A087439.P6599464140803206810

`A233106(n+2)-1`
-/

namespace A087439.P6599464140803206810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 2) - 1

end

end A087439.P6599464140803206810

namespace A087439

/-- `A233106(n+2)-1` -/
def P6599464140803206810.Spec : Prop :=
  ∀ n, P6599464140803206810.a n = A087439 n

end A087439

/-! ## A087439.P9787484445373143282

`or(∑[A081186(n)], char[1])`
-/

namespace A087439.P9787484445373143282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087439.P9787484445373143282

namespace A087439

/-- `or(∑[A081186(n)], char[1])` -/
def P9787484445373143282.Spec : Prop :=
  ∀ n, P9787484445373143282.a n = A087439 n

end A087439

/-! ## A087439.P10709326683678385901

`∑[n]+∑[A120950(n)/2]`
-/

namespace A087439.P10709326683678385901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120950 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A087439.P10709326683678385901

namespace A087439

/-- `∑[n]+∑[A120950(n)/2]` -/
def P10709326683678385901.Spec : Prop :=
  ∀ n, P10709326683678385901.a n = (A087439 n : ℚ)

end A087439

/-! ## A087439.P12125283558780488160

`∑[A120949(n)/2]-∑[n]`
-/

namespace A087439.P12125283558780488160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120949 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A087439.P12125283558780488160

namespace A087439

/-- `∑[A120949(n)/2]-∑[n]` -/
def P12125283558780488160.Spec : Prop :=
  ∀ n, P12125283558780488160.a n = (A087439 n : ℚ)

end A087439

/-! ## A087439.P17745809255674721182

`5*a(n-1)+1-A003462(n)` with `a(0)=1`
-/

namespace A087439.P17745809255674721182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + 1 - A003462 n

end

end A087439.P17745809255674721182

namespace A087439

/-- `5*a(n-1)+1-A003462(n)` -/
def P17745809255674721182.Spec : Prop :=
  ∀ n, P17745809255674721182.a n = A087439 n

end A087439

/-! ## A087439.P5959597755225467104

`5*a(n-1)+2-A007051(n)` with `a(0)=1`
-/

namespace A087439.P5959597755225467104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + 2 - A007051 n

end

end A087439.P5959597755225467104

namespace A087439

/-- `5*a(n-1)+2-A007051(n)` -/
def P5959597755225467104.Spec : Prop :=
  ∀ n, P5959597755225467104.a n = A087439 n

end A087439

/-! ## A087439.P5798505595198742973

`lcm(∑[A081186(n)], A020985(n))`
-/

namespace A087439.P5798505595198742973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A087439.P5798505595198742973

namespace A087439

/-- `lcm(∑[A081186(n)], A020985(n))` -/
def P5798505595198742973.Spec : Prop :=
  ∀ n, (P5798505595198742973.a n : ℤ) = A087439 n

end A087439

/-! ## A087439.P12684281051275304271

`A185055(n+1)+A047926(n)`
-/

namespace A087439.P12684281051275304271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185055 (n + 1) + A047926 n

end

end A087439.P12684281051275304271

namespace A087439

/-- `A185055(n+1)+A047926(n)` -/
def P12684281051275304271.Spec : Prop :=
  ∀ n, P12684281051275304271.a n = A087439 n

end A087439

/-! ## A087439.P8001129658583480738

`Δ[Δ[A056272(n+1)]]-A056272(n+1)`
-/

namespace A087439.P8001129658583480738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056272 (n + 1)

end

end A087439.P8001129658583480738

namespace A087439

/-- `Δ[Δ[A056272(n+1)]]-A056272(n+1)` -/
def P8001129658583480738.Spec : Prop :=
  ∀ n, P8001129658583480738.a n = A087439 n

end A087439

/-! ## A087439.P10071252149861765410

`Δ[A056506(2*n+3)]-A056506(2*n+3)`
-/

namespace A087439.P10071252149861765410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056506 (2 * n + 3)

end

end A087439.P10071252149861765410

namespace A087439

/-- `Δ[A056506(2*n+3)]-A056506(2*n+3)` -/
def P10071252149861765410.Spec : Prop :=
  ∀ n, P10071252149861765410.a n = A087439 n

end A087439

/-! ## A087439.P17921998754725061000

`Δ[Δ[A056470(2*(n+1))]]-A056470(2*(n+1))`
-/

namespace A087439.P17921998754725061000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056470 (2 * (n + 1))

end

end A087439.P17921998754725061000

namespace A087439

/-- `Δ[Δ[A056470(2*(n+1))]]-A056470(2*(n+1))` -/
def P17921998754725061000.Spec : Prop :=
  ∀ n, P17921998754725061000.a n = A087439 n

end A087439

/-! ## A087439.P18353903667399874173

`∑[A074606(n)]/2`
-/

namespace A087439.P18353903667399874173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074606 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A087439.P18353903667399874173

namespace A087439

/-- `∑[A074606(n)]/2` -/
def P18353903667399874173.Spec : Prop :=
  ∀ n, P18353903667399874173.a n = (A087439 n : ℚ)

end A087439

/-! ## A087439.P17382466842257189950

`floor(A146086(n+1)/2)`
-/

namespace A087439.P17382466842257189950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A146086 (n + 1) : ℚ) / 2⌋

end

end A087439.P17382466842257189950

namespace A087439

/-- `floor(A146086(n+1)/2)` -/
def P17382466842257189950.Spec : Prop :=
  ∀ n, P17382466842257189950.a n = A087439 n

end A087439

/-! ## A087439.P11568685612676234681

`∑[A000351(n)+3^n]/2`
-/

namespace A087439.P11568685612676234681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + (3 ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A087439.P11568685612676234681

namespace A087439

/-- `∑[A000351(n)+3^n]/2` -/
def P11568685612676234681.Spec : Prop :=
  ∀ n, P11568685612676234681.a n = (A087439 n : ℚ)

end A087439

/-! ## A087439.P8289213248996741

`(A003463(n+1)+A003462(n+1))/2`
-/

namespace A087439.P8289213248996741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003463 (n + 1) + A003462 (n + 1) : ℚ) / 2

end

end A087439.P8289213248996741

namespace A087439

/-- `(A003463(n+1)+A003462(n+1))/2` -/
def P8289213248996741.Spec : Prop :=
  ∀ n, P8289213248996741.a n = (A087439 n : ℚ)

end A087439

/-! ## A087439.P983723088344572742

`A003462(n+1)+A007798(n+1)/2`
-/

namespace A087439.P983723088344572742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003462 (n + 1) : ℚ) + (A007798 (n + 1) : ℚ) / 2

end

end A087439.P983723088344572742

namespace A087439

/-- `A003462(n+1)+A007798(n+1)/2` -/
def P983723088344572742.Spec : Prop :=
  ∀ n, P983723088344572742.a n = (A087439 n : ℚ)

end A087439

/-! ## A087439.P1857708784256223999

`A003463(n+1)-A007798(n+1)/2`
-/

namespace A087439.P1857708784256223999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003463 (n + 1) : ℚ) - (A007798 (n + 1) : ℚ) / 2

end

end A087439.P1857708784256223999

namespace A087439

/-- `A003463(n+1)-A007798(n+1)/2` -/
def P1857708784256223999.Spec : Prop :=
  ∀ n, P1857708784256223999.a n = (A087439 n : ℚ)

end A087439

/-!
# A087440: Expansion of (1-2*x-3*x^2)/((1-2*x)*(1-4*x)).

The programs for A087440, the canonical program `A087440.P10551969242939972727` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087440 has offset 0).

The definition of A087440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-3x^2)/(1-6x+8x^2))` (program `A087440.P10551969242939972727`, by `A087440.P10551969242939972727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087440.P10551969242939972727

`ogf((1-2x-3x^2)/(1-6x+8x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087440

/-- `ogf((1-2x-3x^2)/(1-6x+8x^2))` -/
def P10551969242939972727.Spec : Prop :=
  ∀ n, P10551969242939972727.a n = A087440 n

theorem P10551969242939972727.correct : P10551969242939972727.Spec := by
  intro n
  simp only [A087440]

end A087440

/-! ## A087440.P8614280871788872866

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A087440.P8614280871788872866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A087440.P8614280871788872866

namespace A087440

/-- `6*a(n-1)-8*a(n-2)` -/
def P8614280871788872866.Spec : Prop :=
  ∀ n, P8614280871788872866.a n = A087440 n

end A087440

/-! ## A087440.P4423011260168830053

`Δ[A222939(n+2)]`
-/

namespace A087440.P4423011260168830053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222939 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087440.P4423011260168830053

namespace A087440

/-- `Δ[A222939(n+2)]` -/
def P4423011260168830053.Spec : Prop :=
  ∀ n, P4423011260168830053.a n = A087440 n

end A087440

/-! ## A087440.P7383084847686687819

`Δ[A124303(n)+(2^n+1)*(2^n+2)/6]`
-/

namespace A087440.P7383084847686687819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124303 n : ℚ) + (2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087440.P7383084847686687819

namespace A087440

/-- `Δ[A124303(n)+(2^n+1)*(2^n+2)/6]` -/
def P7383084847686687819.Spec : Prop :=
  ∀ n, P7383084847686687819.a n = (A087440 n : ℚ)

end A087440

/-! ## A087440.P8121493051689148183

`A007582(n)+Δ[A124303(n)]`
-/

namespace A087440.P8121493051689148183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + (f1 (n + 1) - f1 n)

end

end A087440.P8121493051689148183

namespace A087440

/-- `A007582(n)+Δ[A124303(n)]` -/
def P8121493051689148183.Spec : Prop :=
  ∀ n, P8121493051689148183.a n = A087440 n

end A087440

/-! ## A087440.P10912116978446677348

`A007581(n+1)-A124303(n)`
-/

namespace A087440.P10912116978446677348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1) - A124303 n

end

end A087440.P10912116978446677348

namespace A087440

/-- `A007581(n+1)-A124303(n)` -/
def P10912116978446677348.Spec : Prop :=
  ∀ n, P10912116978446677348.a n = A087440 n

end A087440

/-! ## A087440.P13597472581093326408

`A124303(n+2)-A124303(n)`
-/

namespace A087440.P13597472581093326408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (n + 2) - A124303 n

end

end A087440.P13597472581093326408

namespace A087440

/-- `A124303(n+2)-A124303(n)` -/
def P13597472581093326408.Spec : Prop :=
  ∀ n, P13597472581093326408.a n = A087440 n

end A087440

/-! ## A087440.P14859310942231556869

`A222939(n+3)-A222939(n+2)`
-/

namespace A087440.P14859310942231556869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222939 (n + 3) - A222939 (n + 2)

end

end A087440.P14859310942231556869

namespace A087440

/-- `A222939(n+3)-A222939(n+2)` -/
def P14859310942231556869.Spec : Prop :=
  ∀ n, P14859310942231556869.a n = A087440 n

end A087440

/-! ## A087440.P14197739458616428266

`A007581(n+1)-A007581(A289207(n+1))`
-/

namespace A087440.P14197739458616428266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1) - A007581 (A289207 (n + 1)).toNat

end

end A087440.P14197739458616428266

namespace A087440

/-- `A007581(n+1)-A007581(A289207(n+1))` -/
def P14197739458616428266.Spec : Prop :=
  ∀ n, P14197739458616428266.a n = A087440 n

end A087440

/-! ## A087440.P10684911763163447626

`A000079(n)²+A122391(n+1)-A122391(2*n)`
-/

namespace A087440.P10684911763163447626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (A122391 (n + 1) - A122391 (2 * n))

end

end A087440.P10684911763163447626

namespace A087440

/-- `A000079(n)²+A122391(n+1)-A122391(2*n)` -/
def P10684911763163447626.Spec : Prop :=
  ∀ n, P10684911763163447626.a n = A087440 n

end A087440

/-! ## A087440.P2660755512355502718

`A000079(2*n)+A122391(n+1)-A122391(2*n)`
-/

namespace A087440.P2660755512355502718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) + (A122391 (n + 1) - A122391 (2 * n))

end

end A087440.P2660755512355502718

namespace A087440

/-- `A000079(2*n)+A122391(n+1)-A122391(2*n)` -/
def P2660755512355502718.Spec : Prop :=
  ∀ n, P2660755512355502718.a n = A087440 n

end A087440

/-! ## A087440.P10495852194852140745

`A000079(n)²+A098011(n+2)-A098011(2*n+1)`
-/

namespace A087440.P10495852194852140745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + (A098011 (n + 2) - A098011 (2 * n + 1))

end

end A087440.P10495852194852140745

namespace A087440

/-- `A000079(n)²+A098011(n+2)-A098011(2*n+1)` -/
def P10495852194852140745.Spec : Prop :=
  ∀ n, P10495852194852140745.a n = A087440 n

end A087440

/-! ## A087440.P954255450591892040

`A122803(n)²+A098011(n+2)-A098011(2*n+1)`
-/

namespace A087440.P954255450591892040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 + (A098011 (n + 2) - A098011 (2 * n + 1))

end

end A087440.P954255450591892040

namespace A087440

/-- `A122803(n)²+A098011(n+2)-A098011(2*n+1)` -/
def P954255450591892040.Spec : Prop :=
  ∀ n, P954255450591892040.a n = A087440 n

end A087440

/-! ## A087440.P6503243213982594867

`A000079(2*n)+A098011(n+2)-A098011(2*n+1)`
-/

namespace A087440.P6503243213982594867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) + (A098011 (n + 2) - A098011 (2 * n + 1))

end

end A087440.P6503243213982594867

namespace A087440

/-- `A000079(2*n)+A098011(n+2)-A098011(2*n+1)` -/
def P6503243213982594867.Spec : Prop :=
  ∀ n, P6503243213982594867.a n = A087440 n

end A087440

/-! ## A087440.P5276644311693043230

`A122803(2*n)+A098011(n+2)-A098011(2*n+1)`
-/

namespace A087440.P5276644311693043230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (2 * n) + (A098011 (n + 2) - A098011 (2 * n + 1))

end

end A087440.P5276644311693043230

namespace A087440

/-- `A122803(2*n)+A098011(n+2)-A098011(2*n+1)` -/
def P5276644311693043230.Spec : Prop :=
  ∀ n, P5276644311693043230.a n = A087440 n

end A087440

/-! ## A087440.P4535630564790910765

`A011782(n+1)²+A098011(n+2)-A098011(2*n+1)`
-/

namespace A087440.P4535630564790910765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 + (A098011 (n + 2) - A098011 (2 * n + 1))

end

end A087440.P4535630564790910765

namespace A087440

/-- `A011782(n+1)²+A098011(n+2)-A098011(2*n+1)` -/
def P4535630564790910765.Spec : Prop :=
  ∀ n, P4535630564790910765.a n = A087440 n

end A087440

/-! ## A087440.P9028296494756573223

`A003945(n)+A080960(n)-A171475(n)`
-/

namespace A087440.P9028296494756573223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + (A080960 n - A171475 n)

end

end A087440.P9028296494756573223

namespace A087440

/-- `A003945(n)+A080960(n)-A171475(n)` -/
def P9028296494756573223.Spec : Prop :=
  ∀ n, P9028296494756573223.a n = A087440 n

end A087440

/-!
# A087441: Numbers k such that for every prime divisor p of k, p-1 divides k-1.

The programs for A087441, the canonical program `A087441.P11260084284196037132` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087441 has offset 1).

The definition of A087441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087441.P11260084284196037132

`A226038(n+1)+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A087441

/-- `A226038(n+1)+1` -/
def P11260084284196037132.Spec : Prop :=
  ∀ n, P11260084284196037132.a n = A087441 (n + 1)

theorem P11260084284196037132.correct : P11260084284196037132.Spec := by
  intro n
  simp only [A087441, Nat.add_sub_cancel]

end A087441

/-! ## A087441.P6370693336741480637

`record[(n+1)*A324290(n+1)]`
-/

namespace A087441.P6370693336741480637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087441.P6370693336741480637

namespace A087441

/-- `record[(n+1)*A324290(n+1)]` -/
def P6370693336741480637.Spec : Prop :=
  ∀ n, P6370693336741480637.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P10901052008200354264

`eq[1, A324290(n+1)]+1`
-/

namespace A087441.P10901052008200354264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087441.P10901052008200354264

namespace A087441

/-- `eq[1, A324290(n+1)]+1` -/
def P10901052008200354264.Spec : Prop :=
  ∀ n, (P10901052008200354264.a n : ℤ) = A087441 (n + 1)

end A087441

/-! ## A087441.P10444363934183491570

`eq[A166142(A166123(n+1)), A166142(n+1)]+1`
-/

namespace A087441.P10444363934183491570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166142 (A166123 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087441.P10444363934183491570

namespace A087441

/-- `eq[A166142(A166123(n+1)), A166142(n+1)]+1` -/
def P10444363934183491570.Spec : Prop :=
  ∀ n, (P10444363934183491570.a n : ℤ) = A087441 (n + 1)

end A087441

/-! ## A087441.P18196567901908690155

`filter[A293205(n+1), A324290(#)]`
-/

namespace A087441.P18196567901908690155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P18196567901908690155

namespace A087441

/-- `filter[A293205(n+1), A324290(#)]` -/
def P18196567901908690155.Spec : Prop :=
  ∀ n, P18196567901908690155.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P1173381711926041533

`filter[A083243(n+1), A324290(#)]`
-/

namespace A087441.P1173381711926041533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P1173381711926041533

namespace A087441

/-- `filter[A083243(n+1), A324290(#)]` -/
def P1173381711926041533.Spec : Prop :=
  ∀ n, P1173381711926041533.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P7386512823489841600

`filter[A246716(n+1), A324290(#)]`
-/

namespace A087441.P7386512823489841600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P7386512823489841600

namespace A087441

/-- `filter[A246716(n+1), A324290(#)]` -/
def P7386512823489841600.Spec : Prop :=
  ∀ n, P7386512823489841600.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P18088375975692353721

`filter[A107750(n+1), A324290(#)]`
-/

namespace A087441.P18088375975692353721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P18088375975692353721

namespace A087441

/-- `filter[A107750(n+1), A324290(#)]` -/
def P18088375975692353721.Spec : Prop :=
  ∀ n, P18088375975692353721.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P6942782749036098446

`filter[A005100(n+1), A324290(#)]`
-/

namespace A087441.P6942782749036098446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P6942782749036098446

namespace A087441

/-- `filter[A005100(n+1), A324290(#)]` -/
def P6942782749036098446.Spec : Prop :=
  ∀ n, P6942782749036098446.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P17302917025120114539

`filter[A263837(n+1), A324290(#)]`
-/

namespace A087441.P17302917025120114539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P17302917025120114539

namespace A087441

/-- `filter[A263837(n+1), A324290(#)]` -/
def P17302917025120114539.Spec : Prop :=
  ∀ n, P17302917025120114539.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P9411192773487748681

`filter[A136447(n+1), A324290(#)]`
-/

namespace A087441.P9411192773487748681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P9411192773487748681

namespace A087441

/-- `filter[A136447(n+1), A324290(#)]` -/
def P9411192773487748681.Spec : Prop :=
  ∀ n, P9411192773487748681.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P16097123036401940895

`filter[A392650(n+1), A324290(#)]`
-/

namespace A087441.P16097123036401940895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P16097123036401940895

namespace A087441

/-- `filter[A392650(n+1), A324290(#)]` -/
def P16097123036401940895.Spec : Prop :=
  ∀ n, P16097123036401940895.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P18215168201705063099

`filter[A253567(n+1), A324290(#)]`
-/

namespace A087441.P18215168201705063099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P18215168201705063099

namespace A087441

/-- `filter[A253567(n+1), A324290(#)]` -/
def P18215168201705063099.Spec : Prop :=
  ∀ n, P18215168201705063099.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P10411508276869224875

`filter[A094520(n+1), A324290(#)]`
-/

namespace A087441.P10411508276869224875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P10411508276869224875

namespace A087441

/-- `filter[A094520(n+1), A324290(#)]` -/
def P10411508276869224875.Spec : Prop :=
  ∀ n, P10411508276869224875.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P18069986086367197003

`filter[A083210(n+1), A324290(#)]`
-/

namespace A087441.P18069986086367197003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P18069986086367197003

namespace A087441

/-- `filter[A083210(n+1), A324290(#)]` -/
def P18069986086367197003.Spec : Prop :=
  ∀ n, P18069986086367197003.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P1749629911203958534

`filter[A228869(n+1), A324290(#)]`
-/

namespace A087441.P1749629911203958534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P1749629911203958534

namespace A087441

/-- `filter[A228869(n+1), A324290(#)]` -/
def P1749629911203958534.Spec : Prop :=
  ∀ n, P1749629911203958534.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P16782670032892873715

`filter[A387892(n+1), A324290(#)]`
-/

namespace A087441.P16782670032892873715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P16782670032892873715

namespace A087441

/-- `filter[A387892(n+1), A324290(#)]` -/
def P16782670032892873715.Spec : Prop :=
  ∀ n, P16782670032892873715.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P3407751667110346903

`filter[A047253(n+1), A324290(#)]`
-/

namespace A087441.P3407751667110346903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P3407751667110346903

namespace A087441

/-- `filter[A047253(n+1), A324290(#)]` -/
def P3407751667110346903.Spec : Prop :=
  ∀ n, P3407751667110346903.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P8140040592657710634

`filter[A129657(n+1), A324290(#)]`
-/

namespace A087441.P8140040592657710634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P8140040592657710634

namespace A087441

/-- `filter[A129657(n+1), A324290(#)]` -/
def P8140040592657710634.Spec : Prop :=
  ∀ n, P8140040592657710634.a n = A087441 (n + 1)

end A087441

/-! ## A087441.P446096755815519250

`filter[A067251(n+1), A324290(#)]`
-/

namespace A087441.P446096755815519250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087441.P446096755815519250

namespace A087441

/-- `filter[A067251(n+1), A324290(#)]` -/
def P446096755815519250.Spec : Prop :=
  ∀ n, P446096755815519250.a n = A087441 (n + 1)

end A087441

/-!
# A087442: Numbers n such that n is not the power of a prime and such that for every prime divisor p of n, p-1 divides n-1.

The programs for A087442, there is no canonical definition to state claims against.
-/

/-! ## A087442.P1008148950547299004

`∩[A080062(n+1), A324457(n+1)]`
-/

namespace A087442.P1008148950547299004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087442.P1008148950547299004

/-! ## A087442.P6945136773510935550

`∩[A225498(n+1), A324457(n+1)]`
-/

namespace A087442.P6945136773510935550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087442.P6945136773510935550

/-! ## A087442.P16550961464582961347

`filter[A324457(n+1), A324290(#)]`
-/

namespace A087442.P16550961464582961347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A087442.P16550961464582961347

/-! ## A087442.P3095974866411809933

`∩[A087441(n+1), A324457(n+1)]`
-/

namespace A087442.P3095974866411809933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087442.P3095974866411809933

/-! ## A087442.P7672494223614481702

`filter[A225498(n+1), A354108(#)]`
-/

namespace A087442.P7672494223614481702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A087442.P7672494223614481702

/-! ## A087442.P3458021769588958158

`∩[A027854(n+1), A080062(n+1)]`
-/

namespace A087442.P3458021769588958158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087442.P3458021769588958158

/-! ## A087442.P15347963938688962857

`∩[A027854(n+1), A087441(n+1)]`
-/

namespace A087442.P15347963938688962857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087442.P15347963938688962857

/-! ## A087442.P13192646264723297559

`∩[A027854(n+1), A225498(n+1)]`
-/

namespace A087442.P13192646264723297559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087442.P13192646264723297559

/-! ## A087442.P11561820834808283198

`∩[A080062(n+1), A289484(n+1)]`
-/

namespace A087442.P11561820834808283198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087442.P11561820834808283198

/-! ## A087442.P80528921321051948

`∩[A087441(n+1), A289484(n+1)]`
-/

namespace A087442.P80528921321051948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087442.P80528921321051948

/-!
# A087443: Least integer of each prime signature ordered first by sum of exponents and then by least integer value.

The programs for A087443, there is no canonical definition to state claims against.
-/

/-! ## A087443.P15196239897417275441

`filter[A324939(n), A322585(#)]`
-/

namespace A087443.P15196239897417275441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A087443.P15196239897417275441

/-! ## A087443.P18407023873724566581

`A071364(A131801(n))`
-/

namespace A087443.P18407023873724566581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A131801 n).toNat

end

end A087443.P18407023873724566581

/-! ## A087443.P11546421797365951405

`A336158(2*A131801(n))`
-/

namespace A087443.P11546421797365951405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (2 * A131801 n).toNat

end

end A087443.P11546421797365951405

/-! ## A087443.P8981995515312829951

`A290099(or(1, A131801(n)))`
-/

namespace A087443.P8981995515312829951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (Int.lor 1 (A131801 n)).toNat

end

end A087443.P8981995515312829951

/-! ## A087443.P9791006061077787605

`A290099(A131801(n)%(3*2^n))`
-/

namespace A087443.P9791006061077787605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (Int.tmod (A131801 n) (3 * 2 ^ n : ℤ)).toNat

end

end A087443.P9791006061077787605

/-!
# A087444: Numbers that are congruent to {1, 4} mod 9.

The programs for A087444, the canonical program `A087444.P3190574965294054038` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087444 has offset 1).

The definition of A087444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087444.P3190574965294054038

`9*(n+1)-a(n-1)-13` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087444

/-- `9*(n+1)-a(n-1)-13` -/
def P3190574965294054038.Spec : Prop :=
  ∀ n, P3190574965294054038.a n = A087444 (n + 1)

theorem P3190574965294054038.correct : P3190574965294054038.Spec := by
  intro n
  simp only [A087444, Nat.add_sub_cancel]

end A087444

/-! ## A087444.P1308575198602762677

`∑[∏{d}[n, ceil(3/#)]]`
-/

namespace A087444.P1308575198602762677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ⌈3 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087444.P1308575198602762677

namespace A087444

/-- `∑[∏{d}[n, ceil(3/#)]]` -/
def P1308575198602762677.Spec : Prop :=
  ∀ n, P1308575198602762677.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P9580919210950707153

`a(n-2)+9` with `a(0)=1, a(1)=4`
-/

namespace A087444.P9580919210950707153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 9

end

end A087444.P9580919210950707153

namespace A087444

/-- `a(n-2)+9` -/
def P9580919210950707153.Spec : Prop :=
  ∀ n, (P9580919210950707153.a n : ℤ) = A087444 (n + 1)

end A087444

/-! ## A087444.P13565959573181376210

`3*comp[3*n]-2`
-/

namespace A087444.P13565959573181376210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 2

end

end A087444.P13565959573181376210

namespace A087444

/-- `3*comp[3*n]-2` -/
def P13565959573181376210.Spec : Prop :=
  ∀ n, P13565959573181376210.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P5091566571940255638

`ceil(xor(1, 9*n)/2)`
-/

namespace A087444.P5091566571940255638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (9 * n) : ℚ) / 2⌉

end

end A087444.P5091566571940255638

namespace A087444

/-- `ceil(xor(1, 9*n)/2)` -/
def P5091566571940255638.Spec : Prop :=
  ∀ n, P5091566571940255638.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P9891768359649082701

`record[lcm(3, n+1)-2]`
-/

namespace A087444.P9891768359649082701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087444.P9891768359649082701

namespace A087444

/-- `record[lcm(3, n+1)-2]` -/
def P9891768359649082701.Spec : Prop :=
  ∀ n, P9891768359649082701.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P11630369249513977183

`round(xor(1, 9*n)/2)`
-/

namespace A087444.P11630369249513977183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (9 * n) : ℚ) / 2)

end

end A087444.P11630369249513977183

namespace A087444

/-- `round(xor(1, 9*n)/2)` -/
def P11630369249513977183.Spec : Prop :=
  ∀ n, P11630369249513977183.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P4250947596542997014

`∑[9-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A087444.P4250947596542997014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087444.P4250947596542997014

namespace A087444

/-- `∑[9-a(n-1)]` -/
def P4250947596542997014.Spec : Prop :=
  ∀ n, P4250947596542997014.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P12788526538950258339

`record[n+1-dr(n^5)]`
-/

namespace A087444.P12788526538950258339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 5 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087444.P12788526538950258339

namespace A087444

/-- `record[n+1-dr(n^5)]` -/
def P12788526538950258339.Spec : Prop :=
  ∀ n, P12788526538950258339.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P16931333257412903007

`∑[∑[ogf((1+3x+5x^2)/(1+x))]]`
-/

namespace A087444.P16931333257412903007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087444.P16931333257412903007

namespace A087444

/-- `∑[∑[ogf((1+3x+5x^2)/(1+x))]]` -/
def P16931333257412903007.Spec : Prop :=
  ∀ n, P16931333257412903007.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P2458106384058627058

`ogf((1+3x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A087444.P2458106384058627058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5] [1, -1, -1, 1] n

end

end A087444.P2458106384058627058

namespace A087444

/-- `ogf((1+3x+5x^2)/(1-x-x^2+x^3))` -/
def P2458106384058627058.Spec : Prop :=
  ∀ n, P2458106384058627058.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P11258013461307566236

`eq[2, val((2*n-5)², 3)]`
-/

namespace A087444.P11258013461307566236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((2 * n : ℤ) - 5) ^ 2).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087444.P11258013461307566236

namespace A087444

/-- `eq[2, val((2*n-5)², 3)]` -/
def P11258013461307566236.Spec : Prop :=
  ∀ n, (P11258013461307566236.a n : ℤ) = A087444 (n + 1)

end A087444

/-! ## A087444.P16777261370778961948

`eq[3*(n+2), lcm(9, n+2)]`
-/

namespace A087444.P16777261370778961948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087444.P16777261370778961948

namespace A087444

/-- `eq[3*(n+2), lcm(9, n+2)]` -/
def P16777261370778961948.Spec : Prop :=
  ∀ n, (P16777261370778961948.a n : ℤ) = A087444 (n + 1)

end A087444

/-! ## A087444.P14583106823969873641

`floor(9*n-4-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087444.P14583106823969873641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n : ℤ) - 4 - a (n - 1)

end

end A087444.P14583106823969873641

namespace A087444

/-- `floor(9*n-4-a(n-1))` -/
def P14583106823969873641.Spec : Prop :=
  ∀ n, P14583106823969873641.a n = A087444 (n + 1)

theorem P14583106823969873641.correct : P14583106823969873641.Spec := by
  intro n
  simp only [A087444, Nat.add_sub_cancel, A087444.P14583106823969873641.a, A087444.P3190574965294054038.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A087444

/-! ## A087444.P9178941704383001481

`eq[3, gcd(2*n+1, (n+2)%9)]`
-/

namespace A087444.P9178941704383001481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + 1) ((n + 2) % 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087444.P9178941704383001481

namespace A087444

/-- `eq[3, gcd(2*n+1, (n+2)%9)]` -/
def P9178941704383001481.Spec : Prop :=
  ∀ n, (P9178941704383001481.a n : ℤ) = A087444 (n + 1)

end A087444

/-! ## A087444.P4689202010578049658

`record[n+3-2*dr(2*n+1)]`
-/

namespace A087444.P4689202010578049658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (2 * SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087444.P4689202010578049658

namespace A087444

/-- `record[n+3-2*dr(2*n+1)]` -/
def P4689202010578049658.Spec : Prop :=
  ∀ n, P4689202010578049658.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P1198227777671961988

`3*(4-(3-a(n-2))/3)` with `a(0)=1, a(1)=4`
-/

namespace A087444.P1198227777671961988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (4 - (3 - a (n - 2)) / 3)

end

end A087444.P1198227777671961988

namespace A087444

/-- `3*(4-(3-a(n-2))/3)` -/
def P1198227777671961988.Spec : Prop :=
  ∀ n, P1198227777671961988.a n = (A087444 (n + 1) : ℚ)

end A087444

/-! ## A087444.P6551593924985958169

`record[(2*n+1)/gcd(3, n+1)+n]`
-/

namespace A087444.P6551593924985958169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Nat.gcd 3 (n + 1) : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087444.P6551593924985958169

namespace A087444

/-- `record[(2*n+1)/gcd(3, n+1)+n]` -/
def P6551593924985958169.Spec : Prop :=
  ∀ n, P6551593924985958169.a n = (A087444 (n + 1) : ℚ)

end A087444

/-! ## A087444.P18228861548359817497

`∑[A136188(n)-2]`
-/

namespace A087444.P18228861548359817497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136188 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087444.P18228861548359817497

namespace A087444

/-- `∑[A136188(n)-2]` -/
def P18228861548359817497.Spec : Prop :=
  ∀ n, P18228861548359817497.a n = A087444 (n + 1)

end A087444

/-! ## A087444.P11749863570915559876

`∑[gcd(6, A179805(n))]`
-/

namespace A087444.P11749863570915559876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A179805 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087444.P11749863570915559876

namespace A087444

/-- `∑[gcd(6, A179805(n))]` -/
def P11749863570915559876.Spec : Prop :=
  ∀ n, (P11749863570915559876.a n : ℤ) = A087444 (n + 1)

end A087444

/-!
# A087445: Numbers that are congruent to 1 or 5 mod 12.

The programs for A087445, the canonical program `A087445.P15689331082767495636` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087445 has offset 1).

The definition of A087445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087445.P15689331082767495636

`6*n-(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087445

/-- `6*n-(-1)^(n+1)` -/
def P15689331082767495636.Spec : Prop :=
  ∀ n, P15689331082767495636.a n = A087445 (n + 1)

theorem P15689331082767495636.correct : P15689331082767495636.Spec := by
  intro n
  simp only [A087445, Nat.add_sub_cancel]

end A087445

/-! ## A087445.P11895200274149330915

`xor(2, or(3, 6*n))`
-/

namespace A087445.P11895200274149330915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 (6 * n))

end

end A087445.P11895200274149330915

namespace A087445

/-- `xor(2, or(3, 6*n))` -/
def P11895200274149330915.Spec : Prop :=
  ∀ n, (P11895200274149330915.a n : ℤ) = A087445 (n + 1)

end A087445

/-! ## A087445.P18191037748058256013

`and(6*n+1, -3)`
-/

namespace A087445.P18191037748058256013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 * n + 1 : ℤ) (-3)

end

end A087445.P18191037748058256013

namespace A087445

/-- `and(6*n+1, -3)` -/
def P18191037748058256013.Spec : Prop :=
  ∀ n, P18191037748058256013.a n = A087445 (n + 1)

end A087445

/-! ## A087445.P3855623040527246880

`or(1, and(6*n, -3))`
-/

namespace A087445.P3855623040527246880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.land (6 * n : ℤ) (-3))

end

end A087445.P3855623040527246880

namespace A087445

/-- `or(1, and(6*n, -3))` -/
def P3855623040527246880.Spec : Prop :=
  ∀ n, P3855623040527246880.a n = A087445 (n + 1)

end A087445

/-! ## A087445.P1538770558684734613

`xor(1, and(6*n, -3))`
-/

namespace A087445.P1538770558684734613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (6 * n : ℤ) (-3))

end

end A087445.P1538770558684734613

namespace A087445

/-- `xor(1, and(6*n, -3))` -/
def P1538770558684734613.Spec : Prop :=
  ∀ n, P1538770558684734613.a n = A087445 (n + 1)

end A087445

/-! ## A087445.P14982283434789283628

`∑[2^∑{d}[n, C(2, #)]]`
-/

namespace A087445.P14982283434789283628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ d ∈ Nat.divisors (f2 n), Nat.choose 2 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087445.P14982283434789283628

namespace A087445

/-- `∑[2^∑{d}[n, C(2, #)]]` -/
def P14982283434789283628.Spec : Prop :=
  ∀ n, (P14982283434789283628.a n : ℤ) = A087445 (n + 1)

end A087445

/-! ## A087445.P15623655420218510487

`∑[∏{d}[n, 2^C(2, #)]]`
-/

namespace A087445.P15623655420218510487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), 2 ^ Nat.choose 2 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087445.P15623655420218510487

namespace A087445

/-- `∑[∏{d}[n, 2^C(2, #)]]` -/
def P15623655420218510487.Spec : Prop :=
  ∀ n, (P15623655420218510487.a n : ℤ) = A087445 (n + 1)

end A087445

/-! ## A087445.P15603268835300627293

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A087445.P15603268835300627293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087445.P15603268835300627293

namespace A087445

/-- `∑[abs(a(n-2))]` -/
def P15603268835300627293.Spec : Prop :=
  ∀ n, (P15603268835300627293.a n : ℤ) = A087445 (n + 1)

end A087445

/-! ## A087445.P14051462281404131962

`∑[12-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A087445.P14051462281404131962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087445.P14051462281404131962

namespace A087445

/-- `∑[12-a(n-1)]` -/
def P14051462281404131962.Spec : Prop :=
  ∀ n, P14051462281404131962.a n = A087445 (n + 1)

end A087445

/-! ## A087445.P17163279471228137669

`∑[∑[ogf((1+4x+7x^2)/(1+x))]]`
-/

namespace A087445.P17163279471228137669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087445.P17163279471228137669

namespace A087445

/-- `∑[∑[ogf((1+4x+7x^2)/(1+x))]]` -/
def P17163279471228137669.Spec : Prop :=
  ∀ n, P17163279471228137669.a n = A087445 (n + 1)

end A087445

/-! ## A087445.P10667281205416932489

`ogf((1+4x+7x^2)/(1-x-x^2+x^3))`
-/

namespace A087445.P10667281205416932489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 7] [1, -1, -1, 1] n

end

end A087445.P10667281205416932489

namespace A087445

/-- `ogf((1+4x+7x^2)/(1-x-x^2+x^3))` -/
def P10667281205416932489.Spec : Prop :=
  ∀ n, P10667281205416932489.a n = A087445 (n + 1)

end A087445

/-! ## A087445.P6997607585379095208

`record[lcm(3, n+1)-2+n]`
-/

namespace A087445.P6997607585379095208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℤ) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087445.P6997607585379095208

namespace A087445

/-- `record[lcm(3, n+1)-2+n]` -/
def P6997607585379095208.Spec : Prop :=
  ∀ n, P6997607585379095208.a n = A087445 (n + 1)

end A087445

/-! ## A087445.P5131911026380245137

`record[(2*n+1)/gcd(6, 1-n)²]`
-/

namespace A087445.P5131911026380245137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd 6 (1 - (n : ℤ)) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087445.P5131911026380245137

namespace A087445

/-- `record[(2*n+1)/gcd(6, 1-n)²]` -/
def P5131911026380245137.Spec : Prop :=
  ∀ n, P5131911026380245137.a n = (A087445 (n + 1) : ℚ)

end A087445

/-! ## A087445.P6348742552348461223

`floor(3*(4*n-2)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087445.P6348742552348461223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((4 * n : ℤ) - 2) - a (n - 1)

end

end A087445.P6348742552348461223

namespace A087445

/-- `floor(3*(4*n-2)-a(n-1))` -/
def P6348742552348461223.Spec : Prop :=
  ∀ n, P6348742552348461223.a n = A087445 (n + 1)

theorem P6348742552348461223.correct : P6348742552348461223.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A087445, Nat.add_sub_cancel, A087445.P6348742552348461223.a, A087445.P15689331082767495636.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A087445, Nat.add_sub_cancel, A087445.P6348742552348461223.a, A087445.P15689331082767495636.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087445

/-! ## A087445.P11954577717482105071

`record[(2*n+2*n+1)/gcd(3, n+1)]`
-/

namespace A087445.P11954577717482105071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + (2 * n + 1) : ℚ) / (Nat.gcd 3 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087445.P11954577717482105071

namespace A087445

/-- `record[(2*n+2*n+1)/gcd(3, n+1)]` -/
def P11954577717482105071.Spec : Prop :=
  ∀ n, P11954577717482105071.a n = (A087445 (n + 1) : ℚ)

end A087445

/-! ## A087445.P297086980185636645

`∑[dr(A282284(n))]`
-/

namespace A087445.P297086980185636645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A282284 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087445.P297086980185636645

namespace A087445

/-- `∑[dr(A282284(n))]` -/
def P297086980185636645.Spec : Prop :=
  ∀ n, (P297086980185636645.a n : ℤ) = A087445 (n + 1)

end A087445

/-! ## A087445.P1889551143752910629

`or(1, A228137(n+1))`
-/

namespace A087445.P1889551143752910629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228137 (n + 1))

end

end A087445.P1889551143752910629

namespace A087445

/-- `or(1, A228137(n+1))` -/
def P1889551143752910629.Spec : Prop :=
  ∀ n, P1889551143752910629.a n = A087445 (n + 1)

end A087445

/-!
# A087446: Numbers that are congruent to {1, 6} mod 15.

The programs for A087446, the canonical program `A087446.P11827279492108704500` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087446 has offset 1).

The definition of A087446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087446.P11827279492108704500

`15*(n+1)-a(n-1)-23` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087446

/-- `15*(n+1)-a(n-1)-23` -/
def P11827279492108704500.Spec : Prop :=
  ∀ n, P11827279492108704500.a n = A087446 (n + 1)

theorem P11827279492108704500.correct : P11827279492108704500.Spec := by
  intro n
  simp only [A087446, Nat.add_sub_cancel]

end A087446

/-! ## A087446.P13797846260319666634

`∑[∏{d}[n, floor(root(5, #))]]`
-/

namespace A087446.P13797846260319666634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ⌊(5 : ℝ) ^ (1 / (d : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087446.P13797846260319666634

namespace A087446

/-- `∑[∏{d}[n, floor(root(5, #))]]` -/
def P13797846260319666634.Spec : Prop :=
  ∀ n, P13797846260319666634.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P4951468228263655191

`a(n-2)+15` with `a(0)=1, a(1)=6`
-/

namespace A087446.P4951468228263655191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + 15

end

end A087446.P4951468228263655191

namespace A087446

/-- `a(n-2)+15` -/
def P4951468228263655191.Spec : Prop :=
  ∀ n, (P4951468228263655191.a n : ℤ) = A087446 (n + 1)

end A087446

/-! ## A087446.P4114344136424296612

`5*comp[3*n]-4`
-/

namespace A087446.P4114344136424296612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 4

end

end A087446.P4114344136424296612

namespace A087446

/-- `5*comp[3*n]-4` -/
def P4114344136424296612.Spec : Prop :=
  ∀ n, P4114344136424296612.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P3135690175478472157

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=5, a(2)=10`
-/

namespace A087446.P3135690175478472157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087446.P3135690175478472157

namespace A087446

/-- `∑[abs(a(n-2))]` -/
def P3135690175478472157.Spec : Prop :=
  ∀ n, (P3135690175478472157.a n : ℤ) = A087446 (n + 1)

end A087446

/-! ## A087446.P5394694801519885525

`∑[15-a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A087446.P5394694801519885525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  15 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087446.P5394694801519885525

namespace A087446

/-- `∑[15-a(n-1)]` -/
def P5394694801519885525.Spec : Prop :=
  ∀ n, P5394694801519885525.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P16211763480045116652

`∑[∑[ogf((1+5x+9x^2)/(1+x))]]`
-/

namespace A087446.P16211763480045116652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 9] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087446.P16211763480045116652

namespace A087446

/-- `∑[∑[ogf((1+5x+9x^2)/(1+x))]]` -/
def P16211763480045116652.Spec : Prop :=
  ∀ n, P16211763480045116652.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P3685662997635023834

`ogf((1+5x+9x^2)/(1-x-x^2+x^3))`
-/

namespace A087446.P3685662997635023834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 9] [1, -1, -1, 1] n

end

end A087446.P3685662997635023834

namespace A087446

/-- `ogf((1+5x+9x^2)/(1-x-x^2+x^3))` -/
def P3685662997635023834.Spec : Prop :=
  ∀ n, P3685662997635023834.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P5871889286603579024

`record[lcm(3, n+1)+2*(n-1)]`
-/

namespace A087446.P5871889286603579024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℤ) + 2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087446.P5871889286603579024

namespace A087446

/-- `record[lcm(3, n+1)+2*(n-1)]` -/
def P5871889286603579024.Spec : Prop :=
  ∀ n, P5871889286603579024.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P596723824978767396

`∑[A200990(a(n-1))]` with `a(0)=1`
-/

namespace A087446.P596723824978767396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A200990 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087446.P596723824978767396

namespace A087446

/-- `∑[A200990(a(n-1))]` -/
def P596723824978767396.Spec : Prop :=
  ∀ n, P596723824978767396.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P3082815087239023765

`record[A093544(n+1)+n]`
-/

namespace A087446.P3082815087239023765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093544 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087446.P3082815087239023765

namespace A087446

/-- `record[A093544(n+1)+n]` -/
def P3082815087239023765.Spec : Prop :=
  ∀ n, P3082815087239023765.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P529860850713993748

`abs(A016873(∑[char[2*n]]+n-1)-1)`
-/

namespace A087446.P529860850713993748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016873 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat - 1|

end

end A087446.P529860850713993748

namespace A087446

/-- `abs(A016873(∑[char[2*n]]+n-1)-1)` -/
def P529860850713993748.Spec : Prop :=
  ∀ n, P529860850713993748.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P1096001522854460068

`A016861(A032766(n))`
-/

namespace A087446.P1096001522854460068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A032766 n).toNat

end

end A087446.P1096001522854460068

namespace A087446

/-- `A016861(A032766(n))` -/
def P1096001522854460068.Spec : Prop :=
  ∀ n, P1096001522854460068.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P16781345821061585653

`A016861(A004526(n)+n)`
-/

namespace A087446.P16781345821061585653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A004526 n + (n : ℤ)).toNat

end

end A087446.P16781345821061585653

namespace A087446

/-- `A016861(A004526(n)+n)` -/
def P16781345821061585653.Spec : Prop :=
  ∀ n, P16781345821061585653.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P12424290061158381772

`A016861(A007494(n+1)-2)`
-/

namespace A087446.P12424290061158381772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A007494 (n + 1) - 2).toNat

end

end A087446.P12424290061158381772

namespace A087446

/-- `A016861(A007494(n+1)-2)` -/
def P12424290061158381772.Spec : Prop :=
  ∀ n, P12424290061158381772.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P14584039208677540161

`A016861((A042948(n)+n)/2)`
-/

namespace A087446.P14584039208677540161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (SequenceMachineLib.roundAway ((A042948 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A087446.P14584039208677540161

namespace A087446

/-- `A016861((A042948(n)+n)/2)` -/
def P14584039208677540161.Spec : Prop :=
  ∀ n, P14584039208677540161.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P7617557742788446915

`A016861(2*n-A110654(n))`
-/

namespace A087446.P7617557742788446915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 ((2 * n : ℤ) - A110654 n).toNat

end

end A087446.P7617557742788446915

namespace A087446

/-- `A016861(2*n-A110654(n))` -/
def P7617557742788446915.Spec : Prop :=
  ∀ n, P7617557742788446915.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P15098664237306310158

`A016861(A047219(n+1)-(n+1))`
-/

namespace A087446.P15098664237306310158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A047219 (n + 1) - (n + 1 : ℤ)).toNat

end

end A087446.P15098664237306310158

namespace A087446

/-- `A016861(A047219(n+1)-(n+1))` -/
def P15098664237306310158.Spec : Prop :=
  ∀ n, P15098664237306310158.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P11353231714486145898

`record[A000027(A130724(n+1)+n-1)+n-1]`
-/

namespace A087446.P11353231714486145898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A130724 (n + 1) + ((n : ℤ) - 1)).toNat + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087446.P11353231714486145898

namespace A087446

/-- `record[A000027(A130724(n+1)+n-1)+n-1]` -/
def P11353231714486145898.Spec : Prop :=
  ∀ n, P11353231714486145898.a n = A087446 (n + 1)

end A087446

/-! ## A087446.P9573050819523680222

`A016861(A057353(2*n))`
-/

namespace A087446.P9573050819523680222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A057353 (2 * n)).toNat

end

end A087446.P9573050819523680222

namespace A087446

/-- `A016861(A057353(2*n))` -/
def P9573050819523680222.Spec : Prop :=
  ∀ n, P9573050819523680222.a n = A087446 (n + 1)

end A087446

/-!
# A087447: a(0) = a(1) = 1; for n > 1, a(n) = (n+2)*2^(n-2).

The programs for A087447, the canonical program `A087447.P4073128484262093007` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087447 has offset 0).

The definition of A087447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087447.P4073128484262093007

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087447

/-- `4*a(n-1)-4*a(n-2)` -/
def P4073128484262093007.Spec : Prop :=
  ∀ n, P4073128484262093007.a n = A087447 n

theorem P4073128484262093007.correct : P4073128484262093007.Spec := by
  intro n
  simp only [A087447]

end A087447

/-! ## A087447.P15470242657659490632

`ogf((1-3x+4x^2-2x^3)/(1-4x+4x^2))`
-/

namespace A087447.P15470242657659490632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4, -2] [1, -4, 4] n

end

end A087447.P15470242657659490632

namespace A087447

/-- `ogf((1-3x+4x^2-2x^3)/(1-4x+4x^2))` -/
def P15470242657659490632.Spec : Prop :=
  ∀ n, P15470242657659490632.a n = A087447 n

end A087447

/-! ## A087447.P892810900899315797

`abs(ceil((n+2)*(-2)^(n-2)))`
-/

namespace A087447.P892810900899315797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n + 2 : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉|

end

end A087447.P892810900899315797

namespace A087447

/-- `abs(ceil((n+2)*(-2)^(n-2)))` -/
def P892810900899315797.Spec : Prop :=
  ∀ n, P892810900899315797.a n = A087447 n

end A087447

/-! ## A087447.P8372860390502209143

`(2/(n+1)+2)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A087447.P8372860390502209143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (2 / (n + 1 : ℚ) + 2) * a (n - 1)

end

end A087447.P8372860390502209143

namespace A087447

/-- `(2/(n+1)+2)*a(n-1)` -/
def P8372860390502209143.Spec : Prop :=
  ∀ n, P8372860390502209143.a n = (A087447 n : ℚ)

end A087447

/-! ## A087447.P15459402490452923330

`A129955(n)-2^n`
-/

namespace A087447.P15459402490452923330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 n - (2 ^ n : ℤ)

end

end A087447.P15459402490452923330

namespace A087447

/-- `A129955(n)-2^n` -/
def P15459402490452923330.Spec : Prop :=
  ∀ n, P15459402490452923330.a n = A087447 n

end A087447

/-! ## A087447.P12627712815939921641

`floor((n+2)/2*A011782(n))`
-/

namespace A087447.P12627712815939921641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2 * (A011782 n : ℚ)⌋

end

end A087447.P12627712815939921641

namespace A087447

/-- `floor((n+2)/2*A011782(n))` -/
def P12627712815939921641.Spec : Prop :=
  ∀ n, P12627712815939921641.a n = A087447 n

end A087447

/-! ## A087447.P17845387781698734681

`A129954(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A087447.P17845387781698734681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A129954 (n - 1) + a (n - 1)

end

end A087447.P17845387781698734681

namespace A087447

/-- `A129954(n-1)+a(n-1)` -/
def P17845387781698734681.Spec : Prop :=
  ∀ n, P17845387781698734681.a n = A087447 n

end A087447

/-! ## A087447.P8974649826600898509

`A129953(A028310(n))`
-/

namespace A087447.P8974649826600898509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (A028310 n).toNat

end

end A087447.P8974649826600898509

namespace A087447

/-- `A129953(A028310(n))` -/
def P8974649826600898509.Spec : Prop :=
  ∀ n, P8974649826600898509.a n = A087447 n

end A087447

/-! ## A087447.P6874364102731379442

`A049610(n)+A045891(n)`
-/

namespace A087447.P6874364102731379442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + A045891 n

end

end A087447.P6874364102731379442

namespace A087447

/-- `A049610(n)+A045891(n)` -/
def P6874364102731379442.Spec : Prop :=
  ∀ n, P6874364102731379442.a n = A087447 n

end A087447

/-! ## A087447.P15971645928576035875

`A129953(A000007(n)+n)`
-/

namespace A087447.P15971645928576035875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (A000007 n + (n : ℤ)).toNat

end

end A087447.P15971645928576035875

namespace A087447

/-- `A129953(A000007(n)+n)` -/
def P15971645928576035875.Spec : Prop :=
  ∀ n, P15971645928576035875.a n = A087447 n

end A087447

/-! ## A087447.P15782311435741078729

`A045623(n)-A166444(n)`
-/

namespace A087447.P15782311435741078729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A166444 n

end

end A087447.P15782311435741078729

namespace A087447

/-- `A045623(n)-A166444(n)` -/
def P15782311435741078729.Spec : Prop :=
  ∀ n, P15782311435741078729.a n = A087447 n

end A087447

/-! ## A087447.P15202429432325533952

`A131352(n)-A131577(n)`
-/

namespace A087447.P15202429432325533952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n - A131577 n

end

end A087447.P15202429432325533952

namespace A087447

/-- `A131352(n)-A131577(n)` -/
def P15202429432325533952.Spec : Prop :=
  ∀ n, P15202429432325533952.a n = A087447 n

end A087447

/-! ## A087447.P14360721540996207565

`A129953(xor(n, A000007(n)))`
-/

namespace A087447.P14360721540996207565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A087447.P14360721540996207565

namespace A087447

/-- `A129953(xor(n, A000007(n)))` -/
def P14360721540996207565.Spec : Prop :=
  ∀ n, P14360721540996207565.a n = A087447 n

end A087447

/-! ## A087447.P18230358911899309937

`A049610(n+1)+A034008(n)`
-/

namespace A087447.P18230358911899309937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1) + A034008 n

end

end A087447.P18230358911899309937

namespace A087447

/-- `A049610(n+1)+A034008(n)` -/
def P18230358911899309937.Spec : Prop :=
  ∀ n, P18230358911899309937.a n = A087447 n

end A087447

/-! ## A087447.P6864347924458838065

`A129953(A004275(n+1)-n)`
-/

namespace A087447.P6864347924458838065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A087447.P6864347924458838065

namespace A087447

/-- `A129953(A004275(n+1)-n)` -/
def P6864347924458838065.Spec : Prop :=
  ∀ n, P6864347924458838065.a n = A087447 n

end A087447

/-! ## A087447.P17754511223082075403

`A011782(n)+2*A049610(n)`
-/

namespace A087447.P17754511223082075403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + 2 * A049610 n

end

end A087447.P17754511223082075403

namespace A087447

/-- `A011782(n)+2*A049610(n)` -/
def P17754511223082075403.Spec : Prop :=
  ∀ n, P17754511223082075403.a n = A087447 n

end A087447

/-! ## A087447.P9253967985264109699

`A336102(2*n)+A034008(n)`
-/

namespace A087447.P9253967985264109699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 * n) + A034008 n

end

end A087447.P9253967985264109699

namespace A087447

/-- `A336102(2*n)+A034008(n)` -/
def P9253967985264109699.Spec : Prop :=
  ∀ n, P9253967985264109699.a n = A087447 n

end A087447

/-! ## A087447.P15066668245220606605

`2*A045891(n)-A011782(n)`
-/

namespace A087447.P15066668245220606605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045891 n - A011782 n

end

end A087447.P15066668245220606605

namespace A087447

/-- `2*A045891(n)-A011782(n)` -/
def P15066668245220606605.Spec : Prop :=
  ∀ n, P15066668245220606605.a n = A087447 n

end A087447

/-! ## A087447.P11518076960134537837

`A129954(n)-2*A166444(n)`
-/

namespace A087447.P11518076960134537837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n - 2 * A166444 n

end

end A087447.P11518076960134537837

namespace A087447

/-- `A129954(n)-2*A166444(n)` -/
def P11518076960134537837.Spec : Prop :=
  ∀ n, P11518076960134537837.a n = A087447 n

end A087447

/-! ## A087447.P15538173149585197547

`A011782(n)+n*A034008(n)`
-/

namespace A087447.P15538173149585197547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (n : ℤ) * A034008 n

end

end A087447.P15538173149585197547

namespace A087447

/-- `A011782(n)+n*A034008(n)` -/
def P15538173149585197547.Spec : Prop :=
  ∀ n, P15538173149585197547.a n = A087447 n

end A087447

/-!
# A087448: a(n) = 3^(n-1)*(n+3)/2 - (n-1)/2.

The programs for A087448, the canonical program `A087448.P6518235105336419250` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087448 has offset 0).

The definition of A087448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087448.P6518235105336419250

`3^(n-1)*(n+3)/2-(n-1)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087448

/-- `3^(n-1)*(n+3)/2-(n-1)/2` -/
def P6518235105336419250.Spec : Prop :=
  ∀ n, P6518235105336419250.a n = (A087448 n : ℚ)

end A087448

/-! ## A087448.P4961555159373026817

`abs(n-A082306(n))`
-/

namespace A087448.P4961555159373026817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A082306 n|

end

end A087448.P4961555159373026817

namespace A087448

/-- `abs(n-A082306(n))` -/
def P4961555159373026817.Spec : Prop :=
  ∀ n, P4961555159373026817.a n = A087448 n

end A087448

/-! ## A087448.P11702278748943009086

`(A006234(n+3)-(n-1))/2`
-/

namespace A087448.P11702278748943009086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006234 (n + 3) - ((n : ℤ) - 1) : ℚ) / 2

end

end A087448.P11702278748943009086

namespace A087448

/-- `(A006234(n+3)-(n-1))/2` -/
def P11702278748943009086.Spec : Prop :=
  ∀ n, P11702278748943009086.a n = (A087448 n : ℚ)

end A087448

/-! ## A087448.P17255164116088989597

`abs(A082133(n)-A086972(n))`
-/

namespace A087448.P17255164116088989597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082133 n - A086972 n|

end

end A087448.P17255164116088989597

namespace A087448

/-- `abs(A082133(n)-A086972(n))` -/
def P17255164116088989597.Spec : Prop :=
  ∀ n, P17255164116088989597.a n = A087448 n

end A087448

/-! ## A087448.P13048382953772128682

`(A082306(n)-n)%A082307(n+2)`
-/

namespace A087448.P13048382953772128682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082306 n - (n : ℤ)) (A082307 (n + 2))

end

end A087448.P13048382953772128682

namespace A087448

/-- `(A082306(n)-n)%A082307(n+2)` -/
def P13048382953772128682.Spec : Prop :=
  ∀ n, P13048382953772128682.a n = A087448 n

end A087448

/-!
# A087449: a(n) = n * 4^(n-1) + (2*4^n + 1) / 3.

The programs for A087449, the canonical program `A087449.P9297899499517990718` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087449 has offset 0).

The definition of A087449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087449.P9297899499517990718

`n*4^(n-1)+(2*4^n+1)/3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087449

/-- `n*4^(n-1)+(2*4^n+1)/3` -/
def P9297899499517990718.Spec : Prop :=
  ∀ n, P9297899499517990718.a n = (A087449 n : ℚ)

end A087449

/-! ## A087449.P4570722935258149471

`record[A081037(n)+round(2^n/6)]`
-/

namespace A087449.P4570722935258149471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081037 n + SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087449.P4570722935258149471

namespace A087449

/-- `record[A081037(n)+round(2^n/6)]` -/
def P4570722935258149471.Spec : Prop :=
  ∀ n, P4570722935258149471.a n = A087449 n

end A087449

/-! ## A087449.P16263349736359474691

`record[A077925(n)-A168150(n)]`
-/

namespace A087449.P16263349736359474691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n - A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087449.P16263349736359474691

namespace A087449

/-- `record[A077925(n)-A168150(n)]` -/
def P16263349736359474691.Spec : Prop :=
  ∀ n, P16263349736359474691.a n = A087449 n

end A087449

/-! ## A087449.P7661911069103127801

`abs(A007583(n)+record[A235789(n)])`
-/

namespace A087449.P7661911069103127801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007583 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A087449.P7661911069103127801

namespace A087449

/-- `abs(A007583(n)+record[A235789(n)])` -/
def P7661911069103127801.Spec : Prop :=
  ∀ n, P7661911069103127801.a n = A087449 n

end A087449

/-! ## A087449.P9583890691075090291

`record[A001045(n+1)-A168150(n)]`
-/

namespace A087449.P9583890691075090291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087449.P9583890691075090291

namespace A087449

/-- `record[A001045(n+1)-A168150(n)]` -/
def P9583890691075090291.Spec : Prop :=
  ∀ n, P9583890691075090291.a n = A087449 n

end A087449

/-! ## A087449.P12998408895796875030

`abs(A007583(n)+record[-A168150(n)])`
-/

namespace A087449.P12998408895796875030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007583 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A087449.P12998408895796875030

namespace A087449

/-- `abs(A007583(n)+record[-A168150(n)])` -/
def P12998408895796875030.Spec : Prop :=
  ∀ n, P12998408895796875030.a n = A087449 n

end A087449

/-! ## A087449.P8917326610340271278

`ceil(Δ[A081039(n)/9])`
-/

namespace A087449.P8917326610340271278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081039 n : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A087449.P8917326610340271278

namespace A087449

/-- `ceil(Δ[A081039(n)/9])` -/
def P8917326610340271278.Spec : Prop :=
  ∀ n, P8917326610340271278.a n = A087449 n

end A087449

/-!
# A087451: G.f.: (2-x)/((1+2*x)*(1-3*x)); e.g.f.: exp(3*x) + exp(-2*x); a(n) = 3^n + (-2)^n.

The programs for A087451, the canonical program `A087451.P624995120009927947` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087451 has offset 0).

The definition of A087451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+(-2)^n` (program `A087451.P624995120009927947`, by `A087451.P624995120009927947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087451.P624995120009927947

`3^n+(-2)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087451

/-- `3^n+(-2)^n` -/
def P624995120009927947.Spec : Prop :=
  ∀ n, P624995120009927947.a n = A087451 n

theorem P624995120009927947.correct : P624995120009927947.Spec := by
  intro n
  simp only [A087451]

end A087451

/-! ## A087451.P10322710110760109922

`ogf((-2+x)/(-1+x+6x^2))`
-/

namespace A087451.P10322710110760109922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -1, -6] n

end

end A087451.P10322710110760109922

namespace A087451

/-- `ogf((-2+x)/(-1+x+6x^2))` -/
def P10322710110760109922.Spec : Prop :=
  ∀ n, P10322710110760109922.a n = A087451 n

end A087451

/-! ## A087451.P475697312105043165

`floor(a(n-1)+6*a(n-2))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087451.P475697312105043165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + 6 * a (n - 2)

end

end A087451.P475697312105043165

namespace A087451

/-- `floor(a(n-1)+6*a(n-2))` -/
def P475697312105043165.Spec : Prop :=
  ∀ n, (P475697312105043165.a n : ℤ) = A087451 n

theorem P475697312105043165.correct : P475697312105043165.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A087451, Nat.add_sub_cancel, A087451.P475697312105043165.a, A087451.P624995120009927947.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A087451, Nat.add_sub_cancel, A087451.P475697312105043165.a, A087451.P624995120009927947.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087451

/-! ## A087451.P11140878156658593143

`ceil(a(n-1)+6*a(n-2))` with `a(0)=2, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A087451.P11140878156658593143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + 6 * a (n - 2)

end

end A087451.P11140878156658593143

namespace A087451

/-- `ceil(a(n-1)+6*a(n-2))` -/
def P11140878156658593143.Spec : Prop :=
  ∀ n, (P11140878156658593143.a n : ℤ) = A087451 n

theorem P11140878156658593143.correct : P11140878156658593143.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A087451, Nat.add_sub_cancel, A087451.P11140878156658593143.a, A087451.P624995120009927947.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A087451, Nat.add_sub_cancel, A087451.P11140878156658593143.a, A087451.P624995120009927947.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087451

/-! ## A087451.P16743788411078037234

`6*(a(n-2)+a(n-1)/6)` with `a(0)=2, a(1)=1`
-/

namespace A087451.P16743788411078037234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  6 * (a (n - 2) + a (n - 1) / 6)

end

end A087451.P16743788411078037234

namespace A087451

/-- `6*(a(n-2)+a(n-1)/6)` -/
def P16743788411078037234.Spec : Prop :=
  ∀ n, P16743788411078037234.a n = (A087451 n : ℚ)

theorem P16743788411078037234.correct : P16743788411078037234.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A087451, Nat.add_sub_cancel, A087451.P16743788411078037234.a, A087451.P624995120009927947.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A087451, Nat.add_sub_cancel, A087451.P16743788411078037234.a, A087451.P624995120009927947.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087451

/-! ## A087451.P18317049862605618625

`Δ[A344747(n+1)]`
-/

namespace A087451.P18317049862605618625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087451.P18317049862605618625

namespace A087451

/-- `Δ[A344747(n+1)]` -/
def P18317049862605618625.Spec : Prop :=
  ∀ n, P18317049862605618625.a n = A087451 n

end A087451

/-! ## A087451.P12548901537933201053

`Δ[A003462(n)-A140966(n)]`
-/

namespace A087451.P12548901537933201053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A140966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087451.P12548901537933201053

namespace A087451

/-- `Δ[A003462(n)-A140966(n)]` -/
def P12548901537933201053.Spec : Prop :=
  ∀ n, P12548901537933201053.a n = A087451 n

end A087451

/-! ## A087451.P4242522313064269864

`xor(A135399(n), A153284(n+1))`
-/

namespace A087451.P4242522313064269864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135399 n) (A153284 (n + 1))

end

end A087451.P4242522313064269864

namespace A087451

/-- `xor(A135399(n), A153284(n+1))` -/
def P4242522313064269864.Spec : Prop :=
  ∀ n, P4242522313064269864.a n = A087451 n

end A087451

/-! ## A087451.P14452361194311503408

`abs(A000079(n)+Δ[A014983(n)])`
-/

namespace A087451.P14452361194311503408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + (f1 (n + 1) - f1 n)|

end

end A087451.P14452361194311503408

namespace A087451

/-- `abs(A000079(n)+Δ[A014983(n)])` -/
def P14452361194311503408.Spec : Prop :=
  ∀ n, P14452361194311503408.a n = A087451 n

end A087451

/-! ## A087451.P11454482983765592333

`abs(Δ[A000051(n)-A084567(n)])`
-/

namespace A087451.P11454482983765592333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A084567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087451.P11454482983765592333

namespace A087451

/-- `abs(Δ[A000051(n)-A084567(n)])` -/
def P11454482983765592333.Spec : Prop :=
  ∀ n, P11454482983765592333.a n = A087451 n

end A087451

/-! ## A087451.P2616057814981655193

`Δ[A015441(n)+∑[A015441(n)]]`
-/

namespace A087451.P2616057814981655193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087451.P2616057814981655193

namespace A087451

/-- `Δ[A015441(n)+∑[A015441(n)]]` -/
def P2616057814981655193.Spec : Prop :=
  ∀ n, P2616057814981655193.a n = A087451 n

end A087451

/-! ## A087451.P11778389033433030862

`Δ[A094556(n)+Δ[A124302(n)]]`
-/

namespace A087451.P11778389033433030862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087451.P11778389033433030862

namespace A087451

/-- `Δ[A094556(n)+Δ[A124302(n)]]` -/
def P11778389033433030862.Spec : Prop :=
  ∀ n, P11778389033433030862.a n = A087451 n

end A087451

/-! ## A087451.P2274312104144347203

`Δ[A000079(n)*A015441(n)]/A000079(n)`
-/

namespace A087451.P2274312104144347203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A015441 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A087451.P2274312104144347203

namespace A087451

/-- `Δ[A000079(n)*A015441(n)]/A000079(n)` -/
def P2274312104144347203.Spec : Prop :=
  ∀ n, P2274312104144347203.a n = (A087451 n : ℚ)

end A087451

/-!
# A087452: G.f.: (2-x)/((1+3*x)*(1-4*x)); e.g.f.: exp(4*x) + exp(-3*x); a(n) = 4^n + (-3)^n.

The programs for A087452, the canonical program `A087452.P11334010265408513483` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087452 has offset 0).

The definition of A087452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+(-3)^n` (program `A087452.P11334010265408513483`, by `A087452.P11334010265408513483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087452.P11334010265408513483

`4^n+(-3)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087452

/-- `4^n+(-3)^n` -/
def P11334010265408513483.Spec : Prop :=
  ∀ n, P11334010265408513483.a n = A087452 n

theorem P11334010265408513483.correct : P11334010265408513483.Spec := by
  intro n
  simp only [A087452]

end A087452

/-! ## A087452.P787685322849921025

`ogf((-2+x)/(-1+x+12x^2))`
-/

namespace A087452.P787685322849921025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -1, -12] n

end

end A087452.P787685322849921025

namespace A087452

/-- `ogf((-2+x)/(-1+x+12x^2))` -/
def P787685322849921025.Spec : Prop :=
  ∀ n, P787685322849921025.a n = A087452 n

end A087452

/-! ## A087452.P7514568880250395167

`floor(a(n-1)+3*4*a(n-2))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087452.P7514568880250395167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + 3 * (4 * a (n - 2))

end

end A087452.P7514568880250395167

namespace A087452

/-- `floor(a(n-1)+3*4*a(n-2))` -/
def P7514568880250395167.Spec : Prop :=
  ∀ n, (P7514568880250395167.a n : ℤ) = A087452 n

theorem P7514568880250395167.correct : P7514568880250395167.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A087452, Nat.add_sub_cancel, A087452.P7514568880250395167.a, A087452.P11334010265408513483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A087452, Nat.add_sub_cancel, A087452.P7514568880250395167.a, A087452.P11334010265408513483.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087452

/-! ## A087452.P2624756681365772242

`ceil(a(n-1)+3*4*a(n-2))` with `a(0)=2, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A087452.P2624756681365772242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + 3 * (4 * a (n - 2))

end

end A087452.P2624756681365772242

namespace A087452

/-- `ceil(a(n-1)+3*4*a(n-2))` -/
def P2624756681365772242.Spec : Prop :=
  ∀ n, (P2624756681365772242.a n : ℤ) = A087452 n

theorem P2624756681365772242.correct : P2624756681365772242.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A087452, Nat.add_sub_cancel, A087452.P2624756681365772242.a, A087452.P11334010265408513483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A087452, Nat.add_sub_cancel, A087452.P2624756681365772242.a, A087452.P11334010265408513483.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087452

/-! ## A087452.P16442139951609546397

`3*(a(n-1)/3+4*a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A087452.P16442139951609546397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 * (a (n - 1) / 3 + 4 * a (n - 2))

end

end A087452.P16442139951609546397

namespace A087452

/-- `3*(a(n-1)/3+4*a(n-2))` -/
def P16442139951609546397.Spec : Prop :=
  ∀ n, P16442139951609546397.a n = (A087452 n : ℚ)

theorem P16442139951609546397.correct : P16442139951609546397.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A087452, Nat.add_sub_cancel, A087452.P16442139951609546397.a, A087452.P11334010265408513483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A087452, Nat.add_sub_cancel, A087452.P16442139951609546397.a, A087452.P11334010265408513483.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087452

/-! ## A087452.P15346704247255382986

`xor(A024023(n), A201455(n))`
-/

namespace A087452.P15346704247255382986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024023 n) (A201455 n)

end

end A087452.P15346704247255382986

namespace A087452

/-- `xor(A024023(n), A201455(n))` -/
def P15346704247255382986.Spec : Prop :=
  ∀ n, P15346704247255382986.a n = A087452 n

end A087452

/-! ## A087452.P11604089551802259950

`abs(A262710(n)+A000244(n))`
-/

namespace A087452.P11604089551802259950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262710 n + A000244 n|

end

end A087452.P11604089551802259950

namespace A087452

/-- `abs(A262710(n)+A000244(n))` -/
def P11604089551802259950.Spec : Prop :=
  ∀ n, P11604089551802259950.a n = A087452 n

end A087452

/-! ## A087452.P211108052655569663

`Δ[A047849(n)+A014983(n)]`
-/

namespace A087452.P211108052655569663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087452.P211108052655569663

namespace A087452

/-- `Δ[A047849(n)+A014983(n)]` -/
def P211108052655569663.Spec : Prop :=
  ∀ n, P211108052655569663.a n = A087452 n

end A087452

/-! ## A087452.P14730066455167551779

`Δ[A047849(n)-A084567(n)]`
-/

namespace A087452.P14730066455167551779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n - A084567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087452.P14730066455167551779

namespace A087452

/-- `Δ[A047849(n)-A084567(n)]` -/
def P14730066455167551779.Spec : Prop :=
  ∀ n, P14730066455167551779.a n = A087452 n

end A087452

/-! ## A087452.P6986003801550479086

`Δ[A002450(n)+∑[A287479(2*n)]]`
-/

namespace A087452.P6986003801550479086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087452.P6986003801550479086

namespace A087452

/-- `Δ[A002450(n)+∑[A287479(2*n)]]` -/
def P6986003801550479086.Spec : Prop :=
  ∀ n, P6986003801550479086.a n = A087452 n

end A087452

/-!
# A087453: a(n) = S(n,5), where S(n,m) = Sum_{k=0..n} binomial(n,k)*Fibonacci(m*k).

The programs for A087453, the canonical program `A087453.P14758727173378565098` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087453 has offset 0).

The definition of A087453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087453.P14758727173378565098

`13*a(n-1)-11*a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087453

/-- `13*a(n-1)-11*a(n-2)` -/
def P14758727173378565098.Spec : Prop :=
  ∀ n, P14758727173378565098.a n = A087453 n

theorem P14758727173378565098.correct : P14758727173378565098.Spec := by
  intro n
  simp only [A087453]

end A087453

/-! ## A087453.P3136498260892290503

`1/sqrt(5)*(((13+5*sqrt(5))/2)^n-((13-5*sqrt(5))/2)^n)`
-/

namespace A087453.P3136498260892290503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.sqrt (5 : ℝ) * (((13 + 5 * Real.sqrt (5 : ℝ)) / 2) ^ n - ((13 - 5 * Real.sqrt (5 : ℝ)) / 2) ^ n)

end

end A087453.P3136498260892290503

namespace A087453

/-- `1/sqrt(5)*(((13+5*sqrt(5))/2)^n-((13-5*sqrt(5))/2)^n)` -/
def P3136498260892290503.Spec : Prop :=
  ∀ n, P3136498260892290503.a n = (A087453 n : ℝ)

end A087453

/-! ## A087453.P2643011881314094462

`ogf(5x/(1-13x+11x^2))`
-/

namespace A087453.P2643011881314094462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -13, 11] n

end

end A087453.P2643011881314094462

namespace A087453

/-- `ogf(5x/(1-13x+11x^2))` -/
def P2643011881314094462.Spec : Prop :=
  ∀ n, P2643011881314094462.a n = A087453 n

end A087453

/-!
# A087454: Multiplicative inverse of the n-th prime prime(n) modulo prime(n-1).

The programs for A087454, there is no canonical definition to state claims against.
-/

/-! ## A087454.P18121349717131791909

`A000040(n+1)-A194367(n+1)`
-/

namespace A087454.P18121349717131791909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A194367 (n + 1)

end

end A087454.P18121349717131791909

/-! ## A087454.P16809704804146872115

`A073604(n+1)/A065091(n+1)`
-/

namespace A087454.P16809704804146872115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073604 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A087454.P16809704804146872115

/-! ## A087454.P15652622993889081953

`A006093(n+1)+1-A194367(n+1)`
-/

namespace A087454.P15652622993889081953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A194367 (n + 1))

end

end A087454.P15652622993889081953

/-! ## A087454.P10153138195932313977

`(A077338(n+1)+1)/A065091(n+1)`
-/

namespace A087454.P10153138195932313977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077338 (n + 1) + 1 : ℚ) / (A065091 (n + 1) : ℚ)

end

end A087454.P10153138195932313977

/-! ## A087454.P15077694666606048143

`A100484(n+1)/2-A194367(n+1)`
-/

namespace A087454.P15077694666606048143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A194367 (n + 1) : ℚ)

end

end A087454.P15077694666606048143

/-! ## A087454.P12773106965845033156

`A007504(n+1)-(A194367(n+1)+A007504(n))`
-/

namespace A087454.P12773106965845033156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (A194367 (n + 1) + A007504 n)

end

end A087454.P12773106965845033156

/-! ## A087454.P18300136729287552463

`A073603(n+1)/A069830(n+1)-A194367(n+1)`
-/

namespace A087454.P18300136729287552463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (A069830 (n + 1) : ℚ) - (A194367 (n + 1) : ℚ)

end

end A087454.P18300136729287552463

/-! ## A087454.P12924323940409020312

`A246655(A027883(n+1))-A194367(n+1)`
-/

namespace A087454.P12924323940409020312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A027883 (n + 1)).toNat - A194367 (n + 1)

end

end A087454.P12924323940409020312

/-! ## A087454.P16697236246253819880

`p?[A210882(n+1)]-A194367(n+1)`
-/

namespace A087454.P16697236246253819880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A194367 (n + 1)

end

end A087454.P16697236246253819880

/-! ## A087454.P6533611523080395958

`A362254(p?[2*n+1])`
-/

namespace A087454.P6533611523080395958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A087454.P6533611523080395958

/-! ## A087454.P10234899763347206857

`A362254(A065091(n+1))`
-/

namespace A087454.P10234899763347206857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (A065091 (n + 1)).toNat

end

end A087454.P10234899763347206857

/-! ## A087454.P14788148276448100238

`A362254(A000040(n+2))`
-/

namespace A087454.P14788148276448100238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (A000040 (n + 2)).toNat

end

end A087454.P14788148276448100238

/-! ## A087454.P10853699006389482755

`A362254(A006005(n+2))`
-/

namespace A087454.P10853699006389482755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (A006005 (n + 2)).toNat

end

end A087454.P10853699006389482755

/-! ## A087454.P11860170106127073327

`A362254(record[A006530(n+3)])`
-/

namespace A087454.P11860170106127073327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087454.P11860170106127073327

/-! ## A087454.P5855480272435677066

`A362254(record[A020639(n+3)])`
-/

namespace A087454.P5855480272435677066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087454.P5855480272435677066

/-! ## A087454.P18291898477010277705

`A362254(A006093(n+2)+1)`
-/

namespace A087454.P18291898477010277705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (A006093 (n + 2) + 1).toNat

end

end A087454.P18291898477010277705

/-! ## A087454.P17505020187967385030

`A362254(A008864(n+2)-1)`
-/

namespace A087454.P17505020187967385030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (A008864 (n + 2) - 1).toNat

end

end A087454.P17505020187967385030

/-! ## A087454.P7417030591277942744

`A362254(A040976(n+2)+2)`
-/

namespace A087454.P7417030591277942744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (A040976 (n + 2) + 2).toNat

end

end A087454.P7417030591277942744

/-! ## A087454.P6215619053546324878

`A362254(A151800(A006093(n+2)))`
-/

namespace A087454.P6215619053546324878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362254 (A151800 (A006093 (n + 2)).toNat).toNat

end

end A087454.P6215619053546324878

/-!
# A087455: Expansion of (1 - x)/(1 - 2*x + 3*x^2) in powers of x.

The programs for A087455, the canonical program `A087455.P7198837256308338611` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087455 has offset 0).

The definition of A087455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+3x^2))` (program `A087455.P7198837256308338611`, by `A087455.P7198837256308338611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087455.P7198837256308338611

`ogf((1-x)/(1-2x+3x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087455

/-- `ogf((1-x)/(1-2x+3x^2))` -/
def P7198837256308338611.Spec : Prop :=
  ∀ n, P7198837256308338611.a n = A087455 n

theorem P7198837256308338611.correct : P7198837256308338611.Spec := by
  intro n
  simp only [A087455]

end A087455

/-! ## A087455.P6581871389615867924

`2*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A087455.P6581871389615867924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - 3 * a (n - 2)

end

end A087455.P6581871389615867924

namespace A087455

/-- `2*a(n-1)-3*a(n-2)` -/
def P6581871389615867924.Spec : Prop :=
  ∀ n, P6581871389615867924.a n = A087455 n

end A087455

/-! ## A087455.P13831639287889755939

`Δ[A088137(n)]`
-/

namespace A087455.P13831639287889755939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087455.P13831639287889755939

namespace A087455

/-- `Δ[A088137(n)]` -/
def P13831639287889755939.Spec : Prop :=
  ∀ n, P13831639287889755939.a n = A087455 n

end A087455

/-! ## A087455.P5576618999226456189

`A088137(n+1)-A088137(n)`
-/

namespace A087455.P5576618999226456189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088137 (n + 1) - A088137 n

end

end A087455.P5576618999226456189

namespace A087455

/-- `A088137(n+1)-A088137(n)` -/
def P5576618999226456189.Spec : Prop :=
  ∀ n, P5576618999226456189.a n = A087455 n

end A087455

/-! ## A087455.P8399032124092443810

`a(n-1)-(a(n-2)+a(n-2)+a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A087455.P8399032124092443810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 1))))

end

end A087455.P8399032124092443810

namespace A087455

/-- `a(n-1)-(a(n-2)+a(n-2)+a(n-2)-a(n-1))` -/
def P8399032124092443810.Spec : Prop :=
  ∀ n, P8399032124092443810.a n = A087455 n

end A087455

/-! ## A087455.P4779903975803747598

`a(n-1)-(a(n-2)-(a(n-1)-a(n-2)-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A087455.P4779903975803747598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 2)))

end

end A087455.P4779903975803747598

namespace A087455

/-- `a(n-1)-(a(n-2)-(a(n-1)-a(n-2)-a(n-2)))` -/
def P4779903975803747598.Spec : Prop :=
  ∀ n, P4779903975803747598.a n = A087455 n

end A087455

/-!
# A087456: Palindromic hypotenuses in primitive Pythagorean triples.

The programs for A087456, there is no canonical definition to state claims against.
-/

/-! ## A087456.P11851935811256531670

`record[A055483(A020882(n+1))]`
-/

namespace A087456.P11851935811256531670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A020882 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087456.P11851935811256531670

/-! ## A087456.P1592018798695542544

`∩[A002113(n+1), A008846(n+1)]`
-/

namespace A087456.P1592018798695542544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087456.P1592018798695542544

/-! ## A087456.P12826956959015632210

`∩[A008846(n+1), A029950(n+1)]`
-/

namespace A087456.P12826956959015632210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087456.P12826956959015632210

/-! ## A087456.P1386440681970989245

`∩[A008846(n+1), A056525(n+1)]`
-/

namespace A087456.P1386440681970989245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087456.P1386440681970989245

/-! ## A087456.P17747681834106291170

`∩[A008846(n+1), A061917(n+1)]`
-/

namespace A087456.P17747681834106291170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087456.P17747681834106291170

/-!
# A087457: Number of odd length roads between any adjacent nodes in virtual optimal chordal ring of degree 3 (the length of chord < number of nodes/2).

The programs for A087457, there is no canonical definition to state claims against.
-/

/-! ## A087457.P600842254710248495

`A002893(n+1)/3`
-/

namespace A087457.P600842254710248495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002893 (n + 1) : ℚ) / 3

end

end A087457.P600842254710248495

/-! ## A087457.P2103255058389010906

`9*a(n-1)-2*A086618(n)` with `a(0)=1`
-/

namespace A087457.P2103255058389010906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - 2 * A086618 n

end

end A087457.P2103255058389010906

/-! ## A087457.P9615418165480124040

`Δ[A174123(n)/3]`
-/

namespace A087457.P9615418165480124040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174123 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087457.P9615418165480124040

/-! ## A087457.P1230889069751136217

`Δ[A207321(n)/3]`
-/

namespace A087457.P1230889069751136217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207321 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087457.P1230889069751136217

/-! ## A087457.P5055808596596980230

`Δ[∑[A002893(n)]/3]`
-/

namespace A087457.P5055808596596980230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087457.P5055808596596980230

/-! ## A087457.P3297093636045983400

`A002893(n)+2*A228514(n)`
-/

namespace A087457.P3297093636045983400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n + 2 * A228514 n

end

end A087457.P3297093636045983400

/-! ## A087457.P9874866937073092744

`A226312(n+1)/(2*(n+1))`
-/

namespace A087457.P9874866937073092744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226312 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A087457.P9874866937073092744

/-! ## A087457.P6848404262589596192

`A338934(2*(n+1)²)`
-/

namespace A087457.P6848404262589596192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338934 (2 * (n + 1) ^ 2)

end

end A087457.P6848404262589596192

/-!
# A087458: Greatest prime p such that prime(n)+p <= prime(n+1); a(1)=1.

The programs for A087458, there is no canonical definition to state claims against.
-/

/-! ## A087458.P4905224608924017520

`A035031(A001223(n+1))`
-/

namespace A087458.P4905224608924017520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A001223 (n + 1)).toNat

end

end A087458.P4905224608924017520

/-! ## A087458.P3988949574475319018

`A035031(A075526(n+1))`
-/

namespace A087458.P3988949574475319018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A075526 (n + 1)).toNat

end

end A087458.P3988949574475319018

/-! ## A087458.P10049822360392214213

`A056813(A076821(n+1))`
-/

namespace A087458.P10049822360392214213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A076821 (n + 1)).toNat

end

end A087458.P10049822360392214213

/-! ## A087458.P7302124421077628561

`A035031(A054541(n+2))`
-/

namespace A087458.P7302124421077628561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A054541 (n + 2)).toNat

end

end A087458.P7302124421077628561

/-! ## A087458.P13788807336993379081

`A035031(A125266(n+2))`
-/

namespace A087458.P13788807336993379081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A125266 (n + 2)).toNat

end

end A087458.P13788807336993379081

/-! ## A087458.P1352762441550314273

`A136548(A076368(n+2))`
-/

namespace A087458.P1352762441550314273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A076368 (n + 2)).toNat

end

end A087458.P1352762441550314273

/-! ## A087458.P7530486256484573449

`A136548(A230846(n+2))`
-/

namespace A087458.P7530486256484573449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A230846 (n + 2)).toNat

end

end A087458.P7530486256484573449

/-! ## A087458.P18343852100183377439

`A136548(A230847(n+2))`
-/

namespace A087458.P18343852100183377439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A230847 (n + 2)).toNat

end

end A087458.P18343852100183377439

/-! ## A087458.P13999416210307475775

`A056813(A001223(n+1)²)`
-/

namespace A087458.P13999416210307475775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A001223 (n + 1) ^ 2).toNat

end

end A087458.P13999416210307475775

/-! ## A087458.P4903607912775460982

`A035031(Δ[A000040(n+1)])`
-/

namespace A087458.P4903607912775460982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (f1 (n + 1) - f1 n).toNat

end

end A087458.P4903607912775460982

/-!
# A087459: Values (X + Y - Z) sorted on Z, then on Y, where (X,Y,Z) is a primitive Pythagorean triple with X

The programs for A087459, there is no canonical definition to state claims against.
-/

/-! ## A087459.P1926199410668435610

`2*A014498(n+1)`
-/

namespace A087459.P1926199410668435610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014498 (n + 1)

end

end A087459.P1926199410668435610

/-! ## A087459.P15727277574167932051

`A046086(n+1)+A046087(n+1)-A020882(n+1)`
-/

namespace A087459.P15727277574167932051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) + A046087 (n + 1) - A020882 (n + 1)

end

end A087459.P15727277574167932051

/-! ## A087459.P4194759928021765013

`A120681(n+1)-A020882(n+1)`
-/

namespace A087459.P4194759928021765013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120681 (n + 1) - A020882 (n + 1)

end

end A087459.P4194759928021765013

/-! ## A087459.P6468574250666266720

`A046086(n+1)-A118961(n+1)`
-/

namespace A087459.P6468574250666266720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) - A118961 (n + 1)

end

end A087459.P6468574250666266720

/-! ## A087459.P11572545964486754218

`A046087(n+1)-A118962(n+1)`
-/

namespace A087459.P11572545964486754218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) - A118962 (n + 1)

end

end A087459.P11572545964486754218

/-! ## A087459.P14437261798020411168

`A395177(n+1)%A120681(n+1)`
-/

namespace A087459.P14437261798020411168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395177 (n + 1)) (A120681 (n + 1))

end

end A087459.P14437261798020411168

/-! ## A087459.P1914841881931788047

`A014498(A000027(n+1))+A014498(n+1)`
-/

namespace A087459.P1914841881931788047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014498 (A000027 (n + 1)).toNat + A014498 (n + 1)

end

end A087459.P1914841881931788047

/-! ## A087459.P952335179704426377

`A020882(n+1)-(A118962(n+1)+A118961(n+1))`
-/

namespace A087459.P952335179704426377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - (A118962 (n + 1) + A118961 (n + 1))

end

end A087459.P952335179704426377

/-! ## A087459.P5102421186554437959

`A046086(n+1)+A120682(n+1)-A118962(n+1)`
-/

namespace A087459.P5102421186554437959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) + (A120682 (n + 1) - A118962 (n + 1))

end

end A087459.P5102421186554437959

/-! ## A087459.P13780458301890726355

`A046087(n+1)-(A120682(n+1)+A118961(n+1))`
-/

namespace A087459.P13780458301890726355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) - (A120682 (n + 1) + A118961 (n + 1))

end

end A087459.P13780458301890726355

/-! ## A087459.P14375590894281267845

`A120681(n+1)-(A118961(n+1)+A046087(n+1))`
-/

namespace A087459.P14375590894281267845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120681 (n + 1) - (A118961 (n + 1) + A046087 (n + 1))

end

end A087459.P14375590894281267845

/-! ## A087459.P1000227326939766524

`A014498(n+1)+A014498(n+1)/A115561(A115561(n+1))`
-/

namespace A087459.P1000227326939766524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014498 (n + 1) : ℚ) + (A014498 (n + 1) : ℚ) / (A115561 (A115561 (n + 1)).toNat : ℚ)

end

end A087459.P1000227326939766524

/-! ## A087459.P9770564527035787812

`A004277(A014498(n+1))`
-/

namespace A087459.P9770564527035787812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A014498 (n + 1)).toNat

end

end A087459.P9770564527035787812

/-!
# A087461: Arithmetic mean of n-th and 2n-th primes.

The programs for A087461, the canonical program `A087461.P9410711582706575708` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087461 has offset 2).

The definition of A087461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087461.P17381370400197586430

`A258934(n+2)+A065091(n+1)`
-/

namespace A087461.P17381370400197586430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258934 (n + 2) + A065091 (n + 1)

end

end A087461.P17381370400197586430

namespace A087461

/-- `A258934(n+2)+A065091(n+1)` -/
def P17381370400197586430.Spec : Prop :=
  ∀ n, P17381370400197586430.a n = A087461 (n + 2)

end A087461

/-! ## A087461.P13900102433716707402

`A092390(n+2)/2`
-/

namespace A087461.P13900102433716707402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092390 (n + 2) : ℚ) / 2

end

end A087461.P13900102433716707402

namespace A087461

/-- `A092390(n+2)/2` -/
def P13900102433716707402.Spec : Prop :=
  ∀ n, P13900102433716707402.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P3047670798122648277

`A258934(n+2)+A000040(n+2)`
-/

namespace A087461.P3047670798122648277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258934 (n + 2) + A000040 (n + 2)

end

end A087461.P3047670798122648277

namespace A087461

/-- `A258934(n+2)+A000040(n+2)` -/
def P3047670798122648277.Spec : Prop :=
  ∀ n, P3047670798122648277.a n = A087461 (n + 2)

end A087461

/-! ## A087461.P13794132713872321593

`A031215(n+2)-A258934(n+2)`
-/

namespace A087461.P13794132713872321593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 2) - A258934 (n + 2)

end

end A087461.P13794132713872321593

namespace A087461

/-- `A031215(n+2)-A258934(n+2)` -/
def P13794132713872321593.Spec : Prop :=
  ∀ n, P13794132713872321593.a n = A087461 (n + 2)

end A087461

/-! ## A087461.P8937620318807198846

`(A031215(n+2)+A000040(n+2))/2`
-/

namespace A087461.P8937620318807198846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 2) + A000040 (n + 2) : ℚ) / 2

end

end A087461.P8937620318807198846

namespace A087461

/-- `(A031215(n+2)+A000040(n+2))/2` -/
def P8937620318807198846.Spec : Prop :=
  ∀ n, P8937620318807198846.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P8401188511373514362

`(A066066(n+2)+A001748(n+2))/2`
-/

namespace A087461.P8401188511373514362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066066 (n + 2) + A001748 (n + 2) : ℚ) / 2

end

end A087461.P8401188511373514362

namespace A087461

/-- `(A066066(n+2)+A001748(n+2))/2` -/
def P8401188511373514362.Spec : Prop :=
  ∀ n, P8401188511373514362.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P15030361673533556844

`A000040(n+2)+A072473(n+2)/2`
-/

namespace A087461.P15030361673533556844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) + (A072473 (n + 2) : ℚ) / 2

end

end A087461.P15030361673533556844

namespace A087461

/-- `A000040(n+2)+A072473(n+2)/2` -/
def P15030361673533556844.Spec : Prop :=
  ∀ n, P15030361673533556844.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P10501669315037071852

`(A100484(n+2)+A072473(n+2))/2`
-/

namespace A087461.P10501669315037071852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 2) + A072473 (n + 2) : ℚ) / 2

end

end A087461.P10501669315037071852

namespace A087461

/-- `(A100484(n+2)+A072473(n+2))/2` -/
def P10501669315037071852.Spec : Prop :=
  ∀ n, P10501669315037071852.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P12956096538069984507

`A031215(n+2)-A072473(n+2)/2`
-/

namespace A087461.P12956096538069984507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 2) : ℚ) - (A072473 (n + 2) : ℚ) / 2

end

end A087461.P12956096538069984507

namespace A087461

/-- `A031215(n+2)-A072473(n+2)/2` -/
def P12956096538069984507.Spec : Prop :=
  ∀ n, P12956096538069984507.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P9405221503244206094

`(A116368(n+2)-A001223(n+2))/2`
-/

namespace A087461.P9405221503244206094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116368 (n + 2) - A001223 (n + 2) : ℚ) / 2

end

end A087461.P9405221503244206094

namespace A087461

/-- `(A116368(n+2)-A001223(n+2))/2` -/
def P9405221503244206094.Spec : Prop :=
  ∀ n, P9405221503244206094.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P14279518433675865881

`A072473(n+2)+A258934(n+2)-A066066(n+2)`
-/

namespace A087461.P14279518433675865881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 2) + (A258934 (n + 2) - A066066 (n + 2))

end

end A087461.P14279518433675865881

namespace A087461

/-- `A072473(n+2)+A258934(n+2)-A066066(n+2)` -/
def P14279518433675865881.Spec : Prop :=
  ∀ n, P14279518433675865881.a n = A087461 (n + 2)

end A087461

/-! ## A087461.P3560597138647144429

`A272042(n+2)-(A258934(n+2)+A072473(n+2))`
-/

namespace A087461.P3560597138647144429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 2) - (A258934 (n + 2) + A072473 (n + 2))

end

end A087461.P3560597138647144429

namespace A087461

/-- `A272042(n+2)-(A258934(n+2)+A072473(n+2))` -/
def P3560597138647144429.Spec : Prop :=
  ∀ n, P3560597138647144429.a n = A087461 (n + 2)

end A087461

/-! ## A087461.P9410711582706575708

`A089253(n+1)+A089038(2*(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087461

/-- `A089253(n+1)+A089038(2*(n+1))` -/
def P9410711582706575708.Spec : Prop :=
  ∀ n, P9410711582706575708.a n = A087461 (n + 2)

theorem P9410711582706575708.correct : P9410711582706575708.Spec := by
  intro n
  simp only [A087461, Nat.add_sub_cancel]

end A087461

/-! ## A087461.P143361126767390425

`A105760(2*n+1)+A089192(n+1)`
-/

namespace A087461.P143361126767390425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (2 * n + 1) + A089192 (n + 1)

end

end A087461.P143361126767390425

namespace A087461

/-- `A105760(2*n+1)+A089192(n+1)` -/
def P143361126767390425.Spec : Prop :=
  ∀ n, P143361126767390425.a n = A087461 (n + 2)

end A087461

/-! ## A087461.P18006675961401840169

`(A139049(n+2)+A086304(2*n+1))/2`
-/

namespace A087461.P18006675961401840169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139049 (n + 2) + A086304 (2 * n + 1) : ℚ) / 2

end

end A087461.P18006675961401840169

namespace A087461

/-- `(A139049(n+2)+A086304(2*n+1))/2` -/
def P18006675961401840169.Spec : Prop :=
  ∀ n, P18006675961401840169.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P8939100992796933669

`(A175221(n+2)+A172367(2*(n+1)))/2`
-/

namespace A087461.P8939100992796933669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175221 (n + 2) + A172367 (2 * (n + 1)) : ℚ) / 2

end

end A087461.P8939100992796933669

namespace A087461

/-- `(A175221(n+2)+A172367(2*(n+1)))/2` -/
def P8939100992796933669.Spec : Prop :=
  ∀ n, P8939100992796933669.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P14808513476511518024

`(A175222(n+2)+A173064(2*(n+2)))/2`
-/

namespace A087461.P14808513476511518024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175222 (n + 2) + A173064 (2 * (n + 2)) : ℚ) / 2

end

end A087461.P14808513476511518024

namespace A087461

/-- `(A175222(n+2)+A173064(2*(n+2)))/2` -/
def P14808513476511518024.Spec : Prop :=
  ∀ n, P14808513476511518024.a n = (A087461 (n + 2) : ℚ)

end A087461

/-! ## A087461.P8216603349655766650

`A102781(2*(n+2))+A006254(n+1)`
-/

namespace A087461.P8216603349655766650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (2 * (n + 2)) + A006254 (n + 1)

end

end A087461.P8216603349655766650

namespace A087461

/-- `A102781(2*(n+2))+A006254(n+1)` -/
def P8216603349655766650.Spec : Prop :=
  ∀ n, P8216603349655766650.a n = A087461 (n + 2)

end A087461

/-! ## A087461.P6543752345575262792

`A006254(2*n+3)+A005097(n+1)`
-/

namespace A087461.P6543752345575262792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (2 * n + 3) + A005097 (n + 1)

end

end A087461.P6543752345575262792

namespace A087461

/-- `A006254(2*n+3)+A005097(n+1)` -/
def P6543752345575262792.Spec : Prop :=
  ∀ n, P6543752345575262792.a n = A087461 (n + 2)

end A087461

/-! ## A087461.P15684552746223309069

`A098090(2*n+3)+A067076(n+1)`
-/

namespace A087461.P15684552746223309069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (2 * n + 3) + A067076 (n + 1)

end

end A087461.P15684552746223309069

namespace A087461

/-- `A098090(2*n+3)+A067076(n+1)` -/
def P15684552746223309069.Spec : Prop :=
  ∀ n, P15684552746223309069.a n = A087461 (n + 2)

end A087461

/-!
# A087462: Generalized mod 3 multiplicative Jacobsthal sequence.

The programs for A087462, the canonical program `A087462.P13662546234094174366` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087462 has offset 0).

The definition of A087462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087462.P13662546234094174366

`7*a(n-3)+8*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=8, a(4)=5, a(5)=11`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087462

/-- `7*a(n-3)+8*a(n-6)` -/
def P13662546234094174366.Spec : Prop :=
  ∀ n, (P13662546234094174366.a n : ℤ) = A087462 n

theorem P13662546234094174366.correct : P13662546234094174366.Spec := by
  intro n
  simp only [A087462]

end A087462

/-! ## A087462.P16841572984521667575

`A112387(A047242(n+1))`
-/

namespace A087462.P16841572984521667575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (A047242 (n + 1)).toNat

end

end A087462.P16841572984521667575

namespace A087462

/-- `A112387(A047242(n+1))` -/
def P16841572984521667575.Spec : Prop :=
  ∀ n, P16841572984521667575.a n = A087462 n

end A087462

/-! ## A087462.P1037646595446600499

`A230096(A047231(n+2))-A024493(n)`
-/

namespace A087462.P1037646595446600499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (A047231 (n + 2)).toNat - A024493 n

end

end A087462.P1037646595446600499

namespace A087462

/-- `A230096(A047231(n+2))-A024493(n)` -/
def P1037646595446600499.Spec : Prop :=
  ∀ n, P1037646595446600499.a n = A087462 n

end A087462

/-! ## A087462.P10385914495000131227

`A001045(n)+A001045((n+1)*A079978(n))`
-/

namespace A087462.P10385914495000131227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A001045 ((n + 1 : ℤ) * A079978 n).toNat

end

end A087462.P10385914495000131227

namespace A087462

/-- `A001045(n)+A001045((n+1)*A079978(n))` -/
def P10385914495000131227.Spec : Prop :=
  ∀ n, P10385914495000131227.a n = A087462 n

end A087462

/-! ## A087462.P4348341323592314839

`A024493(n)+A024495((n+1)*A079978(n))`
-/

namespace A087462.P4348341323592314839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n + A024495 ((n + 1 : ℤ) * A079978 n).toNat

end

end A087462.P4348341323592314839

namespace A087462

/-- `A024493(n)+A024495((n+1)*A079978(n))` -/
def P4348341323592314839.Spec : Prop :=
  ∀ n, P4348341323592314839.a n = A087462 n

end A087462

/-! ## A087462.P9868358265064723652

`A000079(n)-A024495((n+1)*A011655(n))`
-/

namespace A087462.P9868358265064723652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A024495 ((n + 1 : ℤ) * A011655 n).toNat

end

end A087462.P9868358265064723652

namespace A087462

/-- `A000079(n)-A024495((n+1)*A011655(n))` -/
def P9868358265064723652.Spec : Prop :=
  ∀ n, P9868358265064723652.a n = A087462 n

end A087462

/-! ## A087462.P17384996565448099526

`A024493(n+1)-A024495(n)*A257075(n+1)`
-/

namespace A087462.P17384996565448099526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 1) - A024495 n * A257075 (n + 1)

end

end A087462.P17384996565448099526

namespace A087462

/-- `A024493(n+1)-A024495(n)*A257075(n+1)` -/
def P17384996565448099526.Spec : Prop :=
  ∀ n, P17384996565448099526.a n = A087462 n

end A087462

/-! ## A087462.P13201902728346806519

`A024494(n+1)-A131708(n)*A257075(n+1)`
-/

namespace A087462.P13201902728346806519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1) - A131708 n * A257075 (n + 1)

end

end A087462.P13201902728346806519

namespace A087462

/-- `A024494(n+1)-A131708(n)*A257075(n+1)` -/
def P13201902728346806519.Spec : Prop :=
  ∀ n, P13201902728346806519.a n = A087462 n

end A087462

/-! ## A087462.P10523304177643819650

`A131708(n+1)-A131708(n)*A257075(n+1)`
-/

namespace A087462.P10523304177643819650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n + 1) - A131708 n * A257075 (n + 1)

end

end A087462.P10523304177643819650

namespace A087462

/-- `A131708(n+1)-A131708(n)*A257075(n+1)` -/
def P10523304177643819650.Spec : Prop :=
  ∀ n, P10523304177643819650.a n = A087462 n

end A087462

/-! ## A087462.P12043000686111887352

`round(2^n/A321091(∑[n+1]))`
-/

namespace A087462.P12043000686111887352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / (A321091 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A087462.P12043000686111887352

namespace A087462

/-- `round(2^n/A321091(∑[n+1]))` -/
def P12043000686111887352.Spec : Prop :=
  ∀ n, P12043000686111887352.a n = A087462 n

end A087462

/-!
# A087463: Generalized multiplicative Jacobsthal sequence.

The programs for A087463, the canonical program `A087463.P9791416291682124663` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087463 has offset 0).

The definition of A087463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087463.P9791416291682124663

`7*a(n-3)+8*a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=5, a(5)=11`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087463

/-- `7*a(n-3)+8*a(n-6)` -/
def P9791416291682124663.Spec : Prop :=
  ∀ n, (P9791416291682124663.a n : ℤ) = A087463 n

theorem P9791416291682124663.correct : P9791416291682124663.Spec := by
  intro n
  simp only [A087463]

end A087463

/-! ## A087463.P2563651332077045830

`n²%3*A001045(n)`
-/

namespace A087463.P2563651332077045830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) * A001045 n

end

end A087463.P2563651332077045830

namespace A087463

/-- `n²%3*A001045(n)` -/
def P2563651332077045830.Spec : Prop :=
  ∀ n, P2563651332077045830.a n = A087463 n

end A087463

/-! ## A087463.P17006078905899459444

`A001045(A091684(n))`
-/

namespace A087463.P17006078905899459444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A091684 n).toNat

end

end A087463.P17006078905899459444

namespace A087463

/-- `A001045(A091684(n))` -/
def P17006078905899459444.Spec : Prop :=
  ∀ n, P17006078905899459444.a n = A087463 n

end A087463

/-! ## A087463.P4498583762338943526

`A092220(n)+A087464(n)`
-/

namespace A087463.P4498583762338943526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + A087464 n

end

end A087463.P4498583762338943526

namespace A087463

/-- `A092220(n)+A087464(n)` -/
def P4498583762338943526.Spec : Prop :=
  ∀ n, P4498583762338943526.a n = A087463 n

end A087463

/-! ## A087463.P13984570664521813677

`A087628(n)-A024493(n)`
-/

namespace A087463.P13984570664521813677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087628 n - A024493 n

end

end A087463.P13984570664521813677

namespace A087463

/-- `A087628(n)-A024493(n)` -/
def P13984570664521813677.Spec : Prop :=
  ∀ n, P13984570664521813677.a n = A087463 n

end A087463

/-! ## A087463.P16585020064930885001

`A087629(n)-A078008(n)`
-/

namespace A087463.P16585020064930885001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087629 n - A078008 n

end

end A087463.P16585020064930885001

namespace A087463

/-- `A087629(n)-A078008(n)` -/
def P16585020064930885001.Spec : Prop :=
  ∀ n, P16585020064930885001.a n = A087463 n

end A087463

/-! ## A087463.P6731412289097966028

`A001045(n*A011655(n))`
-/

namespace A087463.P6731412289097966028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n : ℤ) * A011655 n).toNat

end

end A087463.P6731412289097966028

namespace A087463

/-- `A001045(n*A011655(n))` -/
def P6731412289097966028.Spec : Prop :=
  ∀ n, P6731412289097966028.a n = A087463 n

end A087463

/-! ## A087463.P5123776913261408032

`A011655(n)*A024493(n)`
-/

namespace A087463.P5123776913261408032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A024493 n

end

end A087463.P5123776913261408032

namespace A087463

/-- `A011655(n)*A024493(n)` -/
def P5123776913261408032.Spec : Prop :=
  ∀ n, P5123776913261408032.a n = A087463 n

end A087463

/-! ## A087463.P3904941779863486672

`A011655(n)*A152046(n)`
-/

namespace A087463.P3904941779863486672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A152046 n

end

end A087463.P3904941779863486672

namespace A087463

/-- `A011655(n)*A152046(n)` -/
def P3904941779863486672.Spec : Prop :=
  ∀ n, P3904941779863486672.a n = A087463 n

end A087463

/-! ## A087463.P13599793025359089778

`A011655(n)*A167167(n)`
-/

namespace A087463.P13599793025359089778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A167167 n

end

end A087463.P13599793025359089778

namespace A087463

/-- `A011655(n)*A167167(n)` -/
def P13599793025359089778.Spec : Prop :=
  ∀ n, P13599793025359089778.a n = A087463 n

end A087463

/-! ## A087463.P16009979405644632010

`A001045(n*A267208(n))`
-/

namespace A087463.P16009979405644632010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n : ℤ) * A267208 n).toNat

end

end A087463.P16009979405644632010

namespace A087463

/-- `A001045(n*A267208(n))` -/
def P16009979405644632010.Spec : Prop :=
  ∀ n, P16009979405644632010.a n = A087463 n

end A087463

/-! ## A087463.P6595252121753269462

`A001045(lcm(n, A092220(n)))`
-/

namespace A087463.P6595252121753269462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Int.lcm (n : ℤ) (A092220 n))

end

end A087463.P6595252121753269462

namespace A087463

/-- `A001045(lcm(n, A092220(n)))` -/
def P6595252121753269462.Spec : Prop :=
  ∀ n, P6595252121753269462.a n = A087463 n

end A087463

/-! ## A087463.P9507324624626874985

`lcm(A024493(n), A102283(n))`
-/

namespace A087463.P9507324624626874985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024493 n) (A102283 n)

end

end A087463.P9507324624626874985

namespace A087463

/-- `lcm(A024493(n), A102283(n))` -/
def P9507324624626874985.Spec : Prop :=
  ∀ n, (P9507324624626874985.a n : ℤ) = A087463 n

end A087463

/-! ## A087463.P16545724611999598305

`lcm(A128834(n), A152046(n))`
-/

namespace A087463.P16545724611999598305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128834 n) (A152046 n)

end

end A087463.P16545724611999598305

namespace A087463

/-- `lcm(A128834(n), A152046(n))` -/
def P16545724611999598305.Spec : Prop :=
  ∀ n, (P16545724611999598305.a n : ℤ) = A087463 n

end A087463

/-! ## A087463.P17697000219964260574

`lcm(A167167(n), A174784(n))`
-/

namespace A087463.P17697000219964260574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167167 n) (A174784 n)

end

end A087463.P17697000219964260574

namespace A087463

/-- `lcm(A167167(n), A174784(n))` -/
def P17697000219964260574.Spec : Prop :=
  ∀ n, (P17697000219964260574.a n : ℤ) = A087463 n

end A087463

/-! ## A087463.P13477855279707654100

`A001045(n*A092220(n)²)`
-/

namespace A087463.P13477855279707654100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n : ℤ) * A092220 n ^ 2).toNat

end

end A087463.P13477855279707654100

namespace A087463

/-- `A001045(n*A092220(n)²)` -/
def P13477855279707654100.Spec : Prop :=
  ∀ n, P13477855279707654100.a n = A087463 n

end A087463

/-! ## A087463.P9375532745570303187

`A092220(n)²*A024493(n)`
-/

namespace A087463.P9375532745570303187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n ^ 2 * A024493 n

end

end A087463.P9375532745570303187

namespace A087463

/-- `A092220(n)²*A024493(n)` -/
def P9375532745570303187.Spec : Prop :=
  ∀ n, P9375532745570303187.a n = A087463 n

end A087463

/-! ## A087463.P5730777632096127221

`A001045(n*A128834(n)²)`
-/

namespace A087463.P5730777632096127221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n : ℤ) * A128834 n ^ 2).toNat

end

end A087463.P5730777632096127221

namespace A087463

/-- `A001045(n*A128834(n)²)` -/
def P5730777632096127221.Spec : Prop :=
  ∀ n, P5730777632096127221.a n = A087463 n

end A087463

/-! ## A087463.P9366413574730416784

`A128834(n)²*A024493(n)`
-/

namespace A087463.P9366413574730416784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n ^ 2 * A024493 n

end

end A087463.P9366413574730416784

namespace A087463

/-- `A128834(n)²*A024493(n)` -/
def P9366413574730416784.Spec : Prop :=
  ∀ n, P9366413574730416784.a n = A087463 n

end A087463

/-! ## A087463.P1162357569002904341

`A128834(n)²*A167167(n)`
-/

namespace A087463.P1162357569002904341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n ^ 2 * A167167 n

end

end A087463.P1162357569002904341

namespace A087463

/-- `A128834(n)²*A167167(n)` -/
def P1162357569002904341.Spec : Prop :=
  ∀ n, P1162357569002904341.a n = A087463 n

end A087463

/-!
# A087464: Generalized multiplicative Jacobsthal sequence.

The programs for A087464, the canonical program `A087464.P1843944830637965412` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087464 has offset 0).

The definition of A087464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087464.P1843944830637965412

`7*a(n-3)+8*a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=6, a(5)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087464

/-- `7*a(n-3)+8*a(n-6)` -/
def P1843944830637965412.Spec : Prop :=
  ∀ n, (P1843944830637965412.a n : ℤ) = A087464 n

theorem P1843944830637965412.correct : P1843944830637965412.Spec := by
  intro n
  simp only [A087464]

end A087464

/-! ## A087464.P15381744214253718834

`lcm((2*(n+1)+1)%3, Δ[A140962(n)])`
-/

namespace A087464.P15381744214253718834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((2 * (n + 1) + 1) % 3 : ℕ) : ℤ) (f1 (n + 1) - f1 n)

end

end A087464.P15381744214253718834

namespace A087464

/-- `lcm((2*(n+1)+1)%3, Δ[A140962(n)])` -/
def P15381744214253718834.Spec : Prop :=
  ∀ n, (P15381744214253718834.a n : ℤ) = A087464 n

end A087464

/-! ## A087464.P2120847110547413912

`A242563(A091684(n))`
-/

namespace A087464.P2120847110547413912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 (A091684 n).toNat

end

end A087464.P2120847110547413912

namespace A087464

/-- `A242563(A091684(n))` -/
def P2120847110547413912.Spec : Prop :=
  ∀ n, P2120847110547413912.a n = A087464 n

end A087464

/-! ## A087464.P8575011414230482882

`A087629(n)-A024493(n)`
-/

namespace A087464.P8575011414230482882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087629 n - A024493 n

end

end A087464.P8575011414230482882

namespace A087464

/-- `A087629(n)-A024493(n)` -/
def P8575011414230482882.Spec : Prop :=
  ∀ n, P8575011414230482882.a n = A087464 n

end A087464

/-! ## A087464.P3818060900136753434

`A087463(n)-A092220(n)`
-/

namespace A087464.P3818060900136753434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087463 n - A092220 n

end

end A087464.P3818060900136753434

namespace A087464

/-- `A087463(n)-A092220(n)` -/
def P3818060900136753434.Spec : Prop :=
  ∀ n, P3818060900136753434.a n = A087464 n

end A087464

/-! ## A087464.P9867711997298220636

`A011655(n)*A078008(n)`
-/

namespace A087464.P9867711997298220636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A078008 n

end

end A087464.P9867711997298220636

namespace A087464

/-- `A011655(n)*A078008(n)` -/
def P9867711997298220636.Spec : Prop :=
  ∀ n, P9867711997298220636.a n = A087464 n

end A087464

/-! ## A087464.P9549737314762889702

`A242563(n*A011655(n))`
-/

namespace A087464.P9549737314762889702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 ((n : ℤ) * A011655 n).toNat

end

end A087464.P9549737314762889702

namespace A087464

/-- `A242563(n*A011655(n))` -/
def P9549737314762889702.Spec : Prop :=
  ∀ n, P9549737314762889702.a n = A087464 n

end A087464

/-! ## A087464.P7263013323884258565

`A242563(n*A267208(n))`
-/

namespace A087464.P7263013323884258565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 ((n : ℤ) * A267208 n).toNat

end

end A087464.P7263013323884258565

namespace A087464

/-- `A242563(n*A267208(n))` -/
def P7263013323884258565.Spec : Prop :=
  ∀ n, P7263013323884258565.a n = A087464 n

end A087464

/-! ## A087464.P6892431771200676871

`A078008(n)%A087629(n)`
-/

namespace A087464.P6892431771200676871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078008 n) (A087629 n)

end

end A087464.P6892431771200676871

namespace A087464

/-- `A078008(n)%A087629(n)` -/
def P6892431771200676871.Spec : Prop :=
  ∀ n, P6892431771200676871.a n = A087464 n

end A087464

/-! ## A087464.P7556101688414794690

`lcm(A010872(n), A078008(n))`
-/

namespace A087464.P7556101688414794690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010872 n) (A078008 n)

end

end A087464.P7556101688414794690

namespace A087464

/-- `lcm(A010872(n), A078008(n))` -/
def P7556101688414794690.Spec : Prop :=
  ∀ n, (P7556101688414794690.a n : ℤ) = A087464 n

end A087464

/-! ## A087464.P14970900342584810271

`lcm(A088689(n), A242563(n))`
-/

namespace A087464.P14970900342584810271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088689 n) (A242563 n)

end

end A087464.P14970900342584810271

namespace A087464

/-- `lcm(A088689(n), A242563(n))` -/
def P14970900342584810271.Spec : Prop :=
  ∀ n, (P14970900342584810271.a n : ℤ) = A087464 n

end A087464

/-! ## A087464.P7988381240284993888

`A242563(lcm(n, A092220(n)))`
-/

namespace A087464.P7988381240284993888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 (Int.lcm (n : ℤ) (A092220 n))

end

end A087464.P7988381240284993888

namespace A087464

/-- `A242563(lcm(n, A092220(n)))` -/
def P7988381240284993888.Spec : Prop :=
  ∀ n, P7988381240284993888.a n = A087464 n

end A087464

/-! ## A087464.P11585900209077636260

`A092220(n)²*A078008(n)`
-/

namespace A087464.P11585900209077636260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n ^ 2 * A078008 n

end

end A087464.P11585900209077636260

namespace A087464

/-- `A092220(n)²*A078008(n)` -/
def P11585900209077636260.Spec : Prop :=
  ∀ n, P11585900209077636260.a n = A087464 n

end A087464

/-! ## A087464.P5071694566327218791

`A242563(n*A092220(n)²)`
-/

namespace A087464.P5071694566327218791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 ((n : ℤ) * A092220 n ^ 2).toNat

end

end A087464.P5071694566327218791

namespace A087464

/-- `A242563(n*A092220(n)²)` -/
def P5071694566327218791.Spec : Prop :=
  ∀ n, P5071694566327218791.a n = A087464 n

end A087464

/-! ## A087464.P4484906318702407596

`A242563(n*A102283(n)²)`
-/

namespace A087464.P4484906318702407596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 ((n : ℤ) * A102283 n ^ 2).toNat

end

end A087464.P4484906318702407596

namespace A087464

/-- `A242563(n*A102283(n)²)` -/
def P4484906318702407596.Spec : Prop :=
  ∀ n, P4484906318702407596.a n = A087464 n

end A087464

/-! ## A087464.P2583524764743421574

`A242563(n*A128834(n)²)`
-/

namespace A087464.P2583524764743421574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 ((n : ℤ) * A128834 n ^ 2).toNat

end

end A087464.P2583524764743421574

namespace A087464

/-- `A242563(n*A128834(n)²)` -/
def P2583524764743421574.Spec : Prop :=
  ∀ n, P2583524764743421574.a n = A087464 n

end A087464

/-! ## A087464.P5668453079924944819

`Δ[A004523(n)]*A078008(n)`
-/

namespace A087464.P5668453079924944819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078008 n

end

end A087464.P5668453079924944819

namespace A087464

/-- `Δ[A004523(n)]*A078008(n)` -/
def P5668453079924944819.Spec : Prop :=
  ∀ n, P5668453079924944819.a n = A087464 n

end A087464

/-! ## A087464.P3866415437504623944

`(A130196(n)-1)*A078008(n)`
-/

namespace A087464.P3866415437504623944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130196 n - 1) * A078008 n

end

end A087464.P3866415437504623944

namespace A087464

/-- `(A130196(n)-1)*A078008(n)` -/
def P3866415437504623944.Spec : Prop :=
  ∀ n, P3866415437504623944.a n = A087464 n

end A087464

/-! ## A087464.P18104472898520203609

`(∑[A080425(n)]-n)*A078008(n)`
-/

namespace A087464.P18104472898520203609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * A078008 n

end

end A087464.P18104472898520203609

namespace A087464

/-- `(∑[A080425(n)]-n)*A078008(n)` -/
def P18104472898520203609.Spec : Prop :=
  ∀ n, P18104472898520203609.a n = A087464 n

end A087464

/-! ## A087464.P3433338115906624045

`A193680(2*n)*A328284(n+2)`
-/

namespace A087464.P3433338115906624045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193680 (2 * n) * A328284 (n + 2)

end

end A087464.P3433338115906624045

namespace A087464

/-- `A193680(2*n)*A328284(n+2)` -/
def P3433338115906624045.Spec : Prop :=
  ∀ n, P3433338115906624045.a n = A087464 n

end A087464

/-!
# A087465: Rank array R of 3/2 read by antidiagonals; this array is the dispersion of the complement of the sequence given by r(n) = r(n-1) + 1 + floor(3n/2) for n>=1, with r(0) = 1; that is, A077043(n+1).

The programs for A087465, there is no canonical definition to state claims against.
-/

/-! ## A087465.P9702955309365835769

`A087468(∑[2*n]%comp[∑[n]])`
-/

namespace A087465.P9702955309365835769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087468 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A087465.P9702955309365835769

/-! ## A087465.P12529919651935589025

`A087468(∑[char[∑[n]]]²-(n+1))`
-/

namespace A087465.P12529919651935589025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087468 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A087465.P12529919651935589025

/-! ## A087465.P8319009369416792566

`and(-1, A087468(A061579(n)))`
-/

namespace A087465.P8319009369416792566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A087468 (A061579 n).toNat)

end

end A087465.P8319009369416792566

/-! ## A087465.P14364795947425798860

`abs(1-A087468(A038722(n+1)-1))+1`
-/

namespace A087465.P14364795947425798860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A087468 (A038722 (n + 1) - 1).toNat| + 1

end

end A087465.P14364795947425798860

/-! ## A087465.P2097445072913249818

`∑{d}[A087468(A061579(n)), A000010(#)]`
-/

namespace A087465.P2097445072913249818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087468 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A087465.P2097445072913249818

/-! ## A087465.P10358778227949435971

`∏{d}[A087468(A061579(n)), A014963(#)]`
-/

namespace A087465.P10358778227949435971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087468 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A087465.P10358778227949435971

/-! ## A087465.P201232272754225812

`A087468(A061579(n))%A000041(n+2)`
-/

namespace A087465.P201232272754225812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087468 (A061579 n).toNat) (A000041 (n + 2))

end

end A087465.P201232272754225812

/-! ## A087465.P11404595145863221680

`∑{d}[A087468(A038722(n+1)-1), A000010(#)]`
-/

namespace A087465.P11404595145863221680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087468 (A038722 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A087465.P11404595145863221680

/-! ## A087465.P10354584710940032454

`A087468(A061579(n))/A000108((n+2)%(n+1))`
-/

namespace A087465.P10354584710940032454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087468 (A061579 n).toNat : ℚ) / (A000108 ((n + 2) % (n + 1)) : ℚ)

end

end A087465.P10354584710940032454

/-!
# A087466: a(n) = number of the row (counting from initial row 0) of the array R in A087465 that contains n.

The programs for A087466, the canonical program `A087466.P14536620079445968377` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087466 has offset 1).

The definition of A087466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087466.P11906101224321975448

`val(A108201(n+1), 3)`
-/

namespace A087466.P11906101224321975448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108201 (n + 1)).toNat 3

end

end A087466.P11906101224321975448

namespace A087466

/-- `val(A108201(n+1), 3)` -/
def P11906101224321975448.Spec : Prop :=
  ∀ n, (P11906101224321975448.a n : ℤ) = A087466 (n + 1)

end A087466

/-! ## A087466.P202521919207951637

`floor(A163256(3*n+1)/3)`
-/

namespace A087466.P202521919207951637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163256 (3 * n + 1) : ℚ) / 3⌋

end

end A087466.P202521919207951637

namespace A087466

/-- `floor(A163256(3*n+1)/3)` -/
def P202521919207951637.Spec : Prop :=
  ∀ n, P202521919207951637.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P15758333523789000252

`round(A163256(3*n+2)/3)-1`
-/

namespace A087466.P15758333523789000252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A163256 (3 * n + 2) : ℚ) / 3) - 1

end

end A087466.P15758333523789000252

namespace A087466

/-- `round(A163256(3*n+2)/3)-1` -/
def P15758333523789000252.Spec : Prop :=
  ∀ n, P15758333523789000252.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P3386787348163288755

`A057038(A065006(n+1))-1`
-/

namespace A087466.P3386787348163288755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057038 (A065006 (n + 1)).toNat - 1

end

end A087466.P3386787348163288755

namespace A087466

/-- `A057038(A065006(n+1))-1` -/
def P3386787348163288755.Spec : Prop :=
  ∀ n, P3386787348163288755.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P7024494431104452284

`A002264(A163256(3*n+1))`
-/

namespace A087466.P7024494431104452284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A163256 (3 * n + 1)).toNat

end

end A087466.P7024494431104452284

namespace A087466

/-- `A002264(A163256(3*n+1))` -/
def P7024494431104452284.Spec : Prop :=
  ∀ n, P7024494431104452284.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P14536620079445968377

`A008612(A053186(12*n+5))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087466

/-- `A008612(A053186(12*n+5))` -/
def P14536620079445968377.Spec : Prop :=
  ∀ n, P14536620079445968377.a n = A087466 (n + 1)

theorem P14536620079445968377.correct : P14536620079445968377.Spec := by
  intro n
  simp only [A087466, Nat.add_sub_cancel]

end A087466

/-! ## A087466.P2428959103304999721

`A143182(eq[1, A004199(n+1)])-1`
-/

namespace A087466.P2428959103304999721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A087466.P2428959103304999721

namespace A087466

/-- `A143182(eq[1, A004199(n+1)])-1` -/
def P2428959103304999721.Spec : Prop :=
  ∀ n, P2428959103304999721.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P9235229466835436020

`A274835(eq[1, A004199(n+1)])-1`
-/

namespace A087466.P9235229466835436020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A087466.P9235229466835436020

namespace A087466

/-- `A274835(eq[1, A004199(n+1)])-1` -/
def P9235229466835436020.Spec : Prop :=
  ∀ n, P9235229466835436020.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P10206839021483900218

`A000401(round(A163256(3*n+2)/3))`
-/

namespace A087466.P10206839021483900218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (SequenceMachineLib.roundAway ((A163256 (3 * n + 2) : ℚ) / 3)).toNat

end

end A087466.P10206839021483900218

namespace A087466

/-- `A000401(round(A163256(3*n+2)/3))` -/
def P10206839021483900218.Spec : Prop :=
  ∀ n, P10206839021483900218.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P726939123475479899

`A046081(2^round(A163256(3*n+2)/3))`
-/

namespace A087466.P726939123475479899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway ((A163256 (3 * n + 2) : ℚ) / 3) : ℤ))).toNat

end

end A087466.P726939123475479899

namespace A087466

/-- `A046081(2^round(A163256(3*n+2)/3))` -/
def P726939123475479899.Spec : Prop :=
  ∀ n, P726939123475479899.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P11443069882025278044

`A002262(lt[A007318(n), A053121(n)])`
-/

namespace A087466.P11443069882025278044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087466.P11443069882025278044

namespace A087466

/-- `A002262(lt[A007318(n), A053121(n)])` -/
def P11443069882025278044.Spec : Prop :=
  ∀ n, P11443069882025278044.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P11049342858188361452

`A002262(lt[A131060(n)+1, A053121(n)])`
-/

namespace A087466.P11049342858188361452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087466.P11049342858188361452

namespace A087466

/-- `A002262(lt[A131060(n)+1, A053121(n)])` -/
def P11049342858188361452.Spec : Prop :=
  ∀ n, P11049342858188361452.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P14002001763519226966

`A002262(lt[1, A053121(n)-A131060(n)])`
-/

namespace A087466.P14002001763519226966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n - A131060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087466.P14002001763519226966

namespace A087466

/-- `A002262(lt[1, A053121(n)-A131060(n)])` -/
def P14002001763519226966.Spec : Prop :=
  ∀ n, P14002001763519226966.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P14361949865525181440

`A002262(lt[(A131063(n)+4)/5, A053121(n)])`
-/

namespace A087466.P14361949865525181440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n + 4 : ℚ) / 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A087466.P14361949865525181440

namespace A087466

/-- `A002262(lt[(A131063(n)+4)/5, A053121(n)])` -/
def P14361949865525181440.Spec : Prop :=
  ∀ n, P14361949865525181440.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P10324801802864332923

`A070080(eq[A070081(n+1), A070082(n+1)]+1)-1`
-/

namespace A087466.P10324801802864332923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A087466.P10324801802864332923

namespace A087466

/-- `A070080(eq[A070081(n+1), A070082(n+1)]+1)-1` -/
def P10324801802864332923.Spec : Prop :=
  ∀ n, P10324801802864332923.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P12345081603921954405

`A087467(n+1)-1`
-/

namespace A087466.P12345081603921954405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087467 (n + 1) - 1

end

end A087466.P12345081603921954405

namespace A087466

/-- `A087467(n+1)-1` -/
def P12345081603921954405.Spec : Prop :=
  ∀ n, P12345081603921954405.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P13800647928499791988

`A000401(A087467(n+1))`
-/

namespace A087466.P13800647928499791988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A087467 (n + 1)).toNat

end

end A087466.P13800647928499791988

namespace A087466

/-- `A000401(A087467(n+1))` -/
def P13800647928499791988.Spec : Prop :=
  ∀ n, P13800647928499791988.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P4130452290019174548

`A057918(A087467(n+1)²)`
-/

namespace A087466.P4130452290019174548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A087467 (n + 1) ^ 2).toNat

end

end A087466.P4130452290019174548

namespace A087466

/-- `A057918(A087467(n+1)²)` -/
def P4130452290019174548.Spec : Prop :=
  ∀ n, P4130452290019174548.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P1195019856389137811

`A037861(2^A087467(n+1))`
-/

namespace A087466.P1195019856389137811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087467 (n + 1) : ℤ))).toNat

end

end A087466.P1195019856389137811

namespace A087466

/-- `A037861(2^A087467(n+1))` -/
def P1195019856389137811.Spec : Prop :=
  ∀ n, P1195019856389137811.a n = A087466 (n + 1)

end A087466

/-! ## A087466.P11780606344553516901

`A046081(2^A087467(n+1))`
-/

namespace A087466.P11780606344553516901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087467 (n + 1) : ℤ))).toNat

end

end A087466.P11780606344553516901

namespace A087466

/-- `A046081(2^A087467(n+1))` -/
def P11780606344553516901.Spec : Prop :=
  ∀ n, P11780606344553516901.a n = A087466 (n + 1)

end A087466

/-!
# A087467: a(n) = number of the row (counting from initial row 1) of the array R in A087465 that contains n.

The programs for A087467, the canonical program `A087467.P17526908869040180663` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087467 has offset 1).

The definition of A087467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087466, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087467.P17526908869040180663

`A087466(n+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087467

/-- `A087466(n+1)+1` -/
def P17526908869040180663.Spec : Prop :=
  ∀ n, P17526908869040180663.a n = A087467 (n + 1)

theorem P17526908869040180663.correct : P17526908869040180663.Spec := by
  intro n
  simp only [A087467, Nat.add_sub_cancel]

end A087467

/-! ## A087467.P4227757601525215051

`val(A108201(n+1), 4)+1`
-/

namespace A087467.P4227757601525215051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108201 (n + 1)).toNat 4 + 1

end

end A087467.P4227757601525215051

namespace A087467

/-- `val(A108201(n+1), 4)+1` -/
def P4227757601525215051.Spec : Prop :=
  ∀ n, (P4227757601525215051.a n : ℤ) = A087467 (n + 1)

end A087467

/-! ## A087467.P3022637262454384612

`round(A163256(3*n+2)/3)`
-/

namespace A087467.P3022637262454384612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A163256 (3 * n + 2) : ℚ) / 3)

end

end A087467.P3022637262454384612

namespace A087467

/-- `round(A163256(3*n+2)/3)` -/
def P3022637262454384612.Spec : Prop :=
  ∀ n, P3022637262454384612.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P476918916676552458

`floor(A163256(3*n+1)/3)+1`
-/

namespace A087467.P476918916676552458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163256 (3 * n + 1) : ℚ) / 3⌋ + 1

end

end A087467.P476918916676552458

namespace A087467

/-- `floor(A163256(3*n+1)/3)+1` -/
def P476918916676552458.Spec : Prop :=
  ∀ n, P476918916676552458.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P17298733582970137440

`A005496(A087466(n+1))`
-/

namespace A087467.P17298733582970137440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A087466 (n + 1)).toNat

end

end A087467.P17298733582970137440

namespace A087467

/-- `A005496(A087466(n+1))` -/
def P17298733582970137440.Spec : Prop :=
  ∀ n, P17298733582970137440.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P12674710893130791380

`A057038(A065006(n+1))`
-/

namespace A087467.P12674710893130791380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057038 (A065006 (n + 1)).toNat

end

end A087467.P12674710893130791380

namespace A087467

/-- `A057038(A065006(n+1))` -/
def P12674710893130791380.Spec : Prop :=
  ∀ n, P12674710893130791380.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P4069133323987241626

`A002260(2*A065006(n+1))`
-/

namespace A087467.P4069133323987241626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A065006 (n + 1)).toNat

end

end A087467.P4069133323987241626

namespace A087467

/-- `A002260(2*A065006(n+1))` -/
def P4069133323987241626.Spec : Prop :=
  ∀ n, P4069133323987241626.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P2379698811041264156

`A143182(eq[1, A004199(n+1)])`
-/

namespace A087467.P2379698811041264156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087467.P2379698811041264156

namespace A087467

/-- `A143182(eq[1, A004199(n+1)])` -/
def P2379698811041264156.Spec : Prop :=
  ∀ n, P2379698811041264156.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P15078500864661463239

`A274835(eq[1, A004199(n+1)])`
-/

namespace A087467.P15078500864661463239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087467.P15078500864661463239

namespace A087467

/-- `A274835(eq[1, A004199(n+1)])` -/
def P15078500864661463239.Spec : Prop :=
  ∀ n, P15078500864661463239.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P5418019493472294797

`A008611(A171746(A016789(n)))`
-/

namespace A087467.P5418019493472294797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A171746 (A016789 n).toNat).toNat

end

end A087467.P5418019493472294797

namespace A087467

/-- `A008611(A171746(A016789(n)))` -/
def P5418019493472294797.Spec : Prop :=
  ∀ n, P5418019493472294797.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P13636239250232128075

`A002262(lt[A007318(n), A053121(n)]+1)`
-/

namespace A087467.P13636239250232128075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A087467.P13636239250232128075

namespace A087467

/-- `A002262(lt[A007318(n), A053121(n)]+1)` -/
def P13636239250232128075.Spec : Prop :=
  ∀ n, P13636239250232128075.a n = A087467 (n + 1)

end A087467

/-! ## A087467.P6472358012281687728

`A070080(eq[A070081(n+1), A070082(n+1)]+1)`
-/

namespace A087467.P6472358012281687728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A087467.P6472358012281687728

namespace A087467

/-- `A070080(eq[A070081(n+1), A070082(n+1)]+1)` -/
def P6472358012281687728.Spec : Prop :=
  ∀ n, P6472358012281687728.a n = A087467 (n + 1)

end A087467

/-!
# A087468: Dispersion, read by antidiagonals, of the complement of row 0 of the array R in A087465.

The programs for A087468, there is no canonical definition to state claims against.
-/

/-! ## A087468.P17089364752632607341

`A087465(∑[2*n]%comp[∑[n]])`
-/

namespace A087468.P17089364752632607341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087465 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A087468.P17089364752632607341

/-! ## A087468.P6157237240069073879

`A087465(∑[char[∑[n]]]²-(n+1))`
-/

namespace A087468.P6157237240069073879
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087465 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A087468.P6157237240069073879

/-! ## A087468.P11384333145172189788

`or(char[1], A087465(A061579(n)))`
-/

namespace A087468.P11384333145172189788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A087465 (A061579 n).toNat)

end

end A087468.P11384333145172189788

/-! ## A087468.P5799314872449950727

`∑{d}[A087465(A061579(n)), A000010(#)]`
-/

namespace A087468.P5799314872449950727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087465 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A087468.P5799314872449950727

/-! ## A087468.P17606452029224012289

`A087465(A061579(n))+A000007(n+1)`
-/

namespace A087468.P17606452029224012289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087465 (A061579 n).toNat + A000007 (n + 1)

end

end A087468.P17606452029224012289

/-! ## A087468.P17169521448441629417

`A087465(A061579(n))%A006987(n+1)`
-/

namespace A087468.P17169521448441629417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087465 (A061579 n).toNat) (A006987 (n + 1))

end

end A087468.P17169521448441629417

/-! ## A087468.P5592515784231629257

`A087465(A061579(n))+A008683(4*(n+1))`
-/

namespace A087468.P5592515784231629257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087465 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A087468.P5592515784231629257

/-! ## A087468.P2497968602554083604

`A007318(C(2, n))+A087465(A061579(n))-1`
-/

namespace A087468.P2497968602554083604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (A087465 (A061579 n).toNat - 1)

end

end A087468.P2497968602554083604

/-! ## A087468.P2838794066255374764

`A000108(C(2, n+2))*A087465(A061579(n))`
-/

namespace A087468.P2838794066255374764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A087465 (A061579 n).toNat

end

end A087468.P2838794066255374764

/-! ## A087468.P10786852306148037479

`A007318(gcd(n, n+1))*A087465(A061579(n))`
-/

namespace A087468.P10786852306148037479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A087465 (A061579 n).toNat

end

end A087468.P10786852306148037479

/-!
# A087469: a(n) = number of the row (counting from initial row 0) of the array R in A087468 that contains n.

The programs for A087469, there is no canonical definition to state claims against.
-/

/-! ## A087469.P7177847874500708909

`val(A172126(n+1), 4)`
-/

namespace A087469.P7177847874500708909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A172126 (n + 1)).toNat 4

end

end A087469.P7177847874500708909

/-! ## A087469.P16745801391987330628

`val(A108201(n+1), 5)`
-/

namespace A087469.P16745801391987330628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108201 (n + 1)).toNat 5

end

end A087469.P16745801391987330628

/-! ## A087469.P7268420159652612523

`A025686(∑[A144112(2*n+1)])`
-/

namespace A087469.P7268420159652612523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087469.P7268420159652612523

/-! ## A087469.P6856193176695260017

`A135711(n+1)%(A300154(n+1)+1)`
-/

namespace A087469.P6856193176695260017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135711 (n + 1)) (A300154 (n + 1) + 1)

end

end A087469.P6856193176695260017

/-! ## A087469.P7596631794770886347

`A300154(n+1)-2*A087466(n+1)-1`
-/

namespace A087469.P7596631794770886347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300154 (n + 1) - 2 * A087466 (n + 1) - 1

end

end A087469.P7596631794770886347

/-! ## A087469.P4657302212782377917

`A300154(n+1)-A005408(A087466(n+1))`
-/

namespace A087469.P4657302212782377917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300154 (n + 1) - A005408 (A087466 (n + 1)).toNat

end

end A087469.P4657302212782377917

/-! ## A087469.P7116486224171130007

`A135711(n+1)%A348553(A300154(n+1))`
-/

namespace A087469.P7116486224171130007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135711 (n + 1)) (A348553 (A300154 (n + 1)).toNat)

end

end A087469.P7116486224171130007

/-! ## A087469.P15776024207827426900

`A002837(A300154(n+1)-2*A087466(n+1))`
-/

namespace A087469.P15776024207827426900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A300154 (n + 1) - 2 * A087466 (n + 1)).toNat

end

end A087469.P15776024207827426900

/-! ## A087469.P9474668386847885636

`A004525(A216522(n)-A087466(n+1))-A087466(n+1)`
-/

namespace A087469.P9474668386847885636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A216522 n - A087466 (n + 1)).toNat - A087466 (n + 1)

end

end A087469.P9474668386847885636

/-! ## A087469.P16583794070933946473

`A004526(A216522(n)-A087466(n+1))-A087466(n+1)`
-/

namespace A087469.P16583794070933946473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A216522 n - A087466 (n + 1)).toNat - A087466 (n + 1)

end

end A087469.P16583794070933946473

/-!
# A087470: a(n) = number of the row (counting from initial row 1) of the array R in A087468 that contains n.

The programs for A087470, there is no canonical definition to state claims against.
-/

/-! ## A087470.P5078428498172193083

`A087469(n+1)+1`
-/

namespace A087470.P5078428498172193083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087469 (n + 1) + 1

end

end A087470.P5078428498172193083

/-! ## A087470.P17316383890609393563

`val(A172126(n+1), 4)+1`
-/

namespace A087470.P17316383890609393563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A172126 (n + 1)).toNat 4 + 1

end

end A087470.P17316383890609393563

/-! ## A087470.P4866158669105083120

`val(A108201(n+1), 5)+1`
-/

namespace A087470.P4866158669105083120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108201 (n + 1)).toNat 5 + 1

end

end A087470.P4866158669105083120

/-! ## A087470.P5716054900351443586

`A005555(A087469(n+1))`
-/

namespace A087470.P5716054900351443586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A087469 (n + 1)).toNat

end

end A087470.P5716054900351443586

/-! ## A087470.P2097668766318840630

`A348553(val(A172126(n+1), 4))`
-/

namespace A087470.P2097668766318840630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (SequenceMachineLib.valuation (A172126 (n + 1)).toNat 4)

end

end A087470.P2097668766318840630

/-! ## A087470.P9831765995261792141

`A348553(A087469(2*n-(n-1)))`
-/

namespace A087470.P9831765995261792141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A087469 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A087470.P9831765995261792141

/-! ## A087470.P6357073832515490105

`A025686(∑[A144112(2*n+3)])+1`
-/

namespace A087470.P6357073832515490105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A087470.P6357073832515490105

/-! ## A087470.P4798459686030384522

`A300154(n+1)-2*A087466(n+1)`
-/

namespace A087470.P4798459686030384522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300154 (n + 1) - 2 * A087466 (n + 1)

end

end A087470.P4798459686030384522

/-! ## A087470.P2302029903799107831

`A135711(n+1)%(A300154(n+1)+1)+1`
-/

namespace A087470.P2302029903799107831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135711 (n + 1)) (A300154 (n + 1) + 1) + 1

end

end A087470.P2302029903799107831

/-! ## A087470.P17342506534550576250

`A300154(n+1)-A005843(A087466(n+1))`
-/

namespace A087470.P17342506534550576250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300154 (n + 1) - A005843 (A087466 (n + 1)).toNat

end

end A087470.P17342506534550576250

/-!
# A087471: Final digit resulting from iterations of the product of the two numbers formed from the alternating digits of n.

The programs for A087471, there is no canonical definition to state claims against.
-/

/-! ## A087471.P4377879087870899374

`A031347(A195663(∑[n]))`
-/

namespace A087471.P4377879087870899374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A195663 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087471.P4377879087870899374

/-! ## A087471.P325079103700638278

`A031347(A277199(∑[n+1]))`
-/

namespace A087471.P325079103700638278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A277199 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087471.P325079103700638278

/-! ## A087471.P6315749333724433199

`A031347((n+1)^A178334(n+1))`
-/

namespace A087471.P6315749333724433199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A178334 (n + 1) : ℤ))).toNat

end

end A087471.P6315749333724433199

/-! ## A087471.P5151331030441894033

`A031347(C(n+1, A008835(2*n+3)))`
-/

namespace A087471.P5151331030441894033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (Nat.choose (n + 1) (A008835 (2 * n + 3)).toNat)

end

end A087471.P5151331030441894033

/-! ## A087471.P604634780634412754

`A031347(A209229(∑[9*(n+1)])+n+1)`
-/

namespace A087471.P604634780634412754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A209229 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)).toNat

end

end A087471.P604634780634412754

/-! ## A087471.P3576249701349731105

`A031347(n+1)^A344764(∏[char[∑[n+1]]+1])`
-/

namespace A087471.P3576249701349731105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031347 (n + 1) : ℚ) ^ (A344764 (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A087471.P3576249701349731105

/-! ## A087471.P16352303275214882909

`A033684(A064226(n))+A031347(n+1)`
-/

namespace A087471.P16352303275214882909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A064226 n).toNat + A031347 (n + 1)

end

end A087471.P16352303275214882909

/-! ## A087471.P17390785954544228888

`gcd(A000038(A284289(n)), A031347(n+1))`
-/

namespace A087471.P17390785954544228888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A284289 n).toNat) (A031347 (n + 1))

end

end A087471.P17390785954544228888

/-! ## A087471.P1180295733139443071

`A031347(n+1)+A000007(A028373(n+1))`
-/

namespace A087471.P1180295733139443071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (n + 1) + A000007 (A028373 (n + 1)).toNat

end

end A087471.P1180295733139443071

/-! ## A087471.P1427208090629410911

`A031347(n+1)+A031347(A051022(n)-n)`
-/

namespace A087471.P1427208090629410911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (n + 1) + A031347 (A051022 n - (n : ℤ)).toNat

end

end A087471.P1427208090629410911

/-! ## A087471.P17338190578070945168

`A031347(n+1)+A000007(A077344(n+1))`
-/

namespace A087471.P17338190578070945168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (n + 1) + A000007 (A077344 (n + 1)).toNat

end

end A087471.P17338190578070945168

/-! ## A087471.P10811564386877550577

`A031347(A007954(n+1)%A316312(n+2))`
-/

namespace A087471.P10811564386877550577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (Int.tmod (A007954 (n + 1)) (A316312 (n + 2))).toNat

end

end A087471.P10811564386877550577

/-! ## A087471.P11848533849553690969

`A031347(n+1)^A220280(A220280(n+2)+1)^n`
-/

namespace A087471.P11848533849553690969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031347 (n + 1) : ℚ) ^ (A220280 (A220280 (n + 2) + 1).toNat ^ n : ℤ)

end

end A087471.P11848533849553690969

/-! ## A087471.P13415205592246747888

`A031347(n+1)+A031347(A273913(n+1))`
-/

namespace A087471.P13415205592246747888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (n + 1) + A031347 (A273913 (n + 1)).toNat

end

end A087471.P13415205592246747888

/-! ## A087471.P14287684702787149948

`A031347(A049345(2*n))+A031347(n+1)`
-/

namespace A087471.P14287684702787149948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A049345 (2 * n)).toNat + A031347 (n + 1)

end

end A087471.P14287684702787149948

/-! ## A087471.P12055463071396069241

`A055671(n²)+A031347(n+1)`
-/

namespace A087471.P12055463071396069241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (n ^ 2) + A031347 (n + 1)

end

end A087471.P12055463071396069241

/-! ## A087471.P15327846984110435774

`A055672(n²)+A031347(n+1)`
-/

namespace A087471.P15327846984110435774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n ^ 2) + A031347 (n + 1)

end

end A087471.P15327846984110435774

/-! ## A087471.P126694284893391288

`A031347(A000196((n+1)²))`
-/

namespace A087471.P126694284893391288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A000196 ((n + 1) ^ 2)).toNat

end

end A087471.P126694284893391288

/-! ## A087471.P12926295400015964266

`A031347(A027907(n²)+n)`
-/

namespace A087471.P12926295400015964266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A027907 (n ^ 2) + (n : ℤ)).toNat

end

end A087471.P12926295400015964266

/-!
# A087472: Number of iterations required for the function f(n) to reach a single digit, where f(n) is the product of the two numbers formed from the alternating digits of n.

The programs for A087472, the canonical program `A087472.P6974076248790329574` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087472 has offset 1).

The definition of A087472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087472.P1765991194324898686

`A031346(A130734(n+2))`
-/

namespace A087472.P1765991194324898686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A130734 (n + 2)).toNat

end

end A087472.P1765991194324898686

namespace A087472

/-- `A031346(A130734(n+2))` -/
def P1765991194324898686.Spec : Prop :=
  ∀ n, P1765991194324898686.a n = A087472 (n + 1)

end A087472

/-! ## A087472.P4036122652402751243

`A031346(A226378(A005383(n+1))+n)`
-/

namespace A087472.P4036122652402751243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A226378 (A005383 (n + 1)).toNat + (n : ℤ)).toNat

end

end A087472.P4036122652402751243

namespace A087472

/-- `A031346(A226378(A005383(n+1))+n)` -/
def P4036122652402751243.Spec : Prop :=
  ∀ n, P4036122652402751243.a n = A087472 (n + 1)

end A087472

/-! ## A087472.P14572253091333208880

`and(A008683(A002385(n+5)), A031346(n+1))`
-/

namespace A087472.P14572253091333208880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A002385 (n + 5)).toNat) (A031346 (n + 1))

end

end A087472.P14572253091333208880

namespace A087472

/-- `and(A008683(A002385(n+5)), A031346(n+1))` -/
def P14572253091333208880.Spec : Prop :=
  ∀ n, P14572253091333208880.a n = A087472 (n + 1)

end A087472

/-! ## A087472.P6974076248790329574

`A031346(A056709(2*(n+1)))*A031346(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087472

/-- `A031346(A056709(2*(n+1)))*A031346(n+1)` -/
def P6974076248790329574.Spec : Prop :=
  ∀ n, P6974076248790329574.a n = A087472 (n + 1)

theorem P6974076248790329574.correct : P6974076248790329574.Spec := by
  intro n
  simp only [A087472, Nat.add_sub_cancel]

end A087472

/-! ## A087472.P14677206845085287256

`floor(A031346(n+1)+A175402(n)/(n+1))`
-/

namespace A087472.P14677206845085287256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031346 (n + 1) : ℚ) + (A175402 n : ℚ) / (n + 1 : ℚ)⌋

end

end A087472.P14677206845085287256

namespace A087472

/-- `floor(A031346(n+1)+A175402(n)/(n+1))` -/
def P14677206845085287256.Spec : Prop :=
  ∀ n, P14677206845085287256.a n = A087472 (n + 1)

end A087472

/-! ## A087472.P7765342958203180648

`A208575(A049345(2*n))+A031346(n+1)`
-/

namespace A087472.P7765342958203180648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (A049345 (2 * n)).toNat + A031346 (n + 1)

end

end A087472.P7765342958203180648

namespace A087472

/-- `A208575(A049345(2*n))+A031346(n+1)` -/
def P7765342958203180648.Spec : Prop :=
  ∀ n, P7765342958203180648.a n = A087472 (n + 1)

end A087472

/-! ## A087472.P9227788340995006171

`A055671(n²)+A031346(n+1)`
-/

namespace A087472.P9227788340995006171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (n ^ 2) + A031346 (n + 1)

end

end A087472.P9227788340995006171

namespace A087472

/-- `A055671(n²)+A031346(n+1)` -/
def P9227788340995006171.Spec : Prop :=
  ∀ n, P9227788340995006171.a n = A087472 (n + 1)

end A087472

/-! ## A087472.P12107309745810595557

`A055672(n²)+A031346(n+1)`
-/

namespace A087472.P12107309745810595557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n ^ 2) + A031346 (n + 1)

end

end A087472.P12107309745810595557

namespace A087472

/-- `A055672(n²)+A031346(n+1)` -/
def P12107309745810595557.Spec : Prop :=
  ∀ n, P12107309745810595557.a n = A087472 (n + 1)

end A087472

/-!
# A087473: Smallest positive number that requires n iterations of f(k) to reach a single digit, where f(k) is the product of the two numbers formed from the alternating digits of k.

The programs for A087473, there is no canonical definition to state claims against.
-/

/-! ## A087473.P14415213308286782779

`A087474(∑[n])`
-/

namespace A087473.P14415213308286782779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087474 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087473.P14415213308286782779

/-! ## A087473.P14008309228113760749

`record[A087474(n)]`
-/

namespace A087473.P14008309228113760749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087473.P14008309228113760749

/-! ## A087473.P16430020227535547294

`and(-1, A087474(A000217(n)))`
-/

namespace A087473.P16430020227535547294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A087474 (A000217 n).toNat)

end

end A087473.P16430020227535547294

/-! ## A087473.P10116018566844328288

`A087474(A000217(n))+A011745(n)`
-/

namespace A087473.P10116018566844328288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087474 (A000217 n).toNat + A011745 n

end

end A087473.P10116018566844328288

/-! ## A087473.P636068103917258579

`A087474(A000217(n))+A085861(n)`
-/

namespace A087473.P636068103917258579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087474 (A000217 n).toNat + A085861 n

end

end A087473.P636068103917258579

/-!
# A087475: a(n) = n^2 + 4.

The programs for A087475, the canonical program `A087475.P4372105407425732933` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087475 has offset 0).

The definition of A087475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+4` (program `A087475.P4372105407425732933`, by `A087475.P4372105407425732933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087475.P4372105407425732933

`n²+4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087475

/-- `n²+4` -/
def P4372105407425732933.Spec : Prop :=
  ∀ n, (P4372105407425732933.a n : ℤ) = A087475 n

theorem P4372105407425732933.correct : P4372105407425732933.Spec := by
  intro n
  simp only [A087475]

end A087475

/-!
# A087476: Triangle read by rows where the n-th row has n terms: T(n,i)=(i+2)^2-4 mod n.

The programs for A087476, the canonical program `A087476.P17641979265843464007` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087476 has offset 1).

The definition of A087476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087476.P3653388215712577443

`(A215630(n+2)+2*n+1)%∑[char[∑[n]]]`
-/

namespace A087476.P3653388215712577443
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215630 (n + 2) + (2 * n + 1 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A087476.P3653388215712577443

namespace A087476

/-- `(A215630(n+2)+2*n+1)%∑[char[∑[n]]]` -/
def P3653388215712577443.Spec : Prop :=
  ∀ n, P3653388215712577443.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P17641979265843464007

`(2*n+a(n-1)+5)%A002024(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087476

/-- `(2*n+a(n-1)+5)%A002024(n+1)` -/
def P17641979265843464007.Spec : Prop :=
  ∀ n, P17641979265843464007.a n = A087476 (n + 1)

theorem P17641979265843464007.correct : P17641979265843464007.Spec := by
  intro n
  simp only [A087476, Nat.add_sub_cancel]

end A087476

/-! ## A087476.P12748153715646035947

`∑[4-A114327(n)]%A002024(n+1)`
-/

namespace A087476.P12748153715646035947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002024 (n + 1))

end

end A087476.P12748153715646035947

namespace A087476

/-- `∑[4-A114327(n)]%A002024(n+1)` -/
def P12748153715646035947.Spec : Prop :=
  ∀ n, P12748153715646035947.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P9838454694491561493

`∑[Δ[A133819(n+1)]+2]%A002024(n+1)`
-/

namespace A087476.P9838454694491561493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002024 (n + 1))

end

end A087476.P9838454694491561493

namespace A087476

/-- `∑[Δ[A133819(n+1)]+2]%A002024(n+1)` -/
def P9838454694491561493.Spec : Prop :=
  ∀ n, P9838454694491561493.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P5333826477114723136

`A164005(A004201(n+1))%(comp[∑[n-1]]-n)`
-/

namespace A087476.P5333826477114723136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164005 (A004201 (n + 1)).toNat) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A087476.P5333826477114723136

namespace A087476

/-- `A164005(A004201(n+1))%(comp[∑[n-1]]-n)` -/
def P5333826477114723136.Spec : Prop :=
  ∀ n, P5333826477114723136.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P15360700369714502688

`A028347(A155705(n+1))%∑[A010054(n)]`
-/

namespace A087476.P15360700369714502688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028347 (A155705 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087476.P15360700369714502688

namespace A087476

/-- `A028347(A155705(n+1))%∑[A010054(n)]` -/
def P15360700369714502688.Spec : Prop :=
  ∀ n, P15360700369714502688.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P3615229105003654090

`∑[A185871(A080036(n))]%A002024(n+1)`
-/

namespace A087476.P3615229105003654090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185871 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002024 (n + 1))

end

end A087476.P3615229105003654090

namespace A087476

/-- `∑[A185871(A080036(n))]%A002024(n+1)` -/
def P3615229105003654090.Spec : Prop :=
  ∀ n, P3615229105003654090.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P12236683808761033719

`A227453(A056537(n+1))%∑[A010054(n)]`
-/

namespace A087476.P12236683808761033719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227453 (A056537 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087476.P12236683808761033719

namespace A087476

/-- `A227453(A056537(n+1))%∑[A010054(n)]` -/
def P12236683808761033719.Spec : Prop :=
  ∀ n, P12236683808761033719.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P5419627351082085894

`A028347(A004201(n+3))%∑[A010054(n)]`
-/

namespace A087476.P5419627351082085894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028347 (A004201 (n + 3)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087476.P5419627351082085894

namespace A087476

/-- `A028347(A004201(n+3))%∑[A010054(n)]` -/
def P5419627351082085894.Spec : Prop :=
  ∀ n, P5419627351082085894.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P6455616489484508183

`A164005(A004202(n+1))%A002024(n+1)`
-/

namespace A087476.P6455616489484508183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164005 (A004202 (n + 1)).toNat) (A002024 (n + 1))

end

end A087476.P6455616489484508183

namespace A087476

/-- `A164005(A004202(n+1))%A002024(n+1)` -/
def P6455616489484508183.Spec : Prop :=
  ∀ n, P6455616489484508183.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P15617627590545355410

`A164005(A108872(n+1))%A002024(n+1)`
-/

namespace A087476.P15617627590545355410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164005 (A108872 (n + 1)).toNat) (A002024 (n + 1))

end

end A087476.P15617627590545355410

namespace A087476

/-- `A164005(A108872(n+1))%A002024(n+1)` -/
def P15617627590545355410.Spec : Prop :=
  ∀ n, P15617627590545355410.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P536525320381189221

`∑[A185871(A014132(n+1))]%A002024(n+1)`
-/

namespace A087476.P536525320381189221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185871 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002024 (n + 1))

end

end A087476.P536525320381189221

namespace A087476

/-- `∑[A185871(A014132(n+1))]%A002024(n+1)` -/
def P536525320381189221.Spec : Prop :=
  ∀ n, P536525320381189221.a n = A087476 (n + 1)

end A087476

/-! ## A087476.P6017134381183087275

`(A002260(n+1)*A002260(n+5))%A002024(n+1)`
-/

namespace A087476.P6017134381183087275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1) * A002260 (n + 5)) (A002024 (n + 1))

end

end A087476.P6017134381183087275

namespace A087476

/-- `(A002260(n+1)*A002260(n+5))%A002024(n+1)` -/
def P6017134381183087275.Spec : Prop :=
  ∀ n, P6017134381183087275.a n = A087476 (n + 1)

end A087476

/-!
# A087477: Decimal expansion of sqrt(51)-4.

The programs for A087477, there is no canonical definition to state claims against.
-/

/-! ## A087477.P10732268969272649830

`A010504(n)-A000038(n)²`
-/

namespace A087477.P10732268969272649830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010504 (n + 1) - A000038 n ^ 2

end

end A087477.P10732268969272649830

/-! ## A087477.P586520848288634951

`A010504(n)+A040012(n)-8`
-/

namespace A087477.P586520848288634951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010504 (n + 1) + (A040012 n - 8)

end

end A087477.P586520848288634951

/-! ## A087477.P15569451198666860423

`floor(A010504(n)/gcd(2, A000040(n+1)))`
-/

namespace A087477.P15569451198666860423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010504 (n + 1) : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)⌋

end

end A087477.P15569451198666860423

/-!
# A087479: Triangle read by rows where the n-th row has n terms: T(n,i)=i^2+4 mod n.

The programs for A087479, the canonical program `A087479.P10953408168577437528` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087479 has offset 1).

The definition of A087479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087479.P2027030919692235241

`(A048152(n+1)+4)%∑[char[∑[n]]]`
-/

namespace A087479.P2027030919692235241
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048152 (n + 1) + 4) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A087479.P2027030919692235241

namespace A087479

/-- `(A048152(n+1)+4)%∑[char[∑[n]]]` -/
def P2027030919692235241.Spec : Prop :=
  ∀ n, P2027030919692235241.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P14054892108179145174

`(A055096(n+2)+3)%∑[char[∑[n]]]`
-/

namespace A087479.P14054892108179145174
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055096 (n + 2) + 3) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A087479.P14054892108179145174

namespace A087479

/-- `(A055096(n+2)+3)%∑[char[∑[n]]]` -/
def P14054892108179145174.Spec : Prop :=
  ∀ n, P14054892108179145174.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P4243364012613868286

`(A092283(n+1)+4)%∑[char[∑[n]]]`
-/

namespace A087479.P4243364012613868286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092283 (n + 1) + 4) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A087479.P4243364012613868286

namespace A087479

/-- `(A092283(n+1)+4)%∑[char[∑[n]]]` -/
def P4243364012613868286.Spec : Prop :=
  ∀ n, P4243364012613868286.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P9892134949126187839

`(A133819(n+1)+4)%∑[char[∑[n]]]`
-/

namespace A087479.P9892134949126187839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133819 (n + 1) + 4) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A087479.P9892134949126187839

namespace A087479

/-- `(A133819(n+1)+4)%∑[char[∑[n]]]` -/
def P9892134949126187839.Spec : Prop :=
  ∀ n, P9892134949126187839.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P772932288260680892

`(A002262(n+1)²+4)%∑[char[∑[n]]]`
-/

namespace A087479.P772932288260680892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 (n + 1) ^ 2 + 4) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A087479.P772932288260680892

namespace A087479

/-- `(A002262(n+1)²+4)%∑[char[∑[n]]]` -/
def P772932288260680892.Spec : Prop :=
  ∀ n, P772932288260680892.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P99006496589164410

`(A215630(n+1)+4)%A002024(n+1)`
-/

namespace A087479.P99006496589164410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215630 (n + 1) + 4) (A002024 (n + 1))

end

end A087479.P99006496589164410

namespace A087479

/-- `(A215630(n+1)+4)%A002024(n+1)` -/
def P99006496589164410.Spec : Prop :=
  ∀ n, P99006496589164410.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P7289573427931462742

`(A215631(n+1)+4)%A002024(n+1)`
-/

namespace A087479.P7289573427931462742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215631 (n + 1) + 4) (A002024 (n + 1))

end

end A087479.P7289573427931462742

namespace A087479

/-- `(A215631(n+1)+4)%A002024(n+1)` -/
def P7289573427931462742.Spec : Prop :=
  ∀ n, P7289573427931462742.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P6331775545300143897

`(A084854(n+1)²+4)%∑[A010816(n)]`
-/

namespace A087479.P6331775545300143897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084854 (n + 1) ^ 2 + 4) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087479.P6331775545300143897

namespace A087479

/-- `(A084854(n+1)²+4)%∑[A010816(n)]` -/
def P6331775545300143897.Spec : Prop :=
  ∀ n, P6331775545300143897.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P10953408168577437528

`A087475(A025581(n))%∑[A010054(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A087479

/-- `A087475(A025581(n))%∑[A010054(n)]` -/
def P10953408168577437528.Spec : Prop :=
  ∀ n, P10953408168577437528.a n = A087479 (n + 1)

theorem P10953408168577437528.correct : P10953408168577437528.Spec := by
  intro n
  simp only [A087479, Nat.add_sub_cancel]

end A087479

/-! ## A087479.P10331543703264082614

`A087475(A063656(n))%A002024(n+1)`
-/

namespace A087479.P10331543703264082614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087475 (A063656 n).toNat) (A002024 (n + 1))

end

end A087479.P10331543703264082614

namespace A087479

/-- `A087475(A063656(n))%A002024(n+1)` -/
def P10331543703264082614.Spec : Prop :=
  ∀ n, P10331543703264082614.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P10074839967231302581

`A087475(A151890(n))%A002024(n+1)`
-/

namespace A087479.P10074839967231302581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087475 (A151890 n).toNat) (A002024 (n + 1))

end

end A087479.P10074839967231302581

namespace A087479

/-- `A087475(A151890(n))%A002024(n+1)` -/
def P10074839967231302581.Spec : Prop :=
  ∀ n, P10074839967231302581.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P11466249974510794658

`A087475(A292564(n))%A002024(n+1)`
-/

namespace A087479.P11466249974510794658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087475 (A292564 n).toNat) (A002024 (n + 1))

end

end A087479.P11466249974510794658

namespace A087479

/-- `A087475(A292564(n))%A002024(n+1)` -/
def P11466249974510794658.Spec : Prop :=
  ∀ n, P11466249974510794658.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P16192443650114983526

`A087475(A002260(n+1))%∑[A010054(n)]`
-/

namespace A087479.P16192443650114983526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087475 (A002260 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087479.P16192443650114983526

namespace A087479

/-- `A087475(A002260(n+1))%∑[A010054(n)]` -/
def P16192443650114983526.Spec : Prop :=
  ∀ n, P16192443650114983526.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P10715401886365860061

`A020705(A048152(n+1))%A002024(n+1)`
-/

namespace A087479.P10715401886365860061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020705 (A048152 (n + 1)).toNat) (A002024 (n + 1))

end

end A087479.P10715401886365860061

namespace A087479

/-- `A020705(A048152(n+1))%A002024(n+1)` -/
def P10715401886365860061.Spec : Prop :=
  ∀ n, P10715401886365860061.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P8567149116255723435

`A055096(A080036(n+1))%A002024(n+1)`
-/

namespace A087479.P8567149116255723435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055096 (A080036 (n + 1)).toNat) (A002024 (n + 1))

end

end A087479.P8567149116255723435

namespace A087479

/-- `A055096(A080036(n+1))%A002024(n+1)` -/
def P8567149116255723435.Spec : Prop :=
  ∀ n, P8567149116255723435.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P2091987170817993710

`A087475(A108872(n+1))%A002024(n+1)`
-/

namespace A087479.P2091987170817993710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087475 (A108872 (n + 1)).toNat) (A002024 (n + 1))

end

end A087479.P2091987170817993710

namespace A087479

/-- `A087475(A108872(n+1))%A002024(n+1)` -/
def P2091987170817993710.Spec : Prop :=
  ∀ n, P2091987170817993710.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P14046160231452723521

`(A070216(n+1)+4)%A000005(A137688(n))`
-/

namespace A087479.P14046160231452723521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070216 (n + 1) + 4) (A000005 (A137688 n).toNat)

end

end A087479.P14046160231452723521

namespace A087479

/-- `(A070216(n+1)+4)%A000005(A137688(n))` -/
def P14046160231452723521.Spec : Prop :=
  ∀ n, P14046160231452723521.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P13315645184315874780

`A070216(lt[1, A007318(n)])%A002024(n+1)`
-/

namespace A087479.P13315645184315874780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A002024 (n + 1))

end

end A087479.P13315645184315874780

namespace A087479

/-- `A070216(lt[1, A007318(n)])%A002024(n+1)` -/
def P13315645184315874780.Spec : Prop :=
  ∀ n, P13315645184315874780.a n = A087479 (n + 1)

end A087479

/-! ## A087479.P16424290874686060813

`A087475(A091435(n))%A052409(A140513(n))`
-/

namespace A087479.P16424290874686060813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087475 (A091435 n).toNat) (A052409 (A140513 n).toNat)

end

end A087479.P16424290874686060813

namespace A087479

/-- `A087475(A091435(n))%A052409(A140513(n))` -/
def P16424290874686060813.Spec : Prop :=
  ∀ n, P16424290874686060813.a n = A087479 (n + 1)

end A087479

/-!
# A087480: Sum of all the primes raised to their corresponding powers.

The programs for A087480, there is no canonical definition to state claims against.
-/

/-! ## A087480.P6285676138497262047

`∑[p?[comp[n²]]^(n+1)]`
-/

namespace A087480.P6285676138497262047
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087480.P6285676138497262047

/-! ## A087480.P8675350351119847646

`∑[eq[1, ∑{e}[n, #]]^(n+1)]`
-/

namespace A087480.P8675350351119847646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087480.P8675350351119847646

/-! ## A087480.P354788002187557228

`∑[eq[n+1, ∑{d}[n, #]]^(n+1)]`
-/

namespace A087480.P354788002187557228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087480.P354788002187557228

/-! ## A087480.P4460806176061264659

`∑[A062457(n+1)]`
-/

namespace A087480.P4460806176061264659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087480.P4460806176061264659

/-! ## A087480.P6488789010394220185

`∑[A307539(n+1)]`
-/

namespace A087480.P6488789010394220185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087480.P6488789010394220185

/-!
# A087481: Number of polynomials of the form x^n +- x^(n-1) +- x^(n-2) +- ... +- 1 irreducible over the integers.

The programs for A087481, there is no canonical definition to state claims against.
-/

/-! ## A087481.P10024664106409765720

`A010554(A072411(n+1)*A280203(n+1))`
-/

namespace A087481.P10024664106409765720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A072411 (n + 1) * A280203 (n + 1)).toNat

end

end A087481.P10024664106409765720

/-!
# A087482: Number of binary polynomials of degree n irreducible over the integers.

The programs for A087482, there is no canonical definition to state claims against.
-/

/-! ## A087482.P7428532159098278659

`Δ[A255574(∑[2^n])]`
-/

namespace A087482.P7428532159098278659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087482.P7428532159098278659

/-! ## A087482.P4929301217352955356

`abs(Δ[A255574(A126646(n))])`
-/

namespace A087482.P4929301217352955356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 (A126646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A087482.P4929301217352955356

/-! ## A087482.P3966817119993266080

`Δ[record[A255574(A077896(n))]]`
-/

namespace A087482.P3966817119993266080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 (A077896 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087482.P3966817119993266080

/-! ## A087482.P7135613755754379786

`Δ[record[A255574(A094024(n))]]`
-/

namespace A087482.P7135613755754379786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255574 (A094024 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087482.P7135613755754379786

/-!
# A087483: Row 0 of the order array of 3/2, i.e., row 0 of the transposable dispersion in A087465.

The programs for A087483, the canonical program `A087483.P1059762505197170872` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087483 has offset 0).

The definition of A087483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087483.P1059762505197170872

`1+floor((n+1)²/3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087483

/-- `1+floor((n+1)²/3)` -/
def P1059762505197170872.Spec : Prop :=
  ∀ n, P1059762505197170872.a n = A087483 n

theorem P1059762505197170872.correct : P1059762505197170872.Spec := by
  intro n
  simp only [A087483]

end A087483

/-! ## A087483.P3620275597171323614

`A192735(n+2)/(n+2)`
-/

namespace A087483.P3620275597171323614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192735 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A087483.P3620275597171323614

namespace A087483

/-- `A192735(n+2)/(n+2)` -/
def P3620275597171323614.Spec : Prop :=
  ∀ n, P3620275597171323614.a n = (A087483 n : ℚ)

end A087483

/-! ## A087483.P15037118662974642942

`ceil(or(2, (n+1)²)/3)`
-/

namespace A087483.P15037118662974642942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 ((n + 1) ^ 2) : ℚ) / 3⌉

end

end A087483.P15037118662974642942

namespace A087483

/-- `ceil(or(2, (n+1)²)/3)` -/
def P15037118662974642942.Spec : Prop :=
  ∀ n, P15037118662974642942.a n = A087483 n

end A087483

/-! ## A087483.P10388539755561562116

`round(or(2, (n+1)²)/3)`
-/

namespace A087483.P10388539755561562116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 ((n + 1) ^ 2) : ℚ) / 3)

end

end A087483.P10388539755561562116

namespace A087483

/-- `round(or(2, (n+1)²)/3)` -/
def P10388539755561562116.Spec : Prop :=
  ∀ n, P10388539755561562116.a n = A087483 n

end A087483

/-! ## A087483.P16720933734092430225

`ceil(xor(2, (n+1)²)/3)`
-/

namespace A087483.P16720933734092430225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 ((n + 1) ^ 2) : ℚ) / 3⌉

end

end A087483.P16720933734092430225

namespace A087483

/-- `ceil(xor(2, (n+1)²)/3)` -/
def P16720933734092430225.Spec : Prop :=
  ∀ n, P16720933734092430225.a n = A087483 n

end A087483

/-! ## A087483.P13552127397164779806

`round(xor(2, (n+1)²)/3)`
-/

namespace A087483.P13552127397164779806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 ((n + 1) ^ 2) : ℚ) / 3)

end

end A087483.P13552127397164779806

namespace A087483

/-- `round(xor(2, (n+1)²)/3)` -/
def P13552127397164779806.Spec : Prop :=
  ∀ n, P13552127397164779806.a n = A087483 n

end A087483

/-! ## A087483.P523895470056176493

`round((n+2)/acot(n/3))`
-/

namespace A087483.P523895470056176493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / SequenceMachineLib.acot ((n : ℚ) / 3 : ℝ))

end

end A087483.P523895470056176493

namespace A087483

/-- `round((n+2)/acot(n/3))` -/
def P523895470056176493.Spec : Prop :=
  ∀ n, P523895470056176493.a n = A087483 n

end A087483

/-! ## A087483.P14203354439497162734

`ceil(record[((1-n)²+1)/3])`
-/

namespace A087483.P14203354439497162734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A087483.P14203354439497162734

namespace A087483

/-- `ceil(record[((1-n)²+1)/3])` -/
def P14203354439497162734.Spec : Prop :=
  ∀ n, P14203354439497162734.a n = A087483 n

end A087483

/-! ## A087483.P9774922296445840499

`round(record[(1-n)²/3+1])`
-/

namespace A087483.P9774922296445840499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A087483.P9774922296445840499

namespace A087483

/-- `round(record[(1-n)²/3+1])` -/
def P9774922296445840499.Spec : Prop :=
  ∀ n, P9774922296445840499.a n = A087483 n

end A087483

/-! ## A087483.P18104743631563909834

`ceil(cos(1)+(n+1)²/3)`
-/

namespace A087483.P18104743631563909834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 : ℝ) + (((n + 1) ^ 2 : ℚ) / 3 : ℝ)⌉

end

end A087483.P18104743631563909834

namespace A087483

/-- `ceil(cos(1)+(n+1)²/3)` -/
def P18104743631563909834.Spec : Prop :=
  ∀ n, P18104743631563909834.a n = A087483 n

end A087483

/-! ## A087483.P10414648708275114559

`round(cos(1)+(n+1)²/3)`
-/

namespace A087483.P10414648708275114559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + (((n + 1) ^ 2 : ℚ) / 3 : ℝ))

end

end A087483.P10414648708275114559

namespace A087483

/-- `round(cos(1)+(n+1)²/3)` -/
def P10414648708275114559.Spec : Prop :=
  ∀ n, P10414648708275114559.a n = A087483 n

end A087483

/-! ## A087483.P5584905653559696742

`ceil((sin(1)+(n+1)²)/3)`
-/

namespace A087483.P5584905653559696742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 3⌉

end

end A087483.P5584905653559696742

namespace A087483

/-- `ceil((sin(1)+(n+1)²)/3)` -/
def P5584905653559696742.Spec : Prop :=
  ∀ n, P5584905653559696742.a n = A087483 n

end A087483

/-! ## A087483.P7997462412170835442

`round(sin(1)+(n+1)²/3)`
-/

namespace A087483.P7997462412170835442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + (((n + 1) ^ 2 : ℚ) / 3 : ℝ))

end

end A087483.P7997462412170835442

namespace A087483

/-- `round(sin(1)+(n+1)²/3)` -/
def P7997462412170835442.Spec : Prop :=
  ∀ n, P7997462412170835442.a n = A087483 n

end A087483

/-! ## A087483.P1488971375772802666

`ceil((tan(1)+(n+1)²)/3)`
-/

namespace A087483.P1488971375772802666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 3⌉

end

end A087483.P1488971375772802666

namespace A087483

/-- `ceil((tan(1)+(n+1)²)/3)` -/
def P1488971375772802666.Spec : Prop :=
  ∀ n, P1488971375772802666.a n = A087483 n

end A087483

/-! ## A087483.P13345349613638100926

`round((tan(1)+(n+1)²)/3)`
-/

namespace A087483.P13345349613638100926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 3)

end

end A087483.P13345349613638100926

namespace A087483

/-- `round((tan(1)+(n+1)²)/3)` -/
def P13345349613638100926.Spec : Prop :=
  ∀ n, P13345349613638100926.a n = A087483 n

end A087483

/-! ## A087483.P4772533091834984689

`ceil((asin(1)+(n+1)²)/3)`
-/

namespace A087483.P4772533091834984689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arcsin (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 3⌉

end

end A087483.P4772533091834984689

namespace A087483

/-- `ceil((asin(1)+(n+1)²)/3)` -/
def P4772533091834984689.Spec : Prop :=
  ∀ n, P4772533091834984689.a n = A087483 n

end A087483

/-! ## A087483.P1914780223074207116

`round((asin(1)+(n+1)²)/3)`
-/

namespace A087483.P1914780223074207116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arcsin (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 3)

end

end A087483.P1914780223074207116

namespace A087483

/-- `round((asin(1)+(n+1)²)/3)` -/
def P1914780223074207116.Spec : Prop :=
  ∀ n, P1914780223074207116.a n = A087483 n

end A087483

/-! ## A087483.P3736565272375682313

`ceil((atan(1)+(n+1)²)/3)`
-/

namespace A087483.P3736565272375682313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 3⌉

end

end A087483.P3736565272375682313

namespace A087483

/-- `ceil((atan(1)+(n+1)²)/3)` -/
def P3736565272375682313.Spec : Prop :=
  ∀ n, P3736565272375682313.a n = A087483 n

end A087483

/-! ## A087483.P18021810393655973452

`round(atan(1)+(n+1)²/3)`
-/

namespace A087483.P18021810393655973452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + (((n + 1) ^ 2 : ℚ) / 3 : ℝ))

end

end A087483.P18021810393655973452

namespace A087483

/-- `round(atan(1)+(n+1)²/3)` -/
def P18021810393655973452.Spec : Prop :=
  ∀ n, P18021810393655973452.a n = A087483 n

end A087483

/-! ## A087483.P12919391985966883782

`ceil((cosh(1)+(n+1)²)/3)`
-/

namespace A087483.P12919391985966883782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cosh (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 3⌉

end

end A087483.P12919391985966883782

namespace A087483

/-- `ceil((cosh(1)+(n+1)²)/3)` -/
def P12919391985966883782.Spec : Prop :=
  ∀ n, P12919391985966883782.a n = A087483 n

end A087483

/-!
# A087484: Least hypotenuse of a primitive Pythagorean triangle with inradius n.

The programs for A087484, there is no canonical definition to state claims against.
-/

/-! ## A087484.P10059720885993343631

`A390928(3*(n+1))`
-/

namespace A087484.P10059720885993343631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390928 (3 * (n + 1))

end

end A087484.P10059720885993343631

/-! ## A087484.P13994190293532759078

`A056901(n+1)-(n+1)`
-/

namespace A087484.P13994190293532759078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056901 (n + 1) - (n + 1 : ℤ)

end

end A087484.P13994190293532759078

/-!
# A087485: Odd numbers m such that 2*m - sigma(m) = 6.

The programs for A087485, there is no canonical definition to state claims against.
-/

/-! ## A087485.P16302985183500301389

`A274552(2*n+5)`
-/

namespace A087485.P16302985183500301389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274552 (2 * n + 5)

end

end A087485.P16302985183500301389

/-!
# A087486: Numbers k such that digital sum of k divides digital sum of k-th prime, p(k).

The programs for A087486, the canonical program `A087486.P8452078015866765301` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087486 has offset 1).

The definition of A087486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087486.P8452078015866765301

`eq[A007953(n), A081653(A028310(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A087486

/-- `eq[A007953(n), A081653(A028310(n))]` -/
def P8452078015866765301.Spec : Prop :=
  ∀ n, (P8452078015866765301.a n : ℤ) = A087486 (n + 1)

theorem P8452078015866765301.correct : P8452078015866765301.Spec := by
  intro n
  simp only [A087486, Nat.add_sub_cancel]

end A087486

/-! ## A087486.P13488966175785760570

`eq[A081653(A028310(n))+n, A062028(n)]`
-/

namespace A087486.P13488966175785760570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087486.P13488966175785760570

namespace A087486

/-- `eq[A081653(A028310(n))+n, A062028(n)]` -/
def P13488966175785760570.Spec : Prop :=
  ∀ n, (P13488966175785760570.a n : ℤ) = A087486 (n + 1)

end A087486

/-! ## A087486.P4982717995853049796

`eq[2*A081653(A028310(n)), A169805(n)]`
-/

namespace A087486.P4982717995853049796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081653 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087486.P4982717995853049796

namespace A087486

/-- `eq[2*A081653(A028310(n)), A169805(n)]` -/
def P4982717995853049796.Spec : Prop :=
  ∀ n, (P4982717995853049796.a n : ℤ) = A087486 (n + 1)

end A087486

/-! ## A087486.P7815918244777118583

`eq[A007953(n), A081653(A000007(n)+n)]`
-/

namespace A087486.P7815918244777118583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087486.P7815918244777118583

namespace A087486

/-- `eq[A007953(n), A081653(A000007(n)+n)]` -/
def P7815918244777118583.Spec : Prop :=
  ∀ n, (P7815918244777118583.a n : ℤ) = A087486 (n + 1)

end A087486

/-! ## A087486.P2135335040000810548

`eq[A118880(n)^(1/3), A081653(A028310(n))]`
-/

namespace A087486.P2135335040000810548
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A087486.P2135335040000810548

namespace A087486

/-- `eq[A118880(n)^(1/3), A081653(A028310(n))]` -/
def P2135335040000810548.Spec : Prop :=
  ∀ n, (P2135335040000810548.a n : ℤ) = A087486 (n + 1)

end A087486

/-! ## A087486.P772556544893683664

`eq[1-A160941(n+1)+n, A081653(A028310(n))]`
-/

namespace A087486.P772556544893683664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160941 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087486.P772556544893683664

namespace A087486

/-- `eq[1-A160941(n+1)+n, A081653(A028310(n))]` -/
def P772556544893683664.Spec : Prop :=
  ∀ n, (P772556544893683664.a n : ℤ) = A087486 (n + 1)

end A087486

/-! ## A087486.P13789886011952121644

`eq[A160939(n+1)-(n+1), A081653(A028310(n))]`
-/

namespace A087486.P13789886011952121644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087486.P13789886011952121644

namespace A087486

/-- `eq[A160939(n+1)-(n+1), A081653(A028310(n))]` -/
def P13789886011952121644.Spec : Prop :=
  ∀ n, (P13789886011952121644.a n : ℤ) = A087486 (n + 1)

end A087486

/-! ## A087486.P10775163098698321357

`eq[A160942(n+1)/(n+1), A081653(A028310(n))]`
-/

namespace A087486.P10775163098698321357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160942 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A087486.P10775163098698321357

namespace A087486

/-- `eq[A160942(n+1)/(n+1), A081653(A028310(n))]` -/
def P10775163098698321357.Spec : Prop :=
  ∀ n, (P10775163098698321357.a n : ℤ) = A087486 (n + 1)

end A087486

/-!
# A087488: Number of n X n (-1,1)-matrices with all eigenvalues >= 0.

The programs for A087488, there is no canonical definition to state claims against.
-/

/-! ## A087488.P4906471061040214327

`A000010(A126468(n)-A152729(n+1))`
-/

namespace A087488.P4906471061040214327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A126468 n - A152729 (n + 1)).toNat

end

end A087488.P4906471061040214327

/-!
# A087489: Primes p such that 3^p - 2^p is composite.

The programs for A087489, there is no canonical definition to state claims against.
-/

/-! ## A087489.P9996662565170632754

`p?[comp[A057468(n+1)]]`
-/

namespace A087489.P9996662565170632754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057468 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087489.P9996662565170632754

/-! ## A087489.P16262436588647323455

`p?[comp[A182986(A102808(n+1)+1)]]`
-/

namespace A087489.P16262436588647323455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A102808 (n + 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087489.P16262436588647323455

/-! ## A087489.P2617575656367969638

`lt[A032742(n+1), A276172(n+1)]+1`
-/

namespace A087489.P2617575656367969638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A087489.P2617575656367969638

/-! ## A087489.P8373407823512306987

`lt[A348497(n+1), A276172(n+1)]+1`
-/

namespace A087489.P8373407823512306987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A087489.P8373407823512306987

/-! ## A087489.P8363509766264726513

`lt[A324116(n+1)², A276172(n+1)]+1`
-/

namespace A087489.P8363509766264726513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324116 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A087489.P8363509766264726513

/-!
# A087490: Primes p such that 4^p - 3^p is composite.

The programs for A087490, there is no canonical definition to state claims against.
-/

/-! ## A087490.P9550421602718505326

`A000040(lt[A101020(n), A000700(3*n+1)])`
-/

namespace A087490.P9550421602718505326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087490.P9550421602718505326

/-! ## A087490.P76920901993261303

`A014973(A072016(n+1))*A015919(A246780(n+4)-2)`
-/

namespace A087490.P76920901993261303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A072016 (n + 1)).toNat * A015919 (A246780 (n + 4) - 2).toNat

end

end A087490.P76920901993261303

/-! ## A087490.P9093546447794649053

`A000040(lt[6, A340202(n+1)])`
-/

namespace A087490.P9093546447794649053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087490.P9093546447794649053

/-! ## A087490.P4953064787437684744

`A006005(lt[A031131(n+1), A340202(n+1)])`
-/

namespace A087490.P4953064787437684744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087490.P4953064787437684744

/-! ## A087490.P11215588342461262765

`A015919(A246780(n+4)-2)%(A165608(n+1)-4)`
-/

namespace A087490.P11215588342461262765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015919 (A246780 (n + 4) - 2).toNat) (A165608 (n + 1) - 4)

end

end A087490.P11215588342461262765

/-! ## A087490.P18435652857989179538

`A000040(lt[A324666(n), A037952(n)])`
-/

namespace A087490.P18435652857989179538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087490.P18435652857989179538

/-! ## A087490.P6808744638194161155

`A015919(A246780(n+4)-2)%A318157(A094983(n))`
-/

namespace A087490.P6808744638194161155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015919 (A246780 (n + 4) - 2).toNat) (A318157 (A094983 n).toNat)

end

end A087490.P6808744638194161155

/-! ## A087490.P11076319360644394696

`A015919(A246780(n+4)-2)*A295679(A152947(n+1))`
-/

namespace A087490.P11076319360644394696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A246780 (n + 4) - 2).toNat * A295679 (A152947 (n + 1)).toNat

end

end A087490.P11076319360644394696

