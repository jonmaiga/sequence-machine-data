import SequenceMachineLib.Basic
import Mathlib.Tactic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
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
# A020447: Expansion of 1/((1-5*x) * (1-8*x) * (1-11*x)).

The programs for A020447, the canonical program `A020447.P10318033105309083517` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020447 has offset 0).

The definition of A020447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020447.P10318033105309083517

`19*a(n-1)-88*a(n-2)+5^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020447

/-- `19*a(n-1)-88*a(n-2)+5^n` -/
def P10318033105309083517.Spec : Prop :=
  ∀ n, P10318033105309083517.a n = A020447 n

theorem P10318033105309083517.correct : P10318033105309083517.Spec := by
  intro n
  simp only [A020447]

end A020447

/-! ## A020447.P13919105185367549945

`25*5^n/18-64*8^n/9+121*11^n/18`
-/

namespace A020447.P13919105185367549945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * 5 ^ n : ℚ) / 18 - (64 * 8 ^ n : ℚ) / 9 + (121 * 11 ^ n : ℚ) / 18

end

end A020447.P13919105185367549945

namespace A020447

/-- `25*5^n/18-64*8^n/9+121*11^n/18` -/
def P13919105185367549945.Spec : Prop :=
  ∀ n, P13919105185367549945.a n = (A020447 n : ℚ)

theorem P13919105185367549945.correct : P13919105185367549945.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020447, Nat.add_sub_cancel, A020447.P13919105185367549945.a, A020447.P10318033105309083517.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020447, Nat.add_sub_cancel, A020447.P13919105185367549945.a, A020447.P10318033105309083517.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020447

/-!
# A020448: Expansion of 1/((1-5x)(1-8x)(1-12x)).

The programs for A020448, the canonical program `A020448.P17408917405240233687` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020448 has offset 0).

The definition of A020448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020448.P17408917405240233687

`20*a(n-1)-96*a(n-2)+5^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020448

/-- `20*a(n-1)-96*a(n-2)+5^n` -/
def P17408917405240233687.Spec : Prop :=
  ∀ n, P17408917405240233687.a n = A020448 n

theorem P17408917405240233687.correct : P17408917405240233687.Spec := by
  intro n
  simp only [A020448]

end A020448

/-! ## A020448.P18371357492056944027

`25*5^n/21-16*8^n/3+36*12^n/7`
-/

namespace A020448.P18371357492056944027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * 5 ^ n : ℚ) / 21 - (16 * 8 ^ n : ℚ) / 3 + (36 * 12 ^ n : ℚ) / 7

end

end A020448.P18371357492056944027

namespace A020448

/-- `25*5^n/21-16*8^n/3+36*12^n/7` -/
def P18371357492056944027.Spec : Prop :=
  ∀ n, P18371357492056944027.a n = (A020448 n : ℚ)

theorem P18371357492056944027.correct : P18371357492056944027.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020448, Nat.add_sub_cancel, A020448.P18371357492056944027.a, A020448.P17408917405240233687.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020448, Nat.add_sub_cancel, A020448.P18371357492056944027.a, A020448.P17408917405240233687.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020448

/-!
# A020449: Primes whose greatest digit is 1.

The programs for A020449, there is no canonical definition to state claims against.
-/

/-! ## A020449.P2668793471293202728

`A069598(n+5)`
-/

namespace A020449.P2668793471293202728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069598 (n + 5)

end

end A020449.P2668793471293202728

/-! ## A020449.P8208464128406265018

`A007088(A036952(n+1))`
-/

namespace A020449.P8208464128406265018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A036952 (n + 1)).toNat

end

end A020449.P8208464128406265018

/-! ## A020449.P4812756434070161721

`record[A077805(n+3)]`
-/

namespace A020449.P4812756434070161721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020449.P4812756434070161721

/-! ## A020449.P17008981004820307172

`A077805(A036952(n+1)%A017186(n))`
-/

namespace A020449.P17008981004820307172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (Int.tmod (A036952 (n + 1)) (A017186 n)).toNat

end

end A020449.P17008981004820307172

/-! ## A020449.P4303301110783161448

`A388300(A036952(2*n+1-n))`
-/

namespace A020449.P4303301110783161448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388300 (A036952 (2 * n + 1 - n)).toNat

end

end A020449.P4303301110783161448

/-! ## A020449.P14178805975686209413

`A077805(lt[A235395(n+1), A077805(n+1)]+1)`
-/

namespace A020449.P14178805975686209413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A020449.P14178805975686209413

/-! ## A020449.P6302344114554242963

`A185544(2*A036952(n+1))`
-/

namespace A020449.P6302344114554242963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A036952 (n + 1)).toNat

end

end A020449.P6302344114554242963

/-! ## A020449.P8822105671868030058

`A185544(lcm(2, A036952(n+1)))`
-/

namespace A020449.P8822105671868030058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A036952 (n + 1)))

end

end A020449.P8822105671868030058

/-! ## A020449.P10660079696704979201

`∩[A036953(n+1), A007088(n)]`
-/

namespace A020449.P10660079696704979201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P10660079696704979201

/-! ## A020449.P18057485646615723060

`∩[A061247(n+1), A007088(n)]`
-/

namespace A020449.P18057485646615723060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P18057485646615723060

/-! ## A020449.P7542077133643077000

`∩[A199325(n+1), A007088(n)]`
-/

namespace A020449.P7542077133643077000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P7542077133643077000

/-! ## A020449.P8702026142453479973

`∩[A199326(n+1), A007088(n)]`
-/

namespace A020449.P8702026142453479973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P8702026142453479973

/-! ## A020449.P8267723708018410667

`∩[A260266(n+1), A007088(n)]`
-/

namespace A020449.P8267723708018410667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P8267723708018410667

/-! ## A020449.P7735300408314884035

`∩[A061247(n+1), A265747(n)]`
-/

namespace A020449.P7735300408314884035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P7735300408314884035

/-! ## A020449.P2560074598581364890

`∩[A061247(n+1), A340051(n)]`
-/

namespace A020449.P2560074598581364890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P2560074598581364890

/-! ## A020449.P15652298753797622447

`∩[A199325(n+1), A265747(n)]`
-/

namespace A020449.P15652298753797622447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P15652298753797622447

/-! ## A020449.P558305815782406316

`∩[A199326(n+1), A265747(n)]`
-/

namespace A020449.P558305815782406316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P558305815782406316

/-! ## A020449.P4899867576290634635

`∩[A260266(n+1), A265747(n)]`
-/

namespace A020449.P4899867576290634635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P4899867576290634635

/-! ## A020449.P12922699342076705899

`∩[A199325(n+1), A340051(n)]`
-/

namespace A020449.P12922699342076705899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P12922699342076705899

/-! ## A020449.P8186106054027786953

`∩[A199326(n+1), A340051(n)]`
-/

namespace A020449.P8186106054027786953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020449.P8186106054027786953

/-!
# A020450: Primes that contain digits 1 and 2 only.

The programs for A020450, there is no canonical definition to state claims against.
-/

/-! ## A020450.P13811796363135638942

`∩[A007931(n+1), A030291(n+1)]`
-/

namespace A020450.P13811796363135638942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P13811796363135638942

/-! ## A020450.P2705465830950722639

`∩[A007931(n+1), A036953(n+1)]`
-/

namespace A020450.P2705465830950722639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P2705465830950722639

/-! ## A020450.P5135132799120238367

`∩[A007931(n+1), A385774(n+1)]`
-/

namespace A020450.P5135132799120238367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P5135132799120238367

/-! ## A020450.P16375840807053171221

`∩[A007931(n+1), A385775(n+1)]`
-/

namespace A020450.P16375840807053171221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P16375840807053171221

/-! ## A020450.P7351141466366733594

`∩[A036953(n+1), A385774(n+1)]`
-/

namespace A020450.P7351141466366733594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P7351141466366733594

/-! ## A020450.P2516306793325947062

`∩[A036953(n+1), A385775(n+1)]`
-/

namespace A020450.P2516306793325947062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P2516306793325947062

/-! ## A020450.P11267527249583306174

`∩[A385774(n+1), A385775(n+1)]`
-/

namespace A020450.P11267527249583306174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P11267527249583306174

/-! ## A020450.P50655311353756140

`∩[A007931(n+1), A260267(n+1)]`
-/

namespace A020450.P50655311353756140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P50655311353756140

/-! ## A020450.P4811833978406866014

`∩[A036953(n+1), A260267(n+1)]`
-/

namespace A020450.P4811833978406866014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P4811833978406866014

/-! ## A020450.P12008377992606720075

`∩[A260267(n+1), A385774(n+1)]`
-/

namespace A020450.P12008377992606720075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P12008377992606720075

/-! ## A020450.P4579158007424366280

`∩[A260267(n+1), A385775(n+1)]`
-/

namespace A020450.P4579158007424366280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P4579158007424366280

/-! ## A020450.P3781711102187182599

`∩[A007931(n+1), A385773(n+1)]`
-/

namespace A020450.P3781711102187182599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P3781711102187182599

/-! ## A020450.P9292249229369580611

`∩[A036953(n+1), A385773(n+1)]`
-/

namespace A020450.P9292249229369580611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P9292249229369580611

/-! ## A020450.P15468260384002624119

`∩[A260267(n+1), A385773(n+1)]`
-/

namespace A020450.P15468260384002624119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P15468260384002624119

/-! ## A020450.P17630973776512004613

`∩[A385773(n+1), A385774(n+1)]`
-/

namespace A020450.P17630973776512004613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P17630973776512004613

/-! ## A020450.P16698235326649885689

`∩[A385773(n+1), A385775(n+1)]`
-/

namespace A020450.P16698235326649885689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P16698235326649885689

/-! ## A020450.P8954851964711508458

`∩[A007931(n+1), A062350(n+1)]`
-/

namespace A020450.P8954851964711508458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P8954851964711508458

/-! ## A020450.P8296650634858117845

`∩[A036953(n+1), A062350(n+1)]`
-/

namespace A020450.P8296650634858117845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P8296650634858117845

/-! ## A020450.P16401498288902267269

`∩[A007931(n+1), A260889(n+1)]`
-/

namespace A020450.P16401498288902267269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P16401498288902267269

/-! ## A020450.P10115318732876856923

`∩[A036953(n+1), A260889(n+1)]`
-/

namespace A020450.P10115318732876856923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020450.P10115318732876856923

/-!
# A020451: Primes that contain digits 1 and 3 only.

The programs for A020451, there is no canonical definition to state claims against.
-/

/-! ## A020451.P1063816126288984588

`∩[A030291(n+1), A032917(n+1)]`
-/

namespace A020451.P1063816126288984588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P1063816126288984588

/-! ## A020451.P7830308629449563464

`∩[A032917(n+1), A329761(n+1)]`
-/

namespace A020451.P7830308629449563464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P7830308629449563464

/-! ## A020451.P2983986944304509028

`∩[A032917(n+1), A199341(n+1)]`
-/

namespace A020451.P2983986944304509028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P2983986944304509028

/-! ## A020451.P18257617281071940870

`∩[A032917(n+1), A260044(n+1)]`
-/

namespace A020451.P18257617281071940870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P18257617281071940870

/-! ## A020451.P5758048400368372330

`∩[A032917(n+1), A260224(n+1)]`
-/

namespace A020451.P5758048400368372330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P5758048400368372330

/-! ## A020451.P2150297673187756192

`∩[A032917(n+1), A385777(n+1)]`
-/

namespace A020451.P2150297673187756192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P2150297673187756192

/-! ## A020451.P8564829824050882625

`∩[A032917(n+1), A385778(n+1)]`
-/

namespace A020451.P8564829824050882625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P8564829824050882625

/-! ## A020451.P11864403887091820243

`∩[A199341(n+1), A260044(n+1)]`
-/

namespace A020451.P11864403887091820243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P11864403887091820243

/-! ## A020451.P11470417649004868291

`∩[A199341(n+1), A260224(n+1)]`
-/

namespace A020451.P11470417649004868291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P11470417649004868291

/-! ## A020451.P320699333508132980

`∩[A260044(n+1), A260224(n+1)]`
-/

namespace A020451.P320699333508132980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P320699333508132980

/-! ## A020451.P12845151943000377442

`∩[A199341(n+1), A329761(n+1)]`
-/

namespace A020451.P12845151943000377442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P12845151943000377442

/-! ## A020451.P17261678703755591586

`∩[A199341(n+1), A385777(n+1)]`
-/

namespace A020451.P17261678703755591586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P17261678703755591586

/-! ## A020451.P9689513802543727960

`∩[A199341(n+1), A385778(n+1)]`
-/

namespace A020451.P9689513802543727960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P9689513802543727960

/-! ## A020451.P10689546562844627245

`∩[A260044(n+1), A329761(n+1)]`
-/

namespace A020451.P10689546562844627245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P10689546562844627245

/-! ## A020451.P14470418243240126216

`∩[A260224(n+1), A329761(n+1)]`
-/

namespace A020451.P14470418243240126216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P14470418243240126216

/-! ## A020451.P13436534212749848281

`∩[A260044(n+1), A385777(n+1)]`
-/

namespace A020451.P13436534212749848281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P13436534212749848281

/-! ## A020451.P8213209238070000187

`∩[A260044(n+1), A385778(n+1)]`
-/

namespace A020451.P8213209238070000187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P8213209238070000187

/-! ## A020451.P15150455507241071818

`∩[A260224(n+1), A385777(n+1)]`
-/

namespace A020451.P15150455507241071818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P15150455507241071818

/-! ## A020451.P18124810909311958870

`∩[A260224(n+1), A385778(n+1)]`
-/

namespace A020451.P18124810909311958870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P18124810909311958870

/-! ## A020451.P15012164913251035381

`∩[A329761(n+1), A385777(n+1)]`
-/

namespace A020451.P15012164913251035381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020451.P15012164913251035381

/-!
# A020452: Primes that contain digits 1 and 4 only.

The programs for A020452, the canonical program `A020452.P1496040102585209443` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020452 has offset 1).

The definition of A020452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020452.P16545064669278043630

`∩[A030291(n+1), A032822(n+1)]`
-/

namespace A020452.P16545064669278043630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P16545064669278043630

namespace A020452

