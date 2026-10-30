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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A001100: Triangle read by rows: T(n,k) = number of permutations of length n with exactly k rising or falling successions, for n >= 1, 0 <= k <= n-1.

The programs for A001100, there is no canonical definition to state claims against.
-/

/-! ## A001100.P1216564491641196686

`A040000(n)*A086856(n+1)`
-/

namespace A001100.P1216564491641196686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A086856 (n + 1)

end

end A001100.P1216564491641196686

/-! ## A001100.P5941240772678290729

`A036453(n+1)*A086856(n+1)`
-/

namespace A001100.P5941240772678290729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A086856 (n + 1)

end

end A001100.P5941240772678290729

/-! ## A001100.P8792900683573228892

`(A057427(n)+1)*A086856(n+1)`
-/

namespace A001100.P8792900683573228892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A086856 (n + 1)

end

end A001100.P8792900683573228892

/-! ## A001100.P5575679173773787537

`A086856(n+1)*A104435(n+1)`
-/

namespace A001100.P5575679173773787537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (n + 1) * A104435 (n + 1)

end

end A001100.P5575679173773787537

/-! ## A001100.P8769366662569922306

`2*A086856(n+1)-A000007(n)`
-/

namespace A001100.P8769366662569922306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086856 (n + 1) - A000007 n

end

end A001100.P8769366662569922306

/-! ## A001100.P1895306781236012593

`A020639(A000010(n+1))*A086856(n+1)`
-/

namespace A001100.P1895306781236012593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A086856 (n + 1)

end

end A001100.P1895306781236012593

/-! ## A001100.P8080795955065424725

`A001221(2*A000040(n+1))*A086856(n+1)`
-/

namespace A001100.P8080795955065424725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1)).toNat * A086856 (n + 1)

end

end A001100.P8080795955065424725

/-! ## A001100.P4081062309883717557

`A014963(A146541(A000523(n+1)))*A086856(n+1)`
-/

namespace A001100.P4081062309883717557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A146541 (A000523 (n + 1)).toNat).toNat * A086856 (n + 1)

end

end A001100.P4081062309883717557

/-! ## A001100.P16011944314941332768

`A000005(record[A002034(n+1)])*A086856(n+1)`
-/

namespace A001100.P16011944314941332768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A086856 (n + 1)

end

end A001100.P16011944314941332768

/-! ## A001100.P7993241965194392164

`(A000005(A077065(n+1))-2)*A086856(n+1)`
-/

namespace A001100.P7993241965194392164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (A077065 (n + 1)).toNat - 2) * A086856 (n + 1)

end

end A001100.P7993241965194392164

/-! ## A001100.P2426887133472649680

`A007318(A000005(A077065(n+1)))*A086856(n+1)`
-/

namespace A001100.P2426887133472649680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000005 (A077065 (n + 1)).toNat).toNat * A086856 (n + 1)

end

end A001100.P2426887133472649680

/-! ## A001100.P21871047972781361

`A086856(n+1)+A086856(n+1)%A001317(n)`
-/

namespace A001100.P21871047972781361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (n + 1) + Int.tmod (A086856 (n + 1)) (A001317 n)

end

end A001100.P21871047972781361

/-!
# A001101: Moran numbers: k such that k/(sum of digits of k) is prime.

The programs for A001101, there is no canonical definition to state claims against.
-/

/-! ## A001101.P10152330997584545372

`A334375(n+1)*A334376(n+1)`
-/

namespace A001101.P10152330997584545372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334375 (n + 1) * A334376 (n + 1)

end

end A001101.P10152330997584545372

/-! ## A001101.P9027455080130644880

`p?[A113315(n+1)]*A334376(n+1)`
-/

namespace A001101.P9027455080130644880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A334376 (n + 1)

end

end A001101.P9027455080130644880

/-! ## A001101.P16647569949483639232

`p?[A110367(n+1)]*A334376(n+1)`
-/

namespace A001101.P16647569949483639232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A334376 (n + 1)

end

end A001101.P16647569949483639232

/-! ## A001101.P9874319964509210609

`p?[A065517(A005349(n+1))]*A334376(n+1)`
-/

namespace A001101.P9874319964509210609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (A005349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A334376 (n + 1)

end

end A001101.P9874319964509210609

/-!
# A001102: Numbers k such that k / (sum of digits of k) is a square.

The programs for A001102, there is no canonical definition to state claims against.
-/

/-! ## A001102.P8450601682023658703

`∩[A005349(n+1), A236750(n+1)]`
-/

namespace A001102.P8450601682023658703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001102.P8450601682023658703

/-! ## A001102.P4457720150518152285

`filter[A236750(n+1), A188641(#)]`
-/

namespace A001102.P4457720150518152285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A001102.P4457720150518152285

/-! ## A001102.P17902944577417106015

`filter[A227224(n+2), A188641(#)]`
-/

namespace A001102.P17902944577417106015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227224 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A001102.P17902944577417106015

/-! ## A001102.P8014886250363237318

`∩[A005349(n+1), A227224(n+1)]`
-/

namespace A001102.P8014886250363237318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001102.P8014886250363237318

/-! ## A001102.P2822500998689438231

`∩[A227224(n+1), A263808(n+1)]`
-/

namespace A001102.P2822500998689438231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001102.P2822500998689438231

/-!
# A001103: Numbers k such that (k / product of digits of k) is 1 or a prime.

The programs for A001103, there is no canonical definition to state claims against.
-/

/-! ## A001103.P11673023514045711257

`A007602(lt[A060638(2*n), A008595(3*n)])`
-/

namespace A001103.P11673023514045711257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060638 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001103.P11673023514045711257

/-! ## A001103.P12534360599198424611

`A239086(A343682(n+1))`
-/

namespace A001103.P12534360599198424611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A343682 (n + 1)).toNat

end

end A001103.P12534360599198424611

/-! ## A001103.P4549769265411850153

`A239086(A343744(n+1))`
-/

namespace A001103.P4549769265411850153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A343744 (n + 1)).toNat

end

end A001103.P4549769265411850153

/-! ## A001103.P15743074601030937756

`filter[A050761(n), A188642(#)]`
-/

namespace A001103.P15743074601030937756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A001103.P15743074601030937756

/-! ## A001103.P11211515971194605761

`filter[A007602(n+1), A267959(#)]`
-/

namespace A001103.P11211515971194605761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A001103.P11211515971194605761

/-!
# A001104: Numbers k such that k / product of digits of k is a square.

The programs for A001104, there is no canonical definition to state claims against.
-/

/-! ## A001104.P408170043354374950

`∩[A007602(n+1), A066565(n+1)]`
-/

namespace A001104.P408170043354374950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001104.P408170043354374950

/-! ## A001104.P8720239111683516115

`∩[A066565(n+1), A180484(n+1)]`
-/

namespace A001104.P8720239111683516115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001104.P8720239111683516115

/-! ## A001104.P8507510639901532096

`filter[A066565(n+1), A188642(#)]`
-/

namespace A001104.P8507510639901532096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A001104.P8507510639901532096

/-! ## A001104.P11571272307608771673

`∩[A049101(n+1), A088472(n+1)]`
-/

namespace A001104.P11571272307608771673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001104.P11571272307608771673

/-! ## A001104.P13676353620548414003

`A049101(A032581(n+1))`
-/

namespace A001104.P13676353620548414003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049101 (A032581 (n + 1)).toNat

end

end A001104.P13676353620548414003

/-!
# A001105: a(n) = 2*n^2.

The programs for A001105, the canonical program `A001105.P6098599260439307493` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001105 has offset 0).

The definition of A001105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²` (program `A001105.P6098599260439307493`, by `A001105.P6098599260439307493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001105.P6098599260439307493

`2*n²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001105

/-- `2*n²` -/
def P6098599260439307493.Spec : Prop :=
  ∀ n, (P6098599260439307493.a n : ℤ) = A001105 n

theorem P6098599260439307493.correct : P6098599260439307493.Spec := by
  intro n
  simp only [A001105]

end A001105

/-!
# A001106: 9-gonal (or enneagonal or nonagonal) numbers: a(n) = n*(7*n-5)/2.

The programs for A001106, the canonical program `A001106.P14394773760670510598` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001106 has offset 0).

The definition of A001106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-5)/2` (program `A001106.P17499408810644743587`, by `A001106.P17499408810644743587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001106.P14497289623836397575

`(7*n-5)*n/2`
-/

namespace A001106.P14497289623836397575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((7 * n : ℤ) - 5) * (n : ℤ) : ℚ) / 2

end

end A001106.P14497289623836397575

namespace A001106

/-- `(7*n-5)*n/2` -/
def P14497289623836397575.Spec : Prop :=
  ∀ n, P14497289623836397575.a n = (A001106 n : ℚ)

theorem P14497289623836397575.correct : P14497289623836397575.Spec := by
  intro n
  induction n with
  | zero => simp [A001106, A001106.P14497289623836397575.a, A001106.P14394773760670510598.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001106, Nat.add_sub_cancel, A001106.P14497289623836397575.a, A001106.P14394773760670510598.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001106

/-! ## A001106.P17499408810644743587

`n*(7*n-5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001106.P17499408810644743587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 2

end

end A001106.P17499408810644743587

namespace A001106

/-- `n*(7*n-5)/2` -/
def P17499408810644743587.Spec : Prop :=
  ∀ n, P17499408810644743587.a n = (A001106 n : ℚ)

theorem P17499408810644743587.correct : P17499408810644743587.Spec := by
  intro n
  induction n with
  | zero => simp [A001106, A001106.P17499408810644743587.a, A001106.P14394773760670510598.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A001106, Nat.add_sub_cancel, A001106.P17499408810644743587.a, A001106.P14394773760670510598.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A001106

/-! ## A001106.P16855014538757087428

`ogf((x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A001106.P16855014538757087428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6] [1, -3, 3, -1] n

end

end A001106.P16855014538757087428

namespace A001106

/-- `ogf((x+6x^2)/(1-3x+3x^2-x^3))` -/
def P16855014538757087428.Spec : Prop :=
  ∀ n, P16855014538757087428.a n = A001106 n

end A001106

/-! ## A001106.P14394773760670510598

`a(n-1)+7*n-6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001106

/-- `a(n-1)+7*n-6` -/
def P14394773760670510598.Spec : Prop :=
  ∀ n, P14394773760670510598.a n = A001106 n

theorem P14394773760670510598.correct : P14394773760670510598.Spec := by
  intro n
  simp only [A001106]

end A001106

/-! ## A001106.P9550965329199226027

`A174738(7*n)`
-/

namespace A001106.P9550965329199226027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (7 * n)

end

end A001106.P9550965329199226027

namespace A001106

/-- `A174738(7*n)` -/
def P9550965329199226027.Spec : Prop :=
  ∀ n, P9550965329199226027.a n = A001106 n

end A001106

/-! ## A001106.P9760613953697911795

`7*C(n, 2)+n`
-/

namespace A001106.P9760613953697911795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2 + n

end

end A001106.P9760613953697911795

namespace A001106

/-- `7*C(n, 2)+n` -/
def P9760613953697911795.Spec : Prop :=
  ∀ n, (P9760613953697911795.a n : ℤ) = A001106 n

end A001106

/-! ## A001106.P6303654205519455879

`∑[a(n-1)+7]` with `a(0)=0, a(1)=1`
-/

namespace A001106.P6303654205519455879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001106.P6303654205519455879

namespace A001106

/-- `∑[a(n-1)+7]` -/
def P6303654205519455879.Spec : Prop :=
  ∀ n, (P6303654205519455879.a n : ℤ) = A001106 n

end A001106

/-! ## A001106.P6921502652545754463

`∑[ogf((x+6x^2)/(1-2x+x^2))]`
-/

namespace A001106.P6921502652545754463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001106.P6921502652545754463

namespace A001106

/-- `∑[ogf((x+6x^2)/(1-2x+x^2))]` -/
def P6921502652545754463.Spec : Prop :=
  ∀ n, P6921502652545754463.a n = A001106 n

end A001106

/-! ## A001106.P13863017585718830801

`6-∑[a(n-1)-7]` with `a(0)=6`
-/

namespace A001106.P13863017585718830801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001106.P13863017585718830801

namespace A001106

/-- `6-∑[a(n-1)-7]` -/
def P13863017585718830801.Spec : Prop :=
  ∀ n, P13863017585718830801.a n = A001106 n

end A001106

/-! ## A001106.P9259405738647159208

`C(3*n, 2)-∑[2*n]`
-/

namespace A001106.P9259405738647159208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001106.P9259405738647159208

namespace A001106

/-- `C(3*n, 2)-∑[2*n]` -/
def P9259405738647159208.Spec : Prop :=
  ∀ n, P9259405738647159208.a n = A001106 n

end A001106

/-! ## A001106.P17768938099006459295

`7*n-(6-a(n-1))` with `a(0)=0`
-/

namespace A001106.P17768938099006459295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - (6 - a (n - 1))

end

end A001106.P17768938099006459295

namespace A001106

/-- `7*n-(6-a(n-1))` -/
def P17768938099006459295.Spec : Prop :=
  ∀ n, P17768938099006459295.a n = A001106 n

end A001106

/-! ## A001106.P9430881428692380610

`A389608(n)-1`
-/

namespace A001106.P9430881428692380610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n - 1

end

end A001106.P9430881428692380610

namespace A001106

/-- `A389608(n)-1` -/
def P9430881428692380610.Spec : Prop :=
  ∀ n, P9430881428692380610.a n = A001106 n

end A001106

/-! ## A001106.P9314547054928807384

`A218471(n)-n`
-/

namespace A001106.P9314547054928807384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n - (n : ℤ)

end

end A001106.P9314547054928807384

namespace A001106

/-- `A218471(n)-n` -/
def P9314547054928807384.Spec : Prop :=
  ∀ n, P9314547054928807384.a n = A001106 n

end A001106

/-! ## A001106.P18140643132149259485

`floor(A239449(n)/2)`
-/

namespace A001106.P18140643132149259485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239449 n : ℚ) / 2⌋

end

end A001106.P18140643132149259485

namespace A001106

/-- `floor(A239449(n)/2)` -/
def P18140643132149259485.Spec : Prop :=
  ∀ n, P18140643132149259485.a n = A001106 n

end A001106

/-! ## A001106.P5318412085709788613

`A062708(n)-n²`
-/

namespace A001106.P5318412085709788613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n - (n ^ 2 : ℤ)

end

end A001106.P5318412085709788613

namespace A001106

/-- `A062708(n)-n²` -/
def P5318412085709788613.Spec : Prop :=
  ∀ n, P5318412085709788613.a n = A001106 n

end A001106

/-! ## A001106.P4194255826752858423

`A002939(n)-∑[n]`
-/

namespace A001106.P4194255826752858423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001106.P4194255826752858423

namespace A001106

/-- `A002939(n)-∑[n]` -/
def P4194255826752858423.Spec : Prop :=
  ∀ n, P4194255826752858423.a n = A001106 n

end A001106

/-! ## A001106.P1087439411199528930

`A022264(n)-2*n`
-/

namespace A001106.P1087439411199528930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - (2 * n : ℤ)

end

end A001106.P1087439411199528930

namespace A001106

/-- `A022264(n)-2*n` -/
def P1087439411199528930.Spec : Prop :=
  ∀ n, P1087439411199528930.a n = A001106 n

end A001106

/-! ## A001106.P6884270037773868314

`A022265(n)-3*n`
-/

namespace A001106.P6884270037773868314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - (3 * n : ℤ)

end

end A001106.P6884270037773868314

namespace A001106

/-- `A022265(n)-3*n` -/
def P6884270037773868314.Spec : Prop :=
  ∀ n, P6884270037773868314.a n = A001106 n

end A001106

/-! ## A001106.P4567121763985100554

`A186029(n)-4*n`
-/

namespace A001106.P4567121763985100554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n - (4 * n : ℤ)

end

end A001106.P4567121763985100554

namespace A001106

/-- `A186029(n)-4*n` -/
def P4567121763985100554.Spec : Prop :=
  ∀ n, P4567121763985100554.a n = A001106 n

end A001106

/-! ## A001106.P1382447507189344600

`A179986(n)-5*n`
-/

namespace A001106.P1382447507189344600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n - (5 * n : ℤ)

end

end A001106.P1382447507189344600

namespace A001106

/-- `A179986(n)-5*n` -/
def P1382447507189344600.Spec : Prop :=
  ∀ n, P1382447507189344600.a n = A001106 n

end A001106

/-!
# A001107: 10-gonal (or decagonal) numbers: a(n) = n*(4*n-3).

The programs for A001107, the canonical program `A001107.P15766833630772781234` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001107 has offset 0).

The definition of A001107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n-3)` (program `A001107.P15766833630772781234`, by `A001107.P15766833630772781234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001107.P15766833630772781234

`n*(4*n-3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001107

/-- `n*(4*n-3)` -/
def P15766833630772781234.Spec : Prop :=
  ∀ n, P15766833630772781234.a n = A001107 n

theorem P15766833630772781234.correct : P15766833630772781234.Spec := by
  intro n
  simp only [A001107]

end A001107

/-! ## A001107.P13816446084543626327

`ogf((x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A001107.P13816446084543626327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 7] [1, -3, 3, -1] n

end

end A001107.P13816446084543626327

namespace A001107

/-- `ogf((x+7x^2)/(1-3x+3x^2-x^3))` -/
def P13816446084543626327.Spec : Prop :=
  ∀ n, P13816446084543626327.a n = A001107 n

end A001107

/-! ## A001107.P17569727381181843861

`A118729(8*n)`
-/

namespace A001107.P17569727381181843861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (8 * n)

end

end A001107.P17569727381181843861

namespace A001107

/-- `A118729(8*n)` -/
def P17569727381181843861.Spec : Prop :=
  ∀ n, P17569727381181843861.a n = A001107 n

end A001107

/-! ## A001107.P4043078325290299093

`8*C(n, 2)+n`
-/

namespace A001107.P4043078325290299093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose n 2 + n

end

end A001107.P4043078325290299093

namespace A001107

/-- `8*C(n, 2)+n` -/
def P4043078325290299093.Spec : Prop :=
  ∀ n, (P4043078325290299093.a n : ℤ) = A001107 n

theorem P4043078325290299093.correct : P4043078325290299093.Spec := by
  intro n
  simp only [A001107, Nat.add_sub_cancel, A001107.P4043078325290299093.a, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001107

/-! ## A001107.P2934723434096985915

`∑[8+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A001107.P2934723434096985915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  8 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001107.P2934723434096985915

namespace A001107

/-- `∑[8+a(n-1)]` -/
def P2934723434096985915.Spec : Prop :=
  ∀ n, (P2934723434096985915.a n : ℤ) = A001107 n

end A001107

/-! ## A001107.P14833551058327306329

`∑[ogf((x+7x^2)/(1-2x+x^2))]`
-/

namespace A001107.P14833551058327306329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001107.P14833551058327306329

namespace A001107

/-- `∑[ogf((x+7x^2)/(1-2x+x^2))]` -/
def P14833551058327306329.Spec : Prop :=
  ∀ n, P14833551058327306329.a n = A001107 n

end A001107

/-! ## A001107.P3993956983173315129

`7-∑[a(n-1)-8]` with `a(0)=7`
-/

namespace A001107.P3993956983173315129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001107.P3993956983173315129

namespace A001107

/-- `7-∑[a(n-1)-8]` -/
def P3993956983173315129.Spec : Prop :=
  ∀ n, P3993956983173315129.a n = A001107 n

end A001107

/-! ## A001107.P648649235412037610

`xor(1, (n-1+n)²)+n`
-/

namespace A001107.P648649235412037610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1 + (n : ℤ)) ^ 2) + (n : ℤ)

end

end A001107.P648649235412037610

namespace A001107

/-- `xor(1, (n-1+n)²)+n` -/
def P648649235412037610.Spec : Prop :=
  ∀ n, P648649235412037610.a n = A001107 n

end A001107

/-! ## A001107.P17595703266509641788

`record[lcm(n, n+2)-n]-n`
-/

namespace A001107.P17595703266509641788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A001107.P17595703266509641788

namespace A001107

/-- `record[lcm(n, n+2)-n]-n` -/
def P17595703266509641788.Spec : Prop :=
  ∀ n, P17595703266509641788.a n = A001107 n

end A001107

/-! ## A001107.P15100966207962808287

`or(1, (n-1+n)²)+n-1`
-/

namespace A001107.P15100966207962808287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1 + (n : ℤ)) ^ 2) + ((n : ℤ) - 1)

end

end A001107.P15100966207962808287

namespace A001107

/-- `or(1, (n-1+n)²)+n-1` -/
def P15100966207962808287.Spec : Prop :=
  ∀ n, P15100966207962808287.a n = A001107 n

end A001107

/-! ## A001107.P76575785336107170

`filter[(n-1)², gcd(2, #)]+n-1`
-/

namespace A001107.P76575785336107170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.gcd 2 (f1 j) = 1) n) + ((n : ℤ) - 1)

end

end A001107.P76575785336107170

namespace A001107

/-- `filter[(n-1)², gcd(2, #)]+n-1` -/
def P76575785336107170.Spec : Prop :=
  ∀ n, P76575785336107170.a n = A001107 n

end A001107

/-! ## A001107.P5997629550268769627

`filter[(n-1)², and(1, #)]+n-1`
-/

namespace A001107.P5997629550268769627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.land 1 (f1 j) = 1) n) + ((n : ℤ) - 1)

end

end A001107.P5997629550268769627

namespace A001107

/-- `filter[(n-1)², and(1, #)]+n-1` -/
def P5997629550268769627.Spec : Prop :=
  ∀ n, P5997629550268769627.a n = A001107 n

end A001107

/-! ## A001107.P2322144887338930166

`(C(n+2, n+1)+n-3)²+n-1`
-/

namespace A001107.P2322144887338930166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) (n + 1) : ℤ) + ((n : ℤ) - 3)) ^ 2 + ((n : ℤ) - 1)

end

end A001107.P2322144887338930166

namespace A001107

/-- `(C(n+2, n+1)+n-3)²+n-1` -/
def P2322144887338930166.Spec : Prop :=
  ∀ n, P2322144887338930166.a n = A001107 n

theorem P2322144887338930166.correct : P2322144887338930166.Spec := by
  intro n
  simp only [A001107, Nat.add_sub_cancel, A001107.P2322144887338930166.a, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A001107

/-! ## A001107.P17569779093922326531

`gcd(n-1, a(n-1))+(n-1+n)²` with `a(0)=0`
-/

namespace A001107.P17569779093922326531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.gcd ((n : ℤ) - 1) (a (n - 1)) : ℤ) + ((n : ℤ) - 1 + (n : ℤ)) ^ 2

end

end A001107.P17569779093922326531

namespace A001107

/-- `gcd(n-1, a(n-1))+(n-1+n)²` -/
def P17569779093922326531.Spec : Prop :=
  ∀ n, P17569779093922326531.a n = A001107 n

end A001107

/-! ## A001107.P5507067074790405624

`a(n-1)+a(n-1)+8-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001107.P5507067074790405624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (8 - a (n - 2)))

end

end A001107.P5507067074790405624

namespace A001107

/-- `a(n-1)+a(n-1)+8-a(n-2)` -/
def P5507067074790405624.Spec : Prop :=
  ∀ n, P5507067074790405624.a n = A001107 n

theorem P5507067074790405624.correct : P5507067074790405624.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001107, Nat.add_sub_cancel, A001107.P5507067074790405624.a, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001107, Nat.add_sub_cancel, A001107.P5507067074790405624.a, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A001107

/-! ## A001107.P4804142638093882413

`8-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001107.P4804142638093882413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  8 - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A001107.P4804142638093882413

namespace A001107

/-- `8-(a(n-2)-a(n-1)-a(n-1))` -/
def P4804142638093882413.Spec : Prop :=
  ∀ n, P4804142638093882413.a n = A001107 n

theorem P4804142638093882413.correct : P4804142638093882413.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001107, Nat.add_sub_cancel, A001107.P4804142638093882413.a, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001107, Nat.add_sub_cancel, A001107.P4804142638093882413.a, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A001107

/-! ## A001107.P1050610399537068851

`A054552(n)-1`
-/

namespace A001107.P1050610399537068851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n - 1

end

end A001107.P1050610399537068851

namespace A001107

/-- `A054552(n)-1` -/
def P1050610399537068851.Spec : Prop :=
  ∀ n, P1050610399537068851.a n = A001107 n

theorem P1050610399537068851.correct : P1050610399537068851.Spec := by
  intro n
  simp only [A001107, Nat.add_sub_cancel, A001107.P1050610399537068851.a, A001107.P15766833630772781234.a, A054552, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001107

/-! ## A001107.P1746053812742739148

`A139271(n)/2`
-/

namespace A001107.P1746053812742739148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139271 n : ℚ) / 2

end

end A001107.P1746053812742739148

namespace A001107

/-- `A139271(n)/2` -/
def P1746053812742739148.Spec : Prop :=
  ∀ n, P1746053812742739148.a n = (A001107 n : ℚ)

theorem P1746053812742739148.correct : P1746053812742739148.Spec := by
  intro n
  simp only [A001107, Nat.add_sub_cancel, A001107.P1746053812742739148.a, A001107.P15766833630772781234.a, A139271, A139271.P9268409364969855600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001107

/-! ## A001107.P11892827614928487773

`A152767(n)/3`
-/

namespace A001107.P11892827614928487773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152767 n : ℚ) / 3

end

end A001107.P11892827614928487773

namespace A001107

/-- `A152767(n)/3` -/
def P11892827614928487773.Spec : Prop :=
  ∀ n, P11892827614928487773.a n = (A001107 n : ℚ)

theorem P11892827614928487773.correct : P11892827614928487773.Spec := by
  intro n
  simp only [A001107, Nat.add_sub_cancel, A001107.P11892827614928487773.a, A001107.P15766833630772781234.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001107

/-! ## A001107.P16833535238660788757

`A002939(n)-n`
-/

namespace A001107.P16833535238660788757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - (n : ℤ)

end

end A001107.P16833535238660788757

namespace A001107

/-- `A002939(n)-n` -/
def P16833535238660788757.Spec : Prop :=
  ∀ n, P16833535238660788757.a n = A001107 n

theorem P16833535238660788757.correct : P16833535238660788757.Spec := by
  intro n
  simp only [A001107, Nat.add_sub_cancel, A001107.P16833535238660788757.a, A001107.P15766833630772781234.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001107

/-!
# A001108: a(n)-th triangular number is a square: a(n+1) = 6*a(n) - a(n-1) + 2, with a(0) = 0, a(1) = 1.

The programs for A001108, the canonical program `A001108.P10275645002028030722` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001108 has offset 0).

The definition of A001108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001108.P15661105611502642676

`ogf((x+x^2)/(1-7x+7x^2-x^3))`
-/

namespace A001108.P15661105611502642676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -7, 7, -1] n

end

end A001108.P15661105611502642676

namespace A001108

/-- `ogf((x+x^2)/(1-7x+7x^2-x^3))` -/
def P15661105611502642676.Spec : Prop :=
  ∀ n, P15661105611502642676.a n = A001108 n

end A001108

/-! ## A001108.P10275645002028030722

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001108

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P10275645002028030722.Spec : Prop :=
  ∀ n, P10275645002028030722.a n = A001108 n

theorem P10275645002028030722.correct : P10275645002028030722.Spec := by
  intro n
  simp only [A001108]

end A001108

/-! ## A001108.P10500358658068315627

`(A001541(n)-1)/2`
-/

namespace A001108.P10500358658068315627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001541 n - 1 : ℚ) / 2

end

end A001108.P10500358658068315627

namespace A001108

/-- `(A001541(n)-1)/2` -/
def P10500358658068315627.Spec : Prop :=
  ∀ n, P10500358658068315627.a n = (A001108 n : ℚ)

end A001108

/-! ## A001108.P8357078804363798004

`floor(A001109(n)*sqrt(2))`
-/

namespace A001108.P8357078804363798004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001109 n : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A001108.P8357078804363798004

namespace A001108

/-- `floor(A001109(n)*sqrt(2))` -/
def P8357078804363798004.Spec : Prop :=
  ∀ n, P8357078804363798004.a n = A001108 n

end A001108

/-! ## A001108.P17704751969144898325

`A001333(n)²-1+n%2`
-/

namespace A001108.P17704751969144898325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n ^ 2 - 1 + ((n % 2 : ℕ) : ℤ)

end

end A001108.P17704751969144898325

namespace A001108

/-- `A001333(n)²-1+n%2` -/
def P17704751969144898325.Spec : Prop :=
  ∀ n, P17704751969144898325.a n = A001108 n

end A001108

/-! ## A001108.P9451936704611137004

`floor(1/4*(3+2*sqrt(2))^n)`
-/

namespace A001108.P9451936704611137004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 4 : ℝ) * (3 + 2 * Real.sqrt (2 : ℝ)) ^ n⌋

end

end A001108.P9451936704611137004

namespace A001108

/-- `floor(1/4*(3+2*sqrt(2))^n)` -/
def P9451936704611137004.Spec : Prop :=
  ∀ n, P9451936704611137004.a n = A001108 n

end A001108

/-! ## A001108.P17322661864932873659

`A001653(n+1)-A046090(n)`
-/

namespace A001108.P17322661864932873659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) - A046090 n

end

end A001108.P17322661864932873659

namespace A001108

/-- `A001653(n+1)-A046090(n)` -/
def P17322661864932873659.Spec : Prop :=
  ∀ n, P17322661864932873659.a n = A001108 n

end A001108

/-! ## A001108.P3655739941335684480

`∑[ogf((x+x^2)/(1-6x+x^2))]`
-/

namespace A001108.P3655739941335684480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001108.P3655739941335684480

namespace A001108

/-- `∑[ogf((x+x^2)/(1-6x+x^2))]` -/
def P3655739941335684480.Spec : Prop :=
  ∀ n, P3655739941335684480.a n = A001108 n

end A001108

/-! ## A001108.P11615807399312290119

`cosh(log((sqrt(2)+1)^n))²-1`
-/

namespace A001108.P11615807399312290119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.log ((Real.sqrt (2 : ℝ) + 1) ^ n)) ^ 2 - 1

end

end A001108.P11615807399312290119

namespace A001108

/-- `cosh(log((sqrt(2)+1)^n))²-1` -/
def P11615807399312290119.Spec : Prop :=
  ∀ n, P11615807399312290119.a n = (A001108 n : ℝ)

end A001108

/-! ## A001108.P14126499876310394132

`xor(-cosh(log((sqrt(2)+1)^n))², -1)`
-/

namespace A001108.P14126499876310394132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (-(Real.cosh (Real.log ((Real.sqrt (2 : ℝ) + 1) ^ n)) ^ 2))) (-1)

end

end A001108.P14126499876310394132

namespace A001108

/-- `xor(-cosh(log((sqrt(2)+1)^n))², -1)` -/
def P14126499876310394132.Spec : Prop :=
  ∀ n, P14126499876310394132.a n = A001108 n

