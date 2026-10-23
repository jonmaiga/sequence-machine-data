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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A167201: Third in a series of triangular subarrays of A117506. Previous arrays are Tables A007318 and A059797.

The programs for A167201, there is no canonical definition to state claims against.
-/

/-! ## A167201.P9828579785373127942

`A167202(∑[char[∑[n]]]²-n)`
-/

namespace A167201.P9828579785373127942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167202 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A167201.P9828579785373127942

/-! ## A167201.P13541257383745636946

`A167202(A038722(n+1))+A025469(n)`
-/

namespace A167201.P13541257383745636946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167202 (A038722 (n + 1)).toNat + A025469 n

end

end A167201.P13541257383745636946

/-! ## A167201.P13617932172917796540

`A184955(n)+A167202(A038722(n+1))`
-/

namespace A167201.P13617932172917796540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A167202 (A038722 (n + 1)).toNat

end

end A167201.P13617932172917796540

/-! ## A167201.P1187027788345982971

`A185237(n)+A167202(A038722(n+1))`
-/

namespace A167201.P1187027788345982971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n + A167202 (A038722 (n + 1)).toNat

end

end A167201.P1187027788345982971

/-! ## A167201.P11636465382004738948

`A185284(n)+A167202(A038722(n+1))`
-/

namespace A167201.P11636465382004738948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A167202 (A038722 (n + 1)).toNat

end

end A167201.P11636465382004738948

/-!
# A167202: Fourth in a series of triangular subarrays of A117506. Previous arrays are Tables A007318, A059797 and A167201.

The programs for A167202, there is no canonical definition to state claims against.
-/

/-! ## A167202.P16869275027318620779

`A167201(∑[char[∑[n]]]²-n)`
-/

namespace A167202.P16869275027318620779
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167201 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A167202.P16869275027318620779

/-! ## A167202.P6896740066083863357

`A185237(n)+A167201(A038722(n+1))`
-/

namespace A167202.P6896740066083863357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n + A167201 (A038722 (n + 1)).toNat

end

end A167202.P6896740066083863357

/-! ## A167202.P1622205066574720359

`A185284(n)+A167201(A038722(n+1))`
-/

namespace A167202.P1622205066574720359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A167201 (A038722 (n + 1)).toNat

end

end A167202.P1622205066574720359

/-! ## A167202.P4914402504386484257

`A167201(A038722(n+1))-A326684(n)`
-/

namespace A167202.P4914402504386484257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167201 (A038722 (n + 1)).toNat - A326684 n

end

end A167202.P4914402504386484257

/-! ## A167202.P6766618255850488606

`lcm(A091090(n), A167201(A038722(n+1)))`
-/

namespace A167202.P6766618255850488606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091090 n) (A167201 (A038722 (n + 1)).toNat)

end

end A167202.P6766618255850488606

/-!
# A167203: Number of Young tableaux with n cells and k inversions.

The programs for A167203, there is no canonical definition to state claims against.
-/

/-! ## A167203.P5348630415288358519

`and(A008822(n), A016789(A005056(n)))`
-/

namespace A167203.P5348630415288358519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008822 n) (A016789 (A005056 n).toNat)

end

end A167203.P5348630415288358519

/-! ## A167203.P6548786509973593649

`and(A069817(A154147(n+1)), A173185(n))`
-/

namespace A167203.P6548786509973593649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069817 (A154147 (n + 1)).toNat) (A173185 n)

end

end A167203.P6548786509973593649

/-!
# A167204: Triangle read by rows in which row n lists the first 2^(n-1) terms of A003602.

The programs for A167204, there is no canonical definition to state claims against.
-/

/-! ## A167204.P4142542500199364067

`A003602(n+2-2^floor(log2(n+1)))`
-/

namespace A167204.P4142542500199364067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 2 - 2 ^ Nat.log 2 (n + 1))

end

end A167204.P4142542500199364067

/-! ## A167204.P6268536048918134784

`A025480(1-2^floor(log2(n+1))+n)+1`
-/

namespace A167204.P6268536048918134784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (1 - (2 ^ Nat.log 2 (n + 1) : ℤ) + (n : ℤ)).toNat + 1

end

end A167204.P6268536048918134784

/-! ## A167204.P1608074331512566492

`A110963(Δ[A256249(n)])`
-/

namespace A167204.P1608074331512566492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (f1 (n + 1) - f1 n).toNat

end

end A167204.P1608074331512566492

/-! ## A167204.P13879696157106441037

`A110963(A006257(n+1))`
-/

namespace A167204.P13879696157106441037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A006257 (n + 1)).toNat

end

end A167204.P13879696157106441037

/-! ## A167204.P7670533210959020110

`A110963(A139708(n+1))`
-/

namespace A167204.P7670533210959020110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A139708 (n + 1)).toNat

end

end A167204.P7670533210959020110

/-! ## A167204.P16313773896973034453

`A110963(A256251(n+1))`
-/

namespace A167204.P16313773896973034453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A256251 (n + 1)).toNat

end

end A167204.P16313773896973034453

/-! ## A167204.P880161269312888466

`A062050(A101279(n+2))`
-/

namespace A167204.P880161269312888466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A101279 (n + 2)).toNat

end

end A167204.P880161269312888466

/-! ## A167204.P6392430781027838022

`A366806(A053645(n+2))`
-/

namespace A167204.P6392430781027838022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366806 (A053645 (n + 2)).toNat

end

end A167204.P6392430781027838022

/-! ## A167204.P17687295219610939364

`A132226(2*A132223(n+1))/2`
-/

namespace A167204.P17687295219610939364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132226 (2 * A132223 (n + 1)).toNat : ℚ) / 2

end

end A167204.P17687295219610939364

/-!
# A167205: a(n) = (3^n+1)/(3-(-1)^n).

The programs for A167205, the canonical program `A167205.P7567646958544867269` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167205 has offset 0).

The definition of A167205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n+1)/(3-(-1)^n)` (program `A167205.P16868757805635350790`, by `A167205.P16868757805635350790.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167205.P7567646958544867269

`10*a(n-2)-9*a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167205

/-- `10*a(n-2)-9*a(n-4)` -/
def P7567646958544867269.Spec : Prop :=
  ∀ n, P7567646958544867269.a n = A167205 n

theorem P7567646958544867269.correct : P7567646958544867269.Spec := by
  intro n
  simp only [A167205]

end A167205

/-! ## A167205.P16868757805635350790

`(3^n+1)/(3-(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167205.P16868757805635350790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 1 : ℚ) / (3 - (-1) ^ n : ℚ)

end

end A167205.P16868757805635350790

namespace A167205

/-- `(3^n+1)/(3-(-1)^n)` -/
def P16868757805635350790.Spec : Prop :=
  ∀ n, P16868757805635350790.a n = (A167205 n : ℚ)

theorem P16868757805635350790.correct : P16868757805635350790.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A167205, Nat.add_sub_cancel, A167205.P16868757805635350790.a, A167205.P7567646958544867269.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A167205, Nat.add_sub_cancel, A167205.P16868757805635350790.a, A167205.P7567646958544867269.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167205

/-! ## A167205.P10755511580138617739

`floor(A103425(n)/A000034(n))`
-/

namespace A167205.P10755511580138617739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103425 n : ℚ) / (A000034 n : ℚ)⌋

end

end A167205.P10755511580138617739

namespace A167205

/-- `floor(A103425(n)/A000034(n))` -/
def P10755511580138617739.Spec : Prop :=
  ∀ n, P10755511580138617739.a n = A167205 n

end A167205

/-! ## A167205.P2198616011662977397

`ceil(A046717(n)/A000034(n))`
-/

namespace A167205.P2198616011662977397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046717 n : ℚ) / (A000034 n : ℚ)⌉

end

end A167205.P2198616011662977397

namespace A167205

/-- `ceil(A046717(n)/A000034(n))` -/
def P2198616011662977397.Spec : Prop :=
  ∀ n, P2198616011662977397.a n = A167205 n

end A167205

/-! ## A167205.P17157617045535411911

`gcd(A007051(n), A372852(n+1))`
-/

namespace A167205.P17157617045535411911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007051 n) (A372852 (n + 1))

end

end A167205.P17157617045535411911

namespace A167205

/-- `gcd(A007051(n), A372852(n+1))` -/
def P17157617045535411911.Spec : Prop :=
  ∀ n, (P17157617045535411911.a n : ℤ) = A167205 n

end A167205

/-! ## A167205.P14533793831056761642

`A372852(n+1)-A007051(n)*A110654(n)`
-/

namespace A167205.P14533793831056761642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372852 (n + 1) - A007051 n * A110654 n

end

end A167205.P14533793831056761642

namespace A167205

/-- `A372852(n+1)-A007051(n)*A110654(n)` -/
def P14533793831056761642.Spec : Prop :=
  ∀ n, P14533793831056761642.a n = A167205 n

end A167205

/-! ## A167205.P12852080474753411082

`A254101(∑[n+1])`
-/

namespace A167205.P12852080474753411082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167205.P12852080474753411082

namespace A167205

/-- `A254101(∑[n+1])` -/
def P12852080474753411082.Spec : Prop :=
  ∀ n, P12852080474753411082.a n = A167205 n

end A167205

/-!
# A167207: Numbers that are not divisible by a smaller number that is a square greater than 1.

The programs for A167207, the canonical program `A167207.P13711088262905704656` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167207 has offset 1).

The definition of A167207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167207.P5845359476296952464

`lt[A347441(n+1), 2]+1`
-/

namespace A167207.P5845359476296952464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347441 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A167207.P5845359476296952464

namespace A167207

