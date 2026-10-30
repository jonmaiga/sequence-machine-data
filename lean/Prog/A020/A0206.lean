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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A020600: Smallest nonempty set S containing prime divisors of 5k+8 for each k in S.

The programs for A020600, there is no canonical definition to state claims against.
-/

/-! ## A020600.P15990912551244332590

`p?[eq[1, A170818(A138261(n+1))]]`
-/

namespace A020600.P15990912551244332590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A138261 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020600.P15990912551244332590

/-! ## A020600.P10100791185290441156

`eq[A003415(n), A170818(A138261(n+1))]`
-/

namespace A020600.P10100791185290441156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A138261 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020600.P10100791185290441156

/-! ## A020600.P11337129953497852925

`A000040(lt[A327127(n), A308028(n+5)])`
-/

namespace A020600.P11337129953497852925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308028 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020600.P11337129953497852925

/-! ## A020600.P16487745520266324587

`p?[A028310(n)*A170818(A138261(n+1))]`
-/

namespace A020600.P16487745520266324587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A170818 (A138261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020600.P16487745520266324587

/-! ## A020600.P1063970193935569176

`A000040(lt[A000793(2*n+3), A340703(3*n+2)])`
-/

namespace A020600.P1063970193935569176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340703 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020600.P1063970193935569176

/-!
# A020602: Smallest nonempty set S containing prime divisors of 6k+1 for each k in S.

The programs for A020602, there is no canonical definition to state claims against.
-/

/-! ## A020602.P16105565877346638314

`p?[A059543(A114886(n+1))+3]`
-/

namespace A020602.P16105565877346638314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059543 (A114886 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020602.P16105565877346638314

/-! ## A020602.P8743727754201400088

`p?[A002024(A334984(n+1))+n]`
-/

namespace A020602.P8743727754201400088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A334984 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020602.P8743727754201400088

/-! ## A020602.P7920435168871888228

`p?[A118107(n+1)+A118065(n+5)]`
-/

namespace A020602.P7920435168871888228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118107 (n + 1) + A118065 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020602.P7920435168871888228

/-! ## A020602.P17729915929977921865

`p?[(n+4)*A047130(A047130(n))*n%2]`
-/

namespace A020602.P17729915929977921865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A047130 (A047130 n).toNat * ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020602.P17729915929977921865

/-! ## A020602.P1166574765796961087

`A000040(lt[A359016(n+3), A000578(n)])`
-/

namespace A020602.P1166574765796961087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359016 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020602.P1166574765796961087

/-!
# A020603: Smallest nonempty set S containing prime divisors of 6k+5 for each k in S.

The programs for A020603, there is no canonical definition to state claims against.
-/

/-! ## A020603.P14521454169601009087

`record[A289311(A115570(n+1)+n+6)]`
-/

namespace A020603.P14521454169601009087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289311 (A115570 (n + 1) + (n + 6 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020603.P14521454169601009087

/-! ## A020603.P9386257535602700069

`p?[A309265(n+1)*A321455(n+1)]`
-/

namespace A020603.P9386257535602700069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309265 (n + 1) * A321455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020603.P9386257535602700069

/-! ## A020603.P5054563146179231275

`p?[lt[A358527(2*n+1), A358536(n+6)]]`
-/

namespace A020603.P5054563146179231275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358527 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358536 (n + 6)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020603.P5054563146179231275

/-! ## A020603.P862666844711709064

`record[A000040(A285761(A259601(n+2)))]`
-/

namespace A020603.P862666844711709064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A285761 (A259601 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020603.P862666844711709064

/-!
# A020604: Smallest nonempty set S containing prime divisors of 6k+7 for each k in S.

The programs for A020604, there is no canonical definition to state claims against.
-/

/-! ## A020604.P5227162618470216565

`A172988(A173016(n+1)%A173002(2*n+1))`
-/

namespace A020604.P5227162618470216565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (Int.tmod (A173016 (n + 1)) (A173002 (2 * n + 1))).toNat

end

end A020604.P5227162618470216565

/-! ## A020604.P4799222416741485258

`A065091(lt[A279861(n+1), A237879(n+1)])`
-/

namespace A020604.P4799222416741485258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020604.P4799222416741485258

/-! ## A020604.P3368278086707196960

`∩[A172988(n+1), A348520(n+1)]`
-/

namespace A020604.P3368278086707196960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020604.P3368278086707196960

/-! ## A020604.P3661130628485588923

`∩[A172284(n+1), A378018(n+1)]`
-/

namespace A020604.P3661130628485588923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020604.P3661130628485588923

/-! ## A020604.P15962704634490005574

`lt[A328673(n), A035093(A052273(n+1))]`
-/

namespace A020604.P15962704634490005574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035093 (A052273 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A020604.P15962704634490005574

/-!
# A020605: Smallest nonempty set S containing prime divisors of 6k+8 for each k in S.

The programs for A020605, there is no canonical definition to state claims against.
-/

/-! ## A020605.P9433610621996366709

`A020582(n%a(n-1))` with `a(0)=2`
-/

namespace A020605.P9433610621996366709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A020582 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A020605.P9433610621996366709

/-! ## A020605.P977613688430608045

`p?[∪[2*n, A020582(n+1)]]`
-/

namespace A020605.P977613688430608045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020582 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020605.P977613688430608045

/-! ## A020605.P6108041904360017955

`p?[∪[A020582(n+1), A020555(n)]]`
-/

namespace A020605.P6108041904360017955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020582 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020555 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020605.P6108041904360017955

/-! ## A020605.P9031118368037480849

`p?[∪[A020582(n+1), A020557(n)]]`
-/

namespace A020605.P9031118368037480849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020582 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020557 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020605.P9031118368037480849

/-! ## A020605.P7709620892428476150

`p?[∪[A020582(n+1), A020561(n)]]`
-/

namespace A020605.P7709620892428476150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020582 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020561 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020605.P7709620892428476150

/-!
# A020606: Expansion of g.f. 1/((1-6*x)*(1-9*x)*(1-11*x)).

The programs for A020606, the canonical program `A020606.P13174332042543247827` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020606 has offset 0).

The definition of A020606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020606.P13174332042543247827

`20*a(n-1)-99*a(n-2)+6^n` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020606

/-- `20*a(n-1)-99*a(n-2)+6^n` -/
def P13174332042543247827.Spec : Prop :=
  ∀ n, P13174332042543247827.a n = A020606 n

theorem P13174332042543247827.correct : P13174332042543247827.Spec := by
  intro n
  simp only [A020606]

end A020606

/-! ## A020606.P13369481391432002413

`(3*11^(n+2)-5*9^(n+2)+2*6^(n+2))/30`
-/

namespace A020606.P13369481391432002413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 2) : ℤ) - (5 * 9 ^ (n + 2) : ℤ) + (2 * 6 ^ (n + 2) : ℤ) : ℚ) / 30

end

end A020606.P13369481391432002413

namespace A020606

/-- `(3*11^(n+2)-5*9^(n+2)+2*6^(n+2))/30` -/
def P13369481391432002413.Spec : Prop :=
  ∀ n, P13369481391432002413.a n = (A020606 n : ℚ)

theorem P13369481391432002413.correct : P13369481391432002413.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020606, Nat.add_sub_cancel, A020606.P13369481391432002413.a, A020606.P13174332042543247827.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020606, Nat.add_sub_cancel, A020606.P13369481391432002413.a, A020606.P13174332042543247827.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020606

/-! ## A020606.P14700353743643188226

`A016190(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A020606.P14700353743643188226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016190 n + 6 * a (n - 1)

end

end A020606.P14700353743643188226

namespace A020606

/-- `A016190(n)+6*a(n-1)` -/
def P14700353743643188226.Spec : Prop :=
  ∀ n, P14700353743643188226.a n = A020606 n

end A020606

/-! ## A020606.P14895580610032196749

`2*A016262(n)-A016244(n)`
-/

namespace A020606.P14895580610032196749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016262 n - A016244 n

end

end A020606.P14895580610032196749

namespace A020606

/-- `2*A016262(n)-A016244(n)` -/
def P14895580610032196749.Spec : Prop :=
  ∀ n, P14895580610032196749.a n = A020606 n

end A020606

/-! ## A020606.P4435326722128556742

`2*A020573(n)-A020571(n)`
-/

namespace A020606.P4435326722128556742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020573 n - A020571 n

end

end A020606.P4435326722128556742

namespace A020606

/-- `2*A020573(n)-A020571(n)` -/
def P4435326722128556742.Spec : Prop :=
  ∀ n, P4435326722128556742.a n = A020606 n

end A020606

/-! ## A020606.P108065323764138464

`A016261(n)+A016265(n)-A016244(n)`
-/

namespace A020606.P108065323764138464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016261 n + (A016265 n - A016244 n)

end

end A020606.P108065323764138464

namespace A020606

/-- `A016261(n)+A016265(n)-A016244(n)` -/
def P108065323764138464.Spec : Prop :=
  ∀ n, P108065323764138464.a n = A020606 n

end A020606

/-!
# A020609: Smallest nonempty set S containing prime divisors of 7k+4 for each k in S.

The programs for A020609, there is no canonical definition to state claims against.
-/

/-! ## A020609.P2609565795329084883

`p?[∑[A000005(A146771(3*n+4))]]`
-/

namespace A020609.P2609565795329084883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A146771 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020609.P2609565795329084883

/-! ## A020609.P3461800722493368391

`A303436(A294941(n+1))`
-/

namespace A020609.P3461800722493368391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303436 (A294941 (n + 1)).toNat

end

end A020609.P3461800722493368391

/-!
# A020610: Smallest nonempty set S containing prime divisors of 7k+5 for each k in S.

The programs for A020610, there is no canonical definition to state claims against.
-/

/-! ## A020610.P15592296825191243137

`p?[lt[A126168(A281978(n+1)+3), n+1]+1]`
-/

namespace A020610.P15592296825191243137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A281978 (n + 1) + 3).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020610.P15592296825191243137

/-! ## A020610.P2361574681328117560

`p?[∑[A334107(A281955(n+1))]]`
-/

namespace A020610.P2361574681328117560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334107 (A281955 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020610.P2361574681328117560

/-! ## A020610.P1667859510978407171

`p?[lt[A304042(n), A333253(n+1)]]`
-/

namespace A020610.P1667859510978407171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333253 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020610.P1667859510978407171

/-! ## A020610.P15103700519556471885

`p?[lt[A332278(n), A333253(n+1)]]`
-/

namespace A020610.P15103700519556471885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332278 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333253 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020610.P15103700519556471885

/-! ## A020610.P18034281256021519575

`eq[A324865(n+1), A345112(n+1)]`
-/

namespace A020610.P18034281256021519575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020610.P18034281256021519575

/-!
# A020611: Smallest nonempty set S containing prime divisors of 7k+6 for each k in S.

The programs for A020611, there is no canonical definition to state claims against.
-/

/-! ## A020611.P10618533308679359286

`eq[A032741(n²), A304181(n+1)]`
-/

namespace A020611.P10618533308679359286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020611.P10618533308679359286

/-! ## A020611.P8669508254784352948

`eq[A078898(n²), A304181(n+1)]`
-/

namespace A020611.P8669508254784352948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020611.P8669508254784352948

/-! ## A020611.P7615153592546082542

`eq[A105700(n²), A304181(n+1)]`
-/

namespace A020611.P7615153592546082542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020611.P7615153592546082542

/-! ## A020611.P3484497856209781706

`∩[A136207(n+1), A335486(n+1)]`
-/

namespace A020611.P3484497856209781706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020611.P3484497856209781706

/-!
# A020613: Smallest nonempty set S containing prime divisors of 7k+9 for each k in S.

The programs for A020613, there is no canonical definition to state claims against.
-/

/-! ## A020613.P13277442252654592080

`A000040(C(2*n+1, n+7)+2*n+1)`
-/

namespace A020613.P13277442252654592080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (2 * n + 1) (n + 7) + 2 * n + 1)

end

end A020613.P13277442252654592080

/-! ## A020613.P15881961628046025460

`A222566(A261213(n+1))`
-/

namespace A020613.P15881961628046025460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222566 (A261213 (n + 1)).toNat

end

end A020613.P15881961628046025460

/-! ## A020613.P13778885837560326202

`A090473(A028820(n+2))`
-/

namespace A020613.P13778885837560326202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090473 (A028820 (n + 2)).toNat

end

end A020613.P13778885837560326202

/-! ## A020613.P5310176642296249078

`A311687(n)+A042593(n)`
-/

namespace A020613.P5310176642296249078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311687 n + A042593 n

end

end A020613.P5310176642296249078

/-!
# A020614: Smallest nonempty set S containing prime divisors of 7k+10 for each k in S.

The programs for A020614, there is no canonical definition to state claims against.
-/

/-! ## A020614.P394821329626189715

`p?[A047298(n+1)+A034549(n+1)]`
-/

namespace A020614.P394821329626189715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047298 (n + 1) + A034549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020614.P394821329626189715

/-! ## A020614.P2633788401362377566

`p?[A263997(n+1)+A010426(n+1)]`
-/

namespace A020614.P2633788401362377566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (n + 1) + A010426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020614.P2633788401362377566

/-! ## A020614.P2543819422325372821

`record[gcd(A045426(n+1), A051175(n+1))]`
-/

namespace A020614.P2543819422325372821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045426 (n + 1)) (A051175 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020614.P2543819422325372821

/-!
# A020615: Smallest nonempty set S containing prime divisors of 8k+1 for each k in S.

The programs for A020615, there is no canonical definition to state claims against.
-/

/-! ## A020615.P3373421234869890074

`A000040(lt[A002729(n), A154788(n+1)])`
-/

namespace A020615.P3373421234869890074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020615.P3373421234869890074

/-! ## A020615.P1942955991228390114

`p?[A184946(n)+A005408(A242410(n+1))]`
-/

namespace A020615.P1942955991228390114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 n + A005408 (A242410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020615.P1942955991228390114

/-! ## A020615.P10326903863091841273

`p?[A160656(n+1)*A175077(A312517(n))]`
-/

namespace A020615.P10326903863091841273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 1) * A175077 (A312517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020615.P10326903863091841273

/-! ## A020615.P14751853680692749914

`A000040(lt[A164988(n+1), n])`
-/

namespace A020615.P14751853680692749914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164988 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A020615.P14751853680692749914

/-!
# A020616: Smallest nonempty set S containing prime divisors of 8k+2 for each k in S.

The programs for A020616, there is no canonical definition to state claims against.
-/

/-! ## A020616.P14217825667326781200

`A020587(n%a(n-1))` with `a(0)=2`
-/

namespace A020616.P14217825667326781200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A020587 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A020616.P14217825667326781200

/-! ## A020616.P11269233211042542174

`record[A000040(∑{e}[2-n, #]!+n)]`
-/

namespace A020616.P11269233211042542174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020616.P11269233211042542174

/-! ## A020616.P14352041606120840092

`record[A020639(a(n-1)+n-val(n, 3))]` with `a(0)=2`
-/

namespace A020616.P14352041606120840092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A020639 (f1 (n - 1) + ((n : ℤ) - (SequenceMachineLib.valuation n 3 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020616.P14352041606120840092

/-! ## A020616.P2379580933243197507

`p?[A018252(a(n-2)-1)-1]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6`
-/

namespace A020616.P2379580933243197507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6] fun n f1 =>
  A018252 (f1 (n - 2) - 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020616.P2379580933243197507

/-! ## A020616.P7494513717079317102

`A232824(A042952(n))`
-/

namespace A020616.P7494513717079317102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232824 (A042952 n).toNat

end

end A020616.P7494513717079317102

/-!
# A020617: Smallest nonempty set S containing prime divisors of 8k+3 for each k in S.

The programs for A020617, there is no canonical definition to state claims against.
-/

/-! ## A020617.P12947166424770058978

`A000040(lt[A210414(3*n+4), A098670(2*n+1)])`
-/

namespace A020617.P12947166424770058978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210414 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098670 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020617.P12947166424770058978

/-! ## A020617.P15632160766526773726

`p?[or(A118742(n), A350532(n))]`
-/

namespace A020617.P15632160766526773726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118742 n) (A350532 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020617.P15632160766526773726

/-! ## A020617.P17384580223451996111

`p?[(n+5)*A073165(A103493(n))]`
-/

namespace A020617.P17384580223451996111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A073165 (A103493 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020617.P17384580223451996111

/-! ## A020617.P1267572297949019900

`p?[A124010(n+10)*A300737(n+1)]`
-/

namespace A020617.P1267572297949019900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (n + 10) * A300737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020617.P1267572297949019900

/-! ## A020617.P1431376595982886615

`A000040(A131881(n+3)%A014886(n+1))`
-/

namespace A020617.P1431376595982886615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A131881 (n + 3)) (A014886 (n + 1))).toNat

end

end A020617.P1431376595982886615

/-!
# A020618: Smallest nonempty set S containing prime divisors of 8k+5 for each k in S.

The programs for A020618, there is no canonical definition to state claims against.
-/

/-! ## A020618.P2834552451628729731

`∩[A135832(n+1), A323733(n+1)]`
-/

namespace A020618.P2834552451628729731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020618.P2834552451628729731

/-! ## A020618.P7962108789323160318

`record[A084127(A262626(n+1)+A046053(3*n+4))]`
-/

namespace A020618.P7962108789323160318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (A262626 (n + 1) + A046053 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020618.P7962108789323160318

/-! ## A020618.P17252010198178342068

`A020632(lt[A337561(n), A162613(n+1)])`
-/

namespace A020618.P17252010198178342068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020632 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020618.P17252010198178342068

/-! ## A020618.P4725190229450499520

`A000040(lt[A326544(n), A267152(n+3)])`
-/

namespace A020618.P4725190229450499520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020618.P4725190229450499520

/-! ## A020618.P3613916477301345455

`eq[A032741(n), A330887(A330975(n+1))]`
-/

namespace A020618.P3613916477301345455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330887 (A330975 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020618.P3613916477301345455

/-!
# A020619: Smallest nonempty set S containing prime divisors of 8k+6 for each k in S.

The programs for A020619, there is no canonical definition to state claims against.
-/

/-! ## A020619.P12089424347063447772

`A000040(lt[A327201(n), A162912(n+1)])`
-/

namespace A020619.P12089424347063447772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020619.P12089424347063447772

/-! ## A020619.P2925402979571193885

`eq[A003415(n), A168508(A335469(n+2))]`
-/

namespace A020619.P2925402979571193885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168508 (A335469 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020619.P2925402979571193885

/-! ## A020619.P12713400114839537049

`A045344(lt[A030016(n), A351595(3*(n+1))])`
-/

namespace A020619.P12713400114839537049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020619.P12713400114839537049

/-! ## A020619.P3182438706905707471

`A000040(lt[A253565(3*(n+1)), A347763(3*n+1)])`
-/

namespace A020619.P3182438706905707471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020619.P3182438706905707471

/-! ## A020619.P13900114283388132281

`A094802(A194712(n+2))`
-/

namespace A020619.P13900114283388132281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A194712 (n + 2)).toNat

end

end A020619.P13900114283388132281

/-!
# A020620: Smallest nonempty set S containing prime divisors of 8k+7 for each k in S.

The programs for A020620, there is no canonical definition to state claims against.
-/

/-! ## A020620.P13324854733602062925

`p?[A322901(n+1)+A038605(A028310(n))]`
-/

namespace A020620.P13324854733602062925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (n + 1) + A038605 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020620.P13324854733602062925

/-! ## A020620.P15121682613190752222

`p?[A306209(A124027(n+7))+A285251(n+1)]`
-/

namespace A020620.P15121682613190752222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A124027 (n + 7)).toNat + A285251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020620.P15121682613190752222

/-! ## A020620.P979998882336383228

`A000040(lt[A144092(3*n), A007614(n+1)])`
-/

namespace A020620.P979998882336383228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144092 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020620.P979998882336383228

/-! ## A020620.P13630952207623148684

`A000040(lt[A285244(n), A339231(3*n+4)])`
-/

namespace A020620.P13630952207623148684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339231 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020620.P13630952207623148684

/-! ## A020620.P13651946519086486406

`A000040(lt[A319330(n+1), A168423(3*(n+1))])`
-/

namespace A020620.P13651946519086486406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168423 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020620.P13651946519086486406

/-!
# A020621: Smallest nonempty set S containing prime divisors of 8k+9 for each k in S.

The programs for A020621, there is no canonical definition to state claims against.
-/

/-! ## A020621.P8659434354963801489

`A000040(lt[A343347(n), A121550(n+1)])`
-/

namespace A020621.P8659434354963801489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020621.P8659434354963801489

/-! ## A020621.P16606722527964974390

`A000040(lt[A279220(n+1), A121550(n+1)])`
-/

namespace A020621.P16606722527964974390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020621.P16606722527964974390

/-! ## A020621.P11092714444914810119

`A000040(lt[A025162(n+1), A121550(n+1)])`
-/

namespace A020621.P11092714444914810119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020621.P11092714444914810119

/-! ## A020621.P6833490046115558287

`A000040(lt[A333220(2*n+5), A000578(n)])`
-/

namespace A020621.P6833490046115558287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020621.P6833490046115558287

/-! ## A020621.P1811279753638203449

`A000040(lt[A260897(2*(n+2)), A163875(n+1)])`
-/

namespace A020621.P1811279753638203449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020621.P1811279753638203449

/-!
# A020624: Smallest nonempty set S containing prime divisors of 9k+2 for each k in S.

The programs for A020624, there is no canonical definition to state claims against.
-/

/-! ## A020624.P5077362697476412572

`record[A020639(A336119(n+1)*A351535(n+1))]`
-/

namespace A020624.P5077362697476412572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A336119 (n + 1) * A351535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020624.P5077362697476412572

/-! ## A020624.P12536143502518884092

`A151800(p?[A003159(A331995(n+1))])`
-/

namespace A020624.P12536143502518884092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A331995 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A020624.P12536143502518884092

/-! ## A020624.P10131176392768357333

`p?[(A047247(n+1)+2)*A117440(A284289(n))]`
-/

namespace A020624.P10131176392768357333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047247 (n + 1) + 2) * A117440 (A284289 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020624.P10131176392768357333

/-! ## A020624.P5070484632460235464

`A000040(lt[A240062(2*n+5), A049450(n)])`
-/

namespace A020624.P5070484632460235464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240062 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020624.P5070484632460235464

/-!
# A020626: Smallest nonempty set S containing prime divisors of 9k+4 for each k in S.

The programs for A020626, there is no canonical definition to state claims against.
-/

/-! ## A020626.P1749407814660012902

`A000040(lt[A305632(n+3), n])`
-/

namespace A020626.P1749407814660012902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305632 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A020626.P1749407814660012902

/-! ## A020626.P18385592975485830703

`eq[A269394(n+1), A329651(n)]`
-/

namespace A020626.P18385592975485830703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020626.P18385592975485830703

/-! ## A020626.P17856301809953340119

`record[A007918(A102453(n+3)+2)]`
-/

namespace A020626.P17856301809953340119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A102453 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020626.P17856301809953340119

/-! ## A020626.P3048482092137566977

`∩[A132829(n+1), A233360(n+1)]`
-/

namespace A020626.P3048482092137566977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020626.P3048482092137566977

/-! ## A020626.P9489445679209273364

`∩[A233360(n+1), A279244(n+1)]`
-/

namespace A020626.P9489445679209273364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020626.P9489445679209273364

/-!
# A020627: Smallest nonempty set S containing prime divisors of 9k+5 for each k in S.

The programs for A020627, there is no canonical definition to state claims against.
-/

/-! ## A020627.P1023304469041944477

`p?[lt[A351645(n+1), A351653(n)]]`
-/

namespace A020627.P1023304469041944477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351645 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351653 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020627.P1023304469041944477

/-! ## A020627.P10404165205141444467

`A045344(lt[A268448(n+1), A324038(n)])`
-/

namespace A020627.P10404165205141444467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020627.P10404165205141444467

/-! ## A020627.P13365088991686170879

`eq[A079085(n+1), A390031(n)]`
-/

namespace A020627.P13365088991686170879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020627.P13365088991686170879

/-! ## A020627.P15141129311264040488

`A045344(lt[A143419(n), A344616(3*n+2)])`
-/

namespace A020627.P15141129311264040488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143419 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020627.P15141129311264040488

/-!
# A020628: Smallest nonempty set S containing prime divisors of 9k+6 for each k in S.

The programs for A020628, there is no canonical definition to state claims against.
-/

/-! ## A020628.P10208150555910083413

`p?[∑[A064099(A198661(n+1))]]`
-/

namespace A020628.P10208150555910083413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A198661 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020628.P10208150555910083413

/-! ## A020628.P12034014447118961199

`∩[A130101(n+1), A295020(n+1)]`
-/

namespace A020628.P12034014447118961199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020628.P12034014447118961199

/-! ## A020628.P4803403728631293248

`record[A020639(2*n+3)/A352517(3*n+2)]`
-/

namespace A020628.P4803403728631293248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * n + 3) : ℚ) / (A352517 (3 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020628.P4803403728631293248

/-! ## A020628.P17434641084552154326

`filter[A216823(n+2), A089939(#)]`
-/

namespace A020628.P17434641084552154326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216823 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089939 (f1 j).toNat = 1) n)

end

end A020628.P17434641084552154326

/-!
# A020630: Smallest nonempty set S containing prime divisors of 9k+8 for each k in S.

The programs for A020630, there is no canonical definition to state claims against.
-/

/-! ## A020630.P479305071413985666

`A008578(A026425(n+2))%A113939(n+2)`
-/

namespace A020630.P479305071413985666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A026425 (n + 2)).toNat) (A113939 (n + 2))

end

end A020630.P479305071413985666

/-! ## A020630.P17082552476307136140

`or(A008578(A026425(n+2)), A096094(n+2))`
-/

namespace A020630.P17082552476307136140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008578 (A026425 (n + 2)).toNat) (A096094 (n + 2))

end

end A020630.P17082552476307136140

/-! ## A020630.P16727583869083307756

`A023927(A185814(n))+A008578(A026425(n+2))`
-/

namespace A020630.P16727583869083307756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023927 (A185814 n).toNat + A008578 (A026425 (n + 2)).toNat

end

end A020630.P16727583869083307756

/-! ## A020630.P8045807808685808120

`A175677(A000043(n+1))+A008578(A026425(n+2))`
-/

namespace A020630.P8045807808685808120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175677 (A000043 (n + 1)).toNat + A008578 (A026425 (n + 2)).toNat

end

end A020630.P8045807808685808120

/-! ## A020630.P7165814417698248412

`A065091(lt[A107088(n), A381431(3*n+1)])`
-/

namespace A020630.P7165814417698248412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381431 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020630.P7165814417698248412

/-!
# A020631: Smallest nonempty set S containing prime divisors of 9k+10 for each k in S.

The programs for A020631, there is no canonical definition to state claims against.
-/

/-! ## A020631.P13592878087634315151

`A103934(2*A053233(n+1))`
-/

namespace A020631.P13592878087634315151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103934 (2 * A053233 (n + 1)).toNat

end

end A020631.P13592878087634315151

/-! ## A020631.P9106798070808598907

`A065091(A053233(n+1)%A182657(n+1))`
-/

namespace A020631.P9106798070808598907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (Int.tmod (A053233 (n + 1)) (A182657 (n + 1))).toNat

end

end A020631.P9106798070808598907

/-! ## A020631.P12401883710755266070

`A000040(lt[A173210(n+4), A173214(n+2)])`
-/

namespace A020631.P12401883710755266070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173210 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173214 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020631.P12401883710755266070

/-! ## A020631.P8384308109512717596

`A000040(∑[runs[A111786(3*(n+1))]])`
-/

namespace A020631.P8384308109512717596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111786 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020631.P8384308109512717596

/-!
# A020632: Smallest nonempty set S containing prime divisors of 10k+1 for each k in S.

The programs for A020632, there is no canonical definition to state claims against.
-/

/-! ## A020632.P9821177397536989597

`record[p?[or(n, A225778(n))]]`
-/

namespace A020632.P9821177397536989597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A225778 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020632.P9821177397536989597

/-! ## A020632.P17400334654825034220

`p?[lt[A294859(n+1), A277427(3*n+5)]]`
-/

namespace A020632.P17400334654825034220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294859 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277427 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020632.P17400334654825034220

/-! ## A020632.P14081074093504930174

`A000040(lt[A105681(n+1), A159797(n+2)])`
-/

namespace A020632.P14081074093504930174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020632.P14081074093504930174

/-! ## A020632.P9670806410409194342

`A000040(comp[A327481(n+1)-7]+1)`
-/

namespace A020632.P9670806410409194342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327481 (n + 1) - 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A020632.P9670806410409194342

/-! ## A020632.P10170248988795470289

`∩[A065091(n+1), A333228(A288204(n+1))]`
-/

namespace A020632.P10170248988795470289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333228 (A288204 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020632.P10170248988795470289

/-!
# A020633: Smallest nonempty set S containing prime divisors of 10k+3 for each k in S.

The programs for A020633, there is no canonical definition to state claims against.
-/

/-! ## A020633.P12360207618861123793

`p?[A263977(A302492(n+1))+5]`
-/

namespace A020633.P12360207618861123793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A302492 (n + 1)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020633.P12360207618861123793

/-! ## A020633.P3908743219640027579

`p?[lcm(n+6, A038792(A134735(n+1)))]`
-/

namespace A020633.P3908743219640027579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 6 : ℤ) (A038792 (A134735 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020633.P3908743219640027579

/-! ## A020633.P2675547153944153759

`A000040(∑[runs[A171998(n+1)]])`
-/

namespace A020633.P2675547153944153759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171998 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020633.P2675547153944153759

/-! ## A020633.P1885374789332922563

`filter[A001651(n+1), A279536(#)]`
-/

namespace A020633.P1885374789332922563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A279536 (f1 j).toNat = 1) n)

end

end A020633.P1885374789332922563

/-! ## A020633.P17554617595514227070

`∩[A091901(n+1), A178943(n+1)]`
-/

namespace A020633.P17554617595514227070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020633.P17554617595514227070

/-!
# A020634: Smallest nonempty set S containing prime divisors of 10k+4 for each k in S.

The programs for A020634, there is no canonical definition to state claims against.
-/

/-! ## A020634.P16752124681998331235

`A020596(n%a(n-1))` with `a(0)=2`
-/

namespace A020634.P16752124681998331235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A020596 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A020634.P16752124681998331235

/-! ## A020634.P6809492862810693882

`A020596(A028310(n))-C(2, n+2)`
-/

namespace A020634.P6809492862810693882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020596 (A028310 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A020634.P6809492862810693882

/-! ## A020634.P1829405079146710510

`∪[A006935(n+1), A020596(n+1)]`
-/

namespace A020634.P1829405079146710510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020634.P1829405079146710510

/-! ## A020634.P17320243575459973682

`∪[A007352(n+1), A020596(n+1)]`
-/

namespace A020634.P17320243575459973682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020634.P17320243575459973682

/-! ## A020634.P10683478315796672706

`∪[A020596(n+1), A023328(n+1)]`
-/

namespace A020634.P10683478315796672706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020634.P10683478315796672706

/-!
# A020635: Smallest nonempty set S containing prime divisors of 10k+7 for each k in S.

The programs for A020635, there is no canonical definition to state claims against.
-/

/-! ## A020635.P717655274744385964

`A382862(A077342(n+2))`
-/

namespace A020635.P717655274744385964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382862 (A077342 (n + 2)).toNat

end

end A020635.P717655274744385964

/-! ## A020635.P15886978850690472445

`A124219(A382862(n+2))`
-/

namespace A020635.P15886978850690472445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124219 (A382862 (n + 2)).toNat

end

end A020635.P15886978850690472445

/-! ## A020635.P2627825514452999351

`A382862(A242474(n+2))`
-/

namespace A020635.P2627825514452999351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382862 (A242474 (n + 2)).toNat

end

end A020635.P2627825514452999351

/-! ## A020635.P12924463665687754684

`A382862(A351374(n+2))`
-/

namespace A020635.P12924463665687754684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382862 (A351374 (n + 2)).toNat

end

end A020635.P12924463665687754684

/-!
# A020636: Smallest nonempty set S containing prime divisors of 10k+8 for each k in S.

The programs for A020636, there is no canonical definition to state claims against.
-/

/-! ## A020636.P6876387292469579851

`A020598(n%a(n-1))` with `a(0)=2`
-/

namespace A020636.P6876387292469579851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A020598 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A020636.P6876387292469579851

/-! ## A020636.P17523062430354486691

`p?[∪[2*n, A020598(n+1)]]`
-/

namespace A020636.P17523062430354486691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020598 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020636.P17523062430354486691

/-! ## A020636.P2630523162780346812

`A020598(round(acot(a(n-1)+1)+n))` with `a(0)=2`
-/

namespace A020636.P2630523162780346812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A020598 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (a (n - 1) + 1 : ℝ) + (n : ℝ))).toNat

end

end A020636.P2630523162780346812

/-! ## A020636.P15736318546801757214

`p?[∪[A020598(n+1), A020555(n)]]`
-/

namespace A020636.P15736318546801757214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020598 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020555 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020636.P15736318546801757214

/-! ## A020636.P10645760994041770181

`p?[∪[A020598(n+1), A020557(n)]]`
-/

namespace A020636.P10645760994041770181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020598 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020557 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020636.P10645760994041770181

/-!
# A020637: Smallest nonempty set S containing prime divisors of 10k+9 for each k in S.

The programs for A020637, there is no canonical definition to state claims against.
-/

/-! ## A020637.P17409857606071680482

`p?[A005408(n+3)*A008292(A054124(n))]`
-/

namespace A020637.P17409857606071680482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 3) * A008292 (A054124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020637.P17409857606071680482

/-! ## A020637.P2123179780116250518

`p?[A018252(A317492(n+1))+3]`
-/

namespace A020637.P2123179780116250518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A317492 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020637.P2123179780116250518

/-! ## A020637.P264038126379840732

`p?[or(A324705(n+1), A333254(n+1))]`
-/

namespace A020637.P264038126379840732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324705 (n + 1)) (A333254 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020637.P264038126379840732

/-! ## A020637.P1474323397102444703

`A033676(A080191(n+4)²)`
-/

namespace A020637.P1474323397102444703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A080191 (n + 4) ^ 2).toNat

end

end A020637.P1474323397102444703

/-! ## A020637.P9559283522731328453

`A080191(n+3+gcd(A229021(n+1), 3))`
-/

namespace A020637.P9559283522731328453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (n + 3 + Int.gcd (A229021 (n + 1)) 3)

end

end A020637.P9559283522731328453

/-!
# A020639: Lpf(n): least prime dividing n (when n > 1); a(1) = 1. Or, smallest prime factor of n, or smallest prime divisor of n.

The programs for A020639, there is no canonical definition to state claims against.
-/

/-! ## A020639.P15543098799498307741

`(n+1)/A032742(n+1)`
-/

namespace A020639.P15543098799498307741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ)

