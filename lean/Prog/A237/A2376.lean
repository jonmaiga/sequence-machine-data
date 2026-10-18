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
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A237600: Right-truncatable primes in base 16.

The programs for A237600, there is no canonical definition to state claims against.
-/

/-! ## A237600.P9435182764580584101

`eq[A260180(n), A307195(n)]`
-/

namespace A237600.P9435182764580584101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237600.P9435182764580584101

/-! ## A237600.P1451297650100480917

`record[A000040(n+1)%record[A189506(n+1)+9]]`
-/

namespace A237600.P1451297650100480917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189506 (n + 1) + 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237600.P1451297650100480917

/-! ## A237600.P12107976992466587636

`eq[A003415(n), A010554(A070939(n))]`
-/

namespace A237600.P12107976992466587636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237600.P12107976992466587636

/-! ## A237600.P15413360159133957176

`eq[A003415(n), A115572(A062383(n))]`
-/

namespace A237600.P15413360159133957176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A062383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237600.P15413360159133957176

/-! ## A237600.P11153173710738957940

`p?[record[A365684(n+1)]]`
-/

namespace A237600.P11153173710738957940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365684 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237600.P11153173710738957940

/-!
# A237604: Numbers of form D^2 + 4d, with D odd, d divides D, and 1 < d < D.

The programs for A237604, there is no canonical definition to state claims against.
-/

/-! ## A237604.P17168888987087386598

`∩[A020349(n+1), A146327(n+1)]`
-/

namespace A237604.P17168888987087386598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237604.P17168888987087386598

/-! ## A237604.P16878954291912549401

`∩[A146327(n+1), A227453(n+1)]`
-/

namespace A237604.P16878954291912549401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237604.P16878954291912549401

/-!
# A237606: Positive integers k such that x^2 - 8xy + y^2 + k = 0 has integer solutions.

The programs for A237606, there is no canonical definition to state claims against.
-/

/-! ## A237606.P12835655512733752437

`record[A078898(A243190(n+4))]`
-/

namespace A237606.P12835655512733752437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243190 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237606.P12835655512733752437

/-! ## A237606.P16264242899301459228

`A289440(∩[A243190(n+1), A005843(n+4)])`
-/

namespace A237606.P16264242899301459228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A237606.P16264242899301459228

/-! ## A237606.P11551909691178605939

`A065033(∩[A243190(n+1), A004277(n)])`
-/

namespace A237606.P11551909691178605939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A237606.P11551909691178605939

/-! ## A237606.P2388817166135254277

`A289440(∩[A028310(2*n), A243190(n+1)])`
-/

namespace A237606.P2388817166135254277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243190 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A237606.P2388817166135254277

/-!
# A237607: Numbers divisible by a square and which have the same property if any number of rightmost digits is deleted.

The programs for A237607, there is no canonical definition to state claims against.
-/

/-! ## A237607.P3435064532632777148

`∩[A359470(n+1), A024659(n)]`
-/

namespace A237607.P3435064532632777148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237607.P3435064532632777148

/-! ## A237607.P492632057788845789

`∩[A375399(n+1), A024659(n)]`
-/

namespace A237607.P492632057788845789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237607.P492632057788845789

/-! ## A237607.P3077178382867744698

`∩[A013929(n+1), A111706(A111706(n+1))]`
-/

namespace A237607.P3077178382867744698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A111706 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237607.P3077178382867744698

/-!
# A237608: Number of n-digit numbers that are divisible by a square and have the same property if any number of rightmost digits is deleted.

The programs for A237608, there is no canonical definition to state claims against.
-/

/-! ## A237608.P9171086816064700211

`A022086(3*n+2)-A001222(A167010(n))`
-/

namespace A237608.P9171086816064700211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (3 * n + 2) - A001222 (A167010 n).toNat

end

end A237608.P9171086816064700211

/-!
# A237610: Positive integers k such that x^2 - 10xy + y^2 + k = 0 has integer solutions.

The programs for A237610, there is no canonical definition to state claims against.
-/

/-! ## A237610.P8234682068242616402

`∩[A074231(n+1), A242665(n+1)]`
-/

namespace A237610.P8234682068242616402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237610.P8234682068242616402

/-! ## A237610.P9416193206505507381

`∩[A154708(n+1), A242665(n+1)]`
-/

namespace A237610.P9416193206505507381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237610.P9416193206505507381

/-! ## A237610.P7288929933673828172

`∩[A003815(2*n), A242665(n+2)]`
-/

namespace A237610.P7288929933673828172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237610.P7288929933673828172

/-! ## A237610.P18196401847437632655

`∩[A106753(n+1), A242665(n+1)]`
-/

namespace A237610.P18196401847437632655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237610.P18196401847437632655

/-!
# A237613: Numbers k such that tau(sigma(tau(k))) = sigma(tau(sigma(k))), where tau is A000005 and sigma is A000203.

The programs for A237613, there is no canonical definition to state claims against.
-/

/-! ## A237613.P2162841868019463860

`∑[A124758(A221788(n+1))]²`
-/

namespace A237613.P2162841868019463860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A221788 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A237613.P2162841868019463860

/-! ## A237613.P1377220230382863036

`record[A055461(∑[A130802(n+1)])]`
-/

namespace A237613.P1377220230382863036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130802 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237613.P1377220230382863036

/-! ## A237613.P13561159837438294616

`(A120837(a(n-1))+1)²` with `a(0)=1`
-/

namespace A237613.P13561159837438294616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A120837 (a (n - 1)).toNat + 1) ^ 2

end

end A237613.P13561159837438294616

/-!
# A237615: a(n) = |{0 < k < n: k^2 + k - 1 and pi(k*n) are both prime}|, where pi(.) is given by A000720.

The programs for A237615, there is no canonical definition to state claims against.
-/

/-! ## A237615.P13786234293985661890

`record[A171935(n+4)]%A171895(n+1)`
-/

namespace A237615.P13786234293985661890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171935 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A171895 (n + 1))

end

end A237615.P13786234293985661890

/-! ## A237615.P16418258415996195546

`A124060(C(A267302(n+1), A237715(n+1)))`
-/

namespace A237615.P16418258415996195546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 (Nat.choose (A267302 (n + 1)).toNat (A237715 (n + 1)).toNat)

end

end A237615.P16418258415996195546

/-! ## A237615.P14477237209989548593

`A133364(n+1)*A352517(A016969(n))`
-/

namespace A237615.P14477237209989548593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133364 (n + 1) * A352517 (A016969 n).toNat

end

end A237615.P14477237209989548593

/-! ## A237615.P16328984606253687681

`A046660(or(A000079(n), A114315(n+1)))`
-/

namespace A237615.P16328984606253687681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (Int.lor (A000079 n) (A114315 (n + 1))).toNat

end

end A237615.P16328984606253687681

/-! ## A237615.P2717187996821082929

`A352513(∪[A270339(n+1), A350992(n+1)])`
-/

namespace A237615.P2717187996821082929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350992 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A237615.P2717187996821082929

/-!
# A237616: a(n) = n*(n + 1)*(5*n - 4)/2.

The programs for A237616, the canonical program `A237616.P9850220761186732271` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237616 has offset 0).

The definition of A237616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(5*n-4)/2` (program `A237616.P14213617976160860917`, by `A237616.P14213617976160860917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A237616.P14213617976160860917

`n*(n+1)*(5*n-4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237616.P14213617976160860917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((5 * n : ℤ) - 4 : ℚ) / 2))

end

end A237616.P14213617976160860917

namespace A237616

/-- `n*(n+1)*(5*n-4)/2` -/
def P14213617976160860917.Spec : Prop :=
  ∀ n, P14213617976160860917.a n = (A237616 n : ℚ)

theorem P14213617976160860917.correct : P14213617976160860917.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A237616, Nat.add_sub_cancel, A237616.P14213617976160860917.a, A237616.P9850220761186732271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A237616, Nat.add_sub_cancel, A237616.P14213617976160860917.a, A237616.P9850220761186732271.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A237616

/-! ## A237616.P9850220761186732271

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=66`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A237616

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9850220761186732271.Spec : Prop :=
  ∀ n, P9850220761186732271.a n = A237616 n

theorem P9850220761186732271.correct : P9850220761186732271.Spec := by
  intro n
  simp only [A237616]

end A237616

/-! ## A237616.P8278939568606154817

`∑[15*C(n, 2)+n]`
-/

namespace A237616.P8278939568606154817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P8278939568606154817

namespace A237616

/-- `∑[15*C(n, 2)+n]` -/
def P8278939568606154817.Spec : Prop :=
  ∀ n, (P8278939568606154817.a n : ℤ) = A237616 n

end A237616

/-! ## A237616.P16230441268465906775

`∑[∑[a(n-1)+15]]` with `a(0)=0, a(1)=1`
-/

namespace A237616.P16230441268465906775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P16230441268465906775

namespace A237616

/-- `∑[∑[a(n-1)+15]]` -/
def P16230441268465906775.Spec : Prop :=
  ∀ n, (P16230441268465906775.a n : ℤ) = A237616 n

end A237616

/-! ## A237616.P14770159934507991760

`(4*(n+1)+n+2)*C(n, 2)+n`
-/

namespace A237616.P14770159934507991760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) + (n + 2)) * Nat.choose n 2 + n

end

end A237616.P14770159934507991760

namespace A237616

/-- `(4*(n+1)+n+2)*C(n, 2)+n` -/
def P14770159934507991760.Spec : Prop :=
  ∀ n, (P14770159934507991760.a n : ℤ) = A237616 n

end A237616

/-! ## A237616.P12168203789064824816

`∑[A051869(n)]`
-/

namespace A237616.P12168203789064824816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P12168203789064824816

namespace A237616

/-- `∑[A051869(n)]` -/
def P12168203789064824816.Spec : Prop :=
  ∀ n, P12168203789064824816.a n = A237616 n

end A237616

/-! ## A237616.P14170738444789316400

`∑[A263226(n)/2]`
-/

namespace A237616.P14170738444789316400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263226 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P14170738444789316400

namespace A237616

/-- `∑[A263226(n)/2]` -/
def P14170738444789316400.Spec : Prop :=
  ∀ n, P14170738444789316400.a n = (A237616 n : ℚ)

end A237616

/-! ## A237616.P1953884178541048248

`∑[A226489(n)-n]`
-/

namespace A237616.P1953884178541048248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P1953884178541048248

namespace A237616

/-- `∑[A226489(n)-n]` -/
def P1953884178541048248.Spec : Prop :=
  ∀ n, P1953884178541048248.a n = A237616 n

end A237616

/-! ## A237616.P12942622752620901936

`A063522(n)+C(n, 2)`
-/

namespace A237616.P12942622752620901936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n + (Nat.choose n 2 : ℤ)

end

end A237616.P12942622752620901936

namespace A237616

/-- `A063522(n)+C(n, 2)` -/
def P12942622752620901936.Spec : Prop :=
  ∀ n, P12942622752620901936.a n = A237616 n

end A237616

/-! ## A237616.P14302905459646960980

`∑[A180232(n)-n²]`
-/

namespace A237616.P14302905459646960980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180232 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P14302905459646960980

namespace A237616

/-- `∑[A180232(n)-n²]` -/
def P14302905459646960980.Spec : Prop :=
  ∀ n, P14302905459646960980.a n = A237616 n

end A237616

/-! ## A237616.P18276707739963563824

`∑[A139271(n)-∑[n]]`
-/

namespace A237616.P18276707739963563824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P18276707739963563824

namespace A237616

/-- `∑[A139271(n)-∑[n]]` -/
def P18276707739963563824.Spec : Prop :=
  ∀ n, P18276707739963563824.a n = A237616 n

end A237616

/-! ## A237616.P4341506969989888881

`∑[A152773(n)-2*n]`
-/

namespace A237616.P4341506969989888881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P4341506969989888881

namespace A237616

/-- `∑[A152773(n)-2*n]` -/
def P4341506969989888881.Spec : Prop :=
  ∀ n, P4341506969989888881.a n = A237616 n

end A237616

/-! ## A237616.P14749251243525198387

`∑[(A153448(n)-n)/2]`
-/

namespace A237616.P14749251243525198387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153448 n - (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237616.P14749251243525198387

namespace A237616

/-- `∑[(A153448(n)-n)/2]` -/
def P14749251243525198387.Spec : Prop :=
  ∀ n, P14749251243525198387.a n = (A237616 n : ℚ)

end A237616

/-! ## A237616.P9804904362372725006

`n²/2*A016861(n)-n-n`
-/

namespace A237616.P9804904362372725006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 * (A016861 n : ℚ) - (n : ℚ) - (n : ℚ)

end

end A237616.P9804904362372725006

namespace A237616

/-- `n²/2*A016861(n)-n-n` -/
def P9804904362372725006.Spec : Prop :=
  ∀ n, P9804904362372725006.a n = (A237616 n : ℚ)

end A237616

/-! ## A237616.P5427523630822394145

`A063521(n)+A005581(n)`
-/

namespace A237616.P5427523630822394145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n + A005581 n

end

end A237616.P5427523630822394145

namespace A237616

/-- `A063521(n)+A005581(n)` -/
def P5427523630822394145.Spec : Prop :=
  ∀ n, P5427523630822394145.a n = A237616 n

end A237616

/-! ## A237616.P14548438250105471290

`A062025(n)+A051925(n)`
-/

namespace A237616.P14548438250105471290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062025 n + A051925 n

end

end A237616.P14548438250105471290

namespace A237616

/-- `A062025(n)+A051925(n)` -/
def P14548438250105471290.Spec : Prop :=
  ∀ n, P14548438250105471290.a n = A237616 n

end A237616

/-! ## A237616.P12931577767837856936

`A161680(n)+A063522(n)`
-/

namespace A237616.P12931577767837856936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A063522 n

end

end A237616.P12931577767837856936

namespace A237616

/-- `A161680(n)+A063522(n)` -/
def P12931577767837856936.Spec : Prop :=
  ∀ n, P12931577767837856936.a n = A237616 n

end A237616

/-! ## A237616.P16721865675462935617

`A172073(n)+A135503(n)`
-/

namespace A237616.P16721865675462935617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 n + A135503 n

end

end A237616.P16721865675462935617

namespace A237616

/-- `A172073(n)+A135503(n)` -/
def P16721865675462935617.Spec : Prop :=
  ∀ n, P16721865675462935617.a n = A237616 n

end A237616

/-! ## A237616.P4431871749878672690

`A341768(n)+A099721(n)`
-/

namespace A237616.P4431871749878672690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341768 n + A099721 n

end

end A237616.P4431871749878672690

namespace A237616

/-- `A341768(n)+A099721(n)` -/
def P4431871749878672690.Spec : Prop :=
  ∀ n, P4431871749878672690.a n = A237616 n

end A237616

/-! ## A237616.P18413586303573770129

`A168574(n)-A005286(n)`
-/

namespace A237616.P18413586303573770129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168574 n - A005286 n

end

end A237616.P18413586303573770129

namespace A237616

/-- `A168574(n)-A005286(n)` -/
def P18413586303573770129.Spec : Prop :=
  ∀ n, P18413586303573770129.a n = A237616 n

end A237616

/-!
# A237617: a(n) = n*(n + 1)*(17*n - 14)/6.

The programs for A237617, the canonical program `A237617.P289807805480380528` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237617 has offset 0).

The definition of A237617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(17*n-14)/6` (program `A237617.P1672498759608594612`, by `A237617.P1672498759608594612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A237617.P1672498759608594612

`n*(n+1)*(17*n-14)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237617.P1672498759608594612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((17 * n : ℤ) - 14 : ℚ) / 6))

end

end A237617.P1672498759608594612

namespace A237617

/-- `n*(n+1)*(17*n-14)/6` -/
def P1672498759608594612.Spec : Prop :=
  ∀ n, P1672498759608594612.a n = (A237617 n : ℚ)

theorem P1672498759608594612.correct : P1672498759608594612.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A237617, Nat.add_sub_cancel, A237617.P1672498759608594612.a, A237617.P289807805480380528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A237617, Nat.add_sub_cancel, A237617.P1672498759608594612.a, A237617.P289807805480380528.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A237617

/-! ## A237617.P289807805480380528

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=20, a(3)=74`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A237617

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P289807805480380528.Spec : Prop :=
  ∀ n, P289807805480380528.a n = A237617 n

theorem P289807805480380528.correct : P289807805480380528.Spec := by
  intro n
  simp only [A237617]

end A237617

/-! ## A237617.P14487777076208330665

`∑[17*C(n, 2)+n]`
-/

namespace A237617.P14487777076208330665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237617.P14487777076208330665

namespace A237617

/-- `∑[17*C(n, 2)+n]` -/
def P14487777076208330665.Spec : Prop :=
  ∀ n, (P14487777076208330665.a n : ℤ) = A237617 n

end A237617

/-! ## A237617.P7934552440108279805

`∑[∑[a(n-1)+17]]` with `a(0)=0, a(1)=1`
-/

namespace A237617.P7934552440108279805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237617.P7934552440108279805

namespace A237617

/-- `∑[∑[a(n-1)+17]]` -/
def P7934552440108279805.Spec : Prop :=
  ∀ n, (P7934552440108279805.a n : ℤ) = A237617 n