/-- `lt[A347441(n+1), 2]+1` -/
def P5845359476296952464.Spec : Prop :=
  ∀ n, (P5845359476296952464.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P13711088262905704656

`∪[A005117(n+1), A033476(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167207

/-- `∪[A005117(n+1), A033476(n)]` -/
def P13711088262905704656.Spec : Prop :=
  ∀ n, (P13711088262905704656.a n : ℤ) = A167207 (n + 1)

theorem P13711088262905704656.correct : P13711088262905704656.Spec := by
  intro n
  simp only [A167207, Nat.add_sub_cancel]

end A167207

/-! ## A167207.P625546069069975380

`lt[A244963(n+1), 2]+1`
-/

namespace A167207.P625546069069975380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A167207.P625546069069975380

namespace A167207

/-- `lt[A244963(n+1), 2]+1` -/
def P625546069069975380.Spec : Prop :=
  ∀ n, (P625546069069975380.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P7774349568546833289

`lt[A293234(n+1), 2]+1`
-/

namespace A167207.P7774349568546833289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A167207.P7774349568546833289

namespace A167207

/-- `lt[A293234(n+1), 2]+1` -/
def P7774349568546833289.Spec : Prop :=
  ∀ n, (P7774349568546833289.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P12454239932076788738

`lt[A293235(n+1), 2]+1`
-/

namespace A167207.P12454239932076788738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A167207.P12454239932076788738

namespace A167207

/-- `lt[A293235(n+1), 2]+1` -/
def P12454239932076788738.Spec : Prop :=
  ∀ n, (P12454239932076788738.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P7848557568702162628

`filter[A303554(n+1), A212793(#)]`
-/

namespace A167207.P7848557568702162628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A167207.P7848557568702162628

namespace A167207

/-- `filter[A303554(n+1), A212793(#)]` -/
def P7848557568702162628.Spec : Prop :=
  ∀ n, P7848557568702162628.a n = A167207 (n + 1)

end A167207

/-! ## A167207.P15329870307964377356

`filter[A303554(n+1), A359471(#)]`
-/

namespace A167207.P15329870307964377356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A167207.P15329870307964377356

namespace A167207

/-- `filter[A303554(n+1), A359471(#)]` -/
def P15329870307964377356.Spec : Prop :=
  ∀ n, P15329870307964377356.a n = A167207 (n + 1)

end A167207

/-! ## A167207.P3126094415051421885

`filter[A072774(n+1), A359471(#)]`
-/

namespace A167207.P3126094415051421885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A167207.P3126094415051421885

namespace A167207

/-- `filter[A072774(n+1), A359471(#)]` -/
def P3126094415051421885.Spec : Prop :=
  ∀ n, P3126094415051421885.a n = A167207 (n + 1)

end A167207

/-! ## A167207.P18370433700589449680

`filter[A210490(n+1), A359471(#)]`
-/

namespace A167207.P18370433700589449680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A167207.P18370433700589449680

namespace A167207

/-- `filter[A210490(n+1), A359471(#)]` -/
def P18370433700589449680.Spec : Prop :=
  ∀ n, P18370433700589449680.a n = A167207 (n + 1)

end A167207

/-! ## A167207.P5686596286241213221

`filter[A304449(n+1), A359471(#)]`
-/

namespace A167207.P5686596286241213221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A167207.P5686596286241213221

namespace A167207

/-- `filter[A304449(n+1), A359471(#)]` -/
def P5686596286241213221.Spec : Prop :=
  ∀ n, P5686596286241213221.a n = A167207 (n + 1)

end A167207

/-! ## A167207.P3056319697405849748

`filter[A317101(n+1), A359471(#)]`
-/

namespace A167207.P3056319697405849748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A167207.P3056319697405849748

namespace A167207

/-- `filter[A317101(n+1), A359471(#)]` -/
def P3056319697405849748.Spec : Prop :=
  ∀ n, P3056319697405849748.a n = A167207 (n + 1)

end A167207

/-! ## A167207.P13304201246249363276

`filter[A393924(n+1), A359471(#)]`
-/

namespace A167207.P13304201246249363276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A167207.P13304201246249363276

namespace A167207

/-- `filter[A393924(n+1), A359471(#)]` -/
def P13304201246249363276.Spec : Prop :=
  ∀ n, P13304201246249363276.a n = A167207 (n + 1)

end A167207

/-! ## A167207.P18181008144313393909

`filter[A361634(n+1), A359471(#)]`
-/

namespace A167207.P18181008144313393909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A167207.P18181008144313393909

namespace A167207

/-- `filter[A361634(n+1), A359471(#)]` -/
def P18181008144313393909.Spec : Prop :=
  ∀ n, P18181008144313393909.a n = A167207 (n + 1)

end A167207

/-! ## A167207.P5741076646621031007

`∩[A048107(n+1), A072774(n+1)]`
-/

namespace A167207.P5741076646621031007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167207.P5741076646621031007

namespace A167207

/-- `∩[A048107(n+1), A072774(n+1)]` -/
def P5741076646621031007.Spec : Prop :=
  ∀ n, (P5741076646621031007.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P16270532959019347279

`∩[A048107(n+1), A210490(n+1)]`
-/

namespace A167207.P16270532959019347279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167207.P16270532959019347279

namespace A167207

/-- `∩[A048107(n+1), A210490(n+1)]` -/
def P16270532959019347279.Spec : Prop :=
  ∀ n, (P16270532959019347279.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P201927575441365816

`∩[A048107(n+1), A303554(n+1)]`
-/

namespace A167207.P201927575441365816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167207.P201927575441365816

namespace A167207

/-- `∩[A048107(n+1), A303554(n+1)]` -/
def P201927575441365816.Spec : Prop :=
  ∀ n, (P201927575441365816.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P16726983406298497200

`∩[A048107(n+1), A304449(n+1)]`
-/

namespace A167207.P16726983406298497200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167207.P16726983406298497200

namespace A167207

/-- `∩[A048107(n+1), A304449(n+1)]` -/
def P16726983406298497200.Spec : Prop :=
  ∀ n, (P16726983406298497200.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P3204606452272169012

`∩[A004709(n+1), A303554(n+1)]`
-/

namespace A167207.P3204606452272169012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167207.P3204606452272169012

namespace A167207

/-- `∩[A004709(n+1), A303554(n+1)]` -/
def P3204606452272169012.Spec : Prop :=
  ∀ n, (P3204606452272169012.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P2537631317844911339

`eq[1, A318749(n+1)]+1`
-/

namespace A167207.P2537631317844911339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167207.P2537631317844911339

namespace A167207

/-- `eq[1, A318749(n+1)]+1` -/
def P2537631317844911339.Spec : Prop :=
  ∀ n, (P2537631317844911339.a n : ℤ) = A167207 (n + 1)

end A167207

/-! ## A167207.P12823084714219225770

`lt[A048105(n+1), 2]+1`
-/

namespace A167207.P12823084714219225770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A167207.P12823084714219225770

namespace A167207

/-- `lt[A048105(n+1), 2]+1` -/
def P12823084714219225770.Spec : Prop :=
  ∀ n, (P12823084714219225770.a n : ℤ) = A167207 (n + 1)

end A167207

/-!
# A167208: Append two digits, each increasing by one modulo 10 from the last digit of the positive integers. 0 -> 12 1 -> 123 2 -> 234 .. 9 -> 901 10 -> 1012.

The programs for A167208, there is no canonical definition to state claims against.
-/

/-! ## A167208.P15837875386096003294

`floor(A167231(n)/10)`
-/

namespace A167208.P15837875386096003294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167231 n : ℚ) / 10⌋

end

end A167208.P15837875386096003294

/-! ## A167208.P2113174065996544287

`A059995(A167231(n))`
-/

namespace A167208.P2113174065996544287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A167231 n).toNat

end

end A167208.P2113174065996544287

/-!
# A167209: a(0) = 0; for n>=0, a(n+1) = a(n) + x where x is the smallest nonnegative number which is not equal to a(i) +/ - a(k) or a(i)/2 for any 0<=i<=n, 0<=k<=n.

The programs for A167209, there is no canonical definition to state claims against.
-/

/-! ## A167209.P17824490581297098087

`∑[∑[A169820(n+1)]-A169820(n+1)]`
-/

namespace A167209.P17824490581297098087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A169820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167209.P17824490581297098087

/-! ## A167209.P11017209399752507612

`A169799(n)+a(n-1)` with `a(0)=0`
-/

namespace A167209.P11017209399752507612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A169799 n + a (n - 1)

end

end A167209.P11017209399752507612

/-! ## A167209.P8246520873399716803

`∑[A169799(n^floor(atan(n)))]-1`
-/

namespace A167209.P8246520873399716803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167209.P8246520873399716803

/-! ## A167209.P5060137898060743579

`∑[A169799(round(sqrt(n²+1)))]-1`
-/

namespace A167209.P5060137898060743579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167209.P5060137898060743579

/-! ## A167209.P9344239525074540195

`abs(1-∑[A169799(A028310(n))])`
-/

namespace A167209.P9344239525074540195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A167209.P9344239525074540195

/-! ## A167209.P17201048073463795666

`∑[A057427(n)*A169799(A028310(n))]`
-/

namespace A167209.P17201048073463795666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A169799 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167209.P17201048073463795666

/-! ## A167209.P13856588852200512871

`∑[A169799(A028310(n))*A178334(n)]`
-/

namespace A167209.P13856588852200512871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167209.P13856588852200512871

/-! ## A167209.P17126781230501299851

`∑[A169799(A028310(n))%A000070(n)]`
-/

namespace A167209.P17126781230501299851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169799 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167209.P17126781230501299851

/-! ## A167209.P7485197649206284830

`∑[A169799(A028310(n))+A008683(2*(n+1)²)]`
-/

namespace A167209.P7485197649206284830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169799 (A028310 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167209.P7485197649206284830

/-!
# A167211: Numbers k such that number of perfect partitions of k-1 divides k.

The programs for A167211, there is no canonical definition to state claims against.
-/

/-! ## A167211.P14335480565501008412

`eq[gcd(n+1, A074206(n+1)), A074206(n+1)]+1`
-/

namespace A167211.P14335480565501008412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A074206 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167211.P14335480565501008412

/-! ## A167211.P7552168668203688621

`eq[0, (n+1)%A002033(n)]+1`
-/

namespace A167211.P7552168668203688621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A002033 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167211.P7552168668203688621

/-! ## A167211.P9169913683937086665

`eq[lcm(n, A074206(n)), A028310(n)]`
-/

namespace A167211.P9169913683937086665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A074206 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167211.P9169913683937086665

/-! ## A167211.P7212103096247336283

`lt[A302032(2*(n+1))%A002033(n), 1]+1`
-/

namespace A167211.P7212103096247336283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302032 (2 * (n + 1))) (A002033 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A167211.P7212103096247336283

/-! ## A167211.P3116429304001052636

`record[A127446(A002033(n)+A000217(n))]`
-/

namespace A167211.P3116429304001052636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (A002033 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167211.P3116429304001052636

/-!
# A167213: The number of ordered ways to achieve a score of n in darts.

The programs for A167213, there is no canonical definition to state claims against.
-/

/-! ## A167213.P9694135604193797084

`A081315(A127531(n+1))`
-/

namespace A167213.P9694135604193797084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081315 (A127531 (n + 1)).toNat

end

end A167213.P9694135604193797084

/-! ## A167213.P8341249238006531810

`A008651(∑[A288958(n+1)+10])`
-/

namespace A167213.P8341249238006531810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288958 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167213.P8341249238006531810

/-! ## A167213.P6368062193660078444

`A363149(lcm(A109606(n+1)+1, 4*n))`
-/

namespace A167213.P6368062193660078444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363149 (Int.lcm (A109606 (n + 1) + 1) (4 * n : ℤ))

end

end A167213.P6368062193660078444

/-! ## A167213.P8660683569673942315

`A363149(4*lt[A319510(floor(n/2)+1), 1])`
-/

namespace A167213.P8660683569673942315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319510 (⌊(n : ℚ) / 2⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363149 (4 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A167213.P8660683569673942315

/-!
# A167214: a(n) = (sum of first n primes) * n.

The programs for A167214, the canonical program `A167214.P9697442408688225616` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167214 has offset 1).

The definition of A167214 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167214.P9697442408688225616

`(n+1)*A007504(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A167214

/-- `(n+1)*A007504(n+1)` -/
def P9697442408688225616.Spec : Prop :=
  ∀ n, P9697442408688225616.a n = A167214 (n + 1)

theorem P9697442408688225616.correct : P9697442408688225616.Spec := by
  intro n
  simp only [A167214, Nat.add_sub_cancel]

end A167214

/-! ## A167214.P13135628038607451529

`∑[abs(Δ[n*A007504(n)])]`
-/

namespace A167214.P13135628038607451529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167214.P13135628038607451529

namespace A167214

/-- `∑[abs(Δ[n*A007504(n)])]` -/
def P13135628038607451529.Spec : Prop :=
  ∀ n, P13135628038607451529.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P2202805251730473065

`(n+1)*∑[A000040(n+1)]`
-/

namespace A167214.P2202805251730473065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167214.P2202805251730473065

namespace A167214

/-- `(n+1)*∑[A000040(n+1)]` -/
def P2202805251730473065.Spec : Prop :=
  ∀ n, P2202805251730473065.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P17514152040400888488

`(n+1)*∑[abs(Δ[A008348(n)])]`
-/

namespace A167214.P17514152040400888488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167214.P17514152040400888488

namespace A167214

/-- `(n+1)*∑[abs(Δ[A008348(n)])]` -/
def P17514152040400888488.Spec : Prop :=
  ∀ n, P17514152040400888488.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P12534876910522144000

`(n+1)*∑[abs(Δ[A022837(n)])]`
-/

namespace A167214.P12534876910522144000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167214.P12534876910522144000

namespace A167214

/-- `(n+1)*∑[abs(Δ[A022837(n)])]` -/
def P12534876910522144000.Spec : Prop :=
  ∀ n, P12534876910522144000.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P2651742382513554002

`(n+1)*(A237589(n+1)+1)`
-/

namespace A167214.P2651742382513554002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A237589 (n + 1) + 1)

end

end A167214.P2651742382513554002

namespace A167214

/-- `(n+1)*(A237589(n+1)+1)` -/
def P2651742382513554002.Spec : Prop :=
  ∀ n, P2651742382513554002.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P11353464280606012452

`(n+1)/2*A362419(n+1)`
-/

namespace A167214.P11353464280606012452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A362419 (n + 1) : ℚ)

end

end A167214.P11353464280606012452

namespace A167214

/-- `(n+1)/2*A362419(n+1)` -/
def P11353464280606012452.Spec : Prop :=
  ∀ n, P11353464280606012452.a n = (A167214 (n + 1) : ℚ)

end A167214

/-! ## A167214.P3283464180320239917

`(n+1)*∑[A006093(n+1)+1]`
-/

namespace A167214.P3283464180320239917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167214.P3283464180320239917

namespace A167214

/-- `(n+1)*∑[A006093(n+1)+1]` -/
def P3283464180320239917.Spec : Prop :=
  ∀ n, P3283464180320239917.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P16605516105297324141

`(n+1)*∑[A001748(n+1)/3]`
-/

namespace A167214.P16605516105297324141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167214.P16605516105297324141

namespace A167214

/-- `(n+1)*∑[A001748(n+1)/3]` -/
def P16605516105297324141.Spec : Prop :=
  ∀ n, P16605516105297324141.a n = (A167214 (n + 1) : ℚ)

end A167214

/-! ## A167214.P8121918369590645310

`(n+1)*(A101301(n+1)+n+1)`
-/

namespace A167214.P8121918369590645310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A101301 (n + 1) + (n + 1 : ℤ))

end

end A167214.P8121918369590645310

namespace A167214

/-- `(n+1)*(A101301(n+1)+n+1)` -/
def P8121918369590645310.Spec : Prop :=
  ∀ n, P8121918369590645310.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P9961522396170640998

`(n+1)*(A060939(n+1)-(n+1))`
-/

namespace A167214.P9961522396170640998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A060939 (n + 1) - (n + 1 : ℤ))

end

end A167214.P9961522396170640998

namespace A167214

/-- `(n+1)*(A060939(n+1)-(n+1))` -/
def P9961522396170640998.Spec : Prop :=
  ∀ n, P9961522396170640998.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P199894006757497374

`∑[A033286(n+1)+A007504(n)]`
-/

namespace A167214.P199894006757497374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167214.P199894006757497374

namespace A167214

/-- `∑[A033286(n+1)+A007504(n)]` -/
def P199894006757497374.Spec : Prop :=
  ∀ n, P199894006757497374.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P10481817269026590905

`A062020(n+1)+A023662(n+1)`
-/

namespace A167214.P10481817269026590905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062020 (n + 1) + A023662 (n + 1)

end

end A167214.P10481817269026590905

namespace A167214

/-- `A062020(n+1)+A023662(n+1)` -/
def P10481817269026590905.Spec : Prop :=
  ∀ n, P10481817269026590905.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P16736138409372642916

`A162867(n+1)-A007504(n+1)`
-/

namespace A167214.P16736138409372642916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162867 (n + 1) - A007504 (n + 1)

end

end A167214.P16736138409372642916

namespace A167214

/-- `A162867(n+1)-A007504(n+1)` -/
def P16736138409372642916.Spec : Prop :=
  ∀ n, P16736138409372642916.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P14060724477252419780

`A316322(n+1)-A062020(n+1)`
-/

namespace A167214.P14060724477252419780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316322 (n + 1) - A062020 (n + 1)

end

end A167214.P14060724477252419780

namespace A167214

/-- `A316322(n+1)-A062020(n+1)` -/
def P14060724477252419780.Spec : Prop :=
  ∀ n, P14060724477252419780.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P7481446384016213078

`∑[A033286(n+1)+∑[A182986(n+1)]]`
-/

namespace A167214.P7481446384016213078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167214.P7481446384016213078

namespace A167214

/-- `∑[A033286(n+1)+∑[A182986(n+1)]]` -/
def P7481446384016213078.Spec : Prop :=
  ∀ n, P7481446384016213078.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P17838687835318250492

`A014148(n+1)+A014285(n+1)-A007504(n+1)`
-/

namespace A167214.P17838687835318250492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1) + (A014285 (n + 1) - A007504 (n + 1))

end

end A167214.P17838687835318250492

namespace A167214

/-- `A014148(n+1)+A014285(n+1)-A007504(n+1)` -/
def P17838687835318250492.Spec : Prop :=
  ∀ n, P17838687835318250492.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P12495065312489341298

`A083725(n+1)-(n+1)`
-/

namespace A167214.P12495065312489341298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083725 (n + 1) - (n + 1 : ℤ)

end

end A167214.P12495065312489341298

namespace A167214

/-- `A083725(n+1)-(n+1)` -/
def P12495065312489341298.Spec : Prop :=
  ∀ n, P12495065312489341298.a n = A167214 (n + 1)

end A167214

/-! ## A167214.P475114185588141778

`(n+1)*∑[A008578(n+2)]`
-/

namespace A167214.P475114185588141778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167214.P475114185588141778

namespace A167214

/-- `(n+1)*∑[A008578(n+2)]` -/
def P475114185588141778.Spec : Prop :=
  ∀ n, P475114185588141778.a n = A167214 (n + 1)

end A167214

/-!
# A167215: Primes whose reversal + 1 is also prime.

The programs for A167215, there is no canonical definition to state claims against.
-/

/-! ## A167215.P1661726157890581870

`p?[n*A001222(A004086(n)+1)]`
-/

namespace A167215.P1661726157890581870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A004086 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167215.P1661726157890581870

/-! ## A167215.P2100251261628265357

`A004086(p?[A004087(n+1)+1]-1)`
-/

namespace A167215.P2100251261628265357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A167215.P2100251261628265357

/-! ## A167215.P9155725427835980333

`p?[n*A249061(A004086(n))]`
-/

namespace A167215.P9155725427835980333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A249061 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167215.P9155725427835980333

/-! ## A167215.P6329702475840140285

`p?[A000040(n+1)*A002033(A004087(n+1))]`
-/

namespace A167215.P6329702475840140285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002033 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167215.P6329702475840140285

/-! ## A167215.P9748585604870142797

`p?[A002033(A004087(n+1))*A008578(n+2)]`
-/

namespace A167215.P9748585604870142797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A004087 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167215.P9748585604870142797

/-!
# A167216: Primes whose reversal - 1 is also prime.

The programs for A167216, there is no canonical definition to state claims against.
-/

/-! ## A167216.P11755103200997323540

`record[A209190(A209190(n+2)+1)]`
-/

namespace A167216.P11755103200997323540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209190 (A209190 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167216.P11755103200997323540

/-! ## A167216.P16570092816907923033

`A004086(p?[A004087(n+1)-1]+1)`
-/

namespace A167216.P16570092816907923033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A167216.P16570092816907923033

/-!
# A167217: Primes whose reversal + 1 is a square.

The programs for A167217, there is no canonical definition to state claims against.
-/

/-! ## A167217.P1313260902237316406

`p?[A245361(n+1)]`
-/

namespace A167217.P1313260902237316406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167217.P1313260902237316406

/-! ## A167217.P13882063076249785884

`record[p?[A245361(A065648(n))]]`
-/

namespace A167217.P13882063076249785884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167217.P13882063076249785884

/-! ## A167217.P7739541182264046490

`record[p?[A245361(A328399(n))]]`
-/

namespace A167217.P7739541182264046490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167217.P7739541182264046490

/-! ## A167217.P13252735132855504217

`p?[A245361(A028310(n))-A000038(n)]`
-/

namespace A167217.P13252735132855504217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167217.P13252735132855504217

/-! ## A167217.P3214134148557463508

`p?[A057427(n)*A245361(A028310(n))]`
-/

namespace A167217.P3214134148557463508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A245361 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167217.P3214134148557463508

/-!
# A167218: Primes whose reversal - 1 is a square.

The programs for A167218, there is no canonical definition to state claims against.
-/

/-! ## A167218.P15742087443313703931

`eq[A053186(A004086(n)), A236937(n)]`
-/

namespace A167218.P15742087443313703931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236937 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167218.P15742087443313703931

/-! ## A167218.P4324374142259178186

`p?[∑[A292032(A253773(n+1))]]`
-/

namespace A167218.P4324374142259178186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 (A253773 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167218.P4324374142259178186

/-!
# A167220: Triangular numbers that remain triangular numbers when their reverse is added.

The programs for A167220, there is no canonical definition to state claims against.
-/

/-! ## A167220.P11036345210015733551

`C(A071817(A042045(n)), 2)`
-/

namespace A167220.P11036345210015733551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071817 (A042045 n).toNat).toNat 2

end

end A167220.P11036345210015733551

/-!
# A167223: Number of primes of the form n^3 - k^2, 0<=k<=A077121(n).

The programs for A167223, there is no canonical definition to state claims against.
-/

/-! ## A167223.P18401969881049311796

`A317682(A000578(n))-A317683(A000578(n))`
-/

namespace A167223.P18401969881049311796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 (A000578 n).toNat - A317683 (A000578 n).toNat

end

end A167223.P18401969881049311796

/-! ## A167223.P15943128817775566475

`A002471(round(sqrt(n²+1))^3)`
-/

namespace A167223.P15943128817775566475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) ^ 3).toNat

end

end A167223.P15943128817775566475

/-! ## A167223.P5155828564972737891

`A283183((n^3)^floor(atan(n)))/2`
-/

namespace A167223.P5155828564972737891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283183 (SequenceMachineLib.roundAway ((n ^ 3 : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat : ℚ) / 2

end

end A167223.P5155828564972737891

/-! ## A167223.P9833409138238555599

`A283183(or(n^3, floor(acot(n))))/2`
-/

namespace A167223.P9833409138238555599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283183 (Int.lor (n ^ 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat : ℚ) / 2

end

end A167223.P9833409138238555599

/-! ## A167223.P16212215955529490831

`A283183(A028310(n^3))/2`
-/

namespace A167223.P16212215955529490831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283183 (A028310 (n ^ 3)).toNat : ℚ) / 2

end

end A167223.P16212215955529490831

/-!
# A167224: Table of primes of the form n^3 - k^2, 0<=k<=A077121(n).

The programs for A167224, the canonical program `A167224.P10095736644776613725` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167224 has offset 1).

The definition of A167224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167224.P4862768410699122712

`p?[A167222(n)]`
-/

namespace A167224.P4862768410699122712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167224.P4862768410699122712

namespace A167224

/-- `p?[A167222(n)]` -/
def P4862768410699122712.Spec : Prop :=
  ∀ n, P4862768410699122712.a n = A167224 (n + 1)

end A167224

/-! ## A167224.P10095736644776613725

`p?[floor(n^(1/3))^3-(n-floor(n^(1/3))^3)²]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167224

/-- `p?[floor(n^(1/3))^3-(n-floor(n^(1/3))^3)²]` -/
def P10095736644776613725.Spec : Prop :=
  ∀ n, P10095736644776613725.a n = A167224 (n + 1)

theorem P10095736644776613725.correct : P10095736644776613725.Spec := by
  intro n
  simp only [A167224, Nat.add_sub_cancel]

end A167224

/-!
# A167227: Number of 2-self-hedrites with n vertices.

The programs for A167227, there is no canonical definition to state claims against.
-/

/-! ## A167227.P12719282092272634182

`∑{d}[A000265(n+1), A008621((n+1)/#)]`
-/

namespace A167227.P12719282092272634182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A167227.P12719282092272634182

/-! ## A167227.P8649871280603733274

`∑{d}[A153733(n)+1, A008621((n+1)/#)]`
-/

namespace A167227.P8649871280603733274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A167227.P8649871280603733274

/-! ## A167227.P7727044993474708117

`∑{d}[A227140(n+1), A008621((n+1)/#)]`
-/

namespace A167227.P7727044993474708117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A167227.P7727044993474708117

/-! ## A167227.P7581977050158068190

`A145393(n+1)-A167156(abs(1-n)+2)`
-/

namespace A167227.P7581977050158068190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145393 (n + 1) - A167156 (|1 - (n : ℤ)| + 2).toNat

end

end A167227.P7581977050158068190

/-! ## A167227.P7656165019550316445

`∑{d}[n+1, A145393(#)*A154955((n+1)/#)]`
-/

namespace A167227.P7656165019550316445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145393 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A167227.P7656165019550316445

/-!
# A167230: The matrix exponential of Sierpiński's triangle (A047999) scaled by exp(-1).

The programs for A167230, the canonical program `A167230.P8002516608932621908` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167230 has offset 0).

The definition of A167230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167230.P13433807997740620931

`round(A166453(n)/ϕ)`
-/

namespace A167230.P13433807997740620931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166453 n : ℝ) / Real.goldenRatio)

end

end A167230.P13433807997740620931

namespace A167230

/-- `round(A166453(n)/ϕ)` -/
def P13433807997740620931.Spec : Prop :=
  ∀ n, P13433807997740620931.a n = A167230 n

end A167230

/-! ## A167230.P8002516608932621908

`5%(A093658(n+1)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167230

/-- `5%(A093658(n+1)+1)` -/
def P8002516608932621908.Spec : Prop :=
  ∀ n, P8002516608932621908.a n = A167230 n

theorem P8002516608932621908.correct : P8002516608932621908.Spec := by
  intro n
  simp only [A167230]

end A167230

/-! ## A167230.P15357779671101227277

`A000001(A166453(n))`
-/

namespace A167230.P15357779671101227277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A166453 n).toNat

end

end A167230.P15357779671101227277

namespace A167230

/-- `A000001(A166453(n))` -/
def P15357779671101227277.Spec : Prop :=
  ∀ n, P15357779671101227277.a n = A167230 n

end A167230

/-! ## A167230.P10520343789087509932

`A194177(A166453(n)+1)`
-/

namespace A167230.P10520343789087509932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194177 (A166453 n + 1).toNat

end

end A167230.P10520343789087509932

namespace A167230

/-- `A194177(A166453(n)+1)` -/
def P10520343789087509932.Spec : Prop :=
  ∀ n, P10520343789087509932.a n = A167230 n

end A167230

/-! ## A167230.P7590340675810216087

`A129606(or(C(2, n+2), A093658(n+1)))`
-/

namespace A167230.P7590340675810216087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129606 (Int.lor (Nat.choose 2 (n + 2) : ℤ) (A093658 (n + 1))).toNat

end

end A167230.P7590340675810216087

namespace A167230

/-- `A129606(or(C(2, n+2), A093658(n+1)))` -/
def P7590340675810216087.Spec : Prop :=
  ∀ n, P7590340675810216087.a n = A167230 n

end A167230

/-! ## A167230.P1427555562598220757

`round(A093658(n+1)^ratio[A004736(n+1)])`
-/

namespace A167230.P1427555562598220757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093658 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A167230.P1427555562598220757

namespace A167230

/-- `round(A093658(n+1)^ratio[A004736(n+1)])` -/
def P1427555562598220757.Spec : Prop :=
  ∀ n, P1427555562598220757.a n = A167230 n

end A167230

/-! ## A167230.P1784911165566706152

`ceil(A093658(n+1)^A056926(n)/atan(3))`
-/

namespace A167230.P1784911165566706152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A093658 (n + 1) : ℚ) ^ (A056926 n : ℤ) : ℝ) / Real.arctan (3 : ℝ)⌉

end

end A167230.P1784911165566706152

namespace A167230

/-- `ceil(A093658(n+1)^A056926(n)/atan(3))` -/
def P1784911165566706152.Spec : Prop :=
  ∀ n, P1784911165566706152.a n = A167230 n

end A167230

/-! ## A167230.P15310370258416956597

`ceil(A093658(n+1)^acot(A093662(n+1)))`
-/

namespace A167230.P15310370258416956597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093658 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (A093662 (n + 1) : ℝ))⌉

end

end A167230.P15310370258416956597

namespace A167230

/-- `ceil(A093658(n+1)^acot(A093662(n+1)))` -/
def P15310370258416956597.Spec : Prop :=
  ∀ n, P15310370258416956597.a n = A167230 n

end A167230

/-! ## A167230.P4080036765011967678

`A047999(n)*A050315(A025581(n))`
-/

namespace A167230.P4080036765011967678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A050315 (A025581 n).toNat

end

end A167230.P4080036765011967678

namespace A167230

/-- `A047999(n)*A050315(A025581(n))` -/
def P4080036765011967678.Spec : Prop :=
  ∀ n, P4080036765011967678.a n = A167230 n

end A167230

/-! ## A167230.P15102545961796902234

`A053207(A093658(n+1)^A056926(n))`
-/

namespace A167230.P15102545961796902234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053207 (SequenceMachineLib.roundAway ((A093658 (n + 1) : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A167230.P15102545961796902234

namespace A167230

/-- `A053207(A093658(n+1)^A056926(n))` -/
def P15102545961796902234.Spec : Prop :=
  ∀ n, P15102545961796902234.a n = A167230 n

end A167230

/-! ## A167230.P5521320725035841804

`A072796(A093658(n+1)^A056926(n))`
-/

namespace A167230.P5521320725035841804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (SequenceMachineLib.roundAway ((A093658 (n + 1) : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A167230.P5521320725035841804

namespace A167230

/-- `A072796(A093658(n+1)^A056926(n))` -/
def P5521320725035841804.Spec : Prop :=
  ∀ n, P5521320725035841804.a n = A167230 n

end A167230

/-! ## A167230.P9453796167927981940

`A073137(A093658(n+1)^A056926(n))`
-/

namespace A167230.P9453796167927981940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (SequenceMachineLib.roundAway ((A093658 (n + 1) : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A167230.P9453796167927981940

namespace A167230

/-- `A073137(A093658(n+1)^A056926(n))` -/
def P9453796167927981940.Spec : Prop :=
  ∀ n, P9453796167927981940.a n = A167230 n

end A167230

/-! ## A167230.P5015294577213020129

`A154124(A093658(n+1)^A056926(n))`
-/

namespace A167230.P5015294577213020129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154124 (SequenceMachineLib.roundAway ((A093658 (n + 1) : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A167230.P5015294577213020129

namespace A167230

/-- `A154124(A093658(n+1)^A056926(n))` -/
def P5015294577213020129.Spec : Prop :=
  ∀ n, P5015294577213020129.a n = A167230 n

end A167230

/-! ## A167230.P7855150236619657595

`A053207(A093658(n+1)^A178334(n))`
-/

namespace A167230.P7855150236619657595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053207 (SequenceMachineLib.roundAway ((A093658 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A167230.P7855150236619657595

namespace A167230

/-- `A053207(A093658(n+1)^A178334(n))` -/
def P7855150236619657595.Spec : Prop :=
  ∀ n, P7855150236619657595.a n = A167230 n

end A167230

/-! ## A167230.P6616142116620134949

`A057164(A093658(n+1)^A178334(n))`
-/

namespace A167230.P6616142116620134949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (SequenceMachineLib.roundAway ((A093658 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A167230.P6616142116620134949

namespace A167230

/-- `A057164(A093658(n+1)^A178334(n))` -/
def P6616142116620134949.Spec : Prop :=
  ∀ n, P6616142116620134949.a n = A167230 n

end A167230

/-! ## A167230.P9112572992676412521

`A073137(A093658(n+1)^A178334(n))`
-/

namespace A167230.P9112572992676412521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (SequenceMachineLib.roundAway ((A093658 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A167230.P9112572992676412521

namespace A167230

/-- `A073137(A093658(n+1)^A178334(n))` -/
def P9112572992676412521.Spec : Prop :=
  ∀ n, P9112572992676412521.a n = A167230 n

end A167230

/-! ## A167230.P8781201829586718902

`A007318(n)%2*A050315(A025581(n))`
-/

namespace A167230.P8781201829586718902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2 * A050315 (A025581 n).toNat

end

end A167230.P8781201829586718902

namespace A167230

/-- `A007318(n)%2*A050315(A025581(n))` -/
def P8781201829586718902.Spec : Prop :=
  ∀ n, P8781201829586718902.a n = A167230 n

end A167230

/-! ## A167230.P9362603658070238819

`∑{d}[A093658(n+1)^A056926(n), A034887(#)]`
-/

namespace A167230.P9362603658070238819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093658 (n + 1) : ℚ) ^ (A056926 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A034887 d

end

end A167230.P9362603658070238819

namespace A167230

/-- `∑{d}[A093658(n+1)^A056926(n), A034887(#)]` -/
def P9362603658070238819.Spec : Prop :=
  ∀ n, P9362603658070238819.a n = A167230 n

end A167230

/-! ## A167230.P9626576543039356285

`A072796(A093658(n+1)*A234959(2*n+5))`
-/

namespace A167230.P9626576543039356285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A093658 (n + 1) * A234959 (2 * n + 5)).toNat

end

end A167230.P9626576543039356285

namespace A167230

/-- `A072796(A093658(n+1)*A234959(2*n+5))` -/
def P9626576543039356285.Spec : Prop :=
  ∀ n, P9626576543039356285.a n = A167230 n

end A167230

/-!
# A167232: a(n) is the number obtained by writing out numbers from 1 to n and placing an alternate + and - minus sign between successive digits and evaluating the expression written.

The programs for A167232, there is no canonical definition to state claims against.
-/

/-! ## A167232.P10578575255092622077

`∑[(-1)^n*A033307(n)]`
-/

namespace A167232.P10578575255092622077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167232.P10578575255092622077

/-! ## A167232.P8846241145122018828

`∑[(-1)^n*Δ[A054632(n)]]`
-/

namespace A167232.P8846241145122018828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167232.P8846241145122018828

/-! ## A167232.P12969880104412013538

`∑[(-1)^n*A007376(n+1)]`
-/

namespace A167232.P12969880104412013538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167232.P12969880104412013538

/-! ## A167232.P9906604820809251218

`∑[(-1)^n*A261333(n)%10]`
-/

namespace A167232.P9906604820809251218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * Int.tmod (A261333 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167232.P9906604820809251218

/-! ## A167232.P1570636620100938684

`∑[A033307(n)*A033999(n)]`
-/

namespace A167232.P1570636620100938684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167232.P1570636620100938684

/-! ## A167232.P3349705353042685225

`∑[A007376(n+1)*A033999(n)]`
-/

namespace A167232.P3349705353042685225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167232.P3349705353042685225

/-! ## A167232.P4035207381128688542

`∑[(-1)^n*A108202(2*(n+1))]`
-/

namespace A167232.P4035207381128688542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A108202 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167232.P4035207381128688542

/-!
# A167234: Smallest number such that no two divisors of n are congruent modulo a(n).

The programs for A167234, there is no canonical definition to state claims against.
-/

/-! ## A167234.P4807773492006014790

`A293390(A034729(n+1))`
-/

namespace A167234.P4807773492006014790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (A034729 (n + 1)).toNat

end

end A167234.P4807773492006014790

/-! ## A167234.P10938036882734028318

`A293390(A055895(n+1)/2)`
-/

namespace A167234.P10938036882734028318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (SequenceMachineLib.roundAway ((A055895 (n + 1) : ℚ) / 2)).toNat

end

end A167234.P10938036882734028318

/-! ## A167234.P13720083665236512616

`A293390(A055895(n+1))`
-/

namespace A167234.P13720083665236512616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (A055895 (n + 1)).toNat

end

end A167234.P13720083665236512616

/-! ## A167234.P9248749849099751894

`A293390(A074854(n+1))`
-/

namespace A167234.P9248749849099751894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (A074854 (n + 1)).toNat

end

end A167234.P9248749849099751894

/-!
# A167236: Larger prime power associated with gaps in A121492.

The programs for A167236, there is no canonical definition to state claims against.
-/

/-! ## A167236.P3110731937734160404

`A121492(n+1)+A002540(n+1)`
-/

namespace A167236.P3110731937734160404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121492 (n + 1) + A002540 (n + 1)

end

end A167236.P3110731937734160404

/-! ## A167236.P2556763637648032575

`A002540(n+1)+record[A090811(n+1)]`
-/

namespace A167236.P2556763637648032575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002540 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167236.P2556763637648032575

/-! ## A167236.P5724187138109430056

`A002540(n+1)+record[A057820(n+1)]`
-/

namespace A167236.P5724187138109430056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002540 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167236.P5724187138109430056

/-! ## A167236.P3018130941354625811

`A002540(n+1)+record[Δ[A000961(n+1)]]`
-/

namespace A167236.P3018130941354625811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002540 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167236.P3018130941354625811

/-! ## A167236.P17994134129742847344

`A000015(A002540(n+1)+1)`
-/

namespace A167236.P17994134129742847344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A002540 (n + 1) + 1).toNat

end

end A167236.P17994134129742847344

/-!
# A167237: Lower trim of the Wythoff fractal sequence, A003603.

The programs for A167237, there is no canonical definition to state claims against.
-/

/-! ## A167237.P11125530243041294305

`A019586(comp[round(ϕ*a(n-1))])` with `a(0)=0, a(1)=1`
-/

namespace A167237.P11125530243041294305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A167237.P11125530243041294305

/-! ## A167237.P11235327501930084403

`A019586(comp[a(n-1)+a(n-2)])` with `a(0)=0, a(1)=1`
-/

namespace A167237.P11235327501930084403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A167237.P11235327501930084403

/-! ## A167237.P2426073934384390079

`A019586(comp[A000045(n)])`
-/

namespace A167237.P2426073934384390079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A167237.P2426073934384390079

/-! ## A167237.P14624839187307687965

`A019586(comp[A035516(n)])`
-/

namespace A167237.P14624839187307687965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A167237.P14624839187307687965

/-! ## A167237.P17389500337567591264

`A019586(comp[A035517(n)])`
-/

namespace A167237.P17389500337567591264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A167237.P17389500337567591264

/-! ## A167237.P15216240949871282222

`A019586(comp[A053602(n)])`
-/

namespace A167237.P15216240949871282222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A167237.P15216240949871282222

/-! ## A167237.P7323487145612164520

`A019586(comp[A103609(n)])`
-/

namespace A167237.P7323487145612164520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A167237.P7323487145612164520

/-! ## A167237.P588022446825726585

`A019586(A001690(n+1))`
-/

namespace A167237.P588022446825726585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A001690 (n + 1)).toNat

end

end A167237.P588022446825726585

/-!
# A167238: Number of ways to partition a 2*n X 2 grid into 4 connected equal-area regions.

The programs for A167238, the canonical program `A167238.P5858393952890836916` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167238 has offset 1).

The definition of A167238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167238.P5858393952890836916

`∑[record[xor(1, n²)]-n]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167238

/-- `∑[record[xor(1, n²)]-n]` -/
def P5858393952890836916.Spec : Prop :=
  ∀ n, P5858393952890836916.a n = A167238 (n + 1)

theorem P5858393952890836916.correct : P5858393952890836916.Spec := by
  intro n
  simp only [A167238, Nat.add_sub_cancel]

end A167238

/-! ## A167238.P14845312419174860049

`or(1, ∑[cot(abs(Δ[acot(n)]))])`
-/

namespace A167238.P14845312419174860049
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A167238.P14845312419174860049

namespace A167238

/-- `or(1, ∑[cot(abs(Δ[acot(n)]))])` -/
def P14845312419174860049.Spec : Prop :=
  ∀ n, P14845312419174860049.a n = A167238 (n + 1)

end A167238

/-! ## A167238.P16150918235247289446

`or(1, ∑[∑[2*n]+1])`
-/

namespace A167238.P16150918235247289446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167238.P16150918235247289446

namespace A167238

/-- `or(1, ∑[∑[2*n]+1])` -/
def P16150918235247289446.Spec : Prop :=
  ∀ n, (P16150918235247289446.a n : ℤ) = A167238 (n + 1)

end A167238

/-! ## A167238.P9284086051844594311

`n%2-∑[cot(Δ[acot(n)])]`
-/

namespace A167238.P9284086051844594311
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f2 (n + 1) - f2 n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167238.P9284086051844594311

namespace A167238

/-- `n%2-∑[cot(Δ[acot(n)])]` -/
def P9284086051844594311.Spec : Prop :=
  ∀ n, P9284086051844594311.a n = (A167238 (n + 1) : ℝ)

end A167238

/-! ## A167238.P580243285591215161

`abs(or(1, ∑[(n+1)²-n]))`
-/

namespace A167238.P580243285591215161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A167238.P580243285591215161

namespace A167238

/-- `abs(or(1, ∑[(n+1)²-n]))` -/
def P580243285591215161.Spec : Prop :=
  ∀ n, P580243285591215161.a n = A167238 (n + 1)

end A167238

/-! ## A167238.P7557835842532581976

`∑[∑[2*n]+1]+and(1, n)`
-/

namespace A167238.P7557835842532581976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n

end

end A167238.P7557835842532581976

namespace A167238

/-- `∑[∑[2*n]+1]+and(1, n)` -/
def P7557835842532581976.Spec : Prop :=
  ∀ n, (P7557835842532581976.a n : ℤ) = A167238 (n + 1)

end A167238

/-! ## A167238.P16733294489010232296

`∑[∑[a(n-2)+4]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=8`
-/

namespace A167238.P16733294489010232296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 8] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167238.P16733294489010232296

namespace A167238

/-- `∑[∑[a(n-2)+4]]` -/
def P16733294489010232296.Spec : Prop :=
  ∀ n, (P16733294489010232296.a n : ℤ) = A167238 (n + 1)

end A167238

/-! ## A167238.P1592115504649375544

`∑[lcm(n, n+1)]+or(1, n+1)`
-/

namespace A167238.P1592115504649375544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 (n + 1)

end

end A167238.P1592115504649375544

namespace A167238

/-- `∑[lcm(n, n+1)]+or(1, n+1)` -/
def P1592115504649375544.Spec : Prop :=
  ∀ n, (P1592115504649375544.a n : ℤ) = A167238 (n + 1)

end A167238

/-! ## A167238.P15464600505470919991

`a(n-2)+2*(n²+1)` with `a(0)=1, a(1)=5`
-/

namespace A167238.P15464600505470919991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 2 * (n ^ 2 + 1)

end

end A167238.P15464600505470919991

namespace A167238

/-- `a(n-2)+2*(n²+1)` -/
def P15464600505470919991.Spec : Prop :=
  ∀ n, (P15464600505470919991.a n : ℤ) = A167238 (n + 1)

end A167238

/-! ## A167238.P4122929638136411632

`gcd(2, n+1)+∑[∑[2*n]]+n`
-/

namespace A167238.P4122929638136411632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A167238.P4122929638136411632

namespace A167238

/-- `gcd(2, n+1)+∑[∑[2*n]]+n` -/
def P4122929638136411632.Spec : Prop :=
  ∀ n, (P4122929638136411632.a n : ℤ) = A167238 (n + 1)

end A167238

/-! ## A167238.P7026869209304172324

`∑[(n+1)²-((-1)^n+n)]+1`
-/

namespace A167238.P7026869209304172324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((-1) ^ n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167238.P7026869209304172324

namespace A167238

/-- `∑[(n+1)²-((-1)^n+n)]+1` -/
def P7026869209304172324.Spec : Prop :=
  ∀ n, P7026869209304172324.a n = A167238 (n + 1)

end A167238

/-! ## A167238.P1938003889290930217

`∑[A065190(n+1)+n²]`
-/

namespace A167238.P1938003889290930217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167238.P1938003889290930217

namespace A167238

/-- `∑[A065190(n+1)+n²]` -/
def P1938003889290930217.Spec : Prop :=
  ∀ n, P1938003889290930217.a n = A167238 (n + 1)

end A167238

/-! ## A167238.P12270420632453168718

`xor(A000035(n), A167875(n))`
-/

namespace A167238.P12270420632453168718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A167875 n)

end

end A167238.P12270420632453168718

namespace A167238

/-- `xor(A000035(n), A167875(n))` -/
def P12270420632453168718.Spec : Prop :=
  ∀ n, P12270420632453168718.a n = A167238 (n + 1)

end A167238

/-! ## A167238.P16725682905646381244

`∪[A057813(n), A171272(n)]`
-/

namespace A167238.P16725682905646381244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167238.P16725682905646381244

namespace A167238

/-- `∪[A057813(n), A171272(n)]` -/
def P16725682905646381244.Spec : Prop :=
  ∀ n, (P16725682905646381244.a n : ℤ) = A167238 (n + 1)

end A167238

/-! ## A167238.P7745395564470524666

`A166911(n)%A245996(n+1)`
-/

namespace A167238.P7745395564470524666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166911 n) (A245996 (n + 1))

end

end A167238.P7745395564470524666

namespace A167238

/-- `A166911(n)%A245996(n+1)` -/
def P7745395564470524666.Spec : Prop :=
  ∀ n, P7745395564470524666.a n = A167238 (n + 1)

end A167238

/-! ## A167238.P3375640047867865729

`A152133(n+1)%A322595(n)`
-/

namespace A167238.P3375640047867865729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152133 (n + 1)) (A322595 n)

end

end A167238.P3375640047867865729

namespace A167238

/-- `A152133(n+1)%A322595(n)` -/
def P3375640047867865729.Spec : Prop :=
  ∀ n, P3375640047867865729.a n = A167238 (n + 1)

end A167238

/-! ## A167238.P7067816085902244588

`∑[A014681(n²)+n+1]`
-/

namespace A167238.P7067816085902244588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n ^ 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167238.P7067816085902244588

namespace A167238

/-- `∑[A014681(n²)+n+1]` -/
def P7067816085902244588.Spec : Prop :=
  ∀ n, P7067816085902244588.a n = A167238 (n + 1)

end A167238

/-!
# A167239: Number of ways to partition a 5*n X 2 grid into 5 connected equal-area regions.

The programs for A167239, the canonical program `A167239.P5011976945127805005` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167239 has offset 1).

The definition of A167239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167239.P4526803885680159304

`∑[∑[80*n²/2+8]]`
-/

namespace A167239.P4526803885680159304
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  80 * ((n ^ 2 : ℚ) / 2) + 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167239.P4526803885680159304

namespace A167239

/-- `∑[∑[80*n²/2+8]]` -/
def P4526803885680159304.Spec : Prop :=
  ∀ n, P4526803885680159304.a n = (A167239 (n + 1) : ℚ)

end A167239

/-! ## A167239.P5011976945127805005

`4*∑[A005902(n)+1]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A167239

/-- `4*∑[A005902(n)+1]` -/
def P5011976945127805005.Spec : Prop :=
  ∀ n, P5011976945127805005.a n = A167239 (n + 1)

theorem P5011976945127805005.correct : P5011976945127805005.Spec := by
  intro n
  simp only [A167239, Nat.add_sub_cancel]

end A167239

/-! ## A167239.P15045773121279419624

`4*∑[∑[A158187(n)+1]]`
-/

namespace A167239.P15045773121279419624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167239.P15045773121279419624

namespace A167239

/-- `4*∑[∑[A158187(n)+1]]` -/
def P15045773121279419624.Spec : Prop :=
  ∀ n, P15045773121279419624.a n = A167239 (n + 1)

end A167239

/-! ## A167239.P10982831111421950592

`Δ[∑[4*n]*A056520(n)]`
-/

namespace A167239.P10982831111421950592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A056520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167239.P10982831111421950592

namespace A167239

/-- `Δ[∑[4*n]*A056520(n)]` -/
def P10982831111421950592.Spec : Prop :=
  ∀ n, P10982831111421950592.a n = A167239 (n + 1)

end A167239

/-! ## A167239.P11737441206635773083

`A022144(∑[∑[A212656(n)]])`
-/

namespace A167239.P11737441206635773083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167239.P11737441206635773083

namespace A167239

/-- `A022144(∑[∑[A212656(n)]])` -/
def P11737441206635773083.Spec : Prop :=
  ∀ n, P11737441206635773083.a n = A167239 (n + 1)

end A167239

/-!
# A167240: Number of ways to partition a 3*n X 2 grid into 6 connected equal-area regions.

The programs for A167240, there is no canonical definition to state claims against.
-/

/-! ## A167240.P8762749019344002803

`A063954(or(n%4, A229171(n+1)))`
-/

namespace A167240.P8762749019344002803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063954 (Int.lor ((n % 4 : ℕ) : ℤ) (A229171 (n + 1))).toNat

end

end A167240.P8762749019344002803

/-!
# A167242: Number of ways to partition a 2*n X 3 grid into 2 connected equal-area regions.

The programs for A167242, there is no canonical definition to state claims against.
-/

/-! ## A167242.P605497459083632148

`record[A167279(∑[n]+3)]`
-/

namespace A167242.P605497459083632148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167242.P605497459083632148

/-! ## A167242.P8294665856386905891

`A167279(A398058(n+1))`
-/

namespace A167242.P8294665856386905891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (A398058 (n + 1)).toNat

end

end A167242.P8294665856386905891

/-!
# A167243: Number of ways to partition an n X 3 grid into 3 connected equal-area regions.

The programs for A167243, there is no canonical definition to state claims against.
-/

/-! ## A167243.P17923625211819526810

`A167259(∑[n+2]+4)`
-/

namespace A167243.P17923625211819526810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167259 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A167243.P17923625211819526810

/-! ## A167243.P16829214523635805831

`and(-1, A167259(A167614(n+1)))`
-/

namespace A167243.P16829214523635805831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A167259 (A167614 (n + 1)).toNat)

end

end A167243.P16829214523635805831

/-! ## A167243.P2210904289183304905

`record[gcd(A167259(n+1), A167259(n+4))]`
-/

namespace A167243.P2210904289183304905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167259 (n + 1)) (A167259 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167243.P2210904289183304905

/-! ## A167243.P2792155817613020256

`A167259(A167614(n+1))+A064458(n)`
-/

namespace A167243.P2792155817613020256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167259 (A167614 (n + 1)).toNat + A064458 n

end

end A167243.P2792155817613020256

/-! ## A167243.P11338332689773002145

`A167259(A167614(n+1))+A069965(n)`
-/

namespace A167243.P11338332689773002145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167259 (A167614 (n + 1)).toNat + A069965 n

end

end A167243.P11338332689773002145

/-!
# A167245: Number of ways to partition a 2*n X 3 grid into 6 connected equal-area regions.

The programs for A167245, there is no canonical definition to state claims against.
-/

/-! ## A167245.P12858439130022606592

`A167262(A100037(n+2))`
-/

namespace A167245.P12858439130022606592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167262 (A100037 (n + 2)).toNat

end

end A167245.P12858439130022606592

/-! ## A167245.P14153576314192286914

`record[A167262(A167614(n+2))]`
-/

namespace A167245.P14153576314192286914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167262 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167245.P14153576314192286914

/-!
# A167247: Number of ways to partition an n X 4 grid into 2 connected equal-area regions.

The programs for A167247, there is no canonical definition to state claims against.
-/

/-! ## A167247.P9261859077853808069

`A167279(A141214(n)+7)`
-/

namespace A167247.P9261859077853808069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (A141214 n + 7).toNat

end

end A167247.P9261859077853808069

/-! ## A167247.P11117182743244674834

`A167279(A052905(n)+9)`
-/

namespace A167247.P11117182743244674834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (A052905 n + 9).toNat

end

end A167247.P11117182743244674834

/-! ## A167247.P8044348785119412187

`A167279(A055999(n)+10)`
-/

namespace A167247.P8044348785119412187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (A055999 n + 10).toNat

end

end A167247.P8044348785119412187

/-! ## A167247.P17291254080921342989

`A167279(eq[5, A066657(n)])`
-/

namespace A167247.P17291254080921342989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167247.P17291254080921342989

/-! ## A167247.P8764108092545795277

`A167279(A167614(n+2)+1)`
-/

namespace A167247.P8764108092545795277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (A167614 (n + 2) + 1).toNat

end

end A167247.P8764108092545795277

/-!
# A167248: Number of ways to partition an n X 4 grid into 4 connected equal-area regions.

The programs for A167248, there is no canonical definition to state claims against.
-/

/-! ## A167248.P13965810411836315598

`A167260(A374004(n+1))`
-/

namespace A167248.P13965810411836315598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167260 (A374004 (n + 1)).toNat

end

end A167248.P13965810411836315598

/-! ## A167248.P5275804037745019513

`A167260(A141214(n)+7)`
-/

namespace A167248.P5275804037745019513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167260 (A141214 n + 7).toNat

end

end A167248.P5275804037745019513

/-! ## A167248.P5146373595378600868

`A167260(A052905(n)+9)`
-/

namespace A167248.P5146373595378600868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167260 (A052905 n + 9).toNat

end

end A167248.P5146373595378600868

/-! ## A167248.P15193242689160804632

`A167260(A055999(n)+10)`
-/

namespace A167248.P15193242689160804632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167260 (A055999 n + 10).toNat

end

end A167248.P15193242689160804632

/-! ## A167248.P2501936438687116473

`A167260(eq[5, A066657(n)])`
-/

namespace A167248.P2501936438687116473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167248.P2501936438687116473

/-!
# A167250: Number of ways to partition a 2*n X 4 grid into 8 connected equal-area regions.

The programs for A167250, there is no canonical definition to state claims against.
-/

/-! ## A167250.P4895702692500282220

`A167264(A027693(2*(n+2))/2)`
-/

namespace A167250.P4895702692500282220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167264 (SequenceMachineLib.roundAway ((A027693 (2 * (n + 2)) : ℚ) / 2)).toNat

end

end A167250.P4895702692500282220

/-! ## A167250.P9416244716462176484

`A167264(A055999(2*n+1)+10)`
-/

namespace A167250.P9416244716462176484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167264 (A055999 (2 * n + 1) + 10).toNat

end

end A167250.P9416244716462176484

/-!
# A167251: Number of ways to partition an n X 5 grid into 5 connected equal-area regions.

The programs for A167251, there is no canonical definition to state claims against.
-/

/-! ## A167251.P6882859284763102067

`record[A167261(n+11)]`
-/

namespace A167251.P6882859284763102067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167261 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167251.P6882859284763102067

/-! ## A167251.P12681875824504110459

`A167261(A374005(n+1))`
-/

namespace A167251.P12681875824504110459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167261 (A374005 (n + 1)).toNat

end

end A167251.P12681875824504110459

/-! ## A167251.P9992729016598434479

`A167261(A167499(n+3))`
-/

namespace A167251.P9992729016598434479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167261 (A167499 (n + 3)).toNat

end

end A167251.P9992729016598434479

/-! ## A167251.P14560153639297351849

`A167261(A155212(n)+13)`
-/

namespace A167251.P14560153639297351849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167261 (A155212 n + 13).toNat

end

end A167251.P14560153639297351849

/-! ## A167251.P15979857711857613436

`A167261(A056000(n)+15)`
-/

namespace A167251.P15979857711857613436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167261 (A056000 n + 15).toNat

end

end A167251.P15979857711857613436

/-!
# A167252: Number of ways to partition an n X 6 grid into 2 connected equal-area regions.

The programs for A167252, there is no canonical definition to state claims against.
-/

/-! ## A167252.P12747578020774591868

`A167279(A374007(n+1))`
-/

namespace A167252.P12747578020774591868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (A374007 (n + 1)).toNat

end

end A167252.P12747578020774591868

/-!
# A167253: Number of ways to partition an n X 6 grid into 3 connected equal-area regions.

The programs for A167253, there is no canonical definition to state claims against.
-/

/-! ## A167253.P11590369717090002400

`A167259(A374007(n+1))`
-/

namespace A167253.P11590369717090002400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167259 (A374007 (n + 1)).toNat

end

end A167253.P11590369717090002400

/-!
# A167254: Number of ways to partition an n X 6 grid into 6 connected equal-area regions.

The programs for A167254, there is no canonical definition to state claims against.
-/

/-! ## A167254.P16224180958800677403

`A167262(A374007(n+1))`
-/

namespace A167254.P16224180958800677403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167262 (A374007 (n + 1)).toNat

end

end A167254.P16224180958800677403

/-! ## A167254.P1206993829546620172

`A167262(A052905(n+3))`
-/

namespace A167254.P1206993829546620172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167262 (A052905 (n + 3)).toNat

end

end A167254.P1206993829546620172

/-! ## A167254.P13840880122088528532

`A167262(A166136(n+4))`
-/

namespace A167254.P13840880122088528532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167262 (A166136 (n + 4)).toNat

end

end A167254.P13840880122088528532

/-! ## A167254.P17066130179467251915

`A167262(A056119(n)+16)`
-/

namespace A167254.P17066130179467251915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167262 (A056119 n + 16).toNat

end

end A167254.P17066130179467251915

/-! ## A167254.P6013777067925660780

`A167262(eq[3, A219347(n)])`
-/

namespace A167254.P6013777067925660780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167254.P6013777067925660780

/-!
# A167255: Number of ways to partition an n X 7 grid into 7 connected equal-area regions.

The programs for A167255, there is no canonical definition to state claims against.
-/

/-! ## A167255.P11034359211798645492

`record[floor(A167263(n+1)+acot(n))]`
-/

namespace A167255.P11034359211798645492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167263 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167255.P11034359211798645492

/-! ## A167255.P3829701284663288155

`A167263(A374008(n+1))`
-/

namespace A167255.P3829701284663288155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167263 (A374008 (n + 1)).toNat

end

end A167255.P3829701284663288155

/-! ## A167255.P13455529822890481009

`A167263(eq[4, A219347(n)])`
-/

namespace A167255.P13455529822890481009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167255.P13455529822890481009

/-! ## A167255.P15919643896065724408

`A167263(eq[6, A193592(n)])`
-/

namespace A167255.P15919643896065724408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167255.P15919643896065724408

/-!
# A167256: Number of ways to partition an n X 8 grid into 2 connected equal-area regions.

The programs for A167256, there is no canonical definition to state claims against.
-/

/-! ## A167256.P12200388643090272575

`A167279(A374009(n+1))`
-/

namespace A167256.P12200388643090272575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (A374009 (n + 1)).toNat

end

end A167256.P12200388643090272575

/-!
# A167257: Number of ways to partition an n X 8 grid into 4 connected equal-area regions.

The programs for A167257, there is no canonical definition to state claims against.
-/

/-! ## A167257.P1222524103985343484

`A167260(A374009(n+1))`
-/

namespace A167257.P1222524103985343484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167260 (A374009 (n + 1)).toNat

end

end A167257.P1222524103985343484

/-!
# A167258: Number of ways to partition an n X 8 grid into 8 connected equal-area regions.

The programs for A167258, there is no canonical definition to state claims against.
-/

/-! ## A167258.P10232189066992261578

`A167264(A374009(n+1))`
-/

namespace A167258.P10232189066992261578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167264 (A374009 (n + 1)).toNat

end

end A167258.P10232189066992261578

/-! ## A167258.P8660932521642302260

`A167264(eq[5, A219347(n)])`
-/

namespace A167258.P8660932521642302260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167258.P8660932521642302260

/-! ## A167258.P13757522101429073810

`A167264(eq[7, A193592(n)])`
-/

namespace A167258.P13757522101429073810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167258.P13757522101429073810

/-!
# A167259: T(n,m) = Number of ways to partition an nXm grid into 3 connected equal-area regions.

The programs for A167259, there is no canonical definition to state claims against.
-/

/-! ## A167259.P4736556678816695174

`A233320(lt[A034552(n+1), A014473(n)])`
-/

namespace A167259.P4736556678816695174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167259.P4736556678816695174

/-! ## A167259.P18060747038188097823

`A233320(lt[A034569(n+1), A014473(n)])`
-/

namespace A167259.P18060747038188097823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167259.P18060747038188097823

/-! ## A167259.P5623990353074151494

`A233320(lt[A034547(n+1), n*A014473(n)])`
-/

namespace A167259.P5623990353074151494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167259.P5623990353074151494

/-!
# A167260: T(n,m) = Number of ways to partition an nXm grid into 4 connected equal-area regions.

The programs for A167260, there is no canonical definition to state claims against.
-/

/-! ## A167260.P9496874873256641380

`A125250(A156353(n+1))`
-/

namespace A167260.P9496874873256641380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125250 (A156353 (n + 1)).toNat

end

end A167260.P9496874873256641380

/-! ## A167260.P5039855653581787878

`A091009(A209465(n+1))`
-/

namespace A167260.P5039855653581787878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (A209465 (n + 1)).toNat

end

end A167260.P5039855653581787878

/-! ## A167260.P5811969955698088154

`A091009(A209527(n+1))`
-/

namespace A167260.P5811969955698088154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (A209527 (n + 1)).toNat

end

end A167260.P5811969955698088154

/-! ## A167260.P7814815604496046494

`A125250(A238812(n+1))`
-/

namespace A167260.P7814815604496046494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125250 (A238812 (n + 1)).toNat

end

end A167260.P7814815604496046494

/-! ## A167260.P15546176780116434302

`A233286(A198528(n+1))`
-/

namespace A167260.P15546176780116434302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233286 (A198528 (n + 1)).toNat

end

end A167260.P15546176780116434302

/-!
# A167263: T(n,m) = Number of ways to partition an nXm grid into 7 connected equal-area regions.

The programs for A167263, there is no canonical definition to state claims against.
-/

/-! ## A167263.P1800597177263767875

`C(A000177(n), A216774(A057568(n+2)))`
-/

namespace A167263.P1800597177263767875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000177 n).toNat (A216774 (A057568 (n + 2)).toNat).toNat

end

end A167263.P1800597177263767875

/-! ## A167263.P13495940288723981376

`C(A045450(n+5), A246316(A359906(n+2)))`
-/

namespace A167263.P13495940288723981376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A045450 (n + 5)).toNat (A246316 (A359906 (n + 2)).toNat).toNat

end

end A167263.P13495940288723981376

/-! ## A167263.P17357765576970052947

`A055641(A143265(n+1))*A086626(n)`
-/

namespace A167263.P17357765576970052947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A143265 (n + 1)).toNat * A086626 n

end

end A167263.P17357765576970052947

/-! ## A167263.P8029343066403501295

`A086626(n)%A132620(A046576(n+1))`
-/

namespace A167263.P8029343066403501295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086626 n) (A132620 (A046576 (n + 1)).toNat)

end

end A167263.P8029343066403501295

/-! ## A167263.P15556227417492591553

`A000045(C(A185229(n), A269380(n+3)))`
-/

namespace A167263.P15556227417492591553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (A185229 n).toNat (A269380 (n + 3)).toNat)