end A001108

/-! ## A001108.P11630538148575759438

`floor(a(n-1)/(3-sqrt(8)))+3` with `a(0)=0, a(1)=1`
-/

namespace A001108.P11630538148575759438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 3

end

end A001108.P11630538148575759438

namespace A001108

/-- `floor(a(n-1)/(3-sqrt(8)))+3` -/
def P11630538148575759438.Spec : Prop :=
  ∀ n, P11630538148575759438.a n = A001108 n

end A001108

/-! ## A001108.P12698456527170126112

`6*a(n-1)+2-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001108.P12698456527170126112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) + (2 - a (n - 2))

end

end A001108.P12698456527170126112

namespace A001108

/-- `6*a(n-1)+2-a(n-2)` -/
def P12698456527170126112.Spec : Prop :=
  ∀ n, P12698456527170126112.a n = A001108 n

end A001108

/-! ## A001108.P1643324683694042078

`2-(a(n-2)-6*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001108.P1643324683694042078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 2) - 6 * a (n - 1))

end

end A001108.P1643324683694042078

namespace A001108

/-- `2-(a(n-2)-6*a(n-1))` -/
def P1643324683694042078.Spec : Prop :=
  ∀ n, P1643324683694042078.a n = A001108 n

end A001108

/-! ## A001108.P318533914637678941

`∑[lcm(6, a(n-1))-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A001108.P318533914637678941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001108.P318533914637678941

namespace A001108

/-- `∑[lcm(6, a(n-1))-a(n-2)]` -/
def P318533914637678941.Spec : Prop :=
  ∀ n, P318533914637678941.a n = A001108 n

end A001108

/-! ## A001108.P605652299731009708

`(lcm(2, round((sqrt(2)+1)^n))/2)²-char[2*n]`
-/

namespace A001108.P605652299731009708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ) / 2) ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A001108.P605652299731009708

namespace A001108

/-- `(lcm(2, round((sqrt(2)+1)^n))/2)²-char[2*n]` -/
def P605652299731009708.Spec : Prop :=
  ∀ n, P605652299731009708.a n = (A001108 n : ℚ)

end A001108

/-! ## A001108.P9234953901620365196

`A097076(2*n)`
-/

namespace A001108.P9234953901620365196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (2 * n)

end

end A001108.P9234953901620365196

namespace A001108

/-- `A097076(2*n)` -/
def P9234953901620365196.Spec : Prop :=
  ∀ n, P9234953901620365196.a n = A001108 n

end A001108

/-! ## A001108.P2824333657321026964

`∑[record[Δ[A215936(n)]]]`
-/

namespace A001108.P2824333657321026964
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001108.P2824333657321026964

namespace A001108

/-- `∑[record[Δ[A215936(n)]]]` -/
def P2824333657321026964.Spec : Prop :=
  ∀ n, P2824333657321026964.a n = A001108 n

end A001108

/-! ## A001108.P11683250100330383920

`A055997(n+1)-1`
-/

namespace A001108.P11683250100330383920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055997 (n + 1) - 1

end

end A001108.P11683250100330383920

namespace A001108

/-- `A055997(n+1)-1` -/
def P11683250100330383920.Spec : Prop :=
  ∀ n, P11683250100330383920.a n = A001108 n

end A001108

/-! ## A001108.P9101696394159557714

`A082639(n+1)/2`
-/

namespace A001108.P9101696394159557714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082639 (n + 1) : ℚ) / 2

end

end A001108.P9101696394159557714

namespace A001108

/-- `A082639(n+1)/2` -/
def P9101696394159557714.Spec : Prop :=
  ∀ n, P9101696394159557714.a n = (A001108 n : ℚ)

end A001108

/-! ## A001108.P16896194312079685901

`A097075(2*n)-1`
-/

namespace A001108.P16896194312079685901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (2 * n) - 1

end

end A001108.P16896194312079685901

namespace A001108

/-- `A097075(2*n)-1` -/
def P16896194312079685901.Spec : Prop :=
  ∀ n, P16896194312079685901.a n = A001108 n

end A001108

/-!
# A001109: a(n)^2 is a triangular number: a(n) = 6*a(n-1) - a(n-2) with a(0)=0, a(1)=1.

The programs for A001109, the canonical program `A001109.P14455961844001046772` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001109 has offset 0).

The definition of A001109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A001109.P14455961844001046772`, by `A001109.P14455961844001046772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001109.P8418295816807338284

`ogf(x/(1-6x+x^2))`
-/

namespace A001109.P8418295816807338284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 1] n

end

end A001109.P8418295816807338284

namespace A001109

/-- `ogf(x/(1-6x+x^2))` -/
def P8418295816807338284.Spec : Prop :=
  ∀ n, P8418295816807338284.a n = A001109 n

end A001109

/-! ## A001109.P14455961844001046772

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001109

/-- `6*a(n-1)-a(n-2)` -/
def P14455961844001046772.Spec : Prop :=
  ∀ n, P14455961844001046772.a n = A001109 n

theorem P14455961844001046772.correct : P14455961844001046772.Spec := by
  intro n
  simp only [A001109]

end A001109

/-! ## A001109.P15448830543364386752

`∑{#}[n, C(2*n, 2*#+1)*2^(#-1)]`
-/

namespace A001109.P15448830543364386752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * n) (2 * k + 1) : ℚ) * (2 : ℚ) ^ ((k : ℤ) - 1 : ℤ)

end

end A001109.P15448830543364386752

namespace A001109

/-- `∑{#}[n, C(2*n, 2*#+1)*2^(#-1)]` -/
def P15448830543364386752.Spec : Prop :=
  ∀ n, P15448830543364386752.a n = (A001109 n : ℚ)

end A001109

/-! ## A001109.P7306616406774568289

`A001542(n)/2`
-/

namespace A001109.P7306616406774568289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001542 n : ℚ) / 2

end

end A001109.P7306616406774568289

namespace A001109

/-- `A001542(n)/2` -/
def P7306616406774568289.Spec : Prop :=
  ∀ n, P7306616406774568289.a n = (A001109 n : ℚ)

end A001109

/-! ## A001109.P9351090906165205372

`A000129(2*n)/2`
-/

namespace A001109.P9351090906165205372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (2 * n) : ℚ) / 2

end

end A001109.P9351090906165205372

namespace A001109

/-- `A000129(2*n)/2` -/
def P9351090906165205372.Spec : Prop :=
  ∀ n, P9351090906165205372.a n = (A001109 n : ℚ)

end A001109

/-! ## A001109.P8952582150794622796

`A002965(4*n)/2`
-/

namespace A001109.P8952582150794622796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002965 (4 * n) : ℚ) / 2

end

end A001109.P8952582150794622796

namespace A001109

/-- `A002965(4*n)/2` -/
def P8952582150794622796.Spec : Prop :=
  ∀ n, P8952582150794622796.a n = (A001109 n : ℚ)

end A001109

/-! ## A001109.P461565197365375850

`ceil(A001108(n)/sqrt(2))`
-/

namespace A001109.P461565197365375850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001108 n : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A001109.P461565197365375850

namespace A001109

/-- `ceil(A001108(n)/sqrt(2))` -/
def P461565197365375850.Spec : Prop :=
  ∀ n, P461565197365375850.a n = A001109 n

end A001109

/-! ## A001109.P3095855330458775097

`A000129(n)*A001333(n)`
-/

namespace A001109.P3095855330458775097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A001333 n

end

end A001109.P3095855330458775097

namespace A001109

/-- `A000129(n)*A001333(n)` -/
def P3095855330458775097.Spec : Prop :=
  ∀ n, P3095855330458775097.a n = A001109 n

end A001109

/-! ## A001109.P8152878661591844776

`A002965(2*n)*A002965(2*n+1)`
-/

namespace A001109.P8152878661591844776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) * A002965 (2 * n + 1)

end

end A001109.P8152878661591844776

namespace A001109

/-- `A002965(2*n)*A002965(2*n+1)` -/
def P8152878661591844776.Spec : Prop :=
  ∀ n, P8152878661591844776.a n = A001109 n

end A001109

/-! ## A001109.P988588973345940165

`∑{#}[n-1, (2*#+1)*A001652(n-1-#)]+A000217(n)`
-/

namespace A001109.P988588973345940165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 * k + 1 : ℤ) * A001652 ((n : ℤ) - 1 - (k : ℤ)).toNat + A000217 n

end

end A001109.P988588973345940165

namespace A001109

/-- `∑{#}[n-1, (2*#+1)*A001652(n-1-#)]+A000217(n)` -/
def P988588973345940165.Spec : Prop :=
  ∀ n, P988588973345940165.a n = A001109 n

end A001109

/-! ## A001109.P14868091653028907470

`((1+sqrt(2))^(2*n)-(1-sqrt(2))^(2*n))/(4*sqrt(2))`
-/

namespace A001109.P14868091653028907470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) ^ (2 * n) - (1 - Real.sqrt (2 : ℝ)) ^ (2 * n)) / (4 * Real.sqrt (2 : ℝ))

end

end A001109.P14868091653028907470

namespace A001109

/-- `((1+sqrt(2))^(2*n)-(1-sqrt(2))^(2*n))/(4*sqrt(2))` -/
def P14868091653028907470.Spec : Prop :=
  ∀ n, P14868091653028907470.a n = (A001109 n : ℝ)

theorem P14868091653028907470.correct : P14868091653028907470.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001109, Nat.add_sub_cancel, A001109.P14868091653028907470.a, A001109.P14455961844001046772.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001109, Nat.add_sub_cancel, A001109.P14868091653028907470.a, A001109.P14455961844001046772.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001109

/-! ## A001109.P15935136252877751919

`A001653(n+1)-A038723(n)`
-/

namespace A001109.P15935136252877751919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) - A038723 n

end

end A001109.P15935136252877751919

namespace A001109

/-- `A001653(n+1)-A038723(n)` -/
def P15935136252877751919.Spec : Prop :=
  ∀ n, P15935136252877751919.a n = A001109 n

end A001109

/-! ## A001109.P380828674096343789

`∑[record[A116558(n)]]`
-/

namespace A001109.P380828674096343789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001109.P380828674096343789

namespace A001109

/-- `∑[record[A116558(n)]]` -/
def P380828674096343789.Spec : Prop :=
  ∀ n, P380828674096343789.a n = A001109 n

end A001109

/-! ## A001109.P2423188485587088159

`A204512(2*(n+1))`
-/

namespace A001109.P2423188485587088159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * (n + 1))

end

end A001109.P2423188485587088159

namespace A001109

/-- `A204512(2*(n+1))` -/
def P2423188485587088159.Spec : Prop :=
  ∀ n, P2423188485587088159.a n = A001109 n

end A001109

/-! ## A001109.P8945009817708340356

`∑[record[A215936(n+2)]]`
-/

namespace A001109.P8945009817708340356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001109.P8945009817708340356

namespace A001109

/-- `∑[record[A215936(n+2)]]` -/
def P8945009817708340356.Spec : Prop :=
  ∀ n, P8945009817708340356.a n = A001109 n

end A001109

/-! ## A001109.P10171885511540518238

`A105635(A004273(n))`
-/

namespace A001109.P10171885511540518238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (A004273 n).toNat

end

end A001109.P10171885511540518238

namespace A001109

/-- `A105635(A004273(n))` -/
def P10171885511540518238.Spec : Prop :=
  ∀ n, P10171885511540518238.a n = A001109 n

end A001109

/-! ## A001109.P14709683639257151024

`A110127(n)+A002002(n)`
-/

namespace A001109.P14709683639257151024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110127 n + A002002 n

end

end A001109.P14709683639257151024

namespace A001109

/-- `A110127(n)+A002002(n)` -/
def P14709683639257151024.Spec : Prop :=
  ∀ n, P14709683639257151024.a n = A001109 n

theorem P14709683639257151024.correct : P14709683639257151024.Spec := by
  intro n
  simp only [A001109, Nat.add_sub_cancel, A001109.P14709683639257151024.a, A001109.P14455961844001046772.a, A002002, A002002.P15451259860932126461.f1, A002002.P15451259860932126461.a, A110127, A110127.P5274012538628892863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001109

/-!
# A001110: Square triangular numbers: numbers that are both triangular and square.

The programs for A001110, the canonical program `A001110.P13771865071485673294` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001110 has offset 0).

The definition of A001110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001110.P1916230579199976429

`ogf((x+x^2)/(1-35x+35x^2-x^3))`
-/

namespace A001110.P1916230579199976429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -35, 35, -1] n

end

end A001110.P1916230579199976429

namespace A001110

/-- `ogf((x+x^2)/(1-35x+35x^2-x^3))` -/
def P1916230579199976429.Spec : Prop :=
  ∀ n, P1916230579199976429.a n = A001110 n

end A001110

/-! ## A001110.P13771865071485673294

`2+34*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001110

/-- `2+34*a(n-1)-a(n-2)` -/
def P13771865071485673294.Spec : Prop :=
  ∀ n, P13771865071485673294.a n = A001110 n

theorem P13771865071485673294.correct : P13771865071485673294.Spec := by
  intro n
  simp only [A001110]

end A001110

/-! ## A001110.P10682968618079205602

`(6*sqrt(a(n-1))-sqrt(a(n-2)))²` with `a(0)=0, a(1)=1`
-/

namespace A001110.P10682968618079205602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  (6 * Real.sqrt (a (n - 1)) - Real.sqrt (a (n - 2))) ^ 2

end

end A001110.P10682968618079205602

namespace A001110

/-- `(6*sqrt(a(n-1))-sqrt(a(n-2)))²` -/
def P10682968618079205602.Spec : Prop :=
  ∀ n, P10682968618079205602.a n = (A001110 n : ℝ)

end A001110

/-! ## A001110.P9537874366587347875

`A001109(n)²`
-/

namespace A001110.P9537874366587347875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n ^ 2

end

end A001110.P9537874366587347875

namespace A001110

/-- `A001109(n)²` -/
def P9537874366587347875.Spec : Prop :=
  ∀ n, P9537874366587347875.a n = A001110 n

end A001110

/-! ## A001110.P11853368650334608035

`(A001542(n)/2)²`
-/

namespace A001110.P11853368650334608035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001542 n : ℚ) / 2) ^ 2

end

end A001110.P11853368650334608035

namespace A001110

/-- `(A001542(n)/2)²` -/
def P11853368650334608035.Spec : Prop :=
  ∀ n, P11853368650334608035.a n = (A001110 n : ℚ)

end A001110

/-! ## A001110.P14809123285743560753

`(A000129(n)*A001333(n))²`
-/

namespace A001110.P14809123285743560753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000129 n * A001333 n) ^ 2

end

end A001110.P14809123285743560753

namespace A001110

/-- `(A000129(n)*A001333(n))²` -/
def P14809123285743560753.Spec : Prop :=
  ∀ n, P14809123285743560753.a n = A001110 n

end A001110

/-! ## A001110.P16132356624435794460

`((17+12*sqrt(2))^n+(17-12*sqrt(2))^n-2)/32`
-/

namespace A001110.P16132356624435794460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((17 + 12 * Real.sqrt (2 : ℝ)) ^ n + (17 - 12 * Real.sqrt (2 : ℝ)) ^ n - 2) / 32

end

end A001110.P16132356624435794460

namespace A001110

/-- `((17+12*sqrt(2))^n+(17-12*sqrt(2))^n-2)/32` -/
def P16132356624435794460.Spec : Prop :=
  ∀ n, P16132356624435794460.a n = (A001110 n : ℝ)

theorem P16132356624435794460.correct : P16132356624435794460.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001110, Nat.add_sub_cancel, A001110.P16132356624435794460.a, A001110.P13771865071485673294.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001110, Nat.add_sub_cancel, A001110.P16132356624435794460.a, A001110.P13771865071485673294.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001110

/-! ## A001110.P11838944372044502905

`C(A001108(n)+1, 2)`
-/

namespace A001110.P11838944372044502905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001108 n + 1).toNat 2

end

end A001110.P11838944372044502905

namespace A001110

/-- `C(A001108(n)+1, 2)` -/
def P11838944372044502905.Spec : Prop :=
  ∀ n, (P11838944372044502905.a n : ℤ) = A001110 n

end A001110

/-! ## A001110.P7180660697557578319

`A204504(2*(n+1))`
-/

namespace A001110.P7180660697557578319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204504 (2 * (n + 1))

end

end A001110.P7180660697557578319

namespace A001110

/-- `A204504(2*(n+1))` -/
def P7180660697557578319.Spec : Prop :=
  ∀ n, P7180660697557578319.a n = A001110 n

end A001110

/-! ## A001110.P5483489315638037969

`A204512(2*(n+1))²`
-/

namespace A001110.P5483489315638037969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * (n + 1)) ^ 2

end

end A001110.P5483489315638037969

namespace A001110

/-- `A204512(2*(n+1))²` -/
def P5483489315638037969.Spec : Prop :=
  ∀ n, P5483489315638037969.a n = A001110 n

end A001110

/-!
# A001111: Number of inequivalent Hadamard designs of order 4n.

The programs for A001111, there is no canonical definition to state claims against.
-/

/-! ## A001111.P7791041056469307737

`∏{p}[A308680(A258173(n)), #]`
-/

namespace A001111.P7791041056469307737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A258173 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A001111.P7791041056469307737

/-! ## A001111.P13983591392449741126

`∏{p}[A027415(A041033(n))-1, #]`
-/

namespace A001111.P13983591392449741126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027415 (A041033 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A001111.P13983591392449741126

/-!
# A001112: A continued fraction.

The programs for A001112, there is no canonical definition to state claims against.
-/

/-! ## A001112.P203025850605912281

`A284556(A303485(n)+n)`
-/

namespace A001112.P203025850605912281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A303485 n + (n : ℤ)).toNat

end

end A001112.P203025850605912281

/-! ## A001112.P3938200258751786443

`A217605(∑[A302940(n+1)])`
-/

namespace A001112.P3938200258751786443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217605 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001112.P3938200258751786443

/-!
# A001113: Decimal expansion of e.

The programs for A001113, there is no canonical definition to state claims against.
-/

/-! ## A001113.P12621211698919929957

`9-A121239(n)`
-/

namespace A001113.P12621211698919929957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (n + 1)

end

end A001113.P12621211698919929957

/-! ## A001113.P8554530815334721379

`floor(A091131(n)+acot(n))`
-/

namespace A001113.P8554530815334721379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091131 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A001113.P8554530815334721379

/-! ## A001113.P2665559213519709526

`A091131(n)+A000007(n)`
-/

namespace A001113.P2665559213519709526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1) + A000007 n

end

end A001113.P2665559213519709526

/-! ## A001113.P12137157603263641300

`A073212(n)-A000796(n)`
-/

namespace A001113.P12137157603263641300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A000796 (n + 1)

end

end A001113.P12137157603263641300

/-! ## A001113.P10861100181857958241

`A000796(n)-A187747(n)`
-/

namespace A001113.P10861100181857958241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A187747 n

end

end A001113.P10861100181857958241

/-! ## A001113.P9590874807988384043

`A054977(n)*A091131(n)`
-/

namespace A001113.P9590874807988384043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A091131 (n + 1)

end

end A001113.P9590874807988384043

/-! ## A001113.P9016654793850625346

`(A073212(n)-A187747(n))/2`
-/

namespace A001113.P9016654793850625346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073212 n - A187747 n : ℚ) / 2

end

end A001113.P9016654793850625346

/-! ## A001113.P10706008576215594780

`A073212(n)+1-A123152(n+1)`
-/

namespace A001113.P10706008576215594780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n + (1 - A123152 (n + 1))

end

end A001113.P10706008576215594780

/-! ## A001113.P17161876553610905731

`A123152(n+1)-(A187747(n)+1)`
-/

namespace A001113.P17161876553610905731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - (A187747 n + 1)

end

end A001113.P17161876553610905731

/-! ## A001113.P8988693691314741660

`gcd(2, A000040(n+1))*A091131(n)`
-/

namespace A001113.P8988693691314741660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A091131 (n + 1)

end

end A001113.P8988693691314741660

/-! ## A001113.P8692341245337810595

`A228239(n+1)+A231325(n+1)-A000796(n)`
-/

namespace A001113.P8692341245337810595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1) + (A231325 (n + 1) - A000796 (n + 1))

end

end A001113.P8692341245337810595

/-! ## A001113.P10722815112619589408

`A110779(Δ[n²])`
-/

namespace A001113.P10722815112619589408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001113.P10722815112619589408

/-! ## A001113.P990312084285336711

`A001355(2*(n+1))`
-/

namespace A001113.P990312084285336711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

end

end A001113.P990312084285336711

/-! ## A001113.P9991680860800673323

`dr(A110779(2*n+1))`
-/

namespace A001113.P9991680860800673323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A110779 (2 * n + 1))

end

end A001113.P9991680860800673323

/-! ## A001113.P8768588750310389788

`A001355(n+2+n)%17`
-/

namespace A001113.P8768588750310389788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (n + 2 + n)) 17

end

end A001113.P8768588750310389788

/-! ## A001113.P3228653477195276643

`dr(A001355(A004275(n+2)))`
-/

namespace A001113.P3228653477195276643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001355 (A004275 (n + 2)).toNat)

end

end A001113.P3228653477195276643

/-! ## A001113.P825296674158833582

`A078424(3*n+2)`
-/

namespace A001113.P825296674158833582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (3 * n + 2)

end

end A001113.P825296674158833582

/-! ## A001113.P715530612101141782

`A073212(n)-Δ[A059582(n)]`
-/

namespace A001113.P715530612101141782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - (f1 (n + 1) - f1 n)

end

end A001113.P715530612101141782

/-! ## A001113.P9498789433300083293

`∑{#}[n, (-1)^(n-#)*C(n, #)*A126082(#)]`
-/

namespace A001113.P9498789433300083293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A126082 k : ℚ)

end

end A001113.P9498789433300083293

/-! ## A001113.P13973516537010053719

`A095711(∑[n]+1)`
-/

namespace A001113.P13973516537010053719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001113.P13973516537010053719

/-!
# A001114: Increasing blocks of digits of e.

The programs for A001114, there is no canonical definition to state claims against.
-/

/-! ## A001114.P15889289814204947392

`A096909(A355585(n)+A000612(n))`
-/

namespace A001114.P15889289814204947392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096909 (A355585 n + A000612 n).toNat

end

end A001114.P15889289814204947392

/-!
# A001115: Maximal number of pairwise relatively prime polynomials of degree n over GF(2).

The programs for A001115, there is no canonical definition to state claims against.
-/

/-! ## A001115.P16439040090721371234

`A354928(record[A078012(n)])`
-/

namespace A001115.P16439040090721371234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001115.P16439040090721371234

/-! ## A001115.P10202667931241269697

`A354928(A068921(n+1))`
-/

namespace A001115.P10202667931241269697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (A068921 (n + 1)).toNat

end

end A001115.P10202667931241269697

/-! ## A001115.P7320508065187113537

`A002024(A333865(n+2))`
-/

namespace A001115.P7320508065187113537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A333865 (n + 2)).toNat

end

end A001115.P7320508065187113537

/-! ## A001115.P1761382830802286574

`A354928(A000930(n+2))`
-/

namespace A001115.P1761382830802286574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (A000930 (n + 2)).toNat

end

end A001115.P1761382830802286574

/-! ## A001115.P905300494903271916

`A003056(A073192(n)+A000079(n))`
-/

namespace A001115.P905300494903271916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A073192 n + A000079 n).toNat

end

end A001115.P905300494903271916

/-!
# A001116: Maximal kissing number of an n-dimensional lattice.

The programs for A001116, there is no canonical definition to state claims against.
-/

/-! ## A001116.P3138325482356646762

`A002336(∑{digits}[n, #])`
-/

namespace A001116.P3138325482356646762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A001116.P3138325482356646762

/-! ## A001116.P16667098103346498437

`A002336(∏{digits}[n, #])`
-/

namespace A001116.P16667098103346498437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A001116.P16667098103346498437

/-! ## A001116.P15541283798158718786

`A002336(n)%344`
-/

namespace A001116.P15541283798158718786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002336 n) 344

end

end A001116.P15541283798158718786

/-! ## A001116.P124014359382029329

`2*A028924(∑{digits}[n, #])`
-/

namespace A001116.P124014359382029329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028924 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A001116.P124014359382029329

/-! ## A001116.P8934586609508740476

`xor(1, A259343(∑{digits}[n, #]))`
-/

namespace A001116.P8934586609508740476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A259343 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A001116.P8934586609508740476

/-!
# A001117: a(n) = 3^n - 3*2^n + 3.

The programs for A001117, the canonical program `A001117.P5586515972310678558` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001117 has offset 0).

The definition of A001117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-3*2^n+3` (program `A001117.P5586515972310678558`, by `A001117.P5586515972310678558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001117.P9444451951067171764

`ogf((1-6x+11x^2)/(1-6x+11x^2-6x^3))`
-/

namespace A001117.P9444451951067171764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 11] [1, -6, 11, -6] n

end

end A001117.P9444451951067171764

namespace A001117

/-- `ogf((1-6x+11x^2)/(1-6x+11x^2-6x^3))` -/
def P9444451951067171764.Spec : Prop :=
  ∀ n, P9444451951067171764.a n = A001117 n

end A001117

/-! ## A001117.P5586515972310678558

`3^n-3*2^n+3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001117

/-- `3^n-3*2^n+3` -/
def P5586515972310678558.Spec : Prop :=
  ∀ n, P5586515972310678558.a n = A001117 n

theorem P5586515972310678558.correct : P5586515972310678558.Spec := by
  intro n
  simp only [A001117]

end A001117

/-! ## A001117.P3437960747301665127

`xor(1, 3^n-abs(4-3*2^n))`
-/

namespace A001117.P3437960747301665127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 ^ n : ℤ) - |4 - (3 * 2 ^ n : ℤ)|)

end

end A001117.P3437960747301665127

namespace A001117

/-- `xor(1, 3^n-abs(4-3*2^n))` -/
def P3437960747301665127.Spec : Prop :=
  ∀ n, P3437960747301665127.a n = A001117 n

end A001117

/-! ## A001117.P3516384901627884191

`abs(xor(1, 3^n-∑[2^n])-(2^n-1))`
-/

namespace A001117.P3516384901627884191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) - ((2 ^ n : ℤ) - 1)|

end

end A001117.P3516384901627884191

namespace A001117

/-- `abs(xor(1, 3^n-∑[2^n])-(2^n-1))` -/
def P3516384901627884191.Spec : Prop :=
  ∀ n, P3516384901627884191.a n = A001117 n

end A001117

/-! ## A001117.P18152068762091222456

`abs(1-A094729(n))`
-/

namespace A001117.P18152068762091222456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A094729 n|

end

end A001117.P18152068762091222456

namespace A001117

/-- `abs(1-A094729(n))` -/
def P18152068762091222456.Spec : Prop :=
  ∀ n, P18152068762091222456.a n = A001117 n

end A001117

/-! ## A001117.P3809746441634812731

`3*(a(n-1)-A122958(n))` with `a(0)=1`
-/

namespace A001117.P3809746441634812731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) - A122958 n)

end

end A001117.P3809746441634812731

namespace A001117

/-- `3*(a(n-1)-A122958(n))` -/
def P3809746441634812731.Spec : Prop :=
  ∀ n, P3809746441634812731.a n = A001117 n

end A001117

/-! ## A001117.P6672054736374075773

`abs(A000225(n)-A101052(n))`
-/

namespace A001117.P6672054736374075773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A101052 n|

end

end A001117.P6672054736374075773

namespace A001117

/-- `abs(A000225(n)-A101052(n))` -/
def P6672054736374075773.Spec : Prop :=
  ∀ n, P6672054736374075773.a n = A001117 n

end A001117

/-! ## A001117.P10917751166692813020

`abs(A028243(n+1)-A000918(n))`
-/

namespace A001117.P10917751166692813020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028243 (n + 1) - A000918 n|

end

end A001117.P10917751166692813020

namespace A001117

/-- `abs(A028243(n+1)-A000918(n))` -/
def P10917751166692813020.Spec : Prop :=
  ∀ n, P10917751166692813020.a n = A001117 n

end A001117

/-! ## A001117.P3494864162866971261

`abs(A000918(n)-(A101052(n)-1))`
-/

namespace A001117.P3494864162866971261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000918 n - (A101052 n - 1)|

end

end A001117.P3494864162866971261

namespace A001117

/-- `abs(A000918(n)-(A101052(n)-1))` -/
def P3494864162866971261.Spec : Prop :=
  ∀ n, P3494864162866971261.a n = A001117 n

end A001117

/-! ## A001117.P1515850958387966134

`abs(A099942(2*n)-A034472(n))`
-/

namespace A001117.P1515850958387966134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099942 (2 * n) - A034472 n|

end

end A001117.P1515850958387966134

namespace A001117

/-- `abs(A099942(2*n)-A034472(n))` -/
def P1515850958387966134.Spec : Prop :=
  ∀ n, P1515850958387966134.a n = A001117 n

end A001117

/-! ## A001117.P11236192790864910749

`abs(3-(A000079(n+1)-A304973(Δ[n²])))`
-/

namespace A001117.P11236192790864910749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (A000079 (n + 1) - A304973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)|

end

end A001117.P11236192790864910749

namespace A001117

/-- `abs(3-(A000079(n+1)-A304973(Δ[n²])))` -/
def P11236192790864910749.Spec : Prop :=
  ∀ n, P11236192790864910749.a n = A001117 n

end A001117

/-! ## A001117.P17538336088379391818

`gcd(2*A094033(n), A317839(A008864(n+1)))`
-/

namespace A001117.P17538336088379391818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A094033 n) (A317839 (A008864 (n + 1)).toNat)

end

end A001117.P17538336088379391818

namespace A001117

/-- `gcd(2*A094033(n), A317839(A008864(n+1)))` -/
def P17538336088379391818.Spec : Prop :=
  ∀ n, (P17538336088379391818.a n : ℤ) = A001117 n

end A001117

/-! ## A001117.P13452508268565243568

`A001551(n)%A290718(n+1)`
-/

namespace A001117.P13452508268565243568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001551 n) (A290718 (n + 1))

end

end A001117.P13452508268565243568

namespace A001117

/-- `A001551(n)%A290718(n+1)` -/
def P13452508268565243568.Spec : Prop :=
  ∀ n, P13452508268565243568.a n = A001117 n

end A001117

/-! ## A001117.P11581944725584344321

`and(A094729(n)-1, A267851(n))`
-/

namespace A001117.P11581944725584344321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094729 n - 1) (A267851 n)

end

end A001117.P11581944725584344321

namespace A001117

/-- `and(A094729(n)-1, A267851(n))` -/
def P11581944725584344321.Spec : Prop :=
  ∀ n, P11581944725584344321.a n = A001117 n

end A001117

/-! ## A001117.P8631539065991353751

`and(A094729(A028310(n)), A267851(n))`
-/

namespace A001117.P8631539065991353751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094729 (A028310 n).toNat) (A267851 n)

end

end A001117.P8631539065991353751

namespace A001117

/-- `and(A094729(A028310(n)), A267851(n))` -/
def P8631539065991353751.Spec : Prop :=
  ∀ n, P8631539065991353751.a n = A001117 n

end A001117

/-! ## A001117.P6688879430120021173

`A155597(n)%(A000244(n)+2)`
-/

namespace A001117.P6688879430120021173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155597 n) (A000244 n + 2)

end

end A001117.P6688879430120021173

namespace A001117

/-- `A155597(n)%(A000244(n)+2)` -/
def P6688879430120021173.Spec : Prop :=
  ∀ n, P6688879430120021173.a n = A001117 n

end A001117

/-! ## A001117.P1322926072043769975

`A000400(n)%record[A175840(n)+3]`
-/

namespace A001117.P1322926072043769975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A001117.P1322926072043769975

namespace A001117

/-- `A000400(n)%record[A175840(n)+3]` -/
def P1322926072043769975.Spec : Prop :=
  ∀ n, P1322926072043769975.a n = A001117 n

end A001117

/-! ## A001117.P17507837273549491058

`abs(A094034(n)+1-A094735(n))`
-/

namespace A001117.P17507837273549491058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094034 n + (1 - A094735 n)|

end

end A001117.P17507837273549491058

namespace A001117

/-- `abs(A094034(n)+1-A094735(n))` -/
def P17507837273549491058.Spec : Prop :=
  ∀ n, P17507837273549491058.a n = A001117 n

end A001117

/-!
# A001118: Number of labeled ordered set partitions into 5 parts for n>=1, a(0)=1.

The programs for A001118, the canonical program `A001118.P3670932318669876472` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001118 has offset 0).

The definition of A001118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001118.P3670932318669876472

`∑{#}[4, (-1)^#*C(5, #)*(5-#)^n]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001118

/-- `∑{#}[4, (-1)^#*C(5, #)*(5-#)^n]` -/
def P3670932318669876472.Spec : Prop :=
  ∀ n, P3670932318669876472.a n = A001118 n

theorem P3670932318669876472.correct : P3670932318669876472.Spec := by
  intro n
  simp only [A001118]

end A001118

/-! ## A001118.P17062280791428320278

`round(sqrt(n²+1))+A056456(A004277(n))-n`
-/

namespace A001118.P17062280791428320278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (A056456 (A004277 n).toNat - (n : ℤ))

end

end A001118.P17062280791428320278

namespace A001118

/-- `round(sqrt(n²+1))+A056456(A004277(n))-n` -/
def P17062280791428320278.Spec : Prop :=
  ∀ n, P17062280791428320278.a n = A001118 n

end A001118

/-! ## A001118.P13987002305484172323

`A056456(A004277(n))+A000007(n)`
-/

namespace A001118.P13987002305484172323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056456 (A004277 n).toNat + A000007 n

end

end A001118.P13987002305484172323

namespace A001118

/-- `A056456(A004277(n))+A000007(n)` -/
def P13987002305484172323.Spec : Prop :=
  ∀ n, P13987002305484172323.a n = A001118 n

end A001118

/-! ## A001118.P4343973798703982144

`A056456(A053438(n))+A000007(n)`
-/

namespace A001118.P4343973798703982144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056456 (A053438 n).toNat + A000007 n

end

end A001118.P4343973798703982144

namespace A001118

/-- `A056456(A053438(n))+A000007(n)` -/
def P4343973798703982144.Spec : Prop :=
  ∀ n, P4343973798703982144.a n = A001118 n

end A001118

/-! ## A001118.P14824902334769677103

`A056491(A004280(n+1))+A000007(n)`
-/

namespace A001118.P14824902334769677103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056491 (A004280 (n + 1)).toNat + A000007 n

end

end A001118.P14824902334769677103

namespace A001118

/-- `A056491(A004280(n+1))+A000007(n)` -/
def P14824902334769677103.Spec : Prop :=
  ∀ n, P14824902334769677103.a n = A001118 n

end A001118

/-! ## A001118.P7444701724281432602

`A056456(A053438(n))+A000095(A008458(n))`
-/

namespace A001118.P7444701724281432602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056456 (A053438 n).toNat + A000095 (A008458 n).toNat

end

end A001118.P7444701724281432602

namespace A001118

/-- `A056456(A053438(n))+A000095(A008458(n))` -/
def P7444701724281432602.Spec : Prop :=
  ∀ n, P7444701724281432602.a n = A001118 n

end A001118

/-! ## A001118.P3276515651645409173

`A261764(A000217(n))+A056456(A053438(n))`
-/

namespace A001118.P3276515651645409173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261764 (A000217 n).toNat + A056456 (A053438 n).toNat

end

end A001118.P3276515651645409173

namespace A001118

/-- `A261764(A000217(n))+A056456(A053438(n))` -/
def P3276515651645409173.Spec : Prop :=
  ∀ n, P3276515651645409173.a n = A001118 n

end A001118

/-! ## A001118.P1541490610164338427

`A056456(A053438(n))+A000095(A053438(n)²)`
-/

namespace A001118.P1541490610164338427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056456 (A053438 n).toNat + A000095 (A053438 n ^ 2).toNat

end

end A001118.P1541490610164338427

namespace A001118

/-- `A056456(A053438(n))+A000095(A053438(n)²)` -/
def P1541490610164338427.Spec : Prop :=
  ∀ n, P1541490610164338427.a n = A001118 n

end A001118

/-!
# A001120: a(0) = a(1) = 1; for n > 1, a(n) = n*a(n-1) + (-1)^n.

The programs for A001120, the canonical program `A001120.P10123618780373831103` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001120 has offset 0).