end

end A020639.P15543098799498307741

/-! ## A020639.P7578813688609615429

`A008578(A055396(n+1)+1)`
-/

namespace A020639.P7578813688609615429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A055396 (n + 1) + 1).toNat

end

end A020639.P7578813688609615429

/-! ## A020639.P13555170632089839225

`sqrt(A088377(n+1))`
-/

namespace A020639.P13555170632089839225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ)

end

end A020639.P13555170632089839225

/-! ## A020639.P12123954322765058145

`sqrt(sqrt(A088379(n+1)))`
-/

namespace A020639.P12123954322765058145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A088379 (n + 1) : ℝ))

end

end A020639.P12123954322765058145

/-! ## A020639.P17450260973627694777

`A028233(∏{p}[n+1, #])`
-/

namespace A020639.P17450260973627694777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P17450260973627694777

/-! ## A020639.P5937014968331780307

`A034684(∏{p}[n+1, #])`
-/

namespace A020639.P5937014968331780307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P5937014968331780307

/-! ## A020639.P11250625004956988262

`A067695(∏{p}[n+1, #])`
-/

namespace A020639.P11250625004956988262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P11250625004956988262

/-! ## A020639.P14666461291990413112

`∏{p}[A068794(n+1), #]`
-/

namespace A020639.P14666461291990413112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A020639.P14666461291990413112

/-! ## A020639.P9743418156106144331

`A126773(∏{p}[n+1, #])`
-/

namespace A020639.P9743418156106144331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P9743418156106144331

/-! ## A020639.P2124489317781794875

`A134194(∏{p}[n+1, #])`
-/

namespace A020639.P2124489317781794875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P2124489317781794875

/-! ## A020639.P17859443047963282284

`A223490(∏{p}[n+1, #])`
-/

namespace A020639.P17859443047963282284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P17859443047963282284

/-! ## A020639.P993110901245749766

`A277698(∏{p}[n+1, #])`
-/

namespace A020639.P993110901245749766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P993110901245749766

/-! ## A020639.P6206171366707123442

`A277708(∏{p}[n+1, #])`
-/

namespace A020639.P6206171366707123442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P6206171366707123442

/-! ## A020639.P8656839104359061405

`A284694(∏{p}[n+1, #])`
-/

namespace A020639.P8656839104359061405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P8656839104359061405

/-! ## A020639.P14149963894696966668

`A304181(∏{p}[n+1, #])`
-/

namespace A020639.P14149963894696966668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A020639.P14149963894696966668

/-! ## A020639.P7722764246710872576

`∏{p}[A323130(n+1), #]`
-/

namespace A020639.P7722764246710872576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A020639.P7722764246710872576

/-! ## A020639.P506500307721229102

`A061228(n+1)-(n+1)`
-/

namespace A020639.P506500307721229102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - (n + 1 : ℤ)

end

end A020639.P506500307721229102

/-! ## A020639.P6198306909371528426

`A285109(n+1)/(n+1)`
-/

namespace A020639.P6198306909371528426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A020639.P6198306909371528426

/-! ## A020639.P1203711010435748280

`gcd(n+1, A063918(n+1))`
-/

namespace A020639.P1203711010435748280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A063918 (n + 1))

end

end A020639.P1203711010435748280

/-!
# A020640: Successive record periods of continued fraction for sqrt(k) (period of continued fraction for sqrt(A013645(n+1))).

The programs for A020640, there is no canonical definition to state claims against.
-/

/-! ## A020640.P15914317624048061287

`A003285(A013645(n+2))`
-/

namespace A020640.P15914317624048061287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A013645 (n + 2)).toNat

end

end A020640.P15914317624048061287

/-! ## A020640.P3711233765997760694

`record[A013943(n+1)]`
-/

namespace A020640.P3711233765997760694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020640.P3711233765997760694

/-! ## A020640.P8382325710685714468

`record[A097853(n+1)]`
-/

namespace A020640.P8382325710685714468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020640.P8382325710685714468

/-! ## A020640.P9020451850332621618

`record[A003285(n+2)]`
-/

namespace A020640.P9020451850332621618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020640.P9020451850332621618

/-! ## A020640.P12286712588977809846

`record[A067280(n+2)-1]`
-/

namespace A020640.P12286712588977809846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020640.P12286712588977809846

/-! ## A020640.P6100199975787492293

`record[A028833(n+2)+A028832(n+2)]`
-/

namespace A020640.P6100199975787492293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028833 (n + 2) + A028832 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020640.P6100199975787492293

/-! ## A020640.P10385970630402393091

`A097853(A013645(A097853(A288184(n+2))))`
-/

namespace A020640.P10385970630402393091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A013645 (A097853 (A288184 (n + 2)).toNat).toNat).toNat

end

end A020640.P10385970630402393091

/-!
# A020641: a(n)-th prime is sum of first k primes for some k.

The programs for A020641, the canonical program `A020641.P10934862193577514092` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020641 has offset 1).

The definition of A020641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020641.P10934862193577514092

`A061568(A013916(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A020641

/-- `A061568(A013916(n+1))` -/
def P10934862193577514092.Spec : Prop :=
  ∀ n, P10934862193577514092.a n = A020641 (n + 1)

theorem P10934862193577514092.correct : P10934862193577514092.Spec := by
  intro n
  simp only [A020641, Nat.add_sub_cancel]

end A020641

/-! ## A020641.P8141004846981110037

`A061568(eq[2, A007610(n+1)]+1)`
-/

namespace A020641.P8141004846981110037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A020641.P8141004846981110037

namespace A020641

/-- `A061568(eq[2, A007610(n+1)]+1)` -/
def P8141004846981110037.Spec : Prop :=
  ∀ n, P8141004846981110037.a n = A020641 (n + 1)

end A020641

/-! ## A020641.P15237610543939896628

`A061568(eq[2, A074369(n+1)]+1)`
-/

namespace A020641.P15237610543939896628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A020641.P15237610543939896628

namespace A020641

/-- `A061568(eq[2, A074369(n+1)]+1)` -/
def P15237610543939896628.Spec : Prop :=
  ∀ n, P15237610543939896628.a n = A020641 (n + 1)

end A020641

/-! ## A020641.P16107603123570584733

`A061568(eq[1, A302567(n+1)+1]+1)`
-/

namespace A020641.P16107603123570584733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302567 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A020641.P16107603123570584733

namespace A020641

/-- `A061568(eq[1, A302567(n+1)+1]+1)` -/
def P16107603123570584733.Spec : Prop :=
  ∀ n, P16107603123570584733.a n = A020641 (n + 1)

end A020641

/-! ## A020641.P12987802962691468318

`A061568(eq[n, n*A132995(n+1)]+1)`
-/

namespace A020641.P12987802962691468318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A132995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A020641.P12987802962691468318

namespace A020641

/-- `A061568(eq[n, n*A132995(n+1)]+1)` -/
def P12987802962691468318.Spec : Prop :=
  ∀ n, P12987802962691468318.a n = A020641 (n + 1)

end A020641

/-!
# A020642: n-th composite is sum of first k composites for some k.

The programs for A020642, the canonical program `A020642.P1879843505214688540` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020642 has offset 1).

The definition of A020642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020642.P1879843505214688540

`A305801(A013921(n+1))-3`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A020642

/-- `A305801(A013921(n+1))-3` -/
def P1879843505214688540.Spec : Prop :=
  ∀ n, P1879843505214688540.a n = A020642 (n + 1)

theorem P1879843505214688540.correct : P1879843505214688540.Spec := by
  intro n
  simp only [A020642, Nat.add_sub_cancel]

end A020642

/-! ## A020642.P13322750933782530149

`A026238(A013921(n+1))`
-/

namespace A020642.P13322750933782530149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A013921 (n + 1)).toNat

end

end A020642.P13322750933782530149

namespace A020642

/-- `A026238(A013921(n+1))` -/
def P13322750933782530149.Spec : Prop :=
  ∀ n, P13322750933782530149.a n = A020642 (n + 1)

end A020642

/-! ## A020642.P1416334889396414108

`record[A026238(A053767(n+1))]`
-/

namespace A020642.P1416334889396414108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A053767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020642.P1416334889396414108

namespace A020642

/-- `record[A026238(A053767(n+1))]` -/
def P1416334889396414108.Spec : Prop :=
  ∀ n, P1416334889396414108.a n = A020642 (n + 1)

end A020642

/-! ## A020642.P16102235581820528073

`A062298(A013921(n+1)-1)`
-/

namespace A020642.P16102235581820528073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A013921 (n + 1) - 1).toNat

end

end A020642.P16102235581820528073

namespace A020642

/-- `A062298(A013921(n+1)-1)` -/
def P16102235581820528073.Spec : Prop :=
  ∀ n, P16102235581820528073.a n = A020642 (n + 1)

end A020642

/-! ## A020642.P16620839868498236381

`record[A026238(∑[A002808(n+1)])]`
-/

namespace A020642.P16620839868498236381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020642.P16620839868498236381

namespace A020642

/-- `record[A026238(∑[A002808(n+1)])]` -/
def P16620839868498236381.Spec : Prop :=
  ∀ n, P16620839868498236381.a n = A020642 (n + 1)

end A020642

/-! ## A020642.P13575744733121427890

`record[A066246(∑[A002808(n+1)])]`
-/

namespace A020642.P13575744733121427890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020642.P13575744733121427890

namespace A020642

/-- `record[A066246(∑[A002808(n+1)])]` -/
def P13575744733121427890.Spec : Prop :=
  ∀ n, P13575744733121427890.a n = A020642 (n + 1)

end A020642

/-! ## A020642.P16662141605715585056

`and(A066246(A013921(n+1)), A260196(n))`
-/

namespace A020642.P16662141605715585056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066246 (A013921 (n + 1)).toNat) (A260196 n)

end

end A020642.P16662141605715585056

namespace A020642

/-- `and(A066246(A013921(n+1)), A260196(n))` -/
def P16662141605715585056.Spec : Prop :=
  ∀ n, P16662141605715585056.a n = A020642 (n + 1)

end A020642

/-! ## A020642.P8137992990679542844

`A066246(A013921(n+1))%A000041(n+6)`
-/

namespace A020642.P8137992990679542844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066246 (A013921 (n + 1)).toNat) (A000041 (n + 6))

end

end A020642.P8137992990679542844

namespace A020642

/-- `A066246(A013921(n+1))%A000041(n+6)` -/
def P8137992990679542844.Spec : Prop :=
  ∀ n, P8137992990679542844.a n = A020642 (n + 1)

end A020642

/-! ## A020642.P10169798670444617158

`A007318(C(2, n))*A066246(A013921(n+1))`
-/

namespace A020642.P10169798670444617158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A066246 (A013921 (n + 1)).toNat

end

end A020642.P10169798670444617158

namespace A020642

/-- `A007318(C(2, n))*A066246(A013921(n+1))` -/
def P10169798670444617158.Spec : Prop :=
  ∀ n, P10169798670444617158.a n = A020642 (n + 1)

end A020642

/-!
# A020643: a(n)-th squarefree is sum of first k squarefrees for some k.

The programs for A020643, the canonical program `A020643.P9151950905293445288` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020643 has offset 1).

The definition of A020643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020643.P2707628639490363855

`A107079(A013932(n+1))`
-/

namespace A020643.P2707628639490363855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A013932 (n + 1)).toNat

end

end A020643.P2707628639490363855

namespace A020643

/-- `A107079(A013932(n+1))` -/
def P2707628639490363855.Spec : Prop :=
  ∀ n, P2707628639490363855.a n = A020643 (n + 1)

end A020643

/-! ## A020643.P5404468007221887577

`A013928(A013932(n+1)+1)`
-/

namespace A020643.P5404468007221887577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A013932 (n + 1) + 1).toNat

end

end A020643.P5404468007221887577

namespace A020643

/-- `A013928(A013932(n+1)+1)` -/
def P5404468007221887577.Spec : Prop :=
  ∀ n, P5404468007221887577.a n = A020643 (n + 1)

end A020643

/-! ## A020643.P2858525240502765017

`A107079(A173143(A013930(n+1)))`
-/

namespace A020643.P2858525240502765017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A173143 (A013930 (n + 1)).toNat).toNat

end

end A020643.P2858525240502765017

namespace A020643

/-- `A107079(A173143(A013930(n+1)))` -/
def P2858525240502765017.Spec : Prop :=
  ∀ n, P2858525240502765017.a n = A020643 (n + 1)

end A020643

/-! ## A020643.P4804787525865287726

`A107079(A173143(A107079(A013931(n+1))))`
-/

namespace A020643.P4804787525865287726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A173143 (A107079 (A013931 (n + 1)).toNat).toNat).toNat

end

end A020643.P4804787525865287726

namespace A020643

/-- `A107079(A173143(A107079(A013931(n+1))))` -/
def P4804787525865287726.Spec : Prop :=
  ∀ n, P4804787525865287726.a n = A020643 (n + 1)

end A020643

/-! ## A020643.P9151950905293445288

`record[A322590(A066779(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A020643

/-- `record[A322590(A066779(n+1))]` -/
def P9151950905293445288.Spec : Prop :=
  ∀ n, P9151950905293445288.a n = A020643 (n + 1)

theorem P9151950905293445288.correct : P9151950905293445288.Spec := by
  intro n
  simp only [A020643, Nat.add_sub_cancel]

end A020643

/-! ## A020643.P9431989807212569325

`record[A322590(A173143(n+1))]`
-/

namespace A020643.P9431989807212569325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A173143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020643.P9431989807212569325

namespace A020643

/-- `record[A322590(A173143(n+1))]` -/
def P9431989807212569325.Spec : Prop :=
  ∀ n, P9431989807212569325.a n = A020643 (n + 1)

end A020643

/-! ## A020643.P1250507734508295171

`A322590(A013932(2*n+1-n))`
-/

namespace A020643.P1250507734508295171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A013932 (2 * n + 1 - n)).toNat

end

end A020643.P1250507734508295171

namespace A020643

/-- `A322590(A013932(2*n+1-n))` -/
def P1250507734508295171.Spec : Prop :=
  ∀ n, P1250507734508295171.a n = A020643 (n + 1)

end A020643

/-! ## A020643.P18154224434235870225

`A100112(A013932(n+1))`
-/

namespace A020643.P18154224434235870225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A013932 (n + 1)).toNat

end

end A020643.P18154224434235870225

namespace A020643

/-- `A100112(A013932(n+1))` -/
def P18154224434235870225.Spec : Prop :=
  ∀ n, P18154224434235870225.a n = A020643 (n + 1)

end A020643

/-!
# A020644: a(n)-th nonsquarefree is sum of first k nonsquarefrees for some k.

The programs for A020644, there is no canonical definition to state claims against.
-/

/-! ## A020644.P7972122680250048237

`A013935(n+1)-A013928(A013935(n+1))`
-/

namespace A020644.P7972122680250048237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013935 (n + 1) - A013928 (A013935 (n + 1)).toNat

end

end A020644.P7972122680250048237

/-! ## A020644.P8175902428605838349

`A329472(A013933(n+1))%A013928(A013935(n+1))`
-/

namespace A020644.P8175902428605838349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329472 (A013933 (n + 1)).toNat) (A013928 (A013935 (n + 1)).toNat)

end

end A020644.P8175902428605838349

/-! ## A020644.P2824384728999283985

`A057627(A013935(n+1))`
-/

namespace A020644.P2824384728999283985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A013935 (n + 1)).toNat

end

end A020644.P2824384728999283985

/-! ## A020644.P12678186423695971533

`A284584(lcm(A013935(n+1), A130151(n)))`
-/

namespace A020644.P12678186423695971533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 (Int.lcm (A013935 (n + 1)) (A130151 n))

end

end A020644.P12678186423695971533

/-! ## A020644.P17161447763621895734

`A284584(A013935(n+1)%A184477(n+1))`
-/

namespace A020644.P17161447763621895734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 (Int.tmod (A013935 (n + 1)) (A184477 (n + 1))).toNat

end

end A020644.P17161447763621895734

/-!
# A020645: Least positive integer k for which 4^n divides k!.

The programs for A020645, the canonical program `A020645.P1080551269528162408` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020645 has offset 0).

The definition of A020645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020645.P1264281232871806659

`A040000(n)*A046699(2*n+1)`
-/

namespace A020645.P1264281232871806659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A046699 (2 * n + 1)

end

end A020645.P1264281232871806659

namespace A020645

/-- `A040000(n)*A046699(2*n+1)` -/
def P1264281232871806659.Spec : Prop :=
  ∀ n, P1264281232871806659.a n = A020645 n

end A020645

/-! ## A020645.P1080551269528162408