end

end A167263.P15556227417492591553

/-!
# A167264: T(n,m) = Number of ways to partition an n X m grid into 8 connected equal-area regions.

The programs for A167264, there is no canonical definition to state claims against.
-/

/-! ## A167264.P8788610973709307132

`A007305(A199092(n+1))`
-/

namespace A167264.P8788610973709307132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A199092 (n + 1)).toNat

end

end A167264.P8788610973709307132

/-! ## A167264.P6814448087398592239

`and(A050963(n+1), A199092(n+1))`
-/

namespace A167264.P6814448087398592239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050963 (n + 1)) (A199092 (n + 1))

end

end A167264.P6814448087398592239

/-! ## A167264.P6980796800302224489

`and(A117843(n+1), A199092(n+1))`
-/

namespace A167264.P6980796800302224489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117843 (n + 1)) (A199092 (n + 1))

end

end A167264.P6980796800302224489

/-! ## A167264.P16398597609806147518

`and(A193144(n+1), A199092(n+1))`
-/

namespace A167264.P16398597609806147518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193144 (n + 1)) (A199092 (n + 1))

end

end A167264.P16398597609806147518

/-! ## A167264.P16568735662940611270

`and(A199092(n+1), A221182(n+1))`
-/

namespace A167264.P16568735662940611270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199092 (n + 1)) (A221182 (n + 1))