end A237617

/-! ## A237617.P9671778520398719448

`∑[16-∑[a(n-1)-17]]` with `a(0)=16`
-/

namespace A237617.P9671778520398719448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f2 =>
  f2 (n - 1) - 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237617.P9671778520398719448

namespace A237617

/-- `∑[16-∑[a(n-1)-17]]` -/
def P9671778520398719448.Spec : Prop :=
  ∀ n, P9671778520398719448.a n = A237617 n

end A237617

/-! ## A237617.P18255773055563593604

`∑[n*(10*n-9)]-∑[3*C(n, 2)]`
-/

namespace A237617.P18255773055563593604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((10 * n : ℤ) - 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A237617.P18255773055563593604

namespace A237617

/-- `∑[n*(10*n-9)]-∑[3*C(n, 2)]` -/
def P18255773055563593604.Spec : Prop :=
  ∀ n, P18255773055563593604.a n = A237617 n

end A237617

/-! ## A237617.P2858219291445392578

`∑[∑[ogf((6x+6x^2+5x^3)/(1-2x+x^2))]]-5*n`
-/

namespace A237617.P2858219291445392578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 6, 5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (5 * n : ℤ)

end

end A237617.P2858219291445392578

namespace A237617

/-- `∑[∑[ogf((6x+6x^2+5x^3)/(1-2x+x^2))]]-5*n` -/
def P2858219291445392578.Spec : Prop :=
  ∀ n, P2858219291445392578.a n = A237617 n

end A237617

/-! ## A237617.P13029686690159366163

`∑[A051871(n)]`
-/

namespace A237617.P13029686690159366163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237617.P13029686690159366163

namespace A237617

/-- `∑[A051871(n)]` -/
def P13029686690159366163.Spec : Prop :=
  ∀ n, P13029686690159366163.a n = A237617 n

end A237617

/-! ## A237617.P7121565496576620753

`∑[A180232(n)-n]`
-/

namespace A237617.P7121565496576620753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180232 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237617.P7121565496576620753

namespace A237617

/-- `∑[A180232(n)-n]` -/
def P7121565496576620753.Spec : Prop :=
  ∀ n, P7121565496576620753.a n = A237617 n

end A237617

/-! ## A237617.P587272953744465636

`∑[A226490(n)-n²]`
-/

namespace A237617.P587272953744465636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237617.P587272953744465636

namespace A237617

/-- `∑[A226490(n)-n²]` -/
def P587272953744465636.Spec : Prop :=
  ∀ n, P587272953744465636.a n = A237617 n

end A237617

/-! ## A237617.P5315237114571626642

`2*A007586(n)-∑[∑[n]]`
-/

namespace A237617.P5315237114571626642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007586 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A237617.P5315237114571626642

namespace A237617

/-- `2*A007586(n)-∑[∑[n]]` -/
def P5315237114571626642.Spec : Prop :=
  ∀ n, P5315237114571626642.a n = A237617 n

end A237617

/-! ## A237617.P13312469496065706113

`A063523(n)+A005581(n)`
-/

namespace A237617.P13312469496065706113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n + A005581 n

end

end A237617.P13312469496065706113

namespace A237617

/-- `A063523(n)+A005581(n)` -/
def P13312469496065706113.Spec : Prop :=
  ∀ n, P13312469496065706113.a n = A237617 n

end A237617

/-! ## A237617.P9614837235292026272

`A063522(n)+A051925(n)`
-/

namespace A237617.P9614837235292026272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n + A051925 n

end

end A237617.P9614837235292026272

namespace A237617

/-- `A063522(n)+A051925(n)` -/
def P9614837235292026272.Spec : Prop :=
  ∀ n, P9614837235292026272.a n = A237617 n

end A237617

/-! ## A237617.P9156862784879768486

`A172076(n)+A135503(n)`
-/

namespace A237617.P9156862784879768486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n + A135503 n

end

end A237617.P9156862784879768486

namespace A237617

/-- `A172076(n)+A135503(n)` -/
def P9156862784879768486.Spec : Prop :=
  ∀ n, P9156862784879768486.a n = A237617 n

end A237617

/-! ## A237617.P10031888098862905020

`A067389(n)-A005586(n)`
-/

namespace A237617.P10031888098862905020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n - A005586 n

end

end A237617.P10031888098862905020

namespace A237617

/-- `A067389(n)-A005586(n)` -/
def P10031888098862905020.Spec : Prop :=
  ∀ n, P10031888098862905020.a n = A237617 n

end A237617

/-! ## A237617.P14130173874538974398

`A130884(n)-A005286(n)`
-/

namespace A237617.P14130173874538974398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130884 n - A005286 n

end

end A237617.P14130173874538974398

namespace A237617

/-- `A130884(n)-A005286(n)` -/
def P14130173874538974398.Spec : Prop :=
  ∀ n, P14130173874538974398.a n = A237617 n

end A237617

/-! ## A237617.P583667999139961118

`A172117(n)-A135503(n)`
-/

namespace A237617.P583667999139961118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172117 n - A135503 n

end

end A237617.P583667999139961118

namespace A237617

/-- `A172117(n)-A135503(n)` -/
def P583667999139961118.Spec : Prop :=
  ∀ n, P583667999139961118.a n = A237617 n

end A237617

/-! ## A237617.P5415802556235308731

`A211612(n)-A101165(n)`
-/

namespace A237617.P5415802556235308731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211612 n - A101165 n

end

end A237617.P5415802556235308731

namespace A237617

/-- `A211612(n)-A101165(n)` -/
def P5415802556235308731.Spec : Prop :=
  ∀ n, P5415802556235308731.a n = A237617 n

end A237617

/-! ## A237617.P9856741757922547569

`A092966(n+1)-A152619(n)`
-/

namespace A237617.P9856741757922547569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092966 (n + 1) - A152619 n

end

end A237617.P9856741757922547569

namespace A237617

/-- `A092966(n+1)-A152619(n)` -/
def P9856741757922547569.Spec : Prop :=
  ∀ n, P9856741757922547569.a n = A237617 n

end A237617

/-! ## A237617.P17436774259270011365

`A364401(n+1)-A090197(n)`
-/

namespace A237617.P17436774259270011365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364401 (n + 1) - A090197 n

end

end A237617.P17436774259270011365

namespace A237617

/-- `A364401(n+1)-A090197(n)` -/
def P17436774259270011365.Spec : Prop :=
  ∀ n, P17436774259270011365.a n = A237617 n

end A237617

/-!
# A237618: a(n) = n*(n + 1)*(19*n - 16)/6.

The programs for A237618, the canonical program `A237618.P7191179600512799732` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237618 has offset 0).

The definition of A237618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237618.P7191179600512799732

`n*(n+1)*(19*n-16)/6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A237618

/-- `n*(n+1)*(19*n-16)/6` -/
def P7191179600512799732.Spec : Prop :=
  ∀ n, P7191179600512799732.a n = (A237618 n : ℚ)

end A237618

/-! ## A237618.P10595410983402744992

`∑[19*C(n, 2)+n]`
-/

namespace A237618.P10595410983402744992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237618.P10595410983402744992

namespace A237618

/-- `∑[19*C(n, 2)+n]` -/
def P10595410983402744992.Spec : Prop :=
  ∀ n, (P10595410983402744992.a n : ℤ) = A237618 n

end A237618

/-! ## A237618.P5549981348756315505

`∑[∑[a(n-1)+19]]` with `a(0)=0, a(1)=1`
-/

namespace A237618.P5549981348756315505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 19

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237618.P5549981348756315505

namespace A237618

/-- `∑[∑[a(n-1)+19]]` -/
def P5549981348756315505.Spec : Prop :=
  ∀ n, (P5549981348756315505.a n : ℤ) = A237618 n

end A237618

/-! ## A237618.P6956355164567235607

`∑[n*(11*n-10)]-∑[3*C(n, 2)]`
-/

namespace A237618.P6956355164567235607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((11 * n : ℤ) - 10)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A237618.P6956355164567235607

namespace A237618

/-- `∑[n*(11*n-10)]-∑[3*C(n, 2)]` -/
def P6956355164567235607.Spec : Prop :=
  ∀ n, P6956355164567235607.a n = A237618 n

end A237618

/-! ## A237618.P8127715900533153233

`∑[A051873(n)]`
-/

namespace A237618.P8127715900533153233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237618.P8127715900533153233

namespace A237618

/-- `∑[A051873(n)]` -/
def P8127715900533153233.Spec : Prop :=
  ∀ n, P8127715900533153233.a n = A237618 n

end A237618

/-! ## A237618.P6788546281172554404

`∑[A226490(n)-n]`
-/

namespace A237618.P6788546281172554404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237618.P6788546281172554404

namespace A237618

/-- `∑[A226490(n)-n]` -/
def P6788546281172554404.Spec : Prop :=
  ∀ n, P6788546281172554404.a n = A237618 n

end A237618

/-! ## A237618.P14147103739629980110

`∑[A226491(n)-n²]`
-/

namespace A237618.P14147103739629980110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237618.P14147103739629980110

namespace A237618

/-- `∑[A226491(n)-n²]` -/
def P14147103739629980110.Spec : Prop :=
  ∀ n, P14147103739629980110.a n = A237618 n

end A237618

/-! ## A237618.P13094366393999827965

`A172078(n)+A135503(n)`
-/

namespace A237618.P13094366393999827965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172078 n + A135503 n

end

end A237618.P13094366393999827965

namespace A237618

/-- `A172078(n)+A135503(n)` -/
def P13094366393999827965.Spec : Prop :=
  ∀ n, P13094366393999827965.a n = A237618 n

end A237618

/-! ## A237618.P17320728401025601528

`A256716(n)-A135503(n)`
-/

namespace A237618.P17320728401025601528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256716 n - A135503 n

end

end A237618.P17320728401025601528

namespace A237618

/-- `A256716(n)-A135503(n)` -/
def P17320728401025601528.Spec : Prop :=
  ∀ n, P17320728401025601528.a n = A237618 n

end A237618

/-! ## A237618.P13969395550546957266

`A395241(n)-A092185(n)`
-/

namespace A237618.P13969395550546957266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n - A092185 n

end

end A237618.P13969395550546957266

namespace A237618

/-- `A395241(n)-A092185(n)` -/
def P13969395550546957266.Spec : Prop :=
  ∀ n, P13969395550546957266.a n = A237618 n

end A237618

/-! ## A237618.P18167453469641045174

`A266398(n+1)+A226450(n)`
-/

namespace A237618.P18167453469641045174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266398 (n + 1) + A226450 n

end

end A237618.P18167453469641045174

namespace A237618

/-- `A266398(n+1)+A226450(n)` -/
def P18167453469641045174.Spec : Prop :=
  ∀ n, P18167453469641045174.a n = A237618 n

end A237618

/-! ## A237618.P10662832829667180920

`A177890(n)+2*A135503(n)`
-/

namespace A237618.P10662832829667180920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177890 n + 2 * A135503 n

end

end A237618.P10662832829667180920

namespace A237618

/-- `A177890(n)+2*A135503(n)` -/
def P10662832829667180920.Spec : Prop :=
  ∀ n, P10662832829667180920.a n = A237618 n

end A237618

/-! ## A237618.P8723130083826366766

`2*A237616(n)-A050441(n)`
-/

namespace A237618.P8723130083826366766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A050441 n

end

end A237618.P8723130083826366766

namespace A237618

/-- `2*A237616(n)-A050441(n)` -/
def P8723130083826366766.Spec : Prop :=
  ∀ n, P8723130083826366766.a n = A237618 n

end A237618

/-! ## A237618.P8256686828367963334

`A256647(n)-2*A135503(n)`
-/

namespace A237618.P8256686828367963334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256647 n - 2 * A135503 n

end

end A237618.P8256686828367963334

namespace A237618

/-- `A256647(n)-2*A135503(n)` -/
def P8256686828367963334.Spec : Prop :=
  ∀ n, P8256686828367963334.a n = A237618 n

end A237618

/-! ## A237618.P10599797483915651065

`2*A237617(n)-A237616(n)`
-/

namespace A237618.P10599797483915651065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237617 n - A237616 n

end

end A237618.P10599797483915651065

namespace A237618

/-- `2*A237617(n)-A237616(n)` -/
def P10599797483915651065.Spec : Prop :=
  ∀ n, P10599797483915651065.a n = A237618 n

end A237618

/-! ## A237618.P17576370845874856533

`(A256645(n)+A237616(n))/2`
-/

namespace A237618.P17576370845874856533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256645 n + A237616 n : ℚ) / 2

end

end A237618.P17576370845874856533

namespace A237618

/-- `(A256645(n)+A237616(n))/2` -/
def P17576370845874856533.Spec : Prop :=
  ∀ n, P17576370845874856533.a n = (A237618 n : ℚ)

end A237618

/-! ## A237618.P4742620568575301075

`2*A256645(n)-A256649(n)`
-/

namespace A237618.P4742620568575301075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256645 n - A256649 n

end

end A237618.P4742620568575301075

namespace A237618

/-- `2*A256645(n)-A256649(n)` -/
def P4742620568575301075.Spec : Prop :=
  ∀ n, P4742620568575301075.a n = A237618 n

end A237618

/-! ## A237618.P14861342139174510642

`2*A256718(n)-A256645(n)`
-/

namespace A237618.P14861342139174510642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256718 n - A256645 n

end

end A237618.P14861342139174510642

namespace A237618

/-- `2*A256718(n)-A256645(n)` -/
def P14861342139174510642.Spec : Prop :=
  ∀ n, P14861342139174510642.a n = A237618 n

end A237618

/-! ## A237618.P10699201947140961927

`A000447(n)+A050441(n)-n`
-/

namespace A237618.P10699201947140961927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + (A050441 n - (n : ℤ))

end

end A237618.P10699201947140961927

namespace A237618

/-- `A000447(n)+A050441(n)-n` -/
def P10699201947140961927.Spec : Prop :=
  ∀ n, P10699201947140961927.a n = A237618 n

end A237618

/-! ## A237618.P936955003883205008

`A007587(n)+A050441(n)-A000330(n)`
-/

namespace A237618.P936955003883205008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007587 n + (A050441 n - A000330 n)

end

end A237618.P936955003883205008

namespace A237618

/-- `A007587(n)+A050441(n)-A000330(n)` -/
def P936955003883205008.Spec : Prop :=
  ∀ n, P936955003883205008.a n = A237618 n

end A237618

/-!
# A237619: Riordan array (1/(1+x*c(x)), x*c(x)) where c(x) is the g.f. of Catalan numbers (A000108).

The programs for A237619, there is no canonical definition to state claims against.
-/

/-! ## A237619.P11353263848178105322

`2*A167772(n)-A033184(n+1)`
-/

namespace A237619.P11353263848178105322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167772 n - A033184 (n + 1)

end

end A237619.P11353263848178105322

/-! ## A237619.P5116464084299116499

`A005843(A167772(n))-A033184(n+1)`
-/

namespace A237619.P5116464084299116499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A167772 n).toNat - A033184 (n + 1)

end

end A237619.P5116464084299116499

/-!
# A237621: Riordan array (1+x, x*(1-x)); inverse of Riordan array A237619.

The programs for A237621, the canonical program `A237621.P1007943516580458413` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237621 has offset 0).

The definition of A237621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237621.P1007943516580458413

`A109466(A028310(n))+A109466(A083920(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A237621

/-- `A109466(A028310(n))+A109466(A083920(n))` -/
def P1007943516580458413.Spec : Prop :=
  ∀ n, P1007943516580458413.a n = A237621 n

theorem P1007943516580458413.correct : P1007943516580458413.Spec := by
  intro n
  simp only [A237621]

end A237621

/-! ## A237621.P14267195123768038211

`A109466(A000007(n)+n)+A109466(A083920(n))`
-/

namespace A237621.P14267195123768038211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (A000007 n + (n : ℤ)).toNat + A109466 (A083920 n).toNat

end

end A237621.P14267195123768038211

namespace A237621

/-- `A109466(A000007(n)+n)+A109466(A083920(n))` -/
def P14267195123768038211.Spec : Prop :=
  ∀ n, P14267195123768038211.a n = A237621 n

end A237621

/-! ## A237621.P4715550229698716018

`A109466(n)-A057094(n+1)`
-/

namespace A237621.P4715550229698716018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n - A057094 (n + 1)

end

end A237621.P4715550229698716018

namespace A237621

/-- `A109466(n)-A057094(n+1)` -/
def P4715550229698716018.Spec : Prop :=
  ∀ n, P4715550229698716018.a n = A237621 n

end A237621

/-! ## A237621.P17783682182301951293

`A110509(n)/A052509(n)-A057094(n+1)`
-/

namespace A237621.P17783682182301951293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110509 n : ℚ) / (A052509 n : ℚ) - (A057094 (n + 1) : ℚ)

end

end A237621.P17783682182301951293

namespace A237621

/-- `A110509(n)/A052509(n)-A057094(n+1)` -/
def P17783682182301951293.Spec : Prop :=
  ∀ n, P17783682182301951293.a n = (A237621 n : ℚ)

end A237621

/-! ## A237621.P8074467398761722267

`A229892(n)-A001222(A111830(n))`
-/

namespace A237621.P8074467398761722267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 n - A001222 (A111830 n).toNat

end

end A237621.P8074467398761722267

namespace A237621

/-- `A229892(n)-A001222(A111830(n))` -/
def P8074467398761722267.Spec : Prop :=
  ∀ n, P8074467398761722267.a n = A237621 n

end A237621

/-!
# A237622: Interpolation polynomial through n points (0,1), (1,1), ..., (n-2,1) and (n-1,n) evaluated at 2n, a(0)=1.

The programs for A237622, the canonical program `A237622.P7177384520578188316` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237622 has offset 0).