`(A057427(n)+1)*A046699(2*n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020645

/-- `(A057427(n)+1)*A046699(2*n+1)` -/
def P1080551269528162408.Spec : Prop :=
  ∀ n, P1080551269528162408.a n = A020645 n

theorem P1080551269528162408.correct : P1080551269528162408.Spec := by
  intro n
  simp only [A020645]

end A020645

/-! ## A020645.P5754606584931489948

`2*A046699(2*n+1)-A000007(n)`
-/

namespace A020645.P5754606584931489948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046699 (2 * n + 1) - A000007 n

end

end A020645.P5754606584931489948

namespace A020645

/-- `2*A046699(2*n+1)-A000007(n)` -/
def P5754606584931489948.Spec : Prop :=
  ∀ n, P5754606584931489948.a n = A020645 n

end A020645

/-! ## A020645.P2576568951248464571

`A020639(A004277(n))*A046699(2*n+1)`
-/

namespace A020645.P2576568951248464571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A046699 (2 * n + 1)

end

end A020645.P2576568951248464571

namespace A020645

/-- `A020639(A004277(n))*A046699(2*n+1)` -/
def P2576568951248464571.Spec : Prop :=
  ∀ n, P2576568951248464571.a n = A020645 n

end A020645

/-! ## A020645.P15522270766716505085

`A046698(n+2)*A046699(2*n+1)`
-/

namespace A020645.P15522270766716505085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (n + 2) * A046699 (2 * n + 1)

end

end A020645.P15522270766716505085

namespace A020645

/-- `A046698(n+2)*A046699(2*n+1)` -/
def P15522270766716505085.Spec : Prop :=
  ∀ n, P15522270766716505085.a n = A020645 n

end A020645

/-! ## A020645.P4314308518141554084

`(4*n+1-A004273(2*n))*A046699(2*n+1)`
-/

namespace A020645.P4314308518141554084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) - A004273 (2 * n)) * A046699 (2 * n + 1)

end

end A020645.P4314308518141554084

namespace A020645

/-- `(4*n+1-A004273(2*n))*A046699(2*n+1)` -/
def P4314308518141554084.Spec : Prop :=
  ∀ n, P4314308518141554084.a n = A020645 n

end A020645

/-! ## A020645.P4317614796307747953

`A007843(2*n)`
-/

namespace A020645.P4317614796307747953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (2 * n)

end

end A020645.P4317614796307747953

namespace A020645

/-- `A007843(2*n)` -/
def P4317614796307747953.Spec : Prop :=
  ∀ n, P4317614796307747953.a n = A020645 n

end A020645

/-! ## A020645.P14890332892563789682

`A080578(2*n+1)%Δ[n²]+2*n+1`
-/

namespace A020645.P14890332892563789682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080578 (2 * n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (2 * n + 1 : ℤ)

end

end A020645.P14890332892563789682

namespace A020645

/-- `A080578(2*n+1)%Δ[n²]+2*n+1` -/
def P14890332892563789682.Spec : Prop :=
  ∀ n, P14890332892563789682.a n = A020645 n

end A020645

/-! ## A020645.P12693923914555276698

`A080578(2*n+1)-A087156(2*n+1)`
-/

namespace A020645.P12693923914555276698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (2 * n + 1) - A087156 (2 * n + 1)

end

end A020645.P12693923914555276698

namespace A020645

/-- `A080578(2*n+1)-A087156(2*n+1)` -/
def P12693923914555276698.Spec : Prop :=
  ∀ n, P12693923914555276698.a n = A020645 n

end A020645

/-! ## A020645.P5016132434275252095

`A036453(2*n+1)*A046699(2*n+1)`
-/

namespace A020645.P5016132434275252095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A046699 (2 * n + 1)

end

end A020645.P5016132434275252095

namespace A020645

/-- `A036453(2*n+1)*A046699(2*n+1)` -/
def P5016132434275252095.Spec : Prop :=
  ∀ n, P5016132434275252095.a n = A020645 n

end A020645

/-! ## A020645.P16687392079885584492

`lcm(A020639(A007843(n)), A007843(n+n))`
-/

namespace A020645.P16687392079885584492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A007843 n).toNat) (A007843 (n + n))

end

end A020645.P16687392079885584492

namespace A020645

/-- `lcm(A020639(A007843(n)), A007843(n+n))` -/
def P16687392079885584492.Spec : Prop :=
  ∀ n, (P16687392079885584492.a n : ℤ) = A020645 n

end A020645

/-! ## A020645.P7497485628819768717

`A046699(2*n+1)+A046699(2*(n+1))-A079559(2*n)`
-/

namespace A020645.P7497485628819768717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (2 * n + 1) + (A046699 (2 * (n + 1)) - A079559 (2 * n))

end

end A020645.P7497485628819768717

namespace A020645

/-- `A046699(2*n+1)+A046699(2*(n+1))-A079559(2*n)` -/
def P7497485628819768717.Spec : Prop :=
  ∀ n, P7497485628819768717.a n = A020645 n

end A020645

/-! ## A020645.P1245516493618022401

`A046699(A080578(2*n+1))`
-/

namespace A020645.P1245516493618022401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A080578 (2 * n + 1)).toNat

end

end A020645.P1245516493618022401

namespace A020645

/-- `A046699(A080578(2*n+1))` -/
def P1245516493618022401.Spec : Prop :=
  ∀ n, P1245516493618022401.a n = A020645 n

end A020645

/-! ## A020645.P12009387585484470139

`A046699(A005187(A007843(n+n)))`
-/

namespace A020645.P12009387585484470139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A005187 (A007843 (n + n)).toNat).toNat

end

end A020645.P12009387585484470139

namespace A020645

/-- `A046699(A005187(A007843(n+n)))` -/
def P12009387585484470139.Spec : Prop :=
  ∀ n, P12009387585484470139.a n = A020645 n

end A020645

/-! ## A020645.P11804357513704440560

`A046699(A055938(2*n+1)-A079559(2*n))`
-/

namespace A020645.P11804357513704440560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A055938 (2 * n + 1) - A079559 (2 * n)).toNat

end

end A020645.P11804357513704440560

namespace A020645

/-- `A046699(A055938(2*n+1)-A079559(2*n))` -/
def P11804357513704440560.Spec : Prop :=
  ∀ n, P11804357513704440560.a n = A020645 n

end A020645

/-! ## A020645.P15748504511760010840

`A046699(A005187(A046699(A055938(2*n+1))))`
-/

namespace A020645.P15748504511760010840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A005187 (A046699 (A055938 (2 * n + 1)).toNat).toNat).toNat

end

end A020645.P15748504511760010840

namespace A020645

/-- `A046699(A005187(A046699(A055938(2*n+1))))` -/
def P15748504511760010840.Spec : Prop :=
  ∀ n, P15748504511760010840.a n = A020645 n

end A020645

/-! ## A020645.P13923808939025762392

`A046699(2*n+1)/A065033(2*n)*A065033(4*n)`
-/

namespace A020645.P13923808939025762392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046699 (2 * n + 1) : ℚ) / (A065033 (2 * n) : ℚ) * (A065033 (4 * n) : ℚ)

end

end A020645.P13923808939025762392

namespace A020645

/-- `A046699(2*n+1)/A065033(2*n)*A065033(4*n)` -/
def P13923808939025762392.Spec : Prop :=
  ∀ n, P13923808939025762392.a n = (A020645 n : ℚ)

end A020645

/-! ## A020645.P11473019044992205309

`gcd(2, A051683(2*n+1))*A046699(2*n+1)`
-/

namespace A020645.P11473019044992205309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A051683 (2 * n + 1)) : ℤ) * A046699 (2 * n + 1)

end

end A020645.P11473019044992205309

namespace A020645

/-- `gcd(2, A051683(2*n+1))*A046699(2*n+1)` -/
def P11473019044992205309.Spec : Prop :=
  ∀ n, P11473019044992205309.a n = A020645 n

end A020645

/-! ## A020645.P11716218648455540201

`A011782(n+1)²/A011782(2*n)*A046699(2*n+1)`
-/

namespace A020645.P11716218648455540201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) ^ 2 : ℚ) / (A011782 (2 * n) : ℚ) * (A046699 (2 * n + 1) : ℚ)

end

end A020645.P11716218648455540201

namespace A020645

/-- `A011782(n+1)²/A011782(2*n)*A046699(2*n+1)` -/
def P11716218648455540201.Spec : Prop :=
  ∀ n, P11716218648455540201.a n = (A020645 n : ℚ)

end A020645

/-! ## A020645.P12455126942772418710

`A011782(2*n+1)/A011782(2*n)*A046699(2*n+1)`
-/

namespace A020645.P12455126942772418710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) : ℚ) / (A011782 (2 * n) : ℚ) * (A046699 (2 * n + 1) : ℚ)

end

end A020645.P12455126942772418710

namespace A020645

/-- `A011782(2*n+1)/A011782(2*n)*A046699(2*n+1)` -/
def P12455126942772418710.Spec : Prop :=
  ∀ n, P12455126942772418710.a n = (A020645 n : ℚ)

end A020645

/-!
# A020646: Least positive integer k for which 7^n divides k!.

The programs for A020646, there is no canonical definition to state claims against.
-/

/-! ## A020646.P369233624943007623

`A053829(n)+A008458(n)%A171762(n+2)`
-/

namespace A020646.P369233624943007623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n + Int.tmod (A008458 n) (A171762 (n + 2))

end

end A020646.P369233624943007623

/-! ## A020646.P15926060881527929709

`A008458(n)+A053829(n)%A293230(n)`
-/

namespace A020646.P15926060881527929709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + Int.tmod (A053829 n) (A293230 n)

end

end A020646.P15926060881527929709

/-! ## A020646.P4839972635308178822

`6*n+A103451(A055998(3*n))+A053829(n)`
-/

namespace A020646.P4839972635308178822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (A103451 (A055998 (3 * n)).toNat + A053829 n)

end

end A020646.P4839972635308178822

/-! ## A020646.P1886440760078748170

`gcd(A010815(A073535(n+1)), A053829(n))+6*n`
-/

namespace A020646.P1886440760078748170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A073535 (n + 1)).toNat) (A053829 n) + 6 * n

end

end A020646.P1886440760078748170

/-! ## A020646.P2333739232843207157

`6*n+A053829(n)+A010054(floor(A005914(n)/2)+1)`
-/

namespace A020646.P2333739232843207157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (A053829 n + A010054 (⌊(A005914 n : ℚ) / 2⌋ + 1).toNat)

end

end A020646.P2333739232843207157

/-!
# A020647: Least positive integer k for which 8^n divides k!.

The programs for A020647, the canonical program `A020647.P14923650809166500119` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020647 has offset 0).

The definition of A020647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020647.P896717021331546354

`A020639(A004277(n))*A046699(3*n+1)`
-/

namespace A020647.P896717021331546354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A046699 (3 * n + 1)

end

end A020647.P896717021331546354

namespace A020647

/-- `A020639(A004277(n))*A046699(3*n+1)` -/
def P896717021331546354.Spec : Prop :=
  ∀ n, P896717021331546354.a n = A020647 n

end A020647

/-! ## A020647.P3586496731520896982

`A034444(A034444(n+1))*A046699(3*n+1)`
-/

namespace A020647.P3586496731520896982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (n + 1)).toNat * A046699 (3 * n + 1)

end

end A020647.P3586496731520896982

namespace A020647

/-- `A034444(A034444(n+1))*A046699(3*n+1)` -/
def P3586496731520896982.Spec : Prop :=
  ∀ n, P3586496731520896982.a n = A020647 n

end A020647

/-! ## A020647.P14923650809166500119

`A004277(A046699(3*n+1)*A057427(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020647

/-- `A004277(A046699(3*n+1)*A057427(n))` -/
def P14923650809166500119.Spec : Prop :=
  ∀ n, P14923650809166500119.a n = A020647 n

theorem P14923650809166500119.correct : P14923650809166500119.Spec := by
  intro n
  simp only [A020647]

end A020647

/-! ## A020647.P2867415571845390673

`A004277(A046699(3*n+1)%A308196(n))`
-/

namespace A020647.P2867415571845390673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.tmod (A046699 (3 * n + 1)) (A308196 n)).toNat

end

end A020647.P2867415571845390673

namespace A020647

/-- `A004277(A046699(3*n+1)%A308196(n))` -/
def P2867415571845390673.Spec : Prop :=
  ∀ n, P2867415571845390673.a n = A020647 n

end A020647

/-! ## A020647.P17682851302042327055

`A007843(3*n)`
-/

namespace A020647.P17682851302042327055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (3 * n)

end

end A020647.P17682851302042327055

namespace A020647

/-- `A007843(3*n)` -/
def P17682851302042327055.Spec : Prop :=
  ∀ n, P17682851302042327055.a n = A020647 n

end A020647

/-! ## A020647.P12664780139224928511

`A007843(A008486(n))-A000007(n)`
-/

namespace A020647.P12664780139224928511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A008486 n).toNat - A000007 n

end

end A020647.P12664780139224928511

namespace A020647

/-- `A007843(A008486(n))-A000007(n)` -/
def P12664780139224928511.Spec : Prop :=
  ∀ n, P12664780139224928511.a n = A020647 n

end A020647

/-! ## A020647.P5267765632299218446

`A046699(A080578(3*n+1))`
-/

namespace A020647.P5267765632299218446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A080578 (3 * n + 1)).toNat

end

end A020647.P5267765632299218446

namespace A020647

/-- `A046699(A080578(3*n+1))` -/
def P5267765632299218446.Spec : Prop :=
  ∀ n, P5267765632299218446.a n = A020647 n

end A020647

/-! ## A020647.P1709784283040075741

`A046699(A055938(3*n+1)-A079559(3*n))`
-/

namespace A020647.P1709784283040075741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A055938 (3 * n + 1) - A079559 (3 * n)).toNat

end

end A020647.P1709784283040075741

namespace A020647

/-- `A046699(A055938(3*n+1)-A079559(3*n))` -/
def P1709784283040075741.Spec : Prop :=
  ∀ n, P1709784283040075741.a n = A020647 n

end A020647

/-! ## A020647.P13377754276264965759

`A046699(3*n+1)/A065033(2*n)*A065033(4*n)`
-/

namespace A020647.P13377754276264965759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046699 (3 * n + 1) : ℚ) / (A065033 (2 * n) : ℚ) * (A065033 (4 * n) : ℚ)

end

end A020647.P13377754276264965759

namespace A020647

/-- `A046699(3*n+1)/A065033(2*n)*A065033(4*n)` -/
def P13377754276264965759.Spec : Prop :=
  ∀ n, P13377754276264965759.a n = (A020647 n : ℚ)

end A020647

/-!
# A020648: Least positive integer k for which 9^n divides k!.

The programs for A020648, the canonical program `A020648.P9373385446498543105` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020648 has offset 0).

The definition of A020648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020648.P9373385446498543105

`A007844(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020648

/-- `A007844(2*n)` -/
def P9373385446498543105.Spec : Prop :=
  ∀ n, P9373385446498543105.a n = A020648 n

theorem P9373385446498543105.correct : P9373385446498543105.Spec := by
  intro n
  simp only [A020648]

end A020648

/-! ## A020648.P14403142527462849853

`or(char[9], A007844(A005843(n)))`
-/

namespace A020648.P14403142527462849853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007844 (A005843 n).toNat)

end

end A020648.P14403142527462849853

namespace A020648

/-- `or(char[9], A007844(A005843(n)))` -/
def P14403142527462849853.Spec : Prop :=
  ∀ n, P14403142527462849853.a n = A020648 n

end A020648

/-! ## A020648.P16290085595169355389

`A080579(2*n+1)-A087156(2*n+1)`
-/

namespace A020648.P16290085595169355389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (2 * n + 1) - A087156 (2 * n + 1)

end

end A020648.P16290085595169355389

namespace A020648

/-- `A080579(2*n+1)-A087156(2*n+1)` -/
def P16290085595169355389.Spec : Prop :=
  ∀ n, P16290085595169355389.a n = A020648 n

end A020648

/-! ## A020648.P16584262094926820871

`A007844(A005843(n))%A003185(n)`
-/

namespace A020648.P16584262094926820871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007844 (A005843 n).toNat) (A003185 n)

end

end A020648.P16584262094926820871

namespace A020648

/-- `A007844(A005843(n))%A003185(n)` -/
def P16584262094926820871.Spec : Prop :=
  ∀ n, P16584262094926820871.a n = A020648 n

end A020648

/-! ## A020648.P5704117640928182076

`gcd(A000038(n), A007844(A005843(n)))`
-/

namespace A020648.P5704117640928182076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007844 (A005843 n).toNat)

end

end A020648.P5704117640928182076

namespace A020648

/-- `gcd(A000038(n), A007844(A005843(n)))` -/
def P5704117640928182076.Spec : Prop :=
  ∀ n, (P5704117640928182076.a n : ℤ) = A020648 n

end A020648

/-! ## A020648.P9433754193816178863

`A007844(n+n)%A007845(A007843(n))`
-/

namespace A020648.P9433754193816178863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007844 (n + n)) (A007845 (A007843 n).toNat)

end

end A020648.P9433754193816178863

namespace A020648

/-- `A007844(n+n)%A007845(A007843(n))` -/
def P9433754193816178863.Spec : Prop :=
  ∀ n, P9433754193816178863.a n = A020648 n

end A020648

/-! ## A020648.P2585049327260224723

`A007844(n+n)^A344617(A027748(n+1))`
-/

namespace A020648.P2585049327260224723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007844 (n + n) : ℚ) ^ (A344617 (A027748 (n + 1)).toNat : ℤ)

end

end A020648.P2585049327260224723

namespace A020648

/-- `A007844(n+n)^A344617(A027748(n+1))` -/
def P2585049327260224723.Spec : Prop :=
  ∀ n, P2585049327260224723.a n = (A020648 n : ℚ)

end A020648

/-! ## A020648.P5561603647721027313

`A007844(n+n)+A007814(A007843(n+1)+1)`
-/

namespace A020648.P5561603647721027313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 (n + n) + A007814 (A007843 (n + 1) + 1).toNat

end

end A020648.P5561603647721027313

namespace A020648

/-- `A007844(n+n)+A007814(A007843(n+1)+1)` -/
def P5561603647721027313.Spec : Prop :=
  ∀ n, P5561603647721027313.a n = A020648 n

end A020648

/-! ## A020648.P16268386817955775195

`A080579(2*n+1)-A004524(A062545(2*n))`
-/

namespace A020648.P16268386817955775195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (2 * n + 1) - A004524 (A062545 (2 * n)).toNat

end

end A020648.P16268386817955775195

namespace A020648

/-- `A080579(2*n+1)-A004524(A062545(2*n))` -/
def P16268386817955775195.Spec : Prop :=
  ∀ n, P16268386817955775195.a n = A020648 n

end A020648

/-! ## A020648.P11963021162736705469

`A007844(n+n)+A007814(A181781(n+1))`
-/

namespace A020648.P11963021162736705469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 (n + n) + A007814 (A181781 (n + 1)).toNat

end

end A020648.P11963021162736705469

namespace A020648

/-- `A007844(n+n)+A007814(A181781(n+1))` -/
def P11963021162736705469.Spec : Prop :=
  ∀ n, P11963021162736705469.a n = A020648 n

end A020648

/-! ## A020648.P4806196931717631731

`A007844(n+n)^A007318(∑[n])`
-/

namespace A020648.P4806196931717631731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007844 (n + n) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A020648.P4806196931717631731

namespace A020648

/-- `A007844(n+n)^A007318(∑[n])` -/
def P4806196931717631731.Spec : Prop :=
  ∀ n, P4806196931717631731.a n = (A020648 n : ℚ)

end A020648

/-!
# A020649: Least quadratic nonresidue modulo n (with n >= 3).

The programs for A020649, there is no canonical definition to state claims against.
-/

/-! ## A020649.P8483876789070939554

`A165916(∑[A165918(n+2)]+3)`
-/

namespace A020649.P8483876789070939554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165918 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165916 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A020649.P8483876789070939554

/-! ## A020649.P16776685966557151703

`A096013(∑[A095972(n+2)]+3)`
-/

namespace A020649.P16776685966557151703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096013 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A020649.P16776685966557151703

/-! ## A020649.P7292783735229537312

`A111076(A299149(n+3))%A000229(n+1)`
-/

namespace A020649.P7292783735229537312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111076 (A299149 (n + 3)).toNat) (A000229 (n + 1))

end

end A020649.P7292783735229537312

/-! ## A020649.P622460572783050255

`A111076(A299149(n+3)%A307767(n+1))`
-/

namespace A020649.P622460572783050255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (Int.tmod (A299149 (n + 3)) (A307767 (n + 1))).toNat

end

end A020649.P622460572783050255

/-!
# A020650: Numerators in recursive bijection from positive integers to positive rationals (the bijection is f(1) = 1, f(2n) = f(n)+1, f(2n+1) = 1/(f(n)+1)).

The programs for A020650, the canonical program `A020650.P1404454172614925169` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020650 has offset 1).

The definition of A020650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231551, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A020650.P1404454172614925169

`A002487(1+A231551(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A020650

/-- `A002487(1+A231551(n+1))` -/
def P1404454172614925169.Spec : Prop :=
  ∀ n, P1404454172614925169.a n = A020650 (n + 1)

theorem P1404454172614925169.correct : P1404454172614925169.Spec := by
  intro n
  simp only [A020650, Nat.add_sub_cancel]

end A020650

/-! ## A020650.P8220401630916470724

`A294442(xor(1, n+1))`
-/

namespace A020650.P8220401630916470724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (Nat.xor 1 (n + 1))

end

end A020650.P8220401630916470724

namespace A020650

/-- `A294442(xor(1, n+1))` -/
def P8220401630916470724.Spec : Prop :=
  ∀ n, P8220401630916470724.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P128765359410191585

`A294442(A004442(n+1))`
-/

namespace A020650.P128765359410191585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A004442 (n + 1)).toNat

end

end A020650.P128765359410191585

namespace A020650

/-- `A294442(A004442(n+1))` -/
def P128765359410191585.Spec : Prop :=
  ∀ n, P128765359410191585.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P9488751811254902439

`A245327(A054429(n+1))`
-/

namespace A020650.P9488751811254902439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A054429 (n + 1)).toNat

end

end A020650.P9488751811254902439

namespace A020650

/-- `A245327(A054429(n+1))` -/
def P9488751811254902439.Spec : Prop :=
  ∀ n, P9488751811254902439.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P16299909260817550398

`A245328(A092569(n+1))`
-/

namespace A020650.P16299909260817550398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A092569 (n + 1)).toNat

end

end A020650.P16299909260817550398

namespace A020650

/-- `A245328(A092569(n+1))` -/
def P16299909260817550398.Spec : Prop :=
  ∀ n, P16299909260817550398.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P11732754115389207633

`A086592(n+1)-A020651(n+1)`
-/

namespace A020650.P11732754115389207633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (n + 1) - A020651 (n + 1)

end

end A020650.P11732754115389207633

namespace A020650

/-- `A086592(n+1)-A020651(n+1)` -/
def P11732754115389207633.Spec : Prop :=
  ∀ n, P11732754115389207633.a n = A020650 (n + 1)

theorem P11732754115389207633.correct : P11732754115389207633.Spec := by
  intro n
  simp only [A020650, Nat.add_sub_cancel, A020650.P11732754115389207633.a, A020650.P1404454172614925169.a, A002487, A002487.P14011177000981426228.a, A020651, A020651.P4498146875701361323.a, A086592, A086592.P9537863791654607074.a, A231551, A231551.P13473308692949281143.a, A154437, A154437.P11607465258887740319.a, A231550, A231550.P13029068904856309270.a, A056539, A056539.P17406113578210965747.a, A229763, A229763.P6803440725785154934.f1, A229763.P6803440725785154934.a, A292944, A292944.P3273024462616144554.a, A335858, A335858.P3204271633163649755.a, A003188, A003188.P10544524695508875182.a, A053644, A053644.P1707366427427647095.a, A180200, A180200.P2958972076606443306.a, A292272, A292272.P5703236082678816393.a, A341916, A341916.P6146047658477802750.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020650

/-! ## A020650.P14546508016534915130

`A086592(n+1)-A294442(n+1)`
-/

namespace A020650.P14546508016534915130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (n + 1) - A294442 (n + 1)

end

end A020650.P14546508016534915130

namespace A020650

/-- `A086592(n+1)-A294442(n+1)` -/
def P14546508016534915130.Spec : Prop :=
  ∀ n, P14546508016534915130.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P316655713500344634

`A020651(A014681(n)+1)`
-/

namespace A020650.P316655713500344634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A014681 n + 1).toNat

end

end A020650.P316655713500344634

namespace A020650

/-- `A020651(A014681(n)+1)` -/
def P316655713500344634.Spec : Prop :=
  ∀ n, P316655713500344634.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P1747208179306666596

`A020651(A065190(n+1))`
-/

namespace A020650.P1747208179306666596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A065190 (n + 1)).toNat

end

end A020650.P1747208179306666596

namespace A020650

/-- `A020651(A065190(n+1))` -/
def P1747208179306666596.Spec : Prop :=
  ∀ n, P1747208179306666596.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P17548594084466219703

`A294442(A174239(n+1))`
-/

namespace A020650.P17548594084466219703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A174239 (n + 1)).toNat

end

end A020650.P17548594084466219703

namespace A020650

/-- `A294442(A174239(n+1))` -/
def P17548594084466219703.Spec : Prop :=
  ∀ n, P17548594084466219703.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P2509147861904201629

`A020651(A103889(A065164(n+1)))`
-/

namespace A020650.P2509147861904201629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A103889 (A065164 (n + 1)).toNat).toNat

end

end A020650.P2509147861904201629

namespace A020650

/-- `A020651(A103889(A065164(n+1)))` -/
def P2509147861904201629.Spec : Prop :=
  ∀ n, P2509147861904201629.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P1941960402670489437

`A020651(A065168(A103889(n+1)))`
-/

namespace A020650.P1941960402670489437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A065168 (A103889 (n + 1)).toNat).toNat

end

end A020650.P1941960402670489437

namespace A020650

/-- `A020651(A065168(A103889(n+1)))` -/
def P1941960402670489437.Spec : Prop :=
  ∀ n, P1941960402670489437.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P16631401185035604102

`A086592(n+1)+A086592(n+1)-A086593(n+2)`
-/

namespace A020650.P16631401185035604102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (n + 1) + (A086592 (n + 1) - A086593 (n + 2))

end

end A020650.P16631401185035604102

namespace A020650

/-- `A086592(n+1)+A086592(n+1)-A086593(n+2)` -/
def P16631401185035604102.Spec : Prop :=
  ∀ n, P16631401185035604102.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P1188221615039787505

`A086593(n+2)-(A294442(n+1)+A020651(n+1))`
-/

namespace A020650.P1188221615039787505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 2) - (A294442 (n + 1) + A020651 (n + 1))

end

end A020650.P1188221615039787505

namespace A020650

/-- `A086593(n+2)-(A294442(n+1)+A020651(n+1))` -/
def P1188221615039787505.Spec : Prop :=
  ∀ n, P1188221615039787505.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P17614907293906748056

`A229742(A059893(n+1))`
-/

namespace A020650.P17614907293906748056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A059893 (n + 1)).toNat

end

end A020650.P17614907293906748056

namespace A020650

/-- `A229742(A059893(n+1))` -/
def P17614907293906748056.Spec : Prop :=
  ∀ n, P17614907293906748056.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P6387438092243801998

`A238837(A059893(n+1))+A209229(n+1)`
-/

namespace A020650.P6387438092243801998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238837 (A059893 (n + 1)).toNat + A209229 (n + 1)

end

end A020650.P6387438092243801998

namespace A020650

/-- `A238837(A059893(n+1))+A209229(n+1)` -/
def P6387438092243801998.Spec : Prop :=
  ∀ n, P6387438092243801998.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P1053082172401171945

`A086592(n+1)-A071766(A059893(n+1))`
-/

namespace A020650.P1053082172401171945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (n + 1) - A071766 (A059893 (n + 1)).toNat

end

end A020650.P1053082172401171945

namespace A020650

/-- `A086592(n+1)-A071766(A059893(n+1))` -/
def P1053082172401171945.Spec : Prop :=
  ∀ n, P1053082172401171945.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P8540547302196619625

`A245325(A059894(n+1))`
-/

namespace A020650.P8540547302196619625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A059894 (n + 1)).toNat

end

end A020650.P8540547302196619625

namespace A020650

/-- `A245325(A059894(n+1))` -/
def P8540547302196619625.Spec : Prop :=
  ∀ n, P8540547302196619625.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P17061272057913681325

`A245327(2*A092569(n+1))`
-/

namespace A020650.P17061272057913681325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (2 * A092569 (n + 1)).toNat

end

end A020650.P17061272057913681325

namespace A020650

/-- `A245327(2*A092569(n+1))` -/
def P17061272057913681325.Spec : Prop :=
  ∀ n, P17061272057913681325.a n = A020650 (n + 1)

end A020650

/-! ## A020650.P5483375972201666197

`A294442(2*n+3)-A294442(n+1)`
-/

namespace A020650.P5483375972201666197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (2 * n + 3) - A294442 (n + 1)

end

end A020650.P5483375972201666197

namespace A020650

/-- `A294442(2*n+3)-A294442(n+1)` -/
def P5483375972201666197.Spec : Prop :=
  ∀ n, P5483375972201666197.a n = A020650 (n + 1)

end A020650

/-!
# A020651: Denominators in recursive bijection from positive integers to positive rationals (the bijection is f(1) = 1, f(2n) = f(n)+1, f(2n+1) = 1/(f(n)+1)).

The programs for A020651, the canonical program `A020651.P4498146875701361323` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020651 has offset 1).

The definition of A020651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020650, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A020651.P9371406234072686489

`A002487(A231551(n+1))`
-/

namespace A020651.P9371406234072686489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A231551 (n + 1)).toNat

end

end A020651.P9371406234072686489

namespace A020651

/-- `A002487(A231551(n+1))` -/
def P9371406234072686489.Spec : Prop :=
  ∀ n, P9371406234072686489.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P4498146875701361323