end

end A167264.P16568735662940611270

/-!
# A167265: T(n,m) = Number of ways to partition an n X m grid into 9 connected equal-area regions.

The programs for A167265, there is no canonical definition to state claims against.
-/

/-! ## A167265.P4839224838673814526

`A221809(gcd(n²², A307860(n)))`
-/

namespace A167265.P4839224838673814526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221809 (Int.gcd ((n ^ 2) ^ 2 : ℤ) (A307860 n))

end

end A167265.P4839224838673814526

/-! ## A167265.P6064686563489872834

`A298982(A066421(n+1)^A374163(3*n+1))`
-/

namespace A167265.P6064686563489872834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298982 (SequenceMachineLib.roundAway ((A066421 (n + 1) : ℚ) ^ (A374163 (3 * n + 1) : ℤ))).toNat

end

end A167265.P6064686563489872834

/-! ## A167265.P16213404238966788199

`A353279(A081297(n))*A369164(2*n+3)`
-/

namespace A167265.P16213404238966788199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353279 (A081297 n).toNat * A369164 (2 * n + 3)

end

end A167265.P16213404238966788199

/-! ## A167265.P5216772987312490825

`val(A159243(n), 9)`
-/

namespace A167265.P5216772987312490825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A159243 n).toNat 9

end

end A167265.P5216772987312490825

/-!
# A167267: Interspersion of the signature sequence of (1+sqrt(5))/2.

The programs for A167267, there is no canonical definition to state claims against.
-/

/-! ## A167267.P2723900133968792389

`A087468(n)+A016346(A119502(n))`
-/

namespace A167267.P2723900133968792389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087468 n + A016346 (A119502 n).toNat

end

end A167267.P2723900133968792389

/-! ## A167267.P5971618103811658215

`A087468(n)+A016389(A284005(n))`
-/

namespace A167267.P5971618103811658215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087468 n + A016389 (A284005 n).toNat

end

end A167267.P5971618103811658215

/-! ## A167267.P8735907405558660650

`A255975(n+1)+A016346(A119502(n))`
-/

namespace A167267.P8735907405558660650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255975 (n + 1) + A016346 (A119502 n).toNat

end

end A167267.P8735907405558660650

/-! ## A167267.P17283267897718293562

`A255975(n+1)+A016346(A284005(n))`
-/

namespace A167267.P17283267897718293562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255975 (n + 1) + A016346 (A284005 n).toNat

end

end A167267.P17283267897718293562

/-! ## A167267.P18269487886622763315

`A091225(A127708(3*(n+1)))+A087468(n)`
-/

namespace A167267.P18269487886622763315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A127708 (3 * (n + 1))).toNat + A087468 n

end

end A167267.P18269487886622763315

/-!
# A167268: Janet's sequence: Number of elements for each successively filled electronic subshell of an atom.

The programs for A167268, the canonical program `A167268.P1116264393051329281` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167268 has offset 1).

The definition of A167268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167268.P1116264393051329281

`4*A216607(n+1)+2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167268

/-- `4*A216607(n+1)+2` -/
def P1116264393051329281.Spec : Prop :=
  ∀ n, P1116264393051329281.a n = A167268 (n + 1)

theorem P1116264393051329281.correct : P1116264393051329281.Spec := by
  intro n
  simp only [A167268, Nat.add_sub_cancel]

end A167268

/-! ## A167268.P1719522589899369468

`2*or(1, A082375(n))`
-/

namespace A167268.P1719522589899369468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A082375 n)

end

end A167268.P1719522589899369468

namespace A167268

/-- `2*or(1, A082375(n))` -/
def P1719522589899369468.Spec : Prop :=
  ∀ n, P1719522589899369468.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P134064186203445429

`A016825(A216607(n+1))`
-/

namespace A167268.P134064186203445429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A216607 (n + 1)).toNat

end

end A167268.P134064186203445429

namespace A167268

/-- `A016825(A216607(n+1))` -/
def P134064186203445429.Spec : Prop :=
  ∀ n, P134064186203445429.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P16390623943732139470

`A168276(A082375(n)+1)`
-/

namespace A167268.P16390623943732139470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168276 (A082375 n + 1).toNat

end

end A167268.P16390623943732139470

namespace A167268

/-- `A168276(A082375(n)+1)` -/
def P16390623943732139470.Spec : Prop :=
  ∀ n, P16390623943732139470.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P4455832434695463763

`A168276(A122196(n+1))`
-/

namespace A167268.P4455832434695463763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168276 (A122196 (n + 1)).toNat

end

end A167268.P4455832434695463763

namespace A167268

/-- `A168276(A122196(n+1))` -/
def P4455832434695463763.Spec : Prop :=
  ∀ n, P4455832434695463763.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P14263390598333698876

`2*A004525(A152204(n))`
-/

namespace A167268.P14263390598333698876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004525 (A152204 n).toNat

end

end A167268.P14263390598333698876

namespace A167268

/-- `2*A004525(A152204(n))` -/
def P14263390598333698876.Spec : Prop :=
  ∀ n, P14263390598333698876.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P960928389028516909

`2*A106249(2*A082375(n))`
-/

namespace A167268.P960928389028516909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106249 (2 * A082375 n).toNat

end

end A167268.P960928389028516909

namespace A167268

/-- `2*A106249(2*A082375(n))` -/
def P960928389028516909.Spec : Prop :=
  ∀ n, P960928389028516909.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P4475565761004971022

`2*(A118175(n)+A082375(n))`
-/

namespace A167268.P4475565761004971022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A118175 n + A082375 n)

end

end A167268.P4475565761004971022

namespace A167268

/-- `2*(A118175(n)+A082375(n))` -/
def P4475565761004971022.Spec : Prop :=
  ∀ n, P4475565761004971022.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P12180569980847472349

`A082375(n)+A014681(A082375(n)+1)`
-/

namespace A167268.P12180569980847472349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 n + A014681 (A082375 n + 1).toNat

end

end A167268.P12180569980847472349

namespace A167268

/-- `A082375(n)+A014681(A082375(n)+1)` -/
def P12180569980847472349.Spec : Prop :=
  ∀ n, P12180569980847472349.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P16063033829989650372

`A001281(A152204(n)+xor(2, A152204(n)))`
-/

namespace A167268.P16063033829989650372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152204 n + Int.xor 2 (A152204 n)).toNat

end

end A167268.P16063033829989650372

namespace A167268

/-- `A001281(A152204(n)+xor(2, A152204(n)))` -/
def P16063033829989650372.Spec : Prop :=
  ∀ n, P16063033829989650372.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P4564070767566229899

`2*A158405(A091995(n+1))`
-/

namespace A167268.P4564070767566229899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158405 (A091995 (n + 1)).toNat

end

end A167268.P4564070767566229899

namespace A167268

/-- `2*A158405(A091995(n+1))` -/
def P4564070767566229899.Spec : Prop :=
  ∀ n, P4564070767566229899.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P8126122811897750050

`2*A134444(A091018(n))`
-/

namespace A167268.P8126122811897750050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134444 (A091018 n).toNat

end

end A167268.P8126122811897750050

namespace A167268

/-- `2*A134444(A091018(n))` -/
def P8126122811897750050.Spec : Prop :=
  ∀ n, P8126122811897750050.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P7867208498466219088

`filter[A212012(n+1), A014707(#)]`
-/

namespace A167268.P7867208498466219088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014707 (f1 j).toNat = 1) n)

end

end A167268.P7867208498466219088

namespace A167268

/-- `filter[A212012(n+1), A014707(#)]` -/
def P7867208498466219088.Spec : Prop :=
  ∀ n, P7867208498466219088.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P7867190162620441649

`filter[A212012(n+1), A021913(#)]`
-/

namespace A167268.P7867190162620441649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A167268.P7867190162620441649

namespace A167268

/-- `filter[A212012(n+1), A021913(#)]` -/
def P7867190162620441649.Spec : Prop :=
  ∀ n, P7867190162620441649.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P6332308376950999084

`filter[A212012(n+1), A059125(#)]`
-/

namespace A167268.P6332308376950999084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059125 (f1 j).toNat = 1) n)

end

end A167268.P6332308376950999084

namespace A167268

/-- `filter[A212012(n+1), A059125(#)]` -/
def P6332308376950999084.Spec : Prop :=
  ∀ n, P6332308376950999084.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P9967438576932194729

`filter[A212012(n+1), A082410(#)]`
-/

namespace A167268.P9967438576932194729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082410 (f1 j).toNat = 1) n)

end

end A167268.P9967438576932194729

namespace A167268

/-- `filter[A212012(n+1), A082410(#)]` -/
def P9967438576932194729.Spec : Prop :=
  ∀ n, P9967438576932194729.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P3890279787652943533

`filter[A212012(n+1), A088150(#)]`
-/

namespace A167268.P3890279787652943533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088150 (f1 j).toNat = 1) n)

end

end A167268.P3890279787652943533

namespace A167268

/-- `filter[A212012(n+1), A088150(#)]` -/
def P3890279787652943533.Spec : Prop :=
  ∀ n, P3890279787652943533.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P15604693883270036230

`filter[A212012(n+1), A165560(#)]`
-/

namespace A167268.P15604693883270036230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A167268.P15604693883270036230

namespace A167268

/-- `filter[A212012(n+1), A165560(#)]` -/
def P15604693883270036230.Spec : Prop :=
  ∀ n, P15604693883270036230.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P4421024317832900680

`filter[A212012(n+1), A166486(#)]`
-/

namespace A167268.P4421024317832900680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A167268.P4421024317832900680

namespace A167268

/-- `filter[A212012(n+1), A166486(#)]` -/
def P4421024317832900680.Spec : Prop :=
  ∀ n, P4421024317832900680.a n = A167268 (n + 1)

end A167268

/-! ## A167268.P12772117012826847651

`filter[A212012(n+1), A241979(#)]`
-/

namespace A167268.P12772117012826847651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A241979 (f1 j).toNat = 1) n)

end

end A167268.P12772117012826847651

namespace A167268

/-- `filter[A212012(n+1), A241979(#)]` -/
def P12772117012826847651.Spec : Prop :=
  ∀ n, P12772117012826847651.a n = A167268 (n + 1)

end A167268

/-!
# A167269: Triangle read by rows, Pascal's triangle columns interleaved with 1's.

The programs for A167269, there is no canonical definition to state claims against.
-/

/-! ## A167269.P5655491884874689591

`A194005(n*A060510(n))`
-/

namespace A167269.P5655491884874689591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 ((n : ℤ) * A060510 n).toNat

end

end A167269.P5655491884874689591

/-! ## A167269.P16158031944931719742

`A194005(and(n, Δ[A060510(n)]))`
-/

namespace A167269.P16158031944931719742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A167269.P16158031944931719742

/-! ## A167269.P8597868324188530377

`A194005(n*(1-A070909(n)))`
-/

namespace A167269.P8597868324188530377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 ((n : ℤ) * (1 - A070909 n)).toNat

end

end A167269.P8597868324188530377

/-! ## A167269.P859537375460133003

`A194005(n)^(1-A070909(n))`
-/

namespace A167269.P859537375460133003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194005 n : ℚ) ^ (1 - A070909 n : ℤ)

end

end A167269.P859537375460133003

/-! ## A167269.P16079476780097129074

`A059674(A142150(A063657(n+1)))`
-/

namespace A167269.P16079476780097129074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A142150 (A063657 (n + 1)).toNat).toNat

end

end A167269.P16079476780097129074

/-! ## A167269.P8688708269303929028

`A065941(A080036(n*A060510(n)))`
-/

namespace A167269.P8688708269303929028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A080036 ((n : ℤ) * A060510 n).toNat).toNat

end

end A167269.P8688708269303929028

/-! ## A167269.P18051190978797295292

`A065941(gcd(A053119(n), A080036(n)))`
-/

namespace A167269.P18051190978797295292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (Int.gcd (A053119 n) (A080036 n))

end

end A167269.P18051190978797295292

/-! ## A167269.P3131256972280196288

`gcd(A014893(A002262(n)), A194005(n))`
-/

namespace A167269.P3131256972280196288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014893 (A002262 n).toNat) (A194005 n)

end

end A167269.P3131256972280196288

/-! ## A167269.P8558352769906677597

`A194005(n)/A194005(n*A070909(n))`
-/

namespace A167269.P8558352769906677597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194005 n : ℚ) / (A194005 ((n : ℤ) * A070909 n).toNat : ℚ)

end

end A167269.P8558352769906677597

/-!
# A167270: a(n) = Fibonacci(n + 2) + floor(n/2).

The programs for A167270, the canonical program `A167270.P12351492389804617679` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167270 has offset 0).

The definition of A167270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167270.P12351492389804617679

`2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167270

/-- `2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` -/
def P12351492389804617679.Spec : Prop :=
  ∀ n, P12351492389804617679.a n = A167270 n

theorem P12351492389804617679.correct : P12351492389804617679.Spec := by
  intro n
  simp only [A167270]

end A167270

/-! ## A167270.P14692451796930678425

`∑[a(n-1)+a(n-2)-n%2]` with `a(0)=1, a(1)=1`
-/

namespace A167270.P14692451796930678425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167270.P14692451796930678425

namespace A167270

/-- `∑[a(n-1)+a(n-2)-n%2]` -/
def P14692451796930678425.Spec : Prop :=
  ∀ n, P14692451796930678425.a n = A167270 n

end A167270

/-! ## A167270.P16855897980820174134

`4-n+a(n-3)+2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A167270.P16855897980820174134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  4 - (n : ℤ) + (a (n - 3) + 2 * a (n - 2))

end

end A167270.P16855897980820174134

namespace A167270

/-- `4-n+a(n-3)+2*a(n-2)` -/
def P16855897980820174134.Spec : Prop :=
  ∀ n, P16855897980820174134.a n = A167270 n

end A167270

/-! ## A167270.P12412731197262927063

`ceil(A052952(n)+n/2)`
-/

namespace A167270.P12412731197262927063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052952 n : ℚ) + (n : ℚ) / 2⌉

end

end A167270.P12412731197262927063

namespace A167270

/-- `ceil(A052952(n)+n/2)` -/
def P12412731197262927063.Spec : Prop :=
  ∀ n, P12412731197262927063.a n = A167270 n

end A167270

/-! ## A167270.P13529139476410819599

`∑[A008346(n)+and(1, n)]`
-/

namespace A167270.P13529139476410819599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167270.P13529139476410819599

namespace A167270

/-- `∑[A008346(n)+and(1, n)]` -/
def P13529139476410819599.Spec : Prop :=
  ∀ n, P13529139476410819599.a n = A167270 n

end A167270

/-! ## A167270.P15054592124609889517

`∑[A001611(n)-and(1, n)]`
-/

namespace A167270.P15054592124609889517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167270.P15054592124609889517

namespace A167270

/-- `∑[A001611(n)-and(1, n)]` -/
def P15054592124609889517.Spec : Prop :=
  ∀ n, P15054592124609889517.a n = A167270 n

end A167270

/-! ## A167270.P17497287246421991529

`ceil(∑[A000045(n)+1/2])`
-/

namespace A167270.P17497287246421991529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) + (1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A167270.P17497287246421991529

namespace A167270

/-- `ceil(∑[A000045(n)+1/2])` -/
def P17497287246421991529.Spec : Prop :=
  ∀ n, P17497287246421991529.a n = A167270 n

end A167270

/-! ## A167270.P5778023828857832371

`floor(A000045(n+2)+n/2)`
-/

namespace A167270.P5778023828857832371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 2) : ℚ) + (n : ℚ) / 2⌋

end

end A167270.P5778023828857832371

namespace A167270