The definition of A237622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237622.P1393719420236434120

`A217213(n+1)+1`
-/

namespace A237622.P1393719420236434120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217213 (n + 1) + 1

end

end A237622.P1393719420236434120

namespace A237622

/-- `A217213(n+1)+1` -/
def P1393719420236434120.Spec : Prop :=
  ∀ n, P1393719420236434120.a n = A237622 n

end A237622

/-! ## A237622.P7177384520578188316

`n*A276666(n)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A237622

/-- `n*A276666(n)+1` -/
def P7177384520578188316.Spec : Prop :=
  ∀ n, P7177384520578188316.a n = A237622 n

theorem P7177384520578188316.correct : P7177384520578188316.Spec := by
  intro n
  simp only [A237622]

end A237622

/-! ## A237622.P17096999738062184822

`2*A002740(n+1)+1`
-/

namespace A237622.P17096999738062184822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002740 (n + 1) + 1

end

end A237622.P17096999738062184822

namespace A237622

/-- `2*A002740(n+1)+1` -/
def P17096999738062184822.Spec : Prop :=
  ∀ n, P17096999738062184822.a n = A237622 n

end A237622

/-! ## A237622.P14078999851260232462

`(n-1)*A001791(n)+1`
-/

namespace A237622.P14078999851260232462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001791 n + 1

end

end A237622.P14078999851260232462

namespace A237622

/-- `(n-1)*A001791(n)+1` -/
def P14078999851260232462.Spec : Prop :=
  ∀ n, P14078999851260232462.a n = A237622 n

end A237622

/-! ## A237622.P18154742562133030181

`n*A232500(2*n)+1`
-/

namespace A237622.P18154742562133030181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A232500 (2 * n) + 1

end

end A237622.P18154742562133030181

namespace A237622

/-- `n*A232500(2*n)+1` -/
def P18154742562133030181.Spec : Prop :=
  ∀ n, P18154742562133030181.a n = A237622 n

end A237622

/-! ## A237622.P3716563733680963471

`(n²-n)*A000108(n)+1`
-/

namespace A237622.P3716563733680963471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A000108 n + 1

end

end A237622.P3716563733680963471

namespace A237622

/-- `(n²-n)*A000108(n)+1` -/
def P3716563733680963471.Spec : Prop :=
  ∀ n, P3716563733680963471.a n = A237622 n

end A237622

/-! ## A237622.P1819259690921628256

`(n-1)*A323229(n)-(n-2)`
-/

namespace A237622.P1819259690921628256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A323229 n - ((n : ℤ) - 2)

end

end A237622.P1819259690921628256

namespace A237622

/-- `(n-1)*A323229(n)-(n-2)` -/
def P1819259690921628256.Spec : Prop :=
  ∀ n, P1819259690921628256.a n = A237622 n

end A237622

/-! ## A237622.P106051920489361833

`(∑[2*(n-1)]+2)*A028304(2*n)+1`
-/

namespace A237622.P106051920489361833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * A028304 (2 * n) + 1

end

end A237622.P106051920489361833

namespace A237622

/-- `(∑[2*(n-1)]+2)*A028304(2*n)+1` -/
def P106051920489361833.Spec : Prop :=
  ∀ n, P106051920489361833.a n = A237622 n

end A237622

/-! ## A237622.P15140472927489086302

`A319924(n)-A162551(n)`
-/

namespace A237622.P15140472927489086302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319924 n - A162551 n

end

end A237622.P15140472927489086302

namespace A237622

/-- `A319924(n)-A162551(n)` -/
def P15140472927489086302.Spec : Prop :=
  ∀ n, P15140472927489086302.a n = A237622 n

end A237622

/-! ## A237622.P15807900749966985034

`A237664(n)-A276666(n)`
-/

namespace A237622.P15807900749966985034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237664 n - A276666 n

end

end A237622.P15807900749966985034

namespace A237622

/-- `A237664(n)-A276666(n)` -/
def P15807900749966985034.Spec : Prop :=
  ∀ n, P15807900749966985034.a n = A237622 n

end A237622

/-! ## A237622.P6666682286264524428

`A034275(n+1)-A010763(n)`
-/

namespace A237622.P6666682286264524428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034275 (n + 1) - A010763 n

end

end A237622.P6666682286264524428

namespace A237622

/-- `A034275(n+1)-A010763(n)` -/
def P6666682286264524428.Spec : Prop :=
  ∀ n, P6666682286264524428.a n = A237622 n

end A237622

/-! ## A237622.P6317307515684776509

`A005430(n)+1-A162551(n)`
-/

namespace A237622.P6317307515684776509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n + (1 - A162551 n)

end

end A237622.P6317307515684776509

namespace A237622

/-- `A005430(n)+1-A162551(n)` -/
def P6317307515684776509.Spec : Prop :=
  ∀ n, P6317307515684776509.a n = A237622 n

end A237622

/-! ## A237622.P9793101731898000859

`n*A116385(A004273(n))+1`
-/

namespace A237622.P9793101731898000859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116385 (A004273 n).toNat + 1

end

end A237622.P9793101731898000859

namespace A237622

/-- `n*A116385(A004273(n))+1` -/
def P9793101731898000859.Spec : Prop :=
  ∀ n, P9793101731898000859.a n = A237622 n

end A237622

/-! ## A237622.P15349719849019446825

`1-A001791(n)*A024000(n)`
-/

namespace A237622.P15349719849019446825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001791 n * A024000 n

end

end A237622.P15349719849019446825

namespace A237622

/-- `1-A001791(n)*A024000(n)` -/
def P15349719849019446825.Spec : Prop :=
  ∀ n, P15349719849019446825.a n = A237622 n

end A237622

/-! ## A237622.P16397755771044784261

`2*(A000217(n)-n)*A000108(n)+1`
-/

namespace A237622.P16397755771044784261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((A000217 n - (n : ℤ)) * A000108 n) + 1

end

end A237622.P16397755771044784261

namespace A237622

/-- `2*(A000217(n)-n)*A000108(n)+1` -/
def P16397755771044784261.Spec : Prop :=
  ∀ n, P16397755771044784261.a n = A237622 n

end A237622

/-! ## A237622.P16473030045934232351

`A068875(A000007(n)+n)*C(n, 2)+1`
-/

namespace A237622.P16473030045934232351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (A000007 n + (n : ℤ)).toNat * (Nat.choose n 2 : ℤ) + 1

end

end A237622.P16473030045934232351

namespace A237622

/-- `A068875(A000007(n)+n)*C(n, 2)+1` -/
def P16473030045934232351.Spec : Prop :=
  ∀ n, P16473030045934232351.a n = A237622 n

end A237622

/-! ## A237622.P11630302050932734725

`A037955(2*n)*A140106(2*n+1)+1`
-/

namespace A237622.P11630302050932734725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n) * A140106 (2 * n + 1) + 1

end

end A237622.P11630302050932734725

namespace A237622

/-- `A037955(2*n)*A140106(2*n+1)+1` -/
def P11630302050932734725.Spec : Prop :=
  ∀ n, P11630302050932734725.a n = A237622 n

end A237622

/-! ## A237622.P15845340966898741119

`(n-1)*C(2*n, n+1)+1`
-/

namespace A237622.P15845340966898741119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (2 * n) (n + 1) : ℤ) + 1

end

end A237622.P15845340966898741119

namespace A237622

/-- `(n-1)*C(2*n, n+1)+1` -/
def P15845340966898741119.Spec : Prop :=
  ∀ n, P15845340966898741119.a n = A237622 n

end A237622

/-! ## A237622.P3561382413336836981

`1+(n+2)*C(2*n, n+2)`
-/

namespace A237622.P3561382413336836981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + 2) * Nat.choose (2 * n) (n + 2)

end

end A237622.P3561382413336836981

namespace A237622

/-- `1+(n+2)*C(2*n, n+2)` -/
def P3561382413336836981.Spec : Prop :=
  ∀ n, (P3561382413336836981.a n : ℤ) = A237622 n

end A237622

/-!
# A237623: Two-Special Pairs in a Free Group.

The programs for A237623, there is no canonical definition to state claims against.
-/

/-! ## A237623.P16086071504661571233

`A373592(A128402(n+1))+A059076(n+1)`
-/

namespace A237623.P16086071504661571233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373592 (A128402 (n + 1)).toNat + A059076 (n + 1)

end

end A237623.P16086071504661571233

/-! ## A237623.P6876650515482143106

`A059076(n+1)+A003982(∑{d}[n+1, A215338(#)])`
-/

namespace A237623.P6876650515482143106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (n + 1) + A003982 (∑ d ∈ Nat.divisors (f1 n), A215338 d).toNat

end

end A237623.P6876650515482143106

/-! ## A237623.P10334966434309234448

`A309528(∑[n+2])`
-/

namespace A237623.P10334966434309234448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237623.P10334966434309234448

/-! ## A237623.P1431993551335195373

`A059076((n+1)^gcd(11, n))`
-/

namespace A237623.P1431993551335195373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 ((n + 1) ^ Nat.gcd 11 n)

end

end A237623.P1431993551335195373

/-! ## A237623.P15301300517578373526

`A059076(A061497(n+1))`
-/

namespace A237623.P15301300517578373526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (A061497 (n + 1)).toNat

end

end A237623.P15301300517578373526

/-!
# A237624: Number of (n+2)X(1+2) 0..3 arrays with the (lower) median of each row and column nondecreasing.

The programs for A237624, there is no canonical definition to state claims against.
-/

/-! ## A237624.P1610994227067162134

`A237625(∑[n]+1)`
-/

namespace A237624.P1610994227067162134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237624.P1610994227067162134

/-! ## A237624.P7703773424971401351

`lcm(2, A237625(A000124(n)))`
-/

namespace A237624.P7703773424971401351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237625 (A000124 n).toNat)

end

end A237624.P7703773424971401351

/-! ## A237624.P3990400935020183259

`record[A237625(A238350(n+4))]`
-/

namespace A237624.P3990400935020183259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237625 (A238350 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237624.P3990400935020183259

/-!
# A237626: Sum of a^2 + b^2 for all nonnegative integers a,b such that b^2-a^2 = 4n.

The programs for A237626, there is no canonical definition to state claims against.
-/

/-! ## A237626.P12871337939557999354

`A004277(A001157(n+1)+A095118(n+1)-A339353(n+1))`
-/

namespace A237626.P12871337939557999354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001157 (n + 1) + (A095118 (n + 1) - A339353 (n + 1))).toNat

end

end A237626.P12871337939557999354

/-!
# A237627: Semiprimes of the form n^3 + n^2 + n + 1.

The programs for A237627, the canonical program `A237627.P1222492661179274990` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237627 has offset 1).

The definition of A237627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237627.P13533178339518314588

`A127435(n+1)*A127436(n+1)`
-/

namespace A237627.P13533178339518314588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1) * A127436 (n + 1)

end

end A237627.P13533178339518314588

namespace A237627

/-- `A127435(n+1)*A127436(n+1)` -/
def P13533178339518314588.Spec : Prop :=
  ∀ n, P13533178339518314588.a n = A237627 (n + 1)

end A237627

/-! ## A237627.P1222492661179274990