The definition of A001120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(-1)^n` (program `A001120.P10123618780373831103`, by `A001120.P10123618780373831103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001120.P10123618780373831103

`n*a(n-1)+(-1)^n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001120

/-- `n*a(n-1)+(-1)^n` -/
def P10123618780373831103.Spec : Prop :=
  ∀ n, P10123618780373831103.a n = A001120 n

theorem P10123618780373831103.correct : P10123618780373831103.Spec := by
  intro n
  simp only [A001120]

end A001120

/-! ## A001120.P8588743530592119942

`(n-1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001120.P8588743530592119942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  ((n : ℤ) - 1) * (a (n - 1) + a (n - 2))

end

end A001120.P8588743530592119942

namespace A001120

/-- `(n-1)*(a(n-1)+a(n-2))` -/
def P8588743530592119942.Spec : Prop :=
  ∀ n, P8588743530592119942.a n = A001120 n

end A001120

/-! ## A001120.P10649540448337061471

`n!+round(n!/e)`
-/

namespace A001120.P10649540448337061471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + SequenceMachineLib.roundAway ((Nat.factorial n : ℝ) / Real.exp 1)

end

end A001120.P10649540448337061471

namespace A001120

/-- `n!+round(n!/e)` -/
def P10649540448337061471.Spec : Prop :=
  ∀ n, P10649540448337061471.a n = A001120 n

end A001120

/-! ## A001120.P2917128885632105074

`xor(1, a(n-1)*n)` with `a(0)=1, a(1)=1`
-/

namespace A001120.P2917128885632105074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor 1 (a (n - 1) * n)

end

end A001120.P2917128885632105074

namespace A001120

/-- `xor(1, a(n-1)*n)` -/
def P2917128885632105074.Spec : Prop :=
  ∀ n, (P2917128885632105074.a n : ℤ) = A001120 n

end A001120

/-! ## A001120.P7852809515369526795

`n!+floor((n!+1)/e)`
-/

namespace A001120.P7852809515369526795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + ⌊(Nat.factorial n + 1 : ℝ) / Real.exp 1⌋

end

end A001120.P7852809515369526795

namespace A001120

/-- `n!+floor((n!+1)/e)` -/
def P7852809515369526795.Spec : Prop :=
  ∀ n, P7852809515369526795.a n = A001120 n

end A001120

/-! ## A001120.P12495926870284988452

`xor(1, a(n-1)/tan(acot(n)))` with `a(0)=1, a(1)=1`
-/

namespace A001120.P12495926870284988452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A001120.P12495926870284988452

namespace A001120

/-- `xor(1, a(n-1)/tan(acot(n)))` -/
def P12495926870284988452.Spec : Prop :=
  ∀ n, P12495926870284988452.a n = A001120 n

end A001120

/-! ## A001120.P6142856144978008412

`xor(1, a(n-1)/cot(atan(n)))` with `a(0)=1, a(1)=1`
-/

namespace A001120.P6142856144978008412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A001120.P6142856144978008412

namespace A001120

/-- `xor(1, a(n-1)/cot(atan(n)))` -/
def P6142856144978008412.Spec : Prop :=
  ∀ n, P6142856144978008412.a n = A001120 n

end A001120

/-! ## A001120.P10762823836544073014

`xor(1, a(n-1)/n^(-1))` with `a(0)=1, a(1)=1`
-/

namespace A001120.P10762823836544073014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A001120.P10762823836544073014

namespace A001120

/-- `xor(1, a(n-1)/n^(-1))` -/
def P10762823836544073014.Spec : Prop :=
  ∀ n, P10762823836544073014.a n = A001120 n

end A001120

/-! ## A001120.P9097716499477731631

`(-1)^n+n*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A001120.P9097716499477731631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (-1) ^ n + (n : ℤ) * a (n - 1)

end

end A001120.P9097716499477731631

namespace A001120

/-- `(-1)^n+n*a(n-1)` -/
def P9097716499477731631.Spec : Prop :=
  ∀ n, P9097716499477731631.a n = A001120 n

theorem P9097716499477731631.correct : P9097716499477731631.Spec := by
  intro n
  simp only [A001120, Nat.add_sub_cancel, A001120.P9097716499477731631.a, A001120.P10123618780373831103.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001120

/-! ## A001120.P8598691659271686223

`xor(1, floor(n*a(floor(n²/(n+1)))))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001120.P8598691659271686223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor 1 (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A001120.P8598691659271686223

namespace A001120

/-- `xor(1, floor(n*a(floor(n²/(n+1)))))` -/
def P8598691659271686223.Spec : Prop :=
  ∀ n, (P8598691659271686223.a n : ℤ) = A001120 n

end A001120

/-!
# A001121: Number of doubly-regular tournaments of order 4n-1.

The programs for A001121, there is no canonical definition to state claims against.
-/

/-! ## A001121.P7831727537051966094

`A107938(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A001121.P7831727537051966094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  A107938 (a (n - 1)).toNat

end

end A001121.P7831727537051966094

/-!
# A001122: Primes with primitive root 2.

The programs for A001122, there is no canonical definition to state claims against.
-/

/-! ## A001122.P3515740881221788626

`A241040(n)+a(n-1)` with `a(0)=3`
-/

namespace A001122.P3515740881221788626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A241040 n + a (n - 1)

end

end A001122.P3515740881221788626

/-! ## A001122.P13001826177828597977

`A050229(3+n)`
-/

namespace A001122.P13001826177828597977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (3 + n)

end

end A001122.P13001826177828597977

/-! ## A001122.P9499782808042229721

`A071642(n+3)+1`
-/

namespace A001122.P9499782808042229721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071642 (n + 3) + 1

end

end A001122.P9499782808042229721

/-! ## A001122.P12144501230471198230

`p?[A139099(n+1)]`
-/

namespace A001122.P12144501230471198230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001122.P12144501230471198230

/-! ## A001122.P9902587739214616041

`p?[A167791(n+1)]`
-/

namespace A001122.P9902587739214616041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001122.P9902587739214616041

/-! ## A001122.P17235244841924717900

`∩[A042999(n+1), A139099(n+1)]`
-/

namespace A001122.P17235244841924717900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001122.P17235244841924717900

/-! ## A001122.P16904319686700491874

`∩[A003629(n+1), A007885(n+1)]`
-/

namespace A001122.P16904319686700491874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001122.P16904319686700491874

/-! ## A001122.P2856699024372444

`A217948(n+1)-1`
-/

namespace A001122.P2856699024372444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217948 (n + 1) - 1

end

end A001122.P2856699024372444

/-! ## A001122.P14217149639409007174

`2*A051733(n+1)-1`
-/

namespace A001122.P14217149639409007174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051733 (n + 1) - 1

end

end A001122.P14217149639409007174

/-! ## A001122.P1946811348517080550

`∩[A007885(n+1), A040100(n+1)]`
-/

namespace A001122.P1946811348517080550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001122.P1946811348517080550

/-! ## A001122.P5712766368940837476

`∩[A007885(n+1), A045316(n+1)]`
-/

namespace A001122.P5712766368940837476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001122.P5712766368940837476

/-! ## A001122.P2063060090226332988

`∩[A007885(n+1), A014662(n+1)]`
-/

namespace A001122.P2063060090226332988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001122.P2063060090226332988

/-! ## A001122.P9402599132172014534

`∩[A179538(n+1), A014662(n+1)]`
-/

namespace A001122.P9402599132172014534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001122.P9402599132172014534

/-! ## A001122.P17549417652033257503

`∩[A007885(n+1), A059349(n+1)]`
-/

namespace A001122.P17549417652033257503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001122.P17549417652033257503

/-! ## A001122.P13946731173261833917

`∩[A007885(n+1), A045403(n+1)]`
-/

namespace A001122.P13946731173261833917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001122.P13946731173261833917

/-! ## A001122.P13418533194153382442

`A179194(n+1)-2`
-/

namespace A001122.P13418533194153382442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179194 (n + 1) - 2

end

end A001122.P13418533194153382442

/-! ## A001122.P7447105416665542665

`record[A014664(n+2)+1]`
-/

namespace A001122.P7447105416665542665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001122.P7447105416665542665

/-! ## A001122.P6161049158670841256

`A000040(A072190(n+1))`
-/

namespace A001122.P6161049158670841256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072190 (n + 1)).toNat

end

end A001122.P6161049158670841256

/-! ## A001122.P5693982354353423951

`A065091(eq[2, A001918(n+1)])`
-/

namespace A001122.P5693982354353423951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001122.P5693982354353423951

/-! ## A001122.P16330074665754473389

`A065091(eq[2, A268616(n+1)])`
-/

namespace A001122.P16330074665754473389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001122.P16330074665754473389

/-!
# A001123: Primes with 3 as smallest primitive root.

The programs for A001123, there is no canonical definition to state claims against.
-/

/-! ## A001123.P15859108205798580481

`∩[A019334(n+1), A048976(n+1)]`
-/

namespace A001123.P15859108205798580481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001123.P15859108205798580481

/-! ## A001123.P14477651462586513680

`∩[A048976(n+1), A167792(n+1)]`
-/

namespace A001123.P14477651462586513680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001123.P14477651462586513680

/-! ## A001123.P7392191412332967368

`∩[A019334(n+1), A216838(n+1)]`
-/

namespace A001123.P7392191412332967368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001123.P7392191412332967368

/-! ## A001123.P15622823090758241222

`∩[A167792(n+1), A216838(n+1)]`
-/

namespace A001123.P15622823090758241222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001123.P15622823090758241222

/-! ## A001123.P14238683019174769794

`A045319(eq[3, A001918(1+n)])`
-/

namespace A001123.P14238683019174769794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001123.P14238683019174769794

/-! ## A001123.P6021651515860180180

`A045344(eq[3, A001918(n+1)])`
-/

namespace A001123.P6021651515860180180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001123.P6021651515860180180

/-! ## A001123.P3503623619446927434

`A065091(eq[3, A001918(n+1)])`
-/

namespace A001123.P3503623619446927434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001123.P3503623619446927434

/-! ## A001123.P8026740520557494167

`A000040(eq[3, A001918(n+1)]+1)`
-/

namespace A001123.P8026740520557494167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A001123.P8026740520557494167

/-! ## A001123.P8913085504188375312

`A000040(eq[3, A002233(n+1)]+1)`
-/

namespace A001123.P8913085504188375312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A001123.P8913085504188375312

/-! ## A001123.P4589579468253729081

`A045319(eq[1, A268616(n+1)-2])`
-/

namespace A001123.P4589579468253729081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268616 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001123.P4589579468253729081

/-! ## A001123.P1182836527328887979

`A045344(eq[1, A268616(n+1)-2])`
-/

namespace A001123.P1182836527328887979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268616 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001123.P1182836527328887979

/-! ## A001123.P3560265410866290182

`A065091(eq[1, A268616(n+1)-2])`
-/

namespace A001123.P3560265410866290182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268616 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001123.P3560265410866290182

/-! ## A001123.P17262290400718897201

`A000040(eq[3, A122028(n+3)]+3)`
-/

namespace A001123.P17262290400718897201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A001123.P17262290400718897201

/-! ## A001123.P2656049179656092711

`p?[(4-A001918(n+1))*A000040(n+1)]`
-/

namespace A001123.P2656049179656092711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A001918 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001123.P2656049179656092711

/-! ## A001123.P8522985829423427729

`∩[A019334(n+1), A317649(n+1)]`
-/

namespace A001123.P8522985829423427729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001123.P8522985829423427729

/-! ## A001123.P10454526668427217798

`p?[(A002233(n+1)-2)*A000040(n+1)]`
-/

namespace A001123.P10454526668427217798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002233 (n + 1) - 2) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001123.P10454526668427217798

/-! ## A001123.P5159346999120194797

`∩[A019334(n+1), A216848(n+1)]`
-/

namespace A001123.P5159346999120194797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001123.P5159346999120194797

/-! ## A001123.P7137413079436786900

`p?[eq[3, A046145(n)]]`
-/

namespace A001123.P7137413079436786900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A001123.P7137413079436786900

/-! ## A001123.P985750662326693324

`p?[eq[3, A103309(n)]]`
-/

namespace A001123.P985750662326693324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A001123.P985750662326693324

/-! ## A001123.P6349425140403486853

`eq[A103309(n), A226602(n)]`
-/

namespace A001123.P6349425140403486853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001123.P6349425140403486853

/-!
# A001124: Primes with 5 as smallest primitive root.

The programs for A001124, there is no canonical definition to state claims against.
-/

/-! ## A001124.P6530440721138190347

`∑[A241042(A028310(n))]-1`
-/

namespace A001124.P6530440721138190347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241042 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001124.P6530440721138190347

/-! ## A001124.P10428695538944032433

`A000040(eq[5, A001918(n+1)]+1)`
-/

namespace A001124.P10428695538944032433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A001124.P10428695538944032433

/-! ## A001124.P8063537687641151136

`A000040(eq[5, A122028(n+1)]+1)`
-/

namespace A001124.P8063537687641151136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A001124.P8063537687641151136

/-! ## A001124.P3823746511798610133

`p?[(A001918(n+1)-4)*A000040(n+1)]`
-/

namespace A001124.P3823746511798610133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001918 (n + 1) - 4) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001124.P3823746511798610133

/-! ## A001124.P10701750572588892194

`p?[(A001918(n+1)-4)*A008578(n+2)]`
-/

namespace A001124.P10701750572588892194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001918 (n + 1) - 4) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001124.P10701750572588892194

/-! ## A001124.P5844811520192978147

`p?[A000040(n+1)*A140106(A122028(n+1))]`
-/

namespace A001124.P5844811520192978147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A140106 (A122028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001124.P5844811520192978147

/-! ## A001124.P7208690930190192674

`p?[eq[5, A046145(n)]]`
-/

namespace A001124.P7208690930190192674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A001124.P7208690930190192674

/-! ## A001124.P5695733018561265939

`p?[eq[5, A103309(n)]]`
-/

namespace A001124.P5695733018561265939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A001124.P5695733018561265939

/-! ## A001124.P3510173650164818653

`eq[A040230(n), A046145(n)]`
-/

namespace A001124.P3510173650164818653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001124.P3510173650164818653

/-! ## A001124.P12175629891958232299

`eq[A040751(n), A046145(n)]`
-/

namespace A001124.P12175629891958232299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001124.P12175629891958232299

/-! ## A001124.P14662727726918620899

`eq[A226602(A226602(n))+2, A046145(n)]`
-/

namespace A001124.P14662727726918620899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A226602 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001124.P14662727726918620899

/-! ## A001124.P5523730626139640815

`eq[A226602(A226602(n))+2, A103309(n)]`
-/

namespace A001124.P5523730626139640815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A226602 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001124.P5523730626139640815

/-!
# A001125: Primes with 6 as smallest primitive root.

The programs for A001125, there is no canonical definition to state claims against.
-/

/-! ## A001125.P7277589379805394481

`∩[A019336(n+1), A047936(n+1)]`
-/

namespace A001125.P7277589379805394481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001125.P7277589379805394481

/-! ## A001125.P3823880261147564070

`∩[A019336(n+1), A070270(n+1)]`
-/

namespace A001125.P3823880261147564070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001125.P3823880261147564070

/-! ## A001125.P1829520752938638314

`∩[A019336(n+1), A103335(n+1)]`
-/

namespace A001125.P1829520752938638314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001125.P1829520752938638314

/-! ## A001125.P13485316769286853807

`∩[A047936(n+1), A167794(n+1)]`
-/

namespace A001125.P13485316769286853807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001125.P13485316769286853807

/-! ## A001125.P14466417282891597481

`∩[A070270(n+1), A167794(n+1)]`
-/

namespace A001125.P14466417282891597481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001125.P14466417282891597481

/-! ## A001125.P4784494267772189620

`A045319(eq[6, A001918(n+1)])`
-/

namespace A001125.P4784494267772189620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001125.P4784494267772189620

/-! ## A001125.P13694949520811247856

`A045344(eq[6, A001918(n+1)])`
-/

namespace A001125.P13694949520811247856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001125.P13694949520811247856

/-! ## A001125.P15522194825218052305

`A065091(eq[6, A001918(n+1)])`
-/

namespace A001125.P15522194825218052305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001125.P15522194825218052305

/-! ## A001125.P2582757678906023307

`A045319(eq[6, A242242(n+1)])`
-/

namespace A001125.P2582757678906023307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001125.P2582757678906023307

/-! ## A001125.P12283244105899253544

`A045344(eq[6, A242242(n+1)])`
-/

namespace A001125.P12283244105899253544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001125.P12283244105899253544

/-! ## A001125.P17790251379583708673

`A045319(eq[6, A268616(n+1)])`
-/

namespace A001125.P17790251379583708673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001125.P17790251379583708673

/-! ## A001125.P596833263212790404

`A065091(eq[6, A268616(n+1)])`
-/

namespace A001125.P596833263212790404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001125.P596833263212790404

/-! ## A001125.P2539590236693311623

`p?[(A001918(n+1)-5)*A000040(n+1)]`
-/

namespace A001125.P2539590236693311623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001918 (n + 1) - 5) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001125.P2539590236693311623

/-!
# A001126: Primes with 7 as smallest primitive root.

The programs for A001126, there is no canonical definition to state claims against.
-/

/-! ## A001126.P15962690681304996712

`A045319(eq[7, A001918(n+1)])`
-/

namespace A001126.P15962690681304996712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001126.P15962690681304996712

/-! ## A001126.P7849236652380582763

`A045344(eq[7, A001918(n+1)])`
-/

namespace A001126.P7849236652380582763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001126.P7849236652380582763

/-! ## A001126.P2497186943705305341

`A065091(eq[7, A001918(n+1)])`
-/

namespace A001126.P2497186943705305341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001126.P2497186943705305341

/-! ## A001126.P1513822253298674132

`A045344(eq[7, A242242(n+1)])`
-/

namespace A001126.P1513822253298674132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001126.P1513822253298674132

/-! ## A001126.P12963816636789421077

`A065091(eq[7, A242242(n+1)])`
-/

namespace A001126.P12963816636789421077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001126.P12963816636789421077

/-! ## A001126.P7364474839891455139

`A045319(eq[7, A268616(n+1)])`
-/

namespace A001126.P7364474839891455139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001126.P7364474839891455139

/-! ## A001126.P12399473366665356267

`p?[n*A046145(n)-6*n]`
-/

namespace A001126.P12399473366665356267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046145 n - (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001126.P12399473366665356267

/-!
# A001127: Trajectory of 1 under map x->x + (x-with-digits-reversed).

The programs for A001127, there is no canonical definition to state claims against.
-/

/-! ## A001127.P4052795559666369997

`A243238(1+∑[n])`
-/

namespace A001127.P4052795559666369997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001127.P4052795559666369997

/-! ## A001127.P4139515235613921878

`record[A243238(A032742(n+1)+n)]`
-/

namespace A001127.P4139515235613921878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A032742 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001127.P4139515235613921878

/-! ## A001127.P6257881385373757220

`record[A243238(n+1)/A007318(n)]`
-/

namespace A001127.P6257881385373757220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243238 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001127.P6257881385373757220

/-! ## A001127.P8085073738582482523

`gcd(A000038(n), A243238(A000124(n)))`
-/

namespace A001127.P8085073738582482523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A243238 (A000124 n).toNat)

end

end A001127.P8085073738582482523

/-! ## A001127.P12129943647103197123

`or(A000007(n), A243238(A000124(n)))`
-/

namespace A001127.P12129943647103197123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A243238 (A000124 n).toNat)

end

end A001127.P12129943647103197123

/-! ## A001127.P9084050234812251813

`record[A243238(A011558(n)+A008805(n))]`
-/

namespace A001127.P9084050234812251813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A011558 n + A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001127.P9084050234812251813

/-! ## A001127.P13095391887594445082

`record[gcd(A243238(n+1), A271703(n))]`
-/

namespace A001127.P13095391887594445082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243238 (n + 1)) (A271703 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001127.P13095391887594445082

/-!
# A001128: Reverse digits of previous term and multiply by previous term.

The programs for A001128, there is no canonical definition to state claims against.
-/

/-! ## A001128.P15199979911243599508

`A061205(a(n-1))` with `a(0)=2`
-/

namespace A001128.P15199979911243599508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A061205 (a (n - 1)).toNat

end

end A001128.P15199979911243599508

/-!
# A001129: Iccanobif numbers: reverse digits of two previous terms and add.

The programs for A001129, there is no canonical definition to state claims against.
-/

/-! ## A001129.P3539762117482492174

`Δ[A172524(log2(ceil(2^(n-1))))]`
-/

namespace A001129.P3539762117482492174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172524 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001129.P3539762117482492174

/-! ## A001129.P2814835710949691669

`A004086(a(n-1))+A004086(a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A001129.P2814835710949691669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004086 (a (n - 1)).toNat + A004086 (a (n - 2)).toNat

end

end A001129.P2814835710949691669

/-! ## A001129.P17868749339665315464

`A004086(A014258(n))`
-/

namespace A001129.P17868749339665315464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A014258 n).toNat

end

end A001129.P17868749339665315464

/-! ## A001129.P8996786577912730938

`A004093(5*A014258(n))`
-/

namespace A001129.P8996786577912730938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A014258 n).toNat

end

end A001129.P8996786577912730938

/-! ## A001129.P15718199176176181543

`A321474(A014258(A321474(n)))`
-/

namespace A001129.P15718199176176181543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A014258 (A321474 n).toNat).toNat

end

end A001129.P15718199176176181543

/-!
# A001130: Number of graphical basis partitions of 2n.

The programs for A001130, there is no canonical definition to state claims against.
-/

/-! ## A001130.P9765139364273010570

`A227394(A283472(n+1)+A147869(n+1))`
-/

namespace A001130.P9765139364273010570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A283472 (n + 1) + A147869 (n + 1)).toNat

end

end A001130.P9765139364273010570

/-! ## A001130.P10657553003619355630

`A240841(n)+A001221(A267614(n))`
-/

namespace A001130.P10657553003619355630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240841 n + A001221 (A267614 n).toNat

end

end A001130.P10657553003619355630

/-! ## A001130.P4119095608133230472

`record[A112190(n)]-A001222(A151147(n))`
-/

namespace A001130.P4119095608133230472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001222 (A151147 n).toNat

end

end A001130.P4119095608133230472

/-! ## A001130.P16356010111767654188

`A154888(n+2)-A365167(A352336(3*n+2))`
-/

namespace A001130.P16356010111767654188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154888 (n + 2) - A365167 (A352336 (3 * n + 2)).toNat

end

end A001130.P16356010111767654188

/-!
# A001131: Number of red-black rooted trees with n-1 internal nodes.

The programs for A001131, there is no canonical definition to state claims against.
-/

/-! ## A001131.P9945264417426236812

`A105224(A052481(n))-A219487(n)`
-/

namespace A001131.P9945264417426236812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A052481 n).toNat - A219487 n

end

end A001131.P9945264417426236812

/-! ## A001131.P6181504944755907749

`A285636(n)-A131964(A024024(n))`
-/

namespace A001131.P6181504944755907749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285636 n - A131964 (A024024 n).toNat

end

end A001131.P6181504944755907749

/-! ## A001131.P16882099200971089096

`A295619(n)-A235168(A028336(n+1))`
-/

namespace A001131.P16882099200971089096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295619 n - A235168 (A028336 (n + 1)).toNat

end

end A001131.P16882099200971089096

/-! ## A001131.P4598985898540689865

`A032443(n)%A018528(A018534(n+1))`
-/

namespace A001131.P4598985898540689865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032443 n) (A018528 (A018534 (n + 1)).toNat)

end

end A001131.P4598985898540689865

/-! ## A001131.P11086428991924168732

`A130137(n)-A099548(A224815(3*n+4))`
-/

namespace A001131.P11086428991924168732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130137 n - A099548 (A224815 (3 * n + 4)).toNat

end

end A001131.P11086428991924168732

/-!
# A001132: Primes == +-1 (mod 8).

The programs for A001132, the canonical program `A001132.P8958267989109849666` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001132 has offset 1).

The definition of A001132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001132.P8958267989109849666

`p?[a(n-2)+8]` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001132

/-- `p?[a(n-2)+8]` -/
def P8958267989109849666.Spec : Prop :=
  ∀ n, (P8958267989109849666.a n : ℤ) = A001132 (n + 1)

theorem P8958267989109849666.correct : P8958267989109849666.Spec := by
  intro n
  simp only [A001132, Nat.add_sub_cancel]

end A001132

/-! ## A001132.P2356402946969181885

`p?[floor((8*n+5)/3)]`
-/

namespace A001132.P2356402946969181885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * n + 5 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001132.P2356402946969181885

namespace A001132

/-- `p?[floor((8*n+5)/3)]` -/
def P2356402946969181885.Spec : Prop :=
  ∀ n, P2356402946969181885.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P6014261591491675721

`A038873(2+n)`
-/

namespace A001132.P6014261591491675721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (2 + n)

end

end A001132.P6014261591491675721

namespace A001132

/-- `A038873(2+n)` -/
def P6014261591491675721.Spec : Prop :=
  ∀ n, P6014261591491675721.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P11087634525377363209

`A097958(n+2)`
-/

namespace A001132.P11087634525377363209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 2)

end

end A001132.P11087634525377363209

namespace A001132

/-- `A097958(n+2)` -/
def P11087634525377363209.Spec : Prop :=
  ∀ n, P11087634525377363209.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P2497467272811138861

`A059771(n+2)+A059770(n+2)`
-/