`A020650(2*(n+1)+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A020651

/-- `A020650(2*(n+1)+1)` -/
def P4498146875701361323.Spec : Prop :=
  ∀ n, P4498146875701361323.a n = A020651 (n + 1)

theorem P4498146875701361323.correct : P4498146875701361323.Spec := by
  intro n
  simp only [A020651, Nat.add_sub_cancel]

end A020651

/-! ## A020651.P4079549350532739597

`A294442(1+n)`
-/

namespace A020651.P4079549350532739597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (1 + n)

end

end A020651.P4079549350532739597

namespace A020651

/-- `A294442(1+n)` -/
def P4079549350532739597.Spec : Prop :=
  ∀ n, P4079549350532739597.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P11911962294264046767

`A071585(A030109(n+1))`
-/

namespace A020651.P11911962294264046767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A030109 (n + 1)).toNat

end

end A020651.P11911962294264046767

namespace A020651

/-- `A071585(A030109(n+1))` -/
def P11911962294264046767.Spec : Prop :=
  ∀ n, P11911962294264046767.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P17519580392442296128

`A245328(A054429(n+1))`
-/

namespace A020651.P17519580392442296128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A054429 (n + 1)).toNat

end

end A020651.P17519580392442296128

namespace A020651

/-- `A245328(A054429(n+1))` -/
def P17519580392442296128.Spec : Prop :=
  ∀ n, P17519580392442296128.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P9530101040779670352

`A245327(A092569(n+1))`
-/

namespace A020651.P9530101040779670352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A092569 (n + 1)).toNat

end

end A020651.P9530101040779670352

namespace A020651

/-- `A245327(A092569(n+1))` -/
def P9530101040779670352.Spec : Prop :=
  ∀ n, P9530101040779670352.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P10620601677611334109

`ratio[A294442(n)]*A294442(n)`
-/

namespace A020651.P10620601677611334109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A294442 n : ℚ)

end

end A020651.P10620601677611334109

namespace A020651

/-- `ratio[A294442(n)]*A294442(n)` -/
def P10620601677611334109.Spec : Prop :=
  ∀ n, P10620601677611334109.a n = (A020651 (n + 1) : ℚ)

end A020651

/-! ## A020651.P13644057352283370176

`A086592(n+1)-A020650(n+1)`
-/

namespace A020651.P13644057352283370176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (n + 1) - A020650 (n + 1)

end

end A020651.P13644057352283370176

namespace A020651

/-- `A086592(n+1)-A020650(n+1)` -/
def P13644057352283370176.Spec : Prop :=
  ∀ n, P13644057352283370176.a n = A020651 (n + 1)

theorem P13644057352283370176.correct : P13644057352283370176.Spec := by
  intro n
  simp only [A020651, Nat.add_sub_cancel, A020651.P13644057352283370176.a, A020651.P4498146875701361323.a, A020650, A020650.P1404454172614925169.a, A086592, A086592.P9537863791654607074.a, A002487, A002487.P14011177000981426228.a, A231551, A231551.P13473308692949281143.a, A154437, A154437.P11607465258887740319.a, A231550, A231550.P13029068904856309270.a, A056539, A056539.P17406113578210965747.a, A229763, A229763.P6803440725785154934.f1, A229763.P6803440725785154934.a, A292944, A292944.P3273024462616144554.a, A335858, A335858.P3204271633163649755.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020651

/-! ## A020651.P12739748640701834202

`A086593(n+2)-A086592(n+1)`
-/

namespace A020651.P12739748640701834202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 2) - A086592 (n + 1)

end

end A020651.P12739748640701834202

namespace A020651

/-- `A086593(n+2)-A086592(n+1)` -/
def P12739748640701834202.Spec : Prop :=
  ∀ n, P12739748640701834202.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P17289729609016883291

`A093875(A030101(n+1))`
-/

namespace A020651.P17289729609016883291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A030101 (n + 1)).toNat

end

end A020651.P17289729609016883291

namespace A020651

/-- `A093875(A030101(n+1))` -/
def P17289729609016883291.Spec : Prop :=
  ∀ n, P17289729609016883291.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P14739328820475912565

`A071766(A059893(n+1))`
-/

namespace A020651.P14739328820475912565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A059893 (n + 1)).toNat

end

end A020651.P14739328820475912565

namespace A020651

/-- `A071766(A059893(n+1))` -/
def P14739328820475912565.Spec : Prop :=
  ∀ n, P14739328820475912565.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P5041954423642125277

`A114214(A378299(n+1))`
-/

namespace A020651.P5041954423642125277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A378299 (n + 1)).toNat

end

end A020651.P5041954423642125277

namespace A020651

/-- `A114214(A378299(n+1))` -/
def P5041954423642125277.Spec : Prop :=
  ∀ n, P5041954423642125277.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P17423204396176928258

`A071585(A059893(n+1))-A020650(n+1)`
-/

namespace A020651.P17423204396176928258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A059893 (n + 1)).toNat - A020650 (n + 1)

end

end A020651.P17423204396176928258

namespace A020651

/-- `A071585(A059893(n+1))-A020650(n+1)` -/
def P17423204396176928258.Spec : Prop :=
  ∀ n, P17423204396176928258.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P6014409440335811538

`A007306(A131271(n))`
-/

namespace A020651.P6014409440335811538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A131271 n).toNat

end

end A020651.P6014409440335811538

namespace A020651

/-- `A007306(A131271(n))` -/
def P6014409440335811538.Spec : Prop :=
  ∀ n, P6014409440335811538.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P3728034258566826637

`A245327(2*A054429(n+1))`
-/

namespace A020651.P3728034258566826637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (2 * A054429 (n + 1)).toNat

end

end A020651.P3728034258566826637

namespace A020651

/-- `A245327(2*A054429(n+1))` -/
def P3728034258566826637.Spec : Prop :=
  ∀ n, P3728034258566826637.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P15162464919466918949

`A071766(A180201(A335858(n+1)))`
-/

namespace A020651.P15162464919466918949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A180201 (A335858 (n + 1)).toNat).toNat

end

end A020651.P15162464919466918949

namespace A020651

/-- `A071766(A180201(A335858(n+1)))` -/
def P15162464919466918949.Spec : Prop :=
  ∀ n, P15162464919466918949.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P4092016051392408990

`A245327(A054429(n+1)+A054429(n+1))`
-/

namespace A020651.P4092016051392408990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A054429 (n + 1) + A054429 (n + 1)).toNat

end

end A020651.P4092016051392408990

namespace A020651

/-- `A245327(A054429(n+1)+A054429(n+1))` -/
def P4092016051392408990.Spec : Prop :=
  ∀ n, P4092016051392408990.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P6917230112021421100

`A093873(A004754(n+1))`
-/

namespace A020651.P6917230112021421100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A004754 (n + 1)).toNat

end

end A020651.P6917230112021421100

namespace A020651

/-- `A093873(A004754(n+1))` -/
def P6917230112021421100.Spec : Prop :=
  ∀ n, P6917230112021421100.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P4692976395090992941

`A086592(2*(n+1))-A086592(n+1)`
-/

namespace A020651.P4692976395090992941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (2 * (n + 1)) - A086592 (n + 1)

end

end A020651.P4692976395090992941

namespace A020651

/-- `A086592(2*(n+1))-A086592(n+1)` -/
def P4692976395090992941.Spec : Prop :=
  ∀ n, P4692976395090992941.a n = A020651 (n + 1)

end A020651

/-! ## A020651.P16206722857443001102

`A093873(lt[xor(n, floor(n/2)), n+1]+2)`
-/

namespace A020651.P16206722857443001102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A020651.P16206722857443001102

namespace A020651

/-- `A093873(lt[xor(n, floor(n/2)), n+1]+2)` -/
def P16206722857443001102.Spec : Prop :=
  ∀ n, P16206722857443001102.a n = A020651 (n + 1)

end A020651

/-!
# A020652: Numerators in canonical bijection from positive integers to positive rationals.

The programs for A020652, the canonical program `A020652.P12873781580618070316` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020652 has offset 1).

The definition of A020652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020652.P457222204525229101

`A038566(2+n)`
-/

namespace A020652.P457222204525229101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (2 + n)

end

end A020652.P457222204525229101

namespace A020652

/-- `A038566(2+n)` -/
def P457222204525229101.Spec : Prop :=
  ∀ n, P457222204525229101.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P5563435548077318417

`A038568(Δ[n²])`
-/

namespace A020652.P5563435548077318417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A020652.P5563435548077318417

namespace A020652

/-- `A038568(Δ[n²])` -/
def P5563435548077318417.Spec : Prop :=
  ∀ n, P5563435548077318417.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P1328600978347943175

`A038569(2*(n+1))`
-/

namespace A020652.P1328600978347943175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * (n + 1))

end

end A020652.P1328600978347943175

namespace A020652

/-- `A038569(2*(n+1))` -/
def P1328600978347943175.Spec : Prop :=
  ∀ n, P1328600978347943175.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P443123259536164763

`A038568(2*n+1)%(n+2)`
-/

namespace A020652.P443123259536164763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038568 (2 * n + 1)) (n + 2 : ℤ)

end

end A020652.P443123259536164763

namespace A020652

/-- `A038568(2*n+1)%(n+2)` -/
def P443123259536164763.Spec : Prop :=
  ∀ n, P443123259536164763.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P18197385031871555261

`A020653(A054430(n+1))`
-/

namespace A020652.P18197385031871555261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (A054430 (n + 1)).toNat

end

end A020652.P18197385031871555261

namespace A020652

/-- `A020653(A054430(n+1))` -/
def P18197385031871555261.Spec : Prop :=
  ∀ n, P18197385031871555261.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P7846539549141895148

`A004526(2*A038568(2*n+1))`
-/

namespace A020652.P7846539549141895148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A038568 (2 * n + 1)).toNat

end

end A020652.P7846539549141895148

namespace A020652

/-- `A004526(2*A038568(2*n+1))` -/
def P7846539549141895148.Spec : Prop :=
  ∀ n, P7846539549141895148.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P9383096353705441258

`A032742(2*A038568(2*n+1))`
-/

namespace A020652.P9383096353705441258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A038568 (2 * n + 1)).toNat

end

end A020652.P9383096353705441258

namespace A020652

/-- `A032742(2*A038568(2*n+1))` -/
def P9383096353705441258.Spec : Prop :=
  ∀ n, P9383096353705441258.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P11189009287361198390

`A038567(n+1)-A020653(n+1)`
-/

namespace A020652.P11189009287361198390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A020653 (n + 1)

end

end A020652.P11189009287361198390

namespace A020652

/-- `A038567(n+1)-A020653(n+1)` -/
def P11189009287361198390.Spec : Prop :=
  ∀ n, P11189009287361198390.a n = A020652 (n + 1)

theorem P11189009287361198390.correct : P11189009287361198390.Spec := by
  intro n
  simp only [A020652, Nat.add_sub_cancel, A020652.P11189009287361198390.a, A020652.P12873781580618070316.a, A002260, A002260.P9170571874073898642.a, A020653, A020653.P13896194492571762582.a, A038567, A038567.P14329261901305470141.a, A166527, A166527.P8974891520829218106.f1, A166527.P8974891520829218106.f2, A166527.P8974891520829218106.a, A002024, A002024.P11700297927830783882.a, A077478, A077478.P5509421538947395275.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A000005, A000005.P16091521709108585461.a, A025581, A025581.P16112744757063613497.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020652

/-! ## A020652.P12873781580618070316

`A002260(A166527(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A020652

/-- `A002260(A166527(n+1))` -/
def P12873781580618070316.Spec : Prop :=
  ∀ n, P12873781580618070316.a n = A020652 (n + 1)

theorem P12873781580618070316.correct : P12873781580618070316.Spec := by
  intro n
  simp only [A020652, Nat.add_sub_cancel]

end A020652

/-! ## A020652.P1185796201250854377

`A002260(A169581(n+2))`
-/

namespace A020652.P1185796201250854377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A169581 (n + 2)).toNat

end

end A020652.P1185796201250854377

namespace A020652

/-- `A002260(A169581(n+2))` -/
def P1185796201250854377.Spec : Prop :=
  ∀ n, P1185796201250854377.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P14314653566864191704

`A002260(eq[1, A003989(n+1)]+1)`
-/

namespace A020652.P14314653566864191704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A020652.P14314653566864191704

namespace A020652

/-- `A002260(eq[1, A003989(n+1)]+1)` -/
def P14314653566864191704.Spec : Prop :=
  ∀ n, P14314653566864191704.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P16989043222160065848

`A002260(eq[A003990(n+1), A003991(n+1)]+1)`
-/

namespace A020652.P16989043222160065848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A020652.P16989043222160065848

namespace A020652

/-- `A002260(eq[A003990(n+1), A003991(n+1)]+1)` -/
def P16989043222160065848.Spec : Prop :=
  ∀ n, P16989043222160065848.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P17083443084777558019

`A173509(2*n+1)-A173467(2*n)`
-/

namespace A020652.P17083443084777558019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173509 (2 * n + 1) - A173467 (2 * n)

end

end A020652.P17083443084777558019

namespace A020652

/-- `A173509(2*n+1)-A173467(2*n)` -/
def P17083443084777558019.Spec : Prop :=
  ∀ n, P17083443084777558019.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P15040224915400199313

`A173509(2*n+1)-A173509(2*n)`
-/

namespace A020652.P15040224915400199313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173509 (2 * n + 1) - A173509 (2 * n)

end

end A020652.P15040224915400199313

namespace A020652

/-- `A173509(2*n+1)-A173509(2*n)` -/
def P15040224915400199313.Spec : Prop :=
  ∀ n, P15040224915400199313.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P13003791084706312557

`A317988(2*n+5)`
-/

namespace A020652.P13003791084706312557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (2 * n + 5)

end

end A020652.P13003791084706312557

namespace A020652

/-- `A317988(2*n+5)` -/
def P13003791084706312557.Spec : Prop :=
  ∀ n, P13003791084706312557.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P2947124205687348550

`A037161(lt[0, A037161(n)])`
-/

namespace A020652.P2947124205687348550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A020652.P2947124205687348550

namespace A020652

/-- `A037161(lt[0, A037161(n)])` -/
def P2947124205687348550.Spec : Prop :=
  ∀ n, P2947124205687348550.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P6355073905768086793

`A037161(A002088(A038567(n+1))+n)`
-/

namespace A020652.P6355073905768086793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037161 (A002088 (A038567 (n + 1)).toNat + (n : ℤ)).toNat

end

end A020652.P6355073905768086793

namespace A020652

/-- `A037161(A002088(A038567(n+1))+n)` -/
def P6355073905768086793.Spec : Prop :=
  ∀ n, P6355073905768086793.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P8447693546821925763

`A352911(Δ[n²])`
-/

namespace A020652.P8447693546821925763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A020652.P8447693546821925763

namespace A020652

/-- `A352911(Δ[n²])` -/
def P8447693546821925763.Spec : Prop :=
  ∀ n, P8447693546821925763.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P14795352023890570777

`A352911(2*n+1)%(n+2)`
-/

namespace A020652.P14795352023890570777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352911 (2 * n + 1)) (n + 2 : ℤ)

end

end A020652.P14795352023890570777

namespace A020652

/-- `A352911(2*n+1)%(n+2)` -/
def P14795352023890570777.Spec : Prop :=
  ∀ n, P14795352023890570777.a n = A020652 (n + 1)

end A020652

/-! ## A020652.P16872652440395722447

`A038567(n+1)-A352911(2*(n+1))`
-/

namespace A020652.P16872652440395722447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A352911 (2 * (n + 1))

end

end A020652.P16872652440395722447

namespace A020652

/-- `A038567(n+1)-A352911(2*(n+1))` -/
def P16872652440395722447.Spec : Prop :=
  ∀ n, P16872652440395722447.a n = A020652 (n + 1)

end A020652

/-!
# A020653: Denominators in a certain bijection from positive integers to positive rationals.

The programs for A020653, the canonical program `A020653.P13896194492571762582` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020653 has offset 1).

The definition of A020653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020653.P4175436068460552818

`A020652(A054430(n+1))`
-/

namespace A020653.P4175436068460552818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (A054430 (n + 1)).toNat

end

end A020653.P4175436068460552818

namespace A020653

/-- `A020652(A054430(n+1))` -/
def P4175436068460552818.Spec : Prop :=
  ∀ n, P4175436068460552818.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P7240513500370950171

`A038566(A054430(n+1)+1)`
-/

namespace A020653.P7240513500370950171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A054430 (n + 1) + 1).toNat

end

end A020653.P7240513500370950171

namespace A020653

/-- `A038566(A054430(n+1)+1)` -/
def P7240513500370950171.Spec : Prop :=
  ∀ n, P7240513500370950171.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P1142294173712660074

`A038569(2*A054430(n+1))`
-/

namespace A020653.P1142294173712660074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * A054430 (n + 1)).toNat

end

end A020653.P1142294173712660074

namespace A020653

/-- `A038569(2*A054430(n+1))` -/
def P1142294173712660074.Spec : Prop :=
  ∀ n, P1142294173712660074.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P13896194492571762582