`(A070689(n+1)+1)*(A070689(n+1)²+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A237627

/-- `(A070689(n+1)+1)*(A070689(n+1)²+1)` -/
def P1222492661179274990.Spec : Prop :=
  ∀ n, P1222492661179274990.a n = A237627 (n + 1)

theorem P1222492661179274990.correct : P1222492661179274990.Spec := by
  intro n
  simp only [A237627, Nat.add_sub_cancel]

end A237627

/-! ## A237627.P1822288084262480156

`record[A002496(n+1)*A020639(A005574(n+1)+1)]`
-/

namespace A237627.P1822288084262480156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) * A020639 (A005574 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237627.P1822288084262480156

namespace A237627

/-- `record[A002496(n+1)*A020639(A005574(n+1)+1)]` -/
def P1822288084262480156.Spec : Prop :=
  ∀ n, P1822288084262480156.a n = A237627 (n + 1)

end A237627

/-! ## A237627.P16854038224251387431

`record[(A005574(n+1)²+1)*A020639(A090693(n+1))]`
-/

namespace A237627.P16854038224251387431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005574 (n + 1) ^ 2 + 1) * A020639 (A090693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237627.P16854038224251387431

namespace A237627

/-- `record[(A005574(n+1)²+1)*A020639(A090693(n+1))]` -/
def P16854038224251387431.Spec : Prop :=
  ∀ n, P16854038224251387431.a n = A237627 (n + 1)

end A237627

/-! ## A237627.P11508707600582644043

`A053698(A070689(n+1))`
-/

namespace A237627.P11508707600582644043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A070689 (n + 1)).toNat

end

end A237627.P11508707600582644043

namespace A237627

/-- `A053698(A070689(n+1))` -/
def P11508707600582644043.Spec : Prop :=
  ∀ n, P11508707600582644043.a n = A237627 (n + 1)

end A237627

/-! ## A237627.P2581566951219008052

`A053698(A127435(n+1)-1)`
-/

namespace A237627.P2581566951219008052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A127435 (n + 1) - 1).toNat

end

end A237627.P2581566951219008052

namespace A237627

/-- `A053698(A127435(n+1)-1)` -/
def P2581566951219008052.Spec : Prop :=
  ∀ n, P2581566951219008052.a n = A237627 (n + 1)

end A237627

/-! ## A237627.P4308525618828001050

`record[A020639(n+2)*A089120(n+1)]`
-/

namespace A237627.P4308525618828001050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237627.P4308525618828001050

namespace A237627

/-- `record[A020639(n+2)*A089120(n+1)]` -/
def P4308525618828001050.Spec : Prop :=
  ∀ n, P4308525618828001050.a n = A237627 (n + 1)

end A237627

/-! ## A237627.P4964485544796613588

`record[A002496(n+1)*A014963(A090693(n+1))]`
-/

namespace A237627.P4964485544796613588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) * A014963 (A090693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237627.P4964485544796613588

namespace A237627

/-- `record[A002496(n+1)*A014963(A090693(n+1))]` -/
def P4964485544796613588.Spec : Prop :=
  ∀ n, P4964485544796613588.a n = A237627 (n + 1)

end A237627

/-! ## A237627.P5298892842416133936

`p?[A090693(n+1)]*A007491(A070689(n+1))`
-/

namespace A237627.P5298892842416133936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A007491 (A070689 (n + 1)).toNat

end

end A237627.P5298892842416133936

namespace A237627

/-- `p?[A090693(n+1)]*A007491(A070689(n+1))` -/
def P5298892842416133936.Spec : Prop :=
  ∀ n, P5298892842416133936.a n = A237627 (n + 1)

end A237627

/-! ## A237627.P3112639352429977541

`p?[A180643(n+1)]*A007491(A070689(n+1))`
-/

namespace A237627.P3112639352429977541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A007491 (A070689 (n + 1)).toNat

end

end A237627.P3112639352429977541

namespace A237627

/-- `p?[A180643(n+1)]*A007491(A070689(n+1))` -/
def P3112639352429977541.Spec : Prop :=
  ∀ n, P3112639352429977541.a n = A237627 (n + 1)

end A237627

/-!
# A237628: a(n) is the smallest product of prime numbers such that all numbers from 6 and 2n can be written as the sum of two prime factors (duplication allowed) of a(n).

The programs for A237628, there is no canonical definition to state claims against.
-/

/-! ## A237628.P15582224703642828779

`A328571(Δ[A281766(n+1)])`
-/

namespace A237628.P15582224703642828779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (f1 (n + 1) - f1 n).toNat

end

end A237628.P15582224703642828779

/-! ## A237628.P8887773538043496529

`A328571(A034735(n+1)+3)`
-/

namespace A237628.P8887773538043496529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A034735 (n + 1) + 3).toNat

end

end A237628.P8887773538043496529

/-! ## A237628.P13175951426414544350

`A328571(A188583(n+1)+A000244(n))`
-/

namespace A237628.P13175951426414544350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A188583 (n + 1) + A000244 n).toNat

end

end A237628.P13175951426414544350

/-!
# A237629: Number of (n+1) X (n+1) 0..2 arrays with the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237629, there is no canonical definition to state claims against.
-/

/-! ## A237629.P5264408919011370034

`A237637(∑[4*n]+1)`
-/

namespace A237629.P5264408919011370034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237629.P5264408919011370034

/-! ## A237629.P17179906140330202825

`char[A028242(n)]*A237637(A001844(n))`
-/

namespace A237629.P17179906140330202825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A237637 (A001844 n).toNat

end

end A237629.P17179906140330202825

/-! ## A237629.P2422665627405854433

`A237637(A001844(n))%A018233(n+1)`
-/

namespace A237629.P2422665627405854433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237637 (A001844 n).toNat) (A018233 (n + 1))

end

end A237629.P2422665627405854433

/-! ## A237629.P12144267030924384179

`A237637(A001844(n))+char[A196994(n+1)]`
-/

namespace A237629.P12144267030924384179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196994 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A237629.P12144267030924384179

/-! ## A237629.P1107044787442673936

`A237637(A001844(n))+A003982(2*n+3)`
-/

namespace A237629.P1107044787442673936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A001844 n).toNat + A003982 (2 * n + 3)

end

end A237629.P1107044787442673936

/-!
# A237630: Number of (n+1) X (1+1) 0..2 arrays with the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237630, there is no canonical definition to state claims against.
-/

/-! ## A237630.P11584849931391787925

`A237637(∑[n]+1)`
-/

namespace A237630.P11584849931391787925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237630.P11584849931391787925

/-! ## A237630.P11019538867019829758

`record[A237637(n+1)]`
-/

namespace A237630.P11019538867019829758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237630.P11019538867019829758

/-! ## A237630.P4467227717728948466

`A237637(A000124(n))^((8^n)%7)`
-/

namespace A237630.P4467227717728948466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000124 n).toNat ^ (8 ^ n % 7)

end

end A237630.P4467227717728948466

/-! ## A237630.P17695817605464330244

`A237637(A000124(n))*A262681(n)`
-/

namespace A237630.P17695817605464330244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000124 n).toNat * A262681 n

end

end A237630.P17695817605464330244

/-! ## A237630.P5867212536442137950

`lcm(A000034(n), A237637(A000124(n)))`
-/

namespace A237630.P5867212536442137950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A237637 (A000124 n).toNat)

end

end A237630.P5867212536442137950

/-! ## A237630.P6288961787734623033

`A000034(2*n)*A237637(A000124(n))`
-/

namespace A237630.P6288961787734623033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A237637 (A000124 n).toNat

end

end A237630.P6288961787734623033

/-! ## A237630.P2906270117417046335

`A237637(A000124(n))%A250669(n+1)`
-/

namespace A237630.P2906270117417046335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237637 (A000124 n).toNat) (A250669 (n + 1))

end

end A237630.P2906270117417046335

/-! ## A237630.P11253296834791325120

`A237637(A000124(n))+A031347(A034048(n+1))`
-/

namespace A237630.P11253296834791325120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000124 n).toNat + A031347 (A034048 (n + 1)).toNat

end

end A237630.P11253296834791325120

/-! ## A237630.P17908660308785768862

`A039754(A302242(n+2))*A237637(A000217(n+1))`
-/

namespace A237630.P17908660308785768862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039754 (A302242 (n + 2)).toNat * A237637 (A000217 (n + 1)).toNat

end

end A237630.P17908660308785768862

/-! ## A237630.P5125585612176151984

`A237637(A000217(n+1))^A039754(A302242(n+1))`
-/

namespace A237630.P5125585612176151984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237637 (A000217 (n + 1)).toNat : ℚ) ^ (A039754 (A302242 (n + 1)).toNat : ℤ)

end

end A237630.P5125585612176151984

/-!
# A237631: Number of (n+1) X (2+1) 0..2 arrays with the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237631, there is no canonical definition to state claims against.
-/

/-! ## A237631.P15454614224964202708

`A237637(∑[n+1]+2)`
-/

namespace A237631.P15454614224964202708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237631.P15454614224964202708

/-! ## A237631.P8367391007976358986

`lcm(2, A237637(A000096(n)+3))`
-/

namespace A237631.P8367391007976358986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237637 (A000096 n + 3).toNat)

end

end A237631.P8367391007976358986

/-! ## A237631.P7340535631230730761

`char[A008612(n)]*A237637(A000096(n)+3)`
-/

namespace A237631.P7340535631230730761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A237637 (A000096 n + 3).toNat

end

end A237631.P7340535631230730761

/-! ## A237631.P12615752392402940094

`A237637(A000096(n)+3)+A000007(n+1)`
-/

namespace A237631.P12615752392402940094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000096 n + 3).toNat + A000007 (n + 1)

end

end A237631.P12615752392402940094

/-! ## A237631.P4141696213924444047

`A057427(n+1)*A237637(A000096(n)+3)`
-/

namespace A237631.P4141696213924444047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A237637 (A000096 n + 3).toNat

end

end A237631.P4141696213924444047

/-! ## A237631.P10408140048599858337

`A237637(A000096(n)+3)+A000035(2*n)`
-/

namespace A237631.P10408140048599858337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000096 n + 3).toNat + A000035 (2 * n)

end

end A237631.P10408140048599858337

/-! ## A237631.P13776104481703166454

`A001222(A002476(n+1))*A237637(A000096(n)+3)`
-/

namespace A237631.P13776104481703166454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A237637 (A000096 n + 3).toNat

end

end A237631.P13776104481703166454

/-! ## A237631.P14100502973348112929

`A237637(A000096(n+1))+char[A237637(n+2)]`
-/

namespace A237631.P14100502973348112929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A237631.P14100502973348112929

/-! ## A237631.P7934414538546091699

`A001221(A001248(n+1))*A237637(A000096(n)+3)`
-/

namespace A237631.P7934414538546091699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A237637 (A000096 n + 3).toNat

end

end A237631.P7934414538546091699

/-!
# A237632: Number of (n+1) X (3+1) 0..2 arrays with the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237632, there is no canonical definition to state claims against.
-/

/-! ## A237632.P3141068350496916163

`A237637(A167614(n+1))`
-/

namespace A237632.P3141068350496916163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A167614 (n + 1)).toNat

end

end A237632.P3141068350496916163

/-! ## A237632.P4571525369703245879

`A237637(A373663(n+1))`
-/

namespace A237632.P4571525369703245879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A373663 (n + 1)).toNat

end

end A237632.P4571525369703245879

/-! ## A237632.P4940835142467820725

`A237637(A046691(n)+7)`
-/

namespace A237632.P4940835142467820725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A046691 n + 7).toNat

end

end A237632.P4940835142467820725

/-! ## A237632.P5833805373503134048

`A237637(A167499(n)+n)`
-/

namespace A237632.P5833805373503134048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A167499 n + (n : ℤ)).toNat

end

end A237632.P5833805373503134048

/-! ## A237632.P10792436475016555866

`A237637(A000217(n+2)+3)`
-/

namespace A237632.P10792436475016555866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000217 (n + 2) + 3).toNat

end

end A237632.P10792436475016555866

/-! ## A237632.P11539160727474466129

`A237637(A034856(n+1)+5)`
-/

namespace A237632.P11539160727474466129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A034856 (n + 1) + 5).toNat

end

end A237632.P11539160727474466129

/-! ## A237632.P3914603997068007411

`A237637(∑[n+3]+1)`
-/

namespace A237632.P3914603997068007411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237632.P3914603997068007411

/-!
# A237633: Number of (n+1)X(4+1) 0..2 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237633, there is no canonical definition to state claims against.
-/

/-! ## A237633.P4701893151529535440

`A237637(A374004(n+1))`
-/

namespace A237633.P4701893151529535440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A374004 (n + 1)).toNat

end

end A237633.P4701893151529535440

/-! ## A237633.P14674366941427388643

`A237637(A052905(n)+9)`
-/

namespace A237633.P14674366941427388643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A052905 n + 9).toNat

end

end A237633.P14674366941427388643

/-! ## A237633.P17601732272898214001

`A237637(A167614(n+2)+1)`
-/

namespace A237633.P17601732272898214001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A167614 (n + 2) + 1).toNat

end

end A237633.P17601732272898214001

/-! ## A237633.P2851692154007396194

`A237637(Δ[A023545(n+1)-n²])`
-/

namespace A237633.P2851692154007396194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (f1 (n + 1) - f1 n).toNat

end

end A237633.P2851692154007396194

/-! ## A237633.P6883408355967527671

`A237637(∑[n+4]+3)`
-/

namespace A237633.P6883408355967527671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A237633.P6883408355967527671

/-! ## A237633.P11663336420418728157

`lcm(2, A237637(A155212(n)+5))`
-/

namespace A237633.P11663336420418728157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237637 (A155212 n + 5).toNat)

end

end A237633.P11663336420418728157

/-! ## A237633.P15055797574950853831

`A059841(A005843(n))*A237637(A056000(n)+7)`
-/

namespace A237633.P15055797574950853831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A005843 n).toNat * A237637 (A056000 n + 7).toNat

end

end A237633.P15055797574950853831

/-!
# A237634: Number of (n+1)X(5+1) 0..2 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237634, there is no canonical definition to state claims against.
-/

/-! ## A237634.P16193113423657459728

`A237637(A374005(n+1))`
-/

namespace A237634.P16193113423657459728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A374005 (n + 1)).toNat

end

end A237634.P16193113423657459728

/-! ## A237634.P2928648482655934502

`A237637(A167499(n+3))`
-/

namespace A237634.P2928648482655934502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A167499 (n + 3)).toNat

end

end A237634.P2928648482655934502

/-! ## A237634.P2637702471040501795

`A237637(A000096(n+3)+6)`
-/

namespace A237634.P2637702471040501795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000096 (n + 3) + 6).toNat

end

end A237634.P2637702471040501795

/-! ## A237634.P7156532460258084357

`A237637(A000217(n+4)+5)`
-/

namespace A237634.P7156532460258084357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000217 (n + 4) + 5).toNat

end

end A237634.P7156532460258084357

/-! ## A237634.P9752526371533158709

`A237637(∑[n+5]+6)`
-/

namespace A237634.P9752526371533158709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A237634.P9752526371533158709

/-!
# A237635: Number of (n+1)X(6+1) 0..2 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237635, there is no canonical definition to state claims against.
-/

/-! ## A237635.P17611952800146542206

`A237637(A374007(n+1))`
-/

namespace A237635.P17611952800146542206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A374007 (n + 1)).toNat

end

end A237635.P17611952800146542206

/-! ## A237635.P8357749622616757217

`A237637(A133263(n+5)+4)`
-/

namespace A237635.P8357749622616757217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A133263 (n + 5) + 4).toNat

end

end A237635.P8357749622616757217

/-! ## A237635.P17255212654802302303

`A237637(A000217(n+5)+6)`
-/

namespace A237635.P17255212654802302303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000217 (n + 5) + 6).toNat

end

end A237635.P17255212654802302303

/-! ## A237635.P15534628591622085652

`A237637(A034856(n+4)+8)`
-/

namespace A237635.P15534628591622085652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A034856 (n + 4) + 8).toNat

end

end A237635.P15534628591622085652

/-! ## A237635.P12908902244144171826

`A237637(A052905(n+3))`
-/

namespace A237635.P12908902244144171826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A052905 (n + 3)).toNat

end

end A237635.P12908902244144171826

/-! ## A237635.P6978893469436174083

`A237637(Δ[A103145(n)]-n)`
-/

namespace A237635.P6978893469436174083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A237635.P6978893469436174083

/-! ## A237635.P12918909072514023590

`A237637(A000124(n+6)-6)`
-/

namespace A237635.P12918909072514023590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000124 (n + 6) - 6).toNat

end

end A237635.P12918909072514023590

/-! ## A237635.P12875578346807921825

`A237637(Δ[A023545(n+2)]-1)`
-/

namespace A237635.P12875578346807921825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (f1 (n + 1) - f1 n - 1).toNat

end

end A237635.P12875578346807921825

/-!
# A237636: Number of (n+1)X(7+1) 0..2 arrays with the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237636, there is no canonical definition to state claims against.
-/

/-! ## A237636.P4200172770140249385

`A237637(A374008(n+1))`
-/

namespace A237636.P4200172770140249385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A374008 (n + 1)).toNat

end

end A237636.P4200172770140249385

/-! ## A237636.P3380470595431565701

`A237637(A167499(n+5)+2)`
-/

namespace A237636.P3380470595431565701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A167499 (n + 5) + 2).toNat

end

end A237636.P3380470595431565701

/-! ## A237636.P6924866240379673805

`A237637(A167614(n+5)+4)`
-/

namespace A237636.P6924866240379673805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A167614 (n + 5) + 4).toNat

end

end A237636.P6924866240379673805

/-! ## A237636.P7900353745862233494

`A237637(A000217(n+6)+7)`
-/

namespace A237636.P7900353745862233494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A000217 (n + 6) + 7).toNat

end

end A237636.P7900353745862233494

/-! ## A237636.P230760800496390122

`A237637(A055999(n+4))`
-/

namespace A237636.P230760800496390122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A055999 (n + 4)).toNat

end

end A237636.P230760800496390122

/-! ## A237636.P3783220688151025209

`A237637(A027379(n+5)-3)`
-/

namespace A237636.P3783220688151025209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237637 (A027379 (n + 5) - 3).toNat

end

end A237636.P3783220688151025209

/-!
# A237639: Numbers n = p^4-p^3-p^2-p-1 (for prime p) such that n^4-n^3-n^2-n-1 is prime.

The programs for A237639, there is no canonical definition to state claims against.
-/

/-! ## A237639.P15464365833900860270

`A125082(A230029(n+1))`
-/

namespace A237639.P15464365833900860270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125082 (A230029 (n + 1)).toNat

end

end A237639.P15464365833900860270

/-! ## A237639.P13558877120418746281

`A152016(p?[A230029(n+1)])-1`
-/

namespace A237639.P13558877120418746281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A237639.P13558877120418746281

/-! ## A237639.P1557224575432610925

`A152016(A230029(n+1))-A033999(n)²`
-/

namespace A237639.P1557224575432610925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 (A230029 (n + 1)).toNat - A033999 n ^ 2

end

end A237639.P1557224575432610925

/-! ## A237639.P15732291044982673028

`A152016(A230029(n+1))-A007318(∑[n])`
-/

namespace A237639.P15732291044982673028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 (A230029 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237639.P15732291044982673028

/-! ## A237639.P1426467257349444939

`A152016(A230029(n+1))-A014963(4*n+6)`
-/

namespace A237639.P1426467257349444939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 (A230029 (n + 1)).toNat - A014963 (4 * n + 6)

end

end A237639.P1426467257349444939

/-!
# A237640: Numbers n of the form p^5 - Phi_5(p) (for prime p) such that n^5 - Phi_5(n) is also prime.

The programs for A237640, there is no canonical definition to state claims against.
-/

/-! ## A237640.P13244667732288795279

`A125083(A238445(n+1))`
-/

namespace A237640.P13244667732288795279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125083 (A238445 (n + 1)).toNat

end

end A237640.P13244667732288795279

/-! ## A237640.P11922302284160713023

`A152017(p?[A238445(n+1)])-1`
-/

namespace A237640.P11922302284160713023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152017 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A237640.P11922302284160713023

/-! ## A237640.P11149282187346661271

`A321800(A001316(n))+A152017(A238445(n+1))`
-/

namespace A237640.P11149282187346661271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A001316 n).toNat + A152017 (A238445 (n + 1)).toNat

end

end A237640.P11149282187346661271

/-! ## A237640.P12240653950422330858

`A152017(A238445(n+1))-A001222(A063792(n+1))`
-/

namespace A237640.P12240653950422330858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152017 (A238445 (n + 1)).toNat - A001222 (A063792 (n + 1)).toNat

end

end A237640.P12240653950422330858

/-! ## A237640.P16048296436318436873

`A152017(A238445(n+1))-A001222(A306787(n+1))`
-/

namespace A237640.P16048296436318436873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152017 (A238445 (n + 1)).toNat - A001222 (A306787 (n + 1)).toNat

end

end A237640.P16048296436318436873

/-!
# A237641: Primes p of the form n^2-n-1 (for prime n) such that p^2-p-1 is also prime.

The programs for A237641, there is no canonical definition to state claims against.
-/

/-! ## A237641.P9105060011260770575

`A046151(A238447(n+1))`
-/

namespace A237641.P9105060011260770575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (A238447 (n + 1)).toNat

end

end A237641.P9105060011260770575

/-! ## A237641.P7405005577611898826

`A063445(p?[A238447(n+1)])`
-/

namespace A237641.P7405005577611898826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237641.P7405005577611898826

/-! ## A237641.P15962047717338682250

`A165900(p?[A238447(n+1)])`
-/

namespace A237641.P15962047717338682250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237641.P15962047717338682250

/-! ## A237641.P9406422063469043126

`A161550(A238447(n+1)-1)`
-/

namespace A237641.P9406422063469043126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (A238447 (n + 1) - 1).toNat

end

end A237641.P9406422063469043126

/-! ## A237641.P12503326900953325362

`A028387(A238447(n+1)-2)`
-/

namespace A237641.P12503326900953325362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A238447 (n + 1) - 2).toNat

end

end A237641.P12503326900953325362

/-!
# A237642: Primes of the form n^2-n-1 (for some n) such that p^2-p-1 is also prime.

The programs for A237642, there is no canonical definition to state claims against.
-/

/-! ## A237642.P11126475035275221332

`∩[A002327(n+1), A125236(n+1)]`
-/

namespace A237642.P11126475035275221332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237642.P11126475035275221332

/-! ## A237642.P5198453024653452767

`∩[A091567(n+1), A028387(n)]`
-/

namespace A237642.P5198453024653452767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237642.P5198453024653452767

/-! ## A237642.P6921053632835065174

`∩[A002327(n+1), A002328(n+1)]`
-/

namespace A237642.P6921053632835065174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237642.P6921053632835065174

/-! ## A237642.P13922624558497096089

`∩[A002327(n+1), A059109(n+1)]`
-/

namespace A237642.P13922624558497096089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237642.P13922624558497096089

/-! ## A237642.P9141737016773675407

`∩[A002327(n+1), A091567(n+1)]`
-/

namespace A237642.P9141737016773675407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237642.P9141737016773675407

/-!
# A237644: G.f. satisfies: a(n) = [x^n] ( A(x)^n + 1/A(x)^n ) for n>1, with a(0)=a(1)=1.

The programs for A237644, there is no canonical definition to state claims against.
-/

/-! ## A237644.P17509457613744817164

`A047511((n-1)*(2*n-1)*a(n-1)/gcd(n, a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A237644.P17509457613744817164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A047511 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * (((2 * n : ℤ) - 1 : ℚ) * ((a (n - 1) : ℚ) / (Int.gcd (n : ℤ) (a (n - 1)) : ℚ))))).toNat