namespace A001132.P2497467272811138861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059771 (n + 2) + A059770 (n + 2)

end

end A001132.P2497467272811138861

namespace A001132

/-- `A059771(n+2)+A059770(n+2)` -/
def P2497467272811138861.Spec : Prop :=
  ∀ n, P2497467272811138861.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P12779480333211161463

`p?[or(3, n)+n+3]`
-/

namespace A001132.P12779480333211161463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A001132.P12779480333211161463

namespace A001132

/-- `p?[or(3, n)+n+3]` -/
def P12779480333211161463.Spec : Prop :=
  ∀ n, (P12779480333211161463.a n : ℤ) = A001132 (n + 1)

end A001132

/-! ## A001132.P14092816804138293314

`A000040(A024704(n+1))`
-/

namespace A001132.P14092816804138293314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024704 (n + 1)).toNat

end

end A001132.P14092816804138293314

namespace A001132

/-- `A000040(A024704(n+1))` -/
def P14092816804138293314.Spec : Prop :=
  ∀ n, P14092816804138293314.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P5131576112681862154

`∩[A000040(n+1), A058529(n+1)]`
-/

namespace A001132.P5131576112681862154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001132.P5131576112681862154

namespace A001132

/-- `∩[A000040(n+1), A058529(n+1)]` -/
def P5131576112681862154.Spec : Prop :=
  ∀ n, (P5131576112681862154.a n : ℤ) = A001132 (n + 1)

end A001132

/-! ## A001132.P6707857589467934596

`∩[A000040(n+1), A270951(n+1)]`
-/

namespace A001132.P6707857589467934596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001132.P6707857589467934596

namespace A001132

/-- `∩[A000040(n+1), A270951(n+1)]` -/
def P6707857589467934596.Spec : Prop :=
  ∀ n, (P6707857589467934596.a n : ℤ) = A001132 (n + 1)

end A001132

/-! ## A001132.P2553685826578045972

`∩[A319040(n+1), A000040(n+1)]`
-/

namespace A001132.P2553685826578045972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001132.P2553685826578045972

namespace A001132

/-- `∩[A319040(n+1), A000040(n+1)]` -/
def P2553685826578045972.Spec : Prop :=
  ∀ n, (P2553685826578045972.a n : ℤ) = A001132 (n + 1)

end A001132

/-! ## A001132.P13095956766512139673

`∩[A366526(n+1), A260442(n)]`
-/

namespace A001132.P13095956766512139673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001132.P13095956766512139673

namespace A001132

/-- `∩[A366526(n+1), A260442(n)]` -/
def P13095956766512139673.Spec : Prop :=
  ∀ n, (P13095956766512139673.a n : ℤ) = A001132 (n + 1)

end A001132

/-! ## A001132.P5649178021107695571

`p?[n*and(5, n+2)]`
-/

namespace A001132.P5649178021107695571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 5 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A001132.P5649178021107695571

namespace A001132

/-- `p?[n*and(5, n+2)]` -/
def P5649178021107695571.Spec : Prop :=
  ∀ n, (P5649178021107695571.a n : ℤ) = A001132 (n + 1)

end A001132

/-! ## A001132.P11586612345438254135

`filter[A058529(n+1), A010051(#)]`
-/

namespace A001132.P11586612345438254135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A001132.P11586612345438254135

namespace A001132

/-- `filter[A058529(n+1), A010051(#)]` -/
def P11586612345438254135.Spec : Prop :=
  ∀ n, P11586612345438254135.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P15811572388114918371

`filter[A270951(n+1), A010051(#)]`
-/

namespace A001132.P15811572388114918371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A001132.P15811572388114918371

namespace A001132

/-- `filter[A270951(n+1), A010051(#)]` -/
def P15811572388114918371.Spec : Prop :=
  ∀ n, P15811572388114918371.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P1414313124324298581

`filter[A319040(n+1), A010051(#)]`
-/

namespace A001132.P1414313124324298581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A001132.P1414313124324298581

namespace A001132

/-- `filter[A319040(n+1), A010051(#)]` -/
def P1414313124324298581.Spec : Prop :=
  ∀ n, P1414313124324298581.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P5257582864507994682

`filter[A366526(n+1), A008966(#)]`
-/

namespace A001132.P5257582864507994682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A001132.P5257582864507994682

namespace A001132

/-- `filter[A366526(n+1), A008966(#)]` -/
def P5257582864507994682.Spec : Prop :=
  ∀ n, P5257582864507994682.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P8854316230059433811

`filter[A366526(n+1), A010051(#)]`
-/

namespace A001132.P8854316230059433811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A001132.P8854316230059433811

namespace A001132

/-- `filter[A366526(n+1), A010051(#)]` -/
def P8854316230059433811.Spec : Prop :=
  ∀ n, P8854316230059433811.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P6409887750834151807

`filter[A055673(n+1), A324903(#)]`
-/

namespace A001132.P6409887750834151807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A001132.P6409887750834151807

namespace A001132

/-- `filter[A055673(n+1), A324903(#)]` -/
def P6409887750834151807.Spec : Prop :=
  ∀ n, P6409887750834151807.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P13365293564501833296

`filter[A055673(n+1), A358770(#)]`
-/

namespace A001132.P13365293564501833296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A001132.P13365293564501833296

namespace A001132

/-- `filter[A055673(n+1), A358770(#)]` -/
def P13365293564501833296.Spec : Prop :=
  ∀ n, P13365293564501833296.a n = A001132 (n + 1)

end A001132

/-! ## A001132.P1652735911206004463

`filter[A055673(n+1), A359590(#)]`
-/

namespace A001132.P1652735911206004463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A001132.P1652735911206004463

namespace A001132

/-- `filter[A055673(n+1), A359590(#)]` -/
def P1652735911206004463.Spec : Prop :=
  ∀ n, P1652735911206004463.a n = A001132 (n + 1)

end A001132

/-!
# A001133: Primes p such that the multiplicative order of 2 modulo p is (p-1)/3.

The programs for A001133, there is no canonical definition to state claims against.
-/

/-! ## A001133.P11090141549101501320

`∩[A141229(n+1), A294717(n+1)]`
-/

namespace A001133.P11090141549101501320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P11090141549101501320

/-! ## A001133.P14236324698462089185

`∩[A014752(n+1), A141229(n+1)]`
-/

namespace A001133.P14236324698462089185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P14236324698462089185

/-! ## A001133.P16080817016811181970

`∩[A115586(n+1), A141229(n+1)]`
-/

namespace A001133.P16080817016811181970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P16080817016811181970

/-! ## A001133.P3077653099916910812

`p?[A141229(n+1)]`
-/

namespace A001133.P3077653099916910812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001133.P3077653099916910812

/-! ## A001133.P10921589227495654194

`p?[record[A141229(A152271(n))]]`
-/

namespace A001133.P10921589227495654194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001133.P10921589227495654194

/-! ## A001133.P9061792863643053331

`p?[A040001(n)*A141229(A152271(n))]`
-/

namespace A001133.P9061792863643053331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A141229 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001133.P9061792863643053331

/-! ## A001133.P7021112612655394318

`∩[A016108(n+1), A141229(n+1)]`
-/

namespace A001133.P7021112612655394318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P7021112612655394318

/-! ## A001133.P13927591563400961946

`p?[A040001(n)*A141229(A266977(n))]`
-/

namespace A001133.P13927591563400961946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A141229 (A266977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001133.P13927591563400961946

/-! ## A001133.P16561565755389712173

`∩[A002476(n+1), A141229(n+1)]`
-/

namespace A001133.P16561565755389712173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P16561565755389712173

/-! ## A001133.P528501673149929148

`∩[A007645(n+1), A141229(n+1)]`
-/

namespace A001133.P528501673149929148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P528501673149929148

/-! ## A001133.P13324554120073839337

`∩[A045375(n+1), A141229(n+1)]`
-/

namespace A001133.P13324554120073839337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P13324554120073839337

/-! ## A001133.P17715105612881888640

`∩[A123365(n+1), A141229(n+1)]`
-/

namespace A001133.P17715105612881888640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P17715105612881888640

/-! ## A001133.P4147640683057425284

`∩[A045331(n+1), A141229(n+1)]`
-/

namespace A001133.P4147640683057425284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P4147640683057425284

/-! ## A001133.P7684347577658628996

`∩[A141229(n+1), A279815(n+1)]`
-/

namespace A001133.P7684347577658628996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P7684347577658628996

/-! ## A001133.P8288411190164988235

`∩[A141229(n+1), A191059(n+1)]`
-/

namespace A001133.P8288411190164988235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P8288411190164988235

/-! ## A001133.P16138544702405481803

`∩[A003629(n+1), A141229(n+1)]`
-/

namespace A001133.P16138544702405481803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P16138544702405481803

/-! ## A001133.P12944066900340398041

`∩[A042999(n+1), A141229(n+1)]`
-/

namespace A001133.P12944066900340398041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P12944066900340398041

/-! ## A001133.P4704457250405631167

`∩[A055664(n+1), A141229(n+1)]`
-/

namespace A001133.P4704457250405631167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P4704457250405631167

/-! ## A001133.P3950368685747503116

`∩[A141229(n+1), A175865(n+1)]`
-/

namespace A001133.P3950368685747503116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P3950368685747503116

/-! ## A001133.P7193243525004565390

`∩[A141229(n+1), A319041(n+1)]`
-/

namespace A001133.P7193243525004565390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001133.P7193243525004565390

/-!
# A001134: Primes p such that the multiplicative order of 2 modulo p is (p-1)/4.

The programs for A001134, there is no canonical definition to state claims against.
-/

/-! ## A001134.P7184378870112915815

`A005408(eq[n/2, A002326(n)])`
-/

namespace A001134.P7184378870112915815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A001134.P7184378870112915815

/-! ## A001134.P11476504104616027939

`A005408(eq[A002326(n), A004526(n)])`
-/

namespace A001134.P11476504104616027939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A001134.P11476504104616027939

/-! ## A001134.P15404831417527023640

`A005408(eq[A002326(n), A029578(n)])`
-/

namespace A001134.P15404831417527023640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A001134.P15404831417527023640

/-! ## A001134.P14378632293180040735

`p?[(A001917(n+2)-3)*A000040(n+2)]`
-/

namespace A001134.P14378632293180040735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001917 (n + 2) - 3) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001134.P14378632293180040735

/-! ## A001134.P3370309941978112084

`p?[A045344(n+1)*A211244(A001917(n+2))]`
-/

namespace A001134.P3370309941978112084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A211244 (A001917 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001134.P3370309941978112084

/-!
# A001135: Primes p such that the multiplicative order of 2 modulo p is (p-1)/5.

The programs for A001135, there is no canonical definition to state claims against.
-/

/-! ## A001135.P16206335856027025988

`A005408(eq[5, A037226(n)])`
-/

namespace A001135.P16206335856027025988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001135.P16206335856027025988

/-! ## A001135.P1290453782690083836

`A137576(eq[5, A037226(n)])`
-/

namespace A001135.P1290453782690083836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001135.P1290453782690083836

/-! ## A001135.P16871575662688554517

`A144396(eq[5, A037226(n)])`
-/

namespace A001135.P16871575662688554517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001135.P16871575662688554517

/-!
# A001136: Primes p such that the multiplicative order of 2 modulo p is (p-1)/6.

The programs for A001136, there is no canonical definition to state claims against.
-/

/-! ## A001136.P8139981702350552787

`p?[A005408(eq[6, A006694(n)])]`
-/

namespace A001136.P8139981702350552787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001136.P8139981702350552787

/-! ## A001136.P17326181811707023392

`p?[A005408(eq[6, A037226(n)])]`
-/

namespace A001136.P17326181811707023392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001136.P17326181811707023392

/-! ## A001136.P1890511214650827225

`p?[A144396(eq[6, A006694(n)])]`
-/

namespace A001136.P1890511214650827225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001136.P1890511214650827225

/-! ## A001136.P15898213093311647923

`p?[A144396(eq[6, A037226(n)])]`
-/

namespace A001136.P15898213093311647923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001136.P15898213093311647923

/-! ## A001136.P17229476312450898709

`p?[A144396(eq[7, A081844(n)])]`
-/

namespace A001136.P17229476312450898709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001136.P17229476312450898709

/-!
# A001137: Number of black-rooted red-black trees with n internal nodes.

The programs for A001137, there is no canonical definition to state claims against.
-/

/-! ## A001137.P2377077435175845887

`A001131(n+2)-A001138(n+1)`
-/

namespace A001137.P2377077435175845887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001131 (n + 2) - A001138 (n + 1)

end

end A001137.P2377077435175845887

/-! ## A001137.P3406708899249490666

`A334677(A022907(n+1)+A000358(n+1))`
-/

namespace A001137.P3406708899249490666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334677 (A022907 (n + 1) + A000358 (n + 1)).toNat

end

end A001137.P3406708899249490666

/-!
# A001138: Number of red rooted red-black trees with n internal nodes.

The programs for A001138, there is no canonical definition to state claims against.
-/

/-! ## A001138.P12931656026567727609

`A001131(n+2)-A001137(n+1)`
-/

namespace A001138.P12931656026567727609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001131 (n + 2) - A001137 (n + 1)

end

end A001138.P12931656026567727609

/-!
# A001139: Number of stable feedback shift registers with n stages.

The programs for A001139, there is no canonical definition to state claims against.
-/

/-! ## A001139.P9453681576196378401

`∏[∏[∑[2^n]]/A190906(2*n)]`
-/

namespace A001139.P9453681576196378401
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (A190906 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001139.P9453681576196378401

/-!
# A001140: Describe the previous term! (method A - initial term is 4).

The programs for A001140, there is no canonical definition to state claims against.
-/

/-! ## A001140.P7776603928850405745

`A006715(n+1)+1`
-/

namespace A001140.P7776603928850405745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006715 (n + 1) + 1

end

end A001140.P7776603928850405745

/-! ## A001140.P1295773555569693021

`A001141(1+n)-1`
-/

namespace A001140.P1295773555569693021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (1 + n) - 1

end

end A001140.P1295773555569693021

/-! ## A001140.P1506918877450677399

`A006751(n+1)+2`
-/

namespace A001140.P1506918877450677399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006751 (n + 1) + 2

end

end A001140.P1506918877450677399

/-! ## A001140.P16316761415172607262

`A001143(n+1)-2`
-/

namespace A001140.P16316761415172607262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (n + 1) - 2

end

end A001140.P16316761415172607262

/-! ## A001140.P3124434185478515208

`A001145(n+1)-3`
-/

namespace A001140.P3124434185478515208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001145 (n + 1) - 3

end

end A001140.P3124434185478515208

/-!
# A001141: Describe the previous term! (method A - initial term is 5).

The programs for A001141, there is no canonical definition to state claims against.
-/

/-! ## A001141.P13176007725782598709

`1+A001140(n+1)`
-/

namespace A001141.P13176007725782598709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001140 (n + 1)

end

end A001141.P13176007725782598709

/-! ## A001141.P18038799448913882159

`A001143(1+n)-1`
-/

namespace A001141.P18038799448913882159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (1 + n) - 1

end

end A001141.P18038799448913882159

/-! ## A001141.P16808253017779817453

`A006715(n+1)+2`
-/

namespace A001141.P16808253017779817453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006715 (n + 1) + 2

end

end A001141.P16808253017779817453

/-! ## A001141.P2224042356836301397

`A001145(n+1)-2`
-/

namespace A001141.P2224042356836301397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001145 (n + 1) - 2

end

end A001141.P2224042356836301397

/-! ## A001141.P14634055735934621646

`A006751(n+1)+3`
-/

namespace A001141.P14634055735934621646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006751 (n + 1) + 3

end

end A001141.P14634055735934621646

/-!
# A001142: a(n) = Product_{k=1..n} k^(2k - 1 - n).

The programs for A001142, the canonical program `A001142.P8837841973631243233` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001142 has offset 0).

The definition of A001142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001142.P8837841973631243233

`A002109(n)/A000178(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001142

/-- `A002109(n)/A000178(n)` -/
def P8837841973631243233.Spec : Prop :=
  ∀ n, P8837841973631243233.a n = (A001142 n : ℚ)

end A001142

/-! ## A001142.P18058119529542280866

`∏[n^n/n!]`
-/

namespace A001142.P18058119529542280866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001142.P18058119529542280866

namespace A001142

/-- `∏[n^n/n!]` -/
def P18058119529542280866.Spec : Prop :=
  ∀ n, P18058119529542280866.a n = (A001142 n : ℚ)

end A001142

/-! ## A001142.P6103922421460408524

`n^n/n!*a(n-1)` with `a(0)=1`
-/

namespace A001142.P6103922421460408524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℚ) / (Nat.factorial n : ℚ) * a (n - 1)

end

end A001142.P6103922421460408524

namespace A001142

/-- `n^n/n!*a(n-1)` -/
def P6103922421460408524.Spec : Prop :=
  ∀ n, P6103922421460408524.a n = (A001142 n : ℚ)

end A001142

/-! ## A001142.P13796891077284616418

`A090447(∑[n]+n)`
-/

namespace A001142.P13796891077284616418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090447 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001142.P13796891077284616418

namespace A001142

/-- `A090447(∑[n]+n)` -/
def P13796891077284616418.Spec : Prop :=
  ∀ n, P13796891077284616418.a n = A001142 n

end A001142

/-! ## A001142.P3705193725563121248

`A208650(n+1)/(n+1)`
-/

namespace A001142.P3705193725563121248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208650 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001142.P3705193725563121248

namespace A001142

/-- `A208650(n+1)/(n+1)` -/
def P3705193725563121248.Spec : Prop :=
  ∀ n, P3705193725563121248.a n = (A001142 n : ℚ)

end A001142

/-!
# A001143: Describe the previous term! (method A - initial term is 6).

The programs for A001143, there is no canonical definition to state claims against.
-/

/-! ## A001143.P5550357155308659904

`A001141(1+n)+1`
-/

namespace A001143.P5550357155308659904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (1 + n) + 1

end

end A001143.P5550357155308659904

/-! ## A001143.P6870380439617476776

`A001140(n+1)+2`
-/

namespace A001143.P6870380439617476776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1) + 2

end

end A001143.P6870380439617476776

/-! ## A001143.P10824449775648018158

`A001145(n+1)-1`
-/

namespace A001143.P10824449775648018158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001145 (n + 1) - 1

end

end A001143.P10824449775648018158

/-! ## A001143.P17912904078600398807

`A001151(n+1)-2`
-/

namespace A001143.P17912904078600398807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001151 (n + 1) - 2

end

end A001143.P17912904078600398807

/-! ## A001143.P1876392167171850999

`A006715(n+1)+3`
-/

namespace A001143.P1876392167171850999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006715 (n + 1) + 3

end

end A001143.P1876392167171850999

/-!
# A001144: An exponential function on partitions (next term is 2^512).

The programs for A001144, there is no canonical definition to state claims against.
-/

/-! ## A001144.P6532494041724767286

`2^a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=9, a(5)=27`
-/

namespace A001144.P6532494041724767286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 9, 27] fun n a =>
  2 ^ a (n - 2)

end

end A001144.P6532494041724767286

/-! ## A001144.P1668431708054438322

`A164340(record[A036561(n)])`
-/

namespace A001144.P1668431708054438322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001144.P1668431708054438322

/-! ## A001144.P3118820785606184777

`A164340(A018393(n+1))`
-/

namespace A001144.P3118820785606184777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164340 (A018393 (n + 1)).toNat

end

end A001144.P3118820785606184777

/-!
# A001145: Describe the previous term! (method A - initial term is 7).

The programs for A001145, there is no canonical definition to state claims against.
-/

/-! ## A001145.P194189698043347686

`A001143(1+n)+1`
-/

namespace A001145.P194189698043347686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (1 + n) + 1

end

end A001145.P194189698043347686

/-! ## A001145.P15426242724513343548

`A001141(n+1)+2`
-/

namespace A001145.P15426242724513343548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (n + 1) + 2

end

end A001145.P15426242724513343548

/-! ## A001145.P14618753359862745423

`A001151(n+1)-1`
-/

namespace A001145.P14618753359862745423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001151 (n + 1) - 1

end

end A001145.P14618753359862745423

/-! ## A001145.P6417415547766748016

`A001140(n+1)+3`
-/

namespace A001145.P6417415547766748016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1) + 3

end

end A001145.P6417415547766748016

/-! ## A001145.P742869786401945970

`A001154(n+1)-2`
-/

namespace A001145.P742869786401945970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001154 (n + 1) - 2

end

end A001145.P742869786401945970

/-!
# A001146: a(n) = 2^(2^n).

The programs for A001146, the canonical program `A001146.P4262425653572495980` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001146 has offset 0).

The definition of A001146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n` (program `A001146.P4262425653572495980`, by `A001146.P4262425653572495980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001146.P4262425653572495980

`2^2^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001146

/-- `2^2^n` -/
def P4262425653572495980.Spec : Prop :=
  ∀ n, (P4262425653572495980.a n : ℤ) = A001146 n

theorem P4262425653572495980.correct : P4262425653572495980.Spec := by
  intro n
  simp only [A001146]

end A001146

/-!
# A001147: Double factorial of odd numbers: a(n) = (2*n-1)!! = 1*3*5*...*(2*n-1).

The programs for A001147, the canonical program `A001147.P13514244325274963007` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001147 has offset 0).

The definition of A001147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001147.P13514244325274963007

`a(n-1)*(2*n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001147

/-- `a(n-1)*(2*n-1)` -/
def P13514244325274963007.Spec : Prop :=
  ∀ n, P13514244325274963007.a n = A001147 n

theorem P13514244325274963007.correct : P13514244325274963007.Spec := by
  intro n
  simp only [A001147]

end A001147

/-! ## A001147.P17064495567198203553

`A123023(2*n)`
-/

namespace A001147.P17064495567198203553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (2 * n)

end

end A001147.P17064495567198203553

namespace A001147

/-- `A123023(2*n)` -/
def P17064495567198203553.Spec : Prop :=
  ∀ n, P17064495567198203553.a n = A001147 n

end A001147

/-! ## A001147.P4556778755202738210

`A035342(C(n, 2)+1)`
-/

namespace A001147.P4556778755202738210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (Nat.choose n 2 + 1)

end

end A001147.P4556778755202738210

namespace A001147

/-- `A035342(C(n, 2)+1)` -/
def P4556778755202738210.Spec : Prop :=
  ∀ n, P4556778755202738210.a n = A001147 n

end A001147

/-! ## A001147.P505752425587289452

`A001498(C(n+1, 2)+n)`
-/

namespace A001147.P505752425587289452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (Nat.choose (n + 1) 2 + n)

end

end A001147.P505752425587289452

namespace A001147

/-- `A001498(C(n+1, 2)+n)` -/
def P505752425587289452.Spec : Prop :=
  ∀ n, P505752425587289452.a n = A001147 n

end A001147

/-! ## A001147.P4933944355508519443

`∑{#}[n, (-2)^(n-#)*A048994(C(n+1, 2)+#)]`
-/

namespace A001147.P4933944355508519443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A048994 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A001147.P4933944355508519443

namespace A001147

/-- `∑{#}[n, (-2)^(n-#)*A048994(C(n+1, 2)+#)]` -/
def P4933944355508519443.Spec : Prop :=
  ∀ n, P4933944355508519443.a n = (A001147 n : ℚ)

end A001147

/-! ## A001147.P12367430439066173008

`∏[runs[ceil(sqrt(n))]]`
-/

namespace A001147.P12367430439066173008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001147.P12367430439066173008

namespace A001147

/-- `∏[runs[ceil(sqrt(n))]]` -/
def P12367430439066173008.Spec : Prop :=
  ∀ n, (P12367430439066173008.a n : ℤ) = A001147 n

end A001147

/-! ## A001147.P5933289239484144955

`∏[abs(1-2*n)]`
-/

namespace A001147.P5933289239484144955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001147.P5933289239484144955

namespace A001147

/-- `∏[abs(1-2*n)]` -/
def P5933289239484144955.Spec : Prop :=
  ∀ n, P5933289239484144955.a n = A001147 n

end A001147

/-! ## A001147.P11765920196581197468

`abs(∏[or(1, -(2*n))])`
-/

namespace A001147.P11765920196581197468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A001147.P11765920196581197468

namespace A001147

/-- `abs(∏[or(1, -(2*n))])` -/
def P11765920196581197468.Spec : Prop :=
  ∀ n, P11765920196581197468.a n = A001147 n

end A001147

/-! ## A001147.P12333119676456629697

`abs(∏[xor(1, -(2*n))])`
-/

namespace A001147.P12333119676456629697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A001147.P12333119676456629697

namespace A001147

/-- `abs(∏[xor(1, -(2*n))])` -/
def P12333119676456629697.Spec : Prop :=
  ∀ n, P12333119676456629697.a n = A001147 n

end A001147

/-! ## A001147.P12050071651697970302

`-∏[record[xor(1, n-2)]]`
-/

namespace A001147.P12050071651697970302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001147.P12050071651697970302

namespace A001147

/-- `-∏[record[xor(1, n-2)]]` -/
def P12050071651697970302.Spec : Prop :=
  ∀ n, P12050071651697970302.a n = A001147 n

end A001147

/-!
# A001148: Final digit of 3^n.

The programs for A001148, the canonical program `A001148.P7407269113276781379` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001148 has offset 0).

The definition of A001148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001148.P7407269113276781379

`10-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001148

/-- `10-a(n-2)` -/
def P7407269113276781379.Spec : Prop :=
  ∀ n, P7407269113276781379.a n = A001148 n

theorem P7407269113276781379.correct : P7407269113276781379.Spec := by
  intro n
  simp only [A001148]

end A001148

/-!
# A001149: A self-generating sequence: a(1)=1, a(2)=2, a(n+1) chosen so that a(n+1)-a(n-1) is the first number not obtainable as a(j)-a(i) for 1<=i<j<=n.

The programs for A001149, there is no canonical definition to state claims against.
-/

/-! ## A001149.P7225294449008582038

`∑[A055778(A107590(n))]`
-/

namespace A001149.P7225294449008582038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (A107590 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001149.P7225294449008582038

/-! ## A001149.P4585613483953402325

`A347707(∑[A347624(n)])`
-/

namespace A001149.P4585613483953402325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347707 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001149.P4585613483953402325

/-! ## A001149.P1463234925875908051

`A076067(n+1)+A048766(A015518(n))`
-/

namespace A001149.P1463234925875908051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076067 (n + 1) + A048766 (A015518 n).toNat

end

end A001149.P1463234925875908051

/-! ## A001149.P2620946941741575881

`A346700(A000108(n))+A035968(n+1)`
-/

namespace A001149.P2620946941741575881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A000108 n).toNat + A035968 (n + 1)

end

end A001149.P2620946941741575881

/-! ## A001149.P101614649112194628

`A347707(A347656(2*n)-A347709(n+3))`
-/

namespace A001149.P101614649112194628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347707 (A347656 (2 * n) - A347709 (n + 3)).toNat

end

end A001149.P101614649112194628

/-!
# A001150: Number of n-input 2-output switching networks with GL(n,2) acting on the input and S(2) and C(2,2) acting on the output.

The programs for A001150, there is no canonical definition to state claims against.
-/

/-! ## A001150.P15465875547709361257

`A000877(n+1)-A000892(n+1)`
-/

namespace A001150.P15465875547709361257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000877 (n + 1) - A000892 (n + 1)

end

end A001150.P15465875547709361257

/-! ## A001150.P3479272780901693084

`(A000832(n+1)-A000847(n+1))/2`
-/

namespace A001150.P3479272780901693084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000832 (n + 1) - A000847 (n + 1) : ℚ) / 2

end

end A001150.P3479272780901693084

/-!
# A001151: Describe the previous term! (method A - initial term is 8).

The programs for A001151, there is no canonical definition to state claims against.
-/

/-! ## A001151.P9339311513776677977

`A001145(n+1)+1`
-/

namespace A001151.P9339311513776677977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001145 (n + 1) + 1

end

end A001151.P9339311513776677977

/-! ## A001151.P13598954876272587010

`A001143(n+1)+2`
-/

namespace A001151.P13598954876272587010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (n + 1) + 2

end

end A001151.P13598954876272587010

/-! ## A001151.P5542191661733234602

`A001154(n+1)-1`
-/

namespace A001151.P5542191661733234602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001154 (n + 1) - 1

end

end A001151.P5542191661733234602

/-! ## A001151.P4552520196003879210

`A001141(n+1)+3`
-/

namespace A001151.P4552520196003879210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (n + 1) + 3

end

end A001151.P4552520196003879210

/-! ## A001151.P12434394643418634629

`A001140(n+1)+4`
-/

namespace A001151.P12434394643418634629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1) + 4

end

end A001151.P12434394643418634629

/-!
# A001153: Degrees of primitive irreducible trinomials: n such that 2^n - 1 is a Mersenne prime and x^n + x^k + 1 is a primitive irreducible polynomial over GF(2) for some k with 0 < k < n.

The programs for A001153, there is no canonical definition to state claims against.
-/

/-! ## A001153.P4385047998877501865

`filter[A073571(n+1), A332219(#)]`
-/

namespace A001153.P4385047998877501865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A332219 (f1 j).toNat = 1) n)

end

end A001153.P4385047998877501865

/-! ## A001153.P1177368374864883653

`∩[A000043(n+1), A073571(n+1)]`
-/

namespace A001153.P1177368374864883653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001153.P1177368374864883653

/-! ## A001153.P11813778617658930087

`A000043(∑[∏{e}[A010965(n), #]])`
-/

namespace A001153.P11813778617658930087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001153.P11813778617658930087

/-! ## A001153.P7755238435617359831

`p?[A144671(A182764(n+1))]`
-/

namespace A001153.P7755238435617359831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144671 (A182764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001153.P7755238435617359831

/-! ## A001153.P7117456243617778228

`p?[A144671(record[A166469(n+1)])]`
-/

namespace A001153.P7117456243617778228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144671 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001153.P7117456243617778228

/-!
# A001154: Describe the previous term! (method A - initial term is 9).

The programs for A001154, there is no canonical definition to state claims against.
-/

/-! ## A001154.P16975379761767712415

`A001151(n+1)+1`
-/

namespace A001154.P16975379761767712415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001151 (n + 1) + 1

end

end A001154.P16975379761767712415

/-! ## A001154.P6202837967056939372

`A001145(n+1)+2`
-/

namespace A001154.P6202837967056939372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001145 (n + 1) + 2

end

end A001154.P6202837967056939372

/-! ## A001154.P15307433522370741699

`A001143(n+1)+3`
-/

namespace A001154.P15307433522370741699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (n + 1) + 3

end

end A001154.P15307433522370741699

/-! ## A001154.P1669648571697810215

`A001141(n+1)+4`
-/

namespace A001154.P1669648571697810215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (n + 1) + 4

end

end A001154.P1669648571697810215

/-! ## A001154.P5545425442120087549

`A001140(n+1)+5`
-/

namespace A001154.P5545425442120087549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1) + 5

end

end A001154.P5545425442120087549

/-!
# A001155: Describe the previous term! (method A - initial term is 0).

The programs for A001155, there is no canonical definition to state claims against.
-/

/-! ## A001155.P15202382404922093222

`A006751(n+1)-2`
-/

namespace A001155.P15202382404922093222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006751 (n + 1) - 2

end

end A001155.P15202382404922093222

/-! ## A001155.P15372341579686261934

`A006715(n+1)-3`
-/

namespace A001155.P15372341579686261934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006715 (n + 1) - 3

end

end A001155.P15372341579686261934

/-! ## A001155.P7408493379244606837

`A001140(n+1)-4`
-/

namespace A001155.P7408493379244606837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1) - 4