/-- `floor(A000045(n+2)+n/2)` -/
def P5778023828857832371.Spec : Prop :=
  ∀ n, P5778023828857832371.a n = A167270 n

end A167270

/-! ## A167270.P6237170920738190874

`∑[A000045(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A167270.P6237170920738190874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000045 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167270.P6237170920738190874

namespace A167270

/-- `∑[A000045(n-1)+a(n-2)]` -/
def P6237170920738190874.Spec : Prop :=
  ∀ n, P6237170920738190874.a n = A167270 n

end A167270

/-! ## A167270.P12679914514767436466

`A000045(n+1)+a(n-2)+1` with `a(0)=1, a(1)=2`
-/

namespace A167270.P12679914514767436466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000045 (n + 1) + (a (n - 2) + 1)

end

end A167270.P12679914514767436466

namespace A167270

/-- `A000045(n+1)+a(n-2)+1` -/
def P12679914514767436466.Spec : Prop :=
  ∀ n, P12679914514767436466.a n = A167270 n

end A167270

/-! ## A167270.P16864407884159132800

`∑[A000045(2*n-n)+and(1, n+1)]`
-/

namespace A167270.P16864407884159132800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n - n) + (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167270.P16864407884159132800

namespace A167270

/-- `∑[A000045(2*n-n)+and(1, n+1)]` -/
def P16864407884159132800.Spec : Prop :=
  ∀ n, P16864407884159132800.a n = A167270 n

end A167270

/-! ## A167270.P14148003591033755999

`∑[A000032(n-2)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A167270.P14148003591033755999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  A000032 (n - 2) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167270.P14148003591033755999

namespace A167270

/-- `∑[A000032(n-2)+a(n-4)]` -/
def P14148003591033755999.Spec : Prop :=
  ∀ n, P14148003591033755999.a n = A167270 n

end A167270

/-! ## A167270.P16390996609424055694

`A110654(n)+A052952(n)`
-/

namespace A167270.P16390996609424055694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A052952 n

end

end A167270.P16390996609424055694

namespace A167270

/-- `A110654(n)+A052952(n)` -/
def P16390996609424055694.Spec : Prop :=
  ∀ n, P16390996609424055694.a n = A167270 n

end A167270

/-! ## A167270.P8340138513708611123

`A215006(A028310(n))+n`
-/

namespace A167270.P8340138513708611123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 (A028310 n).toNat + (n : ℤ)

end

end A167270.P8340138513708611123

namespace A167270

/-- `A215006(A028310(n))+n` -/
def P8340138513708611123.Spec : Prop :=
  ∀ n, P8340138513708611123.a n = A167270 n

end A167270

/-! ## A167270.P4206063522614640581

`A008619(n)+∑[A000045(n)]`
-/

namespace A167270.P4206063522614640581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167270.P4206063522614640581

namespace A167270

/-- `A008619(n)+∑[A000045(n)]` -/
def P4206063522614640581.Spec : Prop :=
  ∀ n, P4206063522614640581.a n = A167270 n

end A167270

/-! ## A167270.P11626931481455028634

`∑[A059841(n)+A000045(n)]`
-/

namespace A167270.P11626931481455028634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167270.P11626931481455028634

namespace A167270

/-- `∑[A059841(n)+A000045(n)]` -/
def P11626931481455028634.Spec : Prop :=
  ∀ n, P11626931481455028634.a n = A167270 n

end A167270

/-! ## A167270.P15535484277562372572

`A052952(n)+A004526(n+1)`
-/

namespace A167270.P15535484277562372572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n + A004526 (n + 1)

end

end A167270.P15535484277562372572

namespace A167270

/-- `A052952(n)+A004526(n+1)` -/
def P15535484277562372572.Spec : Prop :=
  ∀ n, P15535484277562372572.a n = A167270 n

end A167270

/-! ## A167270.P11497366663927797997

`A123108(n+1)+A052952(n)`
-/

namespace A167270.P11497366663927797997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) + A052952 n

end

end A167270.P11497366663927797997

namespace A167270

/-- `A123108(n+1)+A052952(n)` -/
def P11497366663927797997.Spec : Prop :=
  ∀ n, P11497366663927797997.a n = A167270 n

end A167270

/-! ## A167270.P18342603975982064006

`A004526(n)+A000045(n+2)`
-/

namespace A167270.P18342603975982064006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A000045 (n + 2)

end

end A167270.P18342603975982064006

namespace A167270

/-- `A004526(n)+A000045(n+2)` -/
def P18342603975982064006.Spec : Prop :=
  ∀ n, P18342603975982064006.a n = A167270 n

end A167270

/-! ## A167270.P7530611273070132272

`A008619(n)+A000071(n+2)`
-/

namespace A167270.P7530611273070132272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A000071 (n + 2)

end

end A167270.P7530611273070132272

namespace A167270

/-- `A008619(n)+A000071(n+2)` -/
def P7530611273070132272.Spec : Prop :=
  ∀ n, P7530611273070132272.a n = A167270 n

end A167270

/-!
# A167271: Triangle read by rows: T(n,k) = A167269(n/k-1, k-1) if k divides n, T(n,k) = 0 otherwise.

The programs for A167271, there is no canonical definition to state claims against.
-/

/-! ## A167271.P923782043101434871

`A091325(n+1)%A111698(A127093(n+1)+1)`
-/

namespace A167271.P923782043101434871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091325 (n + 1)) (A111698 (A127093 (n + 1) + 1).toNat)

end

end A167271.P923782043101434871

/-! ## A167271.P10566538226510719249

`A133963(n+1)%A279253(A156348(n+1))`
-/

namespace A167271.P10566538226510719249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133963 (n + 1)) (A279253 (A156348 (n + 1)).toNat)

end

end A167271.P10566538226510719249

/-! ## A167271.P8470570587074274278

`A156348(n+1)%A114321(n)`
-/

namespace A167271.P8470570587074274278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156348 (n + 1)) (A114321 n)

end

end A167271.P8470570587074274278

/-! ## A167271.P4280939969638007174

`dr(A126988(n+1)^A131689(n))`
-/

namespace A167271.P4280939969638007174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A126988 (n + 1) : ℚ) ^ (A131689 n : ℤ)))

end

end A167271.P4280939969638007174

/-! ## A167271.P8544508332417956596

`and(A057829(n+1), A156348(n+1))`
-/

namespace A167271.P8544508332417956596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057829 (n + 1)) (A156348 (n + 1))

end

end A167271.P8544508332417956596

/-!
# A167273: Infinite product of triangle A167271 columns.

The programs for A167273, there is no canonical definition to state claims against.
-/

/-! ## A167273.P13205767756208857296

`A000196(∑[A327548(or(1, n))])`
-/

namespace A167273.P13205767756208857296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327548 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167273.P13205767756208857296

/-! ## A167273.P13857611043061718463

`A125005(A035594(n))+A035594(n)`
-/

namespace A167273.P13857611043061718463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A035594 n).toNat + A035594 n

end

end A167273.P13857611043061718463

/-! ## A167273.P12331973687412565872

`A085982(A133494(n))+A035594(n)`
-/

namespace A167273.P12331973687412565872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A133494 n).toNat + A035594 n

end

end A167273.P12331973687412565872

/-! ## A167273.P2181794685225215755

`A087043(A165877(n))+A035594(n)`
-/

namespace A167273.P2181794685225215755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087043 (A165877 n).toNat + A035594 n

end

end A167273.P2181794685225215755

/-! ## A167273.P9639486569016294184

`A343030(A165877(n+1))+A035594(n)`
-/

namespace A167273.P9639486569016294184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A165877 (n + 1)).toNat + A035594 n

end

end A167273.P9639486569016294184

/-!
# A167274: Triangle read by rows, = 2*A047999 - A047999^(-1); = twice Sierpinski's gasket minus the inverse of Sierpinski's gasket.

The programs for A167274, the canonical program `A167274.P14910815328084261160` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167274 has offset 0).

The definition of A167274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167274.P2188908977497741426

`and(3, A166282(n))`
-/

namespace A167274.P2188908977497741426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A166282 n)

end

end A167274.P2188908977497741426

namespace A167274

/-- `and(3, A166282(n))` -/
def P2188908977497741426.Spec : Prop :=
  ∀ n, P2188908977497741426.a n = A167274 n

end A167274

/-! ## A167274.P14910815328084261160

`A101000(A166453(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167274

/-- `A101000(A166453(n))` -/
def P14910815328084261160.Spec : Prop :=
  ∀ n, P14910815328084261160.a n = A167274 n

theorem P14910815328084261160.correct : P14910815328084261160.Spec := by
  intro n
  simp only [A167274]

end A167274

/-! ## A167274.P7260125949152482470

`2*A047999(n)-A166282(n)`
-/

namespace A167274.P7260125949152482470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047999 n - A166282 n

end

end A167274.P7260125949152482470

namespace A167274

/-- `2*A047999(n)-A166282(n)` -/
def P7260125949152482470.Spec : Prop :=
  ∀ n, P7260125949152482470.a n = A167274 n

end A167274

/-! ## A167274.P4415669612858751969

`(A166282(n)+A008586(n))%4`
-/

namespace A167274.P4415669612858751969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166282 n + A008586 n) 4

end

end A167274.P4415669612858751969

namespace A167274

/-- `(A166282(n)+A008586(n))%4` -/
def P4415669612858751969.Spec : Prop :=
  ∀ n, P4415669612858751969.a n = A167274 n

end A167274

/-! ## A167274.P16457395667475214911

`(A166282(n)+A008594(n))%4`
-/

namespace A167274.P16457395667475214911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166282 n + A008594 n) 4

end

end A167274.P16457395667475214911

namespace A167274

/-- `(A166282(n)+A008594(n))%4` -/
def P16457395667475214911.Spec : Prop :=
  ∀ n, P16457395667475214911.a n = A167274 n

end A167274

/-! ## A167274.P8756294571641220852

`(A166282(n)+A016742(n))%4`
-/

namespace A167274.P8756294571641220852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166282 n + A016742 n) 4

end

end A167274.P8756294571641220852

namespace A167274

/-- `(A166282(n)+A016742(n))%4` -/
def P8756294571641220852.Spec : Prop :=
  ∀ n, P8756294571641220852.a n = A167274 n

end A167274

/-! ## A167274.P9673226251150916069

`(A166282(n)+4)%A040002(n)`
-/

namespace A167274.P9673226251150916069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166282 n + 4) (A040002 n)

end

end A167274.P9673226251150916069

namespace A167274

/-- `(A166282(n)+4)%A040002(n)` -/
def P9673226251150916069.Spec : Prop :=
  ∀ n, P9673226251150916069.a n = A167274 n

end A167274

/-! ## A167274.P4887290890537476569

`(A166282(n)+A044102(n))%4`
-/

namespace A167274.P4887290890537476569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166282 n + A044102 n) 4

end

end A167274.P4887290890537476569

namespace A167274

/-- `(A166282(n)+A044102(n))%4` -/
def P4887290890537476569.Spec : Prop :=
  ∀ n, P4887290890537476569.a n = A167274 n

end A167274

/-! ## A167274.P15506682881592289106

`(A027465(n)*A115990(n))%4`
-/

namespace A167274.P15506682881592289106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027465 n * A115990 n) 4

end

end A167274.P15506682881592289106

namespace A167274

/-- `(A027465(n)*A115990(n))%4` -/
def P15506682881592289106.Spec : Prop :=
  ∀ n, P15506682881592289106.a n = A167274 n

end A167274

/-! ## A167274.P16854959946264292488

`and(3, A055133(n))`
-/

namespace A167274.P16854959946264292488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A055133 n)

end

end A167274.P16854959946264292488

namespace A167274

/-- `and(3, A055133(n))` -/
def P16854959946264292488.Spec : Prop :=
  ∀ n, P16854959946264292488.a n = A167274 n

end A167274

/-!
# A167275: Row sums of triangle A167274 (a variant of Gould's sequence A001316).

The programs for A167275, the canonical program `A167275.P14205604763837781739` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167275 has offset 0).

The definition of A167275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167275.P14205604763837781739

`2*lcm(2, a(and(n, n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167275

/-- `2*lcm(2, a(and(n, n-1)))` -/
def P14205604763837781739.Spec : Prop :=
  ∀ n, (P14205604763837781739.a n : ℤ) = A167275 n

theorem P14205604763837781739.correct : P14205604763837781739.Spec := by
  intro n
  simp only [A167275]

end A167275

/-! ## A167275.P8373509432397265328

`2*lcm(n, a(n-1))/n` with `a(0)=1, a(1)=4`
-/

namespace A167275.P8373509432397265328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * ((Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ))

end

end A167275.P8373509432397265328

namespace A167275

/-- `2*lcm(n, a(n-1))/n` -/
def P8373509432397265328.Spec : Prop :=
  ∀ n, P8373509432397265328.a n = (A167275 n : ℚ)

end A167275

/-! ## A167275.P6331418992628415065

`(n%2+1)*a(floor(n/2))` with `a(0)=1, a(1)=4`
-/

namespace A167275.P6331418992628415065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n % 2 + 1) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A167275.P6331418992628415065

namespace A167275

/-- `(n%2+1)*a(floor(n/2))` -/
def P6331418992628415065.Spec : Prop :=
  ∀ n, (P6331418992628415065.a n : ℤ) = A167275 n

end A167275

/-! ## A167275.P18010187467588250307

`gcd(2, n+1)*a(floor(n/2))` with `a(0)=1, a(1)=4`
-/

namespace A167275.P18010187467588250307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.gcd 2 (n + 1) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A167275.P18010187467588250307

namespace A167275

/-- `gcd(2, n+1)*a(floor(n/2))` -/
def P18010187467588250307.Spec : Prop :=
  ∀ n, (P18010187467588250307.a n : ℤ) = A167275 n

end A167275

/-! ## A167275.P9456392560465382513

`lcm(4, 4/abs(2/a(and(n, n-1))))` with `a(0)=1`
-/

namespace A167275.P9456392560465382513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 4 (SequenceMachineLib.roundAway (4 / |2 / (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℚ)|))

end

end A167275.P9456392560465382513

namespace A167275

/-- `lcm(4, 4/abs(2/a(and(n, n-1))))` -/
def P9456392560465382513.Spec : Prop :=
  ∀ n, (P9456392560465382513.a n : ℤ) = A167275 n

end A167275

/-! ## A167275.P3695551963096550426

`2*a(n-1)/gcd(n, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A167275.P3695551963096550426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A167275.P3695551963096550426

namespace A167275

/-- `2*a(n-1)/gcd(n, a(n-1))` -/
def P3695551963096550426.Spec : Prop :=
  ∀ n, P3695551963096550426.a n = (A167275 n : ℚ)

end A167275

/-! ## A167275.P11577766409230417422

`A062383(a(and(n, n-1))+1)` with `a(0)=1`
-/

namespace A167275.P11577766409230417422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062383 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

end

end A167275.P11577766409230417422

namespace A167275

/-- `A062383(a(and(n, n-1))+1)` -/
def P11577766409230417422.Spec : Prop :=
  ∀ n, P11577766409230417422.a n = A167275 n

end A167275

/-! ## A167275.P7238030919133609853

`4*A000010(a(and(n, n-1)))` with `a(0)=1`
-/

namespace A167275.P7238030919133609853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A000010 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A167275.P7238030919133609853

namespace A167275

/-- `4*A000010(a(and(n, n-1)))` -/
def P7238030919133609853.Spec : Prop :=
  ∀ n, P7238030919133609853.a n = A167275 n

end A167275

/-! ## A167275.P4561226097664888581

`A000010(lcm(5, a(and(n, n-1))))` with `a(0)=1`
-/

namespace A167275.P4561226097664888581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (Int.lcm 5 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A167275.P4561226097664888581

namespace A167275

/-- `A000010(lcm(5, a(and(n, n-1))))` -/
def P4561226097664888581.Spec : Prop :=
  ∀ n, P4561226097664888581.a n = A167275 n

end A167275

/-! ## A167275.P1333440306101362895

`A022998(A001316(n))`
-/

namespace A167275.P1333440306101362895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A001316 n).toNat

end

end A167275.P1333440306101362895

namespace A167275

/-- `A022998(A001316(n))` -/
def P1333440306101362895.Spec : Prop :=
  ∀ n, P1333440306101362895.a n = A167275 n

end A167275

/-! ## A167275.P15042823297472965059

`A020645(A038573(n))`
-/

namespace A167275.P15042823297472965059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020645 (A038573 n).toNat

end

end A167275.P15042823297472965059

namespace A167275

/-- `A020645(A038573(n))` -/
def P15042823297472965059.Spec : Prop :=
  ∀ n, P15042823297472965059.a n = A167275 n

end A167275

/-! ## A167275.P9476475178752425390

`A019425(A001316(n)+1)`
-/

namespace A167275.P9476475178752425390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A001316 n + 1).toNat

end

end A167275.P9476475178752425390

namespace A167275

/-- `A019425(A001316(n)+1)` -/
def P9476475178752425390.Spec : Prop :=
  ∀ n, P9476475178752425390.a n = A167275 n

end A167275

/-! ## A167275.P4312954199441313682

`A026185(A038573(n)+1)`
-/

namespace A167275.P4312954199441313682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 (A038573 n + 1).toNat

end

end A167275.P4312954199441313682

namespace A167275

/-- `A026185(A038573(n)+1)` -/
def P4312954199441313682.Spec : Prop :=
  ∀ n, P4312954199441313682.a n = A167275 n

end A167275

/-! ## A167275.P9184958010337440014

`A151821(A000120(n)+1)`
-/

namespace A167275.P9184958010337440014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (A000120 n + 1).toNat

end

end A167275.P9184958010337440014

namespace A167275

/-- `A151821(A000120(n)+1)` -/
def P9184958010337440014.Spec : Prop :=
  ∀ n, P9184958010337440014.a n = A167275 n

end A167275

/-! ## A167275.P2918781013215312092

`A175047(A038573(n)+1)`
-/

namespace A167275.P2918781013215312092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (A038573 n + 1).toNat

end

end A167275.P2918781013215312092

namespace A167275

/-- `A175047(A038573(n)+1)` -/
def P2918781013215312092.Spec : Prop :=
  ∀ n, P2918781013215312092.a n = A167275 n

end A167275

/-! ## A167275.P12154734775425084157

`A103517(A001316(n)-1)`
-/

namespace A167275.P12154734775425084157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A001316 n - 1).toNat

end

end A167275.P12154734775425084157

namespace A167275

/-- `A103517(A001316(n)-1)` -/
def P12154734775425084157.Spec : Prop :=
  ∀ n, P12154734775425084157.a n = A167275 n

end A167275

/-! ## A167275.P13349825586931231399

`A063759(2*A000120(n))`
-/

namespace A167275.P13349825586931231399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (2 * A000120 n).toNat

end

end A167275.P13349825586931231399

namespace A167275

/-- `A063759(2*A000120(n))` -/
def P13349825586931231399.Spec : Prop :=
  ∀ n, P13349825586931231399.a n = A167275 n

end A167275

/-! ## A167275.P7598649780295684610

`A253560(2^A000120(n))`
-/

namespace A167275.P7598649780295684610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A167275.P7598649780295684610

namespace A167275

/-- `A253560(2^A000120(n))` -/
def P7598649780295684610.Spec : Prop :=
  ∀ n, P7598649780295684610.a n = A167275 n

end A167275

/-! ## A167275.P11505997403492072462

`A000069(or(1, A001316(n)))`
-/

namespace A167275.P11505997403492072462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (Int.lor 1 (A001316 n)).toNat

end

end A167275.P11505997403492072462

namespace A167275

/-- `A000069(or(1, A001316(n)))` -/
def P11505997403492072462.Spec : Prop :=
  ∀ n, P11505997403492072462.a n = A167275 n

end A167275

/-! ## A167275.P689200599394881186

`A001316(xor(1, A004277(n)))`
-/

namespace A167275.P689200599394881186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.xor 1 (A004277 n)).toNat

end

end A167275.P689200599394881186

namespace A167275

/-- `A001316(xor(1, A004277(n)))` -/
def P689200599394881186.Spec : Prop :=
  ∀ n, P689200599394881186.a n = A167275 n

end A167275

/-!
# A167276: Primes p such that p^2=x^2+y^2-1 with x and y also prime.

The programs for A167276, there is no canonical definition to state claims against.
-/

/-! ## A167276.P13123717302083548071

`p?[A056926(A004273(A143850(n+1)))]`
-/

namespace A167276.P13123717302083548071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A004273 (A143850 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167276.P13123717302083548071

/-! ## A167276.P12157567847932096988

`p?[A180263(A243903(n+1))]`
-/

namespace A167276.P12157567847932096988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180263 (A243903 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167276.P12157567847932096988

/-! ## A167276.P5454745187749188301

`p?[A180263(n+1)*A264656(A104763(n+1))]`
-/

namespace A167276.P5454745187749188301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180263 (n + 1) * A264656 (A104763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167276.P5454745187749188301

/-! ## A167276.P148917436775315127

`p?[A185002(n+1)+A014963(A180342(n+1))]`
-/

namespace A167276.P148917436775315127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185002 (n + 1) + A014963 (A180342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167276.P148917436775315127

/-!
# A167277: Largest nonprime

The programs for A167277, the canonical program `A167277.P12308341413257393222` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167277 has offset 1).

The definition of A167277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167277.P12308341413257393222

`A007510(n+1)-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167277

/-- `A007510(n+1)-1` -/
def P12308341413257393222.Spec : Prop :=
  ∀ n, P12308341413257393222.a n = A167277 (n + 1)

theorem P12308341413257393222.correct : P12308341413257393222.Spec := by
  intro n
  simp only [A167277, Nat.add_sub_cancel]

end A167277

/-! ## A167277.P16886913528401896157

`A167397(n+1)+n`
-/

namespace A167277.P16886913528401896157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167397 (n + 1) + (n : ℤ)

end

end A167277.P16886913528401896157

namespace A167277

/-- `A167397(n+1)+n` -/
def P16886913528401896157.Spec : Prop :=
  ∀ n, P16886913528401896157.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P8017433759478168767

`A068015(n)+a(n-1)` with `a(0)=1`
-/

namespace A167277.P8017433759478168767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068015 n + a (n - 1)

end

end A167277.P8017433759478168767

namespace A167277

/-- `A068015(n)+a(n-1)` -/
def P8017433759478168767.Spec : Prop :=
  ∀ n, P8017433759478168767.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P1037466073227095733

`A163654(n)-a(n-1)-2` with `a(0)=1`
-/

namespace A167277.P1037466073227095733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163654 n - a (n - 1) - 2

end

end A167277.P1037466073227095733

namespace A167277

/-- `A163654(n)-a(n-1)-2` -/
def P1037466073227095733.Spec : Prop :=
  ∀ n, P1037466073227095733.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P9760580932963251187

`abs(1-A007510(ϕ²-(ϕ-n)))`
-/

namespace A167277.P9760580932963251187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A007510 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat|

end

end A167277.P9760580932963251187

namespace A167277

/-- `abs(1-A007510(ϕ²-(ϕ-n)))` -/
def P9760580932963251187.Spec : Prop :=
  ∀ n, P9760580932963251187.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P8081100747049022850

`A134797(gcd(n, lcm(n, a(n-1))))-1` with `a(0)=1`
-/

namespace A167277.P8081100747049022850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134797 (Nat.gcd n (Int.lcm (n : ℤ) (a (n - 1)))) - 1

end

end A167277.P8081100747049022850

namespace A167277

/-- `A134797(gcd(n, lcm(n, a(n-1))))-1` -/
def P8081100747049022850.Spec : Prop :=
  ∀ n, P8081100747049022850.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P15546238422096055808

`A164274(n+1)-A006512(n+1)`
-/

namespace A167277.P15546238422096055808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - A006512 (n + 1)

end

end A167277.P15546238422096055808

namespace A167277

/-- `A164274(n+1)-A006512(n+1)` -/
def P15546238422096055808.Spec : Prop :=
  ∀ n, P15546238422096055808.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P10118230630944997008

`A164534(n+1)-(A158388(n)+1)`
-/

namespace A167277.P10118230630944997008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164534 (n + 1) - (A158388 n + 1)

end

end A167277.P10118230630944997008

namespace A167277

/-- `A164534(n+1)-(A158388(n)+1)` -/
def P10118230630944997008.Spec : Prop :=
  ∀ n, P10118230630944997008.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P14502666596927302444

`A161165(n+1)-(A001097(n+1)+1)`
-/

namespace A167277.P14502666596927302444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161165 (n + 1) - (A001097 (n + 1) + 1)

end

end A167277.P14502666596927302444

namespace A167277

/-- `A161165(n+1)-(A001097(n+1)+1)` -/
def P14502666596927302444.Spec : Prop :=
  ∀ n, P14502666596927302444.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P7560217325427502647

`A164274(n+1)-(A014574(n+1)+1)`
-/

namespace A167277.P7560217325427502647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - (A014574 (n + 1) + 1)

end

end A167277.P7560217325427502647

namespace A167277

/-- `A164274(n+1)-(A014574(n+1)+1)` -/
def P7560217325427502647.Spec : Prop :=
  ∀ n, P7560217325427502647.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P15746533848008052467

`A163654(n+1)-(A134797(n+1)+1)`
-/

namespace A167277.P15746533848008052467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163654 (n + 1) - (A134797 (n + 1) + 1)

end

end A167277.P15746533848008052467

namespace A167277

/-- `A163654(n+1)-(A134797(n+1)+1)` -/
def P15746533848008052467.Spec : Prop :=
  ∀ n, P15746533848008052467.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P18283095131988794719

`A001478(n+1)+A007510(n+1)+n`
-/

namespace A167277.P18283095131988794719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A007510 (n + 1) + (n : ℤ))

end

end A167277.P18283095131988794719

namespace A167277

/-- `A001478(n+1)+A007510(n+1)+n` -/
def P18283095131988794719.Spec : Prop :=
  ∀ n, P18283095131988794719.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P1860112019310038761

`A153881(n+2)+A007510(n+1)`
-/

namespace A167277.P1860112019310038761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A007510 (n + 1)

end

end A167277.P1860112019310038761

namespace A167277

/-- `A153881(n+2)+A007510(n+1)` -/
def P1860112019310038761.Spec : Prop :=
  ∀ n, P1860112019310038761.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P7467573490601501308

`p?[A167706(n+1)]-1`
-/

namespace A167277.P7467573490601501308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A167277.P7467573490601501308

namespace A167277

/-- `p?[A167706(n+1)]-1` -/
def P7467573490601501308.Spec : Prop :=
  ∀ n, P7467573490601501308.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P4409095948591528353

`A006093(A176656(n+1))`
-/

namespace A167277.P4409095948591528353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A176656 (n + 1)).toNat