end

end A237644.P17509457613744817164

/-!
# A237645: G.f. satisfies: A(x) = G(x*A(x)) where G(x) = -1+x + A(x) + 1/A(x).

The programs for A237645, there is no canonical definition to state claims against.
-/

/-! ## A237645.P6764260272409174340

`A004525(A020110(n+1))-A224326(n)`
-/

namespace A237645.P6764260272409174340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A020110 (n + 1)).toNat - A224326 n

end

end A237645.P6764260272409174340

/-! ## A237645.P8301694383879994575

`A004525(A020110(n+1))-A079275(n+2)`
-/

namespace A237645.P8301694383879994575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A020110 (n + 1)).toNat - A079275 (n + 2)

end

end A237645.P8301694383879994575

/-!
# A237647: G.f. satisfies: A(x) = (1 + x + x^2)^7 * A(x^2)^4.

The programs for A237647, there is no canonical definition to state claims against.
-/

/-! ## A237647.P1860006637363047139

`A237646(Δ[n²])`
-/

namespace A237647.P1860006637363047139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237646 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A237647.P1860006637363047139

/-! ## A237647.P13284888527775530314

`record[A237646(n*n%2)]`
-/

namespace A237647.P13284888527775530314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237646 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237647.P13284888527775530314

/-! ## A237647.P602712864518197781

`record[A237646(n*and(1, n))]`
-/

namespace A237647.P602712864518197781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237646 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237647.P602712864518197781

/-! ## A237647.P14684462830564772598

`record[A237646(C(n, and(1, n)))]`
-/

namespace A237647.P14684462830564772598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237646 (Nat.choose n (Nat.land 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237647.P14684462830564772598

/-! ## A237647.P17262699943643369858

`record[and((-1)^n, A237646(n))]`
-/

namespace A237647.P17262699943643369858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A237646 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237647.P17262699943643369858

/-!
# A237649: a(n) = A163659(n^3), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

The programs for A237649, the canonical program `A237649.P15310033212845427612` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237649 has offset 1).

The definition of A237649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A237649.P15310033212845427612

`A163659((n+1)^3)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A237649

/-- `A163659((n+1)^3)` -/
def P15310033212845427612.Spec : Prop :=
  ∀ n, P15310033212845427612.a n = A237649 (n + 1)

theorem P15310033212845427612.correct : P15310033212845427612.Spec := by
  intro n
  simp only [A237649, Nat.add_sub_cancel]

end A237649

/-! ## A237649.P7615675460587602235

`A061347(n+1)*A175926(A006519(n+1))`
-/

namespace A237649.P7615675460587602235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A175926 (A006519 (n + 1)).toNat

end

end A237649.P7615675460587602235

namespace A237649

/-- `A061347(n+1)*A175926(A006519(n+1))` -/
def P7615675460587602235.Spec : Prop :=
  ∀ n, P7615675460587602235.a n = A237649 (n + 1)

end A237649

/-! ## A237649.P7258278612561865436

`A175926(A006519(n+1))*A195587(2*n+5)`
-/

namespace A237649.P7258278612561865436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175926 (A006519 (n + 1)).toNat * A195587 (2 * n + 5)

end

end A237649.P7258278612561865436

namespace A237649

/-- `A175926(A006519(n+1))*A195587(2*n+5)` -/
def P7258278612561865436.Spec : Prop :=
  ∀ n, P7258278612561865436.a n = A237649 (n + 1)

end A237649

/-!
# A237650: G.f. satisfies: A(x) = (1+x+x^2)^3 * A(x^2)^2.

The programs for A237650, there is no canonical definition to state claims against.
-/

/-! ## A237650.P16686293223287431730

`A195586(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A237650.P16686293223287431730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A195586 (2 * n) - a (n - 1)

end

end A237650.P16686293223287431730

/-! ## A237650.P2486856520836636634

`A195586(Δ[n²])`
-/

namespace A237650.P2486856520836636634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195586 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A237650.P2486856520836636634

/-! ## A237650.P14171641586879545231

`A195586(2*n+1)-char[A234381(n+1)]`
-/

namespace A237650.P14171641586879545231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234381 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195586 (2 * n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A237650.P14171641586879545231

/-! ## A237650.P3106893255662724139

`A286063(3*n+2)+A195586(2*n+1)`
-/

namespace A237650.P3106893255662724139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286063 (3 * n + 2) + A195586 (2 * n + 1)

end

end A237650.P3106893255662724139

/-! ## A237650.P2540918391675564687

`(A000027(n+1)-n)*A195586(2*n+1)`
-/

namespace A237650.P2540918391675564687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A195586 (2 * n + 1)

end

end A237650.P2540918391675564687

/-! ## A237650.P13039026695952350151

`A200214(A270516(n))+A195586(2*n+1)`
-/

namespace A237650.P13039026695952350151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (A270516 n).toNat + A195586 (2 * n + 1)

end

end A237650.P13039026695952350151

/-! ## A237650.P568363745026649255

`A200214(A000005(2*n+1))+A195586(2*n+1)`
-/

namespace A237650.P568363745026649255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (A000005 (2 * n + 1)).toNat + A195586 (2 * n + 1)

end

end A237650.P568363745026649255

/-! ## A237650.P17936664910449860563

`A200214(A195602(n+1))+A195586(2*n+1)`
-/

namespace A237650.P17936664910449860563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (A195602 (n + 1)).toNat + A195586 (2 * n + 1)

end

end A237650.P17936664910449860563

/-! ## A237650.P17462361045344863879

`A195586(2*n+1)*A195587(A195602(n+3))`
-/

namespace A237650.P17462361045344863879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195586 (2 * n + 1) * A195587 (A195602 (n + 3)).toNat

end

end A237650.P17462361045344863879

/-!
# A237652: G.f. satisfies: [x^n] A(x)^(n^2) = [x^n] A(x)^(n^2-1) for n>1 with A(0)=A'(0)=1.

The programs for A237652, there is no canonical definition to state claims against.
-/

/-! ## A237652.P12606869718339518631

`A195135(n)-A070824(A263075(n))`
-/

namespace A237652.P12606869718339518631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195135 n - A070824 (A263075 n).toNat

end

end A237652.P12606869718339518631

/-!
# A237653: O.g.f.: Sum_{n>=0} x^n*Product_{k=1..n} (k + x).

The programs for A237653, there is no canonical definition to state claims against.
-/

/-! ## A237653.P10136386272559751612

`A343579(n+2)`
-/

namespace A237653.P10136386272559751612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343579 (n + 2)

end

end A237653.P10136386272559751612

/-! ## A237653.P10235556109885243050

`Δ[A320963(n+1)]`
-/

namespace A237653.P10235556109885243050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237653.P10235556109885243050

/-! ## A237653.P6863151587108265447

`Δ[record[A320963(A002262(n))]]`
-/

namespace A237653.P6863151587108265447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320963 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237653.P6863151587108265447

/-! ## A237653.P997101173925862278

`Δ[record[A320963(A008611(n))]]`
-/

namespace A237653.P997101173925862278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320963 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237653.P997101173925862278

/-! ## A237653.P18228949423157201702

`Δ[record[A320963(A008624(n))]]`
-/

namespace A237653.P18228949423157201702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320963 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237653.P18228949423157201702

/-! ## A237653.P16892850968965231290

`A320963(n+2)-A320963(n+1)`
-/

namespace A237653.P16892850968965231290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320963 (n + 2) - A320963 (n + 1)

end

end A237653.P16892850968965231290

/-!
# A237654: G.f.: exp( Sum_{n>=1} 5*Fibonacci(n-1)*Fibonacci(n+1) * x^n/n ).

The programs for A237654, the canonical program `A237654.P9038227127362551737` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237654 has offset 0).

The definition of A237654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237654.P10617955198497385369

`ogf(1/(1-5x^2-5x^3+x^5))`
-/

namespace A237654.P10617955198497385369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -5, -5, 0, 1] n

end

end A237654.P10617955198497385369

namespace A237654

/-- `ogf(1/(1-5x^2-5x^3+x^5))` -/
def P10617955198497385369.Spec : Prop :=
  ∀ n, P10617955198497385369.a n = A237654 n

end A237654

/-! ## A237654.P9038227127362551737

`abs(∑[A077916(n)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A237654

/-- `abs(∑[A077916(n)])` -/
def P9038227127362551737.Spec : Prop :=
  ∀ n, P9038227127362551737.a n = A237654 n

theorem P9038227127362551737.correct : P9038227127362551737.Spec := by
  intro n
  simp only [A237654]

end A237654

/-! ## A237654.P18446708632093142407

`A002571(n)-a(n-1)` with `a(0)=1`
-/

namespace A237654.P18446708632093142407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002571 n - a (n - 1)

end

end A237654.P18446708632093142407

namespace A237654

/-- `A002571(n)-a(n-1)` -/
def P18446708632093142407.Spec : Prop :=
  ∀ n, P18446708632093142407.a n = A237654 n

end A237654

/-! ## A237654.P2793104711870571579

`∑[A000045(n+1)²-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A237654.P2793104711870571579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000045 (n + 1) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A237654.P2793104711870571579

namespace A237654

/-- `∑[A000045(n+1)²-a(n-1)]-a(n-1)` -/
def P2793104711870571579.Spec : Prop :=
  ∀ n, P2793104711870571579.a n = A237654 n

end A237654

/-! ## A237654.P6052079113166697618

`∑[A077916(n)]*A033999(n)`
-/

namespace A237654.P6052079113166697618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A237654.P6052079113166697618

namespace A237654

/-- `∑[A077916(n)]*A033999(n)` -/
def P6052079113166697618.Spec : Prop :=
  ∀ n, P6052079113166697618.a n = A237654 n

end A237654

/-! ## A237654.P10439249135522987885

`gcd(∑[A077916(n)], A000038(n))`
-/

namespace A237654.P10439249135522987885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A237654.P10439249135522987885

namespace A237654

/-- `gcd(∑[A077916(n)], A000038(n))` -/
def P10439249135522987885.Spec : Prop :=
  ∀ n, (P10439249135522987885.a n : ℤ) = A237654 n

end A237654

/-! ## A237654.P3498458604611674009

`A002570(n+1)+A002571(n+1)-A002570(n+2)`
-/

namespace A237654.P3498458604611674009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002570 (n + 1) + (A002571 (n + 1) - A002570 (n + 2))

end

end A237654.P3498458604611674009

namespace A237654

/-- `A002570(n+1)+A002571(n+1)-A002570(n+2)` -/
def P3498458604611674009.Spec : Prop :=
  ∀ n, P3498458604611674009.a n = A237654 n

end A237654

/-! ## A237654.P7778175652534345128

`(2*A000032(2*n+5)+(25*n+28+5*n²)*(-1)^n)/50`
-/

namespace A237654.P7778175652534345128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000032 (2 * n + 5) + (25 * n + 28 + 5 * n ^ 2 : ℤ) * (-1) ^ n : ℚ) / 50

end

end A237654.P7778175652534345128

namespace A237654

/-- `(2*A000032(2*n+5)+(25*n+28+5*n²)*(-1)^n)/50` -/
def P7778175652534345128.Spec : Prop :=
  ∀ n, P7778175652534345128.a n = (A237654 n : ℚ)

end A237654

/-!
# A237655: G.f.: exp( Sum_{n>=1} 5*Fibonacci(n-2)*Fibonacci(n+2) * x^n/n ).

The programs for A237655, there is no canonical definition to state claims against.
-/

/-! ## A237655.P3922159373560036987

`A325106(A001003(n))+A051947(n)`
-/

namespace A237655.P3922159373560036987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A001003 n).toNat + A051947 n

end

end A237655.P3922159373560036987

/-!
# A237658: Positive integers m with pi(m) and pi(m^2) both prime, where pi(.) is given by A000720.

The programs for A237658, there is no canonical definition to state claims against.
-/

/-! ## A237658.P15901139932601431689

`∩[A048989(n+1), A064516(n+1)]`
-/

namespace A237658.P15901139932601431689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237658.P15901139932601431689

/-!
# A237659: Primes p with pi(p) and pi(p^2) both prime, where pi(.) is given by A000720.

The programs for A237659, there is no canonical definition to state claims against.
-/

/-! ## A237659.P15694956326720237537

`∩[A006450(n+1), A237658(n+1)]`
-/

namespace A237659.P15694956326720237537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P15694956326720237537

/-! ## A237659.P1401818312545624742

`∩[A175247(n+1), A237658(n+1)]`
-/

namespace A237659.P1401818312545624742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P1401818312545624742

/-! ## A237659.P13481486585960848883

`∩[A237658(n+1), A302592(n+1)]`
-/

namespace A237659.P13481486585960848883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P13481486585960848883

/-! ## A237659.P5598937854893930601

`∩[A237658(n+1), A302493(n+1)]`
-/

namespace A237659.P5598937854893930601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P5598937854893930601

/-! ## A237659.P13869821870851469985

`∩[A237658(n+1), A302596(n+1)]`
-/

namespace A237659.P13869821870851469985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P13869821870851469985

/-! ## A237659.P14203247905942077372

`p?[A237658(n+1)]`
-/

namespace A237659.P14203247905942077372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237659.P14203247905942077372

/-! ## A237659.P8173629095155872774

`p?[record[A237658(A291769(n))]]`
-/

namespace A237659.P8173629095155872774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237659.P8173629095155872774

/-! ## A237659.P17963016529323842132

`p?[record[A237658(A324347(n))]]`
-/

namespace A237659.P17963016529323842132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237659.P17963016529323842132

/-! ## A237659.P1360334916506796577

`or(1, p?[A237658(A028310(n))])`
-/

namespace A237659.P1360334916506796577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A237659.P1360334916506796577

/-! ## A237659.P1110958057008325309

`A000027(p?[A237658(n%a(n-1))])` with `a(0)=4`
-/

namespace A237659.P1110958057008325309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A237658 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237659.P1110958057008325309

/-! ## A237659.P11115624972123211777

`∩[A091735(n+1), A237658(n+1)]`
-/

namespace A237659.P11115624972123211777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P11115624972123211777

/-! ## A237659.P1928611351881845154

`∩[A237658(n+1), A336368(n+1)]`
-/

namespace A237659.P1928611351881845154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P1928611351881845154

/-! ## A237659.P17871603220033890598

`∩[A237658(n+1), A336376(n+1)]`
-/

namespace A237659.P17871603220033890598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P17871603220033890598

/-! ## A237659.P3786889848325809071

`∩[A237658(n+1), A336380(n+1)]`
-/

namespace A237659.P3786889848325809071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P3786889848325809071

/-! ## A237659.P11539730769850275725

`∩[A031368(n+1), A237658(n+1)]`
-/

namespace A237659.P11539730769850275725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P11539730769850275725

/-! ## A237659.P2445405010660977133

`∩[A237658(n+1), A302491(n+1)]`
-/

namespace A237659.P2445405010660977133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P2445405010660977133

/-! ## A237659.P3360936095583159324

`∩[A237658(n+1), A302591(n+1)]`
-/

namespace A237659.P3360936095583159324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237659.P3360936095583159324

/-!
# A237660: Consider the Collatz trajectory of n; if all terms except n and 1 are even then a(n) = 0, otherwise a(n) is the last odd number before 1.

The programs for A237660, there is no canonical definition to state claims against.
-/

/-! ## A237660.P12322424186117477005

`A238192(A385109(n+1))`
-/

namespace A237660.P12322424186117477005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (A385109 (n + 1)).toNat

end

end A237660.P12322424186117477005

/-! ## A237660.P764886760434607918

`A238192(n+1)%or(n+1, A238192(n+1))`
-/

namespace A237660.P764886760434607918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238192 (n + 1)) (Int.lor (n + 1 : ℤ) (A238192 (n + 1)))

end

end A237660.P764886760434607918

/-! ## A237660.P10110947735127039878

`A238192(Δ[∑[n]%(n+1)]+n+1)`
-/

namespace A237660.P10110947735127039878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat

end