end

end A001155.P7408493379244606837

/-! ## A001155.P12840810820736637153

`A001141(n+1)-5`
-/

namespace A001155.P12840810820736637153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001141 (n + 1) - 5

end

end A001155.P12840810820736637153

/-! ## A001155.P15301435856315382223

`A001143(n+1)-6`
-/

namespace A001155.P15301435856315382223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001143 (n + 1) - 6

end

end A001155.P15301435856315382223

/-!
# A001156: Number of partitions of n into squares.

The programs for A001156, there is no canonical definition to state claims against.
-/

/-! ## A001156.P18003703148430182495

`A078134(n)+a(n-1)` with `a(0)=1`
-/

namespace A001156.P18003703148430182495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078134 n + a (n - 1)

end

end A001156.P18003703148430182495

/-! ## A001156.P8671303045766227342

`A339365(n)+A339364(n)`
-/

namespace A001156.P8671303045766227342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A339364 n

end

end A001156.P8671303045766227342

/-! ## A001156.P13155687232672470281

`∑[A078134(A028310(n))]+1`
-/

namespace A001156.P13155687232672470281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A001156.P13155687232672470281

/-! ## A001156.P7150874838081187659

`A219610(n)+char[A253909(n)]`
-/

namespace A001156.P7150874838081187659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001156.P7150874838081187659

/-! ## A001156.P16140567855151354749

`A292520(n)+2*A339365(n)`
-/

namespace A001156.P16140567855151354749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292520 n + 2 * A339365 n

end

end A001156.P16140567855151354749

/-! ## A001156.P4067046678376214749

`2*A339364(n)-A292520(n)`
-/

namespace A001156.P4067046678376214749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339364 n - A292520 n

end

end A001156.P4067046678376214749

/-! ## A001156.P14636121047430527175

`Δ[A302833(n)]-A078134(n+1)`
-/

namespace A001156.P14636121047430527175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078134 (n + 1)

end

end A001156.P14636121047430527175

/-! ## A001156.P12172029024086265082

`A219610(A028310(n))+A010052(n)`
-/

namespace A001156.P12172029024086265082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 (A028310 n).toNat + A010052 n

end

end A001156.P12172029024086265082

/-! ## A001156.P2338734832255030882

`A339364(n)-A057428(n)*A339365(n)`
-/

namespace A001156.P2338734832255030882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339364 n - A057428 n * A339365 n

end

end A001156.P2338734832255030882

/-! ## A001156.P10326669214942073991

`A219610(n)-Δ[A010052(n)]*A010052(n)`
-/

namespace A001156.P10326669214942073991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 n - (f1 (n + 1) - f1 n) * A010052 n

end

end A001156.P10326669214942073991

/-! ## A001156.P18224104479090023307

`A219610(n)+and(A000037(n+1), A010052(n))`
-/

namespace A001156.P18224104479090023307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 n + Int.land (A000037 (n + 1)) (A010052 n)

end

end A001156.P18224104479090023307

/-! ## A001156.P15620617051581917801

`A302833(n+1)-(A302833(n)+A078134(n+1))`
-/

namespace A001156.P15620617051581917801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302833 (n + 1) - (A302833 n + A078134 (n + 1))

end

end A001156.P15620617051581917801

/-! ## A001156.P11636284895856273131

`A265260(4*n)`
-/

namespace A001156.P11636284895856273131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (4 * n)

end

end A001156.P11636284895856273131

/-! ## A001156.P5496356595936279054

`∑{#}[n, (-1)^(n-#)*C(n, #)*A294529(#)]`
-/

namespace A001156.P5496356595936279054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A294529 k : ℚ)

end

end A001156.P5496356595936279054

/-!
# A001157: a(n) = sigma_2(n): sum of squares of divisors of n.

The programs for A001157, the canonical program `A001157.P17878717581134609993` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001157 has offset 1).

The definition of A001157 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001157.anchor (n : ℕ) (hn : 1 ≤ n) : A001157 n = (ArithmeticFunction.sigma 2 n : ℤ)` in `Proof.A001.A001157`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001157.P6892814788348726787

`A035316((n+1)²)`
-/

namespace A001157.P6892814788348726787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 ((n + 1) ^ 2)

end

end A001157.P6892814788348726787

namespace A001157

/-- `A035316((n+1)²)` -/
def P6892814788348726787.Spec : Prop :=
  ∀ n, P6892814788348726787.a n = A001157 (n + 1)

end A001157

/-! ## A001157.P17575776727039769636

`∑{d}[1+n, #²]`
-/

namespace A001157.P17575776727039769636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A001157.P17575776727039769636

namespace A001157

/-- `∑{d}[1+n, #²]` -/
def P17575776727039769636.Spec : Prop :=
  ∀ n, (P17575776727039769636.a n : ℤ) = A001157 (n + 1)

theorem P17575776727039769636.correct : P17575776727039769636.Spec := by
  intro n
  simp only [A001157, Nat.add_sub_cancel, A001157.P17575776727039769636.f1, A001157.P17575776727039769636.a, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001157

/-! ## A001157.P1480917199033384180

`floor(∑{d}[n+1, #^(4/2)])`
-/

namespace A001157.P1480917199033384180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋

end

end A001157.P1480917199033384180

namespace A001157

/-- `floor(∑{d}[n+1, #^(4/2)])` -/
def P1480917199033384180.Spec : Prop :=
  ∀ n, P1480917199033384180.a n = A001157 (n + 1)

end A001157

/-! ## A001157.P725113141586359395

`ceil(∑{d}[n+1, #^(4/2)])`
-/

namespace A001157.P725113141586359395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌉

end

end A001157.P725113141586359395

namespace A001157

/-- `ceil(∑{d}[n+1, #^(4/2)])` -/
def P725113141586359395.Spec : Prop :=
  ∀ n, P725113141586359395.a n = A001157 (n + 1)

end A001157

/-! ## A001157.P16172711258327654183

`round(∑{d}[n+1, #^(4/2)])`
-/

namespace A001157.P16172711258327654183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ))

end

end A001157.P16172711258327654183

namespace A001157

/-- `round(∑{d}[n+1, #^(4/2)])` -/
def P16172711258327654183.Spec : Prop :=
  ∀ n, P16172711258327654183.a n = A001157 (n + 1)

end A001157

/-! ## A001157.P10674826782484667988

`∑{d}[n+1, C(#+1, 2)]+∑{d}[n+1, C(#, 2)]`
-/

namespace A001157.P10674826782484667988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (d + 1) 2 + ∑ d ∈ Nat.divisors (f2 n), Nat.choose d 2

end

end A001157.P10674826782484667988

namespace A001157

/-- `∑{d}[n+1, C(#+1, 2)]+∑{d}[n+1, C(#, 2)]` -/
def P10674826782484667988.Spec : Prop :=
  ∀ n, (P10674826782484667988.a n : ℤ) = A001157 (n + 1)

end A001157

/-! ## A001157.P11712730213314126911

`(n+1)*∑{d}[n+1, #]-∑{d}[n+1, #*(n+1-#)]`
-/

namespace A001157.P11712730213314126911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * ((n + 1 : ℤ) - (d : ℤ))

end

end A001157.P11712730213314126911

namespace A001157

/-- `(n+1)*∑{d}[n+1, #]-∑{d}[n+1, #*(n+1-#)]` -/
def P11712730213314126911.Spec : Prop :=
  ∀ n, P11712730213314126911.a n = A001157 (n + 1)

end A001157

/-! ## A001157.P13432885129554267000

`sqrt(A356533(n+1))`
-/

namespace A001157.P13432885129554267000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356533 (n + 1) : ℝ)

end

end A001157.P13432885129554267000

namespace A001157

/-- `sqrt(A356533(n+1))` -/
def P13432885129554267000.Spec : Prop :=
  ∀ n, P13432885129554267000.a n = (A001157 (n + 1) : ℝ)

end A001157

/-! ## A001157.P4954203515771955853

`A328259(n+1)/(n+1)`
-/

namespace A001157.P4954203515771955853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328259 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001157.P4954203515771955853

namespace A001157

/-- `A328259(n+1)/(n+1)` -/
def P4954203515771955853.Spec : Prop :=
  ∀ n, P4954203515771955853.a n = (A001157 (n + 1) : ℚ)

end A001157

/-! ## A001157.P7164006000051160932

`A092411(n)-a(n-1)` with `a(0)=1`
-/

namespace A001157.P7164006000051160932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092411 n - a (n - 1)

end

end A001157.P7164006000051160932

namespace A001157

/-- `A092411(n)-a(n-1)` -/
def P7164006000051160932.Spec : Prop :=
  ∀ n, P7164006000051160932.a n = A001157 (n + 1)

theorem P7164006000051160932.correct : P7164006000051160932.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A001157, Nat.add_sub_cancel, A001157.P7164006000051160932.a, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A092411, A092411.P1542600042011528390.f1, A092411.P1542600042011528390.f2, A092411.P1542600042011528390.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A001157, Nat.add_sub_cancel, A001157.P7164006000051160932.a, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A092411, A092411.P1542600042011528390.f1, A092411.P1542600042011528390.f2, A092411.P1542600042011528390.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A001157

/-! ## A001157.P3894830960868949969

`A067558(n+1)+(n+1)²`
-/

namespace A001157.P3894830960868949969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A001157.P3894830960868949969

namespace A001157

/-- `A067558(n+1)+(n+1)²` -/
def P3894830960868949969.Spec : Prop :=
  ∀ n, P3894830960868949969.a n = A001157 (n + 1)

theorem P3894830960868949969.correct : P3894830960868949969.Spec := by
  intro n
  simp only [A001157, Nat.add_sub_cancel, A001157.P3894830960868949969.a, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A067558, A067558.P16712056113848255202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001157

/-! ## A001157.P6861537113139348687

`A386745(n+1)/(n+1)²`
-/

namespace A001157.P6861537113139348687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386745 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A001157.P6861537113139348687

namespace A001157

/-- `A386745(n+1)/(n+1)²` -/
def P6861537113139348687.Spec : Prop :=
  ∀ n, P6861537113139348687.a n = (A001157 (n + 1) : ℚ)

end A001157

/-! ## A001157.P4673870985755814898

`A386783(n+1)/(n+1)²²`
-/

namespace A001157.P4673870985755814898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386783 (n + 1) : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A001157.P4673870985755814898

namespace A001157

/-- `A386783(n+1)/(n+1)²²` -/
def P4673870985755814898.Spec : Prop :=
  ∀ n, P4673870985755814898.a n = (A001157 (n + 1) : ℚ)

end A001157

/-! ## A001157.P15494000596255860030

`∑[(n+1)²]-A276984(n+1)`
-/

namespace A001157.P15494000596255860030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A276984 (n + 1)

end

end A001157.P15494000596255860030

namespace A001157

/-- `∑[(n+1)²]-A276984(n+1)` -/
def P15494000596255860030.Spec : Prop :=
  ∀ n, P15494000596255860030.a n = A001157 (n + 1)

end A001157

/-! ## A001157.P13723963956631935972

`A069153(n+1)+A007437(n+1)`
-/

namespace A001157.P13723963956631935972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) + A007437 (n + 1)

end

end A001157.P13723963956631935972

namespace A001157

/-- `A069153(n+1)+A007437(n+1)` -/
def P13723963956631935972.Spec : Prop :=
  ∀ n, P13723963956631935972.a n = A001157 (n + 1)

end A001157

/-! ## A001157.P16588795555537625011

`A086666(n+1)+A000203(n+1)`
-/

namespace A001157.P16588795555537625011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (n + 1) + A000203 (n + 1)

end

end A001157.P16588795555537625011

namespace A001157

/-- `A086666(n+1)+A000203(n+1)` -/
def P16588795555537625011.Spec : Prop :=
  ∀ n, P16588795555537625011.a n = A001157 (n + 1)

theorem P16588795555537625011.correct : P16588795555537625011.Spec := by
  intro n
  simp only [A001157, Nat.add_sub_cancel, A001157.P16588795555537625011.a, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A086666, A086666.P3609160851876626108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001157

/-! ## A001157.P17087527695104444088

`A189120(n+1)+A005063(n+1)`
-/

namespace A001157.P17087527695104444088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189120 (n + 1) + A005063 (n + 1)

end

end A001157.P17087527695104444088

namespace A001157

/-- `A189120(n+1)+A005063(n+1)` -/
def P17087527695104444088.Spec : Prop :=
  ∀ n, P17087527695104444088.a n = A001157 (n + 1)

theorem P17087527695104444088.correct : P17087527695104444088.Spec := by
  intro n
  simp only [A001157, Nat.add_sub_cancel, A001157.P17087527695104444088.a, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A189120, A189120.P13109880559421340591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001157

/-! ## A001157.P3834320611763065099

`A189835(n+1)+A038040(n+1)`
-/

namespace A001157.P3834320611763065099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189835 (n + 1) + A038040 (n + 1)

end

end A001157.P3834320611763065099

namespace A001157

/-- `A189835(n+1)+A038040(n+1)` -/
def P3834320611763065099.Spec : Prop :=
  ∀ n, P3834320611763065099.a n = A001157 (n + 1)

theorem P3834320611763065099.correct : P3834320611763065099.Spec := by
  intro n
  simp only [A001157, Nat.add_sub_cancel, A001157.P3834320611763065099.a, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A038040, A038040.P16512896840577774730.a, A189835, A189835.P10100538785749668856.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001157

/-! ## A001157.P2122035432089977366

`A092344(n+1)-A001158(n+1)`
-/

namespace A001157.P2122035432089977366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092344 (n + 1) - A001158 (n + 1)

end

end A001157.P2122035432089977366

namespace A001157

/-- `A092344(n+1)-A001158(n+1)` -/
def P2122035432089977366.Spec : Prop :=
  ∀ n, P2122035432089977366.a n = A001157 (n + 1)

end A001157

/-! ## A001157.P13318475153623786315

`A001158(n+1)-A092349(n+1)`
-/

namespace A001157.P13318475153623786315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A092349 (n + 1)

end

end A001157.P13318475153623786315

namespace A001157

/-- `A001158(n+1)-A092349(n+1)` -/
def P13318475153623786315.Spec : Prop :=
  ∀ n, P13318475153623786315.a n = A001157 (n + 1)

theorem P13318475153623786315.correct : P13318475153623786315.Spec := by
  intro n
  simp only [A001157, Nat.add_sub_cancel, A001157.P13318475153623786315.a, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092349, A092349.P6108062605440403893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001157

/-! ## A001157.P17878717581134609993

`∑{d}[n+1, #²]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001157

/-- `∑{d}[n+1, #²]` -/
def P17878717581134609993.Spec : Prop :=
  ∀ n, (P17878717581134609993.a n : ℤ) = A001157 (n + 1)

theorem P17878717581134609993.correct : P17878717581134609993.Spec := by
  intro n
  simp only [A001157, Nat.add_sub_cancel]

end A001157

/-!
# A001158: sigma_3(n): sum of cubes of divisors of n.

The programs for A001158, the canonical program `A001158.P5142498491642488153` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001158 has offset 1).

The definition of A001158 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001158.anchor (n : ℕ) (hn : 1 ≤ n) : A001158 n = (ArithmeticFunction.sigma 3 n : ℤ)` in `Proof.A001.A001158`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001158.P12645682000162428551

`A004009(n+1)/240`
-/

namespace A001158.P12645682000162428551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004009 (n + 1) : ℚ) / 240

end

end A001158.P12645682000162428551

namespace A001158

/-- `A004009(n+1)/240` -/
def P12645682000162428551.Spec : Prop :=
  ∀ n, P12645682000162428551.a n = (A001158 (n + 1) : ℚ)

end A001158

/-! ## A001158.P837259007564856385

`∑{d}[1+n, #^3]`
-/

namespace A001158.P837259007564856385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 3

end

end A001158.P837259007564856385

namespace A001158

/-- `∑{d}[1+n, #^3]` -/
def P837259007564856385.Spec : Prop :=
  ∀ n, (P837259007564856385.a n : ℤ) = A001158 (n + 1)

theorem P837259007564856385.correct : P837259007564856385.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel, A001158.P837259007564856385.f1, A001158.P837259007564856385.a, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001158

/-! ## A001158.P598724267189018489

`round(sqrt(1+∑{d}[n+1, #*#²]²))`
-/

namespace A001158.P598724267189018489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((1 + (∑ d ∈ Nat.divisors (f1 n), d * d ^ 2) ^ 2 : ℕ) : ℝ))

end

end A001158.P598724267189018489

namespace A001158

/-- `round(sqrt(1+∑{d}[n+1, #*#²]²))` -/
def P598724267189018489.Spec : Prop :=
  ∀ n, P598724267189018489.a n = A001158 (n + 1)

end A001158

/-! ## A001158.P10094770740160557454

`sqrt(A356534(n+1))`
-/

namespace A001158.P10094770740160557454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356534 (n + 1) : ℝ)

end

end A001158.P10094770740160557454

namespace A001158

/-- `sqrt(A356534(n+1))` -/
def P10094770740160557454.Spec : Prop :=
  ∀ n, P10094770740160557454.a n = (A001158 (n + 1) : ℝ)

end A001158

/-! ## A001158.P12801617750260263772

`A276634(n+1)+(n+1)^3`
-/

namespace A001158.P12801617750260263772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276634 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A001158.P12801617750260263772

namespace A001158

/-- `A276634(n+1)+(n+1)^3` -/
def P12801617750260263772.Spec : Prop :=
  ∀ n, P12801617750260263772.a n = A001158 (n + 1)

theorem P12801617750260263772.correct : P12801617750260263772.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel, A001158.P12801617750260263772.a, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A276634, A276634.P10773123215461950839.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001158

/-! ## A001158.P18367162495663239675

`A092349(n+1)+(n+1)*∑{d}[n+1, #]-∑{d}[n+1, #*(n+1-#)]`
-/

namespace A001158.P18367162495663239675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092349 (n + 1) + ((((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * ((n + 1 : ℤ) - (d : ℤ)))

end

end A001158.P18367162495663239675

namespace A001158

/-- `A092349(n+1)+(n+1)*∑{d}[n+1, #]-∑{d}[n+1, #*(n+1-#)]` -/
def P18367162495663239675.Spec : Prop :=
  ∀ n, P18367162495663239675.a n = A001158 (n + 1)

end A001158

/-! ## A001158.P15041780858517118827

`A092348(n+1)+A000203(n+1)`
-/

namespace A001158.P15041780858517118827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) + A000203 (n + 1)

end

end A001158.P15041780858517118827

namespace A001158

/-- `A092348(n+1)+A000203(n+1)` -/
def P15041780858517118827.Spec : Prop :=
  ∀ n, P15041780858517118827.a n = A001158 (n + 1)

theorem P15041780858517118827.correct : P15041780858517118827.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel, A001158.P15041780858517118827.a, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A092348, A092348.P6797940107064523525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001158

/-! ## A001158.P17236825715254438862

`A092349(n+1)+A001157(n+1)`
-/

namespace A001158.P17236825715254438862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092349 (n + 1) + A001157 (n + 1)

end

end A001158.P17236825715254438862

namespace A001158

/-- `A092349(n+1)+A001157(n+1)` -/
def P17236825715254438862.Spec : Prop :=
  ∀ n, P17236825715254438862.a n = A001158 (n + 1)

theorem P17236825715254438862.correct : P17236825715254438862.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel, A001158.P17236825715254438862.a, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A092349, A092349.P6108062605440403893.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001158

/-! ## A001158.P13286634258328800020

`A279290(n+1)+A005064(n+1)`
-/

namespace A001158.P13286634258328800020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279290 (n + 1) + A005064 (n + 1)

end

end A001158.P13286634258328800020

namespace A001158

/-- `A279290(n+1)+A005064(n+1)` -/
def P13286634258328800020.Spec : Prop :=
  ∀ n, P13286634258328800020.a n = A001158 (n + 1)

theorem P13286634258328800020.correct : P13286634258328800020.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel, A001158.P13286634258328800020.a, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A005064, A005064.P4705532925960423919.a, A279290, A279290.P4214688874557127316.a, A005067, A005067.P334427718602793794.f1, A005067.P334427718602793794.a, A059841, A059841.P7264174615531153985.a, A303972, A303972.P11388176725645930891.a, A303873, A303873.P11708283508415631705.f1, A303873.P11708283508415631705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001158

/-! ## A001158.P8537491343879700745

`A092344(n+1)-A001157(n+1)`
-/

namespace A001158.P8537491343879700745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092344 (n + 1) - A001157 (n + 1)

end

end A001158.P8537491343879700745

namespace A001158

/-- `A092344(n+1)-A001157(n+1)` -/
def P8537491343879700745.Spec : Prop :=
  ∀ n, P8537491343879700745.a n = A001158 (n + 1)

end A001158

/-! ## A001158.P7977839821671368114

`A051000(n+1)*A318935(n+1)`
-/

namespace A001158.P7977839821671368114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) * A318935 (n + 1)

end

end A001158.P7977839821671368114

namespace A001158

/-- `A051000(n+1)*A318935(n+1)` -/
def P7977839821671368114.Spec : Prop :=
  ∀ n, P7977839821671368114.a n = A001158 (n + 1)

end A001158

/-! ## A001158.P8768395542646790736

`A379813(n+1)/A000203(n+1)`
-/

namespace A001158.P8768395542646790736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379813 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A001158.P8768395542646790736

namespace A001158

/-- `A379813(n+1)/A000203(n+1)` -/
def P8768395542646790736.Spec : Prop :=
  ∀ n, P8768395542646790736.a n = (A001158 (n + 1) : ℚ)

end A001158

/-! ## A001158.P888978359466508103

`A379814(n+1)/A001157(n+1)`
-/

namespace A001158.P888978359466508103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ)

end

end A001158.P888978359466508103

namespace A001158

/-- `A379814(n+1)/A001157(n+1)` -/
def P888978359466508103.Spec : Prop :=
  ∀ n, P888978359466508103.a n = (A001158 (n + 1) : ℚ)

end A001158

/-! ## A001158.P8117820375152587260

`2*A278403(n+1)-A001157(n+1)`
-/

namespace A001158.P8117820375152587260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278403 (n + 1) - A001157 (n + 1)

end

end A001158.P8117820375152587260

namespace A001158

/-- `2*A278403(n+1)-A001157(n+1)` -/
def P8117820375152587260.Spec : Prop :=
  ∀ n, P8117820375152587260.a n = A001158 (n + 1)

end A001158

/-! ## A001158.P1040487715775186651

`(A297842(n+1)+A297793(n+1))/2`
-/

namespace A001158.P1040487715775186651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297842 (n + 1) + A297793 (n + 1) : ℚ) / 2

end

end A001158.P1040487715775186651

namespace A001158

/-- `(A297842(n+1)+A297793(n+1))/2` -/
def P1040487715775186651.Spec : Prop :=
  ∀ n, P1040487715775186651.a n = (A001158 (n + 1) : ℚ)

end A001158

/-! ## A001158.P9647023811675623091

`A000203(n+1)+A092350(n+1)+A001157(n+1)`
-/

namespace A001158.P9647023811675623091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A092350 (n + 1) + A001157 (n + 1))

end

end A001158.P9647023811675623091

namespace A001158

/-- `A000203(n+1)+A092350(n+1)+A001157(n+1)` -/
def P9647023811675623091.Spec : Prop :=
  ∀ n, P9647023811675623091.a n = A001158 (n + 1)

theorem P9647023811675623091.correct : P9647023811675623091.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel, A001158.P9647023811675623091.a, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A092350, A092350.P468185143034267318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001158

/-! ## A001158.P820311159339334010

`A092348(n+1)+A260934(n+1)+A227873(n+1)`
-/

namespace A001158.P820311159339334010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) + (A260934 (n + 1) + A227873 (n + 1))

end

end A001158.P820311159339334010

namespace A001158

/-- `A092348(n+1)+A260934(n+1)+A227873(n+1)` -/
def P820311159339334010.Spec : Prop :=
  ∀ n, P820311159339334010.a n = A001158 (n + 1)

theorem P820311159339334010.correct : P820311159339334010.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel, A001158.P820311159339334010.a, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092348, A092348.P6797940107064523525.a, A227873, A227873.P3410460234799286399.f1, A227873.P3410460234799286399.a, A260934, A260934.P7552531157136623072.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A102392, A102392.P6267888131439325102.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001158

/-! ## A001158.P13745180928231588664

`A092347(n+1)-(A001157(n+1)+A000203(n+1))`
-/

namespace A001158.P13745180928231588664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092347 (n + 1) - (A001157 (n + 1) + A000203 (n + 1))

end

end A001158.P13745180928231588664

namespace A001158

/-- `A092347(n+1)-(A001157(n+1)+A000203(n+1))` -/
def P13745180928231588664.Spec : Prop :=
  ∀ n, P13745180928231588664.a n = A001158 (n + 1)

end A001158

/-! ## A001158.P6505775938166491400

`A007437(n+1)+A092348(n+1)-A069153(n+1)`
-/

namespace A001158.P6505775938166491400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) + (A092348 (n + 1) - A069153 (n + 1))

end

end A001158.P6505775938166491400

namespace A001158

/-- `A007437(n+1)+A092348(n+1)-A069153(n+1)` -/
def P6505775938166491400.Spec : Prop :=
  ∀ n, P6505775938166491400.a n = A001158 (n + 1)

end A001158

/-! ## A001158.P2533920586195628505

`A001157(n+1)+A092348(n+1)-A086666(n+1)`
-/

namespace A001158.P2533920586195628505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (A092348 (n + 1) - A086666 (n + 1))

end

end A001158.P2533920586195628505

namespace A001158

/-- `A001157(n+1)+A092348(n+1)-A086666(n+1)` -/
def P2533920586195628505.Spec : Prop :=
  ∀ n, P2533920586195628505.a n = A001158 (n + 1)

theorem P2533920586195628505.correct : P2533920586195628505.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel, A001158.P2533920586195628505.a, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A086666, A086666.P3609160851876626108.a, A092348, A092348.P6797940107064523525.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001158

/-! ## A001158.P5142498491642488153

`∑{d}[n+1, #^3]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001158

/-- `∑{d}[n+1, #^3]` -/
def P5142498491642488153.Spec : Prop :=
  ∀ n, (P5142498491642488153.a n : ℤ) = A001158 (n + 1)

theorem P5142498491642488153.correct : P5142498491642488153.Spec := by
  intro n
  simp only [A001158, Nat.add_sub_cancel]

end A001158

/-!
# A001159: sigma_4(n): sum of 4th powers of divisors of n.

The programs for A001159, the canonical program `A001159.P9898895530264138649` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001159 has offset 1).

The definition of A001159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001159.P9898895530264138649

`∑{d}[n+1, #^4]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001159

/-- `∑{d}[n+1, #^4]` -/
def P9898895530264138649.Spec : Prop :=
  ∀ n, (P9898895530264138649.a n : ℤ) = A001159 (n + 1)

theorem P9898895530264138649.correct : P9898895530264138649.Spec := by
  intro n
  simp only [A001159, Nat.add_sub_cancel]

end A001159

/-! ## A001159.P18127509004730834394

`floor(∑{d}[n+1, ((n+1)/#)²²])`
-/

namespace A001159.P18127509004730834394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (((n + 1 : ℚ) / (d : ℚ)) ^ 2) ^ 2⌋

end

end A001159.P18127509004730834394

namespace A001159

/-- `floor(∑{d}[n+1, ((n+1)/#)²²])` -/
def P18127509004730834394.Spec : Prop :=
  ∀ n, P18127509004730834394.a n = A001159 (n + 1)

end A001159

/-! ## A001159.P15133903527946718637

`ceil(∑{d}[n+1, ((n+1)/#)²²])`
-/

namespace A001159.P15133903527946718637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (((n + 1 : ℚ) / (d : ℚ)) ^ 2) ^ 2⌉

end

end A001159.P15133903527946718637

namespace A001159

/-- `ceil(∑{d}[n+1, ((n+1)/#)²²])` -/
def P15133903527946718637.Spec : Prop :=
  ∀ n, P15133903527946718637.a n = A001159 (n + 1)

end A001159

/-! ## A001159.P5313997825540270789

`round(∑{d}[n+1, ((n+1)/#)²²])`
-/

namespace A001159.P5313997825540270789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (((n + 1 : ℚ) / (d : ℚ)) ^ 2) ^ 2)

end

end A001159.P5313997825540270789

namespace A001159

/-- `round(∑{d}[n+1, ((n+1)/#)²²])` -/
def P5313997825540270789.Spec : Prop :=
  ∀ n, P5313997825540270789.a n = A001159 (n + 1)

end A001159

/-! ## A001159.P14298233645818259072

`A279363(n+1)+(n+1)²²`
-/

namespace A001159.P14298233645818259072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279363 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A001159.P14298233645818259072

namespace A001159

/-- `A279363(n+1)+(n+1)²²` -/
def P14298233645818259072.Spec : Prop :=
  ∀ n, P14298233645818259072.a n = A001159 (n + 1)

theorem P14298233645818259072.correct : P14298233645818259072.Spec := by
  intro n
  simp only [A001159, Nat.add_sub_cancel, A001159.P14298233645818259072.a, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A279363, A279363.P36880166466637901.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001159

/-! ## A001159.P11613207725849405083

`A386784(n+1)/(n+1)²²`
-/

namespace A001159.P11613207725849405083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386784 (n + 1) : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A001159.P11613207725849405083

namespace A001159

/-- `A386784(n+1)/(n+1)²²` -/
def P11613207725849405083.Spec : Prop :=
  ∀ n, P11613207725849405083.a n = (A001159 (n + 1) : ℚ)

end A001159

/-! ## A001159.P6772175891206490272

`A013954(n+1)*A386784(n+1)/A386786(n+1)`
-/

namespace A001159.P6772175891206490272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013954 (n + 1) * A386784 (n + 1) : ℚ) / (A386786 (n + 1) : ℚ)

end

end A001159.P6772175891206490272

namespace A001159

/-- `A013954(n+1)*A386784(n+1)/A386786(n+1)` -/
def P6772175891206490272.Spec : Prop :=
  ∀ n, P6772175891206490272.a n = (A001159 (n + 1) : ℚ)

end A001159

/-! ## A001159.P17195423970989124212

`A386749(n+1)/(n+1)`
-/