end

end A167277.P4409095948591528353

namespace A167277

/-- `A006093(A176656(n+1))` -/
def P4409095948591528353.Spec : Prop :=
  ∀ n, P4409095948591528353.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P2024121055999566170

`∩[A000040(n+1), A167706(n+1)]-1`
-/

namespace A167277.P2024121055999566170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A167277.P2024121055999566170

namespace A167277

/-- `∩[A000040(n+1), A167706(n+1)]-1` -/
def P2024121055999566170.Spec : Prop :=
  ∀ n, P2024121055999566170.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P4986444381143180862

`A000010(A007510(n+1))`
-/

namespace A167277.P4986444381143180862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007510 (n + 1)).toNat

end

end A167277.P4986444381143180862

namespace A167277

/-- `A000010(A007510(n+1))` -/
def P4986444381143180862.Spec : Prop :=
  ∀ n, P4986444381143180862.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P10487075496587184324

`record[A007510(A133310(n))-1]`
-/

namespace A167277.P10487075496587184324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167277.P10487075496587184324

namespace A167277

/-- `record[A007510(A133310(n))-1]` -/
def P10487075496587184324.Spec : Prop :=
  ∀ n, P10487075496587184324.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P3812121863331797415

`filter[A141515(n+1), A292438(#)]`
-/

namespace A167277.P3812121863331797415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A167277.P3812121863331797415

namespace A167277

/-- `filter[A141515(n+1), A292438(#)]` -/
def P3812121863331797415.Spec : Prop :=
  ∀ n, P3812121863331797415.a n = A167277 (n + 1)

end A167277

/-! ## A167277.P3873085720669504788

`∩[A100317(n+1), A141515(n+1)]`
-/

namespace A167277.P3873085720669504788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167277.P3873085720669504788

namespace A167277

/-- `∩[A100317(n+1), A141515(n+1)]` -/
def P3873085720669504788.Spec : Prop :=
  ∀ n, (P3873085720669504788.a n : ℤ) = A167277 (n + 1)

end A167277

/-!
# A167278: Smallest prime>n-th single (or isolated or non-twin) prime.

The programs for A167278, the canonical program `A167278.P3371775236650755278` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167278 has offset 1).

The definition of A167278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167278.P12195391108835285529

`A065091(A176656(n+1))`
-/

namespace A167278.P12195391108835285529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A176656 (n + 1)).toNat

end

end A167278.P12195391108835285529

namespace A167278

/-- `A065091(A176656(n+1))` -/
def P12195391108835285529.Spec : Prop :=
  ∀ n, P12195391108835285529.a n = A167278 (n + 1)

end A167278

/-! ## A167278.P3371775236650755278

`A151800(p?[A062729(n+1)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167278

/-- `A151800(p?[A062729(n+1)])` -/
def P3371775236650755278.Spec : Prop :=
  ∀ n, P3371775236650755278.a n = A167278 (n + 1)

theorem P3371775236650755278.correct : P3371775236650755278.Spec := by
  intro n
  simp only [A167278, Nat.add_sub_cancel]

end A167278

/-! ## A167278.P10052079750088537467

`A000040(A176656(n+1)+1)`
-/

namespace A167278.P10052079750088537467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176656 (n + 1) + 1).toNat

end

end A167278.P10052079750088537467

namespace A167278

/-- `A000040(A176656(n+1)+1)` -/
def P10052079750088537467.Spec : Prop :=
  ∀ n, P10052079750088537467.a n = A167278 (n + 1)

end A167278

/-! ## A167278.P11091684760179967085

`A151800(A167277(n+1)+1)`
-/

namespace A167278.P11091684760179967085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A167277 (n + 1) + 1).toNat

end

end A167278.P11091684760179967085

namespace A167278

/-- `A151800(A167277(n+1)+1)` -/
def P11091684760179967085.Spec : Prop :=
  ∀ n, P11091684760179967085.a n = A167278 (n + 1)

end A167278

/-! ## A167278.P6023347814705554130

`∩[A014092(n+1), A227031(n+1)]`
-/

namespace A167278.P6023347814705554130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167278.P6023347814705554130

namespace A167278

/-- `∩[A014092(n+1), A227031(n+1)]` -/
def P6023347814705554130.Spec : Prop :=
  ∀ n, (P6023347814705554130.a n : ℤ) = A167278 (n + 1)

end A167278

/-! ## A167278.P3335272694469272066

`∩[A025584(n+1), A227031(n+1)]`
-/

namespace A167278.P3335272694469272066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167278.P3335272694469272066

namespace A167278

/-- `∩[A025584(n+1), A227031(n+1)]` -/
def P3335272694469272066.Spec : Prop :=
  ∀ n, (P3335272694469272066.a n : ℤ) = A167278 (n + 1)

end A167278

/-! ## A167278.P4798009818665286357

`∩[A100962(n+1), A227031(n+1)]`
-/

namespace A167278.P4798009818665286357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167278.P4798009818665286357

namespace A167278

/-- `∩[A100962(n+1), A227031(n+1)]` -/
def P4798009818665286357.Spec : Prop :=
  ∀ n, (P4798009818665286357.a n : ℤ) = A167278 (n + 1)

end A167278

/-! ## A167278.P13371176921349794641

`∩[A166081(n+1), A227031(n+1)]`
-/

namespace A167278.P13371176921349794641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167278.P13371176921349794641

namespace A167278

/-- `∩[A166081(n+1), A227031(n+1)]` -/
def P13371176921349794641.Spec : Prop :=
  ∀ n, (P13371176921349794641.a n : ℤ) = A167278 (n + 1)

end A167278

/-! ## A167278.P10468968860679016154

`A151800(A161165(n+1)-A001097(n+1))`
-/

namespace A167278.P10468968860679016154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A161165 (n + 1) - A001097 (n + 1)).toNat

end

end A167278.P10468968860679016154

namespace A167278

/-- `A151800(A161165(n+1)-A001097(n+1))` -/
def P10468968860679016154.Spec : Prop :=
  ∀ n, P10468968860679016154.a n = A167278 (n + 1)

end A167278

/-! ## A167278.P3583821207912718913

`A003961(A007510(n+1))`
-/

namespace A167278.P3583821207912718913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A007510 (n + 1)).toNat

end

end A167278.P3583821207912718913

namespace A167278

/-- `A003961(A007510(n+1))` -/
def P3583821207912718913.Spec : Prop :=
  ∀ n, P3583821207912718913.a n = A167278 (n + 1)

end A167278

/-! ## A167278.P3497041961948550330

`A101300(A167277(n+1))`
-/

namespace A167278.P3497041961948550330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A167277 (n + 1)).toNat

end

end A167278.P3497041961948550330

namespace A167278

/-- `A101300(A167277(n+1))` -/
def P3497041961948550330.Spec : Prop :=
  ∀ n, P3497041961948550330.a n = A167278 (n + 1)

end A167278

/-! ## A167278.P577137257242721375

`A045965(p?[A007510(n+1)])`
-/

namespace A167278.P577137257242721375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167278.P577137257242721375

namespace A167278

/-- `A045965(p?[A007510(n+1)])` -/
def P577137257242721375.Spec : Prop :=
  ∀ n, P577137257242721375.a n = A167278 (n + 1)

end A167278

/-! ## A167278.P1833803145374571001

`A003961(p?[A062729(n+1)])`
-/

namespace A167278.P1833803145374571001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167278.P1833803145374571001

namespace A167278

/-- `A003961(p?[A062729(n+1)])` -/
def P1833803145374571001.Spec : Prop :=
  ∀ n, P1833803145374571001.a n = A167278 (n + 1)

end A167278

/-! ## A167278.P15288561038140324296

`A007918(A007510(n+1)+1)`
-/

namespace A167278.P15288561038140324296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A007510 (n + 1) + 1).toNat

end

end A167278.P15288561038140324296

namespace A167278

/-- `A007918(A007510(n+1)+1)` -/
def P15288561038140324296.Spec : Prop :=
  ∀ n, P15288561038140324296.a n = A167278 (n + 1)

end A167278

/-!
# A167279: Square array read by antidiagonals: T(n,m) = number of ways to partition an nXm grid into 2 connected equal-area regions.

The programs for A167279, there is no canonical definition to state claims against.
-/

/-! ## A167279.P16134448932112214297

`A000035(A260001(n+1))*A099597(n)`
-/

namespace A167279.P16134448932112214297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A260001 (n + 1)).toNat * A099597 n

end

end A167279.P16134448932112214297

/-! ## A167279.P901133980281827338

`A000035(A086885(n+1))*A099597(n)`
-/

namespace A167279.P901133980281827338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A086885 (n + 1)).toNat * A099597 n

end

end A167279.P901133980281827338

/-! ## A167279.P4402572848839094973

`A193426(A360922(n+1))`
-/

namespace A167279.P4402572848839094973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (A360922 (n + 1)).toNat

end

end A167279.P4402572848839094973

/-! ## A167279.P7315979537150068887

`A374088(A222444(n+1))`
-/

namespace A167279.P7315979537150068887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374088 (A222444 (n + 1)).toNat

end

end A167279.P7315979537150068887

/-! ## A167279.P3916065296469163310

`A348498(3^A155998(n))`
-/

namespace A167279.P3916065296469163310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A155998 n : ℤ))).toNat

end

end A167279.P3916065296469163310

/-!
# A167280: Period 12: repeat [0, 0, 1, 2, 4, 7, 4, 8, 7, 4, 8, 5].

The programs for A167280, the canonical program `A167280.P13747006247133767003` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167280 has offset 0).

The definition of A167280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167280.P13747006247133767003

`∑[A131666(n)]%10`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167280

/-- `∑[A131666(n)]%10` -/
def P13747006247133767003.Spec : Prop :=
  ∀ n, P13747006247133767003.a n = A167280 n

theorem P13747006247133767003.correct : P13747006247133767003.Spec := by
  intro n
  simp only [A167280]

end A167280

/-!
# A167281: Primes containing the string 555.

The programs for A167281, there is no canonical definition to state claims against.
-/

/-! ## A167281.P14200987637354266641

`p?[A043511(n+1)*A262681(n)]`
-/

namespace A167281.P14200987637354266641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043511 (n + 1) * A262681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167281.P14200987637354266641

/-!
# A167282: Primes containing 777 as a substring.

The programs for A167282, there is no canonical definition to state claims against.
-/

/-! ## A167282.P11842874515393486399

`A093411(A381004(n+1))`
-/

namespace A167282.P11842874515393486399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A381004 (n + 1)).toNat

end

end A167282.P11842874515393486399

/-! ## A167282.P15166785176725412449

`filter[A381004(n+1), A360122(#)]`
-/

namespace A167282.P15166785176725412449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360122 (f1 j).toNat = 1) n)

end

end A167282.P15166785176725412449

/-!
# A167283: Products of distinct isolated primes.

The programs for A167283, there is no canonical definition to state claims against.
-/

/-! ## A167283.P16747078064648738625

`A176312(A004830(n+2)+1)`
-/

namespace A167283.P16747078064648738625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (A004830 (n + 2) + 1).toNat

end

end A167283.P16747078064648738625

/-! ## A167283.P9972615885106795972

`filter[A176312(n+1), A008966(#)]`
-/

namespace A167283.P9972615885106795972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A167283.P9972615885106795972

/-! ## A167283.P17945694564065604199

`filter[A176312(n+1), A049240(#)]`
-/

namespace A167283.P17945694564065604199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A167283.P17945694564065604199

/-! ## A167283.P10933283767490553719

`filter[A176312(n+1), A132350(#)]`
-/

namespace A167283.P10933283767490553719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A167283.P10933283767490553719

/-! ## A167283.P3850811485855730746

`filter[A176312(n+1), A143731(#)]`
-/

namespace A167283.P3850811485855730746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A167283.P3850811485855730746

/-! ## A167283.P12437520584237623597

`filter[A062729(n+1), A280710(#)]`
-/

namespace A167283.P12437520584237623597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A167283.P12437520584237623597

/-! ## A167283.P12356425370074689700

`filter[A176312(n+1), A181183(#)]`
-/

namespace A167283.P12356425370074689700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A167283.P12356425370074689700

/-! ## A167283.P9677025466983448304

`filter[A176312(n+1), A215480(#)]`
-/

namespace A167283.P9677025466983448304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A167283.P9677025466983448304

/-! ## A167283.P8681874543063107656

`filter[A062729(n+1), A354353(#)]`
-/

namespace A167283.P8681874543063107656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A167283.P8681874543063107656

/-! ## A167283.P12981789013043100688

`filter[A176312(n+1), A262684(#)]`
-/

namespace A167283.P12981789013043100688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A167283.P12981789013043100688

/-!
# A167286: Signature sequence of the smallest Pisot number (A060006).

The programs for A167286, there is no canonical definition to state claims against.
-/

/-! ## A167286.P1562560244309003025

`val(A108056(n+1), 7)+1`
-/

namespace A167286.P1562560244309003025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108056 (n + 1)).toNat 7 + 1

end

end A167286.P1562560244309003025

/-! ## A167286.P16010896317795695509

`A005555(val(A108056(n+1), 7))`
-/

namespace A167286.P16010896317795695509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (SequenceMachineLib.valuation (A108056 (n + 1)).toNat 7)

end

end A167286.P16010896317795695509

/-! ## A167286.P16520655568901702595

`A318995(p?[A116570(A118276(n+1))])`
-/

namespace A167286.P16520655568901702595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (A118276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167286.P16520655568901702595

/-! ## A167286.P5995007421092661507

`A025647(n+1)%A062575(n+1)+1`
-/

namespace A167286.P5995007421092661507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025647 (n + 1)) (A062575 (n + 1)) + 1

end

end A167286.P5995007421092661507

/-! ## A167286.P9728087316348211540

`A025647(n+1)+and(1, A101435(n+1))`
-/

namespace A167286.P9728087316348211540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025647 (n + 1) + Int.land 1 (A101435 (n + 1))

end

end A167286.P9728087316348211540

/-! ## A167286.P6221984556432004853

`A025647(n+1)+A000035(A101435(n+1))`
-/

namespace A167286.P6221984556432004853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025647 (n + 1) + A000035 (A101435 (n + 1)).toNat

end

end A167286.P6221984556432004853

/-! ## A167286.P3027634287064216174

`A025647(n+1)-A057428(A062575(n+1))`
-/

namespace A167286.P3027634287064216174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025647 (n + 1) - A057428 (A062575 (n + 1)).toNat

end

end A167286.P3027634287064216174

/-! ## A167286.P10194334194162203339

`A025665(A136272(n+1))+1`
-/

namespace A167286.P10194334194162203339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025665 (A136272 (n + 1)).toNat + 1

end

end A167286.P10194334194162203339

/-!
# A167287: Signature sequence of Pisot number 1.3802775690976206... (A086106).

The programs for A167287, there is no canonical definition to state claims against.
-/

/-! ## A167287.P1041563444071722958

`A005408(A064515(n+1))-A064514(n+1)`
-/

namespace A167287.P1041563444071722958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A064515 (n + 1)).toNat - A064514 (n + 1)

end

end A167287.P1041563444071722958

/-! ## A167287.P8759366081778560639

`A373212(A184398(n+1))`
-/

namespace A167287.P8759366081778560639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373212 (A184398 (n + 1)).toNat

end

end A167287.P8759366081778560639

/-! ## A167287.P14030521746489924262

`A025654(n+1)%A064527(n+1)+1`
-/

namespace A167287.P14030521746489924262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025654 (n + 1)) (A064527 (n + 1)) + 1

end

end A167287.P14030521746489924262

/-! ## A167287.P13991271011763029961

`A135517(A087135(n))+A025654(n+1)`
-/

namespace A167287.P13991271011763029961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (A087135 n).toNat + A025654 (n + 1)

end

end A167287.P13991271011763029961

/-! ## A167287.P8517906608922269548

`A135517(A087136(n))+A025654(n+1)`
-/

namespace A167287.P8517906608922269548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (A087136 n).toNat + A025654 (n + 1)

end

end A167287.P8517906608922269548

/-! ## A167287.P11226952614693122738

`A025654(n+1)+A001222(A282345(n+1))`
-/

namespace A167287.P11226952614693122738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 (n + 1) + A001222 (A282345 (n + 1)).toNat

end

end A167287.P11226952614693122738

/-! ## A167287.P15242305544229687577

`A025654(n+1)+A001222(A322551(n+1))`
-/

namespace A167287.P15242305544229687577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 (n + 1) + A001222 (A322551 (n + 1)).toNat

end

end A167287.P15242305544229687577

/-!
# A167288: Signature sequence of Salem number 1.1762808182599176...

The programs for A167288, there is no canonical definition to state claims against.
-/

/-! ## A167288.P3967770237091473419

`val(A108748(n+1), 9)+1`
-/

namespace A167288.P3967770237091473419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108748 (n + 1)).toNat 9 + 1

end

end A167288.P3967770237091473419

/-! ## A167288.P3083778886903099142

`A008619(val(A108748(n+1), 3))`
-/

namespace A167288.P3083778886903099142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P3083778886903099142

/-! ## A167288.P7880431637234402665

`A027656(val(A108748(n+1), 3))`
-/

namespace A167288.P7880431637234402665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P7880431637234402665

/-! ## A167288.P3760474995116998289

`A028242(val(A108748(n+1), 3))`
-/

namespace A167288.P3760474995116998289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P3760474995116998289

/-! ## A167288.P11851736360134211927

`A029579(val(A108748(n+1), 3))`
-/

namespace A167288.P11851736360134211927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P11851736360134211927

/-! ## A167288.P10158286340630778856

`A052938(val(A108748(n+1), 3))`
-/

namespace A167288.P10158286340630778856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P10158286340630778856

/-! ## A167288.P13194376950133732913

`A080513(val(A108748(n+1), 3))`
-/

namespace A167288.P13194376950133732913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P13194376950133732913

/-! ## A167288.P10044213231692251696

`A110514(val(A108748(n+1), 3))`
-/

namespace A167288.P10044213231692251696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P10044213231692251696

/-! ## A167288.P17043882102866643353

`A131732(val(A108748(n+1), 3))`
-/

namespace A167288.P17043882102866643353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P17043882102866643353

/-! ## A167288.P18114137750956463741

`A328399(val(A108748(n+1), 3))`
-/

namespace A167288.P18114137750956463741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (SequenceMachineLib.valuation (A108748 (n + 1)).toNat 3)

end

end A167288.P18114137750956463741

/-!
# A167289: Signature sequence of the smallest Salem number of degree 18 (A219300).

The programs for A167289, there is no canonical definition to state claims against.
-/

/-! ## A167289.P6712298994790037702

`1+A025671(n+1)%A066889(n+1)`
-/