end A237660.P10110947735127039878

/-! ## A237660.P2411392951737169437

`A238192(A014682(n+1))`
-/

namespace A237660.P2411392951737169437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (A014682 (n + 1)).toNat

end

end A237660.P2411392951737169437

/-! ## A237660.P17741320860733911227

`A238192(A139391(n+1))`
-/

namespace A237660.P17741320860733911227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (A139391 (n + 1)).toNat

end

end A237660.P17741320860733911227

/-! ## A237660.P3570833278218686888

`A238192(A187012(n+2))`
-/

namespace A237660.P3570833278218686888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (A187012 (n + 2)).toNat

end

end A237660.P3570833278218686888

/-! ## A237660.P15957511062155102220

`A238192(A006370(n+1))`
-/

namespace A237660.P15957511062155102220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (A006370 (n + 1)).toNat

end

end A237660.P15957511062155102220

/-! ## A237660.P4564095303539183057

`A238192(A306546(n+1))`
-/

namespace A237660.P4564095303539183057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (A306546 (n + 1)).toNat

end

end A237660.P4564095303539183057

/-!
# A237661: Indices of records in A237660.

The programs for A237661, there is no canonical definition to state claims against.
-/

/-! ## A237661.P13913661053358048689

`A261814(∑[4^(n+1)]+1)`
-/

namespace A237661.P13913661053358048689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237661.P13913661053358048689

/-!
# A237662: Primes of the form 2^(k+l+m+1) - 2^(l+m+1) + 2^(m+1) + l - 2.

The programs for A237662, there is no canonical definition to state claims against.
-/

/-! ## A237662.P3597077609559949500

`or(A075552(n+1), A190427(A006080(n+1)))`
-/

namespace A237662.P3597077609559949500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075552 (n + 1)) (A190427 (A006080 (n + 1)).toNat)

end

end A237662.P3597077609559949500

/-! ## A237662.P7833910567453664800

`or(A002065(A273638(n+1)), A075552(n+1))`
-/

namespace A237662.P7833910567453664800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002065 (A273638 (n + 1)).toNat) (A075552 (n + 1))

end

end A237662.P7833910567453664800

/-! ## A237662.P11560859800734366450

`A327076(or(A075552(n+1), A078424(n+1)))`
-/

namespace A237662.P11560859800734366450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (Int.lor (A075552 (n + 1)) (A078424 (n + 1))).toNat

end

end A237662.P11560859800734366450

/-! ## A237662.P13744711901022381753

`∩[A344742(n+1), A000040(A060831(n+2))]`
-/

namespace A237662.P13744711901022381753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A060831 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237662.P13744711901022381753

/-! ## A237662.P16158769729400005544

`∩[A346447(n+1), A000040(A060831(n+2))]`
-/

namespace A237662.P16158769729400005544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A060831 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237662.P16158769729400005544

/-!
# A237664: Interpolation polynomial through n+1 points (0,1), (1,1), ..., (n-1,1) and (n,n) evaluated at 2n.

The programs for A237664, the canonical program `A237664.P11465749325762323749` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237664 has offset 0).

The definition of A237664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237664.P11465749325762323749

`(2*n)!*(n-1)/n!²+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A237664

/-- `(2*n)!*(n-1)/n!²+1` -/
def P11465749325762323749.Spec : Prop :=
  ∀ n, P11465749325762323749.a n = (A237664 n : ℚ)

end A237664

/-! ## A237664.P1837908274320134258

`(n+1)*A276666(n)+1`
-/

namespace A237664.P1837908274320134258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A276666 n + 1

end

end A237664.P1837908274320134258

namespace A237664

/-- `(n+1)*A276666(n)+1` -/
def P1837908274320134258.Spec : Prop :=
  ∀ n, P1837908274320134258.a n = A237664 n

end A237664

/-! ## A237664.P2465030624582136592

`(n-1)*A000984(n)+1`
-/

namespace A237664.P2465030624582136592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000984 n + 1

end

end A237664.P2465030624582136592

namespace A237664

/-- `(n-1)*A000984(n)+1` -/
def P2465030624582136592.Spec : Prop :=
  ∀ n, P2465030624582136592.a n = A237664 n

end A237664

/-! ## A237664.P2459640785219292800

`(n²-1)*A000108(n)+1`
-/

namespace A237664.P2459640785219292800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * A000108 n + 1

end

end A237664.P2459640785219292800

namespace A237664

/-- `(n²-1)*A000108(n)+1` -/
def P2459640785219292800.Spec : Prop :=
  ∀ n, P2459640785219292800.a n = A237664 n

end A237664

/-! ## A237664.P11706287540785293372

`(n-1)*record[A081668(n)]+1`
-/

namespace A237664.P11706287540785293372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A237664.P11706287540785293372

namespace A237664

/-- `(n-1)*record[A081668(n)]+1` -/
def P11706287540785293372.Spec : Prop :=
  ∀ n, P11706287540785293372.a n = A237664 n

end A237664

/-! ## A237664.P14493250920006590641

`(n-1)*record[A126869(n)]+1`
-/

namespace A237664.P14493250920006590641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A237664.P14493250920006590641

namespace A237664

/-- `(n-1)*record[A126869(n)]+1` -/
def P14493250920006590641.Spec : Prop :=
  ∀ n, P14493250920006590641.a n = A237664 n

end A237664

/-! ## A237664.P3693654704244888045

`A001405(2*n)*(n-1)+1`
-/

namespace A237664.P3693654704244888045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * ((n : ℤ) - 1) + 1

end

end A237664.P3693654704244888045

namespace A237664

/-- `A001405(2*n)*(n-1)+1` -/
def P3693654704244888045.Spec : Prop :=
  ∀ n, P3693654704244888045.a n = A237664 n

end A237664

/-! ## A237664.P11479225230084573886

`(n-1)*A323230(n+1)-(n-2)`
-/

namespace A237664.P11479225230084573886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A323230 (n + 1) - ((n : ℤ) - 2)

end

end A237664.P11479225230084573886

namespace A237664

/-- `(n-1)*A323230(n+1)-(n-2)` -/
def P11479225230084573886.Spec : Prop :=
  ∀ n, P11479225230084573886.a n = A237664 n

end A237664

/-! ## A237664.P2542865488969845166

`A276666(n)+A237622(n)`
-/

namespace A237664.P2542865488969845166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A237622 n

end

end A237664.P2542865488969845166

namespace A237664

/-- `A276666(n)+A237622(n)` -/
def P2542865488969845166.Spec : Prop :=
  ∀ n, P2542865488969845166.a n = A237664 n

end A237664

/-! ## A237664.P9718360245368244005

`A319924(n)-A000984(n)`
-/

namespace A237664.P9718360245368244005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319924 n - A000984 n

end

end A237664.P9718360245368244005

namespace A237664

/-- `A319924(n)-A000984(n)` -/
def P9718360245368244005.Spec : Prop :=
  ∀ n, P9718360245368244005.a n = A237664 n

end A237664

/-! ## A237664.P3105039244314637322

`record[A212303(n)-A014495(n)]`
-/

namespace A237664.P3105039244314637322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 n - A014495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237664.P3105039244314637322

namespace A237664

/-- `record[A212303(n)-A014495(n)]` -/
def P3105039244314637322.Spec : Prop :=
  ∀ n, P3105039244314637322.a n = A237664 n

end A237664

/-! ## A237664.P18077847858595037572

`A005430(n)+1-A000984(n)`
-/

namespace A237664.P18077847858595037572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n + (1 - A000984 n)

end

end A237664.P18077847858595037572

namespace A237664

/-- `A005430(n)+1-A000984(n)` -/
def P18077847858595037572.Spec : Prop :=
  ∀ n, P18077847858595037572.a n = A237664 n

end A237664

/-! ## A237664.P5342968165178297910

`A034275(n+1)-A000777(n)`
-/

namespace A237664.P5342968165178297910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034275 (n + 1) - A000777 n

end

end A237664.P5342968165178297910

namespace A237664

/-- `A034275(n+1)-A000777(n)` -/
def P5342968165178297910.Spec : Prop :=
  ∀ n, P5342968165178297910.a n = A237664 n

end A237664

/-! ## A237664.P11860328044664806401

`A110609(n)+1-A000108(n)`
-/

namespace A237664.P11860328044664806401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 n + (1 - A000108 n)

end

end A237664.P11860328044664806401

namespace A237664

/-- `A110609(n)+1-A000108(n)` -/
def P11860328044664806401.Spec : Prop :=
  ∀ n, P11860328044664806401.a n = A237664 n

end A237664

/-! ## A237664.P2660273512163203175

`A000984(n)*A023443(n)+1`
-/

namespace A237664.P2660273512163203175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A023443 n + 1

end

end A237664.P2660273512163203175

namespace A237664

/-- `A000984(n)*A023443(n)+1` -/
def P2660273512163203175.Spec : Prop :=
  ∀ n, P2660273512163203175.a n = A237664 n

end A237664

/-! ## A237664.P9573936788059073001

`A319924(n)-A001405(2*n)`
-/

namespace A237664.P9573936788059073001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319924 n - A001405 (2 * n)

end

end A237664.P9573936788059073001

namespace A237664

/-- `A319924(n)-A001405(2*n)` -/
def P9573936788059073001.Spec : Prop :=
  ∀ n, P9573936788059073001.a n = A237664 n

end A237664

/-! ## A237664.P14911589689672978224

`A212303(2*n)-A014495(2*n)`
-/

namespace A237664.P14911589689672978224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) - A014495 (2 * n)

end

end A237664.P14911589689672978224

namespace A237664

/-- `A212303(2*n)-A014495(2*n)` -/
def P14911589689672978224.Spec : Prop :=
  ∀ n, P14911589689672978224.a n = A237664 n

end A237664

/-! ## A237664.P7018186534563704557

`A100071(2*n)+1-A056040(2*n)`
-/

namespace A237664.P7018186534563704557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n) + (1 - A056040 (2 * n))

end

end A237664.P7018186534563704557

namespace A237664

/-- `A100071(2*n)+1-A056040(2*n)` -/
def P7018186534563704557.Spec : Prop :=
  ∀ n, P7018186534563704557.a n = A237664 n

end A237664

/-! ## A237664.P4590850067168486364

`A100071(2*n)+1-A126869(2*n)`
-/

namespace A237664.P4590850067168486364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n) + (1 - A126869 (2 * n))

end

end A237664.P4590850067168486364

namespace A237664

/-- `A100071(2*n)+1-A126869(2*n)` -/
def P4590850067168486364.Spec : Prop :=
  ∀ n, P4590850067168486364.a n = A237664 n

end A237664

/-! ## A237664.P9368354971487556623

`A212303(2*n)+1-A056040(2*n)`
-/

namespace A237664.P9368354971487556623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) + (1 - A056040 (2 * n))

end

end A237664.P9368354971487556623

namespace A237664

/-- `A212303(2*n)+1-A056040(2*n)` -/
def P9368354971487556623.Spec : Prop :=
  ∀ n, P9368354971487556623.a n = A237664 n

end A237664

/-!
# A237665: Number of partitions of n such that the distinct terms arranged in increasing order form a string of two or more consecutive integers.

The programs for A237665, there is no canonical definition to state claims against.
-/

/-! ## A237665.P2713278075433828186

`A034296(n)-(A032741(n)+1)`
-/

namespace A237665.P2713278075433828186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - (A032741 n + 1)

end

end A237665.P2713278075433828186

/-! ## A237665.P4216521129078585451

`A034296(n)-A000005(A028310(n))`
-/

namespace A237665.P4216521129078585451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - A000005 (A028310 n).toNat

end

end A237665.P4216521129078585451

/-! ## A237665.P5389918480460845351

`A034296(n)-A112329(A008574(n))`
-/

namespace A237665.P5389918480460845351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - A112329 (A008574 n).toNat

end

end A237665.P5389918480460845351

/-! ## A237665.P9173257559940620151

`A034296(n)-A320111(A257088(n))`
-/

namespace A237665.P9173257559940620151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - A320111 (A257088 n).toNat

end

end A237665.P9173257559940620151

/-! ## A237665.P13934832989730366056

`A034296(n)-A000005(A000007(n)+n)`
-/

namespace A237665.P13934832989730366056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - A000005 (A000007 n + (n : ℤ)).toNat

end

end A237665.P13934832989730366056

/-! ## A237665.P1839671744608730998

`A034296(n)-A238353(∑[n])`
-/

namespace A237665.P1839671744608730998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - A238353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237665.P1839671744608730998

/-! ## A237665.P11860209850013666803

`A238353(A179865(n+1)+1)`
-/

namespace A237665.P11860209850013666803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (A179865 (n + 1) + 1).toNat

end

end A237665.P11860209850013666803

/-! ## A237665.P8004312912357229007

`A238353(∑[n]+1)%A000041(n)`
-/

namespace A237665.P8004312912357229007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A000041 n)

end

end A237665.P8004312912357229007

/-! ## A237665.P6678686135888642675

`A238353(A000124(A000007(n)+n))`
-/

namespace A237665.P6678686135888642675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (A000124 (A000007 n + (n : ℤ)).toNat).toNat

end

end A237665.P6678686135888642675

/-! ## A237665.P2436109288937289077

`A238353(A000124(n))-A000007(n)`
-/

namespace A237665.P2436109288937289077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (A000124 n).toNat - A000007 n

end

end A237665.P2436109288937289077

/-!
# A237666: Number of partitions of n that include a pair of consecutive integers.

The programs for A237666, there is no canonical definition to state claims against.
-/

/-! ## A237666.P6253564334952572640

`A000041(n)-A116931(A028310(n))`
-/

namespace A237666.P6253564334952572640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A116931 (A028310 n).toNat

end

end A237666.P6253564334952572640

/-! ## A237666.P17919266081283139785

`A000041(n)-A116931(A000007(n)+n)`
-/

namespace A237666.P17919266081283139785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A116931 (A000007 n + (n : ℤ)).toNat

end

end A237666.P17919266081283139785

/-! ## A237666.P8316171471586985905

`A000041(n)-A116931(or(n, A000007(n)))`
-/

namespace A237666.P8316171471586985905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A116931 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A237666.P8316171471586985905

/-! ## A237666.P18405306960008635312

`A000041(n)-A116931(A004273(n)+1-n)`
-/

namespace A237666.P18405306960008635312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A116931 (A004273 n + (1 - (n : ℤ))).toNat

end

end A237666.P18405306960008635312

/-! ## A237666.P12715160110861336081

`A000837(n)+A018783(n)-A116931(A028310(n))`
-/

namespace A237666.P12715160110861336081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A116931 (A028310 n).toNat)

end

end A237666.P12715160110861336081

/-! ## A237666.P16112557971676313691

`A035363(2*n)-A116931(A028310(n))`
-/

namespace A237666.P16112557971676313691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A116931 (A028310 n).toNat

end

end A237666.P16112557971676313691

/-!
# A237667: Number of partitions of n such that no part is a sum of two or more other parts.

The programs for A237667, there is no canonical definition to state claims against.
-/

/-! ## A237667.P13015640239106661824

`A000041(n)-A237668(n)`
-/

namespace A237667.P13015640239106661824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A237668 n

end

end A237667.P13015640239106661824

/-! ## A237667.P2760221398396746869

`sqrt(A001255(n))-A237668(n)`
-/

namespace A237667.P2760221398396746869
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A237668 n : ℝ)

end

end A237667.P2760221398396746869

/-! ## A237667.P16244774904339663122

`∑[A002865(n)]-A237668(n)`
-/

namespace A237667.P16244774904339663122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237668 n

end

end A237667.P16244774904339663122

/-! ## A237667.P2695494185758462478

`A256193(∑[n])-A237668(n)`
-/

namespace A237667.P2695494185758462478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (∑ j ∈ Finset.range (n + 1), f1 j) - A237668 n

end

end A237667.P2695494185758462478

/-! ## A237667.P3949780442343761455

`A035363(2*n)-A237668(n)`
-/

namespace A237667.P3949780442343761455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A237668 n

end

end A237667.P3949780442343761455

/-! ## A237667.P16371334554193130379

`∑[A232697(n)]-(A237668(n)+n)`
-/

namespace A237667.P16371334554193130379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A237668 n + (n : ℤ))

end

end A237667.P16371334554193130379

/-! ## A237667.P12848283716953453890

`A000837(n)+A018783(n)-A237668(n)`
-/

namespace A237667.P12848283716953453890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A237668 n)

end

end A237667.P12848283716953453890

/-! ## A237667.P11535541874635621146

`A000009(n)+A047967(n)-A237668(n)`
-/

namespace A237667.P11535541874635621146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A237668 n)

end

end A237667.P11535541874635621146

/-! ## A237667.P16220632047717868080

`A027187(n)+A027193(n)-A237668(n)`
-/

namespace A237667.P16220632047717868080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A237668 n)

end

end A237667.P16220632047717868080

/-! ## A237667.P13368059745103708360

`A035363(n)+A086543(n)-A237668(n)`
-/

namespace A237667.P13368059745103708360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A237668 n)

end

end A237667.P13368059745103708360

/-! ## A237667.P17372090371285206192

`A096276(n)+A114324(n)-A237668(n)`
-/

namespace A237667.P17372090371285206192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n + (A114324 n - A237668 n)

end

end A237667.P17372090371285206192

/-! ## A237667.P13307563906794170454

`A000726(n)+A295341(n)-A237668(n)`
-/

namespace A237667.P13307563906794170454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A237668 n)

end

end A237667.P13307563906794170454

/-! ## A237667.P16348882452239676149

`A239259(n)+A239263(n)-A237668(n)`
-/

namespace A237667.P16348882452239676149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A237668 n)

end

end A237667.P16348882452239676149

/-! ## A237667.P13140308662541099803

`A332280(n)+A332281(n)-A237668(n)`
-/

namespace A237667.P13140308662541099803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A237668 n)

end

end A237667.P13140308662541099803

/-! ## A237667.P18262448211417254579

`A332283(n)+A332284(n)-A237668(n)`
-/

namespace A237667.P18262448211417254579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A237668 n)

end

end A237667.P18262448211417254579

/-! ## A237667.P17985522765294435861

`A143229(n)/A000070(n)-A237668(n)`
-/

namespace A237667.P17985522765294435861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A237668 n : ℚ)

end

end A237667.P17985522765294435861

/-!
# A237668: Number of partitions of n such that some part is a sum of two or more other parts.

The programs for A237668, there is no canonical definition to state claims against.
-/

/-! ## A237668.P4297826766842460457

`A000041(n)-A237667(n)`
-/

namespace A237668.P4297826766842460457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A237667 n

end

end A237668.P4297826766842460457

/-! ## A237668.P13676531110463549148

`sqrt(A001255(n))-A237667(n)`
-/

namespace A237668.P13676531110463549148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A237667 n : ℝ)

end

end A237668.P13676531110463549148

/-! ## A237668.P5591460264301814344

`∑[A002865(n)]-A237667(n)`
-/

namespace A237668.P5591460264301814344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237667 n

end

end A237668.P5591460264301814344

/-! ## A237668.P14797525676810023186

`A256193(∑[n])-A237667(n)`
-/

namespace A237668.P14797525676810023186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (∑ j ∈ Finset.range (n + 1), f1 j) - A237667 n

end

end A237668.P14797525676810023186

/-! ## A237668.P16710219899075006178

`A000065(n)+1-A237667(n)`
-/

namespace A237668.P16710219899075006178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A237667 n)

end

end A237668.P16710219899075006178

/-! ## A237668.P1528607146080069474

`A035363(2*n)-A237667(n)`
-/

namespace A237668.P1528607146080069474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A237667 n

end

end A237668.P1528607146080069474

/-! ## A237668.P16347947376916730552

`∑[A232697(n)]-(A237667(n)+n)`
-/

namespace A237668.P16347947376916730552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A237667 n + (n : ℤ))

end

end A237668.P16347947376916730552

/-! ## A237668.P4603619394849150569

`A035444(A008586(n))-A237667(n)`
-/

namespace A237668.P4603619394849150569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A237667 n

end

end A237668.P4603619394849150569

/-! ## A237668.P9112421199801705550

`A144064(A034856(n+1))-A237667(n)`
-/

namespace A237668.P9112421199801705550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A034856 (n + 1)).toNat - A237667 n

end

end A237668.P9112421199801705550

/-! ## A237668.P594426235844826997

`A000837(n)+A018783(n)-A237667(n)`
-/

namespace A237668.P594426235844826997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A237667 n)

end

end A237668.P594426235844826997

/-! ## A237668.P926212356180356422

`A000009(n)+A047967(n)-A237667(n)`
-/

namespace A237668.P926212356180356422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A237667 n)

end

end A237668.P926212356180356422

/-! ## A237668.P17515924550349176386

`A027187(n)+A027193(n)-A237667(n)`
-/

namespace A237668.P17515924550349176386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A237667 n)

end

end A237668.P17515924550349176386

/-! ## A237668.P15153027714146387181

`A035363(n)+A086543(n)-A237667(n)`
-/

namespace A237668.P15153027714146387181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A237667 n)

end

end A237668.P15153027714146387181

/-! ## A237668.P9934327176945854031

`A096276(n)+A114324(n)-A237667(n)`
-/

namespace A237668.P9934327176945854031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n + (A114324 n - A237667 n)

end

end A237668.P9934327176945854031

/-! ## A237668.P2173250816214674944

`A000726(n)+A295341(n)-A237667(n)`
-/

namespace A237668.P2173250816214674944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A237667 n)

end

end A237668.P2173250816214674944

/-! ## A237668.P10982244579453067319

`A239259(n)+A239263(n)-A237667(n)`
-/

namespace A237668.P10982244579453067319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A237667 n)

end

end A237668.P10982244579453067319

/-! ## A237668.P14602091464849683523

`A332280(n)+A332281(n)-A237667(n)`
-/

namespace A237668.P14602091464849683523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A237667 n)

end

end A237668.P14602091464849683523

/-! ## A237668.P4837118917163905156

`A332283(n)+A332284(n)-A237667(n)`
-/

namespace A237668.P4837118917163905156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A237667 n)

end

end A237668.P4837118917163905156

/-! ## A237668.P18207611602749031982

`A143229(n)/A000070(n)-A237667(n)`
-/

namespace A237668.P18207611602749031982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A237667 n : ℚ)

end

end A237668.P18207611602749031982

/-!
# A237669: Number of prime parts in the partitions of 3n into 3 parts.

The programs for A237669, there is no canonical definition to state claims against.
-/

/-! ## A237669.P3026903614954658233

`A237264(n+1)+A236762(n+1)+A236758(n+1)`
-/

namespace A237669.P3026903614954658233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237264 (n + 1) + A236762 (n + 1) + A236758 (n + 1)

end

end A237669.P3026903614954658233

/-! ## A237669.P15294793443598751463

`A309405(3*(n+1))`
-/

namespace A237669.P15294793443598751463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309405 (3 * (n + 1))

end

end A237669.P15294793443598751463

/-! ## A237669.P1773655075334971199

`record[A309405(A006368(n))]`
-/

namespace A237669.P1773655075334971199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309405 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237669.P1773655075334971199

/-! ## A237669.P7222653570902592375

`record[A309405(A257143(n))]`
-/

namespace A237669.P7222653570902592375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309405 (A257143 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237669.P7222653570902592375

/-! ## A237669.P11076666821592555201

`record[A309405(abs(A280167(n)))]`
-/

namespace A237669.P11076666821592555201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309405 |A280167 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237669.P11076666821592555201

/-!
# A237670: Inverse Moebius transform of Catalan numbers.

The programs for A237670, the canonical program `A237670.P18018902008574357370` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237670 has offset 1).

The definition of A237670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237670.P18018902008574357370

`∑{d}[n+1, A000108(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A237670

/-- `∑{d}[n+1, A000108(#)]` -/
def P18018902008574357370.Spec : Prop :=
  ∀ n, P18018902008574357370.a n = A237670 (n + 1)

theorem P18018902008574357370.correct : P18018902008574357370.Spec := by
  intro n
  simp only [A237670, Nat.add_sub_cancel]

end A237670

/-! ## A237670.P14380710642695071928

`∑{d}[n+1, A120588(#+1)]`
-/

namespace A237670.P14380710642695071928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120588 (d + 1)

end

end A237670.P14380710642695071928

namespace A237670

/-- `∑{d}[n+1, A120588(#+1)]` -/
def P14380710642695071928.Spec : Prop :=
  ∀ n, P14380710642695071928.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P5611376453605822421

`∑{d}[2*(n+1), A126120(#)]`
-/

namespace A237670.P5611376453605822421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126120 d

end

end A237670.P5611376453605822421

namespace A237670

/-- `∑{d}[2*(n+1), A126120(#)]` -/
def P5611376453605822421.Spec : Prop :=
  ∀ n, P5611376453605822421.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P8927186974610376427

`∑{d}[n+1, A208355(#+#)]`
-/

namespace A237670.P8927186974610376427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A208355 (d + d)

end

end A237670.P8927186974610376427

namespace A237670

/-- `∑{d}[n+1, A208355(#+#)]` -/
def P8927186974610376427.Spec : Prop :=
  ∀ n, P8927186974610376427.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P8089161993118315979

`∑{d}[n+1, A028304(A004277(#))]`
-/

namespace A237670.P8089161993118315979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A028304 (A004277 d).toNat

end

end A237670.P8089161993118315979

namespace A237670

/-- `∑{d}[n+1, A028304(A004277(#))]` -/
def P8089161993118315979.Spec : Prop :=
  ∀ n, P8089161993118315979.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P15435408758295367721

`∑{d}[n+1, A000005(#)*A002996((n+1)/#)]`
-/

namespace A237670.P15435408758295367721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A002996 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A237670.P15435408758295367721

namespace A237670

/-- `∑{d}[n+1, A000005(#)*A002996((n+1)/#)]` -/
def P15435408758295367721.Spec : Prop :=
  ∀ n, P15435408758295367721.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P14508393503287694464

`∑{d}[n+1, A001511(#)*A187916((n+1)/#)]`
-/

namespace A237670.P14508393503287694464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A187916 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A237670.P14508393503287694464

namespace A237670

/-- `∑{d}[n+1, A001511(#)*A187916((n+1)/#)]` -/
def P14508393503287694464.Spec : Prop :=
  ∀ n, P14508393503287694464.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P1828106459038995415

`∑{d}[n+1, A128899(A000217(#)+1)]`
-/

namespace A237670.P1828106459038995415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A128899 (A000217 d + 1).toNat

end

end A237670.P1828106459038995415

namespace A237670

/-- `∑{d}[n+1, A128899(A000217(#)+1)]` -/
def P1828106459038995415.Spec : Prop :=
  ∀ n, P1828106459038995415.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P4428176879243484238

`∑{d}[n+1, A039599(A000217(#))]`
-/

namespace A237670.P4428176879243484238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A039599 (A000217 d).toNat

end

end A237670.P4428176879243484238

namespace A237670

/-- `∑{d}[n+1, A039599(A000217(#))]` -/
def P4428176879243484238.Spec : Prop :=
  ∀ n, P4428176879243484238.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P2924835467334975338

`∑{d}[n+1, A259992(#²)]`
-/

namespace A237670.P2924835467334975338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A259992 (d ^ 2)

end

end A237670.P2924835467334975338

namespace A237670

/-- `∑{d}[n+1, A259992(#²)]` -/
def P2924835467334975338.Spec : Prop :=
  ∀ n, P2924835467334975338.a n = A237670 (n + 1)

end A237670

/-! ## A237670.P16767169293203659046

`∑{d}[n+1, A014413(#*#+1)/#]`
-/

namespace A237670.P16767169293203659046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A014413 (d * d + 1) : ℚ) / (d : ℚ)

end

end A237670.P16767169293203659046

namespace A237670

/-- `∑{d}[n+1, A014413(#*#+1)/#]` -/
def P16767169293203659046.Spec : Prop :=
  ∀ n, P16767169293203659046.a n = (A237670 (n + 1) : ℚ)

end A237670

/-!
# A237671: Let m_n denote the number which is obtained from n-base representation of m if its digits are written in nondecreasing order; then a(n) is the smallest period of the sequence which is defined by the recurrence b(0)=0, b(1)=1, b(k)=(b(k-1) + b(k-2))_n, for k>=2, or a(n)=0, if there is no such period.

The programs for A237671, there is no canonical definition to state claims against.
-/

/-! ## A237671.P13271081701102297842

`A001175(n+1)*A194436(A158652(n+1))`
-/

namespace A237671.P13271081701102297842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1) * A194436 (A158652 (n + 1)).toNat