namespace A001159.P17195423970989124212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386749 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001159.P17195423970989124212

namespace A001159

/-- `A386749(n+1)/(n+1)` -/
def P17195423970989124212.Spec : Prop :=
  ∀ n, P17195423970989124212.a n = (A001159 (n + 1) : ℚ)

end A001159

/-! ## A001159.P12488448370137620194

`A386747(n+1)/(n+1)²`
-/

namespace A001159.P12488448370137620194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386747 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A001159.P12488448370137620194

namespace A001159

/-- `A386747(n+1)/(n+1)²` -/
def P12488448370137620194.Spec : Prop :=
  ∀ n, P12488448370137620194.a n = (A001159 (n + 1) : ℚ)

end A001159

/-! ## A001159.P16982811853099218777

`A386748(n+1)/(n+1)^3`
-/

namespace A001159.P16982811853099218777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386748 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A001159.P16982811853099218777

namespace A001159

/-- `A386748(n+1)/(n+1)^3` -/
def P16982811853099218777.Spec : Prop :=
  ∀ n, P16982811853099218777.a n = (A001159 (n + 1) : ℚ)

end A001159

/-! ## A001159.P5669170950419331972

`A013954(n+1)*A386747(n+1)/A386777(n+1)`
-/

namespace A001159.P5669170950419331972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013954 (n + 1) * A386747 (n + 1) : ℚ) / (A386777 (n + 1) : ℚ)

end

end A001159.P5669170950419331972

namespace A001159

/-- `A013954(n+1)*A386747(n+1)/A386777(n+1)` -/
def P5669170950419331972.Spec : Prop :=
  ∀ n, P5669170950419331972.a n = (A001159 (n + 1) : ℚ)

end A001159

/-! ## A001159.P1375371577671471308

`A013956(n+1)*A386747(n+1)/A386778(n+1)`
-/

namespace A001159.P1375371577671471308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013956 (n + 1) * A386747 (n + 1) : ℚ) / (A386778 (n + 1) : ℚ)

end

end A001159.P1375371577671471308

namespace A001159

/-- `A013956(n+1)*A386747(n+1)/A386778(n+1)` -/
def P1375371577671471308.Spec : Prop :=
  ∀ n, P1375371577671471308.a n = (A001159 (n + 1) : ℚ)

end A001159

/-! ## A001159.P17271105881848444037

`A386747(n+1)*A386747(n+1)/A386784(n+1)`
-/

namespace A001159.P17271105881848444037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386747 (n + 1) * A386747 (n + 1) : ℚ) / (A386784 (n + 1) : ℚ)

end

end A001159.P17271105881848444037

namespace A001159

/-- `A386747(n+1)*A386747(n+1)/A386784(n+1)` -/
def P17271105881848444037.Spec : Prop :=
  ∀ n, P17271105881848444037.a n = (A001159 (n + 1) : ℚ)

end A001159

/-! ## A001159.P8681509515148711739

`A328271((n+1)²)`
-/

namespace A001159.P8681509515148711739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328271 ((n + 1) ^ 2)

end

end A001159.P8681509515148711739

namespace A001159

/-- `A328271((n+1)²)` -/
def P8681509515148711739.Spec : Prop :=
  ∀ n, P8681509515148711739.a n = A001159 (n + 1)

end A001159

/-! ## A001159.P18133318418896317707

`A351307((n+1)²)`
-/

namespace A001159.P18133318418896317707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 ((n + 1) ^ 2)

end

end A001159.P18133318418896317707

namespace A001159

/-- `A351307((n+1)²)` -/
def P18133318418896317707.Spec : Prop :=
  ∀ n, P18133318418896317707.a n = A001159 (n + 1)

end A001159

/-!
# A001160: sigma_5(n), the sum of the 5th powers of the divisors of n.

The programs for A001160, the canonical program `A001160.P16437103325583265017` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001160 has offset 1).

The definition of A001160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001160.P16437103325583265017

`∑{d}[n+1, #^5]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001160

/-- `∑{d}[n+1, #^5]` -/
def P16437103325583265017.Spec : Prop :=
  ∀ n, (P16437103325583265017.a n : ℤ) = A001160 (n + 1)

theorem P16437103325583265017.correct : P16437103325583265017.Spec := by
  intro n
  simp only [A001160, Nat.add_sub_cancel]

end A001160

/-! ## A001160.P12947308302920717633

`A386785(n+1)/(n+1)²²`
-/

namespace A001160.P12947308302920717633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386785 (n + 1) : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A001160.P12947308302920717633

namespace A001160

/-- `A386785(n+1)/(n+1)²²` -/
def P12947308302920717633.Spec : Prop :=
  ∀ n, P12947308302920717633.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P16044285168616070752

`A282050(n+1)/(n+1)`
-/

namespace A001160.P16044285168616070752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282050 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001160.P16044285168616070752

namespace A001160

/-- `A282050(n+1)/(n+1)` -/
def P16044285168616070752.Spec : Prop :=
  ∀ n, P16044285168616070752.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P10150990316697548858

`A282751(n+1)/(n+1)²`
-/

namespace A001160.P10150990316697548858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282751 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A001160.P10150990316697548858

namespace A001160

/-- `A282751(n+1)/(n+1)²` -/
def P10150990316697548858.Spec : Prop :=
  ∀ n, P10150990316697548858.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P3156762404474648716

`A282781(n+1)/(n+1)^3`
-/

namespace A001160.P3156762404474648716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A001160.P3156762404474648716

namespace A001160

/-- `A282781(n+1)/(n+1)^3` -/
def P3156762404474648716.Spec : Prop :=
  ∀ n, P3156762404474648716.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P11032028239897476944

`A279364(n+1)+A000584(n+1)`
-/

namespace A001160.P11032028239897476944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279364 (n + 1) + A000584 (n + 1)

end

end A001160.P11032028239897476944

namespace A001160

/-- `A279364(n+1)+A000584(n+1)` -/
def P11032028239897476944.Spec : Prop :=
  ∀ n, P11032028239897476944.a n = A001160 (n + 1)

theorem P11032028239897476944.correct : P11032028239897476944.Spec := by
  intro n
  simp only [A001160, Nat.add_sub_cancel, A001160.P11032028239897476944.a, A001160.P16437103325583265017.f1, A001160.P16437103325583265017.a, A000584, A000584.P5477385692209315495.a, A279364, A279364.P12642884651805125480.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001160

/-! ## A001160.P1584179754861715082

`A013957(n+1)/A280021(n+1)*A282751(n+1)`
-/

namespace A001160.P1584179754861715082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013957 (n + 1) : ℚ) / (A280021 (n + 1) : ℚ) * (A282751 (n + 1) : ℚ)

end

end A001160.P1584179754861715082

namespace A001160

/-- `A013957(n+1)/A280021(n+1)*A282751(n+1)` -/
def P1584179754861715082.Spec : Prop :=
  ∀ n, P1584179754861715082.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P3041789264982510102

`A013955(n+1)*A282751(n+1)/A282753(n+1)`
-/

namespace A001160.P3041789264982510102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013955 (n + 1) * A282751 (n + 1) : ℚ) / (A282753 (n + 1) : ℚ)

end

end A001160.P3041789264982510102

namespace A001160

/-- `A013955(n+1)*A282751(n+1)/A282753(n+1)` -/
def P3041789264982510102.Spec : Prop :=
  ∀ n, P3041789264982510102.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P8461282888666310698

`A013954(n+1)*A282751(n+1)/A386777(n+1)`
-/

namespace A001160.P8461282888666310698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013954 (n + 1) * A282751 (n + 1) : ℚ) / (A386777 (n + 1) : ℚ)

end

end A001160.P8461282888666310698

namespace A001160

/-- `A013954(n+1)*A282751(n+1)/A386777(n+1)` -/
def P8461282888666310698.Spec : Prop :=
  ∀ n, P8461282888666310698.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P8305656339651377234

`A013956(n+1)*A282751(n+1)/A386778(n+1)`
-/

namespace A001160.P8305656339651377234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013956 (n + 1) * A282751 (n + 1) : ℚ) / (A386778 (n + 1) : ℚ)

end

end A001160.P8305656339651377234

namespace A001160

/-- `A013956(n+1)*A282751(n+1)/A386778(n+1)` -/
def P8305656339651377234.Spec : Prop :=
  ∀ n, P8305656339651377234.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P2434786824596706831

`A282099(n+1)/A280025(n+1)*A282751(n+1)`
-/

namespace A001160.P2434786824596706831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282099 (n + 1) : ℚ) / (A280025 (n + 1) : ℚ) * (A282751 (n + 1) : ℚ)

end

end A001160.P2434786824596706831

namespace A001160

/-- `A282099(n+1)/A280025(n+1)*A282751(n+1)` -/
def P2434786824596706831.Spec : Prop :=
  ∀ n, P2434786824596706831.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P11481518043957645571

`A282751(n+1)*A282751(n+1)/A386785(n+1)`
-/

namespace A001160.P11481518043957645571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282751 (n + 1) * A282751 (n + 1) : ℚ) / (A386785 (n + 1) : ℚ)

end

end A001160.P11481518043957645571

namespace A001160

/-- `A282751(n+1)*A282751(n+1)/A386785(n+1)` -/
def P11481518043957645571.Spec : Prop :=
  ∀ n, P11481518043957645571.a n = (A001160 (n + 1) : ℚ)

end A001160

/-! ## A001160.P3117430430732328578

`A013973(n²+n)/A013973(n)`
-/

namespace A001160.P3117430430732328578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013973 (n ^ 2 + n) : ℚ) / (A013973 n : ℚ)

end

end A001160.P3117430430732328578

namespace A001160

/-- `A013973(n²+n)/A013973(n)` -/
def P3117430430732328578.Spec : Prop :=
  ∀ n, P3117430430732328578.a n = (A001160 (n + 1) : ℚ)

end A001160

/-!
# A001161: Numbers containing an even number of letters.

The programs for A001161, there is no canonical definition to state claims against.
-/

/-! ## A001161.P808550070866467516

`comp[A001162(n+1)]`
-/

namespace A001161.P808550070866467516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001161.P808550070866467516

/-! ## A001161.P10007649584992641414

`eq[A181672(A004277(n))%2, floor(1/(n+1))]`
-/

namespace A001161.P10007649584992641414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181672 (A004277 n).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001161.P10007649584992641414

/-!
# A001162: Numbers containing an odd number of letters.

The programs for A001162, there is no canonical definition to state claims against.
-/

/-! ## A001162.P4939067441741446684

`comp[A001161(n+1)]`
-/

namespace A001162.P4939067441741446684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001162.P4939067441741446684

/-! ## A001162.P2120236998605371678

`eq[A181672(A004277(n))%2, A057427(n)]`
-/

namespace A001162.P2120236998605371678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181672 (A004277 n).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001162.P2120236998605371678

/-! ## A001162.P6913802659064234022

`eq[1, (A178334(n)*A181672(A004277(n)))%2]`
-/

namespace A001162.P6913802659064234022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178334 n * A181672 (A004277 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001162.P6913802659064234022

/-! ## A001162.P15198328151735289299

`lt[A119270(n+1), A309600(A119270(3*(n+1)))]`
-/

namespace A001162.P15198328151735289299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 (A119270 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001162.P15198328151735289299

/-!
# A001163: Stirling's formula: numerators of asymptotic series for Gamma function.

The programs for A001163, there is no canonical definition to state claims against.
-/

/-! ## A001163.P12115652705267704703

`A264148(2*n)`
-/

namespace A001163.P12115652705267704703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264148 (2 * n)

end

end A001163.P12115652705267704703

/-! ## A001163.P11788613567695271112

`or(A005447(2*n+1), A299432(A262372(n)))`
-/

namespace A001163.P11788613567695271112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005447 (2 * n + 1)) (A299432 (A262372 n).toNat)

end

end A001163.P11788613567695271112

/-! ## A001163.P17116312443430421492

`A299432(A130773(n+1))`
-/

namespace A001163.P17116312443430421492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (A130773 (n + 1)).toNat

end

end A001163.P17116312443430421492

/-! ## A001163.P552942643893248749

`A299432(A223134(n+1))`
-/

namespace A001163.P552942643893248749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (A223134 (n + 1)).toNat

end

end A001163.P552942643893248749

/-! ## A001163.P2512776584518796821

`A299432(A140139(n+2))`
-/

namespace A001163.P2512776584518796821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (A140139 (n + 2)).toNat

end

end A001163.P2512776584518796821

/-!
# A001164: Stirling's formula: denominators of asymptotic series for Gamma function.

The programs for A001164, there is no canonical definition to state claims against.
-/

/-! ## A001164.P4148003736725697715

`A264149(2*n)`
-/

namespace A001164.P4148003736725697715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264149 (2 * n)

end

end A001164.P4148003736725697715

/-! ## A001164.P7484647592413097638

`record[A264149(n)^((n+1)%2)]`
-/

namespace A001164.P7484647592413097638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264149 n ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001164.P7484647592413097638

/-! ## A001164.P11272531460201865

`record[A264149(n)/A033999(n)]`
-/

namespace A001164.P11272531460201865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264149 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001164.P11272531460201865

/-! ## A001164.P7226114323585092887

`a(n-1)*A154268(n-1)` with `a(0)=1`
-/

namespace A001164.P7226114323585092887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A154268 (n - 1)

end

end A001164.P7226114323585092887

/-! ## A001164.P13201730292632342754

`∏[A154268(n)]/A154268(n)`
-/

namespace A001164.P13201730292632342754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A154268 n : ℚ)

end

end A001164.P13201730292632342754

/-!
# A001165: Position of first even digit after decimal point in sqrt(n).

The programs for A001165, there is no canonical definition to state claims against.
-/

/-! ## A001165.P935012816983677785

`A101211(∑[A181543(n+3)]+2)`
-/

namespace A001165.P935012816983677785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181543 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A001165.P935012816983677785

/-! ## A001165.P12907045027419431253

`gcd(A001222(A246878(n)), A286357(n+1))`
-/

namespace A001165.P12907045027419431253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A246878 n).toNat) (A286357 (n + 1))

end

end A001165.P12907045027419431253

/-! ## A001165.P16608385099103297147

`gcd(A141214(A270741(n+2)), A167450(n+1))`
-/

namespace A001165.P16608385099103297147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141214 (A270741 (n + 2)).toNat) (A167450 (n + 1))

end

end A001165.P16608385099103297147

/-! ## A001165.P236162112629553693

`A026791(A237270(n+1)+A170926(3*n+1))`
-/

namespace A001165.P236162112629553693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (A237270 (n + 1) + A170926 (3 * n + 1)).toNat

end

end A001165.P236162112629553693

/-! ## A001165.P14577161857052333911

`A274468(A314927(n+1))`
-/

namespace A001165.P14577161857052333911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274468 (A314927 (n + 1)).toNat

end

end A001165.P14577161857052333911

/-!
# A001168: Number of fixed polyominoes with n cells.

The programs for A001168, there is no canonical definition to state claims against.
-/

/-! ## A001168.P4213814974307995786

`∑[A283110(abs(1-n))]`
-/

namespace A001168.P4213814974307995786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283110 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001168.P4213814974307995786

/-! ## A001168.P15631149018078636232

`A283110(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A001168.P15631149018078636232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A283110 (n - 1) + a (n - 1)

end

end A001168.P15631149018078636232

/-! ## A001168.P2918781593373483198

`A048664(A028310(n))/A028310(n)`
-/

namespace A001168.P2918781593373483198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048664 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A001168.P2918781593373483198

/-! ## A001168.P15133747059997742574

`A048664(A065033(2*n))/A065033(2*n)`
-/

namespace A001168.P15133747059997742574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048664 (A065033 (2 * n)).toNat : ℚ) / (A065033 (2 * n) : ℚ)

end

end A001168.P15133747059997742574

/-! ## A001168.P16715398923192249460

`∑[A283110(A028310(n))]-A283110(n)`
-/

namespace A001168.P16715398923192249460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283110 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283110 n

end

end A001168.P16715398923192249460

/-! ## A001168.P9933642632033113902

`A283108(n)+A000105(n)`
-/

namespace A001168.P9933642632033113902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283108 n + A000105 n

end

end A001168.P9933642632033113902

/-! ## A001168.P14875411086723964519

`A283108(n)+A006765(round(1/(n+1)+n))+1`
-/

namespace A001168.P14875411086723964519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283108 n + (A006765 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) + (n : ℚ))).toNat + 1)

end

end A001168.P14875411086723964519

/-! ## A001168.P10379137190214750995

`A283108(n)+Δ[A173271(n)]-A283109(n)`
-/

namespace A001168.P10379137190214750995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283108 n + (f1 (n + 1) - f1 n - A283109 n)

end

end A001168.P10379137190214750995

/-!
# A001169: Number of board-pile polyominoes with n cells.

The programs for A001169, the canonical program `A001169.P13031006421353421734` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001169 has offset 1).

The definition of A001169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001169.P9792193894589940801

`ogf((1-3x+3x^2-x^3)/(1-5x+7x^2-4x^3))`
-/

namespace A001169.P9792193894589940801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -5, 7, -4] n

end

end A001169.P9792193894589940801

namespace A001169

/-- `ogf((1-3x+3x^2-x^3)/(1-5x+7x^2-4x^3))` -/
def P9792193894589940801.Spec : Prop :=
  ∀ n, P9792193894589940801.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P1090811615120613582

`a(n-1)+A049219(n+1)+A049220(n+1)` with `a(0)=1`
-/

namespace A001169.P1090811615120613582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A049219 (n + 1) + A049220 (n + 1)

end

end A001169.P1090811615120613582

namespace A001169

/-- `a(n-1)+A049219(n+1)+A049220(n+1)` -/
def P1090811615120613582.Spec : Prop :=
  ∀ n, P1090811615120613582.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P13031006421353421734

`5*a(n-1)-7*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=19`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001169

/-- `5*a(n-1)-7*a(n-2)+4*a(n-3)` -/
def P13031006421353421734.Spec : Prop :=
  ∀ n, P13031006421353421734.a n = A001169 (n + 1)

theorem P13031006421353421734.correct : P13031006421353421734.Spec := by
  intro n
  simp only [A001169, Nat.add_sub_cancel]

end A001169

/-! ## A001169.P13702354858355016236

`A049220(n+2)+A049219(n+1)`
-/

namespace A001169.P13702354858355016236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 2) + A049219 (n + 1)

end

end A001169.P13702354858355016236

namespace A001169

/-- `A049220(n+2)+A049219(n+1)` -/
def P13702354858355016236.Spec : Prop :=
  ∀ n, P13702354858355016236.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P3613216312357365537

`A301994(n+1)+A049222(n+2)`
-/

namespace A001169.P3613216312357365537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301994 (n + 1) + A049222 (n + 2)

end

end A001169.P3613216312357365537

namespace A001169

/-- `A301994(n+1)+A049222(n+2)` -/
def P3613216312357365537.Spec : Prop :=
  ∀ n, P3613216312357365537.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P1499415106087185474

`A301994(n+1)+∑[A049220(n+1)]`
-/

namespace A001169.P1499415106087185474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301994 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001169.P1499415106087185474

namespace A001169

/-- `A301994(n+1)+∑[A049220(n+1)]` -/
def P1499415106087185474.Spec : Prop :=
  ∀ n, P1499415106087185474.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P14407726024506113907

`∑[A049219(n+1)+Δ[A049222(n+1)]]`
-/

namespace A001169.P14407726024506113907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001169.P14407726024506113907

namespace A001169

/-- `∑[A049219(n+1)+Δ[A049222(n+1)]]` -/
def P14407726024506113907.Spec : Prop :=
  ∀ n, P14407726024506113907.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P7057108032489438340

`∑[A049219(n+1)+A049222(n+2)-A049222(n+1)]`
-/

namespace A001169.P7057108032489438340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1) + (A049222 (n + 2) - A049222 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001169.P7057108032489438340

namespace A001169

/-- `∑[A049219(n+1)+A049222(n+2)-A049222(n+1)]` -/
def P7057108032489438340.Spec : Prop :=
  ∀ n, P7057108032489438340.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P14157911568051570766

`Δ[A049220(n+2)]`
-/

namespace A001169.P14157911568051570766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001169.P14157911568051570766

namespace A001169

/-- `Δ[A049220(n+2)]` -/
def P14157911568051570766.Spec : Prop :=
  ∀ n, P14157911568051570766.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P2477243495241131649

`Δ[Δ[A049222(n+2)]]`
-/

namespace A001169.P2477243495241131649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049222 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001169.P2477243495241131649

namespace A001169

/-- `Δ[Δ[A049222(n+2)]]` -/
def P2477243495241131649.Spec : Prop :=
  ∀ n, P2477243495241131649.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P17746525020760691113

`A049219(n+2)-A049221(n+2)`
-/

namespace A001169.P17746525020760691113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 2) - A049221 (n + 2)

end

end A001169.P17746525020760691113

namespace A001169

/-- `A049219(n+2)-A049221(n+2)` -/
def P17746525020760691113.Spec : Prop :=
  ∀ n, P17746525020760691113.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P4487703407345847103

`A049220(n+3)-A049220(n+2)`
-/

namespace A001169.P4487703407345847103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (n + 3) - A049220 (n + 2)

end

end A001169.P4487703407345847103

namespace A001169

/-- `A049220(n+3)-A049220(n+2)` -/
def P4487703407345847103.Spec : Prop :=
  ∀ n, P4487703407345847103.a n = A001169 (n + 1)

end A001169

/-! ## A001169.P13423506482871275666

`A301994(n+2)-(A301994(n+1)+A049221(n+2))`
-/

namespace A001169.P13423506482871275666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301994 (n + 2) - (A301994 (n + 1) + A049221 (n + 2))

end

end A001169.P13423506482871275666

namespace A001169

/-- `A301994(n+2)-(A301994(n+1)+A049221(n+2))` -/
def P13423506482871275666.Spec : Prop :=
  ∀ n, P13423506482871275666.a n = A001169 (n + 1)

end A001169

/-!
# A001170: Number of board-pair-pile polyominoes with n cells.

The programs for A001170, there is no canonical definition to state claims against.
-/

/-! ## A001170.P7604246871356605268

`A001168(n+1)-A083892(A000257(n))`
-/

namespace A001170.P7604246871356605268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A083892 (A000257 n).toNat

end

end A001170.P7604246871356605268

/-! ## A001170.P5867467483523995088

`A001168(n+1)-A341025(A011782(n))`
-/

namespace A001170.P5867467483523995088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A341025 ((A011782 n).toNat + 120)

end

end A001170.P5867467483523995088

/-! ## A001170.P9547440328561181106

`A001168(n+1)-A067169(A037952(n+1))`
-/

namespace A001170.P9547440328561181106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A067169 ((A037952 (n + 1)).toNat + 11)

end

end A001170.P9547440328561181106

/-! ## A001170.P14318831511543314762

`A001168(n+1)-A067169(A054360(n+1))`
-/

namespace A001170.P14318831511543314762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A067169 ((A054360 (n + 1)).toNat + 11)

end

end A001170.P14318831511543314762

/-!
# A001171: From least significant term in expansion of E( tr (X'*X)^n ), X rectangular and Gaussian. Also number of types of sequential n-swap moves for traveling salesman problem.

The programs for A001171, there is no canonical definition to state claims against.
-/

/-! ## A001171.P8235244627306535896

`A189507(∑[n])`
-/

namespace A001171.P8235244627306535896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189507 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001171.P8235244627306535896

/-! ## A001171.P2154608304348299260

`and(-1, A189507(A000217(n)))`
-/

namespace A001171.P2154608304348299260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A189507 (A000217 n).toNat)

end

end A001171.P2154608304348299260

/-! ## A001171.P15332480341568682793

`lcm(A189507(C(n+1, 2)), A242618(n+4))`
-/

namespace A001171.P15332480341568682793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A189507 (Nat.choose (n + 1) 2)) (A242618 (n + 4))

end

end A001171.P15332480341568682793

/-! ## A001171.P163709656142500739

`gcd(floor(1/(n+1)), A189507(A179865(n+1)))`
-/

namespace A001171.P163709656142500739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A189507 (A179865 (n + 1)).toNat)

end

end A001171.P163709656142500739

/-! ## A001171.P329912865685488191

`A105812(2*n+3)*A189507(n²-C(n, 2))`
-/

namespace A001171.P329912865685488191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * n + 3) * A189507 (n ^ 2 - Nat.choose n 2)

end

end A001171.P329912865685488191

/-!
# A001172: Smallest even number that is an unordered sum of two odd primes in exactly n ways.

The programs for A001172, there is no canonical definition to state claims against.
-/

/-! ## A001172.P13943623767700722508

`2*(A136244(n)-A154955(n+1))`
-/

namespace A001172.P13943623767700722508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A136244 n - A154955 (n + 1))

end

end A001172.P13943623767700722508

/-! ## A001172.P10939533907699782749

`2*xor(A019590(n+1), A136244(n))`
-/

namespace A001172.P10939533907699782749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A019590 (n + 1)) (A136244 n)

end

end A001172.P10939533907699782749

/-! ## A001172.P15120089080336130786

`xor(A000038(A002372(n+1)), A023036(n))`
-/

namespace A001172.P15120089080336130786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A002372 (n + 1)).toNat) (A023036 n)

end

end A001172.P15120089080336130786

/-! ## A001172.P15066084833942964018

`xor(A000038(A002375(n+1)), A023036(n))`
-/

namespace A001172.P15066084833942964018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A002375 (n + 1)).toNat) (A023036 n)

end

end A001172.P15066084833942964018

/-! ## A001172.P16540474145851040792

`xor(A000038(A049820(n+1)), A023036(n))`
-/

namespace A001172.P16540474145851040792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A049820 (n + 1)).toNat) (A023036 n)

end

end A001172.P16540474145851040792

/-! ## A001172.P16537845041093007049

`xor(A000038(A061357(2*n+1)), A023036(n))`
-/

namespace A001172.P16537845041093007049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A061357 (2 * n + 1)).toNat) (A023036 n)

end

end A001172.P16537845041093007049

/-! ## A001172.P5046307688460049528

`2*A258713(n)`
-/

namespace A001172.P5046307688460049528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258713 n

end

end A001172.P5046307688460049528

/-! ## A001172.P11121050705143575817

`xor(A130706(n), A352296(n))`
-/

namespace A001172.P11121050705143575817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130706 n) (A352296 n)

end

end A001172.P11121050705143575817

/-! ## A001172.P10111455073046153248

`A258713(A005843(n)/2)+A258713(n)`
-/

namespace A001172.P10111455073046153248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258713 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A258713 n

end

end A001172.P10111455073046153248

/-! ## A001172.P16658124911200894767

`A258713(n)+A258713(n%A219615(n))`
-/

namespace A001172.P16658124911200894767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258713 n + A258713 (Int.tmod (n : ℤ) (A219615 n)).toNat

end

end A001172.P16658124911200894767

/-! ## A001172.P17308712294506221578

`A258713(A004526(n+n))+A258713(n)`
-/

namespace A001172.P17308712294506221578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258713 (A004526 (n + n)).toNat + A258713 n

end

end A001172.P17308712294506221578

/-! ## A001172.P12902123559914664851

`A005843(A258713(n))`
-/

namespace A001172.P12902123559914664851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A258713 n).toNat

end

end A001172.P12902123559914664851

/-! ## A001172.P1556803204749571078

`A004277(A258713(n)+1)-2`
-/

namespace A001172.P1556803204749571078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A258713 n + 1).toNat - 2

end

end A001172.P1556803204749571078

/-! ## A001172.P2690656739877148555

`2*(A136244(n)-A154271(A133263(n)))`
-/

namespace A001172.P2690656739877148555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A136244 n - A154271 (A133263 n).toNat)

end

end A001172.P2690656739877148555

/-! ## A001172.P11231508655635295958

`xor(A000038(n²-n), A023036(n))`
-/

namespace A001172.P11231508655635295958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n ^ 2 - n)) (A023036 n)

end

end A001172.P11231508655635295958

/-!
# A001173: Half the number of binary relations on n unlabeled points.

The programs for A001173, there is no canonical definition to state claims against.
-/

/-! ## A001173.P6733386917957755584

`A000595(n+1)/2`
-/

namespace A001173.P6733386917957755584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000595 (n + 1) : ℚ) / 2

end

end A001173.P6733386917957755584

/-! ## A001173.P5892421893461861207

`Δ[∑[A000595(n)]/2]`
-/

namespace A001173.P5892421893461861207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001173.P5892421893461861207

/-! ## A001173.P17729918806303765682

`record[ratio[A000595(A193592(n))]]`
-/

namespace A001173.P17729918806303765682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001173.P17729918806303765682

/-! ## A001173.P8226128626912755040

`record[A000595(A008612(n))/2]`
-/

namespace A001173.P8226128626912755040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000595 (A008612 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001173.P8226128626912755040

/-! ## A001173.P9100814223663321203

`record[A000595(A106466(n))/2]`
-/

namespace A001173.P9100814223663321203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000595 (A106466 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001173.P9100814223663321203

/-!
# A001174: Number of oriented graphs (i.e., digraphs with no bidirected edges) on n unlabeled nodes. Also number of complete digraphs on n unlabeled nodes. Number of antisymmetric relations (i.e., oriented graphs with loops) on n unlabeled nodes is A083670.

The programs for A001174, there is no canonical definition to state claims against.
-/

/-! ## A001174.P1053488204828207822

`A220195(n!)+∑[n]`
-/

namespace A001174.P1053488204828207822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220195 (Nat.factorial n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001174.P1053488204828207822

/-!
# A001175: Pisano periods (or Pisano numbers): period of Fibonacci numbers mod n.

The programs for A001175, there is no canonical definition to state claims against.
-/

/-! ## A001175.P9232880642363409031

`A001177(n+1)*A001176(n+1)`
-/

namespace A001175.P9232880642363409031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1) * A001176 (n + 1)

end

end A001175.P9232880642363409031

/-! ## A001175.P3182870512045726765

`abs(1-A096982(1+n))`
-/

namespace A001175.P3182870512045726765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A096982 (1 + n)|

end

end A001175.P3182870512045726765

/-! ## A001175.P295729063681579773

`A096982(n+1)-A158388(n)`
-/

namespace A001175.P295729063681579773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096982 (n + 1) - A158388 n

end

end A001175.P295729063681579773

/-! ## A001175.P11572604317150659257

`A153881(n+1)+A096982(n+1)`
-/

namespace A001175.P11572604317150659257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A096982 (n + 1)

end

end A001175.P11572604317150659257

/-! ## A001175.P173537427425542322

`A001176(n+1)*A001177(n+1)`
-/

namespace A001175.P173537427425542322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1) * A001177 (n + 1)

end

end A001175.P173537427425542322

/-! ## A001175.P10627411345845667531

`A237836(n+1)/A237517(n+1)`
-/

namespace A001175.P10627411345845667531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A237517 (n + 1) : ℚ)

end

end A001175.P10627411345845667531

/-! ## A001175.P7800605355027487109

`lcm(A001177(n+1), A106291(n+1))`
-/

namespace A001175.P7800605355027487109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001177 (n + 1)) (A106291 (n + 1))

end

end A001175.P7800605355027487109

/-! ## A001175.P5194979389799337914

`A060632(A060632(n))*A281230(n+1)`
-/

namespace A001175.P5194979389799337914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A060632 n).toNat * A281230 (n + 1)

end

end A001175.P5194979389799337914

/-! ## A001175.P18348540496934684022

`A020639(A000010(n+1))*A281230(n+1)`
-/

namespace A001175.P18348540496934684022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A281230 (n + 1)

end

end A001175.P18348540496934684022

/-! ## A001175.P2418068452931686526

`A020639(A008330(n+1))*A281230(n+1)`
-/

namespace A001175.P2418068452931686526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008330 (n + 1)).toNat * A281230 (n + 1)

end

end A001175.P2418068452931686526

/-! ## A001175.P9763021469533687858

`A020639(A006093(A061288(n+1)))*A281230(n+1)`
-/

namespace A001175.P9763021469533687858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (A061288 (n + 1)).toNat).toNat * A281230 (n + 1)

end

end A001175.P9763021469533687858

/-! ## A001175.P10763056418935951997

`A001177(n+1)/A001177(A060791(n+1))*A106291(n+1)`
-/

namespace A001175.P10763056418935951997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001177 (n + 1) : ℚ) / (A001177 (A060791 (n + 1)).toNat : ℚ) * (A106291 (n + 1) : ℚ)

end

end A001175.P10763056418935951997

/-! ## A001175.P4470298623493312680

`A376082(A022998(n+1))`
-/

namespace A001175.P4470298623493312680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376082 (A022998 (n + 1)).toNat

end

end A001175.P4470298623493312680

/-! ## A001175.P17926141657396565025

`A376082(A257088(n+1))`
-/

namespace A001175.P17926141657396565025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376082 (A257088 (n + 1)).toNat

end

end A001175.P17926141657396565025

/-! ## A001175.P1275234982630993495

`A376082(2*(n+1))`
-/

namespace A001175.P1275234982630993495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376082 (2 * (n + 1))

end

end A001175.P1275234982630993495

/-! ## A001175.P11504687368521389887

`A106291(A394222(n+1))`
-/

namespace A001175.P11504687368521389887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A394222 (n + 1)).toNat

end

end A001175.P11504687368521389887

/-! ## A001175.P11220247898035751767

`gcd(2, A007052(n))*A281230(n+1)`
-/

namespace A001175.P11220247898035751767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A007052 n) : ℤ) * A281230 (n + 1)

end

end A001175.P11220247898035751767

/-! ## A001175.P1840156321279213873

`A001177(n+1)*A128924(∑[n]+1)`
-/

namespace A001175.P1840156321279213873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1) * A128924 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001175.P1840156321279213873

/-! ## A001175.P17555268339316598546

`A395522(∑[n]+1)`
-/

namespace A001175.P17555268339316598546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395522 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001175.P17555268339316598546

/-!
# A001176: Number of zeros in fundamental period of Fibonacci numbers mod n.

The programs for A001176, there is no canonical definition to state claims against.
-/

/-! ## A001176.P16060091187196819058

`A001175(n+1)/A001177(n+1)`
-/

namespace A001176.P16060091187196819058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A001177 (n + 1) : ℚ)

end

end A001176.P16060091187196819058

/-! ## A001176.P8376299829439124921

`A128924(C(n+1, 2)+1)`
-/

namespace A001176.P8376299829439124921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128924 (Nat.choose (n + 1) 2 + 1)

end

end A001176.P8376299829439124921

/-! ## A001176.P8089385473613859766

`A106291(n+1)/A001177(A060791(n+1))`
-/

namespace A001176.P8089385473613859766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106291 (n + 1) : ℚ) / (A001177 (A060791 (n + 1)).toNat : ℚ)

end

end A001176.P8089385473613859766

/-! ## A001176.P12391306229279194827

`A237836(n+1)/(A001177(n+1)*A237517(n+1))`
-/

namespace A001176.P12391306229279194827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A001177 (n + 1) * A237517 (n + 1) : ℚ)

end

end A001176.P12391306229279194827

/-! ## A001176.P11783966009107309517

`lcm(A001177(n+1), A106291(n+1))/A001177(n+1)`
-/

namespace A001176.P11783966009107309517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001177 (n + 1)) (A106291 (n + 1)) : ℚ) / (A001177 (n + 1) : ℚ)

end

end A001176.P11783966009107309517

/-! ## A001176.P10005813457024957523

`gcd(A281230(n+1)², A103517(A001177(n+1)))`
-/

namespace A001176.P10005813457024957523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281230 (n + 1) ^ 2) (A103517 (A001177 (n + 1)).toNat)

end

end A001176.P10005813457024957523

/-! ## A001176.P5334774328005467364

`A376082(A022998(n+1))/A001177(n+1)`
-/

namespace A001176.P5334774328005467364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376082 (A022998 (n + 1)).toNat : ℚ) / (A001177 (n + 1) : ℚ)

end

end A001176.P5334774328005467364

/-! ## A001176.P18316298112487220865

`A006519(A106291(n+1))/A006519(A001177(n+1))`
-/

namespace A001176.P18316298112487220865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (A106291 (n + 1)).toNat : ℚ) / (A006519 (A001177 (n + 1)).toNat : ℚ)

end

end A001176.P18316298112487220865

/-! ## A001176.P8362089343611487422

`A128924(∑[n]+1)`
-/

namespace A001176.P8362089343611487422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128924 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001176.P8362089343611487422

/-!
# A001177: Fibonacci entry points: a(n) = least k >= 1 such that n divides Fibonacci number F_k (=A000045(k)).

The programs for A001177, there is no canonical definition to state claims against.
-/

/-! ## A001177.P8417250964290136116

`A001175(n+1)/A001176(n+1)`
-/

namespace A001177.P8417250964290136116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A001176 (n + 1) : ℚ)

end

end A001177.P8417250964290136116

/-! ## A001177.P2641649956506687242

`A237836(n+1)/(A001176(n+1)*A237517(n+1))`
-/

namespace A001177.P2641649956506687242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A001176 (n + 1) * A237517 (n + 1) : ℚ)

end

end A001177.P2641649956506687242

/-! ## A001177.P8301515928706039264

`lcm(A106291(n+1), A281230(n+1))/A001176(n+1)`
-/

namespace A001177.P8301515928706039264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A106291 (n + 1)) (A281230 (n + 1)) : ℚ) / (A001176 (n + 1) : ℚ)

end

end A001177.P8301515928706039264

/-! ## A001177.P586239724563792863

`A281230(n+1)/A001176(n+1)*A060632(A060632(n))`
-/

namespace A001177.P586239724563792863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281230 (n + 1) : ℚ) / (A001176 (n + 1) : ℚ) * (A060632 (A060632 n).toNat : ℚ)

end

end A001177.P586239724563792863

/-! ## A001177.P9350117037371595286

`A020639(A000010(n+1))/A001176(n+1)*A281230(n+1)`
-/

namespace A001177.P9350117037371595286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A000010 (n + 1)).toNat : ℚ) / (A001176 (n + 1) : ℚ) * (A281230 (n + 1) : ℚ)

end

end A001177.P9350117037371595286

/-! ## A001177.P4425606282847641189

`A020639(A008330(n+1))/A001176(n+1)*A281230(n+1)`
-/

namespace A001177.P4425606282847641189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A008330 (n + 1)).toNat : ℚ) / (A001176 (n + 1) : ℚ) * (A281230 (n + 1) : ℚ)

end

end A001177.P4425606282847641189

/-! ## A001177.P13177178763197273684

`A000027(A237836(n+1)/A237517(n+1))/A001176(n+1)`
-/

namespace A001177.P13177178763197273684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A237836 (n + 1) : ℚ) / (A237517 (n + 1) : ℚ))).toNat : ℚ) / (A001176 (n + 1) : ℚ)

end

end A001177.P13177178763197273684

/-! ## A001177.P7112402402384296634

`A001175(n+1)/A128924(∑[n]+1)`
-/

namespace A001177.P7112402402384296634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A128924 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A001177.P7112402402384296634

/-! ## A001177.P8234494531579588733

`A001175(n+1)/gcd(4, A128924(A000124(n)))`
-/

namespace A001177.P8234494531579588733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (Int.gcd 4 (A128924 (A000124 n).toNat) : ℚ)

end

end A001177.P8234494531579588733

/-! ## A001177.P13880249952661766463

`A001175(n+1)/A128924(A000124(n))%A027434(n+1)`
-/

namespace A001177.P13880249952661766463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (Int.tmod (A128924 (A000124 n).toNat) (A027434 (n + 1)) : ℚ)

end

end A001177.P13880249952661766463

/-!
# A001179: Leonardo logarithm of n.

The programs for A001179, there is no canonical definition to state claims against.
-/

/-! ## A001179.P11586241084470004305

`A329697(A235249(n+1))`
-/

namespace A001179.P11586241084470004305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A235249 (n + 1)).toNat

end

end A001179.P11586241084470004305

/-! ## A001179.P13069644936744970492

`A333805(A235249(n+1))-A057427(n)`
-/

namespace A001179.P13069644936744970492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A235249 (n + 1)).toNat - A057427 n

end

end A001179.P13069644936744970492

/-! ## A001179.P84076694502892811

`A001842(2*A235249(n+1))`
-/

namespace A001179.P84076694502892811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (2 * A235249 (n + 1)).toNat

end

end A001179.P84076694502892811

/-! ## A001179.P3359934175017612570

`A002654(3*A235249(n+1))`
-/

namespace A001179.P3359934175017612570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * A235249 (n + 1)).toNat

end

end A001179.P3359934175017612570

/-! ## A001179.P15338314864570810159

`A001826(A235249(n+1))%A002604(n)`
-/

namespace A001179.P15338314864570810159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001826 (A235249 (n + 1)).toNat) (A002604 n)

end

end A001179.P15338314864570810159

/-! ## A001179.P12254937967635706240

`A275849(∑{d}[A235249(n+1), A235249(#)+2])`
-/

namespace A001179.P12254937967635706240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (∑ d ∈ Nat.divisors (f1 n).natAbs, (A235249 d + 2)).toNat

end

end A001179.P12254937967635706240

/-!
# A001181: Number of Baxter permutations of length n (also called Baxter numbers).

The programs for A001181, there is no canonical definition to state claims against.
-/

/-! ## A001181.P5057135624207147035

`A116925(A055999(A028310(n))+2)`
-/

namespace A001181.P5057135624207147035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A055999 (A028310 n).toNat + 2).toNat

end

end A001181.P5057135624207147035

/-! ## A001181.P13618184613048404776

`A116925(A141214(A028310(n))-1)`
-/

namespace A001181.P13618184613048404776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A141214 (A028310 n).toNat - 1).toNat

end

end A001181.P13618184613048404776

/-! ## A001181.P17469339425082633544

`A116925(A057427(n)+A052905(n))`
-/

namespace A001181.P17469339425082633544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A057427 n + A052905 n).toNat