namespace A167289.P6712298994790037702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A025671 (n + 1)) (A066889 (n + 1))

end

end A167289.P6712298994790037702

/-! ## A167289.P4473257496072289210

`A025671(n+1)+A001222(A066889(n+1))`
-/

namespace A167289.P4473257496072289210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (n + 1) + A001222 (A066889 (n + 1)).toNat

end

end A167289.P4473257496072289210

/-! ## A167289.P13574302263021728203

`A025671(n+1)+A000035(A179909(n+1))`
-/

namespace A167289.P13574302263021728203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (n + 1) + A000035 (A179909 (n + 1)).toNat

end

end A167289.P13574302263021728203

/-! ## A167289.P15584498301912678263

`A025671(A000027(n+1))+A001511(A179909(n+1))`
-/

namespace A167289.P15584498301912678263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (A000027 (n + 1)).toNat + A001511 (A179909 (n + 1)).toNat

end

end A167289.P15584498301912678263

/-! ## A167289.P10460408977029178980

`(A054977(A179909(n+1))+A025671(n+1))^A054977(n)²`
-/

namespace A167289.P10460408977029178980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054977 (A179909 (n + 1)).toNat + A025671 (n + 1) : ℚ) ^ (A054977 n ^ 2 : ℤ)

end

end A167289.P10460408977029178980

/-! ## A167289.P11331569685296602673

`(A054977(A179909(n+1))+A025671(n+1))%A033250(n+1)`
-/

namespace A167289.P11331569685296602673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054977 (A179909 (n + 1)).toNat + A025671 (n + 1)) (A033250 (n + 1))

end

end A167289.P11331569685296602673

/-! ## A167289.P13287104304481289953

`A054977(A039790(n+1))+A025671(n+1)`
-/

namespace A167289.P13287104304481289953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A039790 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P13287104304481289953

/-! ## A167289.P10689642551874942274

`A031346(A142342(n+1))+A025671(n+1)`
-/

namespace A167289.P10689642551874942274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A142342 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P10689642551874942274

/-! ## A167289.P9861514484825747583

`A054977(A329602(n+1))+A025671(n+1)`
-/

namespace A167289.P9861514484825747583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A329602 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P9861514484825747583

/-! ## A167289.P13114471145679650561

`A318827(A244763(n+1))+A025671(n+1)`
-/

namespace A167289.P13114471145679650561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (A244763 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P13114471145679650561

/-! ## A167289.P13530257806281286044

`A162154(A004139(n+1))+A025671(n+1)`
-/

namespace A167289.P13530257806281286044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162154 (A004139 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P13530257806281286044

/-! ## A167289.P12399100005126552254

`A318827(A244765(n+1))+A025671(n+1)`
-/

namespace A167289.P12399100005126552254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (A244765 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P12399100005126552254

/-! ## A167289.P3209701409848795005

`A081729(A244391(n+1))+A025671(n+1)`
-/

namespace A167289.P3209701409848795005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A244391 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P3209701409848795005

/-! ## A167289.P17819450414310908865

`A054977(A304839(n+1))+A025671(n+1)`
-/

namespace A167289.P17819450414310908865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A304839 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P17819450414310908865

/-! ## A167289.P5107769836136414866

`(A267870(A304839(n+1))+A025671(n+1))%A033250(n+1)`
-/

namespace A167289.P5107769836136414866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267870 (A304839 (n + 1)).toNat + A025671 (n + 1)) (A033250 (n + 1))

end

end A167289.P5107769836136414866

/-! ## A167289.P9574434625552030775

`A025671(n+1)+A005131(A261810(n+1))`
-/

namespace A167289.P9574434625552030775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (n + 1) + A005131 (A261810 (n + 1)).toNat

end

end A167289.P9574434625552030775

/-! ## A167289.P1833919089045701203

`A329888(A018800(n+1))+A025671(n+1)`
-/

namespace A167289.P1833919089045701203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A018800 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P1833919089045701203

/-! ## A167289.P12637941412246850555

`A054977(A033250(n+1))+A025671(n+1)`
-/

namespace A167289.P12637941412246850555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A033250 (n + 1)).toNat + A025671 (n + 1)

end

end A167289.P12637941412246850555

/-! ## A167289.P7951649720557050231

`A025671(n+1)-A008683(A309749(n+1))`
-/

namespace A167289.P7951649720557050231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (n + 1) - A008683 (A309749 (n + 1)).toNat

end

end A167289.P7951649720557050231

/-!
# A167290: Primes containing 888 as a substring.

The programs for A167290, there is no canonical definition to state claims against.
-/

/-! ## A167290.P9032515054796376969

`p?[A043523(n+1)%A348775(2*n+1)]`
-/

namespace A167290.P9032515054796376969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043523 (n + 1)) (A348775 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167290.P9032515054796376969

/-! ## A167290.P650442614158196670

`p?[A043523(n+1)%A043523(A293872(n+1))]`
-/

namespace A167290.P650442614158196670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043523 (n + 1)) (A043523 (A293872 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167290.P650442614158196670

/-!
# A167291: a(n) = A137505(2n) + A137505(2n+1).

The programs for A167291, the canonical program `A167291.P7483036231952177654` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167291 has offset 0).

The definition of A167291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167291.P7483036231952177654

`a(n-1)-4*a(n-2)+4*a(n-3)` with `a(0)=2, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167291

/-- `a(n-1)-4*a(n-2)+4*a(n-3)` -/
def P7483036231952177654.Spec : Prop :=
  ∀ n, P7483036231952177654.a n = A167291 n

theorem P7483036231952177654.correct : P7483036231952177654.Spec := by
  intro n
  simp only [A167291]

end A167291

/-! ## A167291.P18440832109288656244

`A137505(2*n)+A137505(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167291.P18440832109288656244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 (2 * n) + A137505 (2 * n + 1)

end

end A167291.P18440832109288656244

namespace A167291

/-- `A137505(2*n)+A137505(2*n+1)` -/
def P18440832109288656244.Spec : Prop :=
  ∀ n, P18440832109288656244.a n = A167291 n

end A167291

/-! ## A167291.P12516773498021080282

`∑[ogf((2+6x^2)/(1+4x^2))]`
-/

namespace A167291.P12516773498021080282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 6] [1, 0, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167291.P12516773498021080282

namespace A167291

/-- `∑[ogf((2+6x^2)/(1+4x^2))]` -/
def P12516773498021080282.Spec : Prop :=
  ∀ n, P12516773498021080282.a n = A167291 n

end A167291

/-! ## A167291.P367799143789787713

`ogf((2+6x^2)/(1-x+4x^2-4x^3))`
-/

namespace A167291.P367799143789787713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 6] [1, -1, 4, -4] n

end

end A167291.P367799143789787713

namespace A167291

/-- `ogf((2+6x^2)/(1-x+4x^2-4x^3))` -/
def P367799143789787713.Spec : Prop :=
  ∀ n, P367799143789787713.a n = A167291 n

end A167291

/-! ## A167291.P1302507407356548002

`4*(2-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A167291.P1302507407356548002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  4 * (2 - a (n - 2))

end

end A167291.P1302507407356548002

namespace A167291

/-- `4*(2-a(n-2))` -/
def P1302507407356548002.Spec : Prop :=
  ∀ n, P1302507407356548002.a n = A167291 n

end A167291

/-! ## A167291.P13810325733042128967

`(2-a(n-2))/(1/2)²` with `a(0)=2, a(1)=2`
-/

namespace A167291.P13810325733042128967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (2 - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A167291.P13810325733042128967

namespace A167291

/-- `(2-a(n-2))/(1/2)²` -/
def P13810325733042128967.Spec : Prop :=
  ∀ n, P13810325733042128967.a n = (A167291 n : ℚ)

end A167291

/-! ## A167291.P1073941084308214975

`(a(n-2)-2)/(3/4-1)` with `a(0)=2, a(1)=2`
-/

namespace A167291.P1073941084308214975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (a (n - 2) - 2) / ((3 : ℚ) / 4 - 1)

end

end A167291.P1073941084308214975

namespace A167291

/-- `(a(n-2)-2)/(3/4-1)` -/
def P1073941084308214975.Spec : Prop :=
  ∀ n, P1073941084308214975.a n = (A167291 n : ℚ)

end A167291

/-! ## A167291.P17981259605243287762

`(∑[∑[A164111(n)]]+3)/2`
-/

namespace A167291.P17981259605243287762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℤ) : ℚ) / 2

end

end A167291.P17981259605243287762

namespace A167291

/-- `(∑[∑[A164111(n)]]+3)/2` -/
def P17981259605243287762.Spec : Prop :=
  ∀ n, P17981259605243287762.a n = (A167291 n : ℚ)

end A167291

/-! ## A167291.P5333455960816352428

`2*A137505(A004275(n))`
-/

namespace A167291.P5333455960816352428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137505 (A004275 n).toNat

end

end A167291.P5333455960816352428

namespace A167291

/-- `2*A137505(A004275(n))` -/
def P5333455960816352428.Spec : Prop :=
  ∀ n, P5333455960816352428.a n = A167291 n

end A167291

/-!
# A167292: Primes containing 999 as a substring.

The programs for A167292, there is no canonical definition to state claims against.
-/

/-! ## A167292.P10981634087131849117

`A230202(A001096(n+1))`
-/

namespace A167292.P10981634087131849117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230202 (A001096 (n + 1)).toNat

end

end A167292.P10981634087131849117

/-!
# A167294: Totally multiplicative sequence with a(p) = 2*(p-2) for prime p.

The programs for A167294, the canonical program `A167294.P6479843741992610623` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167294 has offset 1).

The definition of A167294 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167294.P6479843741992610623

`A061142(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A167294

/-- `A061142(n+1)*A166586(n+1)` -/
def P6479843741992610623.Spec : Prop :=
  ∀ n, P6479843741992610623.a n = A167294 (n + 1)

theorem P6479843741992610623.correct : P6479843741992610623.Spec := by
  intro n
  simp only [A167294, Nat.add_sub_cancel]

end A167294

/-! ## A167294.P449646338169048828

`2^A001222(n+1)*A166586(n+1)`
-/

namespace A167294.P449646338169048828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167294.P449646338169048828

namespace A167294

/-- `2^A001222(n+1)*A166586(n+1)` -/
def P449646338169048828.Spec : Prop :=
  ∀ n, P449646338169048828.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P11063025278096704793

`A167350(n+1)/A003960(n+1)`
-/

namespace A167294.P11063025278096704793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167350 (n + 1) : ℚ) / (A003960 (n + 1) : ℚ)

end

end A167294.P11063025278096704793

namespace A167294

/-- `A167350(n+1)/A003960(n+1)` -/
def P11063025278096704793.Spec : Prop :=
  ∀ n, P11063025278096704793.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P289754762415971001

`A167296(n+1)/A061142(n+1)`
-/

namespace A167294.P289754762415971001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167296 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167294.P289754762415971001

namespace A167294

/-- `A167296(n+1)/A061142(n+1)` -/
def P289754762415971001.Spec : Prop :=
  ∀ n, P289754762415971001.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P12330911331067784512

`A167298(n+1)/A079065(n+1)`
-/

namespace A167294.P12330911331067784512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167298 (n + 1) : ℚ) / (A079065 (n + 1) : ℚ)

end

end A167294.P12330911331067784512

namespace A167294

/-- `A167298(n+1)/A079065(n+1)` -/
def P12330911331067784512.Spec : Prop :=
  ∀ n, P12330911331067784512.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P12763998171213401466

`A167298(n+1)/A165824(n+1)`
-/

namespace A167294.P12763998171213401466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167298 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A167294.P12763998171213401466

namespace A167294

/-- `A167298(n+1)/A165824(n+1)` -/
def P12763998171213401466.Spec : Prop :=
  ∀ n, P12763998171213401466.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P9860713501039042474

`A167300(n+1)/A165825(n+1)`
-/

namespace A167294.P9860713501039042474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167300 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167294.P9860713501039042474

namespace A167294

/-- `A167300(n+1)/A165825(n+1)` -/
def P9860713501039042474.Spec : Prop :=
  ∀ n, P9860713501039042474.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P2968157505443462717

`A167302(n+1)/A165826(n+1)`
-/

namespace A167294.P2968157505443462717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167302 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A167294.P2968157505443462717

namespace A167294

/-- `A167302(n+1)/A165826(n+1)` -/
def P2968157505443462717.Spec : Prop :=
  ∀ n, P2968157505443462717.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P5825001919958284509

`A167350(n+1)/A290323(n+1)`
-/

namespace A167294.P5825001919958284509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167350 (n + 1) : ℚ) / (A290323 (n + 1) : ℚ)

end

end A167294.P5825001919958284509

namespace A167294

/-- `A167350(n+1)/A290323(n+1)` -/
def P5825001919958284509.Spec : Prop :=
  ∀ n, P5825001919958284509.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P5701614403661799108

`gcd(A167296(n+1), A167298(n+1))`
-/

namespace A167294.P5701614403661799108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167296 (n + 1)) (A167298 (n + 1))

end

end A167294.P5701614403661799108

namespace A167294

/-- `gcd(A167296(n+1), A167298(n+1))` -/
def P5701614403661799108.Spec : Prop :=
  ∀ n, (P5701614403661799108.a n : ℤ) = A167294 (n + 1)

end A167294

/-! ## A167294.P11712480056798206617

`gcd(A167300(n+1), A167302(n+1))`
-/

namespace A167294.P11712480056798206617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167300 (n + 1)) (A167302 (n + 1))

end

end A167294.P11712480056798206617

namespace A167294

/-- `gcd(A167300(n+1), A167302(n+1))` -/
def P11712480056798206617.Spec : Prop :=
  ∀ n, (P11712480056798206617.a n : ℤ) = A167294 (n + 1)

end A167294

/-! ## A167294.P259966676970705971

`A167300(n+1)/A061142(n+1)²`
-/

namespace A167294.P259966676970705971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167300 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A167294.P259966676970705971

namespace A167294

/-- `A167300(n+1)/A061142(n+1)²` -/
def P259966676970705971.Spec : Prop :=
  ∀ n, P259966676970705971.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P3105253601262082059

`A166586(n+1)/A003959(n+1)*A166642(n+1)`
-/

namespace A167294.P3105253601262082059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166642 (n + 1) : ℚ)

end

end A167294.P3105253601262082059

namespace A167294

/-- `A166586(n+1)/A003959(n+1)*A166642(n+1)` -/
def P3105253601262082059.Spec : Prop :=
  ∀ n, P3105253601262082059.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P17018671953698216344

`A061142(n+1)/A165824(n+1)*A167295(n+1)`
-/

namespace A167294.P17018671953698216344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167295 (n + 1) : ℚ)

end

end A167294.P17018671953698216344

namespace A167294

/-- `A061142(n+1)/A165824(n+1)*A167295(n+1)` -/
def P17018671953698216344.Spec : Prop :=
  ∀ n, P17018671953698216344.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P14189382360604105589

`A061142(n+1)/A165826(n+1)*A167297(n+1)`
-/

namespace A167294.P14189382360604105589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167294.P14189382360604105589

namespace A167294

/-- `A061142(n+1)/A165826(n+1)*A167297(n+1)` -/
def P14189382360604105589.Spec : Prop :=
  ∀ n, P14189382360604105589.a n = (A167294 (n + 1) : ℚ)

end A167294

/-! ## A167294.P10244103770449287742

`A167300(n+1)/A003959(A165824(n+1))`
-/

namespace A167294.P10244103770449287742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167300 (n + 1) : ℚ) / (A003959 (A165824 (n + 1)).toNat : ℚ)

end

end A167294.P10244103770449287742

namespace A167294

/-- `A167300(n+1)/A003959(A165824(n+1))` -/
def P10244103770449287742.Spec : Prop :=
  ∀ n, P10244103770449287742.a n = (A167294 (n + 1) : ℚ)

end A167294

/-!
# A167295: Totally multiplicative sequence with a(p) = 3*(p-2) for prime p.

The programs for A167295, the canonical program `A167295.P13206562216047799824` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167295 has offset 1).

The definition of A167295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167295.P13206562216047799824

`A165824(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A167295

/-- `A165824(n+1)*A166586(n+1)` -/
def P13206562216047799824.Spec : Prop :=
  ∀ n, P13206562216047799824.a n = A167295 (n + 1)

theorem P13206562216047799824.correct : P13206562216047799824.Spec := by
  intro n
  simp only [A167295, Nat.add_sub_cancel]

end A167295

/-! ## A167295.P13054025793914573743

`3^A001222(n+1)*A166586(n+1)`
-/

namespace A167295.P13054025793914573743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167295.P13054025793914573743

namespace A167295

/-- `3^A001222(n+1)*A166586(n+1)` -/
def P13054025793914573743.Spec : Prop :=
  ∀ n, P13054025793914573743.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P16089386627224999020

`A079065(n+1)*A166586(n+1)`
-/

namespace A167295.P16089386627224999020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 1) * A166586 (n + 1)

end

end A167295.P16089386627224999020

namespace A167295

/-- `A079065(n+1)*A166586(n+1)` -/
def P16089386627224999020.Spec : Prop :=
  ∀ n, P16089386627224999020.a n = A167295 (n + 1)

end A167295

/-! ## A167295.P13742180984520393866

`A167298(n+1)/A061142(n+1)`
-/

namespace A167295.P13742180984520393866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167298 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167295.P13742180984520393866

namespace A167295

/-- `A167298(n+1)/A061142(n+1)` -/
def P13742180984520393866.Spec : Prop :=
  ∀ n, P13742180984520393866.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P5557715411502364415

`A167301(n+1)/A079065(n+1)`
-/

namespace A167295.P5557715411502364415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167301 (n + 1) : ℚ) / (A079065 (n + 1) : ℚ)

end

end A167295.P5557715411502364415

namespace A167295

/-- `A167301(n+1)/A079065(n+1)` -/
def P5557715411502364415.Spec : Prop :=
  ∀ n, P5557715411502364415.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P6663327333474396409

`A167301(n+1)/A165824(n+1)`
-/

namespace A167295.P6663327333474396409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167301 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A167295.P6663327333474396409

namespace A167295

/-- `A167301(n+1)/A165824(n+1)` -/
def P6663327333474396409.Spec : Prop :=
  ∀ n, P6663327333474396409.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P10272080202538136066

`gcd(A167298(n+1), A167301(n+1))`
-/

namespace A167295.P10272080202538136066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167298 (n + 1)) (A167301 (n + 1))

end

end A167295.P10272080202538136066

namespace A167295

/-- `gcd(A167298(n+1), A167301(n+1))` -/
def P10272080202538136066.Spec : Prop :=
  ∀ n, (P10272080202538136066.a n : ℤ) = A167295 (n + 1)

end A167295

/-! ## A167295.P7209341951071545614

`A003959(A061142(n+1))*A166586(n+1)`
-/

namespace A167295.P7209341951071545614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A166586 (n + 1)

end

end A167295.P7209341951071545614

namespace A167295

/-- `A003959(A061142(n+1))*A166586(n+1)` -/
def P7209341951071545614.Spec : Prop :=
  ∀ n, P7209341951071545614.a n = A167295 (n + 1)

end A167295

/-! ## A167295.P15417631304724527767

`A166586(n+1)/A003959(n+1)*A166643(n+1)`
-/

namespace A167295.P15417631304724527767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A167295.P15417631304724527767

namespace A167295

/-- `A166586(n+1)/A003959(n+1)*A166643(n+1)` -/
def P15417631304724527767.Spec : Prop :=
  ∀ n, P15417631304724527767.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P16417572141362490213

`A165824(n+1)/A165825(n+1)*A167296(n+1)`
-/

namespace A167295.P16417572141362490213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167296 (n + 1) : ℚ)

end

end A167295.P16417572141362490213

namespace A167295

/-- `A165824(n+1)/A165825(n+1)*A167296(n+1)` -/
def P16417572141362490213.Spec : Prop :=
  ∀ n, P16417572141362490213.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P2918991980826694676

`A165824(n+1)/A165826(n+1)*A167297(n+1)`
-/

namespace A167295.P2918991980826694676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167295.P2918991980826694676

namespace A167295

/-- `A165824(n+1)/A165826(n+1)*A167297(n+1)` -/
def P2918991980826694676.Spec : Prop :=
  ∀ n, P2918991980826694676.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P15590631914861338198

`A165824(n+1)/A061142(n+1)²*A167296(n+1)`
-/

namespace A167295.P15590631914861338198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A167296 (n + 1) : ℚ)

end

end A167295.P15590631914861338198

namespace A167295

/-- `A165824(n+1)/A061142(n+1)²*A167296(n+1)` -/
def P15590631914861338198.Spec : Prop :=
  ∀ n, P15590631914861338198.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P12949600177371109562

`A165824(n+1)/A167294(A165824(n+1))*A167294(n+1)`
-/

namespace A167295.P12949600177371109562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A167294 (A165824 (n + 1)).toNat : ℚ) * (A167294 (n + 1) : ℚ)

end

end A167295.P12949600177371109562

namespace A167295

/-- `A165824(n+1)/A167294(A165824(n+1))*A167294(n+1)` -/
def P12949600177371109562.Spec : Prop :=
  ∀ n, P12949600177371109562.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P6555333292801751196

`A165824(n+1)/A167298(A165824(n+1))*A167298(n+1)`
-/

namespace A167295.P6555333292801751196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A167298 (A165824 (n + 1)).toNat : ℚ) * (A167298 (n + 1) : ℚ)

end

end A167295.P6555333292801751196

namespace A167295

/-- `A165824(n+1)/A167298(A165824(n+1))*A167298(n+1)` -/
def P6555333292801751196.Spec : Prop :=
  ∀ n, P6555333292801751196.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P534069218289411014

`A165824(n+1)/A167300(A165824(n+1))*A167300(n+1)`
-/

namespace A167295.P534069218289411014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A167300 (A165824 (n + 1)).toNat : ℚ) * (A167300 (n + 1) : ℚ)

end

end A167295.P534069218289411014

namespace A167295

/-- `A165824(n+1)/A167300(A165824(n+1))*A167300(n+1)` -/
def P534069218289411014.Spec : Prop :=
  ∀ n, P534069218289411014.a n = (A167295 (n + 1) : ℚ)

end A167295

/-! ## A167295.P14532732405107348447

`A106609(A106609(A167298(n+1)))`
-/

namespace A167295.P14532732405107348447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A106609 (A167298 (n + 1)).toNat).toNat

end

end A167295.P14532732405107348447

namespace A167295

/-- `A106609(A106609(A167298(n+1)))` -/
def P14532732405107348447.Spec : Prop :=
  ∀ n, P14532732405107348447.a n = A167295 (n + 1)

end A167295

/-! ## A167295.P9138828061839733446

`A167298(n+1)/A003958(A165827(n+1))`
-/

namespace A167295.P9138828061839733446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167298 (n + 1) : ℚ) / (A003958 (A165827 (n + 1)).toNat : ℚ)

end

end A167295.P9138828061839733446

namespace A167295

/-- `A167298(n+1)/A003958(A165827(n+1))` -/
def P9138828061839733446.Spec : Prop :=
  ∀ n, P9138828061839733446.a n = (A167295 (n + 1) : ℚ)

end A167295

/-!
# A167296: Totally multiplicative sequence with a(p) = 4*(p-2) for prime p.

The programs for A167296, the canonical program `A167296.P13875685190120444450` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167296 has offset 1).

The definition of A167296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167296.P13875685190120444450

`A165825(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A167296

/-- `A165825(n+1)*A166586(n+1)` -/
def P13875685190120444450.Spec : Prop :=
  ∀ n, P13875685190120444450.a n = A167296 (n + 1)

theorem P13875685190120444450.correct : P13875685190120444450.Spec := by
  intro n
  simp only [A167296, Nat.add_sub_cancel]

end A167296

/-! ## A167296.P5363273179893126172

`4^A001222(n+1)*A166586(n+1)`
-/

namespace A167296.P5363273179893126172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167296.P5363273179893126172

namespace A167296

/-- `4^A001222(n+1)*A166586(n+1)` -/
def P5363273179893126172.Spec : Prop :=
  ∀ n, P5363273179893126172.a n = (A167296 (n + 1) : ℚ)

end A167296

/-! ## A167296.P17788563984043221818

`A061142(n+1)*A167294(n+1)`
-/

namespace A167296.P17788563984043221818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167294 (n + 1)

end

end A167296.P17788563984043221818

namespace A167296

/-- `A061142(n+1)*A167294(n+1)` -/
def P17788563984043221818.Spec : Prop :=
  ∀ n, P17788563984043221818.a n = A167296 (n + 1)

end A167296

/-! ## A167296.P14505984155276255430

`A167300(n+1)/A061142(n+1)`
-/

namespace A167296.P14505984155276255430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167300 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167296.P14505984155276255430

namespace A167296

/-- `A167300(n+1)/A061142(n+1)` -/
def P14505984155276255430.Spec : Prop :=
  ∀ n, P14505984155276255430.a n = (A167296 (n + 1) : ℚ)

end A167296

/-! ## A167296.P10440227089972096579

`A061142(n+1)²*A166586(n+1)`
-/

namespace A167296.P10440227089972096579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A166586 (n + 1)

end

end A167296.P10440227089972096579

namespace A167296

/-- `A061142(n+1)²*A166586(n+1)` -/
def P10440227089972096579.Spec : Prop :=
  ∀ n, P10440227089972096579.a n = A167296 (n + 1)

end A167296

/-! ## A167296.P9704093764657712011

`gcd(A167302(n+1)², A167300(n+1))`
-/

namespace A167296.P9704093764657712011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167302 (n + 1) ^ 2) (A167300 (n + 1))