end

end A237671.P13271081701102297842

/-!
# A237672: Number of (n+1) X (1+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237672, there is no canonical definition to state claims against.
-/

/-! ## A237672.P712146029026484869

`A237677(∑[n]+1)`
-/

namespace A237672.P712146029026484869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237672.P712146029026484869

/-! ## A237672.P10676226076801058959

`record[A237677(A267104(n+1))]`
-/

namespace A237672.P10676226076801058959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237672.P10676226076801058959

/-! ## A237672.P14751254648209687295

`record[A237677(A286245(n+1))]`
-/

namespace A237672.P14751254648209687295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237672.P14751254648209687295

/-! ## A237672.P11197690513650834516

`record[A010054(n)*A237677(n+1)]`
-/

namespace A237672.P11197690513650834516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237672.P11197690513650834516

/-! ## A237672.P12210997273968789447

`record[A103451(n)*A237677(n+1)]`
-/

namespace A237672.P12210997273968789447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A237677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237672.P12210997273968789447

/-!
# A237673: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237673, there is no canonical definition to state claims against.
-/

/-! ## A237673.P6655013264073690823

`A237677(∑[n+1]+2)`
-/

namespace A237673.P6655013264073690823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237673.P6655013264073690823

/-! ## A237673.P551877161864655506

`record[A010054(n)*A237677(n+2)]`
-/

namespace A237673.P551877161864655506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237677 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237673.P551877161864655506

/-! ## A237673.P1495510081744238332

`record[A237677(Δ[A003453(n+5)])]`
-/

namespace A237673.P1495510081744238332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237673.P1495510081744238332

/-! ## A237673.P11616485724578025401

`A237677(A000096(n+1))+A000035(2*n)`
-/

namespace A237673.P11616485724578025401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A237673.P11616485724578025401

/-!
# A237674: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237674, there is no canonical definition to state claims against.
-/

/-! ## A237674.P9070026846567814639

`A237677(∑[n+2]+4)`
-/

namespace A237674.P9070026846567814639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237674.P9070026846567814639

/-! ## A237674.P8564574830743397047

`A237677(A167614(n+1))+A025469(n)`
-/

namespace A237674.P8564574830743397047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A167614 (n + 1)).toNat + A025469 n

end

end A237674.P8564574830743397047

/-! ## A237674.P4737223466132386739

`A237677(A167614(n+1))+A059995(n)`
-/

namespace A237674.P4737223466132386739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A167614 (n + 1)).toNat + A059995 n

end

end A237674.P4737223466132386739

/-! ## A237674.P7008052473474107537

`A237677(A167614(n+1))+A064459(n)`
-/

namespace A237674.P7008052473474107537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A167614 (n + 1)).toNat + A064459 n

end

end A237674.P7008052473474107537

/-! ## A237674.P3203737388244268003

`A237677(A167614(n+1))+A108782(n)`
-/

namespace A237674.P3203737388244268003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A167614 (n + 1)).toNat + A108782 n

end

end A237674.P3203737388244268003

/-!
# A237675: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237675, there is no canonical definition to state claims against.
-/

/-! ## A237675.P10551193541587129520

`A237677(∑[n+3]+7)`
-/

namespace A237675.P10551193541587129520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237675.P10551193541587129520

/-!
# A237676: Number of (n+1) X (5+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237676, there is no canonical definition to state claims against.
-/

/-! ## A237676.P8941194970842444883

`A237677(A374005(n+1))`
-/

namespace A237676.P8941194970842444883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A374005 (n + 1)).toNat

end

end A237676.P8941194970842444883

/-! ## A237676.P9068870806374898606

`A237677(A167499(n+3))`
-/

namespace A237676.P9068870806374898606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A167499 (n + 3)).toNat

end

end A237676.P9068870806374898606

/-! ## A237676.P16048576566700173881

`A237677(A155212(n)+13)`
-/

namespace A237676.P16048576566700173881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237677 (A155212 n + 13).toNat

end

end A237676.P16048576566700173881

/-!
# A237678: Number of (n+1)X(1+1) 0..2 arrays colored with the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A237678, there is no canonical definition to state claims against.
-/

/-! ## A237678.P15295168401729850637

`A237683(∑[n]+1)`
-/

namespace A237678.P15295168401729850637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237678.P15295168401729850637

/-! ## A237678.P15182169058823510831

`record[A237683(A056534(n+1))]`
-/

namespace A237678.P15182169058823510831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237678.P15182169058823510831

/-! ## A237678.P16688037300261874752

`record[A237683(A114091(n+1))]`
-/

namespace A237678.P16688037300261874752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237678.P16688037300261874752

/-! ## A237678.P2377332388932260823

`record[A237683(A267104(n+1))]`
-/

namespace A237678.P2377332388932260823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237678.P2377332388932260823

/-! ## A237678.P2494251546128429055

`or(char[2], A237683(A000124(n)))`
-/

namespace A237678.P2494251546128429055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A237683 (A000124 n).toNat)

end

end A237678.P2494251546128429055

/-!
# A237679: Number of (n+1)X(2+1) 0..2 arrays colored with the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A237679, there is no canonical definition to state claims against.
-/

/-! ## A237679.P10359656445639677908

`A237683(∑[n+1]+2)`
-/

namespace A237679.P10359656445639677908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237679.P10359656445639677908

/-! ## A237679.P116337243353201089

`record[A237683(A114091(n+1)+1)]`
-/

namespace A237679.P116337243353201089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237679.P116337243353201089

/-! ## A237679.P16864807231775283243

`record[A010054(n)*A237683(n+2)]`
-/

namespace A237679.P16864807231775283243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237679.P16864807231775283243

/-! ## A237679.P5471235502751443656

`record[gcd(A215771(n+1), A237683(n+3))]`
-/