end

end A001181.P17469339425082633544

/-! ## A001181.P2604110944180398164

`A116925(A141214(n)-A057427(n))`
-/

namespace A001181.P2604110944180398164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A141214 n - A057427 n).toNat

end

end A001181.P2604110944180398164

/-! ## A001181.P7983225501738993486

`A116925(2-(A057427(n)-A052905(n)))`
-/

namespace A001181.P7983225501738993486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (2 - (A057427 n - A052905 n)).toNat

end

end A001181.P7983225501738993486

/-!
# A001182: Number of cells of square lattice of edge 1/n inside quadrant of unit circle centered at 0.

The programs for A001182, the canonical program `A001182.P18331014380152811402` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001182 has offset 1).

The definition of A001182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001182.P9609642453893964297

`A261849(2*(n+1))/4`
-/

namespace A001182.P9609642453893964297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261849 (2 * (n + 1)) : ℚ) / 4

end

end A001182.P9609642453893964297

namespace A001182

/-- `A261849(2*(n+1))/4` -/
def P9609642453893964297.Spec : Prop :=
  ∀ n, P9609642453893964297.a n = (A001182 (n + 1) : ℚ)

end A001182

/-! ## A001182.P4889670555415797566

`(A281795(n+1)-A242118(n+1))/4`
-/

namespace A001182.P4889670555415797566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281795 (n + 1) - A242118 (n + 1) : ℚ) / 4

end

end A001182.P4889670555415797566

namespace A001182

/-- `(A281795(n+1)-A242118(n+1))/4` -/
def P4889670555415797566.Spec : Prop :=
  ∀ n, P4889670555415797566.a n = (A001182 (n + 1) : ℚ)

end A001182

/-! ## A001182.P18331014380152811402

`Δ[A211636(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A001182

/-- `Δ[A211636(n)]` -/
def P18331014380152811402.Spec : Prop :=
  ∀ n, P18331014380152811402.a n = A001182 (n + 1)

theorem P18331014380152811402.correct : P18331014380152811402.Spec := by
  intro n
  simp only [A001182, Nat.add_sub_cancel]

end A001182

/-! ## A001182.P9664278195621203152

`A136514(n+1)/2`
-/

namespace A001182.P9664278195621203152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136514 (n + 1) : ℚ) / 2

end

end A001182.P9664278195621203152

namespace A001182

/-- `A136514(n+1)/2` -/
def P9664278195621203152.Spec : Prop :=
  ∀ n, P9664278195621203152.a n = (A001182 (n + 1) : ℚ)

theorem P9664278195621203152.correct : P9664278195621203152.Spec := by
  intro n
  simp only [A001182, Nat.add_sub_cancel, A001182.P9664278195621203152.a, A001182.P18331014380152811402.f1, A001182.P18331014380152811402.a, A136514, A136514.P3670584216684730717.a, A211636, A211636.P2652783068528798878.f1, A211636.P2652783068528798878.a, A036698, A036698.P3152835247264100802.a, A014200, A014200.P16970295702573526038.a, A014198, A014198.P2354480518814049901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001182

/-! ## A001182.P15509983007592062075

`A119677(n+1)/4`
-/

namespace A001182.P15509983007592062075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119677 (n + 1) : ℚ) / 4

end

end A001182.P15509983007592062075

namespace A001182

/-- `A119677(n+1)/4` -/
def P15509983007592062075.Spec : Prop :=
  ∀ n, P15509983007592062075.a n = (A001182 (n + 1) : ℚ)

end A001182

/-! ## A001182.P1492756329258787918

`∑[A036694(n+1)-1]`
-/

namespace A001182.P1492756329258787918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001182.P1492756329258787918

namespace A001182

/-- `∑[A036694(n+1)-1]` -/
def P1492756329258787918.Spec : Prop :=
  ∀ n, P1492756329258787918.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P10084325873396682981

`A211636(n+1)-A211636(n)`
-/

namespace A001182.P10084325873396682981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211636 (n + 1) - A211636 n

end

end A001182.P10084325873396682981

namespace A001182

/-- `A211636(n+1)-A211636(n)` -/
def P10084325873396682981.Spec : Prop :=
  ∀ n, P10084325873396682981.a n = A001182 (n + 1)

theorem P10084325873396682981.correct : P10084325873396682981.Spec := by
  intro n
  simp only [A001182, Nat.add_sub_cancel, A001182.P10084325873396682981.a, A001182.P18331014380152811402.f1, A001182.P18331014380152811402.a, SequenceMachineLib.memo_apply]

end A001182

/-! ## A001182.P9997440394402315738

`∑[Δ[A000603(n)]-2]`
-/

namespace A001182.P9997440394402315738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001182.P9997440394402315738

namespace A001182

/-- `∑[Δ[A000603(n)]-2]` -/
def P9997440394402315738.Spec : Prop :=
  ∀ n, P9997440394402315738.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P16582571727581484922

`∑[A036697(n+1)-2]`
-/

namespace A001182.P16582571727581484922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001182.P16582571727581484922

namespace A001182

/-- `∑[A036697(n+1)-2]` -/
def P16582571727581484922.Spec : Prop :=
  ∀ n, P16582571727581484922.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P14289300788594278207

`A036698(n+1)-(n+1)`
-/

namespace A001182.P14289300788594278207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 (n + 1) - (n + 1 : ℤ)

end

end A001182.P14289300788594278207

namespace A001182

/-- `A036698(n+1)-(n+1)` -/
def P14289300788594278207.Spec : Prop :=
  ∀ n, P14289300788594278207.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P14370881273604796632

`A000603(n+1)-(2*n+3)`
-/

namespace A001182.P14370881273604796632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 (n + 1) - (2 * n + 3 : ℤ)

end

end A001182.P14370881273604796632

namespace A001182

/-- `A000603(n+1)-(2*n+3)` -/
def P14370881273604796632.Spec : Prop :=
  ∀ n, P14370881273604796632.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P1499698935971715308

`A136483(2*(n+1))`
-/

namespace A001182.P1499698935971715308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (2 * (n + 1))

end

end A001182.P1499698935971715308

namespace A001182

/-- `A136483(2*(n+1))` -/
def P1499698935971715308.Spec : Prop :=
  ∀ n, P1499698935971715308.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P11219416849788540700

`A136513(2*(n+1))/2`
-/

namespace A001182.P11219416849788540700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136513 (2 * (n + 1)) : ℚ) / 2

end

end A001182.P11219416849788540700

namespace A001182

/-- `A136513(2*(n+1))/2` -/
def P11219416849788540700.Spec : Prop :=
  ∀ n, P11219416849788540700.a n = (A001182 (n + 1) : ℚ)

end A001182

/-! ## A001182.P10387490257348072636

`A136485(2*(n+1))/4`
-/

namespace A001182.P10387490257348072636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136485 (2 * (n + 1)) : ℚ) / 4

end

end A001182.P10387490257348072636

namespace A001182

/-- `A136485(2*(n+1))/4` -/
def P10387490257348072636.Spec : Prop :=
  ∀ n, P10387490257348072636.a n = (A001182 (n + 1) : ℚ)

end A001182

/-! ## A001182.P2974677468887924722

`record[A136483(A004442(n)+1)]`
-/

namespace A001182.P2974677468887924722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001182.P2974677468887924722

namespace A001182

/-- `record[A136483(A004442(n)+1)]` -/
def P2974677468887924722.Spec : Prop :=
  ∀ n, P2974677468887924722.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P5878358609639680787

`∑[A002265(A036693(n+1)-1)]`
-/

namespace A001182.P5878358609639680787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036693 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001182.P5878358609639680787

namespace A001182

/-- `∑[A002265(A036693(n+1)-1)]` -/
def P5878358609639680787.Spec : Prop :=
  ∀ n, P5878358609639680787.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P12961652202315792485

`A333573(2*(n+1))-(n+1)`
-/

namespace A001182.P12961652202315792485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A001182.P12961652202315792485

namespace A001182

/-- `A333573(2*(n+1))-(n+1)` -/
def P12961652202315792485.Spec : Prop :=
  ∀ n, P12961652202315792485.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P4173846221367466695

`A237526((n+1)²)`
-/

namespace A001182.P4173846221367466695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 ((n + 1) ^ 2)

end

end A001182.P4173846221367466695

namespace A001182

/-- `A237526((n+1)²)` -/
def P4173846221367466695.Spec : Prop :=
  ∀ n, P4173846221367466695.a n = A001182 (n + 1)

end A001182

/-! ## A001182.P3013997402560951134

`A014200((n+1)²)-(n+1)`
-/

namespace A001182.P3013997402560951134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 ((n + 1) ^ 2) - (n + 1 : ℤ)

end

end A001182.P3013997402560951134

namespace A001182

/-- `A014200((n+1)²)-(n+1)` -/
def P3013997402560951134.Spec : Prop :=
  ∀ n, P3013997402560951134.a n = A001182 (n + 1)

end A001182

/-!
# A001183: Number of nontrivial Baxter permutations of length 2n-1.

The programs for A001183, there is no canonical definition to state claims against.
-/

/-! ## A001183.P841575383994478314

`2*A046997(n+1)`
-/

namespace A001183.P841575383994478314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046997 (n + 1)

end

end A001183.P841575383994478314

/-! ## A001183.P3134110420017680747

`lcm(2, A046997(∏{digits}[n, #+1]))`
-/

namespace A001183.P3134110420017680747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A046997 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod)

end

end A001183.P3134110420017680747

/-! ## A001183.P2474239872719059208

`lcm(2, A046997(A005555(n)))`
-/

namespace A001183.P2474239872719059208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A046997 (A005555 n).toNat)

end

end A001183.P2474239872719059208

/-! ## A001183.P18284243553760316082

`A273943(lcm(4, A046997(n+1)))`
-/

namespace A001183.P18284243553760316082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 4 (A046997 (n + 1)))

end

end A001183.P18284243553760316082

/-! ## A001183.P13671234879138101549

`A046997(n+1)+A046997(A005555(n))`
-/

namespace A001183.P13671234879138101549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046997 (n + 1) + A046997 (A005555 n).toNat

end

end A001183.P13671234879138101549

/-!
# A001184: Number of simple Hamiltonian paths connecting opposite corners of a 2n+1 X 2n+1 grid.

The programs for A001184, there is no canonical definition to state claims against.
-/

/-! ## A001184.P4373937379498208534

`A333580(C(3*(n+1)-1, 2)+C(7*n, 2)/7)`
-/

namespace A001184.P4373937379498208534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (SequenceMachineLib.roundAway ((Nat.choose ((3 * (n + 1) : ℤ) - 1).toNat 2 : ℚ) + (Nat.choose (7 * n) 2 : ℚ) / 7)).toNat

end

end A001184.P4373937379498208534

/-! ## A001184.P9896184526468262412

`A333580(A102083(n))`
-/

namespace A001184.P9896184526468262412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A102083 n).toNat

end

end A001184.P9896184526468262412

/-! ## A001184.P10132188313090867960

`record[A333580(A001844(n))]`
-/

namespace A001184.P10132188313090867960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333580 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001184.P10132188313090867960

/-!
# A001185: Number of nontrivial Baxter permutations of length 2n-1.

The programs for A001185, there is no canonical definition to state claims against.
-/

/-! ## A001185.P11957605302494948126

`A357235(a(n-1)+3)+1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A001185.P11957605302494948126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A357235 (a (n - 1) + 3).toNat + 1

end

end A001185.P11957605302494948126

/-! ## A001185.P15804142593255758633

`A245402(a(n-1)+1)+7` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A001185.P15804142593255758633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 7] fun n a =>
  A245402 (a (n - 1) + 1).toNat + 7

end

end A001185.P15804142593255758633

/-!
# A001186: Number of cubic Hamiltonian graphs with 2n nodes.

The programs for A001186, there is no canonical definition to state claims against.
-/

/-! ## A001186.P7684108893099801105

`A002851(n+2)-A164919(n+2)`
-/

namespace A001186.P7684108893099801105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 (n + 2) - A164919 (n + 2)

end

end A001186.P7684108893099801105

/-! ## A001186.P13785838796745318343

`A384317(A353561(n+1))+1`
-/

namespace A001186.P13785838796745318343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384317 (A353561 (n + 1)).toNat + 1

end

end A001186.P13785838796745318343

/-!
# A001187: Number of connected labeled graphs with n nodes.

The programs for A001187, there is no canonical definition to state claims against.
-/

/-! ## A001187.P3830501237005645299

`A401182(∑[n])`
-/

namespace A001187.P3830501237005645299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001187.P3830501237005645299

/-! ## A001187.P1944722389828766373

`A401185(∑[n])`
-/

namespace A001187.P1944722389828766373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401185 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001187.P1944722389828766373

/-! ## A001187.P14799875778138755194

`A143543(1+C(n, 2))`
-/

namespace A001187.P14799875778138755194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (1 + Nat.choose n 2)

end

end A001187.P14799875778138755194

/-! ## A001187.P7397260699722237440

`A143543(∑[abs(1-n)])`
-/

namespace A001187.P7397260699722237440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001187.P7397260699722237440

/-! ## A001187.P11552358622666948601

`2^C(n, 2)-A054592(n)`
-/

namespace A001187.P11552358622666948601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A054592 n

end

end A001187.P11552358622666948601

/-!
# A001188: Number of even graphs with n edges.

The programs for A001188, there is no canonical definition to state claims against.
-/

/-! ## A001188.P6185306779877302088

`ceil(A060639(n+1)/2)`
-/

namespace A001188.P6185306779877302088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060639 (n + 1) : ℚ) / 2⌉

end

end A001188.P6185306779877302088

/-! ## A001188.P731746584556501984

`record[(A060639(A002260(n+1))+1)/2]`
-/

namespace A001188.P731746584556501984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060639 (A002260 (n + 1)).toNat + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001188.P731746584556501984

/-! ## A001188.P14162148409530941884

`record[(A060639(A004736(n+1))+1)/2]`
-/

namespace A001188.P14162148409530941884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060639 (A004736 (n + 1)).toNat + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001188.P14162148409530941884

/-! ## A001188.P6979761188131053062

`(A060639(A065033(2*(n+1)))+1)/2`
-/

namespace A001188.P6979761188131053062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060639 (A065033 (2 * (n + 1))).toNat + 1 : ℚ) / 2

end

end A001188.P6979761188131053062

/-! ## A001188.P4962844888755906055

`(A060639((n+1)^(A000040(n+1)%2))+1)/2`
-/

namespace A001188.P4962844888755906055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ))).toNat + 1 : ℚ) / 2

end

end A001188.P4962844888755906055

/-!
# A001189: Number of degree-n permutations of order exactly 2.

The programs for A001189, the canonical program `A001189.P2746469675608936850` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001189 has offset 1).

The definition of A001189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001189.P2746469675608936850

`a(n-1)+(1+a(n-2))*n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001189

/-- `a(n-1)+(1+a(n-2))*n` -/
def P2746469675608936850.Spec : Prop :=
  ∀ n, (P2746469675608936850.a n : ℤ) = A001189 (n + 1)

theorem P2746469675608936850.correct : P2746469675608936850.Spec := by
  intro n
  simp only [A001189, Nat.add_sub_cancel]

end A001189

/-! ## A001189.P631803419184751579

`A000085(n+1)-1`
-/

namespace A001189.P631803419184751579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) - 1

end

end A001189.P631803419184751579

namespace A001189

/-- `A000085(n+1)-1` -/
def P631803419184751579.Spec : Prop :=
  ∀ n, P631803419184751579.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P9179344661204066091

`∑{#}[floor((n+1)/2)-1, (n+1)!/((#+1)!*(n+1-2*(#+1))!*2^(#+1))]`
-/

namespace A001189.P9179344661204066091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.factorial (n + 1) : ℚ) / (Nat.factorial (k + 1) * Nat.factorial ((n + 1 : ℤ) - (2 * (k + 1) : ℤ)).toNat * 2 ^ (k + 1) : ℚ)

end

end A001189.P9179344661204066091

namespace A001189

/-- `∑{#}[floor((n+1)/2)-1, (n+1)!/((#+1)!*(n+1-2*(#+1))!*2^(#+1))]` -/
def P9179344661204066091.Spec : Prop :=
  ∀ n, P9179344661204066091.a n = (A001189 (n + 1) : ℚ)

end A001189

/-! ## A001189.P6773260966356045835

`∏[n/a(n-1)+1]-1` with `a(0)=1`
-/

namespace A001189.P6773260966356045835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001189.P6773260966356045835

namespace A001189

/-- `∏[n/a(n-1)+1]-1` -/
def P6773260966356045835.Spec : Prop :=
  ∀ n, P6773260966356045835.a n = (A001189 (n + 1) : ℚ)

end A001189

/-! ## A001189.P4376742725712486655

`a(n-1)+lcm(n, a(n-2))+n` with `a(0)=0, a(1)=1`
-/

namespace A001189.P4376742725712486655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (Nat.lcm n (a (n - 2)) + n)

end

end A001189.P4376742725712486655

namespace A001189

/-- `a(n-1)+lcm(n, a(n-2))+n` -/
def P4376742725712486655.Spec : Prop :=
  ∀ n, (P4376742725712486655.a n : ℤ) = A001189 (n + 1)

end A001189

/-! ## A001189.P18423889487692095495

`record[Δ[A070895(n)]]`
-/

namespace A001189.P18423889487692095495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001189.P18423889487692095495

namespace A001189

/-- `record[Δ[A070895(n)]]` -/
def P18423889487692095495.Spec : Prop :=
  ∀ n, P18423889487692095495.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P12349535757554428450

`Δ[A245176(n)]-1`
-/

namespace A001189.P12349535757554428450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A001189.P12349535757554428450

namespace A001189

/-- `Δ[A245176(n)]-1` -/
def P12349535757554428450.Spec : Prop :=
  ∀ n, P12349535757554428450.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P16699341649004808055

`record[A099020(n)-1]`
-/

namespace A001189.P16699341649004808055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001189.P16699341649004808055

namespace A001189

/-- `record[A099020(n)-1]` -/
def P16699341649004808055.Spec : Prop :=
  ∀ n, P16699341649004808055.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P13760687503637323731

`record[A293808(n)-1]`
-/

namespace A001189.P13760687503637323731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001189.P13760687503637323731

namespace A001189

/-- `record[A293808(n)-1]` -/
def P13760687503637323731.Spec : Prop :=
  ∀ n, P13760687503637323731.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P3228329700428772652

`record[A293815(n)-1]`
-/

namespace A001189.P3228329700428772652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293815 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001189.P3228329700428772652

namespace A001189

/-- `record[A293815(n)-1]` -/
def P3228329700428772652.Spec : Prop :=
  ∀ n, P3228329700428772652.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P12419433384649734212

`∑[abs(Δ[A000085(n)])]`
-/

namespace A001189.P12419433384649734212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001189.P12419433384649734212

namespace A001189

/-- `∑[abs(Δ[A000085(n)])]` -/
def P12419433384649734212.Spec : Prop :=
  ∀ n, P12419433384649734212.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P17108756633398603479

`A070895(∑[n+1])-1`
-/

namespace A001189.P17108756633398603479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A001189.P17108756633398603479

namespace A001189

/-- `A070895(∑[n+1])-1` -/
def P17108756633398603479.Spec : Prop :=
  ∀ n, P17108756633398603479.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P9926464421050097085

`A099020(∑[n+1])-1`
-/

namespace A001189.P9926464421050097085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A001189.P9926464421050097085

namespace A001189

/-- `A099020(∑[n+1])-1` -/
def P9926464421050097085.Spec : Prop :=
  ∀ n, P9926464421050097085.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P16299927073316426775

`Δ[A294129(n+1)]-1`
-/

namespace A001189.P16299927073316426775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A001189.P16299927073316426775

namespace A001189

/-- `Δ[A294129(n+1)]-1` -/
def P16299927073316426775.Spec : Prop :=
  ∀ n, P16299927073316426775.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P17705128273853612750

`∑[n*A099020(A161680(n))]`
-/

namespace A001189.P17705128273853612750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099020 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001189.P17705128273853612750

namespace A001189