/-- `∩[A030291(n+1), A032822(n+1)]` -/
def P16545064669278043630.Spec : Prop :=
  ∀ n, (P16545064669278043630.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P8641647237554181671

`∩[A032822(n+1), A260266(n+1)]`
-/

namespace A020452.P8641647237554181671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P8641647237554181671

namespace A020452

/-- `∩[A032822(n+1), A260266(n+1)]` -/
def P8641647237554181671.Spec : Prop :=
  ∀ n, (P8641647237554181671.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P16118130916478950522

`∩[A032822(n+1), A260267(n+1)]`
-/

namespace A020452.P16118130916478950522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P16118130916478950522

namespace A020452

/-- `∩[A032822(n+1), A260267(n+1)]` -/
def P16118130916478950522.Spec : Prop :=
  ∀ n, (P16118130916478950522.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P11263089558332550538

`∩[A032822(n+1), A260268(n+1)]`
-/

namespace A020452.P11263089558332550538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P11263089558332550538

namespace A020452

/-- `∩[A032822(n+1), A260268(n+1)]` -/
def P11263089558332550538.Spec : Prop :=
  ∀ n, (P11263089558332550538.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P9608571548789101611

`∩[A032822(n+1), A260269(n+1)]`
-/

namespace A020452.P9608571548789101611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P9608571548789101611

namespace A020452

/-- `∩[A032822(n+1), A260269(n+1)]` -/
def P9608571548789101611.Spec : Prop :=
  ∀ n, (P9608571548789101611.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P11839675877441117993

`∩[A032822(n+1), A260270(n+1)]`
-/

namespace A020452.P11839675877441117993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P11839675877441117993

namespace A020452

/-- `∩[A032822(n+1), A260270(n+1)]` -/
def P11839675877441117993.Spec : Prop :=
  ∀ n, (P11839675877441117993.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P6014389635785916169

`∩[A260266(n+1), A260267(n+1)]`
-/

namespace A020452.P6014389635785916169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P6014389635785916169

namespace A020452

/-- `∩[A260266(n+1), A260267(n+1)]` -/
def P6014389635785916169.Spec : Prop :=
  ∀ n, (P6014389635785916169.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P7454251200448347473

`∩[A260266(n+1), A260268(n+1)]`
-/

namespace A020452.P7454251200448347473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P7454251200448347473

namespace A020452

/-- `∩[A260266(n+1), A260268(n+1)]` -/
def P7454251200448347473.Spec : Prop :=
  ∀ n, (P7454251200448347473.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P8177880645066534471

`∩[A260266(n+1), A260269(n+1)]`
-/

namespace A020452.P8177880645066534471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P8177880645066534471

namespace A020452

/-- `∩[A260266(n+1), A260269(n+1)]` -/
def P8177880645066534471.Spec : Prop :=
  ∀ n, (P8177880645066534471.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P1496040102585209443

`∩[A260267(n+1), A260268(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A020452

/-- `∩[A260267(n+1), A260268(n+1)]` -/
def P1496040102585209443.Spec : Prop :=
  ∀ n, (P1496040102585209443.a n : ℤ) = A020452 (n + 1)

theorem P1496040102585209443.correct : P1496040102585209443.Spec := by
  intro n
  simp only [A020452, Nat.add_sub_cancel]

end A020452

/-! ## A020452.P6527955971240517249

`∩[A260266(n+1), A260270(n+1)]`
-/

namespace A020452.P6527955971240517249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P6527955971240517249

namespace A020452

/-- `∩[A260266(n+1), A260270(n+1)]` -/
def P6527955971240517249.Spec : Prop :=
  ∀ n, (P6527955971240517249.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P5684570276552176828

`∩[A260267(n+1), A260269(n+1)]`
-/

namespace A020452.P5684570276552176828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P5684570276552176828

namespace A020452

/-- `∩[A260267(n+1), A260269(n+1)]` -/
def P5684570276552176828.Spec : Prop :=
  ∀ n, (P5684570276552176828.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P17889639253900161151

`∩[A260267(n+1), A260270(n+1)]`
-/

namespace A020452.P17889639253900161151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P17889639253900161151

namespace A020452

/-- `∩[A260267(n+1), A260270(n+1)]` -/
def P17889639253900161151.Spec : Prop :=
  ∀ n, (P17889639253900161151.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P12153542307610428106

`∩[A260268(n+1), A260269(n+1)]`
-/

namespace A020452.P12153542307610428106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P12153542307610428106

namespace A020452

/-- `∩[A260268(n+1), A260269(n+1)]` -/
def P12153542307610428106.Spec : Prop :=
  ∀ n, (P12153542307610428106.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P5719852974091195366

`∩[A260268(n+1), A260270(n+1)]`
-/

namespace A020452.P5719852974091195366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P5719852974091195366

namespace A020452

/-- `∩[A260268(n+1), A260270(n+1)]` -/
def P5719852974091195366.Spec : Prop :=
  ∀ n, (P5719852974091195366.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P15056046272816827949

`∩[A260269(n+1), A260270(n+1)]`
-/

namespace A020452.P15056046272816827949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P15056046272816827949

namespace A020452

/-- `∩[A260269(n+1), A260270(n+1)]` -/
def P15056046272816827949.Spec : Prop :=
  ∀ n, (P15056046272816827949.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P8470737379102890545

`∩[A032822(n+1), A260271(n+1)]`
-/

namespace A020452.P8470737379102890545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P8470737379102890545

namespace A020452

/-- `∩[A032822(n+1), A260271(n+1)]` -/
def P8470737379102890545.Spec : Prop :=
  ∀ n, (P8470737379102890545.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P15239927297864874414

`∩[A260266(n+1), A260271(n+1)]`
-/

namespace A020452.P15239927297864874414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P15239927297864874414

namespace A020452

/-- `∩[A260266(n+1), A260271(n+1)]` -/
def P15239927297864874414.Spec : Prop :=
  ∀ n, (P15239927297864874414.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P4455516255101191458

`∩[A260267(n+1), A260271(n+1)]`
-/

namespace A020452.P4455516255101191458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P4455516255101191458

namespace A020452

/-- `∩[A260267(n+1), A260271(n+1)]` -/
def P4455516255101191458.Spec : Prop :=
  ∀ n, (P4455516255101191458.a n : ℤ) = A020452 (n + 1)

end A020452

/-! ## A020452.P5540536600685728609

`∩[A260268(n+1), A260271(n+1)]`
-/

namespace A020452.P5540536600685728609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020452.P5540536600685728609

namespace A020452

/-- `∩[A260268(n+1), A260271(n+1)]` -/
def P5540536600685728609.Spec : Prop :=
  ∀ n, (P5540536600685728609.a n : ℤ) = A020452 (n + 1)

end A020452

/-!
# A020453: Primes that contain digits 1 and 5 only.

The programs for A020453, the canonical program `A020453.P198086646087842169` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020453 has offset 1).

The definition of A020453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020453.P7687121978986677400

`∩[A030291(n+1), A276037(n+1)]`
-/

namespace A020453.P7687121978986677400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P7687121978986677400

namespace A020453

/-- `∩[A030291(n+1), A276037(n+1)]` -/
def P7687121978986677400.Spec : Prop :=
  ∀ n, (P7687121978986677400.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P198086646087842169

`∩[A199325(n+1), A276037(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A020453

/-- `∩[A199325(n+1), A276037(n+1)]` -/
def P198086646087842169.Spec : Prop :=
  ∀ n, (P198086646087842169.a n : ℤ) = A020453 (n + 1)

theorem P198086646087842169.correct : P198086646087842169.Spec := by
  intro n
  simp only [A020453, Nat.add_sub_cancel]

end A020453

/-! ## A020453.P13815370383355458259

`∩[A199325(n+1), A385779(n+1)]`
-/

namespace A020453.P13815370383355458259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P13815370383355458259

namespace A020453

/-- `∩[A199325(n+1), A385779(n+1)]` -/
def P13815370383355458259.Spec : Prop :=
  ∀ n, (P13815370383355458259.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P15591483400422539147

`∩[A199325(n+1), A385780(n+1)]`
-/

namespace A020453.P15591483400422539147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P15591483400422539147

namespace A020453

/-- `∩[A199325(n+1), A385780(n+1)]` -/
def P15591483400422539147.Spec : Prop :=
  ∀ n, (P15591483400422539147.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P375351592225644075

`∩[A276037(n+1), A385779(n+1)]`
-/

namespace A020453.P375351592225644075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P375351592225644075

namespace A020453

/-- `∩[A276037(n+1), A385779(n+1)]` -/
def P375351592225644075.Spec : Prop :=
  ∀ n, (P375351592225644075.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P18172108787196138217

`∩[A276037(n+1), A385780(n+1)]`
-/

namespace A020453.P18172108787196138217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P18172108787196138217

namespace A020453

/-- `∩[A276037(n+1), A385780(n+1)]` -/
def P18172108787196138217.Spec : Prop :=
  ∀ n, (P18172108787196138217.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P17954372694719965354

`∩[A385779(n+1), A385780(n+1)]`
-/

namespace A020453.P17954372694719965354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P17954372694719965354

namespace A020453

/-- `∩[A385779(n+1), A385780(n+1)]` -/
def P17954372694719965354.Spec : Prop :=
  ∀ n, (P17954372694719965354.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P8994941110389406455

`∩[A199325(n+1), A260268(n+1)]`
-/

namespace A020453.P8994941110389406455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P8994941110389406455

namespace A020453

/-- `∩[A199325(n+1), A260268(n+1)]` -/
def P8994941110389406455.Spec : Prop :=
  ∀ n, (P8994941110389406455.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P15755804854960279619

`∩[A260268(n+1), A276037(n+1)]`
-/

namespace A020453.P15755804854960279619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P15755804854960279619

namespace A020453

/-- `∩[A260268(n+1), A276037(n+1)]` -/
def P15755804854960279619.Spec : Prop :=
  ∀ n, (P15755804854960279619.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P15351417205516080925

`∩[A260268(n+1), A385779(n+1)]`
-/

namespace A020453.P15351417205516080925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P15351417205516080925

namespace A020453

/-- `∩[A260268(n+1), A385779(n+1)]` -/
def P15351417205516080925.Spec : Prop :=
  ∀ n, (P15351417205516080925.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P16211501706260209366

`∩[A260268(n+1), A385780(n+1)]`
-/

namespace A020453.P16211501706260209366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P16211501706260209366

namespace A020453

/-- `∩[A260268(n+1), A385780(n+1)]` -/
def P16211501706260209366.Spec : Prop :=
  ∀ n, (P16211501706260209366.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P3259103659150279162

`∩[A199325(n+1), A385773(n+1)]`
-/

namespace A020453.P3259103659150279162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P3259103659150279162

namespace A020453

/-- `∩[A199325(n+1), A385773(n+1)]` -/
def P3259103659150279162.Spec : Prop :=
  ∀ n, (P3259103659150279162.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P8502413769524875694

`∩[A260268(n+1), A385773(n+1)]`
-/

namespace A020453.P8502413769524875694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P8502413769524875694

namespace A020453

/-- `∩[A260268(n+1), A385773(n+1)]` -/
def P8502413769524875694.Spec : Prop :=
  ∀ n, (P8502413769524875694.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P15278634446257533739

`∩[A276037(n+1), A385773(n+1)]`
-/

namespace A020453.P15278634446257533739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P15278634446257533739

namespace A020453

/-- `∩[A276037(n+1), A385773(n+1)]` -/
def P15278634446257533739.Spec : Prop :=
  ∀ n, (P15278634446257533739.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P10616078906381117525

`∩[A385773(n+1), A385779(n+1)]`
-/

namespace A020453.P10616078906381117525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P10616078906381117525

namespace A020453

/-- `∩[A385773(n+1), A385779(n+1)]` -/
def P10616078906381117525.Spec : Prop :=
  ∀ n, (P10616078906381117525.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P1852929378512973395

`∩[A385773(n+1), A385780(n+1)]`
-/

namespace A020453.P1852929378512973395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P1852929378512973395

namespace A020453

/-- `∩[A385773(n+1), A385780(n+1)]` -/
def P1852929378512973395.Spec : Prop :=
  ∀ n, (P1852929378512973395.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P12849604653593323230

`∩[A199325(n+1), A260828(n+1)]`
-/

namespace A020453.P12849604653593323230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P12849604653593323230

namespace A020453

/-- `∩[A199325(n+1), A260828(n+1)]` -/
def P12849604653593323230.Spec : Prop :=
  ∀ n, (P12849604653593323230.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P12819334943904490508

`∩[A260268(n+1), A260828(n+1)]`
-/

namespace A020453.P12819334943904490508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P12819334943904490508

namespace A020453

/-- `∩[A260268(n+1), A260828(n+1)]` -/
def P12819334943904490508.Spec : Prop :=
  ∀ n, (P12819334943904490508.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P13414296412781744616

`∩[A260828(n+1), A276037(n+1)]`
-/

namespace A020453.P13414296412781744616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P13414296412781744616

namespace A020453

/-- `∩[A260828(n+1), A276037(n+1)]` -/
def P13414296412781744616.Spec : Prop :=
  ∀ n, (P13414296412781744616.a n : ℤ) = A020453 (n + 1)

end A020453

/-! ## A020453.P18134311429581331669

`∩[A199325(n+1), A385781(n+1)]`
-/

namespace A020453.P18134311429581331669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020453.P18134311429581331669

namespace A020453

/-- `∩[A199325(n+1), A385781(n+1)]` -/
def P18134311429581331669.Spec : Prop :=
  ∀ n, (P18134311429581331669.a n : ℤ) = A020453 (n + 1)

end A020453

/-!
# A020454: Primes that contain digits 1 and 6 only.

The programs for A020454, there is no canonical definition to state claims against.
-/

/-! ## A020454.P5557200092846118185

`∩[A030291(n+1), A284293(n+1)]`
-/

namespace A020454.P5557200092846118185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P5557200092846118185

/-! ## A020454.P11826511015771595905

`∩[A199326(n+1), A284293(n+1)]`
-/

namespace A020454.P11826511015771595905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P11826511015771595905

/-! ## A020454.P488881027546118174

`∩[A199326(n+1), A385782(n+1)]`
-/

namespace A020454.P488881027546118174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P488881027546118174

/-! ## A020454.P14956968595758067287

`∩[A284293(n+1), A385782(n+1)]`
-/

namespace A020454.P14956968595758067287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P14956968595758067287

/-! ## A020454.P3606152242513580230

`∩[A199326(n+1), A260269(n+1)]`
-/

namespace A020454.P3606152242513580230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P3606152242513580230

/-! ## A020454.P2660035158439924831

`∩[A260269(n+1), A284293(n+1)]`
-/

namespace A020454.P2660035158439924831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P2660035158439924831

/-! ## A020454.P17172978548287458451

`∩[A199326(n+1), A385774(n+1)]`
-/

namespace A020454.P17172978548287458451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P17172978548287458451

/-! ## A020454.P16870978148488802815

`∩[A199326(n+1), A385779(n+1)]`
-/

namespace A020454.P16870978148488802815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P16870978148488802815

/-! ## A020454.P16245944189525916299

`∩[A260269(n+1), A385774(n+1)]`
-/

namespace A020454.P16245944189525916299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P16245944189525916299

/-! ## A020454.P10138442337127322335

`∩[A260269(n+1), A385779(n+1)]`
-/

namespace A020454.P10138442337127322335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P10138442337127322335

/-! ## A020454.P12034068506048586319

`∩[A260269(n+1), A385782(n+1)]`
-/

namespace A020454.P12034068506048586319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P12034068506048586319

/-! ## A020454.P5208141207576345448

`∩[A284293(n+1), A385774(n+1)]`
-/

namespace A020454.P5208141207576345448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P5208141207576345448

/-! ## A020454.P7974532248393350184

`∩[A284293(n+1), A385779(n+1)]`
-/

namespace A020454.P7974532248393350184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P7974532248393350184

/-! ## A020454.P921698140229213777

`∩[A385774(n+1), A385779(n+1)]`
-/

namespace A020454.P921698140229213777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P921698140229213777

/-! ## A020454.P2377345937335561334

`∩[A385774(n+1), A385782(n+1)]`
-/

namespace A020454.P2377345937335561334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P2377345937335561334

/-! ## A020454.P15951300234686507452

`∩[A385779(n+1), A385782(n+1)]`
-/

namespace A020454.P15951300234686507452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P15951300234686507452

/-! ## A020454.P10637281985326124729

`∩[A199326(n+1), A260891(n+1)]`
-/

namespace A020454.P10637281985326124729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P10637281985326124729

/-! ## A020454.P1592597064434201052

`∩[A260269(n+1), A260891(n+1)]`
-/

namespace A020454.P1592597064434201052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P1592597064434201052

/-! ## A020454.P12060343632782753614

`∩[A260891(n+1), A284293(n+1)]`
-/

namespace A020454.P12060343632782753614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P12060343632782753614

/-! ## A020454.P16882564911069415045

`∩[A199326(n+1), A363023(n+1)]`
-/

namespace A020454.P16882564911069415045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020454.P16882564911069415045

/-!
# A020455: Primes that contain digits 1 and 7 only.

The programs for A020455, there is no canonical definition to state claims against.
-/

/-! ## A020455.P7731597411202676905

`∩[A030291(n+1), A276039(n+1)]`
-/

namespace A020455.P7731597411202676905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P7731597411202676905

/-! ## A020455.P12467715176500346199

`∩[A199327(n+1), A260892(n+1)]`
-/

namespace A020455.P12467715176500346199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P12467715176500346199

/-! ## A020455.P14056095261210418922

`∩[A199327(n+1), A276039(n+1)]`
-/

namespace A020455.P14056095261210418922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P14056095261210418922

/-! ## A020455.P16132802487076583513

`∩[A260892(n+1), A276039(n+1)]`
-/

namespace A020455.P16132802487076583513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P16132802487076583513

/-! ## A020455.P12578250507684283629

`∩[A199327(n+1), A260889(n+1)]`
-/

namespace A020455.P12578250507684283629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P12578250507684283629

/-! ## A020455.P9927915660030583952

`∩[A260889(n+1), A260892(n+1)]`
-/

namespace A020455.P9927915660030583952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P9927915660030583952

/-! ## A020455.P1703738483890248250

`∩[A260889(n+1), A276039(n+1)]`
-/

namespace A020455.P1703738483890248250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P1703738483890248250

/-! ## A020455.P13593440770626278166

`∩[A199327(n+1), A260891(n+1)]`
-/

namespace A020455.P13593440770626278166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P13593440770626278166

/-! ## A020455.P11573323085462503316

`∩[A260889(n+1), A260891(n+1)]`
-/

namespace A020455.P11573323085462503316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P11573323085462503316

/-! ## A020455.P8594971460301179547

`∩[A260891(n+1), A260892(n+1)]`
-/

namespace A020455.P8594971460301179547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P8594971460301179547

/-! ## A020455.P8364442643429526981

`∩[A260891(n+1), A276039(n+1)]`
-/

namespace A020455.P8364442643429526981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P8364442643429526981

/-! ## A020455.P17852261467549339011

`∩[A260891(n+1), A385295(n+1)]`
-/

namespace A020455.P17852261467549339011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P17852261467549339011

/-! ## A020455.P8961929163449451922

`∩[A079651(n+1), A199327(n+1)]`
-/

namespace A020455.P8961929163449451922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P8961929163449451922

/-! ## A020455.P3345021578867334122

`∩[A079651(n+1), A260828(n+1)]`
-/

namespace A020455.P3345021578867334122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P3345021578867334122

/-! ## A020455.P2685103089182482262

`∩[A079651(n+1), A260889(n+1)]`
-/

namespace A020455.P2685103089182482262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P2685103089182482262

/-! ## A020455.P11033890548355009749

`∩[A079651(n+1), A260891(n+1)]`
-/

namespace A020455.P11033890548355009749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P11033890548355009749

/-! ## A020455.P4478270300653109831

`∩[A079651(n+1), A260892(n+1)]`
-/

namespace A020455.P4478270300653109831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P4478270300653109831

/-! ## A020455.P323241364028684570

`∩[A079651(n+1), A276039(n+1)]`
-/

namespace A020455.P323241364028684570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P323241364028684570

/-! ## A020455.P5441999153513564900

`∩[A199327(n+1), A260828(n+1)]`
-/

namespace A020455.P5441999153513564900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P5441999153513564900

/-! ## A020455.P12221014560595195385

`∩[A079651(n+1), A385295(n+1)]`
-/

namespace A020455.P12221014560595195385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020455.P12221014560595195385

/-!
# A020456: Primes that contain digits 1 and 8 only.

The programs for A020456, the canonical program `A020456.P4580434913715726970` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020456 has offset 1).

The definition of A020456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020456.P16658912796078625792

`∩[A061247(n+1), A213084(n+1)]`
-/

namespace A020456.P16658912796078625792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P16658912796078625792

namespace A020456

/-- `∩[A061247(n+1), A213084(n+1)]` -/
def P16658912796078625792.Spec : Prop :=
  ∀ n, (P16658912796078625792.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P9238151129200985295

`∩[A061247(n+1), A260270(n+1)]`
-/

namespace A020456.P9238151129200985295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P9238151129200985295

namespace A020456

/-- `∩[A061247(n+1), A260270(n+1)]` -/
def P9238151129200985295.Spec : Prop :=
  ∀ n, (P9238151129200985295.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P7755898547598308769

`∩[A061247(n+1), A385775(n+1)]`
-/

namespace A020456.P7755898547598308769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P7755898547598308769

namespace A020456

/-- `∩[A061247(n+1), A385775(n+1)]` -/
def P7755898547598308769.Spec : Prop :=
  ∀ n, (P7755898547598308769.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P11068519709147151547

`∩[A061247(n+1), A385780(n+1)]`
-/

namespace A020456.P11068519709147151547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P11068519709147151547

namespace A020456

/-- `∩[A061247(n+1), A385780(n+1)]` -/
def P11068519709147151547.Spec : Prop :=
  ∀ n, (P11068519709147151547.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P17934533267059379541

`∩[A061247(n+1), A385782(n+1)]`
-/

namespace A020456.P17934533267059379541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P17934533267059379541

namespace A020456

/-- `∩[A061247(n+1), A385782(n+1)]` -/
def P17934533267059379541.Spec : Prop :=
  ∀ n, (P17934533267059379541.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P8410366517339183530

`∩[A213084(n+1), A260270(n+1)]`
-/

namespace A020456.P8410366517339183530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P8410366517339183530

namespace A020456

/-- `∩[A213084(n+1), A260270(n+1)]` -/
def P8410366517339183530.Spec : Prop :=
  ∀ n, (P8410366517339183530.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P8917192630844587431

`∩[A213084(n+1), A385775(n+1)]`
-/

namespace A020456.P8917192630844587431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P8917192630844587431

namespace A020456

/-- `∩[A213084(n+1), A385775(n+1)]` -/
def P8917192630844587431.Spec : Prop :=
  ∀ n, (P8917192630844587431.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P9364033343666935393

`∩[A213084(n+1), A385780(n+1)]`
-/

namespace A020456.P9364033343666935393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P9364033343666935393

namespace A020456

/-- `∩[A213084(n+1), A385780(n+1)]` -/
def P9364033343666935393.Spec : Prop :=
  ∀ n, (P9364033343666935393.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P12455408332358325709

`∩[A213084(n+1), A385782(n+1)]`
-/

namespace A020456.P12455408332358325709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P12455408332358325709

namespace A020456

/-- `∩[A213084(n+1), A385782(n+1)]` -/
def P12455408332358325709.Spec : Prop :=
  ∀ n, (P12455408332358325709.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P9835914273923863472

`∩[A260270(n+1), A385775(n+1)]`
-/

namespace A020456.P9835914273923863472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P9835914273923863472

namespace A020456

/-- `∩[A260270(n+1), A385775(n+1)]` -/
def P9835914273923863472.Spec : Prop :=
  ∀ n, (P9835914273923863472.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P16564075030742904011

`∩[A260270(n+1), A385780(n+1)]`
-/

namespace A020456.P16564075030742904011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P16564075030742904011

namespace A020456

/-- `∩[A260270(n+1), A385780(n+1)]` -/
def P16564075030742904011.Spec : Prop :=
  ∀ n, (P16564075030742904011.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P7997963173193544854

`∩[A260270(n+1), A385782(n+1)]`
-/

namespace A020456.P7997963173193544854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P7997963173193544854

namespace A020456

/-- `∩[A260270(n+1), A385782(n+1)]` -/
def P7997963173193544854.Spec : Prop :=
  ∀ n, (P7997963173193544854.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P11113469985560571347

`∩[A385775(n+1), A385780(n+1)]`
-/

namespace A020456.P11113469985560571347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P11113469985560571347

namespace A020456

/-- `∩[A385775(n+1), A385780(n+1)]` -/
def P11113469985560571347.Spec : Prop :=
  ∀ n, (P11113469985560571347.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P11611180343016957751

`∩[A385775(n+1), A385782(n+1)]`
-/

namespace A020456.P11611180343016957751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P11611180343016957751

namespace A020456

/-- `∩[A385775(n+1), A385782(n+1)]` -/
def P11611180343016957751.Spec : Prop :=
  ∀ n, (P11611180343016957751.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P9062773354818784076

`∩[A385780(n+1), A385782(n+1)]`
-/

namespace A020456.P9062773354818784076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P9062773354818784076

namespace A020456

/-- `∩[A385780(n+1), A385782(n+1)]` -/
def P9062773354818784076.Spec : Prop :=
  ∀ n, (P9062773354818784076.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P11090383425313864798

`∩[A061247(n+1), A385783(n+1)]`
-/

namespace A020456.P11090383425313864798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P11090383425313864798

namespace A020456

/-- `∩[A061247(n+1), A385783(n+1)]` -/
def P11090383425313864798.Spec : Prop :=
  ∀ n, (P11090383425313864798.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P4580434913715726970

`∩[A213084(n+1), A385783(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A020456

/-- `∩[A213084(n+1), A385783(n+1)]` -/
def P4580434913715726970.Spec : Prop :=
  ∀ n, (P4580434913715726970.a n : ℤ) = A020456 (n + 1)

theorem P4580434913715726970.correct : P4580434913715726970.Spec := by
  intro n
  simp only [A020456, Nat.add_sub_cancel]

end A020456

/-! ## A020456.P10836476848513850297

`∩[A260270(n+1), A385783(n+1)]`
-/

namespace A020456.P10836476848513850297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P10836476848513850297

namespace A020456

/-- `∩[A260270(n+1), A385783(n+1)]` -/
def P10836476848513850297.Spec : Prop :=
  ∀ n, (P10836476848513850297.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P4592939711401700392

`∩[A385775(n+1), A385783(n+1)]`
-/

namespace A020456.P4592939711401700392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P4592939711401700392

namespace A020456

/-- `∩[A385775(n+1), A385783(n+1)]` -/
def P4592939711401700392.Spec : Prop :=
  ∀ n, (P4592939711401700392.a n : ℤ) = A020456 (n + 1)

end A020456

/-! ## A020456.P11100495270585666926

`∩[A385780(n+1), A385783(n+1)]`
-/

namespace A020456.P11100495270585666926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020456.P11100495270585666926

namespace A020456

/-- `∩[A385780(n+1), A385783(n+1)]` -/
def P11100495270585666926.Spec : Prop :=
  ∀ n, (P11100495270585666926.a n : ℤ) = A020456 (n + 1)

end A020456

/-!
# A020457: Primes that contain digits 1 and 9 only.

The programs for A020457, there is no canonical definition to state claims against.
-/

/-! ## A020457.P17148296940279877253

`∩[A030291(n+1), A284294(n+1)]`
-/

namespace A020457.P17148296940279877253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P17148296940279877253

/-! ## A020457.P15428622003774335446

`∩[A199329(n+1), A284294(n+1)]`
-/

namespace A020457.P15428622003774335446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P15428622003774335446

/-! ## A020457.P11689694481434174782

`∩[A199329(n+1), A329761(n+1)]`
-/

namespace A020457.P11689694481434174782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P11689694481434174782

/-! ## A020457.P3228550420363702923

`∩[A199329(n+1), A385297(n+1)]`
-/

namespace A020457.P3228550420363702923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P3228550420363702923

/-! ## A020457.P17522078435878981199

`∩[A284294(n+1), A329761(n+1)]`
-/

namespace A020457.P17522078435878981199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P17522078435878981199

/-! ## A020457.P9395623362740200181

`∩[A199329(n+1), A260271(n+1)]`
-/

namespace A020457.P9395623362740200181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P9395623362740200181

/-! ## A020457.P778938353410037241

`∩[A260271(n+1), A284294(n+1)]`
-/

namespace A020457.P778938353410037241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P778938353410037241

/-! ## A020457.P10964424993278004803

`∩[A260271(n+1), A329761(n+1)]`
-/

namespace A020457.P10964424993278004803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P10964424993278004803

/-! ## A020457.P11451610394826362213

`∩[A260271(n+1), A385297(n+1)]`
-/

namespace A020457.P11451610394826362213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P11451610394826362213

/-! ## A020457.P6887035575053326398

`∩[A199329(n+1), A363023(n+1)]`
-/

namespace A020457.P6887035575053326398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P6887035575053326398

/-! ## A020457.P9803823581619810463

`∩[A199329(n+1), A385783(n+1)]`
-/

namespace A020457.P9803823581619810463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P9803823581619810463

/-! ## A020457.P16379858453331537430

`∩[A260271(n+1), A363023(n+1)]`
-/

namespace A020457.P16379858453331537430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P16379858453331537430

/-! ## A020457.P14136782975032517790

`∩[A260271(n+1), A385783(n+1)]`
-/

namespace A020457.P14136782975032517790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P14136782975032517790

/-! ## A020457.P5335437950669586302

`∩[A284294(n+1), A363023(n+1)]`
-/

namespace A020457.P5335437950669586302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P5335437950669586302

/-! ## A020457.P3077287126471123021

`∩[A284294(n+1), A385783(n+1)]`
-/

namespace A020457.P3077287126471123021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P3077287126471123021

/-! ## A020457.P5613976646306206997

`∩[A329761(n+1), A363023(n+1)]`
-/

namespace A020457.P5613976646306206997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P5613976646306206997

/-! ## A020457.P11820663697951949661

`∩[A329761(n+1), A385783(n+1)]`
-/

namespace A020457.P11820663697951949661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P11820663697951949661

/-! ## A020457.P6879574707337316193

`∩[A363023(n+1), A385297(n+1)]`
-/

namespace A020457.P6879574707337316193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P6879574707337316193

/-! ## A020457.P14782792888686815671

`∩[A363023(n+1), A385783(n+1)]`
-/

namespace A020457.P14782792888686815671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P14782792888686815671

/-! ## A020457.P2392583695838966738

`∩[A385297(n+1), A385783(n+1)]`
-/

namespace A020457.P2392583695838966738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020457.P2392583695838966738

/-!
# A020458: Primes that contain digits 2 and 3 only.

The programs for A020458, there is no canonical definition to state claims against.
-/

/-! ## A020458.P4310579188958580498

`∩[A030291(n+1), A032810(n+1)]`
-/

namespace A020458.P4310579188958580498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P4310579188958580498

/-! ## A020458.P4822489199047730608

`∩[A030291(n+1), A260126(n+1)]`
-/

namespace A020458.P4822489199047730608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P4822489199047730608

/-! ## A020458.P12731236965728457132

`∩[A032810(n+1), A260126(n+1)]`
-/

namespace A020458.P12731236965728457132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P12731236965728457132

/-! ## A020458.P3956616527405430744

`∩[A032810(n+1), A214703(n+1)]`
-/

namespace A020458.P3956616527405430744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P3956616527405430744

/-! ## A020458.P5615604391906206869

`∩[A030291(n+1), A260125(n+1)]`
-/

namespace A020458.P5615604391906206869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P5615604391906206869

/-! ## A020458.P14059419679856236754

`∩[A032810(n+1), A260125(n+1)]`
-/

namespace A020458.P14059419679856236754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P14059419679856236754

/-! ## A020458.P13461317908891794259

`∩[A214703(n+1), A260125(n+1)]`
-/

namespace A020458.P13461317908891794259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P13461317908891794259

/-! ## A020458.P7794908891438744312

`∩[A214703(n+1), A260126(n+1)]`
-/

namespace A020458.P7794908891438744312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P7794908891438744312

/-! ## A020458.P5286584493066713151

`∩[A260125(n+1), A260126(n+1)]`
-/

namespace A020458.P5286584493066713151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P5286584493066713151

/-! ## A020458.P3653767034725269359

`∩[A032810(n+1), A199342(n+1)]`
-/

namespace A020458.P3653767034725269359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P3653767034725269359

/-! ## A020458.P14368374673431651280

`∩[A199342(n+1), A214703(n+1)]`
-/

namespace A020458.P14368374673431651280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P14368374673431651280

/-! ## A020458.P11744299942015761603

`∩[A199342(n+1), A260125(n+1)]`
-/

namespace A020458.P11744299942015761603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P11744299942015761603

/-! ## A020458.P8732109924156261825

`∩[A199342(n+1), A260126(n+1)]`
-/

namespace A020458.P8732109924156261825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P8732109924156261825

/-! ## A020458.P11800356252160208822

`∩[A032810(n+1), A260127(n+1)]`
-/

namespace A020458.P11800356252160208822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P11800356252160208822

/-! ## A020458.P12382248260308841301

`∩[A199342(n+1), A260127(n+1)]`
-/

namespace A020458.P12382248260308841301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P12382248260308841301

/-! ## A020458.P7751777038469383638

`∩[A214703(n+1), A260127(n+1)]`
-/

namespace A020458.P7751777038469383638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P7751777038469383638

/-! ## A020458.P12767257719138800427

`∩[A260125(n+1), A260127(n+1)]`
-/

namespace A020458.P12767257719138800427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P12767257719138800427

/-! ## A020458.P18255358892672205761

`∩[A260126(n+1), A260127(n+1)]`
-/

namespace A020458.P18255358892672205761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P18255358892672205761

/-! ## A020458.P724276708827471082

`∩[A032810(n+1), A214704(n+1)]`
-/

namespace A020458.P724276708827471082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P724276708827471082

/-! ## A020458.P4873880337942359407

`∩[A032810(n+1), A260128(n+1)]`
-/

namespace A020458.P4873880337942359407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020458.P4873880337942359407

/-!
# A020459: Primes that contain digits 2 and 7 only.

The programs for A020459, there is no canonical definition to state claims against.
-/

/-! ## A020459.P13733895018800009105

`∩[A030291(n+1), A284921(n+1)]`
-/

namespace A020459.P13733895018800009105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P13733895018800009105

/-! ## A020459.P3582270228482189158

`∩[A030291(n+1), A261267(n+1)]`
-/

namespace A020459.P3582270228482189158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P3582270228482189158

/-! ## A020459.P5855833811258361562

`∩[A261267(n+1), A284921(n+1)]`
-/

namespace A020459.P5855833811258361562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P5855833811258361562

/-! ## A020459.P7043193544341230732

`∩[A261267(n+1), A385789(n+1)]`
-/

namespace A020459.P7043193544341230732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P7043193544341230732

/-! ## A020459.P17720779594372486573

`∩[A284921(n+1), A385789(n+1)]`
-/

namespace A020459.P17720779594372486573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P17720779594372486573

/-! ## A020459.P7264748353867881358

`∩[A261267(n+1), A385787(n+1)]`
-/

namespace A020459.P7264748353867881358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P7264748353867881358

/-! ## A020459.P2428531680984603083

`∩[A284921(n+1), A385787(n+1)]`
-/

namespace A020459.P2428531680984603083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P2428531680984603083

/-! ## A020459.P5673857776261275501

`∩[A385787(n+1), A385789(n+1)]`
-/

namespace A020459.P5673857776261275501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P5673857776261275501

/-! ## A020459.P2922121713255609353

`∩[A214705(n+1), A261267(n+1)]`
-/

namespace A020459.P2922121713255609353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P2922121713255609353

/-! ## A020459.P1921370929874581625

`∩[A214705(n+1), A284921(n+1)]`
-/

namespace A020459.P1921370929874581625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P1921370929874581625

/-! ## A020459.P9591916193010062920

`∩[A214705(n+1), A385787(n+1)]`
-/

namespace A020459.P9591916193010062920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P9591916193010062920

/-! ## A020459.P3554127915684768431

`∩[A214705(n+1), A385789(n+1)]`
-/

namespace A020459.P3554127915684768431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P3554127915684768431

/-! ## A020459.P2923201323254015918

`∩[A214705(n+1), A385784(n+1)]`
-/

namespace A020459.P2923201323254015918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P2923201323254015918

/-! ## A020459.P2418323750449179574

`∩[A261267(n+1), A385784(n+1)]`
-/

namespace A020459.P2418323750449179574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P2418323750449179574

/-! ## A020459.P444688055338898858

`∩[A284921(n+1), A385784(n+1)]`
-/

namespace A020459.P444688055338898858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P444688055338898858

/-! ## A020459.P4151137512382977448

`∩[A385784(n+1), A385787(n+1)]`
-/

namespace A020459.P4151137512382977448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P4151137512382977448

/-! ## A020459.P6949001817470744104

`∩[A385784(n+1), A385789(n+1)]`
-/

namespace A020459.P6949001817470744104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P6949001817470744104

/-! ## A020459.P3156332347122421960

`∩[A214705(n+1), A261182(n+1)]`
-/

namespace A020459.P3156332347122421960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P3156332347122421960

/-! ## A020459.P13511099874102970509

`∩[A261182(n+1), A261267(n+1)]`
-/

namespace A020459.P13511099874102970509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P13511099874102970509

/-! ## A020459.P6699131903607496578

`∩[A261182(n+1), A284921(n+1)]`
-/

namespace A020459.P6699131903607496578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020459.P6699131903607496578

/-!
# A020460: Primes that contain digits 2 and 9 only.

The programs for A020460, there is no canonical definition to state claims against.
-/

/-! ## A020460.P6277322237386707343

`∩[A030291(n+1), A284923(n+1)]`
-/

namespace A020460.P6277322237386707343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P6277322237386707343

/-! ## A020460.P11644552001208407005

`∩[A030291(n+1), A261268(n+1)]`
-/

namespace A020460.P11644552001208407005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P11644552001208407005

/-! ## A020460.P14897441654483494738

`∩[A030291(n+1), A385788(n+1)]`
-/

namespace A020460.P14897441654483494738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P14897441654483494738

/-! ## A020460.P2276486162045521240

`∩[A261268(n+1), A284923(n+1)]`
-/

namespace A020460.P2276486162045521240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P2276486162045521240

/-! ## A020460.P17028508158813090523

`∩[A385296(n+1), A261268(n+1)]`
-/

namespace A020460.P17028508158813090523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P17028508158813090523

/-! ## A020460.P10599960328538979124

`∩[A261268(n+1), A385785(n+1)]`
-/

namespace A020460.P10599960328538979124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P10599960328538979124

/-! ## A020460.P7988032975079351549

`∩[A261268(n+1), A385788(n+1)]`
-/

namespace A020460.P7988032975079351549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P7988032975079351549

/-! ## A020460.P581037732801794750

`∩[A261268(n+1), A385790(n+1)]`
-/

namespace A020460.P581037732801794750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P581037732801794750

/-! ## A020460.P16280592662031107207

`∩[A284923(n+1), A385785(n+1)]`
-/

namespace A020460.P16280592662031107207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P16280592662031107207

/-! ## A020460.P546020059277923968

`∩[A284923(n+1), A385788(n+1)]`
-/

namespace A020460.P546020059277923968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P546020059277923968

/-! ## A020460.P2706255893872841398

`∩[A284923(n+1), A385790(n+1)]`
-/

namespace A020460.P2706255893872841398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P2706255893872841398

/-! ## A020460.P8494277264024441007

`∩[A385785(n+1), A385788(n+1)]`
-/

namespace A020460.P8494277264024441007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P8494277264024441007

/-! ## A020460.P3934286015562163458

`∩[A385785(n+1), A385790(n+1)]`
-/

namespace A020460.P3934286015562163458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P3934286015562163458

/-! ## A020460.P616700032861605196

`∩[A385788(n+1), A385790(n+1)]`
-/

namespace A020460.P616700032861605196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P616700032861605196

/-! ## A020460.P5312347760140884540

`∩[A261268(n+1), A385786(n+1)]`
-/

namespace A020460.P5312347760140884540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P5312347760140884540

/-! ## A020460.P16277612243869618732

`∩[A284923(n+1), A385786(n+1)]`
-/

namespace A020460.P16277612243869618732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P16277612243869618732

/-! ## A020460.P2074079459286135841

`∩[A385785(n+1), A385786(n+1)]`
-/

namespace A020460.P2074079459286135841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P2074079459286135841

/-! ## A020460.P3865819242379189211

`∩[A385786(n+1), A385788(n+1)]`
-/

namespace A020460.P3865819242379189211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P3865819242379189211

/-! ## A020460.P5621503175673526877

`∩[A385786(n+1), A385790(n+1)]`
-/

namespace A020460.P5621503175673526877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P5621503175673526877

/-! ## A020460.P7216277861856462152

`∩[A261182(n+1), A261268(n+1)]`
-/

namespace A020460.P7216277861856462152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020460.P7216277861856462152

/-!
# A020461: Primes that contain digits 3 and 4 only.

The programs for A020461, there is no canonical definition to state claims against.
-/

/-! ## A020461.P5319810360648888185

`∩[A030291(n+1), A032834(n+1)]`
-/

namespace A020461.P5319810360648888185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P5319810360648888185

/-! ## A020461.P14133469364334855016

`∩[A030291(n+1), A199340(n+1)]`
-/

namespace A020461.P14133469364334855016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P14133469364334855016

/-! ## A020461.P13579927231155724123

`∩[A032834(n+1), A199340(n+1)]`
-/

namespace A020461.P13579927231155724123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P13579927231155724123

/-! ## A020461.P5234123317770060436

`∩[A030291(n+1), A199346(n+1)]`
-/

namespace A020461.P5234123317770060436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P5234123317770060436

/-! ## A020461.P897633522105935641

`∩[A032834(n+1), A199345(n+1)]`
-/

namespace A020461.P897633522105935641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P897633522105935641

/-! ## A020461.P11808169707312266831

`∩[A032834(n+1), A199346(n+1)]`
-/

namespace A020461.P11808169707312266831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P11808169707312266831

/-! ## A020461.P15733605997057755324

`∩[A032834(n+1), A199348(n+1)]`
-/

namespace A020461.P15733605997057755324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P15733605997057755324

/-! ## A020461.P14789382894334362063

`∩[A199340(n+1), A199345(n+1)]`
-/

namespace A020461.P14789382894334362063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P14789382894334362063

/-! ## A020461.P8868844619754715909

`∩[A199340(n+1), A199346(n+1)]`
-/

namespace A020461.P8868844619754715909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P8868844619754715909

/-! ## A020461.P10969820775632997175

`∩[A199340(n+1), A199348(n+1)]`
-/

namespace A020461.P10969820775632997175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P10969820775632997175

/-! ## A020461.P17611036928839297189

`∩[A199345(n+1), A199346(n+1)]`
-/

namespace A020461.P17611036928839297189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P17611036928839297189

/-! ## A020461.P8133241889294494271

`∩[A199345(n+1), A199348(n+1)]`
-/

namespace A020461.P8133241889294494271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P8133241889294494271

/-! ## A020461.P5149401179619796719

`∩[A199346(n+1), A199348(n+1)]`
-/

namespace A020461.P5149401179619796719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P5149401179619796719

/-! ## A020461.P1193796708991733905

`∩[A032834(n+1), A199342(n+1)]`
-/

namespace A020461.P1193796708991733905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P1193796708991733905

/-! ## A020461.P7475036134231324799

`∩[A199340(n+1), A199342(n+1)]`
-/

namespace A020461.P7475036134231324799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P7475036134231324799

/-! ## A020461.P15235441827045571276

`∩[A199342(n+1), A199345(n+1)]`
-/

namespace A020461.P15235441827045571276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P15235441827045571276

/-! ## A020461.P2652319037394042355

`∩[A199342(n+1), A199346(n+1)]`
-/

namespace A020461.P2652319037394042355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P2652319037394042355

/-! ## A020461.P17904692671923800520

`∩[A199342(n+1), A199348(n+1)]`
-/

namespace A020461.P17904692671923800520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P17904692671923800520

/-! ## A020461.P10335257558874521958

`∩[A032834(n+1), A199347(n+1)]`
-/

namespace A020461.P10335257558874521958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P10335257558874521958

/-! ## A020461.P17829313873332211255

`∩[A032834(n+1), A199349(n+1)]`
-/

namespace A020461.P17829313873332211255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020461.P17829313873332211255

/-!
# A020462: Primes that contain digits 3 and 5 only.

The programs for A020462, there is no canonical definition to state claims against.
-/

/-! ## A020462.P14282718914897016978

`∩[A030291(n+1), A284379(n+1)]`
-/

namespace A020462.P14282718914897016978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P14282718914897016978

/-! ## A020462.P3019322260350097056

`∩[A030291(n+1), A260223(n+1)]`
-/

namespace A020462.P3019322260350097056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P3019322260350097056

/-! ## A020462.P11149238546436382664

`∩[A260223(n+1), A284379(n+1)]`
-/

namespace A020462.P11149238546436382664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P11149238546436382664

/-! ## A020462.P13566962172257083085

`∩[A030291(n+1), A260225(n+1)]`
-/

namespace A020462.P13566962172257083085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P13566962172257083085

/-! ## A020462.P5090457113726993362

`∩[A260223(n+1), A260225(n+1)]`
-/

namespace A020462.P5090457113726993362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P5090457113726993362

/-! ## A020462.P11350440917798669516

`∩[A260225(n+1), A284379(n+1)]`
-/

namespace A020462.P11350440917798669516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P11350440917798669516

/-! ## A020462.P9410539124898893121

`∩[A260223(n+1), A260226(n+1)]`
-/

namespace A020462.P9410539124898893121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P9410539124898893121

/-! ## A020462.P12844538409499506887

`∩[A260225(n+1), A260226(n+1)]`
-/

namespace A020462.P12844538409499506887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P12844538409499506887

/-! ## A020462.P990264368882678104

`∩[A260226(n+1), A284379(n+1)]`
-/

namespace A020462.P990264368882678104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P990264368882678104

/-! ## A020462.P11003277475086633348

`∩[A199345(n+1), A260223(n+1)]`
-/

namespace A020462.P11003277475086633348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P11003277475086633348

/-! ## A020462.P16583508792397820857

`∩[A199345(n+1), A260225(n+1)]`
-/

namespace A020462.P16583508792397820857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P16583508792397820857

/-! ## A020462.P5466806006384291770

`∩[A199345(n+1), A260226(n+1)]`
-/

namespace A020462.P5466806006384291770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P5466806006384291770

/-! ## A020462.P17672500166933555036

`∩[A199345(n+1), A284379(n+1)]`
-/

namespace A020462.P17672500166933555036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P17672500166933555036

/-! ## A020462.P12823558300873146210

`∩[A199345(n+1), A214703(n+1)]`
-/

namespace A020462.P12823558300873146210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P12823558300873146210

/-! ## A020462.P1444630570377749272

`∩[A214703(n+1), A260223(n+1)]`
-/

namespace A020462.P1444630570377749272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P1444630570377749272

/-! ## A020462.P14490351444871256401

`∩[A214703(n+1), A260225(n+1)]`
-/

namespace A020462.P14490351444871256401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P14490351444871256401

/-! ## A020462.P2382484555392121801

`∩[A214703(n+1), A260226(n+1)]`
-/

namespace A020462.P2382484555392121801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P2382484555392121801

/-! ## A020462.P11878536175301362612

`∩[A214703(n+1), A284379(n+1)]`
-/

namespace A020462.P11878536175301362612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P11878536175301362612

/-! ## A020462.P13914032836882061988

`∩[A087363(n+1), A199345(n+1)]`
-/

namespace A020462.P13914032836882061988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P13914032836882061988

/-! ## A020462.P11118145779047817777

`∩[A087363(n+1), A214703(n+1)]`
-/

namespace A020462.P11118145779047817777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020462.P11118145779047817777

/-!
# A020463: Primes that contain digits 3 and 7 only.

The programs for A020463, there is no canonical definition to state claims against.
-/

/-! ## A020463.P18263052474502104904

`∩[A030291(n+1), A143967(n+1)]`
-/

namespace A020463.P18263052474502104904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P18263052474502104904

/-! ## A020463.P13480576583867054309

`∩[A030291(n+1), A260378(n+1)]`
-/

namespace A020463.P13480576583867054309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P13480576583867054309

/-! ## A020463.P7274191662826331139

`∩[A143967(n+1), A260378(n+1)]`
-/

namespace A020463.P7274191662826331139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P7274191662826331139

/-! ## A020463.P1103429246101429749

`∩[A143967(n+1), A260381(n+1)]`
-/

namespace A020463.P1103429246101429749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P1103429246101429749

/-! ## A020463.P6273758649285530218

`∩[A260378(n+1), A260381(n+1)]`
-/

namespace A020463.P6273758649285530218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P6273758649285530218

/-! ## A020463.P4888592291279461584

`∩[A143967(n+1), A260380(n+1)]`
-/

namespace A020463.P4888592291279461584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P4888592291279461584

/-! ## A020463.P4083135675982554024

`∩[A260378(n+1), A260380(n+1)]`
-/

namespace A020463.P4083135675982554024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P4083135675982554024

/-! ## A020463.P9903012295671407188

`∩[A260380(n+1), A260381(n+1)]`
-/

namespace A020463.P9903012295671407188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P9903012295671407188

/-! ## A020463.P4172932707757351777

`∩[A087363(n+1), A143967(n+1)]`
-/

namespace A020463.P4172932707757351777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P4172932707757351777

/-! ## A020463.P4234468199048093921

`∩[A087363(n+1), A260378(n+1)]`
-/

namespace A020463.P4234468199048093921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P4234468199048093921

/-! ## A020463.P1427055871588227764

`∩[A087363(n+1), A260380(n+1)]`
-/

namespace A020463.P1427055871588227764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P1427055871588227764

/-! ## A020463.P11188231315695195720

`∩[A087363(n+1), A260381(n+1)]`
-/

namespace A020463.P11188231315695195720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P11188231315695195720

/-! ## A020463.P4506125707561396401

`∩[A087363(n+1), A199347(n+1)]`
-/

namespace A020463.P4506125707561396401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P4506125707561396401

/-! ## A020463.P15269786921362958879

`∩[A143967(n+1), A199347(n+1)]`
-/

namespace A020463.P15269786921362958879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P15269786921362958879

/-! ## A020463.P14293803057718530518

`∩[A199347(n+1), A260378(n+1)]`
-/

namespace A020463.P14293803057718530518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P14293803057718530518

/-! ## A020463.P4836800969191150895

`∩[A199347(n+1), A260380(n+1)]`
-/

namespace A020463.P4836800969191150895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P4836800969191150895

/-! ## A020463.P12508793821393749670

`∩[A199347(n+1), A260381(n+1)]`
-/

namespace A020463.P12508793821393749670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P12508793821393749670

/-! ## A020463.P7098859271416374180

`∩[A087363(n+1), A214704(n+1)]`
-/

namespace A020463.P7098859271416374180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P7098859271416374180

/-! ## A020463.P13384629116708496189

`∩[A087363(n+1), A260382(n+1)]`
-/

namespace A020463.P13384629116708496189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P13384629116708496189

/-! ## A020463.P15153867557281031902

`∩[A143967(n+1), A214704(n+1)]`
-/

namespace A020463.P15153867557281031902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020463.P15153867557281031902

/-!
# A020464: Primes that contain digits 3 and 8 only.

The programs for A020464, there is no canonical definition to state claims against.
-/

/-! ## A020464.P8848599356861012622

`∩[A030291(n+1), A284963(n+1)]`
-/

namespace A020464.P8848599356861012622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P8848599356861012622

/-! ## A020464.P15946191738773891332

`∩[A030291(n+1), A261434(n+1)]`
-/

namespace A020464.P15946191738773891332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P15946191738773891332

/-! ## A020464.P15709225460086649238

`∩[A261434(n+1), A284963(n+1)]`
-/

namespace A020464.P15709225460086649238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P15709225460086649238

/-! ## A020464.P13303515489938497952

`∩[A030291(n+1), A385791(n+1)]`
-/

namespace A020464.P13303515489938497952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P13303515489938497952

/-! ## A020464.P9607101226928908912

`∩[A261434(n+1), A385791(n+1)]`
-/

namespace A020464.P9607101226928908912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P9607101226928908912

/-! ## A020464.P7247720623527841975

`∩[A284963(n+1), A385791(n+1)]`
-/

namespace A020464.P7247720623527841975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P7247720623527841975

/-! ## A020464.P9991442682682517694

`∩[A260226(n+1), A261434(n+1)]`
-/

namespace A020464.P9991442682682517694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P9991442682682517694

/-! ## A020464.P15181544693669654240

`∩[A260226(n+1), A284963(n+1)]`
-/

namespace A020464.P15181544693669654240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P15181544693669654240

/-! ## A020464.P7408098655586807557

`∩[A260226(n+1), A385791(n+1)]`
-/

namespace A020464.P7408098655586807557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P7408098655586807557

/-! ## A020464.P2526757144736963574

`∩[A199348(n+1), A260226(n+1)]`
-/

namespace A020464.P2526757144736963574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P2526757144736963574

/-! ## A020464.P7609496231592941426

`∩[A199348(n+1), A261434(n+1)]`
-/

namespace A020464.P7609496231592941426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P7609496231592941426

/-! ## A020464.P5520647126278898422

`∩[A199348(n+1), A284963(n+1)]`
-/

namespace A020464.P5520647126278898422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P5520647126278898422

/-! ## A020464.P12991656391286953906

`∩[A199348(n+1), A385791(n+1)]`
-/

namespace A020464.P12991656391286953906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P12991656391286953906

/-! ## A020464.P2559895961622531852

`∩[A199348(n+1), A260127(n+1)]`
-/

namespace A020464.P2559895961622531852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P2559895961622531852

/-! ## A020464.P5792327591134955028

`∩[A260127(n+1), A260226(n+1)]`
-/

namespace A020464.P5792327591134955028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P5792327591134955028

/-! ## A020464.P1307000041773310945

`∩[A260127(n+1), A261434(n+1)]`
-/

namespace A020464.P1307000041773310945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P1307000041773310945

/-! ## A020464.P12931978156284537023

`∩[A260127(n+1), A284963(n+1)]`
-/

namespace A020464.P12931978156284537023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P12931978156284537023

/-! ## A020464.P13540839712544745416

`∩[A199348(n+1), A385294(n+1)]`
-/

namespace A020464.P13540839712544745416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P13540839712544745416

/-! ## A020464.P1306665062719820542

`∩[A260127(n+1), A385791(n+1)]`
-/

namespace A020464.P1306665062719820542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P1306665062719820542

/-! ## A020464.P4043708840335153439

`∩[A261434(n+1), A385294(n+1)]`
-/

namespace A020464.P4043708840335153439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020464.P4043708840335153439

/-!
# A020465: Primes that contain digits 4 and 7 only.

The programs for A020465, there is no canonical definition to state claims against.
-/

/-! ## A020465.P9403647338179806998

`∩[A030291(n+1), A284971(n+1)]`
-/

namespace A020465.P9403647338179806998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P9403647338179806998

/-! ## A020465.P7789664819610573311

`∩[A030291(n+1), A384449(n+1)]`
-/

namespace A020465.P7789664819610573311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P7789664819610573311

/-! ## A020465.P3635410345839238534

`∩[A217039(n+1), A261183(n+1)]`
-/

namespace A020465.P3635410345839238534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P3635410345839238534

/-! ## A020465.P3478670145681799937

`∩[A217039(n+1), A284971(n+1)]`
-/

namespace A020465.P3478670145681799937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P3478670145681799937

/-! ## A020465.P12667334147916979933

`∩[A217039(n+1), A302938(n+1)]`
-/

namespace A020465.P12667334147916979933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P12667334147916979933

/-! ## A020465.P8571483156849091218

`∩[A261183(n+1), A284971(n+1)]`
-/

namespace A020465.P8571483156849091218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P8571483156849091218

/-! ## A020465.P8813359313203681880

`∩[A261183(n+1), A302938(n+1)]`
-/

namespace A020465.P8813359313203681880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P8813359313203681880

/-! ## A020465.P11575663775765473499

`∩[A217039(n+1), A384449(n+1)]`
-/

namespace A020465.P11575663775765473499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P11575663775765473499

/-! ## A020465.P8983446616954553982

`∩[A217039(n+1), A385784(n+1)]`
-/

namespace A020465.P8983446616954553982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P8983446616954553982

/-! ## A020465.P10974252703933131757

`∩[A217039(n+1), A385794(n+1)]`
-/

namespace A020465.P10974252703933131757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P10974252703933131757

/-! ## A020465.P15585822718391747513

`∩[A217039(n+1), A385795(n+1)]`
-/

namespace A020465.P15585822718391747513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P15585822718391747513

/-! ## A020465.P8440516685308355019

`∩[A261183(n+1), A384449(n+1)]`
-/

namespace A020465.P8440516685308355019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P8440516685308355019

/-! ## A020465.P18364915320922905307

`∩[A261183(n+1), A385784(n+1)]`
-/

namespace A020465.P18364915320922905307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P18364915320922905307

/-! ## A020465.P6269242537921594054

`∩[A261183(n+1), A385794(n+1)]`
-/

namespace A020465.P6269242537921594054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P6269242537921594054

/-! ## A020465.P16329668164803646887

`∩[A261183(n+1), A385795(n+1)]`
-/

namespace A020465.P16329668164803646887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P16329668164803646887

/-! ## A020465.P12194741969879103416

`∩[A284971(n+1), A384449(n+1)]`
-/

namespace A020465.P12194741969879103416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P12194741969879103416

/-! ## A020465.P1145855601085712236

`∩[A284971(n+1), A385784(n+1)]`
-/

namespace A020465.P1145855601085712236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P1145855601085712236

/-! ## A020465.P13665906265919051110

`∩[A284971(n+1), A385794(n+1)]`
-/

namespace A020465.P13665906265919051110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P13665906265919051110

/-! ## A020465.P17509260710781505374

`∩[A284971(n+1), A385795(n+1)]`
-/

namespace A020465.P17509260710781505374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P17509260710781505374

/-! ## A020465.P9602243556554734635

`∩[A302938(n+1), A384449(n+1)]`
-/

namespace A020465.P9602243556554734635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020465.P9602243556554734635

/-!
# A020466: Primes that contain digits 4 and 9 only.

The programs for A020466, there is no canonical definition to state claims against.
-/

/-! ## A020466.P9139863206311242475

`∩[A030291(n+1), A284973(n+1)]`
-/

namespace A020466.P9139863206311242475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P9139863206311242475

/-! ## A020466.P10990922669125168426

`∩[A235154(n+1), A284973(n+1)]`
-/

namespace A020466.P10990922669125168426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P10990922669125168426

/-! ## A020466.P10948213974984936354

`∩[A030291(n+1), A385768(n+1)]`
-/

namespace A020466.P10948213974984936354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P10948213974984936354

/-! ## A020466.P6472811761690027950

`∩[A284973(n+1), A385768(n+1)]`
-/

namespace A020466.P6472811761690027950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P6472811761690027950

/-! ## A020466.P3378401137263455509

`∩[A261183(n+1), A284973(n+1)]`
-/

namespace A020466.P3378401137263455509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P3378401137263455509

/-! ## A020466.P16745262263089133474

`∩[A261183(n+1), A385768(n+1)]`
-/

namespace A020466.P16745262263089133474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P16745262263089133474

/-! ## A020466.P6245419860565662436

`∩[A261183(n+1), A385796(n+1)]`
-/

namespace A020466.P6245419860565662436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P6245419860565662436

/-! ## A020466.P13987879778607831304

`∩[A284973(n+1), A385796(n+1)]`
-/

namespace A020466.P13987879778607831304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P13987879778607831304

/-! ## A020466.P2036798260312538440

`∩[A385768(n+1), A385796(n+1)]`
-/

namespace A020466.P2036798260312538440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P2036798260312538440

/-! ## A020466.P2528798956736962207

`∩[A030291(n+1), A107666(n+1)]`
-/

namespace A020466.P2528798956736962207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P2528798956736962207

/-! ## A020466.P11759094744263390254

`∩[A107666(n+1), A235154(n+1)]`
-/

namespace A020466.P11759094744263390254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P11759094744263390254

/-! ## A020466.P10554333979646075303

`∩[A107666(n+1), A261183(n+1)]`
-/

namespace A020466.P10554333979646075303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P10554333979646075303

/-! ## A020466.P3110026476797977068

`∩[A107666(n+1), A284973(n+1)]`
-/

namespace A020466.P3110026476797977068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P3110026476797977068

/-! ## A020466.P12816565209938006588

`∩[A107666(n+1), A385768(n+1)]`
-/

namespace A020466.P12816565209938006588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P12816565209938006588

/-! ## A020466.P12558776518375579034

`∩[A107666(n+1), A385793(n+1)]`
-/

namespace A020466.P12558776518375579034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P12558776518375579034

/-! ## A020466.P16105654159500421270

`∩[A107666(n+1), A385796(n+1)]`
-/

namespace A020466.P16105654159500421270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P16105654159500421270

/-! ## A020466.P10735350541272469672

`∩[A261183(n+1), A385793(n+1)]`
-/

namespace A020466.P10735350541272469672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P10735350541272469672

/-! ## A020466.P11993446368929796750

`∩[A284973(n+1), A385793(n+1)]`
-/

namespace A020466.P11993446368929796750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P11993446368929796750

/-! ## A020466.P14787802938504610623

`∩[A385768(n+1), A385793(n+1)]`
-/

namespace A020466.P14787802938504610623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P14787802938504610623

/-! ## A020466.P10231134538569309058

`∩[A385793(n+1), A385796(n+1)]`
-/

namespace A020466.P10231134538569309058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020466.P10231134538569309058

/-!
# A020467: Primes that contain digits 5 and 7 only.

The programs for A020467, there is no canonical definition to state claims against.
-/

/-! ## A020467.P2125930079555281428

`∩[A030291(n+1), A284380(n+1)]`
-/

namespace A020467.P2125930079555281428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P2125930079555281428

/-! ## A020467.P8201046527681468319

`∩[A030291(n+1), A260827(n+1)]`
-/

namespace A020467.P8201046527681468319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P8201046527681468319

/-! ## A020467.P5639020483608514572

`∩[A260827(n+1), A284380(n+1)]`
-/

namespace A020467.P5639020483608514572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P5639020483608514572

/-! ## A020467.P12267324737788424983

`∩[A260827(n+1), A260830(n+1)]`
-/

namespace A020467.P12267324737788424983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P12267324737788424983

/-! ## A020467.P3751847289651882272

`∩[A260830(n+1), A284380(n+1)]`
-/

namespace A020467.P3751847289651882272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P3751847289651882272

/-! ## A020467.P8833664817999029541

`∩[A260827(n+1), A260829(n+1)]`
-/

namespace A020467.P8833664817999029541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P8833664817999029541

/-! ## A020467.P4112127715581418904

`∩[A260829(n+1), A260830(n+1)]`
-/

namespace A020467.P4112127715581418904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P4112127715581418904

/-! ## A020467.P12297597332726371153

`∩[A260829(n+1), A284380(n+1)]`
-/

namespace A020467.P12297597332726371153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P12297597332726371153

/-! ## A020467.P7767093770210570250

`∩[A214705(n+1), A217039(n+1)]`
-/

namespace A020467.P7767093770210570250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P7767093770210570250

/-! ## A020467.P4887960491772837413

`∩[A214705(n+1), A260827(n+1)]`
-/

namespace A020467.P4887960491772837413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P4887960491772837413

/-! ## A020467.P14006480587204723434

`∩[A214705(n+1), A260829(n+1)]`
-/

namespace A020467.P14006480587204723434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P14006480587204723434

/-! ## A020467.P7374176111830260715

`∩[A214705(n+1), A260830(n+1)]`
-/

namespace A020467.P7374176111830260715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P7374176111830260715

/-! ## A020467.P15704560934640644313

`∩[A217039(n+1), A260827(n+1)]`
-/

namespace A020467.P15704560934640644313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P15704560934640644313

/-! ## A020467.P16978500337270255479

`∩[A217039(n+1), A260829(n+1)]`
-/

namespace A020467.P16978500337270255479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P16978500337270255479

/-! ## A020467.P4886731811529112462

`∩[A217039(n+1), A260830(n+1)]`
-/

namespace A020467.P4886731811529112462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P4886731811529112462

/-! ## A020467.P4144755108104350214

`∩[A214705(n+1), A284380(n+1)]`
-/

namespace A020467.P4144755108104350214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P4144755108104350214

/-! ## A020467.P6971311506429124096

`∩[A217039(n+1), A284380(n+1)]`
-/

namespace A020467.P6971311506429124096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P6971311506429124096

/-! ## A020467.P16254638003344904670

`∩[A214705(n+1), A260831(n+1)]`
-/

namespace A020467.P16254638003344904670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P16254638003344904670

/-! ## A020467.P17646889173021382084

`∩[A217039(n+1), A260831(n+1)]`
-/

namespace A020467.P17646889173021382084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P17646889173021382084

/-! ## A020467.P4383445456652296271

`∩[A260827(n+1), A260831(n+1)]`
-/

namespace A020467.P4383445456652296271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020467.P4383445456652296271

/-!
# A020468: Primes that contain digits 5 and 9 only.

The programs for A020468, there is no canonical definition to state claims against.
-/

/-! ## A020468.P6571310722797263658

`∩[A030291(n+1), A284382(n+1)]`
-/

namespace A020468.P6571310722797263658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P6571310722797263658

/-! ## A020468.P4858727631827456552

`∩[A284382(n+1), A385769(n+1)]`
-/

namespace A020468.P4858727631827456552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P4858727631827456552

/-! ## A020468.P18361673738311346489

`∩[A284382(n+1), A385797(n+1)]`
-/

namespace A020468.P18361673738311346489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P18361673738311346489

/-! ## A020468.P9006056855986868186

`∩[A385769(n+1), A385797(n+1)]`
-/

namespace A020468.P9006056855986868186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P9006056855986868186

/-! ## A020468.P3072517713416480811

`∩[A284382(n+1), A385798(n+1)]`
-/

namespace A020468.P3072517713416480811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P3072517713416480811

/-! ## A020468.P12341911719262520787

`∩[A385769(n+1), A385798(n+1)]`
-/

namespace A020468.P12341911719262520787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P12341911719262520787

/-! ## A020468.P10658838070389434776

`∩[A385797(n+1), A385798(n+1)]`
-/

namespace A020468.P10658838070389434776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P10658838070389434776

/-! ## A020468.P3357666927869054689

`∩[A284382(n+1), A385793(n+1)]`
-/

namespace A020468.P3357666927869054689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P3357666927869054689

/-! ## A020468.P10429379575225669384

`∩[A385769(n+1), A385793(n+1)]`
-/

namespace A020468.P10429379575225669384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P10429379575225669384

/-! ## A020468.P9389952307680610152

`∩[A385793(n+1), A385797(n+1)]`
-/

namespace A020468.P9389952307680610152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P9389952307680610152

/-! ## A020468.P5087166403539559631

`∩[A385793(n+1), A385798(n+1)]`
-/

namespace A020468.P5087166403539559631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P5087166403539559631

/-! ## A020468.P16870820185129704275

`∩[A284382(n+1), A385786(n+1)]`
-/

namespace A020468.P16870820185129704275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P16870820185129704275

/-! ## A020468.P11443222174732406775

`∩[A385769(n+1), A385786(n+1)]`
-/

namespace A020468.P11443222174732406775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P11443222174732406775

/-! ## A020468.P7476433143567917280

`∩[A385786(n+1), A385793(n+1)]`
-/

namespace A020468.P7476433143567917280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P7476433143567917280

/-! ## A020468.P12784809726692055790

`∩[A385786(n+1), A385797(n+1)]`
-/

namespace A020468.P12784809726692055790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P12784809726692055790

/-! ## A020468.P10130641829735434705

`∩[A385786(n+1), A385798(n+1)]`
-/

namespace A020468.P10130641829735434705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P10130641829735434705

/-! ## A020468.P4885044549695518017

`∩[A260831(n+1), A284382(n+1)]`
-/

namespace A020468.P4885044549695518017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P4885044549695518017

/-! ## A020468.P12828251873650506857

`∩[A260831(n+1), A385769(n+1)]`
-/

namespace A020468.P12828251873650506857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P12828251873650506857

/-! ## A020468.P453879974394535189

`∩[A260831(n+1), A385786(n+1)]`
-/

namespace A020468.P453879974394535189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P453879974394535189

/-! ## A020468.P5638069226534775270

`∩[A260831(n+1), A385793(n+1)]`
-/

namespace A020468.P5638069226534775270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020468.P5638069226534775270

/-!
# A020469: Primes that contain digits 6 and 7 only.

The programs for A020469, there is no canonical definition to state claims against.
-/

/-! ## A020469.P936283799492001036

`∩[A030291(n+1), A256292(n+1)]`
-/

namespace A020469.P936283799492001036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P936283799492001036

/-! ## A020469.P2038360285229896365

`∩[A256292(n+1), A385770(n+1)]`
-/

namespace A020469.P2038360285229896365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P2038360285229896365

/-! ## A020469.P14106258503211842562

`∩[A256292(n+1), A385799(n+1)]`
-/

namespace A020469.P14106258503211842562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P14106258503211842562

/-! ## A020469.P14440967701089204216

`∩[A385770(n+1), A385799(n+1)]`
-/

namespace A020469.P14440967701089204216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P14440967701089204216

/-! ## A020469.P16140480374099515627

`∩[A256292(n+1), A260829(n+1)]`
-/

namespace A020469.P16140480374099515627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P16140480374099515627

/-! ## A020469.P11950484929548320907

`∩[A256292(n+1), A385787(n+1)]`
-/

namespace A020469.P11950484929548320907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P11950484929548320907

/-! ## A020469.P5096150803776350732

`∩[A256292(n+1), A385794(n+1)]`
-/

namespace A020469.P5096150803776350732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P5096150803776350732

/-! ## A020469.P3385709759905563793

`∩[A260829(n+1), A385770(n+1)]`
-/

namespace A020469.P3385709759905563793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P3385709759905563793

/-! ## A020469.P4006131591480283606

`∩[A260829(n+1), A385787(n+1)]`
-/

namespace A020469.P4006131591480283606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P4006131591480283606

/-! ## A020469.P14820858149120628249

`∩[A260829(n+1), A385794(n+1)]`
-/

namespace A020469.P14820858149120628249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P14820858149120628249

/-! ## A020469.P5705514467576444516

`∩[A260829(n+1), A385799(n+1)]`
-/

namespace A020469.P5705514467576444516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P5705514467576444516

/-! ## A020469.P10426657021881053032

`∩[A385770(n+1), A385787(n+1)]`
-/

namespace A020469.P10426657021881053032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P10426657021881053032

/-! ## A020469.P17981311924023140710

`∩[A385770(n+1), A385794(n+1)]`
-/

namespace A020469.P17981311924023140710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P17981311924023140710

/-! ## A020469.P13398037279443895947

`∩[A385787(n+1), A385794(n+1)]`
-/

namespace A020469.P13398037279443895947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P13398037279443895947

/-! ## A020469.P4862236454019437783

`∩[A385787(n+1), A385799(n+1)]`
-/

namespace A020469.P4862236454019437783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P4862236454019437783

/-! ## A020469.P8293902935236383553

`∩[A385794(n+1), A385799(n+1)]`
-/

namespace A020469.P8293902935236383553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P8293902935236383553

/-! ## A020469.P16943115704242254258

`∩[A256292(n+1), A261184(n+1)]`
-/

namespace A020469.P16943115704242254258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P16943115704242254258

/-! ## A020469.P5276708003668520482

`∩[A260829(n+1), A261184(n+1)]`
-/

namespace A020469.P5276708003668520482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P5276708003668520482

/-! ## A020469.P13179696640419255306

`∩[A261184(n+1), A385770(n+1)]`
-/

namespace A020469.P13179696640419255306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P13179696640419255306

/-! ## A020469.P10537878254135434380

`∩[A261184(n+1), A385787(n+1)]`
-/

namespace A020469.P10537878254135434380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020469.P10537878254135434380

/-!
# A020470: Primes that contain digits 7 and 8 only.

The programs for A020470, there is no canonical definition to state claims against.
-/

/-! ## A020470.P13896387389819259642

`∩[A030291(n+1), A256340(n+1)]`
-/

namespace A020470.P13896387389819259642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P13896387389819259642

/-! ## A020470.P12991820109244665875

`∩[A030291(n+1), A385771(n+1)]`
-/

namespace A020470.P12991820109244665875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P12991820109244665875

/-! ## A020470.P5405245853985260672

`∩[A256340(n+1), A385771(n+1)]`
-/

namespace A020470.P5405245853985260672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P5405245853985260672

/-! ## A020470.P16888222057210365933

`∩[A256340(n+1), A260830(n+1)]`
-/

namespace A020470.P16888222057210365933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P16888222057210365933

/-! ## A020470.P11788908980496389772

`∩[A256340(n+1), A385789(n+1)]`
-/

namespace A020470.P11788908980496389772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P11788908980496389772

/-! ## A020470.P12570430051381948190

`∩[A256340(n+1), A385795(n+1)]`
-/

namespace A020470.P12570430051381948190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P12570430051381948190

/-! ## A020470.P1078337843748905767

`∩[A256340(n+1), A385799(n+1)]`
-/

namespace A020470.P1078337843748905767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P1078337843748905767

/-! ## A020470.P13677126939059385404

`∩[A260830(n+1), A385771(n+1)]`
-/

namespace A020470.P13677126939059385404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P13677126939059385404

/-! ## A020470.P8657327513938467322

`∩[A260830(n+1), A385789(n+1)]`
-/

namespace A020470.P8657327513938467322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P8657327513938467322

/-! ## A020470.P1897057259404158527

`∩[A260830(n+1), A385795(n+1)]`
-/

namespace A020470.P1897057259404158527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P1897057259404158527

/-! ## A020470.P14636022376420235839

`∩[A260830(n+1), A385799(n+1)]`
-/

namespace A020470.P14636022376420235839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P14636022376420235839

/-! ## A020470.P17833525783654146516

`∩[A385771(n+1), A385789(n+1)]`
-/

namespace A020470.P17833525783654146516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P17833525783654146516

/-! ## A020470.P5379494260624437571

`∩[A385771(n+1), A385795(n+1)]`
-/

namespace A020470.P5379494260624437571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P5379494260624437571

/-! ## A020470.P2323059135588739370

`∩[A385771(n+1), A385799(n+1)]`
-/

namespace A020470.P2323059135588739370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P2323059135588739370

/-! ## A020470.P11795057821247171453

`∩[A385789(n+1), A385795(n+1)]`
-/

namespace A020470.P11795057821247171453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P11795057821247171453

/-! ## A020470.P2619252086805362418

`∩[A385789(n+1), A385799(n+1)]`
-/

namespace A020470.P2619252086805362418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P2619252086805362418

/-! ## A020470.P14480317518924605013

`∩[A385795(n+1), A385799(n+1)]`
-/

namespace A020470.P14480317518924605013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P14480317518924605013

/-! ## A020470.P14269682158027911266

`∩[A106107(n+1), A256340(n+1)]`
-/

namespace A020470.P14269682158027911266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P14269682158027911266

/-! ## A020470.P8427520905841505162

`∩[A106110(n+1), A256340(n+1)]`
-/

namespace A020470.P8427520905841505162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P8427520905841505162

/-! ## A020470.P1412118398728531704

`∩[A106107(n+1), A260830(n+1)]`
-/

namespace A020470.P1412118398728531704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020470.P1412118398728531704

/-!
# A020471: Primes that contain digits 7 and 9 only.

The programs for A020471, there is no canonical definition to state claims against.
-/

/-! ## A020471.P16519082037392427043

`∩[A030291(n+1), A285011(n+1)]`
-/

namespace A020471.P16519082037392427043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P16519082037392427043

/-! ## A020471.P10109238966291183693

`∩[A030291(n+1), A261181(n+1)]`
-/

namespace A020471.P10109238966291183693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P10109238966291183693

/-! ## A020471.P2691772497724853575

`∩[A261181(n+1), A285011(n+1)]`
-/

namespace A020471.P2691772497724853575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P2691772497724853575

/-! ## A020471.P7911576509653835215

`∩[A106107(n+1), A261181(n+1)]`
-/

namespace A020471.P7911576509653835215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P7911576509653835215

/-! ## A020471.P13310402744531681611

`∩[A106107(n+1), A261183(n+1)]`
-/

namespace A020471.P13310402744531681611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P13310402744531681611

/-! ## A020471.P3119824359271833767

`∩[A106110(n+1), A261181(n+1)]`
-/

namespace A020471.P3119824359271833767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P3119824359271833767

/-! ## A020471.P15933464638565275119

`∩[A106110(n+1), A261183(n+1)]`
-/

namespace A020471.P15933464638565275119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P15933464638565275119

/-! ## A020471.P4978572320289145939

`∩[A106107(n+1), A285011(n+1)]`
-/

namespace A020471.P4978572320289145939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P4978572320289145939

/-! ## A020471.P1262892022928042542

`∩[A106110(n+1), A285011(n+1)]`
-/

namespace A020471.P1262892022928042542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P1262892022928042542

/-! ## A020471.P14147322567792229278

`∩[A106107(n+1), A260831(n+1)]`
-/

namespace A020471.P14147322567792229278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P14147322567792229278

/-! ## A020471.P9173090371539147191

`∩[A106110(n+1), A260831(n+1)]`
-/

namespace A020471.P9173090371539147191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P9173090371539147191

/-! ## A020471.P4715340013026197806

`∩[A106107(n+1), A261182(n+1)]`
-/

namespace A020471.P4715340013026197806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P4715340013026197806

/-! ## A020471.P1866981846797617794

`∩[A106107(n+1), A261184(n+1)]`
-/

namespace A020471.P1866981846797617794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P1866981846797617794

/-! ## A020471.P11202424236364164722

`∩[A106110(n+1), A261182(n+1)]`
-/

namespace A020471.P11202424236364164722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P11202424236364164722

/-! ## A020471.P6849557822871901213

`∩[A106110(n+1), A261184(n+1)]`
-/

namespace A020471.P6849557822871901213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P6849557822871901213

/-! ## A020471.P2380356360222850567

`∩[A260831(n+1), A261181(n+1)]`
-/

namespace A020471.P2380356360222850567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P2380356360222850567

/-! ## A020471.P14294474519621630033

`∩[A260831(n+1), A261182(n+1)]`
-/

namespace A020471.P14294474519621630033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P14294474519621630033

/-! ## A020471.P14140716189258527761

`∩[A260831(n+1), A261183(n+1)]`
-/

namespace A020471.P14140716189258527761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P14140716189258527761

/-! ## A020471.P2440129277902283406

`∩[A260831(n+1), A261184(n+1)]`
-/

namespace A020471.P2440129277902283406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P2440129277902283406

/-! ## A020471.P7137339631594253885

`∩[A261181(n+1), A261182(n+1)]`
-/

namespace A020471.P7137339631594253885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020471.P7137339631594253885

/-!
# A020472: Primes that contain digits 8 and 9 only.

The programs for A020472, there is no canonical definition to state claims against.
-/

/-! ## A020472.P10260481471588037458

`∩[A030291(n+1), A256341(n+1)]`
-/

namespace A020472.P10260481471588037458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P10260481471588037458

/-! ## A020472.P12216135029603697338

`∩[A030291(n+1), A284069(n+1)]`
-/

namespace A020472.P12216135029603697338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P12216135029603697338

/-! ## A020472.P14976470868558899739

`∩[A235154(n+1), A256341(n+1)]`
-/

namespace A020472.P14976470868558899739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P14976470868558899739

/-! ## A020472.P12905467969318439148

`∩[A235154(n+1), A284069(n+1)]`
-/

namespace A020472.P12905467969318439148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P12905467969318439148

/-! ## A020472.P6770334094713198604

`∩[A030291(n+1), A385772(n+1)]`
-/

namespace A020472.P6770334094713198604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P6770334094713198604

/-! ## A020472.P16816495164372742379

`∩[A256341(n+1), A385772(n+1)]`
-/

namespace A020472.P16816495164372742379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P16816495164372742379

/-! ## A020472.P3694354086143638474

`∩[A284069(n+1), A385772(n+1)]`
-/

namespace A020472.P3694354086143638474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P3694354086143638474

/-! ## A020472.P729103662519023358

`∩[A030291(n+1), A385800(n+1)]`
-/

namespace A020472.P729103662519023358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P729103662519023358

/-! ## A020472.P10911547723853290073

`∩[A256341(n+1), A385790(n+1)]`
-/

namespace A020472.P10911547723853290073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P10911547723853290073

/-! ## A020472.P16060565376730094024

`∩[A256341(n+1), A385796(n+1)]`
-/

namespace A020472.P16060565376730094024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P16060565376730094024

/-! ## A020472.P16164249354844784274

`∩[A256341(n+1), A385798(n+1)]`
-/

namespace A020472.P16164249354844784274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P16164249354844784274

/-! ## A020472.P12169900438781354289

`∩[A256341(n+1), A385800(n+1)]`
-/

namespace A020472.P12169900438781354289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P12169900438781354289

/-! ## A020472.P16024986190011694379

`∩[A284069(n+1), A385790(n+1)]`
-/

namespace A020472.P16024986190011694379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P16024986190011694379

/-! ## A020472.P9420093440019469828

`∩[A284069(n+1), A385796(n+1)]`
-/

namespace A020472.P9420093440019469828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P9420093440019469828

/-! ## A020472.P4863824581369228938

`∩[A284069(n+1), A385798(n+1)]`
-/

namespace A020472.P4863824581369228938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P4863824581369228938

/-! ## A020472.P189416442590487101

`∩[A284069(n+1), A385800(n+1)]`
-/

namespace A020472.P189416442590487101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P189416442590487101

/-! ## A020472.P5172637818280917283

`∩[A385772(n+1), A385790(n+1)]`
-/

namespace A020472.P5172637818280917283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P5172637818280917283

/-! ## A020472.P7998942298448265121

`∩[A385772(n+1), A385796(n+1)]`
-/

namespace A020472.P7998942298448265121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P7998942298448265121

/-! ## A020472.P12643204400536992627

`∩[A385772(n+1), A385798(n+1)]`
-/

namespace A020472.P12643204400536992627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P12643204400536992627

/-! ## A020472.P16897844441038809540

`∩[A385772(n+1), A385800(n+1)]`
-/

namespace A020472.P16897844441038809540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020472.P16897844441038809540

/-!
# A020473: Egyptian fractions: number of partitions of 1 into reciprocals of positive integers <= n.

The programs for A020473, there is no canonical definition to state claims against.
-/

/-! ## A020473.P12931621718096236752

`∑[A092666(n+1)]`
-/

namespace A020473.P12931621718096236752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020473.P12931621718096236752

/-! ## A020473.P12898843711529268359

`A092666(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A020473.P12898843711529268359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092666 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A020473.P12898843711529268359

/-! ## A020473.P5749174896955593853

`a(n-1)+A092666(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A020473.P5749174896955593853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A092666 (n + 1) + A000038 n)

end

end A020473.P5749174896955593853

/-! ## A020473.P17202598585389354383

`A092666(n+1)+a(2*n-A000027(n+1))` with `a(0)=1`
-/

namespace A020473.P17202598585389354383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092666 (n + 1) + a ((2 * n : ℤ) - A000027 (n + 1)).toNat

end

end A020473.P17202598585389354383

/-! ## A020473.P5255860739648544027

`a(n-1)+A092666(n+1)%A073372(n)` with `a(0)=1`
-/

namespace A020473.P5255860739648544027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A092666 (n + 1)) (A073372 n)

end

end A020473.P5255860739648544027

/-!
# A020474: A Motzkin triangle: a(n,k), n >= 2, 2 <= k <= n, = number of complete, strictly subdiagonal staircase functions.

The programs for A020474, the canonical program `A020474.P5085270409840467133` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020474 has offset 2).

The definition of A020474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020474.P5085270409840467133

`T(n,k-1)+T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020474

/-- `T(n,k-1)+T(n-1,k-1)+T(n-2,k-1)` -/
def P5085270409840467133.Spec : Prop :=
  ∀ n, (P5085270409840467133.a n : ℤ) = A020474 (n + 2)

theorem P5085270409840467133.correct : P5085270409840467133.Spec := by
  intro n
  simp only [A020474, Nat.add_sub_cancel]

end A020474

/-! ## A020474.P13783757206140687713

`A101688(n)*A106489(A128282(n)+1)`
-/

namespace A020474.P13783757206140687713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A106489 (A128282 n + 1).toNat

end

end A020474.P13783757206140687713

namespace A020474

/-- `A101688(n)*A106489(A128282(n)+1)` -/
def P13783757206140687713.Spec : Prop :=
  ∀ n, P13783757206140687713.a n = A020474 (n + 2)

end A020474

/-! ## A020474.P8724555760672296635

`A101688(n)*A106489(A344646(n)+2)`
-/

namespace A020474.P8724555760672296635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A106489 (A344646 n + 2).toNat

end

end A020474.P8724555760672296635

namespace A020474

/-- `A101688(n)*A106489(A344646(n)+2)` -/
def P8724555760672296635.Spec : Prop :=
  ∀ n, P8724555760672296635.a n = A020474 (n + 2)

end A020474

/-! ## A020474.P17545080228653205413

`lcm(A106489(A344646(n)+2), A187034(n))`
-/

namespace A020474.P17545080228653205413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106489 (A344646 n + 2).toNat) (A187034 n)

end

end A020474.P17545080228653205413

namespace A020474

/-- `lcm(A106489(A344646(n)+2), A187034(n))` -/
def P17545080228653205413.Spec : Prop :=
  ∀ n, (P17545080228653205413.a n : ℤ) = A020474 (n + 2)

end A020474

/-! ## A020474.P15696203025132321906

`C(A106489(A344646(n)+2), A282988(n+1))`
-/

namespace A020474.P15696203025132321906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106489 (A344646 n + 2).toNat).toNat (A282988 (n + 1)).toNat

end

end A020474.P15696203025132321906

namespace A020474

/-- `C(A106489(A344646(n)+2), A282988(n+1))` -/
def P15696203025132321906.Spec : Prop :=
  ∀ n, (P15696203025132321906.a n : ℤ) = A020474 (n + 2)

end A020474

/-! ## A020474.P12695500182241463445

`A057427(A026729(n))*A106489(A128282(n)+1)`
-/

namespace A020474.P12695500182241463445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A026729 n).toNat * A106489 (A128282 n + 1).toNat

end

end A020474.P12695500182241463445

namespace A020474

/-- `A057427(A026729(n))*A106489(A128282(n)+1)` -/
def P12695500182241463445.Spec : Prop :=
  ∀ n, P12695500182241463445.a n = A020474 (n + 2)

end A020474

/-! ## A020474.P3102318260660525657

`A057427(A026729(n))*A106489(A344646(n)+2)`
-/

namespace A020474.P3102318260660525657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A026729 n).toNat * A106489 (A344646 n + 2).toNat

end

end A020474.P3102318260660525657

namespace A020474

/-- `A057427(A026729(n))*A106489(A344646(n)+2)` -/
def P3102318260660525657.Spec : Prop :=
  ∀ n, P3102318260660525657.a n = A020474 (n + 2)

end A020474

/-! ## A020474.P17478303472328696812

`A057427(A236076(n))*A106489(A344646(n)+2)`
-/

namespace A020474.P17478303472328696812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A236076 n).toNat * A106489 (A344646 n + 2).toNat

end

end A020474.P17478303472328696812

namespace A020474

/-- `A057427(A236076(n))*A106489(A344646(n)+2)` -/
def P17478303472328696812.Spec : Prop :=
  ∀ n, P17478303472328696812.a n = A020474 (n + 2)

end A020474

/-! ## A020474.P11616124697420450857

`A057427(A099040(n))*A106489(A128282(n)+1)`
-/

namespace A020474.P11616124697420450857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A099040 n).toNat * A106489 (A128282 n + 1).toNat

end

end A020474.P11616124697420450857

namespace A020474

/-- `A057427(A099040(n))*A106489(A128282(n)+1)` -/
def P11616124697420450857.Spec : Prop :=
  ∀ n, P11616124697420450857.a n = A020474 (n + 2)

end A020474

/-! ## A020474.P11814082366578649011

`A057427(A099040(n))*A106489(A344646(n)+2)`
-/

namespace A020474.P11814082366578649011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A099040 n).toNat * A106489 (A344646 n + 2).toNat

end

end A020474.P11814082366578649011

namespace A020474

/-- `A057427(A099040(n))*A106489(A344646(n)+2)` -/
def P11814082366578649011.Spec : Prop :=
  ∀ n, P11814082366578649011.a n = A020474 (n + 2)

end A020474

/-!
# A020475: a(n) is the number of k for which binomial(n,k) is divisible by n.

The programs for A020475, there is no canonical definition to state claims against.
-/

/-! ## A020475.P9786587764790796587

`n+1-A007012(n)`
-/

namespace A020475.P9786587764790796587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007012 n

end

end A020475.P9786587764790796587

/-! ## A020475.P3861320722477512249

`n-A023443(A007012(n))`
-/

namespace A020475.P3861320722477512249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A007012 n).toNat

end

end A020475.P3861320722477512249

/-! ## A020475.P14254801896731209486

`1-(A007012(n)-A035044(A035044(n)))`
-/

namespace A020475.P14254801896731209486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007012 n - A035044 (A035044 n).toNat)

end

end A020475.P14254801896731209486

/-! ## A020475.P2522118554841103284

`1-(A007012(n)-A222229(A222229(n)))`
-/

namespace A020475.P2522118554841103284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007012 n - A222229 (A222229 n).toNat)

end

end A020475.P2522118554841103284

/-! ## A020475.P13172683305727934093

`1-(A007012(n)-A222246(A222246(n)))`
-/

namespace A020475.P13172683305727934093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007012 n - A222246 (A222246 n).toNat)

end

end A020475.P13172683305727934093

/-! ## A020475.P16139159872389349333

`n-(A007012(n)-A059268(∑[n]))`
-/

namespace A020475.P16139159872389349333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A007012 n - A059268 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A020475.P16139159872389349333

/-!
# A020477: Numbers whose sum of divisors is a cube.

The programs for A020477, there is no canonical definition to state claims against.
-/

/-! ## A020477.P8960599337940143644

`lt[A048798(A000203(n+1)), 2]+1`
-/

namespace A020477.P8960599337940143644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A020477.P8960599337940143644

/-! ## A020477.P1043512479367619487

`eq[A057427(n), A333884(A039653(n))]`
-/

namespace A020477.P1043512479367619487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020477.P1043512479367619487

/-! ## A020477.P16477947472726291439

`eq[1, A334339(n+1)]+1`
-/

namespace A020477.P16477947472726291439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334339 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020477.P16477947472726291439

/-! ## A020477.P10372857196445476600

`record[∏{p}[A329239(n+1)², #]]`
-/

namespace A020477.P10372857196445476600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329239 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020477.P10372857196445476600

/-! ## A020477.P16520393596369326793

`lt[A001359(n+1)%A334339(n+1), 1]+1`
-/

namespace A020477.P16520393596369326793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1)) (A334339 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A020477.P16520393596369326793

/-!
# A020478: Number of singular 2 X 2 matrices over Z(n) (i.e., with determinant = 0).

The programs for A020478, the canonical program `A020478.P13030858516864996585` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020478 has offset 1).

The definition of A020478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020478.P13030858516864996585

`(n+1)*A069097(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A020478

/-- `(n+1)*A069097(n+1)` -/
def P13030858516864996585.Spec : Prop :=
  ∀ n, P13030858516864996585.a n = A020478 (n + 1)

theorem P13030858516864996585.correct : P13030858516864996585.Spec := by
  intro n
  simp only [A020478, Nat.add_sub_cancel]

end A020478

/-! ## A020478.P9323939374093402108

`(n+1)^4-A005353(n+1)`
-/

namespace A020478.P9323939374093402108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A005353 (n + 1)

end

end A020478.P9323939374093402108

namespace A020478

/-- `(n+1)^4-A005353(n+1)` -/
def P9323939374093402108.Spec : Prop :=
  ∀ n, P9323939374093402108.a n = A020478 (n + 1)

theorem P9323939374093402108.correct : P9323939374093402108.Spec := by
  intro n
  simp only [A020478, Nat.add_sub_cancel, A020478.P9323939374093402108.a, A020478.P13030858516864996585.a, A005353, A005353.P13530675845642685918.a, A069097, A069097.P14337265421589170729.f1, A069097.P14337265421589170729.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020478

/-! ## A020478.P3065612503435263601

`∑{d}[n+1, (n+1)*A341772(#)]`
-/

namespace A020478.P3065612503435263601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A341772 d

end

end A020478.P3065612503435263601

namespace A020478

/-- `∑{d}[n+1, (n+1)*A341772(#)]` -/
def P3065612503435263601.Spec : Prop :=
  ∀ n, P3065612503435263601.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P18003982818682116730

`(n+1)*∑{d}[n+1, #*A007434((n+1)/#)]`
-/

namespace A020478.P18003982818682116730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A020478.P18003982818682116730

namespace A020478

/-- `(n+1)*∑{d}[n+1, #*A007434((n+1)/#)]` -/
def P18003982818682116730.Spec : Prop :=
  ∀ n, P18003982818682116730.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P240198360323125785

`∑{d}[n+1, A000056(#)*A000290((n+1)/#)]`
-/

namespace A020478.P240198360323125785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P240198360323125785

namespace A020478

/-- `∑{d}[n+1, A000056(#)*A000290((n+1)/#)]` -/
def P240198360323125785.Spec : Prop :=
  ∀ n, P240198360323125785.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P2125560828835556834

`∑{d}[n+1, A000578(#)*A002618((n+1)/#)]`
-/

namespace A020478.P2125560828835556834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P2125560828835556834

namespace A020478

/-- `∑{d}[n+1, A000578(#)*A002618((n+1)/#)]` -/
def P2125560828835556834.Spec : Prop :=
  ∀ n, P2125560828835556834.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P1730612351347057505

`∑{d}[n+1, A001158(#)*A063445((n+1)/#)]`
-/

namespace A020478.P1730612351347057505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P1730612351347057505

namespace A020478

/-- `∑{d}[n+1, A001158(#)*A063445((n+1)/#)]` -/
def P1730612351347057505.Spec : Prop :=
  ∀ n, P1730612351347057505.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P8615198277234031435

`∑{d}[n+1, A057660(#)*A059376((n+1)/#)]`
-/

namespace A020478.P8615198277234031435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P8615198277234031435

namespace A020478

/-- `∑{d}[n+1, A057660(#)*A059376((n+1)/#)]` -/
def P8615198277234031435.Spec : Prop :=
  ∀ n, P8615198277234031435.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P12136508168163415525

`∑{d}[n+1, A007434(#)*A350156((n+1)/#)]`
-/

namespace A020478.P12136508168163415525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P12136508168163415525

namespace A020478

/-- `∑{d}[n+1, A007434(#)*A350156((n+1)/#)]` -/
def P12136508168163415525.Spec : Prop :=
  ∀ n, P12136508168163415525.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P17306681609625605046

`∑{d}[n+1, A038991(#)*A327960((n+1)/#)]`
-/

namespace A020478.P17306681609625605046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038991 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P17306681609625605046

namespace A020478

/-- `∑{d}[n+1, A038991(#)*A327960((n+1)/#)]` -/
def P17306681609625605046.Spec : Prop :=
  ∀ n, P17306681609625605046.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P6512900396334768882

`∑{d}[n+1, A000010(#)*A373061((n+1)/#)]`
-/

namespace A020478.P6512900396334768882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A373061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P6512900396334768882

namespace A020478

/-- `∑{d}[n+1, A000010(#)*A373061((n+1)/#)]` -/
def P6512900396334768882.Spec : Prop :=
  ∀ n, P6512900396334768882.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P3092204312378008116

`∑{d}[n+1, A023900(#)*A368743((n+1)/#)]`
-/

namespace A020478.P3092204312378008116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A368743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P3092204312378008116

namespace A020478

/-- `∑{d}[n+1, A023900(#)*A368743((n+1)/#)]` -/
def P3092204312378008116.Spec : Prop :=
  ∀ n, P3092204312378008116.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P8778339382923081633

`∑{d}[n+1, A340850(#)*A343497((n+1)/#)]`
-/

namespace A020478.P8778339382923081633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340850 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P8778339382923081633

namespace A020478

/-- `∑{d}[n+1, A340850(#)*A343497((n+1)/#)]` -/
def P8778339382923081633.Spec : Prop :=
  ∀ n, P8778339382923081633.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P6289079865458432721

`(n+1)*∑{d}[n+1, A000010(#)*A000290((n+1)/#)]`
-/

namespace A020478.P6289079865458432721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A000010 d * A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A020478.P6289079865458432721

namespace A020478

/-- `(n+1)*∑{d}[n+1, A000010(#)*A000290((n+1)/#)]` -/
def P6289079865458432721.Spec : Prop :=
  ∀ n, P6289079865458432721.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P14454718344879319555

`∑{d}[n+1, A055615(#)*A282097((n+1)/#)]`
-/

namespace A020478.P14454718344879319555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A282097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A020478.P14454718344879319555

namespace A020478

/-- `∑{d}[n+1, A055615(#)*A282097((n+1)/#)]` -/
def P14454718344879319555.Spec : Prop :=
  ∀ n, P14454718344879319555.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P11426280564846875117

`(n+1)*∑{#}[n, gcd(n+1, #+1)²]`
-/

namespace A020478.P11426280564846875117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ k ∈ Finset.range (f1 n + 1), Nat.gcd (n + 1) (k + 1) ^ 2)

end

end A020478.P11426280564846875117

namespace A020478

/-- `(n+1)*∑{#}[n, gcd(n+1, #+1)²]` -/
def P11426280564846875117.Spec : Prop :=
  ∀ n, (P11426280564846875117.a n : ℤ) = A020478 (n + 1)

end A020478

/-! ## A020478.P3925227156338521396

`A059306(n)+A062801(n)-A005353(n+1)`
-/

namespace A020478.P3925227156338521396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + (A062801 n - A005353 (n + 1))

end

end A020478.P3925227156338521396

namespace A020478

/-- `A059306(n)+A062801(n)-A005353(n+1)` -/
def P3925227156338521396.Spec : Prop :=
  ∀ n, P3925227156338521396.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P10041880704075943539

`A078430((n+1)²)`
-/

namespace A020478.P10041880704075943539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078430 ((n + 1) ^ 2)

end

end A020478.P10041880704075943539

namespace A020478

/-- `A078430((n+1)²)` -/
def P10041880704075943539.Spec : Prop :=
  ∀ n, P10041880704075943539.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P18025873218590911429

`A181107(∑[n]+1)`
-/

namespace A020478.P18025873218590911429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181107 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A020478.P18025873218590911429

namespace A020478

/-- `A181107(∑[n]+1)` -/
def P18025873218590911429.Spec : Prop :=
  ∀ n, P18025873218590911429.a n = A020478 (n + 1)

end A020478

/-! ## A020478.P3089440249231409802

`A115075((n+1)²)/(n+1)`
-/

namespace A020478.P3089440249231409802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115075 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A020478.P3089440249231409802

namespace A020478

/-- `A115075((n+1)²)/(n+1)` -/
def P3089440249231409802.Spec : Prop :=
  ∀ n, P3089440249231409802.a n = (A020478 (n + 1) : ℚ)

end A020478

/-!
# A020479: Number of noninvertible 2 X 2 matrices over Z/nZ (determinant is a divisor of 0).

The programs for A020479, the canonical program `A020479.P12170762038309436866` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020479 has offset 2).

The definition of A020479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020479.P12170762038309436866

`(n+2)^4-A000252(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A020479

/-- `(n+2)^4-A000252(n+2)` -/
def P12170762038309436866.Spec : Prop :=
  ∀ n, P12170762038309436866.a n = A020479 (n + 2)

theorem P12170762038309436866.correct : P12170762038309436866.Spec := by
  intro n
  simp only [A020479, Nat.add_sub_cancel]

end A020479

/-! ## A020479.P15899006740419184905

`A005353(n+2)+A020478(n+2)-A000252(n+2)`
-/

namespace A020479.P15899006740419184905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005353 (n + 2) + (A020478 (n + 2) - A000252 (n + 2))

end

end A020479.P15899006740419184905

namespace A020479

/-- `A005353(n+2)+A020478(n+2)-A000252(n+2)` -/
def P15899006740419184905.Spec : Prop :=
  ∀ n, P15899006740419184905.a n = A020479 (n + 2)

theorem P15899006740419184905.correct : P15899006740419184905.Spec := by
  intro n
  simp only [A020479, Nat.add_sub_cancel, A020479.P15899006740419184905.a, A020479.P12170762038309436866.a, A000252, A000252.P10509989210323719014.a, A005353, A005353.P13530675845642685918.a, A020478, A020478.P13030858516864996585.a, A000010, A000010.P4673923239450215316.a, A000056, A000056.P18166110637332708364.a, A069097, A069097.P14337265421589170729.f1, A069097.P14337265421589170729.a, A003557, A003557.P6364735403900941810.a, A007434, A007434.P3432859153295839493.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020479

/-!
# A020480: Primes p which divide no f(q)-1 or f(q)+1 for prime q < p, where f(q) is the product of all primes <= q.

The programs for A020480, there is no canonical definition to state claims against.
-/

/-! ## A020480.P17961047502588333469

`record[A046026(n+16)%A006881(n+5)]`
-/

namespace A020480.P17961047502588333469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046026 (n + 16)) (A006881 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020480.P17961047502588333469

/-! ## A020480.P16320005167365093331

`eq[n+1, A013586(n+1)]+1`
-/

namespace A020480.P16320005167365093331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020480.P16320005167365093331

/-! ## A020480.P5398532578253771805

`p?[record[A203648(A046026(n+1))]]`
-/

namespace A020480.P5398532578253771805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203648 (A046026 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020480.P5398532578253771805

/-! ## A020480.P14104806571049848787

`A086507(eq[n+1, A013586(n+1)])`
-/

namespace A020480.P14104806571049848787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020480.P14104806571049848787

/-! ## A020480.P3954870729764433320

`record[(A013586(n+1)-n)*A007947(n+1)]`
-/

namespace A020480.P3954870729764433320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013586 (n + 1) - (n : ℤ)) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020480.P3954870729764433320

/-! ## A020480.P12103277155705118261

`record[(A013586(n+1)-n)*A015052(n+1)]`
-/

namespace A020480.P12103277155705118261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013586 (n + 1) - (n : ℤ)) * A015052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020480.P12103277155705118261

/-! ## A020480.P17887884939726763584

`eq[n, A013586(A257143(n))]`
-/

namespace A020480.P17887884939726763584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020480.P17887884939726763584

/-! ## A020480.P3673092695103725057

`eq[n, A013586(A065033(2*n))]`
-/

namespace A020480.P3673092695103725057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020480.P3673092695103725057

/-! ## A020480.P3387354590306843891

`record[A013586(A317313(n+1))]`
-/

namespace A020480.P3387354590306843891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (A317313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020480.P3387354590306843891

/-!
# A020481: Least p with p, q both prime, p+q = 2n.

The programs for A020481, there is no canonical definition to state claims against.
-/

/-! ## A020481.P13588685617758397613

`n+2-A047949(n+2)`
-/

namespace A020481.P13588685617758397613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A047949 (n + 2)

end

end A020481.P13588685617758397613

/-! ## A020481.P11312805559014244298

`2*(n+2)-A020482(n+2)`
-/

namespace A020481.P11312805559014244298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A020482 (n + 2)

end

end A020481.P11312805559014244298

/-! ## A020481.P5712599409710873690

`A000040(A377758(n+2))`
-/

namespace A020481.P5712599409710873690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377758 (n + 2)).toNat

end

end A020481.P5712599409710873690

/-! ## A020481.P18297360397670700345

`A008578(A377758(n+2)+1)`
-/

namespace A020481.P18297360397670700345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A377758 (n + 2) + 1).toNat

end

end A020481.P18297360397670700345

/-! ## A020481.P16595529660594360176

`A112823(n+2)-A112824(n+2)`
-/

namespace A020481.P16595529660594360176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2) - A112824 (n + 2)

end

end A020481.P16595529660594360176

/-! ## A020481.P11153193323476344053

`A073046(n+2)/A020482(n+2)`
-/

namespace A020481.P11153193323476344053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073046 (n + 2) : ℚ) / (A020482 (n + 2) : ℚ)

end

end A020481.P11153193323476344053

/-! ## A020481.P1626969127263979978

`A020705(n)-A020482(n+2)+n`
-/

namespace A020481.P1626969127263979978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - A020482 (n + 2) + (n : ℤ)

end

end A020481.P1626969127263979978

/-! ## A020481.P17725839061075306463

`A317440(n+1)+2-A020482(n+2)`
-/

namespace A020481.P17725839061075306463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + (2 - A020482 (n + 2))

end

end A020481.P17725839061075306463

/-! ## A020481.P12810089844086637352

`A049653(n+2)+A060265(n+2)-A020482(n+2)`
-/

namespace A020481.P12810089844086637352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2) + (A060265 (n + 2) - A020482 (n + 2))

end

end A020481.P12810089844086637352

/-! ## A020481.P2463367983819656620

`A112823(n+2)+A234345(n+2)-A020482(n+2)`
-/

namespace A020481.P2463367983819656620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2) + (A234345 (n + 2) - A020482 (n + 2))

end

end A020481.P2463367983819656620

/-! ## A020481.P3737153875622098211

`2-A303603(n+2)/2+n`
-/

namespace A020481.P3737153875622098211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A303603 (n + 2) : ℚ) / 2 + (n : ℚ)

end

end A020481.P3737153875622098211

/-! ## A020481.P15088605292783797650

`A020482(n+2)-A303603(n+2)`
-/

namespace A020481.P15088605292783797650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - A303603 (n + 2)

end

end A020481.P15088605292783797650

/-! ## A020481.P8384219975325621180

`A049653(n+2)+A060308(n+2)-A020482(n+2)`
-/

namespace A020481.P8384219975325621180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2) + (A060308 (n + 2) - A020482 (n + 2))

end

end A020481.P8384219975325621180

/-! ## A020481.P6830652935428607059

`A210957(2*(n+1))`
-/

namespace A020481.P6830652935428607059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (2 * (n + 1))

end

end A020481.P6830652935428607059

/-! ## A020481.P16401574225753428830

`gcd(A005417(n), A073046(n+2))`
-/

namespace A020481.P16401574225753428830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005417 n) (A073046 (n + 2))

end

end A020481.P16401574225753428830

/-! ## A020481.P17334995469540247485

`A184995(A045919(n+1)+2)`
-/

namespace A020481.P17334995469540247485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184995 (A045919 (n + 1) + 2).toNat

end

end A020481.P17334995469540247485

/-! ## A020481.P9949816186721422141

`A020639(A073046(n+2))`
-/

namespace A020481.P9949816186721422141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073046 (n + 2)).toNat

end

end A020481.P9949816186721422141

/-! ## A020481.P13646779725199275068

`A020639(A137516(n+2)+2*(n+2))`
-/

namespace A020481.P13646779725199275068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A137516 (n + 2) + (2 * (n + 2) : ℤ)).toNat

end

end A020481.P13646779725199275068

/-! ## A020481.P18141233545731794416

`A073046(n+2)/A006530(2*A073046(n+2))`
-/

namespace A020481.P18141233545731794416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073046 (n + 2) : ℚ) / (A006530 (2 * A073046 (n + 2)).toNat : ℚ)

end

end A020481.P18141233545731794416

/-!
# A020482: Greatest p with p, q both prime, p+q = 2n.

The programs for A020482, there is no canonical definition to state claims against.
-/

/-! ## A020482.P12668709275255873103

`A047949(n+2)+2+n`
-/

namespace A020482.P12668709275255873103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (n + 2) + 2 + (n : ℤ)

end

end A020482.P12668709275255873103

/-! ## A020482.P3466854873000807624

`2*(n+2)-A020481(n+2)`
-/

namespace A020482.P3466854873000807624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A020481 (n + 2)

end

end A020482.P3466854873000807624

/-! ## A020482.P13944305899366724141

`A000040(A377972(n+2))`
-/

namespace A020482.P13944305899366724141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377972 (n + 2)).toNat

end

end A020482.P13944305899366724141

/-! ## A020482.P895203373176269274

`A234345(n+2)+A112824(n+2)`
-/

namespace A020482.P895203373176269274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 2) + A112824 (n + 2)

end

end A020482.P895203373176269274

/-! ## A020482.P6150470686794840613

`A073046(n+2)/A020481(n+2)`
-/

namespace A020482.P6150470686794840613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073046 (n + 2) : ℚ) / (A020481 (n + 2) : ℚ)

end

end A020482.P6150470686794840613

/-! ## A020482.P7282175884285989210

`A001489(A020481(n+2))+A000027(2*(n+2))`
-/

namespace A020482.P7282175884285989210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A020481 (n + 2)).toNat + A000027 (2 * (n + 2))

end

end A020482.P7282175884285989210

/-! ## A020482.P7814169814136837713

`A112823(n+2)+A234345(n+2)-A020481(n+2)`
-/

namespace A020482.P7814169814136837713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2) + (A234345 (n + 2) - A020481 (n + 2))

end

end A020482.P7814169814136837713

/-! ## A020482.P12657566158487734114

`A303603(n+2)/2+2+n`
-/

namespace A020482.P12657566158487734114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303603 (n + 2) : ℚ) / 2 + 2 + (n : ℚ)

end

end A020482.P12657566158487734114

/-! ## A020482.P3552805404987495940

`A210957(2*n+3)`
-/

namespace A020482.P3552805404987495940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (2 * n + 3)

end

end A020482.P3552805404987495940

/-! ## A020482.P9287813918200822621

`A395928(A174799(2*(n+2)))`
-/

namespace A020482.P9287813918200822621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395928 (A174799 (2 * (n + 2))).toNat

end

end A020482.P9287813918200822621

/-! ## A020482.P18130728265160570132

`A006530(A073046(n+2))`
-/

namespace A020482.P18130728265160570132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073046 (n + 2)).toNat

end

end A020482.P18130728265160570132

/-! ## A020482.P10900041065822950932

`A006530(A084372(n+2))`
-/

namespace A020482.P10900041065822950932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A084372 (n + 2)).toNat

end

end A020482.P10900041065822950932

/-! ## A020482.P10380121884148001847

`A006530(A137516(n+2)+2*(n+2))`
-/

namespace A020482.P10380121884148001847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A137516 (n + 2) + (2 * (n + 2) : ℤ)).toNat

end

end A020482.P10380121884148001847

/-! ## A020482.P12629784920505693307

`A171637(∑[A002372(n+2)]+2)`
-/

namespace A020482.P12629784920505693307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171637 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A020482.P12629784920505693307

/-! ## A020482.P16222742237985967919

`A066048(2*A073046(n+2))/2`
-/

namespace A020482.P16222742237985967919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066048 (2 * A073046 (n + 2)).toNat : ℚ) / 2

end

end A020482.P16222742237985967919

/-! ## A020482.P12657734190829787351

`A073046(n+2)/gcd(A073046(n+2), A355475(n+1))`
-/

namespace A020482.P12657734190829787351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073046 (n + 2) : ℚ) / (Int.gcd (A073046 (n + 2)) (A355475 (n + 1)) : ℚ)

end

end A020482.P12657734190829787351

/-!
# A020483: Least prime p such that p+2n is also prime.

The programs for A020483, there is no canonical definition to state claims against.
-/

/-! ## A020483.P5205662780532622626

`A087711(n)-n`
-/

namespace A020483.P5205662780532622626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 n - (n : ℤ)

end

end A020483.P5205662780532622626

/-! ## A020483.P5807594026678365975

`A020484(n)-2*n`
-/

namespace A020483.P5807594026678365975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n - (2 * n : ℤ)

end

end A020483.P5807594026678365975

/-! ## A020483.P4316670512061730349

`abs(A087711(n)+A001489(n))`
-/

namespace A020483.P4316670512061730349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087711 n + A001489 n|

end

end A020483.P4316670512061730349

/-! ## A020483.P11509851524298876254

`abs(A005843(n)-A020484(n))`
-/

namespace A020483.P11509851524298876254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 n - A020484 n|

end

end A020483.P11509851524298876254

/-! ## A020483.P14724151240568361260

`A073310(n+1)+A040000(n)`
-/

namespace A020483.P14724151240568361260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073310 (n + 1) + A040000 n

end

end A020483.P14724151240568361260

/-! ## A020483.P13113154515292646665

`A001489(n)+A020484(n)-n`
-/

namespace A020483.P13113154515292646665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A020484 n - (n : ℤ))

end

end A020483.P13113154515292646665

/-! ## A020483.P6241778726785669291

`A000015(A020484(n)-n-n)`
-/

namespace A020483.P6241778726785669291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A020484 n - (n : ℤ) - (n : ℤ)).toNat

end

end A020483.P6241778726785669291

/-! ## A020483.P13810557947260535569

`A002034(A020484(n)-n-n)`
-/

namespace A020483.P13810557947260535569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A020484 n - (n : ℤ) - (n : ℤ)).toNat

end

end A020483.P13810557947260535569

/-! ## A020483.P1731500403735426830

`A006530(A020484(n)-n-n)`
-/

namespace A020483.P1731500403735426830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020484 n - (n : ℤ) - (n : ℤ)).toNat

end

end A020483.P1731500403735426830

/-! ## A020483.P11721504999055742584

`A014963(A020484(n)-n-n)`
-/

namespace A020483.P11721504999055742584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020484 n - (n : ℤ) - (n : ℤ)).toNat

end

end A020483.P11721504999055742584

/-! ## A020483.P3945865827520771743

`A020639(A020484(n)-n-n)`
-/

namespace A020483.P3945865827520771743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020484 n - (n : ℤ) - (n : ℤ)).toNat

end

end A020483.P3945865827520771743

/-! ## A020483.P9905593698176482960

`A065475(n+1)+A073310(n+1)-n`
-/

namespace A020483.P9905593698176482960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + (A073310 (n + 1) - (n : ℤ))

end

end A020483.P9905593698176482960

/-! ## A020483.P13415793941717320748

`A271353(A047231(n+2))`
-/

namespace A020483.P13415793941717320748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A047231 (n + 2)).toNat

end

end A020483.P13415793941717320748

/-! ## A020483.P9892212363205797083

`A271353(A051755(n+2))`
-/

namespace A020483.P9892212363205797083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A051755 (n + 2)).toNat

end

end A020483.P9892212363205797083

/-! ## A020483.P3620338661590143623

`A271353(2*(n+1))-A010051(2*(n+1))`
-/

namespace A020483.P3620338661590143623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (2 * (n + 1)) - A010051 (2 * (n + 1))

end

end A020483.P3620338661590143623

/-! ## A020483.P3102057790220865512

`A271353((n+1)*A270003(A066169(n+1)))`
-/

namespace A020483.P3102057790220865512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 ((n + 1 : ℤ) * A270003 (A066169 (n + 1)).toNat).toNat

end

end A020483.P3102057790220865512

/-! ## A020483.P15594224163296942526

`A271353((n+1)*A271353(A066169(n+1)))`
-/

namespace A020483.P15594224163296942526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 ((n + 1 : ℤ) * A271353 (A066169 (n + 1)).toNat).toNat

end

end A020483.P15594224163296942526

/-! ## A020483.P9864801728932412763

`A000720(2*n+1)+A271353(2*(n+1))-A000720(2*(n+1))`
-/

namespace A020483.P9864801728932412763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) + (A271353 (2 * (n + 1)) - A000720 (2 * (n + 1)))

end

end A020483.P9864801728932412763

/-! ## A020483.P3087049780684836620

`A271353(A000720(A000040(2*n+1)+1)+1)`
-/

namespace A020483.P3087049780684836620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A000720 (A000040 (2 * n + 1) + 1).toNat + 1).toNat

end

end A020483.P3087049780684836620

/-! ## A020483.P14688630988186290718

`A204895(comp[2*(n+1)]+1)`
-/

namespace A020483.P14688630988186290718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204895 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A020483.P14688630988186290718

/-!
# A020484: Least prime p such that there exists a prime q with p-2n = q.

The programs for A020484, there is no canonical definition to state claims against.
-/

/-! ## A020484.P108709659839978486

`A087711(n)+n`
-/

namespace A020484.P108709659839978486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 n + (n : ℤ)

end

end A020484.P108709659839978486

/-! ## A020484.P10764078719187982422

`2*n+A020483(n)`
-/

namespace A020484.P10764078719187982422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A020483 n

end

end A020484.P10764078719187982422

/-! ## A020484.P2712362954075080898

`A020483(n)+A005843(n)`
-/

namespace A020484.P2712362954075080898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n + A005843 n

end

end A020484.P2712362954075080898

/-! ## A020484.P3438999081303304974

`abs(A001489(n)-A087711(n))`
-/

namespace A020484.P3438999081303304974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A087711 n|

end

end A020484.P3438999081303304974

/-! ## A020484.P15459510578492851500

`A020483(n)+Δ[A002061(n)]`
-/

namespace A020484.P15459510578492851500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n + (f1 (n + 1) - f1 n)

end

end A020484.P15459510578492851500

/-! ## A020484.P8425068822844913341

`A103517(n)+A073310(n+1)`
-/

namespace A020484.P8425068822844913341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A073310 (n + 1)

end

end A020484.P8425068822844913341

/-! ## A020484.P7317242026649633974

`A005408(n)-(1-A020483(n))`
-/

namespace A020484.P7317242026649633974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (1 - A020483 n)

end

end A020484.P7317242026649633974

/-! ## A020484.P16504055756162667562

`A006530(A020483(n)+n+n)`
-/

namespace A020484.P16504055756162667562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020483 n + (n : ℤ) + (n : ℤ)).toNat

end

end A020484.P16504055756162667562

/-! ## A020484.P17844597703639593122

`A020639(A020483(n)+n+n)`
-/

namespace A020484.P17844597703639593122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020483 n + (n : ℤ) + (n : ℤ)).toNat

end

end A020484.P17844597703639593122

/-! ## A020484.P17406546642680775386

`n-(A001489(n)-A020483(n))`
-/

namespace A020484.P17406546642680775386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A001489 n - A020483 n)

end

end A020484.P17406546642680775386

/-! ## A020484.P16500281491636764633

`A008585(n)-(n-A020483(n))`
-/

namespace A020484.P16500281491636764633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A020483 n)

end

end A020484.P16500281491636764633

/-! ## A020484.P9185339984573264836

`A065475(n+1)+A073310(n+1)+n`
-/

namespace A020484.P9185339984573264836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + (A073310 (n + 1) + (n : ℤ))

end

end A020484.P9185339984573264836

/-! ## A020484.P17560276397275185074

`n-A001489(A020483(n)+n)`
-/

namespace A020484.P17560276397275185074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 (A020483 n + (n : ℤ)).toNat

end

end A020484.P17560276397275185074

/-! ## A020484.P15473757504716345652

`p?[A020483(A026741(n))+n]`
-/

namespace A020484.P15473757504716345652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A026741 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020484.P15473757504716345652

/-! ## A020484.P3931642328199811766

`A151800(A270753(2*(n+1))-2)`
-/

namespace A020484.P3931642328199811766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A270753 (2 * (n + 1)) - 2).toNat

end

end A020484.P3931642328199811766

/-! ## A020484.P1095524134278534531

`A271353(A051755(n+2))+2*n`
-/

namespace A020484.P1095524134278534531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271353 (A051755 (n + 2)).toNat + (2 * n : ℤ)

end

end A020484.P1095524134278534531

/-! ## A020484.P15148953902289187865

`A270753(2*(n+1))-A010051(2*(n+1))`
-/

namespace A020484.P15148953902289187865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (2 * (n + 1)) - A010051 (2 * (n + 1))

end

end A020484.P15148953902289187865

/-! ## A020484.P11768175040822598176

`A000720(2*n+1)+A270753(2*(n+1))-A000720(2*(n+1))`
-/

namespace A020484.P11768175040822598176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) + (A270753 (2 * (n + 1)) - A000720 (2 * (n + 1)))

end

end A020484.P11768175040822598176

/-! ## A020484.P13285568772670091575

`A002034(A020483(n)+n+n)`
-/

namespace A020484.P13285568772670091575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A020483 n + (n : ℤ) + (n : ℤ)).toNat

end

end A020484.P13285568772670091575

/-! ## A020484.P11544352390574294164

`A014963(A020483(n)+n+n)`
-/

namespace A020484.P11544352390574294164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020483 n + (n : ℤ) + (n : ℤ)).toNat

end

end A020484.P11544352390574294164

/-!
# A020485: Least positive palindromic multiple of n, or 0 if none exists.

The programs for A020485, there is no canonical definition to state claims against.
-/

/-! ## A020485.P14780213486381455833

`n*A050782(n)`
-/

namespace A020485.P14780213486381455833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050782 n

end

end A020485.P14780213486381455833

/-! ## A020485.P482266834690470420

`n*A061906(n)*A168184(n)`
-/

namespace A020485.P482266834690470420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A061906 n * A168184 n)

end

end A020485.P482266834690470420

/-! ## A020485.P17843216318772741826

`n*A061906(n)*char[A004086(n)]`
-/

namespace A020485.P17843216318772741826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061906 n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020485.P17843216318772741826

/-! ## A020485.P1099640495440353249

`n*A057427(A265525(n))*A061906(n)`
-/

namespace A020485.P1099640495440353249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A057427 (A265525 n).toNat * A061906 n)

end

end A020485.P1099640495440353249

/-! ## A020485.P11234527088575790893

`n*A061906(n)*char[A032762(n)]`
-/

namespace A020485.P11234527088575790893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032762 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061906 n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020485.P11234527088575790893

/-! ## A020485.P1767113787817131579

`A061816(n*A168184(n))`
-/

namespace A020485.P1767113787817131579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 ((n : ℤ) * A168184 n).toNat

end

end A020485.P1767113787817131579

/-! ## A020485.P14845565101278564451

`lcm(A050782(n), A061816(n))`
-/

namespace A020485.P14845565101278564451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050782 n) (A061816 n)

end

end A020485.P14845565101278564451

/-! ## A020485.P3735485377653292021

`(A061906(n)-A217096(n))*A118759(n)`
-/

namespace A020485.P3735485377653292021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061906 n - A217096 n) * A118759 n

end

end A020485.P3735485377653292021

/-! ## A020485.P469710448131292884

`A061906(n)*A118759(n)*A168046(n)`
-/

namespace A020485.P469710448131292884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n * A118759 n * A168046 n

end

end A020485.P469710448131292884

/-! ## A020485.P8345953538842968340

`(A061906(n)-A217096(n))*A000196(A002522(n))`
-/

namespace A020485.P8345953538842968340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061906 n - A217096 n) * A000196 (A002522 n).toNat

end

end A020485.P8345953538842968340

/-!
# A020486: Average of squares of divisors is an integer: numbers k such that sigma_0(k) divides sigma_2(k).

The programs for A020486, the canonical program `A020486.P13724749074267134154` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020486 has offset 1).

The definition of A020486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020486.P13724749074267134154

`eq[1, A158298(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020486

/-- `eq[1, A158298(n+1)]+1` -/
def P13724749074267134154.Spec : Prop :=
  ∀ n, (P13724749074267134154.a n : ℤ) = A020486 (n + 1)

theorem P13724749074267134154.correct : P13724749074267134154.Spec := by
  intro n
  simp only [A020486, Nat.add_sub_cancel]

end A020486

/-! ## A020486.P3407906010799597319

`record[n+1-A008593(A158298(n+1)-1)]`
-/

namespace A020486.P3407906010799597319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008593 (A158298 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020486.P3407906010799597319

namespace A020486

/-- `record[n+1-A008593(A158298(n+1)-1)]` -/
def P3407906010799597319.Spec : Prop :=
  ∀ n, P3407906010799597319.a n = A020486 (n + 1)

end A020486

/-! ## A020486.P17292159591371698154

`record[n+1-∑{d}[A158298(n+1), A055671(#)]]`
-/

namespace A020486.P17292159591371698154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158298 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f2 n).natAbs, A055671 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020486.P17292159591371698154

namespace A020486

/-- `record[n+1-∑{d}[A158298(n+1), A055671(#)]]` -/
def P17292159591371698154.Spec : Prop :=
  ∀ n, P17292159591371698154.a n = A020486 (n + 1)

end A020486

/-! ## A020486.P7834280528420340409

`record[gcd(n+1, A001157(n+1)%A000005(n+1))]`
-/

namespace A020486.P7834280528420340409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A001157 (n + 1)) (A000005 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020486.P7834280528420340409

namespace A020486

/-- `record[gcd(n+1, A001157(n+1)%A000005(n+1))]` -/
def P7834280528420340409.Spec : Prop :=
  ∀ n, (P7834280528420340409.a n : ℤ) = A020486 (n + 1)

end A020486

/-! ## A020486.P2513835997582940148

`record[A036234(n+1)/A158298(A036234(n+1))]`
-/

namespace A020486.P2513835997582940148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 1) : ℚ) / (A158298 (A036234 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020486.P2513835997582940148

namespace A020486

/-- `record[A036234(n+1)/A158298(A036234(n+1))]` -/
def P2513835997582940148.Spec : Prop :=
  ∀ n, P2513835997582940148.a n = (A020486 (n + 1) : ℚ)

end A020486

/-!
# A020487: Antiharmonic numbers: numbers k such that sigma_1(k) divides sigma_2(k).

The programs for A020487, there is no canonical definition to state claims against.
-/

/-! ## A020487.P8201847044741484759

`∪[(n+1)², A227771(n+1)]`
-/

namespace A020487.P8201847044741484759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020487.P8201847044741484759

/-! ## A020487.P16566439085693744939

`∪[A227771(n+1), A000290(n+1)]`
-/

namespace A020487.P16566439085693744939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020487.P16566439085693744939

/-! ## A020487.P5871097221844204818

`∪[A277553(n+1), A328953(n+1)]`
-/

namespace A020487.P5871097221844204818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020487.P5871097221844204818

/-! ## A020487.P17911168929621747990

`eq[1, A158275(n+1)]+1`
-/

namespace A020487.P17911168929621747990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020487.P17911168929621747990

/-! ## A020487.P12206158904587789124

`record[A179931(n+1)-A001065(n+1)]`
-/

namespace A020487.P12206158904587789124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179931 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020487.P12206158904587789124

/-! ## A020487.P15580895380414463322

`record[A014684(n+1)/A158275(n+1)]`
-/

namespace A020487.P15580895380414463322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014684 (n + 1) : ℚ) / (A158275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020487.P15580895380414463322

/-! ## A020487.P6351998330907708404

`record[A191558(n+1)/A158275(n+1)]`
-/

namespace A020487.P6351998330907708404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / (A158275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020487.P6351998330907708404

/-! ## A020487.P1711333116922027898

`record[(n+1)*(3-A107079(A158275(n+1)+1))]`
-/

namespace A020487.P1711333116922027898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A107079 (A158275 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020487.P1711333116922027898

/-! ## A020487.P13156622376762635114

`record[A107079(n+1)/A158275(A107079(n+1))²]`
-/

namespace A020487.P13156622376762635114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107079 (n + 1) : ℚ) / (A158275 (A107079 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020487.P13156622376762635114

/-!
# A020491: Numbers k such that sigma_0(k) divides phi(k).

The programs for A020491, the canonical program `A020491.P11470953447631525672` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020491 has offset 1).

The definition of A020491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020491.P17416809393020256637

`eq[1, A124331(1+n)]+1`
-/

namespace A020491.P17416809393020256637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124331 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020491.P17416809393020256637

namespace A020491

/-- `eq[1, A124331(1+n)]+1` -/
def P17416809393020256637.Spec : Prop :=
  ∀ n, (P17416809393020256637.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P15550528663755122392

`comp[A015733(1+n)-1]+1`
-/

namespace A020491.P15550528663755122392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A020491.P15550528663755122392

namespace A020491

/-- `comp[A015733(1+n)-1]+1` -/
def P15550528663755122392.Spec : Prop :=
  ∀ n, (P15550528663755122392.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P12286331697150174426

`record[(n+2)/A124331(n+2)]`
-/

namespace A020491.P12286331697150174426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A124331 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020491.P12286331697150174426

namespace A020491

/-- `record[(n+2)/A124331(n+2)]` -/
def P12286331697150174426.Spec : Prop :=
  ∀ n, P12286331697150174426.a n = (A020491 (n + 1) : ℚ)

end A020491

/-! ## A020491.P3774065760935763835

`∪[A006005(n+1), A069237(n+1)]`
-/

namespace A020491.P3774065760935763835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P3774065760935763835

namespace A020491

/-- `∪[A006005(n+1), A069237(n+1)]` -/
def P3774065760935763835.Spec : Prop :=
  ∀ n, (P3774065760935763835.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P6637460902333671806

`∪[A056911(n+1), A069237(n+1)]`
-/

namespace A020491.P6637460902333671806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P6637460902333671806

namespace A020491

/-- `∪[A056911(n+1), A069237(n+1)]` -/
def P6637460902333671806.Spec : Prop :=
  ∀ n, (P6637460902333671806.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P11356475838150010911

`∪[A069237(n+1), A176997(n+1)]`
-/

namespace A020491.P11356475838150010911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P11356475838150010911

namespace A020491

/-- `∪[A069237(n+1), A176997(n+1)]` -/
def P11356475838150010911.Spec : Prop :=
  ∀ n, (P11356475838150010911.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P11418936445047327022

`∪[A069237(n+1), A179458(n+1)]`
-/

namespace A020491.P11418936445047327022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P11418936445047327022

namespace A020491

/-- `∪[A069237(n+1), A179458(n+1)]` -/
def P11418936445047327022.Spec : Prop :=
  ∀ n, (P11418936445047327022.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P89342427599783707

`∪[A069237(n+1), A210494(n+1)]`
-/

namespace A020491.P89342427599783707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P89342427599783707

namespace A020491

/-- `∪[A069237(n+1), A210494(n+1)]` -/
def P89342427599783707.Spec : Prop :=
  ∀ n, (P89342427599783707.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P11683322853345193019

`∪[A069237(n+1), A235866(n+1)]`
-/

namespace A020491.P11683322853345193019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P11683322853345193019

namespace A020491

/-- `∪[A069237(n+1), A235866(n+1)]` -/
def P11683322853345193019.Spec : Prop :=
  ∀ n, (P11683322853345193019.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P18216854110126744344

`∪[A069237(n+1), A255602(n+1)]`
-/

namespace A020491.P18216854110126744344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P18216854110126744344

namespace A020491

/-- `∪[A069237(n+1), A255602(n+1)]` -/
def P18216854110126744344.Spec : Prop :=
  ∀ n, (P18216854110126744344.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P17887724986412923179

`∪[A069237(n+1), A340077(n+1)]`
-/

namespace A020491.P17887724986412923179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P17887724986412923179

namespace A020491

/-- `∪[A069237(n+1), A340077(n+1)]` -/
def P17887724986412923179.Spec : Prop :=
  ∀ n, (P17887724986412923179.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P11470953447631525672

`record[gcd(n+1, A000010(n+1)%A000005(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A020491

/-- `record[gcd(n+1, A000010(n+1)%A000005(n+1))]` -/
def P11470953447631525672.Spec : Prop :=
  ∀ n, (P11470953447631525672.a n : ℤ) = A020491 (n + 1)

theorem P11470953447631525672.correct : P11470953447631525672.Spec := by
  intro n
  simp only [A020491, Nat.add_sub_cancel]

end A020491

/-! ## A020491.P3088615376485342873

`eq[1, A279288(n+1)]+1`
-/

namespace A020491.P3088615376485342873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020491.P3088615376485342873

namespace A020491

/-- `eq[1, A279288(n+1)]+1` -/
def P3088615376485342873.Spec : Prop :=
  ∀ n, (P3088615376485342873.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P16366032750016153928

`lt[A279288(abs(1-n)+1), 2]`
-/

namespace A020491.P16366032750016153928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279288 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A020491.P16366032750016153928

namespace A020491

/-- `lt[A279288(abs(1-n)+1), 2]` -/
def P16366032750016153928.Spec : Prop :=
  ∀ n, (P16366032750016153928.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P3251566836769530315

`∪[A069237(n+1), A152955(n+1)]`
-/

namespace A020491.P3251566836769530315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P3251566836769530315

namespace A020491

/-- `∪[A069237(n+1), A152955(n+1)]` -/
def P3251566836769530315.Spec : Prop :=
  ∀ n, (P3251566836769530315.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P13052353966571294912

`record[A008620(n)/A279288(A008620(n))]`
-/

namespace A020491.P13052353966571294912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) / (A279288 (A008620 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020491.P13052353966571294912

namespace A020491

/-- `record[A008620(n)/A279288(A008620(n))]` -/
def P13052353966571294912.Spec : Prop :=
  ∀ n, P13052353966571294912.a n = (A020491 (n + 1) : ℚ)

end A020491

/-! ## A020491.P7937310525376071990

`eq[n, A028310(n*A279288(A028310(n)))]`
-/

namespace A020491.P7937310525376071990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A279288 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020491.P7937310525376071990

namespace A020491

/-- `eq[n, A028310(n*A279288(A028310(n)))]` -/
def P7937310525376071990.Spec : Prop :=
  ∀ n, (P7937310525376071990.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P17751463208678884290

`record[A001462(n+1)/A279288(A001462(n+1))]`
-/

namespace A020491.P17751463208678884290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001462 (n + 1) : ℚ) / (A279288 (A001462 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020491.P17751463208678884290

namespace A020491

/-- `record[A001462(n+1)/A279288(A001462(n+1))]` -/
def P17751463208678884290.Spec : Prop :=
  ∀ n, P17751463208678884290.a n = (A020491 (n + 1) : ℚ)

end A020491

/-! ## A020491.P3229944275714123562

`∪[A069237(n+1), A294674(n+1)]`
-/

namespace A020491.P3229944275714123562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P3229944275714123562

namespace A020491

/-- `∪[A069237(n+1), A294674(n+1)]` -/
def P3229944275714123562.Spec : Prop :=
  ∀ n, (P3229944275714123562.a n : ℤ) = A020491 (n + 1)

end A020491

/-! ## A020491.P5101197999679324132

`∪[A069237(n+1), A342144(n+1)]`
-/

namespace A020491.P5101197999679324132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020491.P5101197999679324132

namespace A020491

/-- `∪[A069237(n+1), A342144(n+1)]` -/
def P5101197999679324132.Spec : Prop :=
  ∀ n, (P5101197999679324132.a n : ℤ) = A020491 (n + 1)

end A020491

/-!
# A020492: Balanced numbers: numbers k such that phi(k) (A000010) divides sigma(k) (A000203).

The programs for A020492, there is no canonical definition to state claims against.
-/

/-! ## A020492.P3061514925734304400

`∪[A076375(n+1), A076484(n+1)]`
-/

namespace A020492.P3061514925734304400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020492.P3061514925734304400

/-! ## A020492.P11759027636277796393

`∪[A291565(n+1), A291566(n+1)]`
-/

namespace A020492.P11759027636277796393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020492.P11759027636277796393

/-! ## A020492.P12706243227416319155

`∪[A342103(n+1), A342104(n+1)]`
-/

namespace A020492.P12706243227416319155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020492.P12706243227416319155

/-! ## A020492.P8479835302087801584

`∩[A015765(n+1), A015769(n+1)]`
-/

namespace A020492.P8479835302087801584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020492.P8479835302087801584

/-! ## A020492.P2848863513604053230

`∩[A015769(n+1), A015771(n+1)]`
-/

namespace A020492.P2848863513604053230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020492.P2848863513604053230

/-! ## A020492.P848650175439154518

`filter[A015763(n+1), A351114(#)]`
-/

namespace A020492.P848650175439154518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P848650175439154518

/-! ## A020492.P6482563606251320007

`filter[A015765(n+1), A351114(#)]`
-/

namespace A020492.P6482563606251320007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P6482563606251320007

/-! ## A020492.P8095665048131872253

`filter[A015769(n+1), A351114(#)]`
-/

namespace A020492.P8095665048131872253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P8095665048131872253

/-! ## A020492.P15200627346706823227

`filter[A015771(n+1), A351114(#)]`
-/

namespace A020492.P15200627346706823227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P15200627346706823227

/-! ## A020492.P8499341511699232292

`filter[A066994(n+1), A351114(#)]`
-/

namespace A020492.P8499341511699232292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P8499341511699232292

/-! ## A020492.P1248734423406089891

`filter[A324243(n+1), A351114(#)]`
-/

namespace A020492.P1248734423406089891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P1248734423406089891

/-! ## A020492.P17788579145748207175

`filter[A305900(n+1), A351114(#)]`
-/

namespace A020492.P17788579145748207175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P17788579145748207175

/-! ## A020492.P5401311674509269921

`filter[A319707(n+1), A351114(#)]`
-/

namespace A020492.P5401311674509269921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P5401311674509269921

/-! ## A020492.P4956369658351762483

`filter[A379000(n+1), A351114(#)]`
-/

namespace A020492.P4956369658351762483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P4956369658351762483

/-! ## A020492.P2309020141623800787

`filter[A305901(n+1), A351114(#)]`
-/

namespace A020492.P2309020141623800787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P2309020141623800787

/-! ## A020492.P13818376696145252100

`filter[A305902(n+1), A351114(#)]`
-/

namespace A020492.P13818376696145252100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020492.P13818376696145252100

/-! ## A020492.P11332703171728089988

`eq[0, A000203(n+1)%A000010(n+1)]+1`
-/

namespace A020492.P11332703171728089988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020492.P11332703171728089988

/-!
# A020493: Numbers k such that d(k) (number of divisors) divides phi(k) (Euler function) divides sigma(k) (sum of divisors).

The programs for A020493, there is no canonical definition to state claims against.
-/

/-! ## A020493.P4944295824867649477

`∩[A055464(n+1), A342103(n+1)]`
-/

namespace A020493.P4944295824867649477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020493.P4944295824867649477

/-! ## A020493.P7695954129672233646

`filter[A020491(n+1), A351114(#)]`
-/

namespace A020493.P7695954129672233646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351114 (f1 j).toNat = 1) n)

end

end A020493.P7695954129672233646

/-! ## A020493.P508660291515093556

`∩[A020491(n+1), A020492(n+1)]`
-/

namespace A020493.P508660291515093556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020493.P508660291515093556

/-! ## A020493.P13649555763621547063

`∩[A020491(n+1), A342103(n+1)]`
-/

namespace A020493.P13649555763621547063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020493.P13649555763621547063

/-!
# A020494: Expansion of 1/((1-5x)(1-9x)(1-10x)).

The programs for A020494, the canonical program `A020494.P6571133285840443077` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020494 has offset 0).

The definition of A020494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020494.P6571133285840443077

`19*a(n-1)-90*a(n-2)+5^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020494

/-- `19*a(n-1)-90*a(n-2)+5^n` -/
def P6571133285840443077.Spec : Prop :=
  ∀ n, P6571133285840443077.a n = A020494 n

theorem P6571133285840443077.correct : P6571133285840443077.Spec := by
  intro n
  simp only [A020494]

end A020494

/-! ## A020494.P17067031647236200056

`5*5^n/4-81*9^n/4+20*10^n`
-/

namespace A020494.P17067031647236200056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 5 ^ n : ℚ) / 4 - (81 * 9 ^ n : ℚ) / 4 + (20 * 10 ^ n : ℚ)

end

end A020494.P17067031647236200056

namespace A020494

/-- `5*5^n/4-81*9^n/4+20*10^n` -/
def P17067031647236200056.Spec : Prop :=
  ∀ n, P17067031647236200056.a n = (A020494 n : ℚ)

theorem P17067031647236200056.correct : P17067031647236200056.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020494, Nat.add_sub_cancel, A020494.P17067031647236200056.a, A020494.P6571133285840443077.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020494, Nat.add_sub_cancel, A020494.P17067031647236200056.a, A020494.P6571133285840443077.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020494

/-! ## A020494.P5479442669029456448

`Δ[A016237(n)-A016234(n)]`
-/

namespace A020494.P5479442669029456448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016237 n - A016234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020494.P5479442669029456448

namespace A020494

/-- `Δ[A016237(n)-A016234(n)]` -/
def P5479442669029456448.Spec : Prop :=
  ∀ n, P5479442669029456448.a n = A020494 n

end A020494

/-!
# A020495: Neither square nor square + prime.

The programs for A020495, there is no canonical definition to state claims against.
-/

/-! ## A020495.P9396240772004657618

`filter[A014090(n+1), A049240(#)]`
-/

namespace A020495.P9396240772004657618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A020495.P9396240772004657618

/-! ## A020495.P9038944436562754889

`filter[A014090(n+2), A380458(#)]`
-/

namespace A020495.P9038944436562754889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A020495.P9038944436562754889

/-! ## A020495.P12988507250656822906

`∩[A014090(n+1), A102750(n+1)]`
-/

namespace A020495.P12988507250656822906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020495.P12988507250656822906

/-! ## A020495.P7224884437437902242

`record[A144907(A014090(n+2))]`
-/

namespace A020495.P7224884437437902242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (A014090 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020495.P7224884437437902242

/-! ## A020495.P9451317823238953334

`filter[A014090(n+1), A266754(#)]`
-/

namespace A020495.P9451317823238953334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266754 (f1 j).toNat = 1) n)

end

end A020495.P9451317823238953334

/-!
# A020496: From the ground state energy of a variant of the Hubbard Hamiltonian for 2 holes on a lattice of n sites.

The programs for A020496, there is no canonical definition to state claims against.
-/

/-! ## A020496.P4482918556953468520

`A070119(A026985(n))`
-/

namespace A020496.P4482918556953468520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (A026985 n).toNat

end

end A020496.P4482918556953468520

/-!
# A020497: Conjecturally, this is the minimal y such that n primes occur infinitely often among (x+1, ..., x+y), that is, pi(x+y) - pi(x) >= n for infinitely many x.

The programs for A020497, there is no canonical definition to state claims against.
-/

/-! ## A020497.P6813576996455318244

`A008407(n+1)+1`
-/

namespace A020497.P6813576996455318244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (n + 1) + 1

end

end A020497.P6813576996455318244

/-! ## A020497.P531263562079709897

`or(1, A008407(Δ[n²]-n))`
-/

namespace A020497.P531263562079709897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008407 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A020497.P531263562079709897

/-! ## A020497.P14870309823523811574

`A004442(A008407(n+1))`
-/

namespace A020497.P14870309823523811574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A008407 (n + 1)).toNat

end

end A020497.P14870309823523811574

/-! ## A020497.P5290780857949577428

`record[or(1, A008407(A328399(n)))]`
-/

namespace A020497.P5290780857949577428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008407 (A328399 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020497.P5290780857949577428

/-! ## A020497.P15516896064438439000

`record[xor(1, A008407(A263111(n)))]`
-/

namespace A020497.P15516896064438439000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008407 (A263111 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020497.P15516896064438439000

/-! ## A020497.P15367491425890074747

`A008619(2*A008407(Δ[n²]-n))`
-/

namespace A020497.P15367491425890074747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A008407 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A020497.P15367491425890074747

/-! ## A020497.P9631086069774337178

`A047947(n)+a(n-1)` with `a(0)=1`
-/

namespace A020497.P9631086069774337178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047947 n + a (n - 1)

end

end A020497.P9631086069774337178

/-! ## A020497.P6406563114855404566

`∑[A047947(n+1)]+1-A047947(n+1)`
-/

namespace A020497.P6406563114855404566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A047947 (n + 1))

end

end A020497.P6406563114855404566

/-!
# A020498: a(n) is the least number > a(n-1) such that there is no prime p for which a(1) through a(n) would contain all residues modulo p.

The programs for A020498, there is no canonical definition to state claims against.
-/

/-! ## A020498.P17570802848829750976

`A135311(n+1)+1`
-/

namespace A020498.P17570802848829750976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135311 (n + 1) + 1

end

end A020498.P17570802848829750976

/-! ## A020498.P7902848461027156231

`A210537(n+1)-2`
-/

namespace A020498.P7902848461027156231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210537 (n + 1) - 2

end

end A020498.P7902848461027156231

/-! ## A020498.P11368081236213325734

`A004442(A135311(n+1))`
-/

namespace A020498.P11368081236213325734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A135311 (n + 1)).toNat

end

end A020498.P11368081236213325734

/-! ## A020498.P6421552271134529101

`A023444(A210537(n+1))`
-/

namespace A020498.P6421552271134529101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A210537 (n + 1)).toNat

end

end A020498.P6421552271134529101

/-! ## A020498.P18179184656803104746

`A023445(A210537(n+1)+1)`
-/

namespace A020498.P18179184656803104746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A210537 (n + 1) + 1).toNat

end

end A020498.P18179184656803104746

/-!
# A020499: Expansion of 1/((1-5x)(1-9x)(1-11x)).

The programs for A020499, the canonical program `A020499.P5824353386130562467` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020499 has offset 0).

The definition of A020499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020499.P5824353386130562467

`20*a(n-1)-99*a(n-2)+5^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020499

/-- `20*a(n-1)-99*a(n-2)+5^n` -/
def P5824353386130562467.Spec : Prop :=
  ∀ n, P5824353386130562467.a n = A020499 n

theorem P5824353386130562467.correct : P5824353386130562467.Spec := by
  intro n
  simp only [A020499]

end A020499

/-! ## A020499.P15114683827350003339

`25*5^n/24-81*9^n/8+121*11^n/12`
-/

namespace A020499.P15114683827350003339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * 5 ^ n : ℚ) / 24 - (81 * 9 ^ n : ℚ) / 8 + (121 * 11 ^ n : ℚ) / 12

end

end A020499.P15114683827350003339

namespace A020499

/-- `25*5^n/24-81*9^n/8+121*11^n/12` -/
def P15114683827350003339.Spec : Prop :=
  ∀ n, P15114683827350003339.a n = (A020499 n : ℚ)

theorem P15114683827350003339.correct : P15114683827350003339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020499, Nat.add_sub_cancel, A020499.P15114683827350003339.a, A020499.P5824353386130562467.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020499, Nat.add_sub_cancel, A020499.P15114683827350003339.a, A020499.P5824353386130562467.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020499