namespace A237679.P5471235502751443656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215771 (n + 1)) (A237683 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237679.P5471235502751443656

/-! ## A237679.P8701946543968175057

`record[A237683(abs(A201163(n)))]`
-/

namespace A237679.P8701946543968175057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237679.P8701946543968175057

/-!
# A237680: Number of (n+1)X(3+1) 0..2 arrays colored with the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A237680, there is no canonical definition to state claims against.
-/

/-! ## A237680.P13590307424367171248

`A237683(∑[n+2]+4)`
-/

namespace A237680.P13590307424367171248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237680.P13590307424367171248

/-! ## A237680.P8079681370911204555

`lcm(1-and(2, n), A237683(A167614(n+1)))`
-/

namespace A237680.P8079681370911204555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A237683 (A167614 (n + 1)).toNat)

end

end A237680.P8079681370911204555

/-! ## A237680.P2971590351208500805

`A237683(A167614(n+1))+A178798(n)`
-/

namespace A237680.P2971590351208500805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A167614 (n + 1)).toNat + A178798 n

end

end A237680.P2971590351208500805

/-! ## A237680.P18402650919640221484

`A237683(A167614(n+1))+A184964(n)`
-/

namespace A237680.P18402650919640221484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A167614 (n + 1)).toNat + A184964 n

end

end A237680.P18402650919640221484

/-! ## A237680.P5640831612118316361

`A237683(A167614(n+1))+A185043(n)`
-/

namespace A237680.P5640831612118316361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A167614 (n + 1)).toNat + A185043 n

end

end A237680.P5640831612118316361

/-!
# A237681: Number of (n+1)X(4+1) 0..2 arrays colored with the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A237681, there is no canonical definition to state claims against.
-/

/-! ## A237681.P7813582686273364314

`A237683(C(n+5, 2)-n)`
-/

namespace A237681.P7813582686273364314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (Nat.choose (n + 5) 2 - n)

end

end A237681.P7813582686273364314

/-! ## A237681.P12515276016153864913

`A237683(A374004(n+1))`
-/

namespace A237681.P12515276016153864913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A374004 (n + 1)).toNat

end

end A237681.P12515276016153864913

/-! ## A237681.P12315701285786429663

`A237683(A141214(n)+7)`
-/

namespace A237681.P12315701285786429663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A141214 n + 7).toNat

end

end A237681.P12315701285786429663

/-! ## A237681.P8316503745205517046

`A237683(A052905(n)+9)`
-/

namespace A237681.P8316503745205517046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A052905 n + 9).toNat

end

end A237681.P8316503745205517046

/-!
# A237682: Number of (n+1)X(5+1) 0..2 arrays colored with the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A237682, there is no canonical definition to state claims against.
-/

/-! ## A237682.P17213801280543778052

`A237683(A374005(n+1))`
-/

namespace A237682.P17213801280543778052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A374005 (n + 1)).toNat

end

end A237682.P17213801280543778052

/-! ## A237682.P4141940746023169499

`A237683(A167499(n+3))`
-/

namespace A237682.P4141940746023169499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A167499 (n + 3)).toNat

end

end A237682.P4141940746023169499

/-! ## A237682.P16241475921596060654

`A237683(A155212(n)+13)`
-/

namespace A237682.P16241475921596060654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237683 (A155212 n + 13).toNat

end

end A237682.P16241475921596060654

/-!
# A237684: a(n) = floor(n*prime(n) / Sum_{i<=n} prime(i)).

The programs for A237684, the canonical program `A237684.P6315179612299634331` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237684 has offset 1).

The definition of A237684 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A237684.P6315179612299634331

`floor(A033286(n+1)/A007504(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A237684

/-- `floor(A033286(n+1)/A007504(n+1))` -/
def P6315179612299634331.Spec : Prop :=
  ∀ n, P6315179612299634331.a n = A237684 (n + 1)

theorem P6315179612299634331.correct : P6315179612299634331.Spec := by
  intro n
  simp only [A237684, Nat.add_sub_cancel]

end A237684

/-!
# A237685: Number of partitions of n having depth 1; see Comments.

The programs for A237685, there is no canonical definition to state claims against.
-/

/-! ## A237685.P16844656394761310827

`Δ[A000070(n)]-A238003(n+1)`
-/

namespace A237685.P16844656394761310827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238003 (n + 1)

end

end A237685.P16844656394761310827

/-! ## A237685.P11466911045343971053

`record[A035363(n)]-A238003(n+1)`
-/

namespace A237685.P11466911045343971053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238003 (n + 1)

end

end A237685.P11466911045343971053

/-! ## A237685.P10501900731974272443

`record[A035444(n)]-A238003(n+1)`
-/

namespace A237685.P10501900731974272443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A238003 (n + 1)

end

end A237685.P10501900731974272443

/-! ## A237685.P4871392842168901355

`A000041(n+1)-A238003(n+1)`
-/

namespace A237685.P4871392842168901355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A238003 (n + 1)

end

end A237685.P4871392842168901355

/-! ## A237685.P13013869409879803166

`A353837(n+1)-A000009(n+1)`
-/

namespace A237685.P13013869409879803166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353837 (n + 1) - A000009 (n + 1)

end

end A237685.P13013869409879803166

/-!
# A237686: The number of P-positions in the game of Nim with up to four piles, allowing for piles of zero, such that the total number of objects in all piles doesn't exceed 2n.

The programs for A237686, there is no canonical definition to state claims against.
-/

/-! ## A237686.P1724803473530718595

`∑[A237711(n)]`
-/

namespace A237686.P1724803473530718595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237686.P1724803473530718595

/-! ## A237686.P12264100084859823989

`A237711(abs(1-n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A237686.P12264100084859823989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A237711 (|1 - (n : ℤ)| + 1).toNat + a (n - 1)

end

end A237686.P12264100084859823989

/-! ## A237686.P4263723486399584509

`a(n-1)+A237711(n)+A000007(n)` with `a(0)=1`
-/

namespace A237686.P4263723486399584509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A237711 n + A000007 n)

end

end A237686.P4263723486399584509

/-! ## A237686.P260609864090759900

`a(n-1)+A237711(n)%A126239(n+1)` with `a(0)=1`
-/

namespace A237686.P260609864090759900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A237711 n) (A126239 (n + 1))

end

end A237686.P260609864090759900

/-! ## A237686.P8995980145954547290

`∑[A303789(A342611(n+1))]`
-/

namespace A237686.P8995980145954547290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A342611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237686.P8995980145954547290

/-!
# A237687: Primes p with pi(p), pi(pi(p)) and pi(p^2) all prime, where pi(.) is given by A000720.

The programs for A237687, there is no canonical definition to state claims against.
-/

/-! ## A237687.P15592412701962887772

`∩[A038580(n+1), A237659(n+1)]`
-/

namespace A237687.P15592412701962887772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237687.P15592412701962887772

/-! ## A237687.P582343094856073560

`∩[A006450(A000040(n+1)), A237659(n+1)]`
-/

namespace A237687.P582343094856073560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237687.P582343094856073560

/-! ## A237687.P6246620584405514927

`∩[A038580(n+1), A237658(n+1)]`
-/

namespace A237687.P6246620584405514927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237687.P6246620584405514927

/-! ## A237687.P15431759513431508544

`∩[A006450(A000040(n+1)), A237658(n+1)]`
-/

namespace A237687.P15431759513431508544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237687.P15431759513431508544

/-! ## A237687.P6276929144895105110

`∩[A237659(n+1), A000040(A302592(n+1))]`
-/

namespace A237687.P6276929144895105110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A302592 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237687.P6276929144895105110

/-!
# A237688: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237688, there is no canonical definition to state claims against.
-/

/-! ## A237688.P4291403515372820379

`A237694(∑[n]+1)`
-/

namespace A237688.P4291403515372820379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237688.P4291403515372820379

/-! ## A237688.P2388210430152453318

`lcm(2, A237694(A000124(n)))`
-/

namespace A237688.P2388210430152453318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237694 (A000124 n).toNat)

end

end A237688.P2388210430152453318

/-! ## A237688.P5465214610915051817

`record[A237694(A249742(n+1))]`
-/

namespace A237688.P5465214610915051817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237688.P5465214610915051817

/-! ## A237688.P15216325634507326377

`record[A237694(A254052(n+1))]`
-/

namespace A237688.P15216325634507326377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237688.P15216325634507326377

/-! ## A237688.P7611338333566885836

`record[A010054(n)*A237694(n+1)]`
-/

namespace A237688.P7611338333566885836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237688.P7611338333566885836

/-!
# A237689: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237689, there is no canonical definition to state claims against.
-/

/-! ## A237689.P10722446883553522555

`A237694(∑[n+1]+2)`
-/

namespace A237689.P10722446883553522555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237689.P10722446883553522555

/-! ## A237689.P15163980625570392252

`A237694(A133263(n+1))-A308922(n)-A308923(n)`
-/

namespace A237689.P15163980625570392252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A133263 (n + 1)).toNat - A308922 n - A308923 n

end

end A237689.P15163980625570392252

/-! ## A237689.P14611406379202169331

`record[A237694(A117142(n+2))]`
-/

namespace A237689.P14611406379202169331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237689.P14611406379202169331

/-! ## A237689.P13908620289297278466

`record[A237694(Δ[A003453(n+5)])]`
-/

namespace A237689.P13908620289297278466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237689.P13908620289297278466

/-! ## A237689.P3385168085484972388

`record[A237694(A249742(2*(n+1))-1)]`
-/

namespace A237689.P3385168085484972388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A249742 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237689.P3385168085484972388

/-!
# A237690: Number of (n+1) X (3+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2 X 2 subblock equal.

The programs for A237690, there is no canonical definition to state claims against.
-/

/-! ## A237690.P12198994717742900110

`A237694(∑[n+2]+4)`
-/

namespace A237690.P12198994717742900110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237690.P12198994717742900110

/-! ## A237690.P12361450148465567686

`lcm((-1)^∑{e}[n+1, #], A237694(A167614(n+1)))`
-/

namespace A237690.P12361450148465567686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A237694 (A167614 (n + 1)).toNat)

end

end A237690.P12361450148465567686

/-! ## A237690.P12636969741106475827

`A237694(A167614(n+1))+A011732(n)`
-/

namespace A237690.P12636969741106475827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A167614 (n + 1)).toNat + A011732 n

end

end A237690.P12636969741106475827

/-! ## A237690.P15152201435508268059

`A237694(A167614(n+1))+A025443(n)`
-/

namespace A237690.P15152201435508268059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A167614 (n + 1)).toNat + A025443 n

end

end A237690.P15152201435508268059

/-! ## A237690.P4743430614660470231

`A237694(A167614(n+1))+A025444(n)`
-/

namespace A237690.P4743430614660470231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A167614 (n + 1)).toNat + A025444 n

end

end A237690.P4743430614660470231

/-!
# A237691: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237691, there is no canonical definition to state claims against.
-/

/-! ## A237691.P5488442166552941897

`A237694(C(n+5, 2)-n)`
-/

namespace A237691.P5488442166552941897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (Nat.choose (n + 5) 2 - n)

end

end A237691.P5488442166552941897

/-! ## A237691.P13745157015510109229

`A237694(A374004(n+1))`
-/

namespace A237691.P13745157015510109229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A374004 (n + 1)).toNat

end

end A237691.P13745157015510109229

/-! ## A237691.P11604752145973555101

`A237694(A145018(n+4))`
-/

namespace A237691.P11604752145973555101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A145018 (n + 4)).toNat

end

end A237691.P11604752145973555101

/-! ## A237691.P8873733839936378246

`A237694(A141214(n)+7)`
-/

namespace A237691.P8873733839936378246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A141214 n + 7).toNat

end

end A237691.P8873733839936378246

/-! ## A237691.P12008702953742704519

`A237694(A052905(n)+9)`
-/

namespace A237691.P12008702953742704519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A052905 n + 9).toNat

end

end A237691.P12008702953742704519

/-!
# A237692: Number of (n+1) X (5+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2 X 2 subblock equal.

The programs for A237692, there is no canonical definition to state claims against.
-/

/-! ## A237692.P6328980020048700801

`A237694(A374005(n+1))`
-/

namespace A237692.P6328980020048700801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A374005 (n + 1)).toNat

end

end A237692.P6328980020048700801

/-! ## A237692.P17184821016075177566

`A237694(A167499(n+3))`
-/

namespace A237692.P17184821016075177566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A167499 (n + 3)).toNat

end

end A237692.P17184821016075177566

/-! ## A237692.P7890445008071794487

`A237694(A155212(n)+13)`
-/

namespace A237692.P7890445008071794487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A155212 n + 13).toNat

end

end A237692.P7890445008071794487

/-! ## A237692.P15666336888146624194

`A237694(A056000(n)+15)`
-/

namespace A237692.P15666336888146624194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A056000 n + 15).toNat

end

end A237692.P15666336888146624194

/-! ## A237692.P3042082847775016353

`A237694(eq[7, A066657(n)])`
-/

namespace A237692.P3042082847775016353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237692.P3042082847775016353

/-!
# A237693: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237693, there is no canonical definition to state claims against.
-/

/-! ## A237693.P143822028010407725

`A237694(A374007(n+1))`
-/

namespace A237693.P143822028010407725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A374007 (n + 1)).toNat

end

end A237693.P143822028010407725

/-! ## A237693.P12696850491810039603

`A237694(A166136(n+4))`
-/

namespace A237693.P12696850491810039603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A166136 (n + 4)).toNat

end

end A237693.P12696850491810039603

/-! ## A237693.P2273647767966857144

`A237694(A167499(n+4)+1)`
-/

namespace A237693.P2273647767966857144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A167499 (n + 4) + 1).toNat

end

end A237693.P2273647767966857144

/-! ## A237693.P4731506053884202750

`A237694(A167487(n+4)-1)`
-/

namespace A237693.P4731506053884202750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237694 (A167487 (n + 4) - 1).toNat

end

end A237693.P4731506053884202750

/-!
# A237696: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237696, there is no canonical definition to state claims against.
-/

/-! ## A237696.P11922461578466662166

`A237703(∑[n]+1)`
-/

namespace A237696.P11922461578466662166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237696.P11922461578466662166

/-! ## A237696.P335146187583169370

`record[A237703(A114091(n+1))]`
-/

namespace A237696.P335146187583169370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237696.P335146187583169370

/-! ## A237696.P14362382353228984813

`record[A237703(A286234(n+1))]`
-/

namespace A237696.P14362382353228984813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237696.P14362382353228984813

/-! ## A237696.P7017522698369030203

`record[A237703(A286235(n+1))]`
-/

namespace A237696.P7017522698369030203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237696.P7017522698369030203

/-! ## A237696.P14809002664036454363

`record[A010054(n)*A237703(n+1)]`
-/

namespace A237696.P14809002664036454363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237696.P14809002664036454363

/-!
# A237697: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237697, there is no canonical definition to state claims against.
-/

/-! ## A237697.P15383300465696954066

`A237703(∑[n+1]+2)`
-/

namespace A237697.P15383300465696954066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237697.P15383300465696954066

/-! ## A237697.P15270520045598335157

`record[A237703(A114091(n+1)+1)]`
-/

namespace A237697.P15270520045598335157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237697.P15270520045598335157

/-! ## A237697.P970217267593126812

`record[A237703(A286235(n+1)+1)]`
-/

namespace A237697.P970217267593126812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237697.P970217267593126812

/-! ## A237697.P11565076562502317742

`record[A010054(n)*A237703(n+2)]`
-/

namespace A237697.P11565076562502317742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237703 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237697.P11565076562502317742

/-! ## A237697.P16015370015625604420

`record[root(A237703(n+3), A093561(n))]`
-/

namespace A237697.P16015370015625604420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237703 (n + 3) : ℝ) ^ (1 / (A093561 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237697.P16015370015625604420

/-!
# A237698: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237698, there is no canonical definition to state claims against.
-/

/-! ## A237698.P17607500924496056081

`A237703(∑[n+2]+4)`
-/

namespace A237698.P17607500924496056081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237698.P17607500924496056081

/-! ## A237698.P11824615421197648962

`lcm(2, A237703(A167614(n+1)))`
-/

namespace A237698.P11824615421197648962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237703 (A167614 (n + 1)).toNat)

end

end A237698.P11824615421197648962

/-! ## A237698.P6047104744692637296

`record[A237703(A198455(n+1)+4)]`
-/

namespace A237698.P6047104744692637296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A198455 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237698.P6047104744692637296

/-! ## A237698.P8417923532205321271

`A237703(A167614(n+1))+A011731(n)`
-/

namespace A237698.P8417923532205321271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A167614 (n + 1)).toNat + A011731 n

end

end A237698.P8417923532205321271

/-! ## A237698.P6445920129920229870

`A237703(A167614(n+1))+A025466(n)`
-/

namespace A237698.P6445920129920229870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (A167614 (n + 1)).toNat + A025466 n

end

end A237698.P6445920129920229870

/-!
# A237699: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237699, there is no canonical definition to state claims against.
-/

/-! ## A237699.P15926210129480501195

`A237703(∑[n+3]+7)`
-/

namespace A237699.P15926210129480501195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237703 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A237699.P15926210129480501195