end

end A167296.P9704093764657712011

namespace A167296

/-- `gcd(A167302(n+1)², A167300(n+1))` -/
def P9704093764657712011.Spec : Prop :=
  ∀ n, (P9704093764657712011.a n : ℤ) = A167296 (n + 1)

end A167296

/-! ## A167296.P7559946031992075680

`A167294(A079065(n+1))*A167294(n+1)`
-/

namespace A167296.P7559946031992075680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (A079065 (n + 1)).toNat * A167294 (n + 1)

end

end A167296.P7559946031992075680

namespace A167296

/-- `A167294(A079065(n+1))*A167294(n+1)` -/
def P7559946031992075680.Spec : Prop :=
  ∀ n, P7559946031992075680.a n = A167296 (n + 1)

end A167296

/-! ## A167296.P5741270912474574496

`A166586(n+1)/A003959(n+1)*A166644(n+1)`
-/

namespace A167296.P5741270912474574496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166644 (n + 1) : ℚ)

end

end A167296.P5741270912474574496

namespace A167296

/-- `A166586(n+1)/A003959(n+1)*A166644(n+1)` -/
def P5741270912474574496.Spec : Prop :=
  ∀ n, P5741270912474574496.a n = (A167296 (n + 1) : ℚ)

end A167296

/-! ## A167296.P9407882638949531222

`A165825(n+1)/A165824(n+1)*A167295(n+1)`
-/

namespace A167296.P9407882638949531222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167295 (n + 1) : ℚ)

end

end A167296.P9407882638949531222

namespace A167296

/-- `A165825(n+1)/A165824(n+1)*A167295(n+1)` -/
def P9407882638949531222.Spec : Prop :=
  ∀ n, P9407882638949531222.a n = (A167296 (n + 1) : ℚ)

end A167296

/-! ## A167296.P15767118747703594711

`A165825(n+1)/A166590(n+1)*A167355(n+1)`
-/

namespace A167296.P15767118747703594711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167355 (n + 1) : ℚ)

end

end A167296.P15767118747703594711

namespace A167296

/-- `A165825(n+1)/A166590(n+1)*A167355(n+1)` -/
def P15767118747703594711.Spec : Prop :=
  ∀ n, P15767118747703594711.a n = (A167296 (n + 1) : ℚ)

end A167296

/-! ## A167296.P4140791707908327055

`A061142(n+1)²/A165824(n+1)*A167295(n+1)`
-/

namespace A167296.P4140791707908327055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2 : ℚ) / (A165824 (n + 1) : ℚ) * (A167295 (n + 1) : ℚ)

end

end A167296.P4140791707908327055

namespace A167296

/-- `A061142(n+1)²/A165824(n+1)*A167295(n+1)` -/
def P4140791707908327055.Spec : Prop :=
  ∀ n, P4140791707908327055.a n = (A167296 (n + 1) : ℚ)

end A167296

/-! ## A167296.P10093060399737349385

`A166586(n+1)/(A061142(n+1)/A165825(n+1))²`
-/

namespace A167296.P10093060399737349385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / ((A061142 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)) ^ 2

end

end A167296.P10093060399737349385

namespace A167296

/-- `A166586(n+1)/(A061142(n+1)/A165825(n+1))²` -/
def P10093060399737349385.Spec : Prop :=
  ∀ n, P10093060399737349385.a n = (A167296 (n + 1) : ℚ)

end A167296

/-! ## A167296.P5656855855427903878

`A003959(A165824(n+1))*A166586(n+1)`
-/

namespace A167296.P5656855855427903878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A165824 (n + 1)).toNat * A166586 (n + 1)

end

end A167296.P5656855855427903878

namespace A167296

/-- `A003959(A165824(n+1))*A166586(n+1)` -/
def P5656855855427903878.Spec : Prop :=
  ∀ n, P5656855855427903878.a n = A167296 (n + 1)

end A167296

/-! ## A167296.P5835610172203416017

`A167294(A165824(n+1))*A167294(n+1)`
-/

namespace A167296.P5835610172203416017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (A165824 (n + 1)).toNat * A167294 (n + 1)

end

end A167296.P5835610172203416017

namespace A167296

/-- `A167294(A165824(n+1))*A167294(n+1)` -/
def P5835610172203416017.Spec : Prop :=
  ∀ n, P5835610172203416017.a n = A167296 (n + 1)

end A167296

/-! ## A167296.P17985386832083316994

`A003958(A165826(n+1))/A165826(n+1)*A167297(n+1)`
-/

namespace A167296.P17985386832083316994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A165826 (n + 1)).toNat : ℚ) / (A165826 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167296.P17985386832083316994

namespace A167296

/-- `A003958(A165826(n+1))/A165826(n+1)*A167297(n+1)` -/
def P17985386832083316994.Spec : Prop :=
  ∀ n, P17985386832083316994.a n = (A167296 (n + 1) : ℚ)

end A167296

/-! ## A167296.P14784093664302607420

`A167294((n+1)*A079065(n+1))`
-/

namespace A167296.P14784093664302607420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 ((n + 1 : ℤ) * A079065 (n + 1)).toNat

end

end A167296.P14784093664302607420

namespace A167296

/-- `A167294((n+1)*A079065(n+1))` -/
def P14784093664302607420.Spec : Prop :=
  ∀ n, P14784093664302607420.a n = A167296 (n + 1)

end A167296

/-!
# A167297: Totally multiplicative sequence with a(p) = 5*(p-2) for prime p.

The programs for A167297, the canonical program `A167297.P13532023426897284505` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167297 has offset 1).

The definition of A167297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167297.P13532023426897284505

`A165826(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A167297

/-- `A165826(n+1)*A166586(n+1)` -/
def P13532023426897284505.Spec : Prop :=
  ∀ n, P13532023426897284505.a n = A167297 (n + 1)

theorem P13532023426897284505.correct : P13532023426897284505.Spec := by
  intro n
  simp only [A167297, Nat.add_sub_cancel]

end A167297

/-! ## A167297.P14748315194917345420

`5^A001222(n+1)*A166586(n+1)`
-/

namespace A167297.P14748315194917345420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167297.P14748315194917345420

namespace A167297

/-- `5^A001222(n+1)*A166586(n+1)` -/
def P14748315194917345420.Spec : Prop :=
  ∀ n, P14748315194917345420.a n = (A167297 (n + 1) : ℚ)

end A167297

/-! ## A167297.P10710288902973728627

`A167302(n+1)/A061142(n+1)`
-/

namespace A167297.P10710288902973728627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167302 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167297.P10710288902973728627

namespace A167297

/-- `A167302(n+1)/A061142(n+1)` -/
def P10710288902973728627.Spec : Prop :=
  ∀ n, P10710288902973728627.a n = (A167297 (n + 1) : ℚ)

end A167297

/-! ## A167297.P14250189920300554825

`A165826(n+1)/A003959(n+1)*A167350(n+1)`
-/

namespace A167297.P14250189920300554825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167350 (n + 1) : ℚ)

end

end A167297.P14250189920300554825

namespace A167297

/-- `A165826(n+1)/A003959(n+1)*A167350(n+1)` -/
def P14250189920300554825.Spec : Prop :=
  ∀ n, P14250189920300554825.a n = (A167297 (n + 1) : ℚ)

end A167297

/-! ## A167297.P3395324962032307631

`A166586(n+1)/A166642(n+1)*A166650(n+1)`
-/

namespace A167297.P3395324962032307631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A167297.P3395324962032307631

namespace A167297

/-- `A166586(n+1)/A166642(n+1)*A166650(n+1)` -/
def P3395324962032307631.Spec : Prop :=
  ∀ n, P3395324962032307631.a n = (A167297 (n + 1) : ℚ)

end A167297

/-! ## A167297.P8864154235530825310

`A167306(n+1)/A166590(n+1)²*A167355(n+1)`
-/

namespace A167297.P8864154235530825310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167306 (n + 1) : ℚ) / (A166590 (n + 1) ^ 2 : ℚ) * (A167355 (n + 1) : ℚ)

end

end A167297.P8864154235530825310

namespace A167297

/-- `A167306(n+1)/A166590(n+1)²*A167355(n+1)` -/
def P8864154235530825310.Spec : Prop :=
  ∀ n, P8864154235530825310.a n = (A167297 (n + 1) : ℚ)

end A167297

/-! ## A167297.P1745231774958210759

`A003961(A165824(n+1))*A166586(n+1)`
-/

namespace A167297.P1745231774958210759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A165824 (n + 1)).toNat * A166586 (n + 1)

end

end A167297.P1745231774958210759

namespace A167297

/-- `A003961(A165824(n+1))*A166586(n+1)` -/
def P1745231774958210759.Spec : Prop :=
  ∀ n, P1745231774958210759.a n = A167297 (n + 1)

end A167297

/-! ## A167297.P14396999511825381533

`A167302(n+1)/A000005(A332462(n+1))`
-/

namespace A167297.P14396999511825381533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167302 (n + 1) : ℚ) / (A000005 (A332462 (n + 1)).toNat : ℚ)

end

end A167297.P14396999511825381533

namespace A167297

/-- `A167302(n+1)/A000005(A332462(n+1))` -/
def P14396999511825381533.Spec : Prop :=
  ∀ n, P14396999511825381533.a n = (A167297 (n + 1) : ℚ)

end A167297

/-! ## A167297.P10609582578797587121

`A106609(A106609(A167302(n+1)))`
-/

namespace A167297.P10609582578797587121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A106609 (A167302 (n + 1)).toNat).toNat

end

end A167297.P10609582578797587121

namespace A167297

/-- `A106609(A106609(A167302(n+1)))` -/
def P10609582578797587121.Spec : Prop :=
  ∀ n, P10609582578797587121.a n = A167297 (n + 1)

end A167297

/-!
# A167298: Totally multiplicative sequence with a(p) = 6*(p-2) for prime p.

The programs for A167298, the canonical program `A167298.P7720321459380714383` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167298 has offset 1).

The definition of A167298 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167298.P7720321459380714383

`A165827(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A167298

/-- `A165827(n+1)*A166586(n+1)` -/
def P7720321459380714383.Spec : Prop :=
  ∀ n, P7720321459380714383.a n = A167298 (n + 1)

theorem P7720321459380714383.correct : P7720321459380714383.Spec := by
  intro n
  simp only [A167298, Nat.add_sub_cancel]

end A167298

/-! ## A167298.P10463125200651328475

`6^A001222(n+1)*A166586(n+1)`
-/

namespace A167298.P10463125200651328475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167298.P10463125200651328475

namespace A167298

/-- `6^A001222(n+1)*A166586(n+1)` -/
def P10463125200651328475.Spec : Prop :=
  ∀ n, P10463125200651328475.a n = (A167298 (n + 1) : ℚ)

end A167298

/-! ## A167298.P5298983024239571574

`A061142(n+1)*A167295(n+1)`
-/

namespace A167298.P5298983024239571574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167295 (n + 1)

end

end A167298.P5298983024239571574

namespace A167298

/-- `A061142(n+1)*A167295(n+1)` -/
def P5298983024239571574.Spec : Prop :=
  ∀ n, P5298983024239571574.a n = A167298 (n + 1)

end A167298

/-! ## A167298.P12009507848540599899

`A079065(n+1)*A167294(n+1)`
-/

namespace A167298.P12009507848540599899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 1) * A167294 (n + 1)

end

end A167298.P12009507848540599899

namespace A167298

/-- `A079065(n+1)*A167294(n+1)` -/
def P12009507848540599899.Spec : Prop :=
  ∀ n, P12009507848540599899.a n = A167298 (n + 1)

end A167298

/-! ## A167298.P8026583744565979712

`A165824(n+1)*A167294(n+1)`
-/

namespace A167298.P8026583744565979712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167294 (n + 1)

end

end A167298.P8026583744565979712

namespace A167298

/-- `A165824(n+1)*A167294(n+1)` -/
def P8026583744565979712.Spec : Prop :=
  ∀ n, P8026583744565979712.a n = A167298 (n + 1)

end A167298

/-! ## A167298.P3590393350636896104

`A003959(A061142(n+1))*A167294(n+1)`
-/

namespace A167298.P3590393350636896104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A167294 (n + 1)

end

end A167298.P3590393350636896104

namespace A167298

/-- `A003959(A061142(n+1))*A167294(n+1)` -/
def P3590393350636896104.Spec : Prop :=
  ∀ n, P3590393350636896104.a n = A167298 (n + 1)

end A167298

/-! ## A167298.P4674669418731022713

`A061142(n+1)*A165824(n+1)*A166586(n+1)`
-/

namespace A167298.P4674669418731022713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165824 (n + 1) * A166586 (n + 1)

end

end A167298.P4674669418731022713

namespace A167298

/-- `A061142(n+1)*A165824(n+1)*A166586(n+1)` -/
def P4674669418731022713.Spec : Prop :=
  ∀ n, P4674669418731022713.a n = A167298 (n + 1)

end A167298

/-! ## A167298.P12340855072661739703

`A165824(n+1)/A061142(n+1)*A167296(n+1)`
-/

namespace A167298.P12340855072661739703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167296 (n + 1) : ℚ)

end

end A167298.P12340855072661739703

namespace A167298

/-- `A165824(n+1)/A061142(n+1)*A167296(n+1)` -/
def P12340855072661739703.Spec : Prop :=
  ∀ n, P12340855072661739703.a n = (A167298 (n + 1) : ℚ)

end A167298

/-! ## A167298.P12558331248238020512

`A166586(n+1)*A167357(A165824(n+1))`
-/

namespace A167298.P12558331248238020512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A167357 (A165824 (n + 1)).toNat

end

end A167298.P12558331248238020512

namespace A167298

/-- `A166586(n+1)*A167357(A165824(n+1))` -/
def P12558331248238020512.Spec : Prop :=
  ∀ n, P12558331248238020512.a n = A167298 (n + 1)

end A167298

/-! ## A167298.P10426652955486186736

`A165824(n+1)/A167350(A165824(n+1))*A167300(n+1)`
-/

namespace A167298.P10426652955486186736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A167350 (A165824 (n + 1)).toNat : ℚ) * (A167300 (n + 1) : ℚ)

end

end A167298.P10426652955486186736

namespace A167298

/-- `A165824(n+1)/A167350(A165824(n+1))*A167300(n+1)` -/
def P10426652955486186736.Spec : Prop :=
  ∀ n, P10426652955486186736.a n = (A167298 (n + 1) : ℚ)

end A167298

/-! ## A167298.P12034913606924135824

`A003959(A165826(n+1))*A166586(n+1)`
-/

namespace A167298.P12034913606924135824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A165826 (n + 1)).toNat * A166586 (n + 1)

end

end A167298.P12034913606924135824

namespace A167298

/-- `A003959(A165826(n+1))*A166586(n+1)` -/
def P12034913606924135824.Spec : Prop :=
  ∀ n, P12034913606924135824.a n = A167298 (n + 1)

end A167298

/-! ## A167298.P17705289183799268275

`A003959(A165826(n+1))/A003959(n+1)*A167350(n+1)`
-/

namespace A167298.P17705289183799268275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A165826 (n + 1)).toNat : ℚ) / (A003959 (n + 1) : ℚ) * (A167350 (n + 1) : ℚ)

end

end A167298.P17705289183799268275

namespace A167298

/-- `A003959(A165826(n+1))/A003959(n+1)*A167350(n+1)` -/
def P17705289183799268275.Spec : Prop :=
  ∀ n, P17705289183799268275.a n = (A167298 (n + 1) : ℚ)

end A167298

/-! ## A167298.P7396950082449415338

`A003959(A165826(n+1))/A165826(n+1)*A167297(n+1)`
-/

namespace A167298.P7396950082449415338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A165826 (n + 1)).toNat : ℚ) / (A165826 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167298.P7396950082449415338

namespace A167298

/-- `A003959(A165826(n+1))/A165826(n+1)*A167297(n+1)` -/
def P7396950082449415338.Spec : Prop :=
  ∀ n, P7396950082449415338.a n = (A167298 (n + 1) : ℚ)

end A167298

/-!
# A167299: Totally multiplicative sequence with a(p) = 7*(p-2) for prime p.

The programs for A167299, the canonical program `A167299.P13735396666551431878` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167299 has offset 1).

The definition of A167299 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167299.P13735396666551431878

`A165828(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A167299

/-- `A165828(n+1)*A166586(n+1)` -/
def P13735396666551431878.Spec : Prop :=
  ∀ n, P13735396666551431878.a n = A167299 (n + 1)

theorem P13735396666551431878.correct : P13735396666551431878.Spec := by
  intro n
  simp only [A167299, Nat.add_sub_cancel]

end A167299

/-! ## A167299.P14611455050649170508

`7^A001222(n+1)*A166586(n+1)`
-/

namespace A167299.P14611455050649170508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167299.P14611455050649170508

namespace A167299

/-- `7^A001222(n+1)*A166586(n+1)` -/
def P14611455050649170508.Spec : Prop :=
  ∀ n, P14611455050649170508.a n = (A167299 (n + 1) : ℚ)

end A167299

/-! ## A167299.P9870174634679678982

`sqrt(A167354(n+1))*A165828(n+1)`
-/

namespace A167299.P9870174634679678982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167354 (n + 1) : ℝ) * (A165828 (n + 1) : ℝ)

end

end A167299.P9870174634679678982

namespace A167299

/-- `sqrt(A167354(n+1))*A165828(n+1)` -/
def P9870174634679678982.Spec : Prop :=
  ∀ n, P9870174634679678982.a n = (A167299 (n + 1) : ℝ)

end A167299

/-! ## A167299.P9386410624962840027

`A167295(n+1)/A167304(n+1)*A167308(n+1)`
-/

namespace A167299.P9386410624962840027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167295 (n + 1) : ℚ) / (A167304 (n + 1) : ℚ) * (A167308 (n + 1) : ℚ)

end

end A167299.P9386410624962840027

namespace A167299

/-- `A167295(n+1)/A167304(n+1)*A167308(n+1)` -/
def P9386410624962840027.Spec : Prop :=
  ∀ n, P9386410624962840027.a n = (A167299 (n + 1) : ℚ)

end A167299

/-! ## A167299.P12081036913237529846

`A167300(n+1)*A167326(n+1)/A167327(n+1)`
-/

namespace A167299.P12081036913237529846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167300 (n + 1) * A167326 (n + 1) : ℚ) / (A167327 (n + 1) : ℚ)

end

end A167299.P12081036913237529846

namespace A167299

/-- `A167300(n+1)*A167326(n+1)/A167327(n+1)` -/
def P12081036913237529846.Spec : Prop :=
  ∀ n, P12081036913237529846.a n = (A167299 (n + 1) : ℚ)

end A167299

/-! ## A167299.P10471901286251803621

`A167326(n+1)*A167350(n+1)/A167353(n+1)`
-/

namespace A167299.P10471901286251803621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167326 (n + 1) * A167350 (n + 1) : ℚ) / (A167353 (n + 1) : ℚ)

end

end A167299.P10471901286251803621

namespace A167299

/-- `A167326(n+1)*A167350(n+1)/A167353(n+1)` -/
def P10471901286251803621.Spec : Prop :=
  ∀ n, P10471901286251803621.a n = (A167299 (n + 1) : ℚ)

end A167299

/-! ## A167299.P738294922415574947

`A167308(n+1)/A166590(n+1)²*A167355(n+1)`
-/

namespace A167299.P738294922415574947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167308 (n + 1) : ℚ) / (A166590 (n + 1) ^ 2 : ℚ) * (A167355 (n + 1) : ℚ)

end

end A167299.P738294922415574947

namespace A167299

/-- `A167308(n+1)/A166590(n+1)²*A167355(n+1)` -/
def P738294922415574947.Spec : Prop :=
  ∀ n, P738294922415574947.a n = (A167299 (n + 1) : ℚ)

end A167299