`A038567(n+1)-A020652(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A020653

/-- `A038567(n+1)-A020652(n+1)` -/
def P13896194492571762582.Spec : Prop :=
  ∀ n, P13896194492571762582.a n = A020653 (n + 1)

theorem P13896194492571762582.correct : P13896194492571762582.Spec := by
  intro n
  simp only [A020653, Nat.add_sub_cancel]

end A020653

/-! ## A020653.P5181503446560900801

`A038567(n+1)-A038566(n+2)`
-/

namespace A020653.P5181503446560900801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A038566 (n + 2)

end

end A020653.P5181503446560900801

namespace A020653

/-- `A038567(n+1)-A038566(n+2)` -/
def P5181503446560900801.Spec : Prop :=
  ∀ n, P5181503446560900801.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P14012587335017187017

`A038568(2*(n+1))-A020652(n+1)`
-/

namespace A020653.P14012587335017187017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * (n + 1)) - A020652 (n + 1)

end

end A020653.P14012587335017187017

namespace A020653

/-- `A038568(2*(n+1))-A020652(n+1)` -/
def P14012587335017187017.Spec : Prop :=
  ∀ n, P14012587335017187017.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P327128462125971497

`A038569(2*n+1)-A020652(n+1)`
-/

namespace A020653.P327128462125971497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n + 1) - A020652 (n + 1)

end

end A020653.P327128462125971497

namespace A020653

/-- `A038569(2*n+1)-A020652(n+1)` -/
def P327128462125971497.Spec : Prop :=
  ∀ n, P327128462125971497.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P1835561993397084701

`A038567(n+1)-A038568(2*n+1)`
-/

namespace A020653.P1835561993397084701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A038568 (2 * n + 1)

end

end A020653.P1835561993397084701

namespace A020653

/-- `A038567(n+1)-A038568(2*n+1)` -/
def P1835561993397084701.Spec : Prop :=
  ∀ n, P1835561993397084701.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P15168263600972086733

`A038567(n+1)-A038569(2*(n+1))`
-/

namespace A020653.P15168263600972086733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A038569 (2 * (n + 1))

end

end A020653.P15168263600972086733

namespace A020653

/-- `A038567(n+1)-A038569(2*(n+1))` -/
def P15168263600972086733.Spec : Prop :=
  ∀ n, P15168263600972086733.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P12621663951893779526

`A038568(2*(n+1))-A038566(n+2)`
-/

namespace A020653.P12621663951893779526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * (n + 1)) - A038566 (n + 2)

end

end A020653.P12621663951893779526

namespace A020653

/-- `A038568(2*(n+1))-A038566(n+2)` -/
def P12621663951893779526.Spec : Prop :=
  ∀ n, P12621663951893779526.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P12324386086502549877

`A038569(2*n+1)-A038566(n+2)`
-/

namespace A020653.P12324386086502549877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n + 1) - A038566 (n + 2)

end

end A020653.P12324386086502549877

namespace A020653

/-- `A038569(2*n+1)-A038566(n+2)` -/
def P12324386086502549877.Spec : Prop :=
  ∀ n, P12324386086502549877.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P1573057110922384474

`A038568(2*(n+1))-A038568(2*n+1)`
-/

namespace A020653.P1573057110922384474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * (n + 1)) - A038568 (2 * n + 1)

end

end A020653.P1573057110922384474

namespace A020653

/-- `A038568(2*(n+1))-A038568(2*n+1)` -/
def P1573057110922384474.Spec : Prop :=
  ∀ n, P1573057110922384474.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P12686585353242174641

`A038569(2*n+1)-A038569(2*(n+1))`
-/

namespace A020653.P12686585353242174641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n + 1) - A038569 (2 * (n + 1))

end

end A020653.P12686585353242174641

namespace A020653

/-- `A038569(2*n+1)-A038569(2*(n+1))` -/
def P12686585353242174641.Spec : Prop :=
  ∀ n, P12686585353242174641.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P1386649003917020305

`A038569(A054430(n+1)+A054430(n+1))`
-/

namespace A020653.P1386649003917020305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A054430 (n + 1) + A054430 (n + 1)).toNat

end

end A020653.P1386649003917020305

namespace A020653

/-- `A038569(A054430(n+1)+A054430(n+1))` -/
def P1386649003917020305.Spec : Prop :=
  ∀ n, P1386649003917020305.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P13850902603706396807

`A157807(n+1)+A157813(n+1)-A020652(n+1)`
-/

namespace A020653.P13850902603706396807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157807 (n + 1) + (A157813 (n + 1) - A020652 (n + 1))

end

end A020653.P13850902603706396807

namespace A020653

/-- `A157807(n+1)+A157813(n+1)-A020652(n+1)` -/
def P13850902603706396807.Spec : Prop :=
  ∀ n, P13850902603706396807.a n = A020653 (n + 1)

theorem P13850902603706396807.correct : P13850902603706396807.Spec := by
  intro n
  simp only [A020653, Nat.add_sub_cancel, A020653.P13850902603706396807.a, A020653.P13896194492571762582.a, A020652, A020652.P12873781580618070316.a, A038567, A038567.P14329261901305470141.a, A157807, A157807.P1767010887328603501.a, A157813, A157813.P14905809734430770879.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P9170571874073898642.a, A092543, A092543.P4363946767756583020.a, A166527, A166527.P8974891520829218106.f1, A166527.P8974891520829218106.f2, A166527.P8974891520829218106.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A010751, A010751.P13596492722488707234.a, A025581, A025581.P16112744757063613497.a, A077478, A077478.P5509421538947395275.a, A110654, A110654.P360289776162656549.a, A000005, A000005.P16091521709108585461.a, A007590, A007590.P9530274664467440414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020653

/-! ## A020653.P16877607109227882472

`A157807(n+1)+A157813(n+1)-A038566(n+2)`
-/

namespace A020653.P16877607109227882472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157807 (n + 1) + (A157813 (n + 1) - A038566 (n + 2))

end

end A020653.P16877607109227882472

namespace A020653

/-- `A157807(n+1)+A157813(n+1)-A038566(n+2)` -/
def P16877607109227882472.Spec : Prop :=
  ∀ n, P16877607109227882472.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P9664787980402259322

`A004736(A166527(n+1))`
-/

namespace A020653.P9664787980402259322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A166527 (n + 1)).toNat

end

end A020653.P9664787980402259322

namespace A020653

/-- `A004736(A166527(n+1))` -/
def P9664787980402259322.Spec : Prop :=
  ∀ n, P9664787980402259322.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P13385035824663383758

`A004736(eq[1, A003989(n+1)]+1)`
-/

namespace A020653.P13385035824663383758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A020653.P13385035824663383758

namespace A020653

/-- `A004736(eq[1, A003989(n+1)]+1)` -/
def P13385035824663383758.Spec : Prop :=
  ∀ n, P13385035824663383758.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P7928654640871157493

`A004736(lt[A003989(n+1), 2]+1)`
-/

namespace A020653.P7928654640871157493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A020653.P7928654640871157493

namespace A020653

/-- `A004736(lt[A003989(n+1), 2]+1)` -/
def P7928654640871157493.Spec : Prop :=
  ∀ n, P7928654640871157493.a n = A020653 (n + 1)

end A020653

/-! ## A020653.P16225267023779371901

`A167192(A169581(n+2))`
-/

namespace A020653.P16225267023779371901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (A169581 (n + 2)).toNat

end

end A020653.P16225267023779371901

namespace A020653

/-- `A167192(A169581(n+2))` -/
def P16225267023779371901.Spec : Prop :=
  ∀ n, P16225267023779371901.a n = A020653 (n + 1)

end A020653

/-!
# A020654: Lexicographically earliest infinite increasing sequence of nonnegative numbers containing no 5-term arithmetic progression.

The programs for A020654, there is no canonical definition to state claims against.
-/

/-! ## A020654.P2731509830228695002

`record[gcd(n, A276206(n))]`
-/

namespace A020654.P2731509830228695002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276206 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020654.P2731509830228695002

/-! ## A020654.P7389150065289966568

`A020655(1+n)-1`
-/

namespace A020654.P7389150065289966568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (1 + n) - 1

end

end A020654.P7389150065289966568

/-! ## A020654.P14369049105813772619

`∪[A037459(n+1), A001016(n)]`
-/

namespace A020654.P14369049105813772619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020654.P14369049105813772619

/-! ## A020654.P7496448090995185357

`∪[A037459(n+1), A001298(n)]`
-/

namespace A020654.P7496448090995185357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001298 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020654.P7496448090995185357

/-! ## A020654.P409835982698448674

`A321800(A034444(n+1))+A020655(n+1)`
-/

namespace A020654.P409835982698448674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A034444 (n + 1)).toNat + A020655 (n + 1)

end

end A020654.P409835982698448674

/-! ## A020654.P8341131015220819386

`(A020655(n+1)+A005836(n+1))%A003278(n+1)`
-/

namespace A020654.P8341131015220819386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020655 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))

end

end A020654.P8341131015220819386

/-! ## A020654.P11262650295948132744

`(A020655(n+1)+A005839(n+1))%A005837(n+1)`
-/

namespace A020654.P11262650295948132744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020655 (n + 1) + A005839 (n + 1)) (A005837 (n + 1))

end

end A020654.P11262650295948132744

/-! ## A020654.P2710866366704043281

`comp[A337572(1+n)]`
-/

namespace A020654.P2710866366704043281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337572 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020654.P2710866366704043281

/-! ## A020654.P10705824442809136884

`eq[A210442(n)-A276206(n), A210442(n)]`
-/

namespace A020654.P10705824442809136884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n - A276206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020654.P10705824442809136884

/-! ## A020654.P5580519188511478097

`lt[A190594(n), 4]`
-/

namespace A020654.P5580519188511478097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A020654.P5580519188511478097

/-! ## A020654.P4362559384828304971

`A023443(A020655(n+1))`
-/

namespace A020654.P4362559384828304971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020655 (n + 1)).toNat

end

end A020654.P4362559384828304971

/-! ## A020654.P4641892510240403516

`record[A309991(A002265(n))+n]`
-/

namespace A020654.P4641892510240403516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (A002265 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020654.P4641892510240403516

/-! ## A020654.P13378626573119829441

`A062157(2*A020655(n+1))+A020655(n+1)`
-/

namespace A020654.P13378626573119829441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * A020655 (n + 1)).toNat + A020655 (n + 1)

end

end A020654.P13378626573119829441

/-! ## A020654.P2008102169579782074

`A303788(A037460(n))`
-/

namespace A020654.P2008102169579782074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (A037460 n).toNat

end

end A020654.P2008102169579782074

/-! ## A020654.P6756357432799714835

`eq[A331885(n)-A276206(n), A331885(n)]`
-/

namespace A020654.P6756357432799714835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n - A276206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020654.P6756357432799714835

/-! ## A020654.P9876174357550965454

`A028900(A007090(n))`
-/

namespace A020654.P9876174357550965454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A007090 n).toNat

end

end A020654.P9876174357550965454

/-! ## A020654.P886552487531395551

`lt[A054055(A007091(n)), 4]`
-/

namespace A020654.P886552487531395551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007091 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A020654.P886552487531395551

/-! ## A020654.P1795687761217207818

`lt[A054055(lt[A054055(n), 5]), 4]`
-/

namespace A020654.P1795687761217207818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A020654.P1795687761217207818

/-! ## A020654.P17150742506240567461

`eq[n, A102677(A080228(n+1))+n]`
-/

namespace A020654.P17150742506240567461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A080228 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020654.P17150742506240567461

/-! ## A020654.P1067166101815401801

`eq[n, A102679(A014263(n+1))+n]`
-/

namespace A020654.P1067166101815401801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A014263 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020654.P1067166101815401801

/-!
# A020655: Lexicographically earliest increasing sequence of positive numbers that contains no arithmetic progression of length 5.

The programs for A020655, there is no canonical definition to state claims against.
-/

/-! ## A020655.P7490382278383704768

`A020654(1+n)+1`
-/

namespace A020655.P7490382278383704768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (1 + n) + 1

end

end A020655.P7490382278383704768

/-! ## A020655.P5111744857180509610

`eq[0, n*A276206(n)]+1`
-/

namespace A020655.P5111744857180509610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020655.P5111744857180509610

/-! ## A020655.P6750674798281893539

`∪[A037459(n+1), A001016(n)]+1`
-/

namespace A020655.P6750674798281893539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A020655.P6750674798281893539

/-! ## A020655.P1470232116762883347

`∪[A037459(n+1), A001298(n)]+1`
-/

namespace A020655.P1470232116762883347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001298 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A020655.P1470232116762883347

/-! ## A020655.P6126212270196556583

`A037459(n)+A009999(a(A060571(n)))` with `a(0)=1`
-/

namespace A020655.P6126212270196556583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037459 n + A009999 (a (A060571 n).toNat).toNat

end

end A020655.P6126212270196556583

/-! ## A020655.P351443059980713413

`∪[A037459(2*n+1)+1, A037459(2*n+1)]`
-/

namespace A020655.P351443059980713413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020655.P351443059980713413

/-! ## A020655.P1671447745326899100

`A037459(2*n+1)-A023729(n+1)`
-/

namespace A020655.P1671447745326899100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (2 * n + 1) - A023729 (n + 1)

end

end A020655.P1671447745326899100

/-! ## A020655.P9045139832216659484

`comp[A337572(n+1)]+1`
-/

namespace A020655.P9045139832216659484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A020655.P9045139832216659484

/-! ## A020655.P13100746962548652270

`record[(n+1)/gcd(5, A194459(n))]`
-/

namespace A020655.P13100746962548652270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 5 (A194459 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020655.P13100746962548652270

/-! ## A020655.P5653539929201657763

`lt[A190594(n), 4]+1`
-/

namespace A020655.P5653539929201657763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A020655.P5653539929201657763

/-! ## A020655.P7984984422776335505

`A199343(A020654(n+1))`
-/

namespace A020655.P7984984422776335505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A020654 (n + 1)).toNat

end

end A020655.P7984984422776335505

/-! ## A020655.P12238281191777207879

`record[A309991(A002265(n))+n+1]`
-/

namespace A020655.P12238281191777207879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (A002265 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020655.P12238281191777207879

/-! ## A020655.P11564150556921028529

`A303788(A037460(n)+1)`
-/

namespace A020655.P11564150556921028529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (A037460 n + 1).toNat

end

end A020655.P11564150556921028529

/-! ## A020655.P17308676969481893407

`A028900(A007090(n))+1`
-/

namespace A020655.P17308676969481893407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A007090 n).toNat + 1

end

end A020655.P17308676969481893407

/-! ## A020655.P9982215700118990669

`lt[A054055(lt[A054055(n), 5]), 4]+1`
-/

namespace A020655.P9982215700118990669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A020655.P9982215700118990669

/-! ## A020655.P1994005047568687349

`A028900(A007090(n)+1)`
-/

namespace A020655.P1994005047568687349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A007090 n + 1).toNat

end

end A020655.P1994005047568687349

/-! ## A020655.P4729740838522524691

`record[A028900(n+1)-A028900(A004396(n))]`
-/

namespace A020655.P4729740838522524691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (n + 1) - A028900 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020655.P4729740838522524691

/-!
# A020656: Lexicographically earliest increasing sequence of nonnegative numbers that contains no arithmetic progression of length 6.

The programs for A020656, there is no canonical definition to state claims against.
-/

/-! ## A020656.P18184555555919587085

`A005838(n+1)-1`
-/

namespace A020656.P18184555555919587085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005838 (n + 1) - 1

end

end A020656.P18184555555919587085

/-! ## A020656.P12444404517930220556

`floor(A005838(n+1)/root(2, A097046(n+1)))`
-/

namespace A020656.P12444404517930220556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005838 (n + 1) : ℝ) / (2 : ℝ) ^ (1 / (A097046 (n + 1) : ℝ))⌋

end

end A020656.P12444404517930220556

/-! ## A020656.P11407276712774390896

`A057428(A028310(n))+A005838(n+1)`
-/

namespace A020656.P11407276712774390896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A028310 n).toNat + A005838 (n + 1)

end

end A020656.P11407276712774390896

/-! ## A020656.P4153589499495418941

`A057428(A002322(n+1))+A005838(n+1)`
-/

namespace A020656.P4153589499495418941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002322 (n + 1)).toNat + A005838 (n + 1)

end

end A020656.P4153589499495418941

/-! ## A020656.P9656472580407894215

`A057428(A004001(n+1))+A005838(n+1)`
-/

namespace A020656.P9656472580407894215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A004001 (n + 1)).toNat + A005838 (n + 1)

end

end A020656.P9656472580407894215

/-! ## A020656.P17646499544065246827

`A057428(A007614(n+1))+A005838(n+1)`
-/

namespace A020656.P17646499544065246827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007614 (n + 1)).toNat + A005838 (n + 1)

end

end A020656.P17646499544065246827

/-! ## A020656.P1463438358406878902

`A057428(A327656(n+1))+A005838(n+1)`
-/

namespace A020656.P1463438358406878902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A327656 (n + 1)).toNat + A005838 (n + 1)

end

end A020656.P1463438358406878902

/-! ## A020656.P18384852344167351608

`(A005838(n+1)+A005836(n+1))%A003278(n+1)`
-/

namespace A020656.P18384852344167351608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005838 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))

end

end A020656.P18384852344167351608

/-! ## A020656.P13736306727268088376

`(A005839(n+1)+A005838(n+1))%A005837(n+1)`
-/

namespace A020656.P13736306727268088376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005839 (n + 1) + A005838 (n + 1)) (A005837 (n + 1))

end

end A020656.P13736306727268088376

/-! ## A020656.P1411587281318643938

`A057428(n+1)+A005838(n+1)`
-/

namespace A020656.P1411587281318643938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A005838 (n + 1)

end

end A020656.P1411587281318643938

/-! ## A020656.P17786878029104268264

`A033999(2*n+1)+A005838(n+1)`
-/

namespace A020656.P17786878029104268264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A005838 (n + 1)

end

end A020656.P17786878029104268264

/-! ## A020656.P7238355419443494621

`A023443(A005838(n+1))`
-/

namespace A020656.P7238355419443494621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A005838 (n + 1)).toNat

end

end A020656.P7238355419443494621

/-! ## A020656.P12102713436567514492

`A152568(∑[n+3]+1)+A005838(n+1)`
-/

namespace A020656.P12102713436567514492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152568 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A005838 (n + 1)

end

end A020656.P12102713436567514492

/-!
# A020657: Lexicographically earliest increasing sequence of nonnegative numbers that contains no arithmetic progression of length 7.

The programs for A020657, there is no canonical definition to state claims against.
-/

/-! ## A020657.P6406588401571641565

`A020658(1+n)-1`
-/

namespace A020657.P6406588401571641565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (1 + n) - 1

end

end A020657.P6406588401571641565

/-! ## A020657.P5716664282892172624

`(A020658(n+1)+A005836(n+1))%A003278(n+1)`
-/

namespace A020657.P5716664282892172624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020658 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))

end

end A020657.P5716664282892172624

/-! ## A020657.P10362983352006102258

`(A020658(n+1)+A005839(n+1))%A005837(n+1)`
-/

namespace A020657.P10362983352006102258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020658 (n + 1) + A005839 (n + 1)) (A005837 (n + 1))

end

end A020657.P10362983352006102258

/-! ## A020657.P705556045504100358

`(A020658(n+1)+A020656(n+1))%A005838(n+1)`
-/

namespace A020657.P705556045504100358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020658 (n + 1) + A020656 (n + 1)) (A005838 (n + 1))

end

end A020657.P705556045504100358

/-! ## A020657.P15345194516795419986

`(A020658(n+1)+A020654(n+1))%A020655(n+1)`
-/

namespace A020657.P15345194516795419986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020658 (n + 1) + A020654 (n + 1)) (A020655 (n + 1))

end

end A020657.P15345194516795419986

/-! ## A020657.P15172126864399950854

`A057428(n+1)+A020658(n+1)`
-/

namespace A020657.P15172126864399950854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A020658 (n + 1)

end

end A020657.P15172126864399950854

/-! ## A020657.P15339011273073471056

`comp[A337141(n+1)]`
-/

namespace A020657.P15339011273073471056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020657.P15339011273073471056

/-! ## A020657.P13198840050061271567

`lt[A319655(n), A319655(A319655(n)+1)]`
-/

namespace A020657.P13198840050061271567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (A319655 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A020657.P13198840050061271567

/-! ## A020657.P6632454996407665453

`A023443(A020658(n+1))`
-/

namespace A020657.P6632454996407665453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020658 (n + 1)).toNat

end

end A020657.P6632454996407665453

/-! ## A020657.P8256385966223803333

`A028902(A007092(n))`
-/

namespace A020657.P8256385966223803333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007092 n).toNat

end

end A020657.P8256385966223803333

/-! ## A020657.P9686832814143457945

`lt[A054055(A007093(n)), 6]`
-/

namespace A020657.P9686832814143457945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007093 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A020657.P9686832814143457945

/-! ## A020657.P10189973928272675220

`lt[A054055(lt[A054055(n), 7]), 6]`
-/

namespace A020657.P10189973928272675220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A020657.P10189973928272675220

/-!
# A020658: Lexicographically earliest increasing sequence of positive numbers that contains no arithmetic progression of length 7.

The programs for A020658, there is no canonical definition to state claims against.
-/

/-! ## A020658.P4842923039649912637

`A020657(n+1)+1`
-/

namespace A020658.P4842923039649912637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (n + 1) + 1

end

end A020658.P4842923039649912637

/-! ## A020658.P12487747519841155304

`1+comp[A337141(n+1)]`
-/

namespace A020658.P12487747519841155304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020658.P12487747519841155304

/-! ## A020658.P9623232691343841517

`lt[A319655(n), A319655(A319655(n)+1)]+1`
-/

namespace A020658.P9623232691343841517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (A319655 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A020658.P9623232691343841517

/-! ## A020658.P16903233908687545909

`lt[A054055(A007093(n)), 6]+1`
-/

namespace A020658.P16903233908687545909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007093 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A020658.P16903233908687545909

/-! ## A020658.P11254206795767849963

`A028902(A007092(n))-A057428(A005408(n))`
-/

namespace A020658.P11254206795767849963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007092 n).toNat - A057428 (A005408 n).toNat

end

end A020658.P11254206795767849963

/-! ## A020658.P8290282383488844350

`A028902(A007092(n)+1)`
-/

namespace A020658.P8290282383488844350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007092 n + 1).toNat

end

end A020658.P8290282383488844350

/-! ## A020658.P3786911493655731246

`A028902(lt[A047842(n)%10, log2(46)]+1)`
-/

namespace A020658.P3786911493655731246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (46 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1)

end

end A020658.P3786911493655731246

/-! ## A020658.P7778676630459858203

`A028902(1-A007092(n)*A057428(n))`
-/

namespace A020658.P7778676630459858203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (1 - A007092 n * A057428 n).toNat

end

end A020658.P7778676630459858203

/-! ## A020658.P15751035555234093774

`A028902(A007092(n))-A260196(A017101(n))`
-/

namespace A020658.P15751035555234093774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007092 n).toNat - A260196 (A017101 n).toNat

end

end A020658.P15751035555234093774

/-! ## A020658.P4548312006575422787

`A028902(A007092(n))-A057428(A167499(n))`
-/

namespace A020658.P4548312006575422787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007092 n).toNat - A057428 (A167499 n).toNat

end

end A020658.P4548312006575422787

/-! ## A020658.P5958046492342086959

`∑[A150962(val(A137734(n²), 6))]`
-/

namespace A020658.P5958046492342086959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150962 (SequenceMachineLib.valuation (A137734 (n ^ 2)).toNat 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020658.P5958046492342086959

/-! ## A020658.P16845712040786160736

`A028902(A007092(n))-A260196(A027691(n))`
-/

namespace A020658.P16845712040786160736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A007092 n).toNat - A260196 (A027691 n).toNat

end

end A020658.P16845712040786160736

/-!
# A020659: Lexicographically earliest increasing sequence of nonnegative numbers that contains no arithmetic progression of length 8.

The programs for A020659, there is no canonical definition to state claims against.
-/

/-! ## A020659.P1747139061727897856

`A020660(n+1)-1`
-/

namespace A020659.P1747139061727897856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020660 (n + 1) - 1

end

end A020659.P1747139061727897856

/-! ## A020659.P2759193443276347145

`record[A020660(A324347(n))-1]`
-/

namespace A020659.P2759193443276347145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020660 (A324347 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020659.P2759193443276347145

/-! ## A020659.P5338842301796170534

`A057428(A000005(n+1))+A020660(n+1)`
-/

namespace A020659.P5338842301796170534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000005 (n + 1)).toNat + A020660 (n + 1)

end

end A020659.P5338842301796170534

/-! ## A020659.P8984404734246740261

`A057428(A031131(n+1))+A020660(n+1)`
-/

namespace A020659.P8984404734246740261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A031131 (n + 1)).toNat + A020660 (n + 1)

end

end A020659.P8984404734246740261

/-! ## A020659.P17643106823505336310

`A057428(A062068(n+1))+A020660(n+1)`
-/

namespace A020659.P17643106823505336310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A062068 (n + 1)).toNat + A020660 (n + 1)

end

end A020659.P17643106823505336310

/-! ## A020659.P15153065097211614073

`A057428(A001414(n+3))+A020660(n+1)`
-/

namespace A020659.P15153065097211614073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A001414 (n + 3)).toNat + A020660 (n + 1)

end

end A020659.P15153065097211614073

/-! ## A020659.P4429965380827603442

`A140503(A020639(2*(n+1)))+A020660(n+1)`
-/

namespace A020659.P4429965380827603442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140503 (A020639 (2 * (n + 1))).toNat + A020660 (n + 1)

end

end A020659.P4429965380827603442

/-! ## A020659.P156476682403803868

`A109389(A204162(2*(n+2)))+A020660(n+1)`
-/

namespace A020659.P156476682403803868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (A204162 (2 * (n + 2))).toNat + A020660 (n + 1)

end

end A020659.P156476682403803868

/-! ## A020659.P14755374824908794957

`(A020660(n+1)+A005836(n+1))%A003278(n+1)`
-/

namespace A020659.P14755374824908794957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020660 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))

end

end A020659.P14755374824908794957

/-! ## A020659.P10059190659647637382

`(A020660(n+1)+A005839(n+1))%A005837(n+1)`
-/

namespace A020659.P10059190659647637382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020660 (n + 1) + A005839 (n + 1)) (A005837 (n + 1))

end

end A020659.P10059190659647637382

/-! ## A020659.P16178968835714651023

`(A020660(n+1)+A020656(n+1))%A005838(n+1)`
-/

namespace A020659.P16178968835714651023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020660 (n + 1) + A020656 (n + 1)) (A005838 (n + 1))

end

end A020659.P16178968835714651023

/-! ## A020659.P16407267656437150706

`(A020660(n+1)+A020654(n+1))%A020655(n+1)`
-/

namespace A020659.P16407267656437150706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020660 (n + 1) + A020654 (n + 1)) (A020655 (n + 1))

end

end A020659.P16407267656437150706

/-! ## A020659.P1855976448619355106

`A123737(Δ[A123737(n+1)]²)+A020660(n+1)`
-/

namespace A020659.P1855976448619355106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 ((f1 (n + 1) - f1 n) ^ 2).toNat + A020660 (n + 1)

end

end A020659.P1855976448619355106

/-! ## A020659.P12256830419347287752

`A057428(2*n+1)+A020660(n+1)`
-/

namespace A020659.P12256830419347287752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * n + 1) + A020660 (n + 1)

end

end A020659.P12256830419347287752

/-! ## A020659.P17676935339470112449

`A033999(2*n+3)+A020660(n+1)`
-/

namespace A020659.P17676935339470112449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 3) + A020660 (n + 1)

end

end A020659.P17676935339470112449

/-! ## A020659.P4017808630695794339

`A023443(A020660(n+1))`
-/

namespace A020659.P4017808630695794339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020660 (n + 1)).toNat

end

end A020659.P4017808630695794339

/-! ## A020659.P12687857646111560658

`A099837(3*n+1)+A020660(n+1)`
-/

namespace A020659.P12687857646111560658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 1) + A020660 (n + 1)

end

end A020659.P12687857646111560658

/-! ## A020659.P14000805847836615716

`A034947(A005408(A005408(n)))+A020660(n+1)`
-/

namespace A020659.P14000805847836615716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A005408 (A005408 n).toNat).toNat + A020660 (n + 1)

end

end A020659.P14000805847836615716

/-! ## A020659.P12374975917264794181

`A321804(A001316(n))+A020660(n+1)`
-/

namespace A020659.P12374975917264794181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A001316 n).toNat + A020660 (n + 1)

end

end A020659.P12374975917264794181

/-!
# A020660: Lexicographically earliest increasing sequence of positive numbers that contains no arithmetic progression of length 8.

The programs for A020660, there is no canonical definition to state claims against.
-/

/-! ## A020660.P6488304792276413810

`A020659(1+n)+1`
-/

namespace A020660.P6488304792276413810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020659 (1 + n) + 1

end

end A020660.P6488304792276413810

/-! ## A020660.P1347466954558778722

`comp[7*A140740(n+1)]+1`
-/

namespace A020660.P1347466954558778722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A140740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A020660.P1347466954558778722

/-! ## A020660.P3418373650896182327

`comp[ceil(5*A129154(n)*sqrt(2))]`
-/

namespace A020660.P3418373650896182327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 * A129154 n : ℝ) * Real.sqrt (2 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020660.P3418373650896182327

/-! ## A020660.P14597271543051011469

`A362914(A313494(n))`
-/

namespace A020660.P14597271543051011469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362914 (A313494 n).toNat

end

end A020660.P14597271543051011469

/-! ## A020660.P16821821737633623834

`A362914(A314691(n))`
-/

namespace A020660.P16821821737633623834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362914 (A314691 n).toNat

end

end A020660.P16821821737633623834

/-!
# A020661: Lexicographically earliest increasing sequence of nonnegative numbers that contains no arithmetic progression of length 9.

The programs for A020661, there is no canonical definition to state claims against.
-/

/-! ## A020661.P10586335185607607227

`A020662(n+1)-1`
-/

namespace A020661.P10586335185607607227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020662 (n + 1) - 1

end

end A020661.P10586335185607607227

/-! ## A020661.P1912869954137947656

`A057428(A028310(n))+A020662(n+1)`
-/

namespace A020661.P1912869954137947656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A028310 n).toNat + A020662 (n + 1)

end

end A020661.P1912869954137947656

/-! ## A020661.P10133341601298717884

`A320836(A020639(3*(n+1)))+A020662(n+1)`
-/

namespace A020661.P10133341601298717884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (A020639 (3 * (n + 1))).toNat + A020662 (n + 1)

end

end A020661.P10133341601298717884

/-! ## A020661.P4199892730950533727

`(A020662(n+1)+A005836(n+1))%A003278(n+1)`
-/

namespace A020661.P4199892730950533727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020662 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))

end

end A020661.P4199892730950533727

/-! ## A020661.P7695219034292670423

`(A020662(n+1)+A005839(n+1))%A005837(n+1)`
-/

namespace A020661.P7695219034292670423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020662 (n + 1) + A005839 (n + 1)) (A005837 (n + 1))

end

end A020661.P7695219034292670423

/-! ## A020661.P12761054066088980040

`(A020662(n+1)+A020656(n+1))%A005838(n+1)`
-/

namespace A020661.P12761054066088980040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020662 (n + 1) + A020656 (n + 1)) (A005838 (n + 1))

end

end A020661.P12761054066088980040

/-! ## A020661.P14395967881957516287

`(A020662(n+1)+A020654(n+1))%A020655(n+1)`
-/

namespace A020661.P14395967881957516287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020662 (n + 1) + A020654 (n + 1)) (A020655 (n + 1))

end

end A020661.P14395967881957516287

/-! ## A020661.P14277394383320026098

`A057428(A132665(n+1))+A020662(n+1)`
-/

namespace A020661.P14277394383320026098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A132665 (n + 1)).toNat + A020662 (n + 1)

end

end A020661.P14277394383320026098

/-! ## A020661.P15871139278597606872

`A023443(A020662(n+1))`
-/

namespace A020661.P15871139278597606872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020662 (n + 1)).toNat

end

end A020661.P15871139278597606872

/-! ## A020661.P16169907155870748605

`A033999(A051532(n+5))+A020662(n+1)`
-/

namespace A020661.P16169907155870748605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051532 (n + 5)).toNat + A020662 (n + 1)

end

end A020661.P16169907155870748605

/-! ## A020661.P14996636811696366775

`A033999(A063213(n+1))+A020662(n+1)`
-/

namespace A020661.P14996636811696366775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063213 (n + 1)).toNat + A020662 (n + 1)

end

end A020661.P14996636811696366775

/-! ## A020661.P18324922794164431464

`A057428(A001358(n+1))+A020662(n+1)`
-/

namespace A020661.P18324922794164431464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A001358 (n + 1)).toNat + A020662 (n + 1)

end

end A020661.P18324922794164431464

/-! ## A020661.P3082510546385153730

`A279119(2*A020662(n+1))`
-/

namespace A020661.P3082510546385153730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A020662 (n + 1)).toNat

end

end A020661.P3082510546385153730

/-! ## A020661.P16163044419352455462

`A057428(A014613(n+1))+A020662(n+1)`
-/

namespace A020661.P16163044419352455462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A014613 (n + 1)).toNat + A020662 (n + 1)

end

end A020661.P16163044419352455462

/-! ## A020661.P4872144597605373043

`A057428(A249814(n+3))+A020662(n+1)`
-/

namespace A020661.P4872144597605373043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A249814 (n + 3)).toNat + A020662 (n + 1)

end

end A020661.P4872144597605373043

/-! ## A020661.P17892790989871414568

`A076479(A246655(n+1))+A020662(n+1)`
-/

namespace A020661.P17892790989871414568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A246655 (n + 1)).toNat + A020662 (n + 1)

end

end A020661.P17892790989871414568

/-! ## A020661.P1493702189736378264

`A057428(A000040(n+1))+A020662(n+1)`
-/

namespace A020661.P1493702189736378264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000040 (n + 1)).toNat + A020662 (n + 1)

end

end A020661.P1493702189736378264

/-! ## A020661.P16497163046043932086

`A033999(A000040(n+3))+A020662(n+1)`
-/

namespace A020661.P16497163046043932086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000040 (n + 3)).toNat + A020662 (n + 1)

end

end A020661.P16497163046043932086

/-! ## A020661.P15622012873735186844

`A033999(A117563(3*(n+1)))+A020662(n+1)`
-/

namespace A020661.P15622012873735186844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A117563 (3 * (n + 1))).toNat + A020662 (n + 1)

end

end A020661.P15622012873735186844

/-! ## A020661.P9064159652903319794

`A057428(A007510(n+1))+A020662(n+1)`
-/

namespace A020661.P9064159652903319794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007510 (n + 1)).toNat + A020662 (n + 1)

end

end A020661.P9064159652903319794

/-!
# A020662: Lexicographically earliest increasing sequence of positive numbers that contains no arithmetic progression of length 9.

The programs for A020662, there is no canonical definition to state claims against.
-/

/-! ## A020662.P5949595690975269755

`A020661(n+1)+1`
-/

namespace A020662.P5949595690975269755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020661 (n + 1) + 1

end

end A020662.P5949595690975269755

/-! ## A020662.P4590520852827750913

`A325389(n+1)+val(A325390(2*n+1), 6)`
-/

namespace A020662.P4590520852827750913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 1) + (SequenceMachineLib.valuation (A325390 (2 * n + 1)).toNat 6 : ℤ)

end

end A020662.P4590520852827750913

/-! ## A020662.P1811696453408501872

`or(A010051(A007088(n+1)), A325389(n+1))`
-/

namespace A020662.P1811696453408501872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A007088 (n + 1)).toNat) (A325389 (n + 1))

end

end A020662.P1811696453408501872

/-! ## A020662.P15896796797258554120

`comp[A265236(n)*A309680(n+3)]`
-/

namespace A020662.P15896796797258554120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265236 n * A309680 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A020662.P15896796797258554120

/-! ## A020662.P1524565738716321960

`lt[A263362(A175422(n)), A001222(3*(n+1))]`
-/

namespace A020662.P1524565738716321960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263362 (A175422 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A020662.P1524565738716321960

/-!
# A020663: Lexicographically earliest increasing sequence of nonnegative numbers that contains no arithmetic progression of length 10.

The programs for A020663, there is no canonical definition to state claims against.
-/

/-! ## A020663.P7322943906450048881

`A020664(n+1)-1`
-/

namespace A020663.P7322943906450048881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020664 (n + 1) - 1

end

end A020663.P7322943906450048881

/-! ## A020663.P11467668744597256249

`A059959(C(n, n+1))+A020664(n+1)`
-/

namespace A020663.P11467668744597256249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 (Nat.choose n (n + 1)) + A020664 (n + 1)

end

end A020663.P11467668744597256249

/-! ## A020663.P5629060965958138535

`A057428(∑[A071030(n)])+A020664(n+1)`
-/

namespace A020663.P5629060965958138535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A020664 (n + 1)

end

end A020663.P5629060965958138535

/-! ## A020663.P10588174904431620642

`A057428(A000120(n)+1)+A020664(n+1)`
-/

namespace A020663.P10588174904431620642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000120 n + 1).toNat + A020664 (n + 1)

end

end A020663.P10588174904431620642

/-! ## A020663.P5102158822268468405

`A057428(A002322(n+1))+A020664(n+1)`
-/

namespace A020663.P5102158822268468405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002322 (n + 1)).toNat + A020664 (n + 1)

end

end A020663.P5102158822268468405

/-! ## A020663.P1133919241848180459

`A057428(A029931(n)+1)+A020664(n+1)`
-/

namespace A020663.P1133919241848180459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A029931 n + 1).toNat + A020664 (n + 1)

end

end A020663.P1133919241848180459

/-! ## A020663.P17077256117928202758

`A057428(A087508(n)+1)+A020664(n+1)`
-/

namespace A020663.P17077256117928202758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A087508 n + 1).toNat + A020664 (n + 1)

end

end A020663.P17077256117928202758

/-! ## A020663.P14486865778458880943

`A057428(A087990(n+1))+A020664(n+1)`
-/

namespace A020663.P14486865778458880943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A087990 (n + 1)).toNat + A020664 (n + 1)

end

end A020663.P14486865778458880943

/-! ## A020663.P12434228518573409460

`A057428(A339822(n)+1)+A020664(n+1)`
-/

namespace A020663.P12434228518573409460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A339822 n + 1).toNat + A020664 (n + 1)

end

end A020663.P12434228518573409460

/-! ## A020663.P13339259135322849929

`A328384(p?[A328384(n+1)])+A020664(n+1)`
-/

namespace A020663.P13339259135322849929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A020664 (n + 1)

end

end A020663.P13339259135322849929

/-! ## A020663.P5037900900010332410

`(A020664(n+1)+A005836(n+1))%A003278(n+1)`
-/

namespace A020663.P5037900900010332410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020664 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))

end

end A020663.P5037900900010332410

/-! ## A020663.P5132314989156159667

`(A020664(n+1)+A020656(n+1))%A005838(n+1)`
-/

namespace A020663.P5132314989156159667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020664 (n + 1) + A020656 (n + 1)) (A005838 (n + 1))

end

end A020663.P5132314989156159667

/-! ## A020663.P4586911782503619525

`(A020664(n+1)+A020654(n+1))%A020655(n+1)`
-/

namespace A020663.P4586911782503619525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020664 (n + 1) + A020654 (n + 1)) (A020655 (n + 1))

end

end A020663.P4586911782503619525

/-! ## A020663.P4581229327192442313

`A057428(1+n)+A020664(n+1)`
-/

namespace A020663.P4581229327192442313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (1 + n) + A020664 (n + 1)

end

end A020663.P4581229327192442313

/-! ## A020663.P17000809590337630873

`A023443(A020664(n+1))`
-/

namespace A020663.P17000809590337630873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020664 (n + 1)).toNat

end

end A020663.P17000809590337630873

/-! ## A020663.P10314094045883768708

`A289207(A020664(n+1)+1)`
-/

namespace A020663.P10314094045883768708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A020664 (n + 1) + 1).toNat

end

end A020663.P10314094045883768708

/-! ## A020663.P13074055949959782941

`A328384(p?[A017101(n)])+A020664(n+1)`
-/

namespace A020663.P13074055949959782941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A020664 (n + 1)

end

end A020663.P13074055949959782941

/-! ## A020663.P14821247601515321126

`A328384(p?[A103221(n)])+A020664(n+1)`
-/

namespace A020663.P14821247601515321126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A020664 (n + 1)

end

end A020663.P14821247601515321126

/-! ## A020663.P441361288767233446

`A328384(p?[A008615(n)])+A020664(n+1)`
-/

namespace A020663.P441361288767233446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A020664 (n + 1)

end

end A020663.P441361288767233446

/-! ## A020663.P8154534177511723487

`A343785(A167499(n))+A020664(n+1)`
-/

namespace A020663.P8154534177511723487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A167499 n).toNat + A020664 (n + 1)

end

end A020663.P8154534177511723487

/-!
# A020664: Lexicographically earliest increasing sequence of positive numbers that contains no arithmetic progression of length 10.

The programs for A020664, there is no canonical definition to state claims against.
-/

/-! ## A020664.P8923007150755319116

`A020663(1+n)+1`
-/

namespace A020664.P8923007150755319116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020663 (1 + n) + 1

end

end A020664.P8923007150755319116

/-! ## A020664.P565229549499451154

`lt[A227618((n+3)*A000040(n+2)), n+2]-(1-4/2)`
-/

namespace A020664.P565229549499451154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227618 ((n + 3 : ℤ) * A000040 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) - (1 - (4 : ℚ) / 2)

end

end A020664.P565229549499451154

/-! ## A020664.P6185738364753541649

`lt[A131364(ceil(A345796(3*(n+1))/2)+1), 1]+1`
-/

namespace A020664.P6185738364753541649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 (⌈(A345796 (3 * (n + 1)) : ℚ) / 2⌉ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A020664.P6185738364753541649

/-! ## A020664.P2253925456050617828

`lt[A156282(n), A065242(A054716(n+5))]`
-/

namespace A020664.P2253925456050617828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065242 (A054716 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A020664.P2253925456050617828

/-!
# A020667: Least n-th power containing every digit.

The programs for A020667, there is no canonical definition to state claims against.
-/

/-! ## A020667.P17581449993978069555

`A020666(n+1)^(n+1)`
-/

namespace A020667.P17581449993978069555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020666 (n + 1) ^ (n + 1)

end

end A020667.P17581449993978069555

/-!
# A020668: Numbers of the form x^2 + 4*y^2.

The programs for A020668, the canonical program `A020668.P7056058439816876017` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020668 has offset 1).

The definition of A020668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020668.P17284733362120300583

`∪[A097268(n+1), n²]`
-/

namespace A020668.P17284733362120300583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A020668.P17284733362120300583

namespace A020668

/-- `∪[A097268(n+1), n²]` -/
def P17284733362120300583.Spec : Prop :=
  ∀ n, (P17284733362120300583.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P6017456879751329526

`∪[A000290(n), A097268(n+1)]`
-/

namespace A020668.P6017456879751329526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020668.P6017456879751329526

namespace A020668

/-- `∪[A000290(n), A097268(n+1)]` -/
def P6017456879751329526.Spec : Prop :=
  ∀ n, (P6017456879751329526.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P9928091844704055700

`filter[A001481(n+1), A152822(#)]`
-/

namespace A020668.P9928091844704055700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A020668.P9928091844704055700

namespace A020668

/-- `filter[A001481(n+1), A152822(#)]` -/
def P9928091844704055700.Spec : Prop :=
  ∀ n, P9928091844704055700.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P7056058439816876017

`comp[or(n, 2*A229062(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020668

/-- `comp[or(n, 2*A229062(n))]` -/
def P7056058439816876017.Spec : Prop :=
  ∀ n, (P7056058439816876017.a n : ℤ) = A020668 (n + 1)

theorem P7056058439816876017.correct : P7056058439816876017.Spec := by
  intro n
  simp only [A020668, Nat.add_sub_cancel]

end A020668

/-! ## A020668.P7317871095240455161

`eq[A112049(n+1), A229062(n)]`
-/

namespace A020668.P7317871095240455161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020668.P7317871095240455161

namespace A020668

/-- `eq[A112049(n+1), A229062(n)]` -/
def P7317871095240455161.Spec : Prop :=
  ∀ n, (P7317871095240455161.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P14908708267515112023

`filter[A042948(n), A229062(#)]`
-/

namespace A020668.P14908708267515112023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020668.P14908708267515112023

namespace A020668

/-- `filter[A042948(n), A229062(#)]` -/
def P14908708267515112023.Spec : Prop :=
  ∀ n, P14908708267515112023.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P1488904611500114359

`∩[A001481(n+1), A042948(n)]`
-/

namespace A020668.P1488904611500114359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020668.P1488904611500114359

namespace A020668

/-- `∩[A001481(n+1), A042948(n)]` -/
def P1488904611500114359.Spec : Prop :=
  ∀ n, (P1488904611500114359.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P15385799484601912093

`filter[A047432(n+1), A229062(#)]`
-/

namespace A020668.P15385799484601912093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020668.P15385799484601912093

namespace A020668

/-- `filter[A047432(n+1), A229062(#)]` -/
def P15385799484601912093.Spec : Prop :=
  ∀ n, P15385799484601912093.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P9820526042779482653

`filter[A047494(n+1), A229062(#)]`
-/

namespace A020668.P9820526042779482653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020668.P9820526042779482653

namespace A020668

/-- `filter[A047494(n+1), A229062(#)]` -/
def P9820526042779482653.Spec : Prop :=
  ∀ n, P9820526042779482653.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P5965267409314670039

`filter[A047601(n+1), A229062(#)]`
-/

namespace A020668.P5965267409314670039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020668.P5965267409314670039

namespace A020668

/-- `filter[A047601(n+1), A229062(#)]` -/
def P5965267409314670039.Spec : Prop :=
  ∀ n, P5965267409314670039.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P7337021778377423985

`∩[A001481(n+1), A047432(n+1)]`
-/

namespace A020668.P7337021778377423985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020668.P7337021778377423985

namespace A020668

/-- `∩[A001481(n+1), A047432(n+1)]` -/
def P7337021778377423985.Spec : Prop :=
  ∀ n, (P7337021778377423985.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P12896078804538844367

`∩[A001481(n+1), A047494(n+1)]`
-/

namespace A020668.P12896078804538844367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020668.P12896078804538844367

namespace A020668

/-- `∩[A001481(n+1), A047494(n+1)]` -/
def P12896078804538844367.Spec : Prop :=
  ∀ n, (P12896078804538844367.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P14704521856979073736

`∩[A001481(n+1), A047601(n+1)]`
-/

namespace A020668.P14704521856979073736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020668.P14704521856979073736

namespace A020668

/-- `∩[A001481(n+1), A047601(n+1)]` -/
def P14704521856979073736.Spec : Prop :=
  ∀ n, (P14704521856979073736.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P7001506031846949418

`filter[A161674(n+1), A229062(#)]`
-/

namespace A020668.P7001506031846949418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020668.P7001506031846949418

namespace A020668

/-- `filter[A161674(n+1), A229062(#)]` -/
def P7001506031846949418.Spec : Prop :=
  ∀ n, P7001506031846949418.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P9742883521634144825

`∩[A001481(n+1), A161674(n+1)]`
-/

namespace A020668.P9742883521634144825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020668.P9742883521634144825

namespace A020668

/-- `∩[A001481(n+1), A161674(n+1)]` -/
def P9742883521634144825.Spec : Prop :=
  ∀ n, (P9742883521634144825.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P3862487411002224872

`filter[A042965(n+1), A229062(#)]`
-/

namespace A020668.P3862487411002224872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020668.P3862487411002224872

namespace A020668

/-- `filter[A042965(n+1), A229062(#)]` -/
def P3862487411002224872.Spec : Prop :=
  ∀ n, P3862487411002224872.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P5181298958529427865

`filter[A047428(n+1), A229062(#)]`
-/

namespace A020668.P5181298958529427865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020668.P5181298958529427865

namespace A020668

/-- `filter[A047428(n+1), A229062(#)]` -/
def P5181298958529427865.Spec : Prop :=
  ∀ n, P5181298958529427865.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P6086881776694710611

`filter[A047569(n+1), A229062(#)]`
-/

namespace A020668.P6086881776694710611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020668.P6086881776694710611

namespace A020668

/-- `filter[A047569(n+1), A229062(#)]` -/
def P6086881776694710611.Spec : Prop :=
  ∀ n, P6086881776694710611.a n = A020668 (n + 1)

end A020668

/-! ## A020668.P5593514787171103640

`∩[A001481(n+1), A042965(n+1)]`
-/

namespace A020668.P5593514787171103640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020668.P5593514787171103640

namespace A020668

/-- `∩[A001481(n+1), A042965(n+1)]` -/
def P5593514787171103640.Spec : Prop :=
  ∀ n, (P5593514787171103640.a n : ℤ) = A020668 (n + 1)

end A020668

/-! ## A020668.P15000344618573697513

`∩[A001481(n+1), A047428(n+1)]`
-/

namespace A020668.P15000344618573697513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020668.P15000344618573697513

namespace A020668

/-- `∩[A001481(n+1), A047428(n+1)]` -/
def P15000344618573697513.Spec : Prop :=
  ∀ n, (P15000344618573697513.a n : ℤ) = A020668 (n + 1)

end A020668

/-!
# A020669: Numbers of form x^2 + 5 y^2.

The programs for A020669, there is no canonical definition to state claims against.
-/

/-! ## A020669.P11529744532790021323

`∪[A154778(n+1), A155565(n+1)]`
-/

namespace A020669.P11529744532790021323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020669.P11529744532790021323

/-! ## A020669.P1020857315501997787

`lt[0, A033718(n)]`
-/

namespace A020669.P1020857315501997787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020669.P1020857315501997787

/-! ## A020669.P8412267576616967963

`lt[1, A111949(A028310(n))+1]`
-/

namespace A020669.P8412267576616967963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020669.P8412267576616967963

/-! ## A020669.P16335180216274935576

`eq[2, A178815(A033718(n)+1)]`
-/

namespace A020669.P16335180216274935576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (A033718 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P16335180216274935576

/-! ## A020669.P4087760681542853900

`eq[2, A303579(A033718(n)+1)]`
-/

namespace A020669.P4087760681542853900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303579 (A033718 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P4087760681542853900

/-! ## A020669.P16977670306543316418

`eq[2, A046698(A033718(n)+2)]`
-/

namespace A020669.P16977670306543316418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A033718 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P16977670306543316418

/-! ## A020669.P16059561787318848263

`eq[1, A004773(ceil(A033718(n)/(n+1)))]`
-/

namespace A020669.P16059561787318848263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 ⌈(A033718 n : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P16059561787318848263

/-! ## A020669.P1937579806292227849

`eq[2, A020639(A033718(A033718(n)²))]`
-/

namespace A020669.P1937579806292227849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A033718 (A033718 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P1937579806292227849

/-! ## A020669.P11443579712858389601

`eq[1, A001222(A033718(A033718(n))+3)]`
-/

namespace A020669.P11443579712858389601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033718 (A033718 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P11443579712858389601

/-! ## A020669.P1715061488495343510

`eq[2, A000005(A033718(A033718(n))+3)]`
-/

namespace A020669.P1715061488495343510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A033718 (A033718 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P1715061488495343510

/-! ## A020669.P8375175191692302947

`eq[1, A001222(7-A033718(A033718(n)))]`
-/

namespace A020669.P8375175191692302947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 - A033718 (A033718 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P8375175191692302947

/-! ## A020669.P14345061349093325792

`lt[0, A028586(2*n)]`
-/

namespace A020669.P14345061349093325792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020669.P14345061349093325792

/-! ## A020669.P16834201282649740167

`lt[1, A143323(A004277(n))+1]`
-/

namespace A020669.P16834201282649740167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143323 (A004277 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020669.P16834201282649740167

/-! ## A020669.P8911423918491500341

`eq[0, A028586(A028586(2*n)²)]`
-/

namespace A020669.P8911423918491500341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (A028586 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020669.P8911423918491500341

/-! ## A020669.P2676294850229416437

`eq[A000038(A028586(2*n)), A000038(n+1)]`
-/

namespace A020669.P2676294850229416437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028586 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020669.P2676294850229416437

/-! ## A020669.P4413745161101416575

`eq[A040001(A028586(2*n)), A040001(2*n)]`
-/

namespace A020669.P4413745161101416575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A028586 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020669.P4413745161101416575

/-! ## A020669.P2081987306007654467

`lt[1, A111949(A008458(n))+1]`
-/

namespace A020669.P2081987306007654467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A008458 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020669.P2081987306007654467

/-! ## A020669.P5607603123628367336

`eq[A046698(n*A033718(n)), A046698(n)]`
-/

namespace A020669.P5607603123628367336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 ((n : ℤ) * A033718 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020669.P5607603123628367336

/-!
# A020670: Numbers of form x^2 + 7y^2.

The programs for A020670, there is no canonical definition to state claims against.
-/

/-! ## A020670.P12095271328980616563

`lt[0, A033719(n)]`
-/

namespace A020670.P12095271328980616563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020670.P12095271328980616563

/-! ## A020670.P4333899320243121310

`eq[0, A266719(A033719(n)²)]`
-/

namespace A020670.P4333899320243121310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A033719 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P4333899320243121310

/-! ## A020670.P9210781894779785292

`eq[1, A019425(A033719(n)²)]`
-/

namespace A020670.P9210781894779785292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033719 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P9210781894779785292

/-! ## A020670.P14839764835630344326

`eq[2, A000122(A033719(n)²)]`
-/

namespace A020670.P14839764835630344326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A033719 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P14839764835630344326

/-! ## A020670.P6745843456707062757

`eq[2, A040000(A033719(n)²)]`
-/

namespace A020670.P6745843456707062757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A033719 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P6745843456707062757

/-! ## A020670.P13353363222451472307

`eq[1, A266719(A033719(n)+1)]`
-/

namespace A020670.P13353363222451472307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A033719 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P13353363222451472307

/-! ## A020670.P16073704114074994079

`eq[2, A130130(A033719(n)+1)]`
-/

namespace A020670.P16073704114074994079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A033719 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P16073704114074994079

/-! ## A020670.P15980629825452598108

`eq[2, A040000(2*A033719(n))]`
-/

namespace A020670.P15980629825452598108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (2 * A033719 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P15980629825452598108

/-! ## A020670.P18392280538838874332

`eq[2, A130130(2*A033719(n))]`
-/

namespace A020670.P18392280538838874332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (2 * A033719 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P18392280538838874332

/-! ## A020670.P535441338681915440

`eq[1, gcd(A033719(n), A109611(n+1))]`
-/

namespace A020670.P535441338681915440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033719 n) (A109611 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020670.P535441338681915440

/-! ## A020670.P7734491282849531235

`eq[1, ceil(A033719(n)/A000203(n+1))]`
-/

namespace A020670.P7734491282849531235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033719 n : ℚ) / (A000203 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P7734491282849531235

/-! ## A020670.P1877262252038057063

`eq[A040000(n), A130130(A033719(n))]`
-/

namespace A020670.P1877262252038057063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A033719 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020670.P1877262252038057063

/-! ## A020670.P8900851866682896961

`eq[A040000(n+1), A040000(A033719(n))]`
-/

namespace A020670.P8900851866682896961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A033719 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020670.P8900851866682896961

/-! ## A020670.P5134011437158370476

`eq[2, A040000(A033719(n)/A040000(n))]`
-/

namespace A020670.P5134011437158370476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (SequenceMachineLib.roundAway ((A033719 n : ℚ) / (A040000 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P5134011437158370476

/-! ## A020670.P13632315494397934071

`eq[A051700(A033719(n)), A214709(n+1)]`
-/

namespace A020670.P13632315494397934071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A033719 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020670.P13632315494397934071

/-! ## A020670.P18092091566936282337

`lt[0, A205974(n)]`
-/

namespace A020670.P18092091566936282337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020670.P18092091566936282337

/-! ## A020670.P16047489912756414545

`eq[1, ceil(A033719(n)/A000204(n+1))]`
-/

namespace A020670.P16047489912756414545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033719 n : ℚ) / (A000204 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P16047489912756414545

/-! ## A020670.P4998979962565081525

`eq[1, ceil(A033719(n)/A203847(n+1))]`
-/

namespace A020670.P4998979962565081525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033719 n : ℚ) / (A203847 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020670.P4998979962565081525

/-!
# A020671: Numbers of form x^2 + 8 y^2.

The programs for A020671, the canonical program `A020671.P12817982784558500883` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020671 has offset 1).

The definition of A020671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020671.P12817982784558500883

`∩[A002479(n+1), A047462(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A020671

/-- `∩[A002479(n+1), A047462(n+1)]` -/
def P12817982784558500883.Spec : Prop :=
  ∀ n, (P12817982784558500883.a n : ℤ) = A020671 (n + 1)

theorem P12817982784558500883.correct : P12817982784558500883.Spec := by
  intro n
  simp only [A020671, Nat.add_sub_cancel]

end A020671

/-! ## A020671.P8627411433961775372

`∩[A002479(n+1), A042948(n)]`
-/

namespace A020671.P8627411433961775372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020671.P8627411433961775372

namespace A020671

/-- `∩[A002479(n+1), A042948(n)]` -/
def P8627411433961775372.Spec : Prop :=
  ∀ n, (P8627411433961775372.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P5139380471510007139

`∩[A002479(n+1), A047538(n+1)]`
-/

namespace A020671.P5139380471510007139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020671.P5139380471510007139

namespace A020671

/-- `∩[A002479(n+1), A047538(n+1)]` -/
def P5139380471510007139.Spec : Prop :=
  ∀ n, (P5139380471510007139.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P11525605281615515418

`∩[A002479(n+1), A047494(n+1)]`
-/

namespace A020671.P11525605281615515418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020671.P11525605281615515418

namespace A020671

/-- `∩[A002479(n+1), A047494(n+1)]` -/
def P11525605281615515418.Spec : Prop :=
  ∀ n, (P11525605281615515418.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P13389753248629084062

`lt[0, A139093(n)]`
-/

namespace A020671.P13389753248629084062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020671.P13389753248629084062

namespace A020671

/-- `lt[0, A139093(n)]` -/
def P13389753248629084062.Spec : Prop :=
  ∀ n, (P13389753248629084062.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P17919699286761815702

`lt[0, A226225(n)]`
-/

namespace A020671.P17919699286761815702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020671.P17919699286761815702

namespace A020671

/-- `lt[0, A226225(n)]` -/
def P17919699286761815702.Spec : Prop :=
  ∀ n, (P17919699286761815702.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P7571052292685289280

`filter[A042948(n), A391183(#)]`
-/

namespace A020671.P7571052292685289280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A020671.P7571052292685289280

namespace A020671

/-- `filter[A042948(n), A391183(#)]` -/
def P7571052292685289280.Spec : Prop :=
  ∀ n, P7571052292685289280.a n = A020671 (n + 1)

end A020671

/-! ## A020671.P5592890025349201920

`eq[A050603(n), A391183(n)]`
-/

namespace A020671.P5592890025349201920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020671.P5592890025349201920

namespace A020671

/-- `eq[A050603(n), A391183(n)]` -/
def P5592890025349201920.Spec : Prop :=
  ∀ n, (P5592890025349201920.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P15049851926633155555

`eq[2, A000122(A226225(n)²)]`
-/

namespace A020671.P15049851926633155555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A226225 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020671.P15049851926633155555

namespace A020671

/-- `eq[2, A000122(A226225(n)²)]` -/
def P15049851926633155555.Spec : Prop :=
  ∀ n, (P15049851926633155555.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P14318289104706016763

`eq[2, A031217(A226225(n)+2)]`
-/

namespace A020671.P14318289104706016763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031217 (A226225 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020671.P14318289104706016763

namespace A020671

/-- `eq[2, A031217(A226225(n)+2)]` -/
def P14318289104706016763.Spec : Prop :=
  ∀ n, (P14318289104706016763.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P9492435034988734703

`filter[A002479(n+1), A133872(#)]`
-/

namespace A020671.P9492435034988734703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A020671.P9492435034988734703

namespace A020671

/-- `filter[A002479(n+1), A133872(#)]` -/
def P9492435034988734703.Spec : Prop :=
  ∀ n, P9492435034988734703.a n = A020671 (n + 1)

end A020671

/-! ## A020671.P16631261509894168806

`filter[A047462(n+1), A391183(#)]`
-/

namespace A020671.P16631261509894168806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A020671.P16631261509894168806

namespace A020671

/-- `filter[A047462(n+1), A391183(#)]` -/
def P16631261509894168806.Spec : Prop :=
  ∀ n, P16631261509894168806.a n = A020671 (n + 1)

end A020671

/-! ## A020671.P12303691641680032235

`filter[A047494(n+1), A391183(#)]`
-/

namespace A020671.P12303691641680032235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A020671.P12303691641680032235

namespace A020671

/-- `filter[A047494(n+1), A391183(#)]` -/
def P12303691641680032235.Spec : Prop :=
  ∀ n, P12303691641680032235.a n = A020671 (n + 1)

end A020671

/-! ## A020671.P178690668564917447

`filter[A047538(n+1), A391183(#)]`
-/

namespace A020671.P178690668564917447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A020671.P178690668564917447

namespace A020671

/-- `filter[A047538(n+1), A391183(#)]` -/
def P178690668564917447.Spec : Prop :=
  ∀ n, P178690668564917447.a n = A020671 (n + 1)

end A020671

/-! ## A020671.P309026524676833919

`eq[A112049(n+1), A391183(n)]`
-/

namespace A020671.P309026524676833919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020671.P309026524676833919

namespace A020671

/-- `eq[A112049(n+1), A391183(n)]` -/
def P309026524676833919.Spec : Prop :=
  ∀ n, (P309026524676833919.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P13782247758830174021

`eq[A232096(n+1), A391183(n)]`
-/

namespace A020671.P13782247758830174021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020671.P13782247758830174021

namespace A020671

/-- `eq[A232096(n+1), A391183(n)]` -/
def P13782247758830174021.Spec : Prop :=
  ∀ n, (P13782247758830174021.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P6839020876789322050

`eq[and(2, n), A000007(A033715(n))]`
-/

namespace A020671.P6839020876789322050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A033715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020671.P6839020876789322050

namespace A020671

/-- `eq[and(2, n), A000007(A033715(n))]` -/
def P6839020876789322050.Spec : Prop :=
  ∀ n, (P6839020876789322050.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P7635912281646917530

`lt[0, abs(A242609(n))]`
-/

namespace A020671.P7635912281646917530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242609 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020671.P7635912281646917530

namespace A020671

/-- `lt[0, abs(A242609(n))]` -/
def P7635912281646917530.Spec : Prop :=
  ∀ n, (P7635912281646917530.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P1539747135025700387

`eq[A057077(n), A391183(n)]`
-/

namespace A020671.P1539747135025700387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020671.P1539747135025700387

namespace A020671

/-- `eq[A057077(n), A391183(n)]` -/
def P1539747135025700387.Spec : Prop :=
  ∀ n, (P1539747135025700387.a n : ℤ) = A020671 (n + 1)

end A020671

/-! ## A020671.P8650634562074280603

`eq[A100285(n), A391183(n)]`
-/

namespace A020671.P8650634562074280603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020671.P8650634562074280603

namespace A020671

/-- `eq[A100285(n), A391183(n)]` -/
def P8650634562074280603.Spec : Prop :=
  ∀ n, (P8650634562074280603.a n : ℤ) = A020671 (n + 1)

end A020671

/-!
# A020672: Numbers of form x^2 + 9 y^2.

The programs for A020672, the canonical program `A020672.P16459092017734974211` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020672 has offset 1).

The definition of A020672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020672.P15958761110796268350

`filter[A242660(n+1), A229062(#)]`
-/

namespace A020672.P15958761110796268350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020672.P15958761110796268350

namespace A020672

/-- `filter[A242660(n+1), A229062(#)]` -/
def P15958761110796268350.Spec : Prop :=
  ∀ n, P15958761110796268350.a n = A020672 (n + 1)

end A020672

/-! ## A020672.P16459092017734974211

`eq[A164848(n+1), A229062(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020672

/-- `eq[A164848(n+1), A229062(n)]` -/
def P16459092017734974211.Spec : Prop :=
  ∀ n, (P16459092017734974211.a n : ℤ) = A020672 (n + 1)

theorem P16459092017734974211.correct : P16459092017734974211.Spec := by
  intro n
  simp only [A020672, Nat.add_sub_cancel]

end A020672

/-! ## A020672.P16980691100116373371

`eq[A229062(n), A318666(n+1)]`
-/

namespace A020672.P16980691100116373371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P16980691100116373371

namespace A020672

/-- `eq[A229062(n), A318666(n+1)]` -/
def P16980691100116373371.Spec : Prop :=
  ∀ n, (P16980691100116373371.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P677280119290738583

`∩[A001481(n+1), A242660(n+1)]`
-/

namespace A020672.P677280119290738583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020672.P677280119290738583

namespace A020672

/-- `∩[A001481(n+1), A242660(n+1)]` -/
def P677280119290738583.Spec : Prop :=
  ∀ n, (P677280119290738583.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P5409558730575875433

`filter[A032766(n), A229062(#)]`
-/

namespace A020672.P5409558730575875433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A020672.P5409558730575875433

namespace A020672

/-- `filter[A032766(n), A229062(#)]` -/
def P5409558730575875433.Spec : Prop :=
  ∀ n, P5409558730575875433.a n = A020672 (n + 1)

end A020672

/-! ## A020672.P1371678332809631963

`∩[A001481(n+1), A032766(n)]`
-/

namespace A020672.P1371678332809631963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020672.P1371678332809631963

namespace A020672

/-- `∩[A001481(n+1), A032766(n)]` -/
def P1371678332809631963.Spec : Prop :=
  ∀ n, (P1371678332809631963.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P17309759685294154754

`eq[A229062(n), A233284(n+1)]`
-/

namespace A020672.P17309759685294154754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P17309759685294154754

namespace A020672

/-- `eq[A229062(n), A233284(n+1)]` -/
def P17309759685294154754.Spec : Prop :=
  ∀ n, (P17309759685294154754.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P6939523883025385439

`eq[A229062(n), A233285(n+1)]`
-/

namespace A020672.P6939523883025385439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P6939523883025385439

namespace A020672

/-- `eq[A229062(n), A233285(n+1)]` -/
def P6939523883025385439.Spec : Prop :=
  ∀ n, (P6939523883025385439.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P9145091086118742975

`eq[A229062(n), A230405(n)]`
-/

namespace A020672.P9145091086118742975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P9145091086118742975

namespace A020672

/-- `eq[A229062(n), A230405(n)]` -/
def P9145091086118742975.Spec : Prop :=
  ∀ n, (P9145091086118742975.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P17754738309440258413

`eq[A229062(n), A230404(n+1)]`
-/

namespace A020672.P17754738309440258413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P17754738309440258413

namespace A020672

/-- `eq[A229062(n), A230404(n+1)]` -/
def P17754738309440258413.Spec : Prop :=
  ∀ n, (P17754738309440258413.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P15843541970847072153

`lt[0, A258034(n)]`
-/

namespace A020672.P15843541970847072153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020672.P15843541970847072153

namespace A020672

/-- `lt[0, A258034(n)]` -/
def P15843541970847072153.Spec : Prop :=
  ∀ n, (P15843541970847072153.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P9605991354954453426

`eq[gcd(3, n+1), gcd(17, A004018(n))]`
-/

namespace A020672.P9605991354954453426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 17 (A004018 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P9605991354954453426

namespace A020672

/-- `eq[gcd(3, n+1), gcd(17, A004018(n))]` -/
def P9605991354954453426.Spec : Prop :=
  ∀ n, (P9605991354954453426.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P8307503214358783296

`eq[A061462(n), A229062(n)]`
-/

namespace A020672.P8307503214358783296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P8307503214358783296

namespace A020672

/-- `eq[A061462(n), A229062(n)]` -/
def P8307503214358783296.Spec : Prop :=
  ∀ n, (P8307503214358783296.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P3682557010395947848

`eq[1, A323022(A258034(n)+1)]`
-/

namespace A020672.P3682557010395947848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A258034 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020672.P3682557010395947848

namespace A020672

/-- `eq[1, A323022(A258034(n)+1)]` -/
def P3682557010395947848.Spec : Prop :=
  ∀ n, (P3682557010395947848.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P8462179984317328206

`lt[0, A258322(n)²]`
-/

namespace A020672.P8462179984317328206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258322 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020672.P8462179984317328206

namespace A020672

/-- `lt[0, A258322(n)²]` -/
def P8462179984317328206.Spec : Prop :=
  ∀ n, (P8462179984317328206.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P16955613835165893986

`eq[A131561(n), A229062(n)]`
-/

namespace A020672.P16955613835165893986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P16955613835165893986

namespace A020672

/-- `eq[A131561(n), A229062(n)]` -/
def P16955613835165893986.Spec : Prop :=
  ∀ n, (P16955613835165893986.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P332874793160298129

`eq[A177702(n), A229062(n)]`
-/

namespace A020672.P332874793160298129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P332874793160298129

namespace A020672

/-- `eq[A177702(n), A229062(n)]` -/
def P332874793160298129.Spec : Prop :=
  ∀ n, (P332874793160298129.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P4572910223771512758

`eq[2, A000122(A256269(n)²)]`
-/

namespace A020672.P4572910223771512758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A256269 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020672.P4572910223771512758

namespace A020672

/-- `eq[2, A000122(A256269(n)²)]` -/
def P4572910223771512758.Spec : Prop :=
  ∀ n, (P4572910223771512758.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P15551293871571443287

`eq[A064874(n), A103636(n+1)]`
-/

namespace A020672.P15551293871571443287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P15551293871571443287

namespace A020672

/-- `eq[A064874(n), A103636(n+1)]` -/
def P15551293871571443287.Spec : Prop :=
  ∀ n, (P15551293871571443287.a n : ℤ) = A020672 (n + 1)

end A020672

/-! ## A020672.P11197213465786939738

`eq[A070176(n), A103636(n+1)]`
-/

namespace A020672.P11197213465786939738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020672.P11197213465786939738

namespace A020672

/-- `eq[A070176(n), A103636(n+1)]` -/
def P11197213465786939738.Spec : Prop :=
  ∀ n, (P11197213465786939738.a n : ℤ) = A020672 (n + 1)

end A020672

/-!
# A020673: Numbers of form x^2 + 10 y^2.

The programs for A020673, there is no canonical definition to state claims against.
-/

/-! ## A020673.P15699362469305421567

`lt[0, A317641(n)]`
-/

namespace A020673.P15699362469305421567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020673.P15699362469305421567

/-! ## A020673.P12407633298999992968

`eq[0, A000038(A317641(n)²)]`
-/

namespace A020673.P12407633298999992968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A317641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020673.P12407633298999992968

/-! ## A020673.P5742248240915421487

`eq[1, A057427(A317641(n)²)]`
-/

namespace A020673.P5742248240915421487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A317641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020673.P5742248240915421487

/-! ## A020673.P16047809921092764895

`eq[1, A165471(A317641(n)²)]`
-/

namespace A020673.P16047809921092764895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A317641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020673.P16047809921092764895

/-! ## A020673.P11446708387993293480

`eq[2, A000122(A317641(n)²)]`
-/

namespace A020673.P11446708387993293480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A317641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020673.P11446708387993293480

/-! ## A020673.P4152009562899149905

`eq[2, A033725(A317641(n)²)]`
-/

namespace A020673.P4152009562899149905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033725 (A317641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020673.P4152009562899149905

/-! ## A020673.P4292810148327537832

`eq[2, A317641(A317641(n)²)]`
-/

namespace A020673.P4292810148327537832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (A317641 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020673.P4292810148327537832

/-! ## A020673.P431891142309050906

`eq[1, A057427(2*A317641(n))]`
-/

namespace A020673.P431891142309050906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A317641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020673.P431891142309050906

/-! ## A020673.P15116538047232394024

`eq[A000007(n+1), A000007(A317641(n))]`
-/

namespace A020673.P15116538047232394024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A317641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020673.P15116538047232394024

/-! ## A020673.P18305750035084314418

`record[A025480(A020674(n+1))]`
-/

namespace A020673.P18305750035084314418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020674 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020673.P18305750035084314418

/-! ## A020673.P11989440581004733902

`eq[1, A101825(A317642(2*n)²)]`
-/

namespace A020673.P11989440581004733902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (A317642 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020673.P11989440581004733902

/-!
# A020674: Numbers of the form 2*x^2 + 5*y^2.

The programs for A020674, there is no canonical definition to state claims against.
-/

/-! ## A020674.P2904575597921775659

`lt[0, A317642(n)]`
-/

namespace A020674.P2904575597921775659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020674.P2904575597921775659

/-! ## A020674.P9191502093189956032

`eq[0, A317642(A317642(n)²)]`
-/

namespace A020674.P9191502093189956032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317642 (A317642 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020674.P9191502093189956032

/-! ## A020674.P15589371982375248275

`lt[0, A317641(2*n)]`
-/

namespace A020674.P15589371982375248275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020674.P15589371982375248275

/-! ## A020674.P616472151624783049

`record[A025480(A020673(n+1))]`
-/

namespace A020674.P616472151624783049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020674.P616472151624783049

/-! ## A020674.P17203225118658532701

`eq[1, A057427(A317641(2*n)²)]`
-/

namespace A020674.P17203225118658532701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A317641 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020674.P17203225118658532701

/-! ## A020674.P11099760060703167179

`eq[1, A165471(A317641(2*n)²)]`
-/

namespace A020674.P11099760060703167179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A317641 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020674.P11099760060703167179

/-! ## A020674.P9014200791402683167

`eq[2, A000122(A317641(2*n)²)]`
-/

namespace A020674.P9014200791402683167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A317641 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020674.P9014200791402683167

/-! ## A020674.P17276326690022265766

`eq[2, A033725(A317641(2*n)²)]`
-/

namespace A020674.P17276326690022265766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033725 (A317641 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020674.P17276326690022265766

/-! ## A020674.P6143862044290888023

`eq[2, A317641(A317641(2*n)²)]`
-/

namespace A020674.P6143862044290888023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (A317641 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020674.P6143862044290888023

/-! ## A020674.P7673339293710937309

`eq[A036987(A317641(2*n)), A317641(n)]`
-/

namespace A020674.P7673339293710937309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A317641 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020674.P7673339293710937309

/-! ## A020674.P15776416033429315551

`eq[A000007(A317641(2*n)), A000007(n+1)]`
-/

namespace A020674.P15776416033429315551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A317641 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020674.P15776416033429315551

/-! ## A020674.P4066367689756720398

`eq[A000038(A317641(2*n)), A000038(n+1)]`
-/

namespace A020674.P4066367689756720398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A317641 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020674.P4066367689756720398

/-! ## A020674.P18047491963334204318

`eq[A057427(A317641(2*n)), A057427(n+1)]`
-/

namespace A020674.P18047491963334204318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A317641 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020674.P18047491963334204318

/-! ## A020674.P13357918668714715114

`record[A131730(A020687(n+1))]`
-/

namespace A020674.P13357918668714715114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A020687 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020674.P13357918668714715114

/-!
# A020675: Numbers of form 2 x^2 + 7 y^2.

The programs for A020675, there is no canonical definition to state claims against.
-/

/-! ## A020675.P947732257542499133

`∩[A244037(n+1), A005843(n)]/2`
-/

namespace A020675.P947732257542499133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A020675.P947732257542499133

/-! ## A020675.P4085344938175906368

`record[A025480(A244037(n+1))]`
-/

namespace A020675.P4085344938175906368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A244037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020675.P4085344938175906368

/-! ## A020675.P16930272007938795235

`A025480(∩[A244037(n+1), A005843(n)])`
-/

namespace A020675.P16930272007938795235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A020675.P16930272007938795235

/-! ## A020675.P6899049071216995366

`record[A142150(A244037(n+2))]`
-/

namespace A020675.P6899049071216995366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A244037 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020675.P6899049071216995366

/-! ## A020675.P10906939700071507249

`A004526(∩[A244037(n+1), A005843(n)])`
-/

namespace A020675.P10906939700071507249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A020675.P10906939700071507249

/-! ## A020675.P9982567613328626064

`record[A131730(A020690(n+1))]`
-/

namespace A020675.P9982567613328626064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A020690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020675.P9982567613328626064

/-! ## A020675.P18125293401198438115

`A131730(filter[A020690(n+1), A057077(#)])`
-/

namespace A020675.P18125293401198438115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (f1 (SequenceMachineLib.nth (fun j => A057077 (f1 j).toNat = 1) n)).toNat

end

end A020675.P18125293401198438115

/-!
# A020676: Numbers of form 2 x^2 + 9 y^2.

The programs for A020676, the canonical program `A020676.P2617492211057863195` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020676 has offset 1).

The definition of A020676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020676.P14740178655895737006

`round(record[A000265(A020693(n+1)+1)]/4)`
-/

namespace A020676.P14740178655895737006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A020693 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4)

end

end A020676.P14740178655895737006

namespace A020676

/-- `round(record[A000265(A020693(n+1)+1)]/4)` -/
def P14740178655895737006.Spec : Prop :=
  ∀ n, P14740178655895737006.a n = A020676 (n + 1)

end A020676

/-! ## A020676.P2617492211057863195

`∩[A002479(n+1), A174438(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A020676

/-- `∩[A002479(n+1), A174438(n+1)]` -/
def P2617492211057863195.Spec : Prop :=
  ∀ n, (P2617492211057863195.a n : ℤ) = A020676 (n + 1)

theorem P2617492211057863195.correct : P2617492211057863195.Spec := by
  intro n
  simp only [A020676, Nat.add_sub_cancel]

end A020676

/-! ## A020676.P15648228655996072685

`filter[A174438(n+1), A391183(#)]`
-/

namespace A020676.P15648228655996072685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A020676.P15648228655996072685

namespace A020676

/-- `filter[A174438(n+1), A391183(#)]` -/
def P15648228655996072685.Spec : Prop :=
  ∀ n, P15648228655996072685.a n = A020676 (n + 1)

end A020676

/-! ## A020676.P3739907178461326777

`record[-A246425(A020693(n+1))]`
-/

namespace A020676.P3739907178461326777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246425 (A020693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020676.P3739907178461326777

namespace A020676

/-- `record[-A246425(A020693(n+1))]` -/
def P3739907178461326777.Spec : Prop :=
  ∀ n, P3739907178461326777.a n = A020676 (n + 1)

end A020676

/-! ## A020676.P5883190669670531665

`A004525(record[A025480(A020693(n+1))])`
-/

namespace A020676.P5883190669670531665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020676.P5883190669670531665

namespace A020676

/-- `A004525(record[A025480(A020693(n+1))])` -/
def P5883190669670531665.Spec : Prop :=
  ∀ n, P5883190669670531665.a n = A020676 (n + 1)

end A020676

/-! ## A020676.P14510821136246868170

`A004526(record[A025480(A020693(n+1))])`
-/

namespace A020676.P14510821136246868170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020676.P14510821136246868170

namespace A020676

/-- `A004526(record[A025480(A020693(n+1))])` -/
def P14510821136246868170.Spec : Prop :=
  ∀ n, P14510821136246868170.a n = A020676 (n + 1)

end A020676

/-! ## A020676.P9543036101707633428

`A025480(record[A025480(A020693(n+1))])`
-/

namespace A020676.P9543036101707633428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020676.P9543036101707633428

namespace A020676

/-- `A025480(record[A025480(A020693(n+1))])` -/
def P9543036101707633428.Spec : Prop :=
  ∀ n, P9543036101707633428.a n = A020676 (n + 1)

end A020676

/-!
# A020677: Numbers of form 3*x^2 + 4*y^2.

The programs for A020677, there is no canonical definition to state claims against.
-/

/-! ## A020677.P16371939990100045788

`eq[and(2, n+1)/3, A000038(A033716(n))]`
-/

namespace A020677.P16371939990100045788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (n + 1) : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A020677.P16371939990100045788

/-! ## A020677.P2057088582785944749

`eq[A112049(n+2), A353816(n)]`
-/

namespace A020677.P2057088582785944749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020677.P2057088582785944749

/-! ## A020677.P8589895683239825918

`filter[A028970(n+1), A353816(#)]`
-/

namespace A020677.P8589895683239825918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A020677.P8589895683239825918

/-! ## A020677.P6704450089403447792

`∩[A003136(n+1), A028970(n+1)]`
-/

namespace A020677.P6704450089403447792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020677.P6704450089403447792

/-! ## A020677.P10359024403168979465

`filter[A014601(n), A353816(#)]`
-/

namespace A020677.P10359024403168979465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A020677.P10359024403168979465

/-! ## A020677.P4465500203969804833

`∩[A003136(n+1), A014601(n)]`
-/

namespace A020677.P4465500203969804833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020677.P4465500203969804833

/-! ## A020677.P10311060226952272695

`filter[A154571(n+1), A353816(#)]`
-/

namespace A020677.P10311060226952272695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A020677.P10311060226952272695

/-! ## A020677.P15621762508655474554

`∩[A003136(n+1), A154571(n+1)]`
-/

namespace A020677.P15621762508655474554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020677.P15621762508655474554

/-! ## A020677.P11043571270759497525

`filter[A014456(n+1), A353816(#)]`
-/

namespace A020677.P11043571270759497525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A020677.P11043571270759497525

/-! ## A020677.P1293357256260484518

`∩[A003136(n+1), A014456(n+1)]`
-/

namespace A020677.P1293357256260484518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020677.P1293357256260484518

/-! ## A020677.P10194131979748417087

`eq[A115362(n+2), A353816(n)]`
-/

namespace A020677.P10194131979748417087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020677.P10194131979748417087

/-! ## A020677.P9217016124047649761

`filter[A222409(n), A353816(#)]`
-/

namespace A020677.P9217016124047649761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A020677.P9217016124047649761

/-! ## A020677.P15766050447586186799

`filter[A047515(n+1), A353816(#)]`
-/

namespace A020677.P15766050447586186799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A020677.P15766050447586186799

/-! ## A020677.P5890180118489631457

`filter[A047547(n+1), A353816(#)]`
-/

namespace A020677.P5890180118489631457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A020677.P5890180118489631457

/-! ## A020677.P5392913446585712431

`∩[A003136(n+1), A047515(n+1)]`
-/

namespace A020677.P5392913446585712431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020677.P5392913446585712431

/-! ## A020677.P7913764863999249536

`∩[A003136(n+1), A047547(n+1)]`
-/

namespace A020677.P7913764863999249536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020677.P7913764863999249536

/-! ## A020677.P4846665146710682074

`filter[A004772(n+1), A353816(#)]`
-/

namespace A020677.P4846665146710682074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A020677.P4846665146710682074

/-! ## A020677.P2271831650783444290

`∩[A003136(n+1), A004772(n+1)]`
-/

namespace A020677.P2271831650783444290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020677.P2271831650783444290

/-! ## A020677.P15955730551412926336

`eq[A263845(n), A353816(n)]`
-/

namespace A020677.P15955730551412926336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020677.P15955730551412926336

/-! ## A020677.P12772416702692980805

`eq[and(2, n+1), A000007(A004016(n))]`
-/

namespace A020677.P12772416702692980805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020677.P12772416702692980805

/-!
# A020678: Numbers of form 3 x^2 + 5 y^2.

The programs for A020678, there is no canonical definition to state claims against.
-/

/-! ## A020678.P16834786541960535380

`filter[A028955(n+1), A152822(#)]`
-/

namespace A020678.P16834786541960535380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A020678.P16834786541960535380

/-! ## A020678.P8395134109249366640

`∩[A028955(n+1), A042965(n+1)]`
-/

namespace A020678.P8395134109249366640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020678.P8395134109249366640

/-! ## A020678.P2519960677212237097

`∩[A028955(n+1), A004773(n)-1]`
-/

namespace A020678.P2519960677212237097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020678.P2519960677212237097

/-! ## A020678.P5700729580249470450

`lt[0, A192323(n)]`
-/

namespace A020678.P5700729580249470450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020678.P5700729580249470450

/-! ## A020678.P11815399472214270482

`eq[0, A000038(A192323(n)²)]`
-/

namespace A020678.P11815399472214270482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A192323 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020678.P11815399472214270482

/-! ## A020678.P2694804904729521054

`eq[0, A014744(A192323(n)²)]`
-/

namespace A020678.P2694804904729521054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014744 (A192323 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020678.P2694804904729521054

/-! ## A020678.P13008722058116633077

`eq[0, A028928(A192323(n)²)]`
-/

namespace A020678.P13008722058116633077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 (A192323 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020678.P13008722058116633077

/-! ## A020678.P12201873826249245597

`eq[0, A028956(A192323(n)²)]`
-/

namespace A020678.P12201873826249245597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (A192323 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020678.P12201873826249245597

/-! ## A020678.P5089382061996433114

`eq[0, A192323(A192323(n)²)]`
-/

namespace A020678.P5089382061996433114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A192323 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020678.P5089382061996433114

/-! ## A020678.P5587202413178731806

`eq[2, A036452(A192323(n)+1)]`
-/

namespace A020678.P5587202413178731806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A192323 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020678.P5587202413178731806

/-! ## A020678.P15409092271129111424

`eq[A000038(n+1), A000038(A192323(n))]`
-/

namespace A020678.P15409092271129111424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A192323 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020678.P15409092271129111424

/-! ## A020678.P3370669666109574826

`eq[n*A000038(n), A000038(A192323(n))]`
-/

namespace A020678.P3370669666109574826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A192323 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020678.P3370669666109574826

/-!
# A020679: Numbers of form 3*x^2 + 7*y^2.

The programs for A020679, there is no canonical definition to state claims against.
-/

/-! ## A020679.P4344758893575044765

`A310362(n)-A098037(A056272(n))`
-/

namespace A020679.P4344758893575044765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310362 n - A098037 (A056272 n).toNat

end

end A020679.P4344758893575044765

/-! ## A020679.P4270812613230064880

`eq[A119498(n+1), A119500(A028234(2*n+5))]`
-/

namespace A020679.P4270812613230064880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (A028234 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020679.P4270812613230064880

/-!
# A020680: Numbers of form 3 x^2 + 8 y^2.

The programs for A020680, the canonical program `A020680.P5095597828147744547` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020680 has offset 1).

The definition of A020680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020680.P5095597828147744547

`∩[A002480(n+1), A108752(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A020680

/-- `∩[A002480(n+1), A108752(n+1)]` -/
def P5095597828147744547.Spec : Prop :=
  ∀ n, (P5095597828147744547.a n : ℤ) = A020680 (n + 1)

theorem P5095597828147744547.correct : P5095597828147744547.Spec := by
  intro n
  simp only [A020680, Nat.add_sub_cancel]

end A020680

/-! ## A020680.P5740694493166740894

`∩[A002480(n+1), A004014(n)]`
-/

namespace A020680.P5740694493166740894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020680.P5740694493166740894

namespace A020680

/-- `∩[A002480(n+1), A004014(n)]` -/
def P5740694493166740894.Spec : Prop :=
  ∀ n, (P5740694493166740894.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P17749184691957081397

`∩[A002480(n+1), A047458(n+1)]`
-/

namespace A020680.P17749184691957081397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020680.P17749184691957081397

namespace A020680

/-- `∩[A002480(n+1), A047458(n+1)]` -/
def P17749184691957081397.Spec : Prop :=
  ∀ n, (P17749184691957081397.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P387303137961492061

`∩[A002480(n+1), A014601(n)]`
-/

namespace A020680.P387303137961492061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020680.P387303137961492061

namespace A020680

/-- `∩[A002480(n+1), A014601(n)]` -/
def P387303137961492061.Spec : Prop :=
  ∀ n, (P387303137961492061.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P6756600592583779279

`∩[A002480(n+1), A047460(n+1)]`
-/

namespace A020680.P6756600592583779279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020680.P6756600592583779279

namespace A020680

/-- `∩[A002480(n+1), A047460(n+1)]` -/
def P6756600592583779279.Spec : Prop :=
  ∀ n, (P6756600592583779279.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P9615782243386236054

`∩[A002480(n+1), A047545(n+1)]`
-/

namespace A020680.P9615782243386236054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020680.P9615782243386236054

namespace A020680

/-- `∩[A002480(n+1), A047545(n+1)]` -/
def P9615782243386236054.Spec : Prop :=
  ∀ n, (P9615782243386236054.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P2967244909675923198

`eq[1, gcd(A000124(n), A108563(n))]`
-/

namespace A020680.P2967244909675923198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000124 n) (A108563 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020680.P2967244909675923198

namespace A020680

/-- `eq[1, gcd(A000124(n), A108563(n))]` -/
def P2967244909675923198.Spec : Prop :=
  ∀ n, (P2967244909675923198.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P2582328724580147981

`eq[A084101(n), A101666(A108563(n))]`
-/

namespace A020680.P2582328724580147981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (A108563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020680.P2582328724580147981

namespace A020680

/-- `eq[A084101(n), A101666(A108563(n))]` -/
def P2582328724580147981.Spec : Prop :=
  ∀ n, (P2582328724580147981.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P3380489180669080826

`eq[A036987(A108563(n)), A216060(n)]`
-/

namespace A020680.P3380489180669080826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A108563 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020680.P3380489180669080826

namespace A020680

/-- `eq[A036987(A108563(n)), A216060(n)]` -/
def P3380489180669080826.Spec : Prop :=
  ∀ n, (P3380489180669080826.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P15663531824692726752

`eq[A051700(A108563(n)), A133872(n+1)]`
-/

namespace A020680.P15663531824692726752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A108563 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020680.P15663531824692726752

namespace A020680

/-- `eq[A051700(A108563(n)), A133872(n+1)]` -/
def P15663531824692726752.Spec : Prop :=
  ∀ n, (P15663531824692726752.a n : ℤ) = A020680 (n + 1)

end A020680

/-! ## A020680.P2191646782076464340

`eq[n+1, A101666(A108563(n))*A116966(n)]`
-/

namespace A020680.P2191646782076464340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (A108563 n).toNat * A116966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020680.P2191646782076464340

namespace A020680

/-- `eq[n+1, A101666(A108563(n))*A116966(n)]` -/
def P2191646782076464340.Spec : Prop :=
  ∀ n, (P2191646782076464340.a n : ℤ) = A020680 (n + 1)

end A020680

/-!
# A020681: Numbers of form 3 x^2 + 10 y^2.

The programs for A020681, there is no canonical definition to state claims against.
-/

/-! ## A020681.P1635295145018507162

`record[A097140(A020685(1+n))]`
-/

namespace A020681.P1635295145018507162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A020685 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020681.P1635295145018507162

/-! ## A020681.P2888371512755501709

`record[A142150(A020685(n+1))]`
-/

namespace A020681.P2888371512755501709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020685 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020681.P2888371512755501709

/-! ## A020681.P12561837036415234041

`record[A025480(A020685(A052938(n)))]`
-/

namespace A020681.P12561837036415234041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020685 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020681.P12561837036415234041

/-! ## A020681.P10663278581818868320

`record[A025480(A020685(n+1)%A009862(n))]`
-/

namespace A020681.P10663278581818868320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.tmod (A020685 (n + 1)) (A009862 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020681.P10663278581818868320

/-! ## A020681.P17456219756888594717

`record[A029578(A020685(n+1))%A008864(n+1)]`
-/

namespace A020681.P17456219756888594717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029578 (A020685 (n + 1)).toNat) (A008864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020681.P17456219756888594717

/-!
# A020682: Numbers of form 4 x^2 + 5 y^2.

The programs for A020682, there is no canonical definition to state claims against.
-/

/-! ## A020682.P14770115679773674294

`A253557(A218251(n))+A050120(n+1)`
-/

namespace A020682.P14770115679773674294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (A218251 n).toNat + A050120 (n + 1)

end

end A020682.P14770115679773674294

/-!
# A020683: Numbers of form 4 x^2 + 7 y^2.

The programs for A020683, there is no canonical definition to state claims against.
-/

/-! ## A020683.P614737296322821833

`A314736(n)-A014963(A089871(n))`
-/

namespace A020683.P614737296322821833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A014963 (A089871 n).toNat

end

end A020683.P614737296322821833

/-! ## A020683.P5830078239851410226

`A311535(n)-A330025(A020027(n))`
-/

namespace A020683.P5830078239851410226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n - A330025 (A020027 n).toNat

end

end A020683.P5830078239851410226

/-! ## A020683.P4065256276545257670

`eq[A065357(A324362(n)), A290098(n+1)]`
-/

namespace A020683.P4065256276545257670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 (A324362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020683.P4065256276545257670

/-!
# A020684: Numbers of form 4 x^2 + 9 y^2.

The programs for A020684, there is no canonical definition to state claims against.
-/

/-! ## A020684.P14405452300889369586

`record[A131730(A348233(n+1))]`
-/

namespace A020684.P14405452300889369586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A348233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020684.P14405452300889369586

/-! ## A020684.P6901299573055507857

`record[A131730(A348235(n+1))]`
-/

namespace A020684.P6901299573055507857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A348235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020684.P6901299573055507857

/-! ## A020684.P7908667830408332619

`A004526(record[A166514(A348235(n+1))])`
-/

namespace A020684.P7908667830408332619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A348235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020684.P7908667830408332619

/-! ## A020684.P14026411220989833925

`A166514(record[A166514(A348235(n+1))])`
-/

namespace A020684.P14026411220989833925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A348235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020684.P14026411220989833925

/-! ## A020684.P12549861063225120715

`A131730(∩[A004014(n), A348235(n+1)])`
-/

namespace A020684.P12549861063225120715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A020684.P12549861063225120715

/-!
# A020685: Numbers of form 5 x^2 + 6 y^2.

The programs for A020685, there is no canonical definition to state claims against.
-/

/-! ## A020685.P8438887605583358087

`record[A025480(A020681(n+1))]`
-/

namespace A020685.P8438887605583358087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A020681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020685.P8438887605583358087

/-! ## A020685.P4370968858719143638

`record[A142150(A020681(n+2))]`
-/

namespace A020685.P4370968858719143638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020681 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020685.P4370968858719143638

/-! ## A020685.P10178098484363871182

`A000038(3*n+4)+record[A097140(A020681(n+1))]`
-/

namespace A020685.P10178098484363871182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A020681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (3 * n + 4) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020685.P10178098484363871182

/-!
# A020687: Numbers of form 5 x^2 + 8 y^2.

The programs for A020687, there is no canonical definition to state claims against.
-/

/-! ## A020687.P300728912470168710

`∩[A020674(n+1), A047609(n+1)]`
-/

namespace A020687.P300728912470168710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020687.P300728912470168710

/-! ## A020687.P12522516480614579796

`∩[A020674(n+1), A042948(n)]`
-/

namespace A020687.P12522516480614579796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020687.P12522516480614579796

/-! ## A020687.P8106780014019911713

`∩[A020674(n+1), A047599(n+1)]`
-/

namespace A020687.P8106780014019911713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020687.P8106780014019911713

/-! ## A020687.P16540305307678774468

`∩[A020674(n+1), A047601(n+1)]`
-/

namespace A020687.P16540305307678774468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020687.P16540305307678774468

/-! ## A020687.P261679682865017153

`filter[A020674(n+1), A133872(#)]`
-/

namespace A020687.P261679682865017153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A020687.P261679682865017153

/-! ## A020687.P4498583788965837091

`eq[char[A020674(n+1)], A057077(n)]`
-/

namespace A020687.P4498583788965837091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A020687.P4498583788965837091

/-! ## A020687.P9550363144236432547

`eq[and(2, n), A000007(A317641(2*n))]`
-/

namespace A020687.P9550363144236432547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A317641 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020687.P9550363144236432547

/-!
# A020688: Numbers of form 5 x^2 + 9 y^2.

The programs for A020688, there is no canonical definition to state claims against.
-/

/-! ## A020688.P6985779979793429848

`∩[A020669(n+1), A174438(n+1)]`
-/

namespace A020688.P6985779979793429848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020688.P6985779979793429848

/-!
# A020690: Numbers of form 7 x^2 + 8 y^2.

The programs for A020690, there is no canonical definition to state claims against.
-/

/-! ## A020690.P17440046966228765827

`∩[A020675(n+1), A047536(n+1)]`
-/

namespace A020690.P17440046966228765827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020690.P17440046966228765827

/-! ## A020690.P4534658223753158843

`∩[A020675(n+1), A014601(n)]`
-/

namespace A020690.P4534658223753158843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020690.P4534658223753158843

/-! ## A020690.P15956515433741994494

`∩[A020675(n+1), A047492(n+1)]`
-/

namespace A020690.P15956515433741994494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020690.P15956515433741994494

/-! ## A020690.P2446828566963796833

`∩[A020675(n+1), A047500(n+1)]`
-/

namespace A020690.P2446828566963796833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020690.P2446828566963796833

/-!
# A020693: Numbers of the form 8*x^2 + 9*y^2.

The programs for A020693, the canonical program `A020693.P14182756941189890195` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020693 has offset 1).

The definition of A020693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020693.P14182756941189890195

`∩[A020671(n+1), A020676(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A020693

/-- `∩[A020671(n+1), A020676(n+1)]` -/
def P14182756941189890195.Spec : Prop :=
  ∀ n, (P14182756941189890195.a n : ℤ) = A020693 (n + 1)

theorem P14182756941189890195.correct : P14182756941189890195.Spec := by
  intro n
  simp only [A020693, Nat.add_sub_cancel]

end A020693

/-! ## A020693.P16316485011496334036

`∩[A020676(n+1), A072833(n)]`
-/

namespace A020693.P16316485011496334036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020693.P16316485011496334036

namespace A020693

/-- `∩[A020676(n+1), A072833(n)]` -/
def P16316485011496334036.Spec : Prop :=
  ∀ n, (P16316485011496334036.a n : ℤ) = A020693 (n + 1)

end A020693

/-! ## A020693.P5883216687781699043

`∩[A020676(n+1), A047462(n+1)]`
-/

namespace A020693.P5883216687781699043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020693.P5883216687781699043

namespace A020693

/-- `∩[A020676(n+1), A047462(n+1)]` -/
def P5883216687781699043.Spec : Prop :=
  ∀ n, (P5883216687781699043.a n : ℤ) = A020693 (n + 1)

end A020693

/-! ## A020693.P11181711991674147832

`∩[A020671(n+1), A174438(n+1)]`
-/

namespace A020693.P11181711991674147832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020693.P11181711991674147832

namespace A020693

/-- `∩[A020671(n+1), A174438(n+1)]` -/
def P11181711991674147832.Spec : Prop :=
  ∀ n, (P11181711991674147832.a n : ℤ) = A020693 (n + 1)

end A020693

/-! ## A020693.P17868699825950920776

`∩[A020676(n+1), A042948(n)]`
-/

namespace A020693.P17868699825950920776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020693.P17868699825950920776

namespace A020693

/-- `∩[A020676(n+1), A042948(n)]` -/
def P17868699825950920776.Spec : Prop :=
  ∀ n, (P17868699825950920776.a n : ℤ) = A020693 (n + 1)

end A020693

/-! ## A020693.P18282618584010709734

`∩[A020676(n+1), A047538(n+1)]`
-/

namespace A020693.P18282618584010709734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020693.P18282618584010709734

namespace A020693

/-- `∩[A020676(n+1), A047538(n+1)]` -/
def P18282618584010709734.Spec : Prop :=
  ∀ n, (P18282618584010709734.a n : ℤ) = A020693 (n + 1)

end A020693

/-! ## A020693.P18373700292888945092

`∩[A020676(n+1), A047494(n+1)]`
-/

namespace A020693.P18373700292888945092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020693.P18373700292888945092

namespace A020693

/-- `∩[A020676(n+1), A047494(n+1)]` -/
def P18373700292888945092.Spec : Prop :=
  ∀ n, (P18373700292888945092.a n : ℤ) = A020693 (n + 1)

end A020693

/-! ## A020693.P4662659017768857658

`filter[A020676(n+1), A133872(#)]`
-/

namespace A020693.P4662659017768857658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A020693.P4662659017768857658

namespace A020693

/-- `filter[A020676(n+1), A133872(#)]` -/
def P4662659017768857658.Spec : Prop :=
  ∀ n, P4662659017768857658.a n = A020693 (n + 1)

end A020693

/-!
# A020695: Pisot sequence E(2,3).

The programs for A020695, the canonical program `A020695.P5292720263086745780` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020695 has offset 0).

The definition of A020695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020695.P412486653323244779

`ogf((2+x)/(1-x-x^2))`
-/

namespace A020695.P412486653323244779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -1, -1] n

end

end A020695.P412486653323244779

namespace A020695

/-- `ogf((2+x)/(1-x-x^2))` -/
def P412486653323244779.Spec : Prop :=
  ∀ n, P412486653323244779.a n = A020695 n

end A020695

/-! ## A020695.P5292720263086745780

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020695

/-- `a(n-1)+a(n-2)` -/
def P5292720263086745780.Spec : Prop :=
  ∀ n, (P5292720263086745780.a n : ℤ) = A020695 n

theorem P5292720263086745780.correct : P5292720263086745780.Spec := by
  intro n
  simp only [A020695]

end A020695

/-! ## A020695.P9367401558844101010

`A000045(n+3)`
-/

namespace A020695.P9367401558844101010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3)

end

end A020695.P9367401558844101010

namespace A020695

/-- `A000045(n+3)` -/
def P9367401558844101010.Spec : Prop :=
  ∀ n, P9367401558844101010.a n = A020695 n

end A020695

/-! ## A020695.P10721246458202724051

`round(ϕ*a(n-1))` with `a(0)=2`
-/

namespace A020695.P10721246458202724051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A020695.P10721246458202724051

namespace A020695

/-- `round(ϕ*a(n-1))` -/
def P10721246458202724051.Spec : Prop :=
  ∀ n, P10721246458202724051.a n = A020695 n

end A020695

/-! ## A020695.P8846599752804216164

`round(a(n-1)/(ϕ-1))` with `a(0)=2`
-/

namespace A020695.P8846599752804216164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.goldenRatio - 1))

end

end A020695.P8846599752804216164

namespace A020695

/-- `round(a(n-1)/(ϕ-1))` -/
def P8846599752804216164.Spec : Prop :=
  ∀ n, P8846599752804216164.a n = A020695 n

end A020695

/-! ## A020695.P7080898750271856579

`1-floor(ϕ*(1-a(n-1)))` with `a(0)=2`
-/

namespace A020695.P7080898750271856579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - ⌊Real.goldenRatio * (1 - a (n - 1) : ℝ)⌋

end

end A020695.P7080898750271856579

namespace A020695

/-- `1-floor(ϕ*(1-a(n-1)))` -/
def P7080898750271856579.Spec : Prop :=
  ∀ n, P7080898750271856579.a n = A020695 n

end A020695

/-! ## A020695.P4734287860216724983

`a(n-1)-(char[1]-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A020695.P4734287860216724983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A020695.P4734287860216724983

namespace A020695

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P4734287860216724983.Spec : Prop :=
  ∀ n, P4734287860216724983.a n = A020695 n

end A020695

/-! ## A020695.P7713454656871764280

`a(n-1)-floor((1-a(n-1))/ϕ)` with `a(0)=2`
-/

namespace A020695.P7713454656871764280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ⌊(1 - a (n - 1) : ℝ) / Real.goldenRatio⌋

end

end A020695.P7713454656871764280

namespace A020695

/-- `a(n-1)-floor((1-a(n-1))/ϕ)` -/
def P7713454656871764280.Spec : Prop :=
  ∀ n, P7713454656871764280.a n = A020695 n

end A020695

/-! ## A020695.P4095671911477379588

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A020695.P4095671911477379588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A020695.P4095671911477379588

namespace A020695

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P4095671911477379588.Spec : Prop :=
  ∀ n, P4095671911477379588.a n = A020695 n

end A020695

/-! ## A020695.P12934684577354453946

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=2, a(1)=2`
-/

namespace A020695.P12934684577354453946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A020695.P12934684577354453946

namespace A020695

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P12934684577354453946.Spec : Prop :=
  ∀ n, P12934684577354453946.a n = A020695 n

end A020695

/-! ## A020695.P4379822806415017612

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A020695.P4379822806415017612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A020695.P4379822806415017612

namespace A020695

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P4379822806415017612.Spec : Prop :=
  ∀ n, P4379822806415017612.a n = (A020695 n : ℚ)

end A020695

/-! ## A020695.P11484827171330850350

`a(n-1)-(a(n-1)%a(n-2)-a(n-1))%a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A020695.P11484827171330850350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - Int.tmod (Int.tmod (a (n - 1)) (a (n - 2)) - a (n - 1)) (a (n - 1))

end

end A020695.P11484827171330850350

namespace A020695

/-- `a(n-1)-(a(n-1)%a(n-2)-a(n-1))%a(n-1)` -/
def P11484827171330850350.Spec : Prop :=
  ∀ n, P11484827171330850350.a n = A020695 n

end A020695

/-! ## A020695.P5659548545751171814

`A001911(n)+2`
-/

namespace A020695.P5659548545751171814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + 2

end

end A020695.P5659548545751171814

namespace A020695

/-- `A001911(n)+2` -/
def P5659548545751171814.Spec : Prop :=
  ∀ n, P5659548545751171814.a n = A020695 n

end A020695

/-! ## A020695.P14453320812748248289

`A048577(n)-1`
-/

namespace A020695.P14453320812748248289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - 1

end

end A020695.P14453320812748248289

namespace A020695

/-- `A048577(n)-1` -/
def P14453320812748248289.Spec : Prop :=
  ∀ n, P14453320812748248289.a n = A020695 n

end A020695

/-! ## A020695.P2143891150394020247

`A018910(n)-2`
-/

namespace A020695.P2143891150394020247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - 2

end

end A020695.P2143891150394020247

namespace A020695

/-- `A018910(n)-2` -/
def P2143891150394020247.Spec : Prop :=
  ∀ n, P2143891150394020247.a n = A020695 n

end A020695

/-! ## A020695.P16390690227322761285

`A212804(n+4)`
-/

namespace A020695.P16390690227322761285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 4)

end

end A020695.P16390690227322761285

namespace A020695

/-- `A212804(n+4)` -/
def P16390690227322761285.Spec : Prop :=
  ∀ n, P16390690227322761285.a n = A020695 n

end A020695

/-! ## A020695.P386101045842048745

`A324969(n+4)`
-/

namespace A020695.P386101045842048745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 4)

end

end A020695.P386101045842048745

namespace A020695

/-- `A324969(n+4)` -/
def P386101045842048745.Spec : Prop :=
  ∀ n, P386101045842048745.a n = A020695 n

end A020695

/-! ## A020695.P8597038042949488478

`abs(A236191(n+3))`
-/

namespace A020695.P8597038042949488478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (n + 3)|

end

end A020695.P8597038042949488478

namespace A020695

/-- `abs(A236191(n+3))` -/
def P8597038042949488478.Spec : Prop :=
  ∀ n, P8597038042949488478.a n = A020695 n

end A020695

/-! ## A020695.P13324204016615799716

`record[A120249(n+2)]`
-/

namespace A020695.P13324204016615799716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020695.P13324204016615799716

namespace A020695

/-- `record[A120249(n+2)]` -/
def P13324204016615799716.Spec : Prop :=
  ∀ n, P13324204016615799716.a n = A020695 n

end A020695

/-!
# A020696: Let a,b,c,...k be all divisors of n; a(n) = (a+1)*(b+1)*...*(k+1).

The programs for A020696, the canonical program `A020696.P2000549627367841773` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020696 has offset 1).

The definition of A020696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020696.P2000549627367841773

`∏{d}[1+n, #+1]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020696

/-- `∏{d}[1+n, #+1]` -/
def P2000549627367841773.Spec : Prop :=
  ∀ n, (P2000549627367841773.a n : ℤ) = A020696 (n + 1)

theorem P2000549627367841773.correct : P2000549627367841773.Spec := by
  intro n
  simp only [A020696, Nat.add_sub_cancel]

end A020696

/-! ## A020696.P14807075058045592021

`exp(∑{d}[n+1, log(#+1)])`
-/

namespace A020696.P14807075058045592021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d + 1 : ℝ))

end

end A020696.P14807075058045592021

namespace A020696

/-- `exp(∑{d}[n+1, log(#+1)])` -/
def P14807075058045592021.Spec : Prop :=
  ∀ n, P14807075058045592021.a n = (A020696 (n + 1) : ℝ)

end A020696

/-! ## A020696.P6209613219817470577

`2^∑{d}[n+1, log2(#+1)]`
-/

namespace A020696.P6209613219817470577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d + 1 : ℝ))

end

end A020696.P6209613219817470577

namespace A020696

/-- `2^∑{d}[n+1, log2(#+1)]` -/
def P6209613219817470577.Spec : Prop :=
  ∀ n, P6209613219817470577.a n = (A020696 (n + 1) : ℝ)

end A020696

/-! ## A020696.P4109809300950097208

`A229337(n+1)+1`
-/

namespace A020696.P4109809300950097208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229337 (n + 1) + 1

end

end A020696.P4109809300950097208

namespace A020696

/-- `A229337(n+1)+1` -/
def P4109809300950097208.Spec : Prop :=
  ∀ n, P4109809300950097208.a n = A020696 (n + 1)

theorem P4109809300950097208.correct : P4109809300950097208.Spec := by
  intro n
  simp only [A020696, Nat.add_sub_cancel, A020696.P4109809300950097208.a, A020696.P2000549627367841773.f1, A020696.P2000549627367841773.a, A229337, A229337.P13277258750618214647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020696

/-! ## A020696.P3432709232445123199

`ratio[A308820(n+1)]`
-/

namespace A020696.P3432709232445123199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308820 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A020696.P3432709232445123199

namespace A020696

/-- `ratio[A308820(n+1)]` -/
def P3432709232445123199.Spec : Prop :=
  ∀ n, P3432709232445123199.a n = (A020696 (n + 1) : ℚ)

end A020696

/-!
# A020697: Number of divisors of A019505(n).

The programs for A020697, there is no canonical definition to state claims against.
-/

/-! ## A020697.P8954889495707345619

`A000005(A019505(n+1))`
-/

namespace A020697.P8954889495707345619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019505 (n + 1)).toNat

end

end A020697.P8954889495707345619

/-! ## A020697.P3941803625607561500

`A329605(A330745(n+1))`
-/

namespace A020697.P3941803625607561500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329605 (A330745 (n + 1)).toNat

end

end A020697.P3941803625607561500

/-! ## A020697.P711165765060443046

`∏{e}[A135614(n+1), #+1]`
-/

namespace A020697.P711165765060443046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A020697.P711165765060443046

/-! ## A020697.P12229118995426526

`∏{e}[A350049(n+1), #+1]`
-/

namespace A020697.P12229118995426526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A020697.P12229118995426526

/-! ## A020697.P3230358840451879110

`A000005(A135614(n+1))`
-/

namespace A020697.P3230358840451879110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A135614 (n + 1)).toNat

end

end A020697.P3230358840451879110

/-!
# A020698: a(n) = 5*a(n-1) - 2*a(n-2), with a(0)=2, a(1)=9.

The programs for A020698, the canonical program `A020698.P10314354358028169608` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020698 has offset 0).

The definition of A020698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2*a(n-2)` (program `A020698.P10314354358028169608`, by `A020698.P10314354358028169608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020698.P12765786070549539708

`ogf((2-x)/(1-5x+2x^2))`
-/

namespace A020698.P12765786070549539708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -5, 2] n

end

end A020698.P12765786070549539708

namespace A020698

/-- `ogf((2-x)/(1-5x+2x^2))` -/
def P12765786070549539708.Spec : Prop :=
  ∀ n, P12765786070549539708.a n = A020698 n

end A020698

/-! ## A020698.P10314354358028169608

`5*a(n-1)-2*a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020698

/-- `5*a(n-1)-2*a(n-2)` -/
def P10314354358028169608.Spec : Prop :=
  ∀ n, P10314354358028169608.a n = A020698 n

theorem P10314354358028169608.correct : P10314354358028169608.Spec := by
  intro n
  simp only [A020698]

end A020698

/-! ## A020698.P9513588900480907380

`A384611(Δ[n²])`
-/

namespace A020698.P9513588900480907380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A020698.P9513588900480907380

namespace A020698

/-- `A384611(Δ[n²])` -/
def P9513588900480907380.Spec : Prop :=
  ∀ n, P9513588900480907380.a n = A020698 n

end A020698

/-! ## A020698.P7597674893139537760

`∑{#}[n, C(n, #)*A007484(#)]`
-/

namespace A020698.P7597674893139537760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A007484 k

end

end A020698.P7597674893139537760

namespace A020698

/-- `∑{#}[n, C(n, #)*A007484(#)]` -/
def P7597674893139537760.Spec : Prop :=
  ∀ n, P7597674893139537760.a n = A020698 n

end A020698

/-! ## A020698.P1462583249297650841

`A107839(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A020698.P1462583249297650841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A107839 n + 2 * a (n - 1)

end

end A020698.P1462583249297650841

namespace A020698

/-- `A107839(n)+2*a(n-1)` -/
def P1462583249297650841.Spec : Prop :=
  ∀ n, P1462583249297650841.a n = A020698 n

end A020698

/-! ## A020698.P15496199575397386769

`A107839(n)+A052913(n)`
-/

namespace A020698.P15496199575397386769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n + A052913 n

end

end A020698.P15496199575397386769

namespace A020698

/-- `A107839(n)+A052913(n)` -/
def P15496199575397386769.Spec : Prop :=
  ∀ n, P15496199575397386769.a n = A020698 n

end A020698

/-! ## A020698.P12585301621006352992

`∑[A060801(n)+A052913(n)]`
-/

namespace A020698.P12585301621006352992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060801 n + A052913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020698.P12585301621006352992

namespace A020698

/-- `∑[A060801(n)+A052913(n)]` -/
def P12585301621006352992.Spec : Prop :=
  ∀ n, P12585301621006352992.a n = A020698 n

end A020698

/-! ## A020698.P3819541473865528088

`A107839(n)+∑[A060801(n)]`
-/

namespace A020698.P3819541473865528088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020698.P3819541473865528088

namespace A020698

/-- `A107839(n)+∑[A060801(n)]` -/
def P3819541473865528088.Spec : Prop :=
  ∀ n, P3819541473865528088.a n = A020698 n

end A020698

/-! ## A020698.P13702689239398722546

`A052984(n)+Δ[A147722(n)]`
-/

namespace A020698.P13702689239398722546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n + (f1 (n + 1) - f1 n)

end

end A020698.P13702689239398722546

namespace A020698

/-- `A052984(n)+Δ[A147722(n)]` -/
def P13702689239398722546.Spec : Prop :=
  ∀ n, P13702689239398722546.a n = A020698 n

end A020698

/-! ## A020698.P15525679162514247701

`A052984(n+1)-A052913(n)`
-/

namespace A020698.P15525679162514247701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 (n + 1) - A052913 n

end

end A020698.P15525679162514247701

namespace A020698

/-- `A052984(n+1)-A052913(n)` -/
def P15525679162514247701.Spec : Prop :=
  ∀ n, P15525679162514247701.a n = A020698 n

end A020698

/-! ## A020698.P11125152256048003128

`A109165(2*n)+A052913(n)`
-/

namespace A020698.P11125152256048003128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (2 * n) + A052913 n

end

end A020698.P11125152256048003128

namespace A020698

/-- `A109165(2*n)+A052913(n)` -/
def P11125152256048003128.Spec : Prop :=
  ∀ n, P11125152256048003128.a n = A020698 n

end A020698

/-! ## A020698.P13373675416548583396

`A384611(2*n)+A052913(n)`
-/

namespace A020698.P13373675416548583396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384611 (2 * n) + A052913 n

end

end A020698.P13373675416548583396

namespace A020698

/-- `A384611(2*n)+A052913(n)` -/
def P13373675416548583396.Spec : Prop :=
  ∀ n, P13373675416548583396.a n = A020698 n

end A020698

/-! ## A020698.P6626411393268716066

`A052913(n)+A005824(2*(n+1))`
-/

namespace A020698.P6626411393268716066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n + A005824 (2 * (n + 1))

end

end A020698.P6626411393268716066

namespace A020698

/-- `A052913(n)+A005824(2*(n+1))` -/
def P6626411393268716066.Spec : Prop :=
  ∀ n, P6626411393268716066.a n = A020698 n

end A020698

/-! ## A020698.P3800168825919860952

`A147722(n+1)+A005824(2*n)`
-/

namespace A020698.P3800168825919860952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 (n + 1) + A005824 (2 * n)

end

end A020698.P3800168825919860952

namespace A020698

/-- `A147722(n+1)+A005824(2*n)` -/
def P3800168825919860952.Spec : Prop :=
  ∀ n, P3800168825919860952.a n = A020698 n

end A020698

/-! ## A020698.P17449394356060835453

`A107839(n)+A079162(2*n+1)`
-/

namespace A020698.P17449394356060835453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n + A079162 (2 * n + 1)

end

end A020698.P17449394356060835453

namespace A020698

/-- `A107839(n)+A079162(2*n+1)` -/
def P17449394356060835453.Spec : Prop :=
  ∀ n, P17449394356060835453.a n = A020698 n

end A020698

/-! ## A020698.P12948377405751047172

`A204091(n+1)-A005824(2*n)`
-/

namespace A020698.P12948377405751047172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204091 (n + 1) - A005824 (2 * n)

end

end A020698.P12948377405751047172

namespace A020698

/-- `A204091(n+1)-A005824(2*n)` -/
def P12948377405751047172.Spec : Prop :=
  ∀ n, P12948377405751047172.a n = A020698 n

end A020698

/-! ## A020698.P14956572564663199613

`A052984(n+1)-A079162(2*n+1)`
-/

namespace A020698.P14956572564663199613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 (n + 1) - A079162 (2 * n + 1)

end

end A020698.P14956572564663199613

namespace A020698

/-- `A052984(n+1)-A079162(2*n+1)` -/
def P14956572564663199613.Spec : Prop :=
  ∀ n, P14956572564663199613.a n = A020698 n

end A020698

/-! ## A020698.P12506960429689201672

`A052984(n+1)-A147722(n+1)/2`
-/

namespace A020698.P12506960429689201672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052984 (n + 1) : ℚ) - (A147722 (n + 1) : ℚ) / 2

end

end A020698.P12506960429689201672

namespace A020698

/-- `A052984(n+1)-A147722(n+1)/2` -/
def P12506960429689201672.Spec : Prop :=
  ∀ n, P12506960429689201672.a n = (A020698 n : ℚ)

end A020698

/-! ## A020698.P1835363226443588189

`A109165(2*n)+A079162(2*n+1)`
-/

namespace A020698.P1835363226443588189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (2 * n) + A079162 (2 * n + 1)

end

end A020698.P1835363226443588189

namespace A020698

/-- `A109165(2*n)+A079162(2*n+1)` -/
def P1835363226443588189.Spec : Prop :=
  ∀ n, P1835363226443588189.a n = A020698 n

end A020698

/-! ## A020698.P11169755324084336872

`A384611(2*n)+A079162(2*n+1)`
-/

namespace A020698.P11169755324084336872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384611 (2 * n) + A079162 (2 * n + 1)

end

end A020698.P11169755324084336872

namespace A020698

/-- `A384611(2*n)+A079162(2*n+1)` -/
def P11169755324084336872.Spec : Prop :=
  ∀ n, P11169755324084336872.a n = A020698 n

end A020698

/-!
# A020699: Expansion of (1-3*x)/(1-5*x).

The programs for A020699, the canonical program `A020699.P17645551240165368470` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020699 has offset 0).

The definition of A020699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-5x))` (program `A020699.P17645551240165368470`, by `A020699.P17645551240165368470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020699.P17645551240165368470

`ogf((1-3x)/(1-5x))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020699

/-- `ogf((1-3x)/(1-5x))` -/
def P17645551240165368470.Spec : Prop :=
  ∀ n, P17645551240165368470.a n = A020699 n

theorem P17645551240165368470.correct : P17645551240165368470.Spec := by
  intro n
  simp only [A020699]

end A020699

/-! ## A020699.P6560355208396077592

`5*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A020699.P6560355208396077592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 * a (n - 1)

end

end A020699.P6560355208396077592

namespace A020699

/-- `5*a(n-1)` -/
def P6560355208396077592.Spec : Prop :=
  ∀ n, (P6560355208396077592.a n : ℤ) = A020699 n

end A020699

/-! ## A020699.P11792518725606060175

`record[5*T(n-1,k)]` with `a(0)=1, a(1)=2`
-/

namespace A020699.P11792518725606060175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020699.P11792518725606060175

namespace A020699

/-- `record[5*T(n-1,k)]` -/
def P11792518725606060175.Spec : Prop :=
  ∀ n, (P11792518725606060175.a n : ℤ) = A020699 n

end A020699

/-! ## A020699.P8293807806554232123

`ceil(2*5^(n-1))`
-/

namespace A020699.P8293807806554232123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A020699.P8293807806554232123

namespace A020699

/-- `ceil(2*5^(n-1))` -/
def P8293807806554232123.Spec : Prop :=
  ∀ n, P8293807806554232123.a n = A020699 n

end A020699

/-! ## A020699.P2383352693435436592

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A020699.P2383352693435436592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A020699.P2383352693435436592

namespace A020699

/-- `abs(∏[-a(n-1)])` -/
def P2383352693435436592.Spec : Prop :=
  ∀ n, P2383352693435436592.a n = A020699 n

end A020699

/-! ## A020699.P6552304637946298821

`a(n-1)/(1-4/5)` with `a(0)=1, a(1)=2`
-/

namespace A020699.P6552304637946298821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A020699.P6552304637946298821

namespace A020699

/-- `a(n-1)/(1-4/5)` -/
def P6552304637946298821.Spec : Prop :=
  ∀ n, P6552304637946298821.a n = (A020699 n : ℚ)

end A020699

/-! ## A020699.P1373926617750375479

`lcm(5, 1-a(n-1))+5` with `a(0)=1, a(1)=2`
-/

namespace A020699.P1373926617750375479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm 5 (1 - (a (n - 1) : ℤ)) + 5

end

end A020699.P1373926617750375479

namespace A020699

/-- `lcm(5, 1-a(n-1))+5` -/
def P1373926617750375479.Spec : Prop :=
  ∀ n, (P1373926617750375479.a n : ℤ) = A020699 n

end A020699

/-! ## A020699.P9118349835112775882

`lcm(5^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A020699.P9118349835112775882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A020699.P9118349835112775882

namespace A020699

/-- `lcm(5^(n-1), a(n-1))` -/
def P9118349835112775882.Spec : Prop :=
  ∀ n, (P9118349835112775882.a n : ℤ) = A020699 n

end A020699

/-! ## A020699.P918382439839701333

`round(2*5^(n-1))+floor(acot(n))`
-/

namespace A020699.P918382439839701333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A020699.P918382439839701333

namespace A020699

/-- `round(2*5^(n-1))+floor(acot(n))` -/
def P918382439839701333.Spec : Prop :=
  ∀ n, P918382439839701333.a n = A020699 n

end A020699

/-! ## A020699.P11611066722258073222

`Δ[floor(5^(n-1))]/(ceil(sin(n)²)+1)`
-/

namespace A020699.P11611066722258073222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (⌈Real.sin (n : ℝ) ^ 2⌉ + 1 : ℚ)

end

end A020699.P11611066722258073222

namespace A020699

/-- `Δ[floor(5^(n-1))]/(ceil(sin(n)²)+1)` -/
def P11611066722258073222.Spec : Prop :=
  ∀ n, P11611066722258073222.a n = (A020699 n : ℚ)

end A020699

/-! ## A020699.P16591094544751483136

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A020699.P16591094544751483136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 1))))

end

end A020699.P16591094544751483136

namespace A020699

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)` -/
def P16591094544751483136.Spec : Prop :=
  ∀ n, (P16591094544751483136.a n : ℤ) = A020699 n

end A020699

/-! ## A020699.P8854439657599747092

`∑{#}[n, C(n, #)*A102900(#)]`
-/

namespace A020699.P8854439657599747092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A102900 k

end

end A020699.P8854439657599747092

namespace A020699

/-- `∑{#}[n, C(n, #)*A102900(#)]` -/
def P8854439657599747092.Spec : Prop :=
  ∀ n, P8854439657599747092.a n = A020699 n

end A020699

/-! ## A020699.P7813200819110252554

`A128625(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A020699.P7813200819110252554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128625 (n - 1) + a (n - 1)

end

end A020699.P7813200819110252554

namespace A020699

/-- `A128625(n-1)+a(n-1)` -/
def P7813200819110252554.Spec : Prop :=
  ∀ n, P7813200819110252554.a n = A020699 n

end A020699

/-! ## A020699.P8391306778481842962

`A026383(A004273(n))`
-/

namespace A020699.P8391306778481842962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (A004273 n).toNat

end

end A020699.P8391306778481842962

namespace A020699

/-- `A026383(A004273(n))` -/
def P8391306778481842962.Spec : Prop :=
  ∀ n, P8391306778481842962.a n = A020699 n

end A020699

/-! ## A020699.P15053022274927899129

`A245478(A267528(2*n))`
-/

namespace A020699.P15053022274927899129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A267528 (2 * n)).toNat

end

end A020699.P15053022274927899129

namespace A020699

/-- `A245478(A267528(2*n))` -/
def P15053022274927899129.Spec : Prop :=
  ∀ n, P15053022274927899129.a n = A020699 n

end A020699

/-! ## A020699.P16867067600290301006

`∩[A026383(n), A026395(n)]`
-/

namespace A020699.P16867067600290301006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020699.P16867067600290301006

namespace A020699

/-- `∩[A026383(n), A026395(n)]` -/
def P16867067600290301006.Spec : Prop :=
  ∀ n, (P16867067600290301006.a n : ℤ) = A020699 n

end A020699

/-! ## A020699.P12346469629041723290

`∩[A026395(n), A133335(n)]`
-/

namespace A020699.P12346469629041723290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020699.P12346469629041723290

namespace A020699

/-- `∩[A026395(n), A133335(n)]` -/
def P12346469629041723290.Spec : Prop :=
  ∀ n, (P12346469629041723290.a n : ℤ) = A020699 n

end A020699

/-! ## A020699.P9613942494982270682

`A140730(A130824(n)+1)/2`
-/

namespace A020699.P9613942494982270682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140730 (A130824 n + 1).toNat : ℚ) / 2

end

end A020699.P9613942494982270682

namespace A020699

/-- `A140730(A130824(n)+1)/2` -/
def P9613942494982270682.Spec : Prop :=
  ∀ n, P9613942494982270682.a n = (A020699 n : ℚ)

end A020699

/-! ## A020699.P13846444647239008092

`(A005054(n)+A000007(n))/2`
-/

namespace A020699.P13846444647239008092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005054 n + A000007 n : ℚ) / 2

end

end A020699.P13846444647239008092

namespace A020699

/-- `(A005054(n)+A000007(n))/2` -/
def P13846444647239008092.Spec : Prop :=
  ∀ n, P13846444647239008092.a n = (A020699 n : ℚ)

end A020699

/-! ## A020699.P5612215490567078981

`A005054(n)/A280560(2*n)`
-/

namespace A020699.P5612215490567078981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005054 n : ℚ) / (A280560 (2 * n) : ℚ)

end

end A020699.P5612215490567078981

namespace A020699

/-- `A005054(n)/A280560(2*n)` -/
def P5612215490567078981.Spec : Prop :=
  ∀ n, P5612215490567078981.a n = (A020699 n : ℚ)

end A020699