/-- `∑[n*A099020(A161680(n))]` -/
def P17705128273853612750.Spec : Prop :=
  ∀ n, P17705128273853612750.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P6591090359975300172

`A293808(A000096(n)+2)-1`
-/

namespace A001189.P6591090359975300172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A000096 n + 2).toNat - 1

end

end A001189.P6591090359975300172

namespace A001189

/-- `A293808(A000096(n)+2)-1` -/
def P6591090359975300172.Spec : Prop :=
  ∀ n, P6591090359975300172.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P16057238654451129034

`A122932(n+1)+A000225(n)`
-/

namespace A001189.P16057238654451129034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122932 (n + 1) + A000225 n

end

end A001189.P16057238654451129034

namespace A001189

/-- `A122932(n+1)+A000225(n)` -/
def P16057238654451129034.Spec : Prop :=
  ∀ n, P16057238654451129034.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P1681831970371753629

`A294129(n+2)-A245176(n)`
-/

namespace A001189.P1681831970371753629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294129 (n + 2) - A245176 n

end

end A001189.P1681831970371753629

namespace A001189

/-- `A294129(n+2)-A245176(n)` -/
def P1681831970371753629.Spec : Prop :=
  ∀ n, P1681831970371753629.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P6001915478619265409

`∑[A099020(∑[A233583(n+2)])]`
-/

namespace A001189.P6001915478619265409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001189.P6001915478619265409

namespace A001189

/-- `∑[A099020(∑[A233583(n+2)])]` -/
def P6001915478619265409.Spec : Prop :=
  ∀ n, P6001915478619265409.a n = A001189 (n + 1)

end A001189

/-! ## A001189.P17915517493743909030

`A048099(n+1)+A001465(n+1)`
-/

namespace A001189.P17915517493743909030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048099 (n + 1) + A001465 (n + 1)

end

end A001189.P17915517493743909030

namespace A001189

/-- `A048099(n+1)+A001465(n+1)` -/
def P17915517493743909030.Spec : Prop :=
  ∀ n, P17915517493743909030.a n = A001189 (n + 1)

end A001189

/-!
# A001190: Wedderburn-Etherington numbers: unlabeled binary rooted trees (every node has outdegree 0 or 2) with n endpoints (and 2n-1 nodes in all).

The programs for A001190, there is no canonical definition to state claims against.
-/

/-! ## A001190.P209383735946584159

`A036656(char[1]+n)`
-/

namespace A001190.P209383735946584159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A001190.P209383735946584159

/-! ## A001190.P16560075509592174647

`or(char[1], A036656(n))`
-/

namespace A001190.P16560075509592174647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A036656 n)

end

end A001190.P16560075509592174647

/-! ## A001190.P15676478600672413668

`A063524(n)+A036656(n)`
-/

namespace A001190.P15676478600672413668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A036656 n

end

end A001190.P15676478600672413668

/-! ## A001190.P14681887902634407310

`A036656(n)-A159075(n)`
-/

namespace A001190.P14681887902634407310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n - A159075 n

end

end A001190.P14681887902634407310

/-! ## A001190.P10019797392860771053

`A036656(n)+A254667(n)-n`
-/

namespace A001190.P10019797392860771053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n + (A254667 n - (n : ℤ))

end

end A001190.P10019797392860771053

/-! ## A001190.P3866320720384426769

`A036656(n+1)-A036657(n)`
-/

namespace A001190.P3866320720384426769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 (n + 1) - A036657 n

end

end A001190.P3866320720384426769

/-! ## A001190.P3180877782209189781

`A000671(n)-(A036658(n)+A036657(n))`
-/

namespace A001190.P3180877782209189781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000671 n - (A036658 n + A036657 n)

end

end A001190.P3180877782209189781

/-! ## A001190.P18351656860103659661

`A292086(A238531(n)+A000007(n))`
-/

namespace A001190.P18351656860103659661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A238531 n + A000007 n).toNat

end

end A001190.P18351656860103659661

/-! ## A001190.P6294249440640133767

`A292086(A238531(n))%A000244(n)`
-/

namespace A001190.P6294249440640133767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292086 (A238531 n).toNat) (A000244 n)

end

end A001190.P6294249440640133767

/-! ## A001190.P507363776300914992

`A299038(A055998(n))-A000007(n)`
-/

namespace A001190.P507363776300914992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055998 n).toNat - A000007 n

end

end A001190.P507363776300914992

/-! ## A001190.P3285683581563174598

`A299038(A055998(n))%A000244(n)`
-/

namespace A001190.P3285683581563174598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299038 (A055998 n).toNat) (A000244 n)

end

end A001190.P3285683581563174598

/-! ## A001190.P13216480116310716607

`A299038(A055998(n))-A292086(A000124(n))`
-/

namespace A001190.P13216480116310716607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055998 n).toNat - A292086 (A000124 n).toNat

end

end A001190.P13216480116310716607

/-! ## A001190.P13642639686660975989

`A298426((2-n)²+n²+n)`
-/

namespace A001190.P13642639686660975989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298426 ((2 - (n : ℤ)) ^ 2 + (n ^ 2 + n : ℤ)).toNat

end

end A001190.P13642639686660975989

/-!
# A001191: Digits of positive squares.

The programs for A001191, there is no canonical definition to state claims against.
-/

/-! ## A001191.P9617959385663179966

`A000007(n)+Δ[A067113(A028310(n))]`
-/

namespace A001191.P9617959385663179966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067113 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A001191.P9617959385663179966

/-! ## A001191.P7996283840944552868

`Δ[A067113(A028310(n))]+A008683(A008574(n))`
-/

namespace A001191.P7996283840944552868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067113 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (A008574 n).toNat

end

end A001191.P7996283840944552868

/-! ## A001191.P9944969117052732220

`A067113(n+1)+A000007(n)-A067113(A028310(n))`
-/

namespace A001191.P9944969117052732220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067113 (n + 1) + (A000007 n - A067113 (A028310 n).toNat)

end

end A001191.P9944969117052732220

/-! ## A001191.P9345889081031769008

`A067113(n+1)+A057428(n)*A067113(A028310(n))`
-/

namespace A001191.P9345889081031769008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067113 (n + 1) + A057428 n * A067113 (A028310 n).toNat

end

end A001191.P9345889081031769008

/-! ## A001191.P7112605016872163394

`Δ[A067113(A028310(n))-A057428(n)]`
-/

namespace A001191.P7112605016872163394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067113 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001191.P7112605016872163394

/-! ## A001191.P332643441300587440

`Δ[A067113(A028310(n))%A001844(n)]`
-/

namespace A001191.P332643441300587440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067113 (A028310 n).toNat) (A001844 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001191.P332643441300587440

/-! ## A001191.P6053136871856577364

`Δ[A067113(A028310(n))+A134824(n)²]`
-/

namespace A001191.P6053136871856577364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067113 (A028310 n).toNat + A134824 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001191.P6053136871856577364

/-! ## A001191.P14297463942336030608

`A048298(∏{e}[n+1, 3*2^#])+Δ[A067113(A028310(n))]`
-/

namespace A001191.P14297463942336030608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067113 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p) + (f2 (n + 1) - f2 n)

end

end A001191.P14297463942336030608

/-! ## A001191.P12877687463626657013

`A322583(n²+6)+Δ[A067113(A028310(n))]`
-/

namespace A001191.P12877687463626657013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067113 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (n ^ 2 + 6) + (f1 (n + 1) - f1 n)

end

end A001191.P12877687463626657013

/-!
# A001192: Number of full sets of size n.

The programs for A001192, there is no canonical definition to state claims against.
-/

/-! ## A001192.P6488933723411650702

`abs(A137156(∑[n]))`
-/

namespace A001192.P6488933723411650702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137156 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A001192.P6488933723411650702

/-! ## A001192.P8214646843360357760

`A182161(n)/n!`
-/

namespace A001192.P8214646843360357760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182161 n : ℚ) / (Nat.factorial n : ℚ)

end

end A001192.P8214646843360357760

/-! ## A001192.P672593519434368650

`A182161(n)/A000142(n)`
-/

namespace A001192.P672593519434368650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182161 n : ℚ) / (A000142 n : ℚ)

end

end A001192.P672593519434368650

/-!
# A001193: a(n) = (n+1)*(2*n)!/(2^n*n!) = (n+1)*(2n-1)!!.

The programs for A001193, the canonical program `A001193.P13881368465679051115` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001193 has offset 0).

The definition of A001193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001193.P12902176708712201298

`(n+1)*(2*n-1)/n*a(n-1)` with `a(0)=1`
-/

namespace A001193.P12902176708712201298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℤ) * ((2 * n : ℤ) - 1) : ℚ) / (n : ℚ) * a (n - 1)

end

end A001193.P12902176708712201298

namespace A001193

/-- `(n+1)*(2*n-1)/n*a(n-1)` -/
def P12902176708712201298.Spec : Prop :=
  ∀ n, P12902176708712201298.a n = (A001193 n : ℚ)

end A001193

/-! ## A001193.P13881368465679051115

`2*a(n-1)+(2*n-3)*(2*n+1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001193

/-- `2*a(n-1)+(2*n-3)*(2*n+1)*a(n-2)` -/
def P13881368465679051115.Spec : Prop :=
  ∀ n, P13881368465679051115.a n = A001193 n

theorem P13881368465679051115.correct : P13881368465679051115.Spec := by
  intro n
  simp only [A001193]

end A001193

/-! ## A001193.P6730663436461076588

`(n+1)*(2*n)!/(2^n*n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001193.P6730663436461076588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial (2 * n) : ℚ) / (2 ^ n * Nat.factorial n : ℚ)

end

end A001193.P6730663436461076588

namespace A001193

/-- `(n+1)*(2*n)!/(2^n*n!)` -/
def P6730663436461076588.Spec : Prop :=
  ∀ n, P6730663436461076588.a n = (A001193 n : ℚ)

end A001193

/-! ## A001193.P1505767757104966355

`∏[runs[ceil(sqrt(n))]]*(n+1)`
-/

namespace A001193.P1505767757104966355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (n + 1)

end

end A001193.P1505767757104966355

namespace A001193

/-- `∏[runs[ceil(sqrt(n))]]*(n+1)` -/
def P1505767757104966355.Spec : Prop :=
  ∀ n, (P1505767757104966355.a n : ℤ) = A001193 n

end A001193

/-! ## A001193.P2139743724164614904

`(n+1)*∏[abs(1-2*n)]`
-/

namespace A001193.P2139743724164614904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001193.P2139743724164614904

namespace A001193

/-- `(n+1)*∏[abs(1-2*n)]` -/
def P2139743724164614904.Spec : Prop :=
  ∀ n, P2139743724164614904.a n = A001193 n

end A001193

/-! ## A001193.P7166068826591907887

`-((n+1)*∏[a(n-1)+2])` with `a(0)=-1`
-/

namespace A001193.P7166068826591907887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A001193.P7166068826591907887

namespace A001193

/-- `-((n+1)*∏[a(n-1)+2])` -/
def P7166068826591907887.Spec : Prop :=
  ∀ n, P7166068826591907887.a n = A001193 n

end A001193

/-! ## A001193.P5405228927833764772

`(n+1)*lcm(2, ∏[1-2*n])/2`
-/

namespace A001193.P5405228927833764772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A001193.P5405228927833764772

namespace A001193

/-- `(n+1)*lcm(2, ∏[1-2*n])/2` -/
def P5405228927833764772.Spec : Prop :=
  ∀ n, P5405228927833764772.a n = (A001193 n : ℚ)

end A001193

/-! ## A001193.P1985937394258463630

`floor((n+1)*∏[a(n-1)+2])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001193.P1985937394258463630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001193.P1985937394258463630

namespace A001193

/-- `floor((n+1)*∏[a(n-1)+2])` -/
def P1985937394258463630.Spec : Prop :=
  ∀ n, (P1985937394258463630.a n : ℤ) = A001193 n

end A001193

/-! ## A001193.P13932624053797805710

`ceil((n+1)*∏[a(n-1)+2])` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A001193.P13932624053797805710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001193.P13932624053797805710

namespace A001193

/-- `ceil((n+1)*∏[a(n-1)+2])` -/
def P13932624053797805710.Spec : Prop :=
  ∀ n, (P13932624053797805710.a n : ℤ) = A001193 n

end A001193

/-! ## A001193.P5927361206173872040

`round((n+1)*∏[a(n-1)+2])` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A001193.P5927361206173872040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A001193.P5927361206173872040

namespace A001193

/-- `round((n+1)*∏[a(n-1)+2])` -/
def P5927361206173872040.Spec : Prop :=
  ∀ n, (P5927361206173872040.a n : ℤ) = A001193 n

end A001193

/-!
# A001194: a(n) = A059366(n,n-2) = A059366(n,2) for n >= 2, where the triangle A059366 arises in the expansion of a trigonometric integral.

The programs for A001194, the canonical program `A001194.P16880401916862481852` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001194 has offset 2).

The definition of A001194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001194.P16880401916862481852

`A059366(C(n+3, 2)+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001194

/-- `A059366(C(n+3, 2)+2)` -/
def P16880401916862481852.Spec : Prop :=
  ∀ n, P16880401916862481852.a n = A001194 (n + 2)

theorem P16880401916862481852.correct : P16880401916862481852.Spec := by
  intro n
  simp only [A001194, Nat.add_sub_cancel]

end A001194

/-! ## A001194.P12628652231190294982

`A059366(C(n+3, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001194.P12628652231190294982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (Nat.choose (n + 3) 2 + n)

end

end A001194.P12628652231190294982

namespace A001194

/-- `A059366(C(n+3, 2)+n)` -/
def P12628652231190294982.Spec : Prop :=
  ∀ n, P12628652231190294982.a n = A001194 (n + 2)

end A001194

/-! ## A001194.P12425357105022507646

`3*(n+2)*(n+1)*(2*(n+2)-4)!/(2^(n+1)*n!)`
-/

namespace A001194.P12425357105022507646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) * (n + 1) * Nat.factorial ((2 * (n + 2) : ℤ) - 4).toNat : ℚ) / (2 ^ (n + 1) * Nat.factorial n : ℚ)

end

end A001194.P12425357105022507646

namespace A001194

/-- `3*(n+2)*(n+1)*(2*(n+2)-4)!/(2^(n+1)*n!)` -/
def P12425357105022507646.Spec : Prop :=
  ∀ n, P12425357105022507646.a n = (A001194 (n + 2) : ℚ)

end A001194

/-! ## A001194.P17163057222264047388

`∏[2*n+1]/(2*n+1)*∑[3*(n+1)]`
-/

namespace A001194.P17163057222264047388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 * n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A001194.P17163057222264047388

namespace A001194

/-- `∏[2*n+1]/(2*n+1)*∑[3*(n+1)]` -/
def P17163057222264047388.Spec : Prop :=
  ∀ n, P17163057222264047388.a n = (A001194 (n + 2) : ℚ)

end A001194

/-! ## A001194.P10629558915657889996

`A059366(∑[n+3])`
-/

namespace A001194.P10629558915657889996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001194.P10629558915657889996

namespace A001194

/-- `A059366(∑[n+3])` -/
def P10629558915657889996.Spec : Prop :=
  ∀ n, P10629558915657889996.a n = A001194 (n + 2)

end A001194

/-! ## A001194.P11968767298234492532

`lcm(3, A059366(A055998(n+1)))`
-/

namespace A001194.P11968767298234492532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A059366 (A055998 (n + 1)).toNat)

end

end A001194.P11968767298234492532

namespace A001194

/-- `lcm(3, A059366(A055998(n+1)))` -/
def P11968767298234492532.Spec : Prop :=
  ∀ n, (P11968767298234492532.a n : ℤ) = A001194 (n + 2)

end A001194

/-! ## A001194.P17133596181905458674

`record[gcd(A059365(n+1), A059366(n+3))]`
-/

namespace A001194.P17133596181905458674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059365 (n + 1)) (A059366 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001194.P17133596181905458674

namespace A001194

/-- `record[gcd(A059365(n+1), A059366(n+3))]` -/
def P17133596181905458674.Spec : Prop :=
  ∀ n, (P17133596181905458674.a n : ℤ) = A001194 (n + 2)

end A001194

/-! ## A001194.P9190790981458354139

`or(A000038(n), A059366(A055998(n+1)))`
-/

namespace A001194.P9190790981458354139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A059366 (A055998 (n + 1)).toNat)

end

end A001194.P9190790981458354139

namespace A001194

/-- `or(A000038(n), A059366(A055998(n+1)))` -/
def P9190790981458354139.Spec : Prop :=
  ∀ n, P9190790981458354139.a n = A001194 (n + 2)

end A001194

/-!
# A001195: a(n) = floor(n*log((14/11)*n^(10/9))).

The programs for A001195, the canonical program `A001195.P1573833855490908115` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001195 has offset 1).

The definition of A001195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*log(14/11*(n+1)^(10/9)))` (program `A001195.P1573833855490908115`, by `A001195.P1573833855490908115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001195.P1573833855490908115

`floor((n+1)*log(14/11*(n+1)^(10/9)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001195

/-- `floor((n+1)*log(14/11*(n+1)^(10/9)))` -/
def P1573833855490908115.Spec : Prop :=
  ∀ n, P1573833855490908115.a n = A001195 (n + 1)

theorem P1573833855490908115.correct : P1573833855490908115.Spec := by
  intro n
  simp only [A001195, Nat.add_sub_cancel]

end A001195

/-! ## A001195.P2313972343146920295

`ceil(log2(A330465(n+1)))`
-/

namespace A001195.P2313972343146920295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A330465 (n + 1) : ℝ)⌉

end

end A001195.P2313972343146920295

namespace A001195

/-- `ceil(log2(A330465(n+1)))` -/
def P2313972343146920295.Spec : Prop :=
  ∀ n, P2313972343146920295.a n = A001195 (n + 1)

end A001195

/-! ## A001195.P12827039514332829084

`A278586(n+1)-A047999(A000602(n))`
-/

namespace A001195.P12827039514332829084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278586 (n + 1) - A047999 (A000602 n).toNat

end

end A001195.P12827039514332829084

namespace A001195

/-- `A278586(n+1)-A047999(A000602(n))` -/
def P12827039514332829084.Spec : Prop :=
  ∀ n, P12827039514332829084.a n = A001195 (n + 1)

end A001195

/-! ## A001195.P2852817043855352170

`A060144(or(and(1, n), A156624(3*(n+1))))`
-/

namespace A001195.P2852817043855352170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (Int.lor (Nat.land 1 n : ℤ) (A156624 (3 * (n + 1)))).toNat

end

end A001195.P2852817043855352170

namespace A001195

/-- `A060144(or(and(1, n), A156624(3*(n+1))))` -/
def P2852817043855352170.Spec : Prop :=
  ∀ n, P2852817043855352170.a n = A001195 (n + 1)

end A001195

/-! ## A001195.P6007057928335548449

`round(∑[log(A329200(5*n+1))])`
-/

namespace A001195.P6007057928335548449
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A329200 (5 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001195.P6007057928335548449

namespace A001195

/-- `round(∑[log(A329200(5*n+1))])` -/
def P6007057928335548449.Spec : Prop :=
  ∀ n, P6007057928335548449.a n = A001195 (n + 1)

end A001195

/-!
# A001196: Double-bitters: only even length runs in binary expansion.

The programs for A001196, the canonical program `A001196.P5634847783591410852` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001196 has offset 0).

The definition of A001196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001196.P5634847783591410852

`3*A000695(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001196

/-- `3*A000695(n)` -/
def P5634847783591410852.Spec : Prop :=
  ∀ n, P5634847783591410852.a n = A001196 n

theorem P5634847783591410852.correct : P5634847783591410852.Spec := by
  intro n
  simp only [A001196]

end A001196

/-! ## A001196.P13859088463285746504

`2*∑[and(n, -n)²]+n`
-/

namespace A001196.P13859088463285746504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A001196.P13859088463285746504

namespace A001196

/-- `2*∑[and(n, -n)²]+n` -/
def P13859088463285746504.Spec : Prop :=
  ∀ n, P13859088463285746504.a n = A001196 n

end A001196

/-! ## A001196.P9177311662258977827

`3*∑[ceil(xor(n, -n)²/3)]/2`
-/

namespace A001196.P9177311662258977827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A001196.P9177311662258977827

namespace A001196

/-- `3*∑[ceil(xor(n, -n)²/3)]/2` -/
def P9177311662258977827.Spec : Prop :=
  ∀ n, P9177311662258977827.a n = (A001196 n : ℚ)

end A001196

/-! ## A001196.P15731365136737375596

`∑[and(n, -n)²]+∑[and(n, -n)²]+n`
-/

namespace A001196.P15731365136737375596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ))

end

end A001196.P15731365136737375596

namespace A001196

/-- `∑[and(n, -n)²]+∑[and(n, -n)²]+n` -/
def P15731365136737375596.Spec : Prop :=
  ∀ n, P15731365136737375596.a n = A001196 n

end A001196

/-! ## A001196.P1940009911811616081

`3*(A098871(n)-1)`
-/

namespace A001196.P1940009911811616081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A098871 n - 1)

end

end A001196.P1940009911811616081

namespace A001196

/-- `3*(A098871(n)-1)` -/
def P1940009911811616081.Spec : Prop :=
  ∀ n, P1940009911811616081.a n = A001196 n

theorem P1940009911811616081.correct : P1940009911811616081.Spec := by
  intro n
  simp only [A001196, Nat.add_sub_cancel, A001196.P1940009911811616081.a, A001196.P5634847783591410852.a, A000695, A000695.P14587171459336407380.a, A098871, A098871.P11206898626946488056.a, A145812, A145812.P4139239826099623968.f1, A145812.P4139239826099623968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001196

/-! ## A001196.P2093728993360767240

`3/2*A062880(n)`
-/

namespace A001196.P2093728993360767240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A062880 n : ℚ)

end

end A001196.P2093728993360767240

namespace A001196

/-- `3/2*A062880(n)` -/
def P2093728993360767240.Spec : Prop :=
  ∀ n, P2093728993360767240.a n = (A001196 n : ℚ)

theorem P2093728993360767240.correct : P2093728993360767240.Spec := by
  intro n
  simp only [A001196, Nat.add_sub_cancel, A001196.P2093728993360767240.a, A001196.P5634847783591410852.a, A000695, A000695.P14587171459336407380.a, A062880, A062880.P2055745413581106128.a, A145812, A145812.P4139239826099623968.f1, A145812.P4139239826099623968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001196

/-! ## A001196.P15378014860159747095

`2*A224915(n)+n`
-/

namespace A001196.P15378014860159747095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224915 n + (n : ℤ)

end

end A001196.P15378014860159747095

namespace A001196

/-- `2*A224915(n)+n` -/
def P15378014860159747095.Spec : Prop :=
  ∀ n, P15378014860159747095.a n = A001196 n

end A001196

/-! ## A001196.P14442641240717067922

`3/2*(A145812(n+1)-1)`
-/

namespace A001196.P14442641240717067922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A145812 (n + 1) - 1 : ℚ)

end

end A001196.P14442641240717067922

namespace A001196

/-- `3/2*(A145812(n+1)-1)` -/
def P14442641240717067922.Spec : Prop :=
  ∀ n, P14442641240717067922.a n = (A001196 n : ℚ)

end A001196

/-! ## A001196.P6073466897314099172

`A062880(n)+A000695(n)`
-/

namespace A001196.P6073466897314099172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n + A000695 n

end

end A001196.P6073466897314099172

namespace A001196

/-- `A062880(n)+A000695(n)` -/
def P6073466897314099172.Spec : Prop :=
  ∀ n, P6073466897314099172.a n = A001196 n

theorem P6073466897314099172.correct : P6073466897314099172.Spec := by
  intro n
  simp only [A001196, Nat.add_sub_cancel, A001196.P6073466897314099172.a, A001196.P5634847783591410852.a, A000695, A000695.P14587171459336407380.a, A062880, A062880.P2055745413581106128.a, A145812, A145812.P4139239826099623968.f1, A145812.P4139239826099623968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001196

/-! ## A001196.P6558366243215022420

`A145818(n+1)-A098871(n)`
-/

namespace A001196.P6558366243215022420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1) - A098871 n

end

end A001196.P6558366243215022420

namespace A001196

/-- `A145818(n+1)-A098871(n)` -/
def P6558366243215022420.Spec : Prop :=
  ∀ n, P6558366243215022420.a n = A001196 n

end A001196

/-! ## A001196.P12263648646741127747

`A145818(n+1)-(A000695(n)+1)`
-/

namespace A001196.P12263648646741127747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1) - (A000695 n + 1)

end

end A001196.P12263648646741127747

namespace A001196

/-- `A145818(n+1)-(A000695(n)+1)` -/
def P12263648646741127747.Spec : Prop :=
  ∀ n, P12263648646741127747.a n = A001196 n

end A001196

/-! ## A001196.P6939138454001923626

`A145812(n+1)+A098871(n)-2`
-/

namespace A001196.P6939138454001923626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 (n + 1) + (A098871 n - 2)

end

end A001196.P6939138454001923626

namespace A001196

/-- `A145812(n+1)+A098871(n)-2` -/
def P6939138454001923626.Spec : Prop :=
  ∀ n, P6939138454001923626.a n = A001196 n

end A001196

/-! ## A001196.P14615274110865677080

`3/2*A145818(n+1)%A145812(n+1)`
-/

namespace A001196.P14615274110865677080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (Int.tmod (A145818 (n + 1)) (A145812 (n + 1)) : ℚ)

end

end A001196.P14615274110865677080

namespace A001196

/-- `3/2*A145818(n+1)%A145812(n+1)` -/
def P14615274110865677080.Spec : Prop :=
  ∀ n, P14615274110865677080.a n = (A001196 n : ℚ)

end A001196

/-! ## A001196.P88301580330601388

`A062880(n)+A062880(n)/A040000(n)`
-/

namespace A001196.P88301580330601388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 n : ℚ) + (A062880 n : ℚ) / (A040000 n : ℚ)

end

end A001196.P88301580330601388

namespace A001196

/-- `A062880(n)+A062880(n)/A040000(n)` -/
def P88301580330601388.Spec : Prop :=
  ∀ n, P88301580330601388.a n = (A001196 n : ℚ)

end A001196

/-! ## A001196.P6357884288179130309

`A332206(2*n)`
-/

namespace A001196.P6357884288179130309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 (2 * n)

end

end A001196.P6357884288179130309

namespace A001196

/-- `A332206(2*n)` -/
def P6357884288179130309.Spec : Prop :=
  ∀ n, P6357884288179130309.a n = A001196 n

end A001196

/-! ## A001196.P6275578310371831712

`(A062880(A005843(n))-A062880(n))/2`
-/

namespace A001196.P6275578310371831712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (A005843 n).toNat - A062880 n : ℚ) / 2

end

end A001196.P6275578310371831712

namespace A001196

/-- `(A062880(A005843(n))-A062880(n))/2` -/
def P6275578310371831712.Spec : Prop :=
  ∀ n, P6275578310371831712.a n = (A001196 n : ℚ)

end A001196

/-! ## A001196.P5244513857593825769

`A332206(Δ[n²])-1`
-/

namespace A001196.P5244513857593825769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A001196.P5244513857593825769

namespace A001196

/-- `A332206(Δ[n²])-1` -/
def P5244513857593825769.Spec : Prop :=
  ∀ n, P5244513857593825769.a n = A001196 n

end A001196

/-! ## A001196.P15388479724241330294

`∩[A332206(n)-1, A332206(n)]`
-/

namespace A001196.P15388479724241330294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001196.P15388479724241330294

namespace A001196

/-- `∩[A332206(n)-1, A332206(n)]` -/
def P15388479724241330294.Spec : Prop :=
  ∀ n, (P15388479724241330294.a n : ℤ) = A001196 n

end A001196

/-! ## A001196.P1868510752137588302

`A000695(n+n)-A000695(n)`
-/

namespace A001196.P1868510752137588302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + n) - A000695 n

end

end A001196.P1868510752137588302

namespace A001196

/-- `A000695(n+n)-A000695(n)` -/
def P1868510752137588302.Spec : Prop :=
  ∀ n, P1868510752137588302.a n = A001196 n

end A001196

/-! ## A001196.P8568358410878049878

`A212591(2*n+1)+A212591(2*n+1)/2`
-/

namespace A001196.P8568358410878049878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212591 (2 * n + 1) : ℚ) + (A212591 (2 * n + 1) : ℚ) / 2

end

end A001196.P8568358410878049878

namespace A001196

/-- `A212591(2*n+1)+A212591(2*n+1)/2` -/
def P8568358410878049878.Spec : Prop :=
  ∀ n, P8568358410878049878.a n = (A001196 n : ℚ)

end A001196

/-!
# A001197: Zarankiewicz's problem k_2(n).

The programs for A001197, there is no canonical definition to state claims against.
-/

/-! ## A001197.P14661994713228020257

`A072567(n+2)+1`
-/

namespace A001197.P14661994713228020257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072567 (n + 2) + 1

end

end A001197.P14661994713228020257

/-! ## A001197.P14877324196371341008

`(n+2)²-A347472(n+2)`
-/

namespace A001197.P14877324196371341008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A347472 (n + 2)

end

end A001197.P14877324196371341008

/-! ## A001197.P261183600382795621

`(n+2)²-A350296(n+2)+1`
-/

namespace A001197.P261183600382795621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A350296 (n + 2) + 1

end

end A001197.P261183600382795621

/-! ## A001197.P3778157227751957416

`A205805(2*(n+2))+1`
-/

namespace A001197.P3778157227751957416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (2 * (n + 2)) + 1

end

end A001197.P3778157227751957416

/-! ## A001197.P20672946890875518

`A326178(A072567(n+2))`
-/

namespace A001197.P20672946890875518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A072567 (n + 2)).toNat

end

end A001197.P20672946890875518

/-!
# A001198: Zarankiewicz's problem k_3(n).

The programs for A001198, there is no canonical definition to state claims against.
-/

/-! ## A001198.P17742499113466318786

`A350304(n+3)+1`
-/

namespace A001198.P17742499113466318786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350304 (n + 3) + 1

end

end A001198.P17742499113466318786

/-! ## A001198.P7025133668658953410

`(n+3)²-A347473(n+3)`
-/

namespace A001198.P7025133668658953410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A347473 (n + 3)

end

end A001198.P7025133668658953410

/-! ## A001198.P18025035729717022737

`(n+3)²-A350237(n+3)+1`
-/

namespace A001198.P18025035729717022737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A350237 (n + 3) + 1

end

end A001198.P18025035729717022737

/-! ## A001198.P12923180054948521926

`A326178(A350304(n+3))`
-/

namespace A001198.P12923180054948521926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A350304 (n + 3)).toNat

end

end A001198.P12923180054948521926

/-! ## A001198.P6342268588646079565

`A002522(n+3)-A350237(n+3)`
-/

namespace A001198.P6342268588646079565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 3) - A350237 (n + 3)

end

end A001198.P6342268588646079565

