import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A352502: a(n) is the number of integers k in the interval 0..n such that k and n-k can be added without carries in balanced ternary.

The programs for A352502, there is no canonical definition to state claims against.
-/

/-! ## A352502.P10548990827235263890

`Δ[eq[0, A353174(n)]]`
-/

namespace A352502.P10548990827235263890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353174 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A352502.P10548990827235263890

/-! ## A352502.P1144503624351609150

`Δ[lt[A353174(n), A000035(2*n+1)]]`
-/

namespace A352502.P1144503624351609150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353174 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A352502.P1144503624351609150

/-! ## A352502.P280984918999734306

`Δ[lt[A353174(n), A006519(2*n+1)]]`
-/

namespace A352502.P280984918999734306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353174 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A352502.P280984918999734306

/-!
# A352504: Numbers k > 1 such that log(A005179(k))/k is a record low.

The programs for A352504, there is no canonical definition to state claims against.
-/

/-! ## A352504.P8315395236876532791

`lt[A195827(2*n+1), A008811(A074206(n))]`
-/

namespace A352504.P8315395236876532791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195827 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352504.P8315395236876532791

/-! ## A352504.P14881385671939805181

`lt[A276150(A107775(2*n+1)), A074206(n)]`
-/

namespace A352504.P14881385671939805181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A107775 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352504.P14881385671939805181

/-! ## A352504.P16203109130255621892

`lt[A292031(2*(n+2)), A074761(A050932(n))]`
-/

namespace A352504.P16203109130255621892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292031 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074761 (A050932 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352504.P16203109130255621892

/-!
# A352505: Sum of all parts of all partitions of n into an even number of consecutive parts.

The programs for A352505, there is no canonical definition to state claims against.
-/

/-! ## A352505.P11357042458036371144

`(n+1)*A131576(n+1)`
-/

namespace A352505.P11357042458036371144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A131576 (n + 1)

end

end A352505.P11357042458036371144

/-! ## A352505.P367052232840143303

`A245579(n+1)-A352257(n+1)`
-/

namespace A352505.P367052232840143303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (n + 1) - A352257 (n + 1)

end

end A352505.P367052232840143303

/-! ## A352505.P7458386570248967334

`(n+1)*A341594(2*(n+1))`
-/

namespace A352505.P7458386570248967334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A341594 (2 * (n + 1))

end

end A352505.P7458386570248967334

/-! ## A352505.P13765902330157916670

`(n+1)*A341675(2*(n+1))`
-/

namespace A352505.P13765902330157916670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A341675 (2 * (n + 1))

end

end A352505.P13765902330157916670

/-! ## A352505.P17320483737601142399

`(n+1)/2*A281009(n+1)`
-/

namespace A352505.P17320483737601142399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A281009 (n + 1) : ℚ)

end

end A352505.P17320483737601142399

/-! ## A352505.P5884880121426450842

`A131576(n+1)*A153152(n)`
-/

namespace A352505.P5884880121426450842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (n + 1) * A153152 n

end

end A352505.P5884880121426450842

/-! ## A352505.P2480543781655232536

`(n+1)*A001221(A281009(n+1)!)`
-/

namespace A352505.P2480543781655232536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (Nat.factorial (A281009 (n + 1)).toNat)

end

end A352505.P2480543781655232536

/-! ## A352505.P12981383957990088361

`lcm(A131209(n), A131576(n+1))`
-/

namespace A352505.P12981383957990088361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131209 n) (A131576 (n + 1))

end

end A352505.P12981383957990088361

/-!
# A352507: Number whose representation in the base of Catalan numbers (A014418) is palindromic.

The programs for A352507, there is no canonical definition to state claims against.
-/

/-! ## A352507.P17792919848805630196

`eq[0, A055947(A014419(n))]`
-/

namespace A352507.P17792919848805630196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A014419 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352507.P17792919848805630196

/-! ## A352507.P16778735498141782446

`eq[0, A261424(A014418(n))]`
-/

namespace A352507.P16778735498141782446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A014418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352507.P16778735498141782446

/-! ## A352507.P1798190250412466310

`lt[A338828(A014419(n)), A061901(n)]`
-/

namespace A352507.P1798190250412466310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338828 (A014419 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352507.P1798190250412466310

/-! ## A352507.P1998545283459272579

`lt[A338828(A014419(n)), A227349(n)]`
-/

namespace A352507.P1998545283459272579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338828 (A014419 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352507.P1998545283459272579

/-! ## A352507.P1012045704631580089

`lt[A338828(A014419(n)), A245477(n)]`
-/

namespace A352507.P1012045704631580089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338828 (A014419 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352507.P1012045704631580089

/-!
# A352509: Numbers k such that k and k+1 are both Catalan-Niven numbers (A352508).

The programs for A352509, there is no canonical definition to state claims against.
-/

/-! ## A352509.P14369989032906268566

`∩[A352508(n+1)-1, A352508(n+1)]`
-/

namespace A352509.P14369989032906268566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352508 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352509.P14369989032906268566

/-!
# A352510: Starts of runs of 3 consecutive Catalan-Niven numbers (A352508).

The programs for A352510, there is no canonical definition to state claims against.
-/

/-! ## A352510.P10745969569758749484

`∩[A352509(n+1)-1, A352509(n+1)]`
-/

namespace A352510.P10745969569758749484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352509 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352510.P10745969569758749484

/-! ## A352510.P279841048567238370

`∩[A352509(n+1), A023443(A352509(n+1))]`
-/

namespace A352510.P279841048567238370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A352509 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352510.P279841048567238370

/-! ## A352510.P15503136556824142960

`∩[A352509(n+1), A199969(A352509(n+2))]`
-/

namespace A352510.P15503136556824142960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A352509 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352510.P15503136556824142960

/-!
# A352511: Starts of runs of 4 consecutive Catalan-Niven numbers (A352508).

The programs for A352511, there is no canonical definition to state claims against.
-/

/-! ## A352511.P6168060754614447935

`∩[A352510(n+1)-1, A352510(n+1)]`
-/

namespace A352511.P6168060754614447935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352510 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352511.P6168060754614447935

/-!
# A352512: Number of fixed points in the n-th composition in standard order.

The programs for A352512, there is no canonical definition to state claims against.
-/

/-! ## A352512.P4088041819713265188

`∑[∑{e}[xor(n, -n), 2-#]]-A352513(n)`
-/

namespace A352512.P4088041819713265188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352513 n

end

end A352512.P4088041819713265188

/-! ## A352512.P13892507823901884589

`A000120(n)-A352513(n)`
-/

namespace A352512.P13892507823901884589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A352513 n

end

end A352512.P13892507823901884589

/-! ## A352512.P17850925542069686854

`A352515(n)-A352514(n)`
-/

namespace A352512.P17850925542069686854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 n - A352514 n

end

end A352512.P17850925542069686854

/-! ## A352512.P3413142678994642678

`A352517(n)-A352516(n)`
-/

namespace A352512.P3413142678994642678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 n - A352516 n

end

end A352512.P3413142678994642678

/-! ## A352512.P5331137843005538086

`log2(A001316(n))-A352513(n)`
-/

namespace A352512.P5331137843005538086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A352513 n : ℝ)

end

end A352512.P5331137843005538086

/-! ## A352512.P5638056923126098212

`dr(A007088(n))-A352513(n)`
-/

namespace A352512.P5638056923126098212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007088 n) : ℤ) - A352513 n

end

end A352512.P5638056923126098212

/-! ## A352512.P1762427145118818798

`∑[A088705(n)]-A352513(n)`
-/

namespace A352512.P1762427145118818798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352513 n

end

end A352512.P1762427145118818798

/-! ## A352512.P4777807954815550230

`A001222(A019565(n))-A352513(n)`
-/

namespace A352512.P4777807954815550230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A352513 n

end

end A352512.P4777807954815550230

/-! ## A352512.P878685071660648458

`A124769(A038573(n))-A352513(n)`
-/

namespace A352512.P878685071660648458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A038573 n).toNat - A352513 n

end

end A352512.P878685071660648458

/-! ## A352512.P837870093230024941

`A352514(n)+A352517(n)-A352513(n)`
-/

namespace A352512.P837870093230024941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 n + (A352517 n - A352513 n)

end

end A352512.P837870093230024941

/-!
# A352513: Number of nonfixed points in the n-th composition in standard order.

The programs for A352513, there is no canonical definition to state claims against.
-/

/-! ## A352513.P5840670881080469132

`∑[∑{e}[xor(n, -n), 2-#]]-A352512(n)`
-/

namespace A352513.P5840670881080469132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352512 n

end

end A352513.P5840670881080469132

/-! ## A352513.P313961549870937924

`A352516(n)+A352514(n)`
-/

namespace A352513.P313961549870937924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 n + A352514 n

end

end A352513.P313961549870937924

/-! ## A352513.P8017646662698151903

`A000120(n)-A352512(n)`
-/

namespace A352513.P8017646662698151903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A352512 n

end

end A352513.P8017646662698151903

/-! ## A352513.P16042561120707747147

`log2(A001316(n))-A352512(n)`
-/

namespace A352513.P16042561120707747147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A352512 n : ℝ)

end

end A352513.P16042561120707747147

/-! ## A352513.P17140403749652271310

`dr(A007088(n))-A352512(n)`
-/

namespace A352513.P17140403749652271310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007088 n) : ℤ) - A352512 n

end

end A352513.P17140403749652271310

/-! ## A352513.P1681309903799870317

`∑[A088705(n)]-A352512(n)`
-/

namespace A352513.P1681309903799870317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352512 n

end

end A352513.P1681309903799870317

/-! ## A352513.P2332830508260446837

`A048881(2*n)-A352512(n)`
-/

namespace A352513.P2332830508260446837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n) - A352512 n

end

end A352513.P2332830508260446837

/-! ## A352513.P4820538184476836657

`A001222(A019565(n))-A352512(n)`
-/

namespace A352513.P4820538184476836657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A352512 n

end

end A352513.P4820538184476836657

/-! ## A352513.P17983964064067146495

`A001222(A048883(n))-A352512(n)`
-/

namespace A352513.P17983964064067146495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048883 n).toNat - A352512 n

end

end A352513.P17983964064067146495

/-! ## A352513.P1607906845726792026

`A002487(A073138(n))-A352512(n)`
-/

namespace A352513.P1607906845726792026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A073138 n).toNat - A352512 n

end

end A352513.P1607906845726792026

/-!
# A352514: Number of strong nonexcedances (parts below the diagonal) of the n-th composition in standard order.

The programs for A352514, there is no canonical definition to state claims against.
-/

/-! ## A352514.P6565834478667933281

`∑[∑{e}[xor(n, -n), 2-#]]-A352517(n)`
-/

namespace A352514.P6565834478667933281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352517 n

end

end A352514.P6565834478667933281

/-! ## A352514.P9876879798715730475

`A000120(n)-A352517(n)`
-/

namespace A352514.P9876879798715730475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A352517 n

end

end A352514.P9876879798715730475

/-! ## A352514.P6555964346803468738

`A352515(n-A053644(n))`
-/

namespace A352514.P6555964346803468738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 ((n : ℤ) - A053644 n).toNat

end

end A352514.P6555964346803468738

/-! ## A352514.P1772592396207222726

`A352513(n)-A352516(n)`
-/

namespace A352514.P1772592396207222726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 n - A352516 n

end

end A352514.P1772592396207222726

/-! ## A352514.P17170858863933553974

`A352515(n)-A352512(n)`
-/

namespace A352514.P17170858863933553974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 n - A352512 n

end

end A352514.P17170858863933553974

/-! ## A352514.P3924384284888776503

`A352515(xor(n, A053644(n)))`
-/

namespace A352514.P3924384284888776503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (Int.xor (n : ℤ) (A053644 n)).toNat

end

end A352514.P3924384284888776503

/-! ## A352514.P14819067091464691173

`log2(A001316(n))-A352517(n)`
-/

namespace A352514.P14819067091464691173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A352517 n : ℝ)

end

end A352514.P14819067091464691173

/-! ## A352514.P12863073226438667467

`A048881(2*n)-A352517(n)`
-/

namespace A352514.P12863073226438667467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n) - A352517 n

end

end A352514.P12863073226438667467

/-! ## A352514.P16362200901398778374

`A001222(A019565(n))-A352517(n)`
-/

namespace A352514.P16362200901398778374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A352517 n

end

end A352514.P16362200901398778374

/-! ## A352514.P9953917904153127920

`A001222(A005940(n+1))-A352517(n)`
-/

namespace A352514.P9953917904153127920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005940 (n + 1)).toNat - A352517 n

end

end A352514.P9953917904153127920

/-!
# A352515: Number of weak nonexcedances (parts on or below the diagonal) of the n-th composition in standard order.

The programs for A352515, there is no canonical definition to state claims against.
-/

/-! ## A352515.P16289815297065448531

`∑[∑{e}[xor(n, -n), 2-#]]-A352516(n)`
-/

namespace A352515.P16289815297065448531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352516 n

end

end A352515.P16289815297065448531

/-! ## A352515.P980622511540374404

`A352514(n)+A352512(n)`
-/

namespace A352515.P980622511540374404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 n + A352512 n

end

end A352515.P980622511540374404

/-! ## A352515.P1981071399299236074

`A000120(n)-A352516(n)`
-/

namespace A352515.P1981071399299236074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A352516 n

end

end A352515.P1981071399299236074

/-! ## A352515.P727717327030308071

`log2(A001316(n))-A352516(n)`
-/

namespace A352515.P727717327030308071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A352516 n : ℝ)

end

end A352515.P727717327030308071

/-! ## A352515.P11629121439696472390

`dr(A007088(n))-A352516(n)`
-/

namespace A352515.P11629121439696472390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007088 n) : ℤ) - A352516 n

end

end A352515.P11629121439696472390

/-! ## A352515.P5030444909553624618

`∑[A088705(n)]-A352516(n)`
-/

namespace A352515.P5030444909553624618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352516 n

end

end A352515.P5030444909553624618

/-! ## A352515.P5356040872143470416

`A001222(A019565(n))-A352516(n)`
-/

namespace A352515.P5356040872143470416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A352516 n

end

end A352515.P5356040872143470416

/-! ## A352515.P14348371423204406367

`A001221(A057335(n))-A352516(n)`
-/

namespace A352515.P14348371423204406367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A057335 n).toNat - A352516 n

end

end A352515.P14348371423204406367

/-! ## A352515.P9741800426077198621

`A001222(A278222(n))-A352516(n)`
-/

namespace A352515.P9741800426077198621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat - A352516 n

end

end A352515.P9741800426077198621

/-! ## A352515.P14342351745940752180

`A001222(sqrt(A102376(n)))-A352516(n)`
-/

namespace A352515.P14342351745940752180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A102376 n : ℝ))).toNat - A352516 n

end

end A352515.P14342351745940752180

/-!
# A352516: Number of excedances (parts above the diagonal) of the n-th composition in standard order.

The programs for A352516, there is no canonical definition to state claims against.
-/

/-! ## A352516.P14521308964784370109

`∑[∑{e}[xor(n, -n), 2-#]]-A352515(n)`
-/

namespace A352516.P14521308964784370109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352515 n

end

end A352516.P14521308964784370109

/-! ## A352516.P9123493328000388237

`a(n-2^floor(log2(n)))+1-A352512(n)` with `a(0)=0`
-/

namespace A352516.P9123493328000388237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 2 ^ Nat.log 2 n) + 1 - A352512 n

end

end A352516.P9123493328000388237

/-! ## A352516.P195405422046612164

`A000120(n)-A352515(n)`
-/

namespace A352516.P195405422046612164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A352515 n

end

end A352516.P195405422046612164

/-! ## A352516.P961634510042976667

`A352513(n)-A352514(n)`
-/

namespace A352516.P961634510042976667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 n - A352514 n

end

end A352516.P961634510042976667

/-! ## A352516.P12427028513449459649

`A352517(n)-A352512(n)`
-/

namespace A352516.P12427028513449459649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 n - A352512 n

end

end A352516.P12427028513449459649

/-! ## A352516.P2046106211277646377

`log2(A001316(n))-A352515(n)`
-/

namespace A352516.P2046106211277646377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A352515 n : ℝ)

end

end A352516.P2046106211277646377

/-! ## A352516.P15624362832919145127

`dr(A007088(n))-A352515(n)`
-/

namespace A352516.P15624362832919145127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007088 n) : ℤ) - A352515 n

end

end A352516.P15624362832919145127

/-! ## A352516.P14076348925646492159

`∑[A088705(n)]-A352515(n)`
-/

namespace A352516.P14076348925646492159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352515 n

end

end A352516.P14076348925646492159

/-! ## A352516.P765760317189414211

`∑[∑{e}[A020639(n+1), #-val(n, 2)]]-A352515(n)`
-/

namespace A352516.P765760317189414211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, ((Nat.factorization (f2 n).natAbs p : ℤ) - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352515 n

end

end A352516.P765760317189414211

/-! ## A352516.P1420743337142742219

`A001222(A019565(n))-A352515(n)`
-/

namespace A352516.P1420743337142742219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A352515 n

end

end A352516.P1420743337142742219

/-!
# A352517: Number of weak excedances (parts on or above the diagonal) of the n-th composition in standard order.

The programs for A352517, there is no canonical definition to state claims against.
-/

/-! ## A352517.P9197758777354955143

`∑[∑{e}[xor(n, -n), 2-#]]-A352514(n)`
-/

namespace A352517.P9197758777354955143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A352514 n

end

end A352517.P9197758777354955143

/-! ## A352517.P2516739372268480224

`A352516(n)+A352512(n)`
-/

namespace A352517.P2516739372268480224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 n + A352512 n

end

end A352517.P2516739372268480224

/-! ## A352517.P16778348565625686521

`A000120(n)-A352514(n)`
-/

namespace A352517.P16778348565625686521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A352514 n

end

end A352517.P16778348565625686521

/-! ## A352517.P13268247229204680754

`log2(A001316(n))-A352514(n)`
-/

namespace A352517.P13268247229204680754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A352514 n : ℝ)

end

end A352517.P13268247229204680754

/-! ## A352517.P12996183174242782409

`dr(A007088(n)-A352514(n))`
-/

namespace A352517.P12996183174242782409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n - A352514 n)

end

end A352517.P12996183174242782409

/-! ## A352517.P14684976967337265074

`A001222(A019565(n))-A352514(n)`
-/

namespace A352517.P14684976967337265074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A352514 n

end

end A352517.P14684976967337265074

/-! ## A352517.P13678791358167813035

`A001222(A048883(n))-A352514(n)`
-/

namespace A352517.P13678791358167813035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048883 n).toNat - A352514 n

end

end A352517.P13678791358167813035

/-! ## A352517.P10924194330697078554

`A124769(A038573(n))-A352514(n)`
-/

namespace A352517.P10924194330697078554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A038573 n).toNat - A352514 n

end

end A352517.P10924194330697078554

/-! ## A352517.P5450803125411474081

`A001222(A268444(n))-A352514(n)`
-/

namespace A352517.P5450803125411474081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 n).toNat - A352514 n

end

end A352517.P5450803125411474081

/-! ## A352517.P17725865632169568453

`A001222(A278222(n))-A352514(n)`
-/

namespace A352517.P17725865632169568453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat - A352514 n

end

end A352517.P17725865632169568453

/-!
# A352518: Numbers > 1 that are not a prime power and whose prime indices and exponents are all themselves prime numbers.

The programs for A352518, there is no canonical definition to state claims against.
-/

/-! ## A352518.P11883904379488111812

`∩[A346068(n+1), A363217(n+1)]`
-/

namespace A352518.P11883904379488111812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352518.P11883904379488111812

/-! ## A352518.P1567212787068092344

`∩[A346068(n+1), A369417(n+1)]`
-/

namespace A352518.P1567212787068092344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352518.P1567212787068092344

/-! ## A352518.P14873873007465161066

`∩[A346068(n+1), A369636(n+1)]`
-/

namespace A352518.P14873873007465161066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352518.P14873873007465161066

/-! ## A352518.P2210485855391460213

`∩[A286708(n+1), A346068(n+1)]`
-/

namespace A352518.P2210485855391460213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352518.P2210485855391460213

/-! ## A352518.P10188783390566041527

`∩[A346068(n+1), A370266(n+1)]`
-/

namespace A352518.P10188783390566041527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352518.P10188783390566041527

/-! ## A352518.P16720824345363090509

`∩[A114127(n+1), A346068(n+1)]`
-/

namespace A352518.P16720824345363090509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352518.P16720824345363090509

/-! ## A352518.P419014591087897907

`∩[A114127(n+1), A352492(n+1)]`
-/

namespace A352518.P419014591087897907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352518.P419014591087897907

/-! ## A352518.P11648520746188383625

`∩[A346068(n+1), A361487(n+1)]`
-/

namespace A352518.P11648520746188383625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352518.P11648520746188383625

/-!
# A352519: Numbers of the form prime(p)^q where p and q are primes. Prime powers whose prime index and exponent are both prime.

The programs for A352519, there is no canonical definition to state claims against.
-/

/-! ## A352519.P6237175416234906924

`∩[A053810(n+1), A346068(n+1)]`
-/

namespace A352519.P6237175416234906924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P6237175416234906924

/-! ## A352519.P4236638416450174274

`∩[A053810(n+1), A352492(n+1)]`
-/

namespace A352519.P4236638416450174274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P4236638416450174274

/-! ## A352519.P4655998424327931783

`∩[A346068(n+1), A383211(n+1)]`
-/

namespace A352519.P4655998424327931783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P4655998424327931783

/-! ## A352519.P10763808391233763836

`∩[A073540(n+1), A346068(n+1)]`
-/

namespace A352519.P10763808391233763836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P10763808391233763836

/-! ## A352519.P13008285249786827365

`∩[A249125(n+1), A346068(n+1)]`
-/

namespace A352519.P13008285249786827365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P13008285249786827365

/-! ## A352519.P9543406426468188404

`∩[A134612(n+1), A346068(n+1)]`
-/

namespace A352519.P9543406426468188404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P9543406426468188404

/-! ## A352519.P5577292025404233417

`∩[A306531(n+1), A346068(n+1)]`
-/

namespace A352519.P5577292025404233417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P5577292025404233417

/-! ## A352519.P5918355548978612697

`∩[A325359(n+1), A346068(n+1)]`
-/

namespace A352519.P5918355548978612697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P5918355548978612697

/-! ## A352519.P15956409079767183894

`∩[A280609(n+1), A346068(n+1)]`
-/

namespace A352519.P15956409079767183894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P15956409079767183894

/-! ## A352519.P4856709473309636334

`∩[A280609(n+1), A352492(n+1)]`
-/

namespace A352519.P4856709473309636334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352519.P4856709473309636334

/-!
# A352520: Number of integer compositions y of n with exactly one nonfixed point y(i) != i.

The programs for A352520, there is no canonical definition to state claims against.
-/

/-! ## A352520.P8515077605898971352

`n-Δ[C(round(sqrt(2*n)), 2)]`
-/

namespace A352520.P8515077605898971352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A352520.P8515077605898971352

/-! ## A352520.P17699091825000047805

`n-floor(sqrt(2*n))*char[∑[n]]`
-/

namespace A352520.P17699091825000047805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.sqrt (2 * n) * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A352520.P17699091825000047805

/-! ## A352520.P4367980222095281250

`abs(ratio[round(sqrt(2*n))!/2]-1-n)`
-/

namespace A352520.P4367980222095281250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) / f1 n - 1 - (n : ℚ)|

end

end A352520.P4367980222095281250

/-! ## A352520.P7605538769514396858

`Δ[n²]%(ratio[-round(sqrt(2*n))!]+n)`
-/

namespace A352520.P7605538769514396858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ) + (n : ℚ)))

end

end A352520.P7605538769514396858

/-! ## A352520.P3234568259836348933

`(n*(Δ[C(round(sqrt(2*n)), 2)]+1))%(n+1)`
-/

namespace A352520.P3234568259836348933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1)) (n + 1 : ℤ)

end

end A352520.P3234568259836348933

/-! ## A352520.P449414531082437648

`(n*(round(sqrt(2*n))*char[∑[n]]+1))%(n+1)`
-/

namespace A352520.P449414531082437648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1)) (n + 1 : ℤ)

end

end A352520.P449414531082437648

/-! ## A352520.P3813814063806107400

`-(xor(n, -1)+round(sqrt(2*n))*char[∑[n]]+1)`
-/

namespace A352520.P3813814063806107400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) + (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1))

end

end A352520.P3813814063806107400

/-! ## A352520.P12850969214466926648

`abs(abs(C(comp[∑[n]]-n, 2)-(n+1))+round(sqrt(2*n))*char[∑[n]]+1-C(comp[∑[n]]-n, 2))`
-/

namespace A352520.P12850969214466926648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)| + (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + 1) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ))|

end

end A352520.P12850969214466926648

/-! ## A352520.P16633852225284951415

`ceil(n-A198954(n)/2)`
-/

namespace A352520.P16633852225284951415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (A198954 n : ℚ) / 2⌉

end

end A352520.P16633852225284951415

/-! ## A352520.P13406476063208730574

`floor(n²/A066182(n+1))`
-/

namespace A352520.P13406476063208730574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / (A066182 (n + 1) : ℚ)⌋

end

end A352520.P13406476063208730574

/-!
# A352521: Triangle read by rows where T(n,k) is the number of integer compositions of n with k strong nonexcedances (parts below the diagonal).

The programs for A352521, there is no canonical definition to state claims against.
-/

/-! ## A352521.P1617268507246192185

`A047040(n+1)%A055647(A337883(n+2)+A000007(n))`
-/

namespace A352521.P1617268507246192185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047040 (n + 1)) (A055647 (A337883 (n + 2) + A000007 n).toNat)

end

end A352521.P1617268507246192185

/-! ## A352521.P6364635148460743908

`A055642(A017991(n))-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A352521.P6364635148460743908
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A017991 n).toNat - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A352521.P6364635148460743908

/-! ## A352521.P2587838324614387040

`A055642(A000219(n))-A002262(n)`
-/

namespace A352521.P2587838324614387040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000219 n).toNat - A002262 n

end

end A352521.P2587838324614387040

/-! ## A352521.P992581638874706800

`A055642(A001644(n))-A002262(n)`
-/

namespace A352521.P992581638874706800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A001644 n).toNat - A002262 n

end

end A352521.P992581638874706800

/-! ## A352521.P14003148373314593629

`A055642(A045925(n))-A002262(n)`
-/

namespace A352521.P14003148373314593629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A045925 n).toNat - A002262 n

end

end A352521.P14003148373314593629

/-!
# A352522: Triangle read by rows where T(n,k) is the number of integer compositions of n with k weak nonexcedances (parts on or below the diagonal).

The programs for A352522, there is no canonical definition to state claims against.
-/

/-! ## A352522.P138472438391151570

`A077267(lcm(A056220(n), A221419(n+1)))`
-/

namespace A352522.P138472438391151570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (Int.lcm (A056220 n) (A221419 (n + 1)))

end

end A352522.P138472438391151570

/-! ## A352522.P321836865919689344

`A086597(A190501(n)+5)`
-/

namespace A352522.P321836865919689344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A190501 n + 5).toNat

end

end A352522.P321836865919689344

/-! ## A352522.P10750653487206571045

`A037830(A354471(n+1)²)`
-/

namespace A352522.P10750653487206571045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A354471 (n + 1) ^ 2).toNat

end

end A352522.P10750653487206571045

/-! ## A352522.P13163056292502379312

`A196563(A068011(n)+1+n)`
-/

namespace A352522.P13163056292502379312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A068011 n + 1 + (n : ℤ)).toNat

end

end A352522.P13163056292502379312

/-! ## A352522.P3304533002940453561

`A284556(n)^A110618(A060524(n))`
-/

namespace A352522.P3304533002940453561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284556 n : ℚ) ^ (A110618 (A060524 n).toNat : ℤ)

end

end A352522.P3304533002940453561

/-!
# A352523: Number of integer compositions of n with exactly k nonfixed points (parts not on the diagonal).

The programs for A352523, there is no canonical definition to state claims against.
-/

/-! ## A352523.P9692822744255763100

`and(A067049(n), A219086(A280154(n)))`
-/

namespace A352523.P9692822744255763100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067049 n) (A219086 (A280154 n).toNat)

end

end A352523.P9692822744255763100

/-! ## A352523.P17854224216051899486

`and(A193592(n), A348601(A338863(n)))`
-/

namespace A352523.P17854224216051899486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193592 n) (A348601 (A338863 n).toNat)

end

end A352523.P17854224216051899486

/-! ## A352523.P8084494312167362294

`and(A068310(A030427(n+1)), A193592(n))`
-/

namespace A352523.P8084494312167362294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068310 (A030427 (n + 1)).toNat) (A193592 n)

end

end A352523.P8084494312167362294

/-! ## A352523.P15629484352491174887

`and(A067049(n), A340378(A050492(n+1)))`
-/

namespace A352523.P15629484352491174887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067049 n) (A340378 (A050492 (n + 1)).toNat)

end

end A352523.P15629484352491174887

/-! ## A352523.P5122749140621897148

`and(A193592(n), A340378(A050492(n+1)))`
-/

namespace A352523.P5122749140621897148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193592 n) (A340378 (A050492 (n + 1)).toNat)

end

end A352523.P5122749140621897148

/-!
# A352526: a(n) = Product_{k=0..n} Nimsum (2*k + 2), with Nimsum (2 + 2) = 0 replaced by 1.

The programs for A352526, the canonical program `A352526.P1689160859808208636` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352526 has offset 0).

The definition of A352526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352526.P1689160859808208636

`2*a(n-1)*(n+(-1)^n)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A352526

/-- `2*a(n-1)*(n+(-1)^n)` -/
def P1689160859808208636.Spec : Prop :=
  ∀ n, P1689160859808208636.a n = A352526 n

theorem P1689160859808208636.correct : P1689160859808208636.Spec := by
  intro n
  simp only [A352526]

end A352526

/-! ## A352526.P16942794314471957562

`∏[xor(char[1]+2, 2*n)]`
-/

namespace A352526.P16942794314471957562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((if ∃ j, f2 j = n then 1 else 0) + 2) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352526.P16942794314471957562

namespace A352526

/-- `∏[xor(char[1]+2, 2*n)]` -/
def P16942794314471957562.Spec : Prop :=
  ∀ n, (P16942794314471957562.a n : ℤ) = A352526 n

end A352526

/-! ## A352526.P54941145332218885

`2*xor(1, n)*a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A352526.P54941145332218885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * Nat.xor 1 n * a (n - 1)

end

end A352526.P54941145332218885

namespace A352526

/-- `2*xor(1, n)*a(n-1)` -/
def P54941145332218885.Spec : Prop :=
  ∀ n, (P54941145332218885.a n : ℤ) = A352526 n

end A352526

/-! ## A352526.P7805951513787208480

`∏[A004277(xor(1, n))]`
-/

namespace A352526.P7805951513787208480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352526.P7805951513787208480

namespace A352526

/-- `∏[A004277(xor(1, n))]` -/
def P7805951513787208480.Spec : Prop :=
  ∀ n, P7805951513787208480.a n = A352526 n

end A352526

/-! ## A352526.P18416786753248198994

`∏[A004275(xor(1, n)+1)]`
-/

namespace A352526.P18416786753248198994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352526.P18416786753248198994

namespace A352526

/-- `∏[A004275(xor(1, n)+1)]` -/
def P18416786753248198994.Spec : Prop :=
  ∀ n, P18416786753248198994.a n = A352526 n

end A352526

/-! ## A352526.P3714972432340241913

`∏[A028310(2*xor(1, n))]`
-/

namespace A352526.P3714972432340241913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352526.P3714972432340241913

namespace A352526

/-- `∏[A028310(2*xor(1, n))]` -/
def P3714972432340241913.Spec : Prop :=
  ∀ n, P3714972432340241913.a n = A352526 n

end A352526

/-! ## A352526.P17659723569027888686

`∏[A274922(2*A004442(n))]`
-/

namespace A352526.P17659723569027888686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 (2 * A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352526.P17659723569027888686

namespace A352526

/-- `∏[A274922(2*A004442(n))]` -/
def P17659723569027888686.Spec : Prop :=
  ∀ n, P17659723569027888686.a n = A352526 n

end A352526

/-!
# A352529: Expansion of 1/Sum_{k>=0} x^(k^4).

The programs for A352529, there is no canonical definition to state claims against.
-/

/-! ## A352529.P622252880424658596

`(A033999(A195824(n))-A297244(n+1))*A033999(n)`
-/

namespace A352529.P622252880424658596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (A195824 n).toNat - A297244 (n + 1)) * A033999 n

end

end A352529.P622252880424658596

/-! ## A352529.P1222068379329039478

`Δ[gcd(2, A052057(n+4))]`
-/

namespace A352529.P1222068379329039478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A052057 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A352529.P1222068379329039478

/-! ## A352529.P15372219146455655871

`((A088155(n)-1)^n)^n`
-/

namespace A352529.P15372219146455655871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A088155 n - 1) ^ n) ^ n

end

end A352529.P15372219146455655871

/-! ## A352529.P9705270299468372766

`Δ[A343435(3*n+5)%2]`
-/

namespace A352529.P9705270299468372766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343435 (3 * n + 5)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352529.P9705270299468372766

/-! ## A352529.P3599330527844123953

`A143259(A118655(n+1))`
-/

namespace A352529.P3599330527844123953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A118655 (n + 1)).toNat

end

end A352529.P3599330527844123953

/-!
# A352530: Expansion of 1/Sum_{k>=0} x^(k^5).

The programs for A352530, there is no canonical definition to state claims against.
-/

/-! ## A352530.P18446466641804323357

`(2-A141213(n)+n)^n`
-/

namespace A352530.P18446466641804323357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A141213 n + (n : ℤ)) ^ n

end

end A352530.P18446466641804323357

/-! ## A352530.P8385055065883342644

`(A032513(n)-(n+1))^n²`
-/

namespace A352530.P8385055065883342644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032513 n - (n + 1 : ℤ)) ^ n ^ 2

end

end A352530.P8385055065883342644

/-! ## A352530.P8290459437807680669

`(-A054354(C(2*n, 64)+1))^n`
-/

namespace A352530.P8290459437807680669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A054354 (Nat.choose (2 * n) 64 + 1)) ^ n

end

end A352530.P8290459437807680669

/-! ## A352530.P8764648253208477718

`Δ[A118914(A278067(n+5)²)]`
-/

namespace A352530.P8764648253208477718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A278067 (n + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352530.P8764648253208477718

/-! ## A352530.P5558848845616679686

`A033999(n)-A374093(A124530(n))`
-/

namespace A352530.P5558848845616679686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - A374093 (A124530 n).toNat

end

end A352530.P5558848845616679686

/-!
# A352534: First of four consecutive primes p,q,r,s such that p+q+r+s is divisible by A001414(r+s).

The programs for A352534, there is no canonical definition to state claims against.
-/

/-! ## A352534.P16346319011914910930

`A104216(∑[A265832(n)!])`
-/

namespace A352534.P16346319011914910930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A265832 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352534.P16346319011914910930

/-! ## A352534.P9443298481362472371

`p?[A320048(A319548(n+1))]`
-/

namespace A352534.P9443298481362472371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320048 (A319548 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352534.P9443298481362472371

/-!
# A352535: Numbers m such that A257588(m) = 0.

The programs for A352535, there is no canonical definition to state claims against.
-/

/-! ## A352535.P4683319524113541360

`eq[0, A257587(n)]`
-/

namespace A352535.P4683319524113541360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352535.P4683319524113541360

/-! ## A352535.P3672183166374781224

`eq[0, A257588(n)]`
-/

namespace A352535.P3672183166374781224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352535.P3672183166374781224

/-! ## A352535.P2708559705811875949

`lt[A257588(A004086(n)), 1]`
-/

namespace A352535.P2708559705811875949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 (A004086 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352535.P2708559705811875949

/-! ## A352535.P13331100349319063269

`lt[A257588(n), A054977(n)]`
-/

namespace A352535.P13331100349319063269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352535.P13331100349319063269

/-! ## A352535.P15096968779656344315

`lt[A257588(n), abs(A158388(n))]`
-/

namespace A352535.P15096968779656344315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158388 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352535.P15096968779656344315

/-! ## A352535.P8942705978961187058

`lt[A257588(n), A294619(n)!]`
-/

namespace A352535.P8942705978961187058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A294619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352535.P8942705978961187058

/-! ## A352535.P8953830848338193617

`lt[A257588(n), A057427(A005408(n))]`
-/

namespace A352535.P8953830848338193617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352535.P8953830848338193617

/-!
# A352537: Primes whose position in the Wythoff array is immediately followed by a prime both in the next column and the next row.

The programs for A352537, there is no canonical definition to state claims against.
-/

/-! ## A352537.P8536170417555184167

`∩[A352538(n+1), A352539(n+1)]`
-/

namespace A352537.P8536170417555184167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352537.P8536170417555184167

/-!
# A352538: Primes whose position in the Wythoff array is immediately followed by another prime in the next column.

The programs for A352538, there is no canonical definition to state claims against.
-/

/-! ## A352538.P5306939565833662929

`p?[A005206(p?[floor((n+1)/ϕ+n)])]`
-/

namespace A352538.P5306939565833662929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352538.P5306939565833662929

/-! ## A352538.P7610127522469594495

`p?[A005206(A095080(n+1))]`
-/

namespace A352538.P7610127522469594495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A095080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352538.P7610127522469594495

/-! ## A352538.P588829457491444840

`p?[record[A026272(A006093(n+1))]]`
-/

namespace A352538.P588829457491444840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A006093 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352538.P588829457491444840

/-! ## A352538.P2044466583303841604

`p?[record[A026272(A039915(n+1))]]`
-/

namespace A352538.P2044466583303841604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A039915 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352538.P2044466583303841604

/-! ## A352538.P9238764763076873171

`p?[A005379(p?[A005379(n)+n])]`
-/

namespace A352538.P9238764763076873171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352538.P9238764763076873171

/-! ## A352538.P12014865638099559373

`p?[A026272(A095080(n+1)-1)]`
-/

namespace A352538.P12014865638099559373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A095080 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352538.P12014865638099559373

/-! ## A352538.P8629466428223332033

`p?[n*A068108(A000201(n+1))]`
-/

namespace A352538.P8629466428223332033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068108 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352538.P8629466428223332033

/-! ## A352538.P18261850737028055670

`p?[(n+1)*A001222(A019446(n+2)+n)]`
-/

namespace A352538.P18261850737028055670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A019446 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352538.P18261850737028055670

/-!
# A352539: Primes whose position in the Wythoff array is immediately followed by another prime in the next row.

The programs for A352539, there is no canonical definition to state claims against.
-/

/-! ## A352539.P17484358577677050573

`p?[A002024(A278690(n))]`
-/

namespace A352539.P17484358577677050573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A278690 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352539.P17484358577677050573

/-! ## A352539.P13368489069776273222

`p?[∑[A000593(A127218(n))]]`
-/

namespace A352539.P13368489069776273222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A127218 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352539.P13368489069776273222

/-!
# A352540: Values for which the iteration of A352544 (half if even, add largest anagram if odd) does not end in a loop.

The programs for A352540, there is no canonical definition to state claims against.
-/

/-! ## A352540.P2761901148078765928

`A328168(A066500(n+5))+A225010(n+1)`
-/

namespace A352540.P2761901148078765928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (A066500 (n + 5)).toNat + A225010 (n + 1)

end

end A352540.P2761901148078765928

/-!
# A352541: Number of iterations of A352544 (half if even, add largest anagram if odd) until a value is reached for the second time; 0 if this never happens.

The programs for A352541, there is no canonical definition to state claims against.
-/

/-! ## A352541.P15267698816054634510

`A089605(n)+A036453(A191702(n+1))`
-/

namespace A352541.P15267698816054634510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089605 n + A036453 (A191702 (n + 1)).toNat

end

end A352541.P15267698816054634510

/-! ## A352541.P2152195382571229498

`A089605(n)+A020639(A280015(n+1))`
-/

namespace A352541.P2152195382571229498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089605 n + A020639 (A280015 (n + 1)).toNat

end

end A352541.P2152195382571229498

/-! ## A352541.P6011610889179822420

`A137921(A256472(n+1))+A089605(n)`
-/

namespace A352541.P6011610889179822420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (A256472 (n + 1)).toNat + A089605 n

end

end A352541.P6011610889179822420

/-! ## A352541.P3861113689552404338

`A089605(n)+A020639(Δ[A003459(n+1)])`
-/

namespace A352541.P3861113689552404338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089605 n + A020639 (f1 (n + 1) - f1 n).toNat

end

end A352541.P3861113689552404338

/-! ## A352541.P11260771359152093125

`A089605(n)+A020639(A063886(n))`
-/

namespace A352541.P11260771359152093125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089605 n + A020639 (A063886 n).toNat

end

end A352541.P11260771359152093125

/-!
# A352542: Trajectory of initial value 89 under iterations of the map A352544: half if even, add largest anagram if odd.

The programs for A352542, there is no canonical definition to state claims against.
-/

/-! ## A352542.P16722441022593673385

`A352544(A352544(2*a(n-1)))` with `a(0)=89`
-/

namespace A352542.P16722441022593673385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A352544 (A352544 (2 * a (n - 1)).toNat).toNat

end

end A352542.P16722441022593673385

/-!
# A352544: a(n) = n/2 if n is even, otherwise n + A004186(n), where A004186 = arrange digits in decreasing order.

The programs for A352544, there is no canonical definition to state claims against.
-/

/-! ## A352544.P9358941501286197509

`gcd(n, ∑[n])+A004186(n*A000035(n))`
-/

namespace A352544.P9358941501286197509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + A004186 ((n : ℤ) * A000035 n).toNat

end

end A352544.P9358941501286197509

/-! ## A352544.P86199319070059734

`A026741(n)+A004186(n*A000035(n))`
-/

namespace A352544.P86199319070059734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + A004186 ((n : ℤ) * A000035 n).toNat

end

end A352544.P86199319070059734

/-! ## A352544.P17169562841664033310

`A026741(n)+(A108782(n)+n)*A000035(n)`
-/

namespace A352544.P17169562841664033310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A108782 n + (n : ℤ)) * A000035 n

end

end A352544.P17169562841664033310

/-! ## A352544.P902941657168890782

`n/A040001(n)+A004186(n*A000035(n))`
-/

namespace A352544.P902941657168890782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A040001 n : ℚ) + (A004186 ((n : ℤ) * A000035 n).toNat : ℚ)

end

end A352544.P902941657168890782

/-! ## A352544.P13364137067425083007

`A026741(n)+(A108782(n)+n)*val(A007051(n), 2)`
-/

namespace A352544.P13364137067425083007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A108782 n + (n : ℤ)) * (SequenceMachineLib.valuation (A007051 n).toNat 2 : ℤ)

end

end A352544.P13364137067425083007

/-!
# A352546: Numbers having more even than odd digits when written in base 10.

The programs for A352546, there is no canonical definition to state claims against.
-/

/-! ## A352546.P4104946810718655353

`lt[A171797(n), A037465(A308003(n))]`
-/

namespace A352546.P4104946810718655353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A308003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352546.P4104946810718655353

/-! ## A352546.P4728768345326344989

`lt[0, A097601(A073053(n))]`
-/

namespace A352546.P4728768345326344989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352546.P4728768345326344989

/-! ## A352546.P2022269152113439716

`lt[A308005(n), A073053(n)]`
-/

namespace A352546.P2022269152113439716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352546.P2022269152113439716

/-! ## A352546.P18369066832536615620

`lt[A196564(n), A196563(n)]`
-/

namespace A352546.P18369066832536615620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352546.P18369066832536615620

/-! ## A352546.P4640245543614470776

`lt[A308005(n), A308003(n)]`
-/

namespace A352546.P4640245543614470776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352546.P4640245543614470776

/-! ## A352546.P9616004194679724944

`lt[A196564(n), A090822(A073053(n))]`
-/

namespace A352546.P9616004194679724944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352546.P9616004194679724944

/-! ## A352546.P5708284121748851807

`lt[A196564(n), A196564(A061601(n))]`
-/

namespace A352546.P5708284121748851807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352546.P5708284121748851807

/-! ## A352546.P8897273419027565475

`A028899(A056143(2*n))`
-/

namespace A352546.P8897273419027565475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A056143 (2 * n)).toNat

end

end A352546.P8897273419027565475

/-! ## A352546.P11153472234148709452

`A081594(A051022(2*n))`
-/

namespace A352546.P11153472234148709452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A051022 (2 * n)).toNat

end

end A352546.P11153472234148709452

/-! ## A352546.P3613976006941824565

`A102491(A118759(2*n+1))`
-/

namespace A352546.P3613976006941824565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102491 (A118759 (2 * n + 1)).toNat

end

end A352546.P3613976006941824565

/-!
# A352547: Numbers having more odd than even digits when written in base 10.

The programs for A352547, there is no canonical definition to state claims against.
-/

/-! ## A352547.P14726747059349000469

`lt[2*A073053(n), A171797(n)]`
-/

namespace A352547.P14726747059349000469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352547.P14726747059349000469

/-! ## A352547.P13108920290433310191

`lt[2*A308003(n), A171797(n)]`
-/

namespace A352547.P13108920290433310191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352547.P13108920290433310191

/-! ## A352547.P16874553294570813218

`lt[A004274(A073053(n)), A171797(n)]`
-/

namespace A352547.P16874553294570813218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A073053 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352547.P16874553294570813218

/-! ## A352547.P9056774336818117373

`lt[A007093(A308003(n)), A171797(n)]`
-/

namespace A352547.P9056774336818117373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A308003 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352547.P9056774336818117373

/-! ## A352547.P13155371177344970566

`lt[A196563(n), A196564(n)]`
-/

namespace A352547.P13155371177344970566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352547.P13155371177344970566

/-! ## A352547.P14867420092232201902

`lt[A308003(n), A308005(n)]`
-/

namespace A352547.P14867420092232201902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352547.P14867420092232201902

/-! ## A352547.P17806280357734973211

`lt[log2(A055642(n)), A196564(n)]`
-/

namespace A352547.P17806280357734973211
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A055642 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A352547.P17806280357734973211

/-! ## A352547.P2171990113576564233

`lt[A196564(A061601(n)), A196564(n)]`
-/

namespace A352547.P2171990113576564233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352547.P2171990113576564233

/-!
# A352549: Irregular table, read by rows: row n lists all numbers equal to n times the number of their divisors.

The programs for A352549, there is no canonical definition to state claims against.
-/

/-! ## A352549.P540830369639770316

`filter[A368523(n+1), A336040(#)]`
-/

namespace A352549.P540830369639770316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A352549.P540830369639770316

/-! ## A352549.P1800972676135090258

`A033950(A084489(n+1)%A187276(2*n+5))`
-/

namespace A352549.P1800972676135090258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (Int.tmod (A084489 (n + 1)) (A187276 (2 * n + 5))).toNat

end

end A352549.P1800972676135090258

/-!
# A352550: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 5.

The programs for A352550, there is no canonical definition to state claims against.
-/

/-! ## A352550.P1807363798967895594

`lcm(A014709(A075195(n+1)), A035187(n+1))`
-/

namespace A352550.P1807363798967895594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 (A075195 (n + 1)).toNat) (A035187 (n + 1))

end

end A352550.P1807363798967895594

/-! ## A352550.P12086921870277060761

`lcm(A014709(A331848(n)), A035187(n+1))`
-/

namespace A352550.P12086921870277060761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 (A331848 n).toNat) (A035187 (n + 1))

end

end A352550.P12086921870277060761

/-! ## A352550.P15539525269804382657

`A035187(n+1)*A163100(A053166(2*(n+2)))`
-/

namespace A352550.P15539525269804382657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1) * A163100 (A053166 (2 * (n + 2))).toNat

end

end A352550.P15539525269804382657

/-! ## A352550.P8104412044661135565

`A035187(n+1)*A107577(A000961(n+1))`
-/

namespace A352550.P8104412044661135565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 1) * A107577 (A000961 (n + 1)).toNat

end

end A352550.P8104412044661135565

/-!
# A352551: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 8.

The programs for A352551, there is no canonical definition to state claims against.
-/

/-! ## A352551.P12948483344098513219

`and(A093560(n), A140223(A276086(n)))`
-/

namespace A352551.P12948483344098513219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093560 n) (A140223 (A276086 n).toNat)

end

end A352551.P12948483344098513219

/-! ## A352551.P2952116920843555533

`A035185(n+1)*A212139(A103880(n))`
-/

namespace A352551.P2952116920843555533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1) * A212139 (A103880 n).toNat

end

end A352551.P2952116920843555533

/-! ## A352551.P18097351735957037155

`A035185(n+1)*A333381(A114800(n))`
-/

namespace A352551.P18097351735957037155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1) * A333381 (A114800 n).toNat

end

end A352551.P18097351735957037155

/-!
# A352552: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 12.

The programs for A352552, there is no canonical definition to state claims against.
-/

/-! ## A352552.P9979083604084102373

`∏{e}[n+1, #]*A035194(A187829(n+1))`
-/

namespace A352552.P9979083604084102373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A035194 (A187829 (n + 1)).toNat

end

end A352552.P9979083604084102373

/-! ## A352552.P12622130781676863258

`A030341(A000602(n+1))*A088742(3*n+4)`
-/

namespace A352552.P12622130781676863258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A000602 (n + 1)).toNat * A088742 (3 * n + 4)

end

end A352552.P12622130781676863258

/-! ## A352552.P6000458537489875899

`and(A248514(A018511(n+1)), A343068(n+1))`
-/

namespace A352552.P6000458537489875899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248514 (A018511 (n + 1)).toNat) (A343068 (n + 1))

end

end A352552.P6000458537489875899

/-! ## A352552.P8360092639335856649

`A094366(A113058(n+2))-A347609(A184997(n+1))`
-/

namespace A352552.P8360092639335856649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094366 (A113058 (n + 2)).toNat - A347609 (A184997 (n + 1)).toNat

end

end A352552.P8360092639335856649

/-!
# A352553: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 13.

The programs for A352553, there is no canonical definition to state claims against.
-/

/-! ## A352553.P5013685858802334407

`A384905(A314724(n))+A035195(n+1)`
-/

namespace A352553.P5013685858802334407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384905 (A314724 n).toNat + A035195 (n + 1)

end

end A352553.P5013685858802334407

/-! ## A352553.P5426469199251402190

`A035195(A054496(n+1))`
-/

namespace A352553.P5426469199251402190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A054496 (n + 1)).toNat

end

end A352553.P5426469199251402190

/-! ## A352553.P18131009354279838983

`A035195((n+1)*A035206(n)²)`
-/

namespace A352553.P18131009354279838983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 ((n + 1 : ℤ) * A035206 n ^ 2).toNat

end

end A352553.P18131009354279838983

/-! ## A352553.P3677542520189671697

`A035195((n+1)^A071178(n+1))`
-/

namespace A352553.P3677542520189671697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A071178 (n + 1) : ℤ))).toNat

end

end A352553.P3677542520189671697

/-! ## A352553.P2709910884791627914

`A035195(n+1)+A035187(A296796(n))`
-/

namespace A352553.P2709910884791627914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (n + 1) + A035187 (A296796 n).toNat

end

end A352553.P2709910884791627914

/-!
# A352554: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 17.

The programs for A352554, there is no canonical definition to state claims against.
-/

/-! ## A352554.P7367299380756025515

`A035199(A054496(n+1))`
-/

namespace A352554.P7367299380756025515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A054496 (n + 1)).toNat

end

end A352554.P7367299380756025515

/-! ## A352554.P1351388610184360061

`A035189(A297473(n+1))`
-/

namespace A352554.P1351388610184360061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (A297473 (n + 1)).toNat

end

end A352554.P1351388610184360061

/-! ## A352554.P1690121763067246455

`A035199((n+1)^A071178(n+1))`
-/

namespace A352554.P1690121763067246455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A071178 (n + 1) : ℤ))).toNat

end

end A352554.P1690121763067246455

/-! ## A352554.P1100372803928071765

`A035199(A381431(n+1)^A253641(n+1))`
-/

namespace A352554.P1100372803928071765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (SequenceMachineLib.roundAway ((A381431 (n + 1) : ℚ) ^ (A253641 (n + 1) : ℤ))).toNat

end

end A352554.P1100372803928071765

/-! ## A352554.P18115840350312196108

`A000975(A035199(n+1)%A095757(2*(n+2)))`
-/

namespace A352554.P18115840350312196108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (Int.tmod (A035199 (n + 1)) (A095757 (2 * (n + 2)))).toNat

end

end A352554.P18115840350312196108

/-!
# A352555: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 21.

The programs for A352555, there is no canonical definition to state claims against.
-/

/-! ## A352555.P4993122830037115516

`A035203(n+1)*A280747(A098054(n))`
-/

namespace A352555.P4993122830037115516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (n + 1) * A280747 (A098054 n).toNat

end

end A352555.P4993122830037115516

/-! ## A352555.P9811009820377386051

`A051903(A239929(2*(n+2))^A035203(n+1))`
-/

namespace A352555.P9811009820377386051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A239929 (2 * (n + 2)) : ℚ) ^ (A035203 (n + 1) : ℤ))).toNat

end

end A352555.P9811009820377386051

/-! ## A352555.P3317528355824617824

`A035203(n+1)*A365543(A046067(n+1))`
-/

namespace A352555.P3317528355824617824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (n + 1) * A365543 (A046067 (n + 1)).toNat

end

end A352555.P3317528355824617824

/-! ## A352555.P8922989994692085119

`A035203(n+1)*A378282(A005851(n+5))`
-/

namespace A352555.P8922989994692085119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (n + 1) * A378282 (A005851 (n + 5)).toNat

end

end A352555.P8922989994692085119

/-! ## A352555.P16137248653852879211

`A086017(A138271(n))+A035203(n+1)`
-/

namespace A352555.P16137248653852879211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (A138271 n).toNat + A035203 (n + 1)

end

end A352555.P16137248653852879211

/-!
# A352556: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 24.

The programs for A352556, there is no canonical definition to state claims against.
-/

/-! ## A352556.P13774285740723619692

`A145100(A193918(n))%5`
-/

namespace A352556.P13774285740723619692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145100 (A193918 n).toNat) 5

end

end A352556.P13774285740723619692

/-! ## A352556.P11257932152117465337

`A182535(n+1)%p?[A132476(n)]`
-/

namespace A352556.P11257932152117465337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182535 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A352556.P11257932152117465337

/-!
# A352558: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 29.

The programs for A352558, there is no canonical definition to state claims against.
-/

/-! ## A352558.P16991921903486057171

`A035211(n+1)+A035211(A279625(n))`
-/

namespace A352558.P16991921903486057171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035211 (n + 1) + A035211 (A279625 n).toNat

end

end A352558.P16991921903486057171

/-! ## A352558.P8660974436013359254

`A001221((3*or(1, n))^A035211(n+1))`
-/

namespace A352558.P8660974436013359254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((3 * Nat.lor 1 n : ℚ) ^ (A035211 (n + 1) : ℤ))).toNat

end

end A352558.P8660974436013359254

/-! ## A352558.P2418672981378240380

`A001221((3/or(1, n)^-1)^A035211(n+1))`
-/

namespace A352558.P2418672981378240380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((3 / (Nat.lor 1 n : ℚ) ^ (-1 : ℤ)) ^ (A035211 (n + 1) : ℤ))).toNat

end

end A352558.P2418672981378240380

/-! ## A352558.P10581194011976878911

`A001221((3*(log2(gcd(2, n))+n))^A035211(n+1))`
-/

namespace A352558.P10581194011976878911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((3 * (Real.logb 2 (Nat.gcd 2 n : ℝ) + (n : ℝ))) ^ (A035211 (n + 1) : ℤ))).toNat

end

end A352558.P10581194011976878911

/-! ## A352558.P8505233029711815064

`A014709(A109540(n))*A035211(n+1)`
-/

namespace A352558.P8505233029711815064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A109540 n).toNat * A035211 (n + 1)

end

end A352558.P8505233029711815064

/-!
# A352560: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 37.

The programs for A352560, there is no canonical definition to state claims against.
-/

/-! ## A352560.P7089173820952207186

`A352567(A257538(n+1))`
-/

namespace A352560.P7089173820952207186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352567 (A257538 (n + 1)).toNat

end

end A352560.P7089173820952207186

/-! ## A352560.P3640808333356567294

`A035219(A054496(n+1))`
-/

namespace A352560.P3640808333356567294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (A054496 (n + 1)).toNat

end

end A352560.P3640808333356567294

/-! ## A352560.P6238767806900859503

`A352556(A166664(n+1))`
-/

namespace A352560.P6238767806900859503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352556 (A166664 (n + 1)).toNat

end

end A352560.P6238767806900859503

/-! ## A352560.P12310904957017922126

`∑{d}[A054496(n+1), A011626(#)]`
-/

namespace A352560.P12310904957017922126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A011626 d

end

end A352560.P12310904957017922126

/-! ## A352560.P18079260336642588098

`A035219((n+1)^A051904(n+1))`
-/

namespace A352560.P18079260336642588098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A051904 (n + 1) : ℤ))).toNat

end

end A352560.P18079260336642588098

/-!
# A352562: a(n) = number of modules with n elements over the ring of integers in the imaginary quadratic field of discriminant -4.

The programs for A352562, there is no canonical definition to state claims against.
-/

/-! ## A352562.P17032572153220787120

`A002654(n+1)*A340513(A064194(n+1))`
-/

namespace A352562.P17032572153220787120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A340513 (A064194 (n + 1)).toNat

end

end A352562.P17032572153220787120

/-! ## A352562.P12566445621204083686

`A001222(A034856(n+4)^A002654(n+1))`
-/

namespace A352562.P12566445621204083686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A034856 (n + 4) : ℚ) ^ (A002654 (n + 1) : ℤ))).toNat

end

end A352562.P12566445621204083686

/-! ## A352562.P10167224894104743785

`A002654(n+1)*A094267(A026055(2*(n+3)))`
-/

namespace A352562.P10167224894104743785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A094267 (A026055 (2 * (n + 3))).toNat

end

end A352562.P10167224894104743785

/-! ## A352562.P4982289871869187392

`A002654(n+1)*A133622(A039617(n+2))`
-/

namespace A352562.P4982289871869187392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A133622 (A039617 (n + 2)).toNat

end

end A352562.P4982289871869187392

/-! ## A352562.P14181479648313554954

`and(∑{d}[n+1, #], A128428(A222038(n+1)))`
-/

namespace A352562.P14181479648313554954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A128428 (A222038 (n + 1)).toNat)

end

end A352562.P14181479648313554954

/-!
# A352563: a(n) = number of modules with n elements over the ring of integers in the imaginary quadratic field of discriminant -7.

The programs for A352563, there is no canonical definition to state claims against.
-/

/-! ## A352563.P4699439133174648407

`A236559(A035182(n+1)%A094348(2*n+5))`
-/

namespace A352563.P4699439133174648407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 (Int.tmod (A035182 (n + 1)) (A094348 (2 * n + 5))).toNat

end

end A352563.P4699439133174648407

/-! ## A352563.P12592214285978718899

`∑{d}[∏{p}[n+1, #^val(n+1, #)²], A175629(#)]`
-/

namespace A352563.P12592214285978718899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175629 d

end

end A352563.P12592214285978718899

/-! ## A352563.P11304406439861135915

`A035182(A054496(n+1))`
-/

namespace A352563.P11304406439861135915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (A054496 (n + 1)).toNat

end

end A352563.P11304406439861135915

/-! ## A352563.P1944151429868388975

`A339890(9^A035182(n+1))`
-/

namespace A352563.P1944151429868388975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A035182 (n + 1) : ℤ))).toNat

end

end A352563.P1944151429868388975

/-! ## A352563.P4469985026955402343

`∑{d}[A054496(n+1), A175629(#)]`
-/

namespace A352563.P4469985026955402343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A175629 d

end

end A352563.P4469985026955402343

/-!
# A352564: a(n) = number of modules with n elements over the ring of integers in the imaginary quadratic field of discriminant -8.

The programs for A352564, there is no canonical definition to state claims against.
-/

/-! ## A352564.P5179727844740176403

`(floor(n/(n%2+2))+1)%A001222(A250764(n+1))`
-/

namespace A352564.P5179727844740176403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1) (A001222 (A250764 (n + 1)).toNat)

end

end A352564.P5179727844740176403

/-! ## A352564.P17725309250533450447

`and(A003188(A274640(n)), A096804(n))`
-/

namespace A352564.P17725309250533450447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 (A274640 n).toNat) (A096804 n)

end

end A352564.P17725309250533450447

/-! ## A352564.P974377416111731043

`A211316(n+2)%A051522(A026670(n))`
-/

namespace A352564.P974377416111731043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211316 (n + 2)) (A051522 (A026670 n).toNat)

end

end A352564.P974377416111731043

/-!
# A352565: a(n) = number of modules with n elements over the ring of integers in the imaginary quadratic field of discriminant -11.

The programs for A352565, there is no canonical definition to state claims against.
-/

/-! ## A352565.P13144591796990474760

`A035179(A054496(n+1))`
-/

namespace A352565.P13144591796990474760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (A054496 (n + 1)).toNat

end

end A352565.P13144591796990474760

/-! ## A352565.P13096534984902700497

`A035179((n+1)^A071178(n+1))`
-/

namespace A352565.P13096534984902700497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A071178 (n + 1) : ℤ))).toNat

end

end A352565.P13096534984902700497

/-! ## A352565.P12677258597930164775

`A057918(A146638(n+1))+A035179(n+1)`
-/

namespace A352565.P12677258597930164775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A146638 (n + 1)).toNat + A035179 (n + 1)

end

end A352565.P12677258597930164775

/-! ## A352565.P12430190836275300793

`A083910(A371001(n+1))+A035179(n+1)`
-/

namespace A352565.P12430190836275300793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (A371001 (n + 1)).toNat + A035179 (n + 1)

end

end A352565.P12430190836275300793

/-! ## A352565.P17547613189796695969

`A035179(A187829(n+1)^A051904(n+1))`
-/

namespace A352565.P17547613189796695969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (SequenceMachineLib.roundAway ((A187829 (n + 1) : ℚ) ^ (A051904 (n + 1) : ℤ))).toNat

end

end A352565.P17547613189796695969

/-!
# A352567: a(n) = number of modules with n elements over the ring of integers in the imaginary quadratic field of discriminant -19.

The programs for A352567, there is no canonical definition to state claims against.
-/

/-! ## A352567.P5637975573036780931

`A035171(A054496(n+1)%A352543(n+1))`
-/

namespace A352567.P5637975573036780931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (Int.tmod (A054496 (n + 1)) (A352543 (n + 1))).toNat

end

end A352567.P5637975573036780931

/-! ## A352567.P6982761269524703718

`A035171(n+1)+A035171(A279625(n))`
-/

namespace A352567.P6982761269524703718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (n + 1) + A035171 (A279625 n).toNat

end

end A352567.P6982761269524703718

/-! ## A352567.P196969409343746671

`lcm(A352558(n+1)!!, A035171(n+1))`
-/

namespace A352567.P196969409343746671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (Nat.factorial (A352558 (n + 1)).toNat) : ℤ) (A035171 (n + 1))

end

end A352567.P196969409343746671

/-! ## A352567.P2044422103379294771

`∑{d}[n+1, #^9]%19*A051064(A351308(n+1))`
-/

namespace A352567.P2044422103379294771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d ^ 9) % 19 : ℕ) : ℤ) * A051064 (A351308 (n + 1)).toNat

end

end A352567.P2044422103379294771

/-! ## A352567.P2024118453817693354

`lcm(A006345(A254729(n)), A035171(n+1))`
-/

namespace A352567.P2024118453817693354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006345 (A254729 n).toNat) (A035171 (n + 1))

end

end A352567.P2024118453817693354

/-!
# A352569: Parity of A109812.

The programs for A352569, there is no canonical definition to state claims against.
-/

/-! ## A352569.P317662249695865338

`∑[A353240(n)]%2`
-/

namespace A352569.P317662249695865338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A352569.P317662249695865338

/-! ## A352569.P14192955966963744359

`A109812(n+1)%2`
-/

namespace A352569.P14192955966963744359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109812 (n + 1)) 2

end

end A352569.P14192955966963744359

/-! ## A352569.P8498913625466181117

`A352575(n+1)%2`
-/

namespace A352569.P8498913625466181117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352575 (n + 1)) 2

end

end A352569.P8498913625466181117

/-! ## A352569.P8023934964892181051

`A352889(n+1)%2`
-/

namespace A352569.P8023934964892181051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352889 (n + 1)) 2

end

end A352569.P8023934964892181051

/-! ## A352569.P15929048590871000552

`val(A353954(n+1), 2)`
-/

namespace A352569.P15929048590871000552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A353954 (n + 1)).toNat 2

end

end A352569.P15929048590871000552

/-! ## A352569.P4962165254560543566

`floor(acot(A351964(n+1)))`
-/

namespace A352569.P4962165254560543566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A351964 (n + 1) : ℝ)⌋

end

end A352569.P4962165254560543566

/-! ## A352569.P14866466155956820188

`and(1, A109812(C(n+1, n)))`
-/

namespace A352569.P14866466155956820188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A109812 (Nat.choose (n + 1) n))

end

end A352569.P14866466155956820188

/-! ## A352569.P5134042087739193229

`(A352794(n+1)+n+1)%2`
-/

namespace A352569.P5134042087739193229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352794 (n + 1) + (n + 1 : ℤ)) 2

end

end A352569.P5134042087739193229

/-! ## A352569.P1662432781791866686

`and(1, A109812(2*n+1-n))`
-/

namespace A352569.P1662432781791866686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A109812 (2 * n + 1 - n))

end

end A352569.P1662432781791866686

/-! ## A352569.P16626658676209149998

`(A109812(ϕ²-(ϕ-n))%2)²`
-/

namespace A352569.P16626658676209149998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109812 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) 2 ^ 2

end

end A352569.P16626658676209149998

/-! ## A352569.P13731646931692426960

`A000007(A351964(n+1))`
-/

namespace A352569.P13731646931692426960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A351964 (n + 1)).toNat

end

end A352569.P13731646931692426960

/-! ## A352569.P17361408557334501845

`A000035(A352889(n+1))`
-/

namespace A352569.P17361408557334501845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A352889 (n + 1)).toNat

end

end A352569.P17361408557334501845

/-! ## A352569.P8675450361538033622

`and(A109812(n+1), A158388(n))`
-/

namespace A352569.P8675450361538033622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109812 (n + 1)) (A158388 n)

end

end A352569.P8675450361538033622

/-! ## A352569.P4234072505688930387

`and(A109812(n+1), A179184(n))`
-/

namespace A352569.P4234072505688930387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109812 (n + 1)) (A179184 n)

end

end A352569.P4234072505688930387

/-! ## A352569.P1398575202982642911

`and(A008349(n), A352889(n+1))`
-/

namespace A352569.P1398575202982642911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A352889 (n + 1))

end

end A352569.P1398575202982642911

/-! ## A352569.P5421825313356025807

`and(A008362(n), A352889(n+1))`
-/

namespace A352569.P5421825313356025807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A352889 (n + 1))

end

end A352569.P5421825313356025807

/-! ## A352569.P14173851101430904070

`and(A008417(n), A352889(n+1))`
-/

namespace A352569.P14173851101430904070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A352889 (n + 1))

end

end A352569.P14173851101430904070

/-! ## A352569.P11334760020937501112

`and(A016760(n), A352889(n+1))`
-/

namespace A352569.P11334760020937501112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A352889 (n + 1))

end

end A352569.P11334760020937501112

/-! ## A352569.P4578137037931184977

`and(A016820(n), A352889(n+1))`
-/

namespace A352569.P4578137037931184977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A352889 (n + 1))

end

end A352569.P4578137037931184977

/-! ## A352569.P6188308148065008029

`and(A282997(n+1), A352889(n+1))`
-/

namespace A352569.P6188308148065008029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282997 (n + 1)) (A352889 (n + 1))

end

end A352569.P6188308148065008029

/-!
# A352570: A slightly compressed version of A352569: replace each string 1 followed by k 0's in A352569 by the number k.

The programs for A352570, there is no canonical definition to state claims against.
-/

/-! ## A352570.P7348083288145712529

`Δ[eq[0, A351964(n+1)]]-1`
-/

namespace A352570.P7348083288145712529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351964 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A352570.P7348083288145712529

/-! ## A352570.P5821047099408667860

`A000045(Δ[eq[0, A351964(n+1)]])`
-/

namespace A352570.P5821047099408667860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351964 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A352570.P5821047099408667860

/-! ## A352570.P8252513792002482012

`23%Δ[eq[A000007(n+1), A351964(n+1)]]`
-/

namespace A352570.P8252513792002482012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351964 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 23 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A352570.P8252513792002482012

/-!
# A352572: Index of prime(n) in A338833.

The programs for A352572, there is no canonical definition to state claims against.
-/

/-! ## A352572.P8720415830766459058

`A352571(p?[2*n+1])`
-/

namespace A352572.P8720415830766459058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A352572.P8720415830766459058

/-! ## A352572.P11844986918024894160

`A352571(A065091(n+1))`
-/

namespace A352572.P11844986918024894160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (A065091 (n + 1)).toNat

end

end A352572.P11844986918024894160

/-! ## A352572.P9654524932224409451

`A352571(A000040(n+2))`
-/

namespace A352572.P9654524932224409451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (A000040 (n + 2)).toNat

end

end A352572.P9654524932224409451

/-! ## A352572.P8966419854931432533

`A352571(A006005(n+2))`
-/

namespace A352572.P8966419854931432533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (A006005 (n + 2)).toNat

end

end A352572.P8966419854931432533

/-! ## A352572.P13774828407237979447

`A352571(record[A006530(n+3)])`
-/

namespace A352572.P13774828407237979447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352572.P13774828407237979447

/-! ## A352572.P12514974474089761539

`A352571(record[A014963(n+3)])`
-/

namespace A352572.P12514974474089761539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352572.P12514974474089761539

/-! ## A352572.P6304740367910180779

`A352571(record[A020639(n+3)])`
-/

namespace A352572.P6304740367910180779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352572.P6304740367910180779

/-! ## A352572.P16022153780928117084

`A352571(A160656(n+2))`
-/

namespace A352572.P16022153780928117084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (A160656 (n + 2)).toNat

end

end A352572.P16022153780928117084

/-!
# A352573: A338833(n) mod 2.

The programs for A352573, there is no canonical definition to state claims against.
-/

/-! ## A352573.P10694170902758348624

`A338833(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352573.P10694170902758348624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338833 (n + 1)) 2

end

end A352573.P10694170902758348624

/-! ## A352573.P12485812046462704462

`and(1, A338833(Δ[n²]-n))`
-/

namespace A352573.P12485812046462704462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338833 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A352573.P12485812046462704462

/-! ## A352573.P579759379377844496

`char[A352571(2*n+1)-1]`
-/

namespace A352573.P579759379377844496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352571 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A352573.P579759379377844496

/-! ## A352573.P13758843402280610246

`A000035(A338833(n+1))`
-/

namespace A352573.P13758843402280610246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A338833 (n + 1)).toNat

end

end A352573.P13758843402280610246

/-! ## A352573.P12907815081418818607

`A059841(A338833(n+1)+1)`
-/

namespace A352573.P12907815081418818607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A338833 (n + 1) + 1).toNat

end

end A352573.P12907815081418818607

/-! ## A352573.P13619184991066345112

`A000007(val(A338833(n+1), 2))`
-/

namespace A352573.P13619184991066345112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A338833 (n + 1)).toNat 2)

end

end A352573.P13619184991066345112

/-! ## A352573.P3827840225044497900

`A000045(and(1, -A338833(n+1)))`
-/

namespace A352573.P3827840225044497900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (-A338833 (n + 1))).toNat

end

end A352573.P3827840225044497900

/-! ## A352573.P5661464166535660023

`A152822(2*(A338833(n+1)+1))`
-/

namespace A352573.P5661464166535660023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (2 * (A338833 (n + 1) + 1)).toNat

end

end A352573.P5661464166535660023

/-! ## A352573.P13409999682015372618

`A020639(3*A338833(n+1))-2`
-/

namespace A352573.P13409999682015372618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A338833 (n + 1)).toNat - 2

end

end A352573.P13409999682015372618

/-! ## A352573.P16626320964492840304

`and(A338833(n+1), A359204(n+1))`
-/

namespace A352573.P16626320964492840304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A338833 (n + 1)) (A359204 (n + 1))

end

end A352573.P16626320964492840304

/-! ## A352573.P9427688304755930207

`and(A338833(n+1), A359206(n+1))`
-/

namespace A352573.P9427688304755930207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A338833 (n + 1)) (A359206 (n + 1))

end

end A352573.P9427688304755930207

/-! ## A352573.P13104682048698861598

`and(A338833(n+1), A365475(n+1))`
-/

namespace A352573.P13104682048698861598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A338833 (n + 1)) (A365475 (n + 1))

end

end A352573.P13104682048698861598

/-! ## A352573.P611056167182612838

`and(1, A020737(n)*A338833(n+1))`
-/

namespace A352573.P611056167182612838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020737 n * A338833 (n + 1))

end

end A352573.P611056167182612838

/-! ## A352573.P17089146267785335621

`and(1, A048578(n)*A338833(n+1))`
-/

namespace A352573.P17089146267785335621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048578 n * A338833 (n + 1))

end

end A352573.P17089146267785335621

/-! ## A352573.P13520973668108815851

`and(1, A066827(n+1)*A338833(n+1))`
-/

namespace A352573.P13520973668108815851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A066827 (n + 1) * A338833 (n + 1))

end

end A352573.P13520973668108815851

/-! ## A352573.P11412131800000060907

`and(A014963(12*(n+1)), A338833(n+1))²`
-/

namespace A352573.P11412131800000060907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (12 * (n + 1))) (A338833 (n + 1)) ^ 2

end

end A352573.P11412131800000060907

/-! ## A352573.P4487250539751645711

`∏{p}[A338833(n+1), A000045((1-C(2, #))²)]`
-/

namespace A352573.P4487250539751645711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 ((1 - (Nat.choose 2 p : ℤ)) ^ 2).toNat

end

end A352573.P4487250539751645711

/-! ## A352573.P16931165362842906078

`and(A338833(n+1)², A000032(gcd(n, n+2)))`
-/

namespace A352573.P16931165362842906078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A338833 (n + 1) ^ 2) (A000032 (Nat.gcd n (n + 2)))

end

end A352573.P16931165362842906078

/-! ## A352573.P14414307460578156970

`log2(A014963(6*(n+1)))^val(A338833(n+1), 2)`
-/

namespace A352573.P14414307460578156970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014963 (6 * (n + 1)) : ℝ) ^ SequenceMachineLib.valuation (A338833 (n + 1)).toNat 2

end

end A352573.P14414307460578156970

/-! ## A352573.P7462933814317532224

`A152822(A338833(n+1)+A338833(n+1)+2)`
-/

namespace A352573.P7462933814317532224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A338833 (n + 1) + (A338833 (n + 1) + 2)).toNat

end

end A352573.P7462933814317532224

/-!
# A352574: A338833(n) written in binary.

The programs for A352574, there is no canonical definition to state claims against.
-/

/-! ## A352574.P3038309911228137174

`A007088(A338833(n+1))`
-/

namespace A352574.P3038309911228137174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A338833 (n + 1)).toNat

end

end A352574.P3038309911228137174

/-! ## A352574.P177315821935196499

`A185544(2*A338833(n+1))`
-/

namespace A352574.P177315821935196499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A338833 (n + 1)).toNat

end

end A352574.P177315821935196499

/-!
# A352575: A109812(n) in binary.

The programs for A352575, there is no canonical definition to state claims against.
-/

/-! ## A352575.P1822899205400909593

`A007088(A109812(n+1))`
-/

namespace A352575.P1822899205400909593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A109812 (n + 1)).toNat

end

end A352575.P1822899205400909593

/-! ## A352575.P7614312047413129496

`A007088(A352794(n+1)+1+n)`
-/

namespace A352575.P7614312047413129496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A352794 (n + 1) + 1 + (n : ℤ)).toNat

end

end A352575.P7614312047413129496

/-! ## A352575.P15630859456494001096

`A007088(A109812(ϕ²-(ϕ-n))%A027689(n))`
-/

namespace A352575.P15630859456494001096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A109812 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A027689 n)).toNat

end

end A352575.P15630859456494001096

/-! ## A352575.P3152181905562800990

`A007088(A305371(2*(n+1))/2)`
-/

namespace A352575.P3152181905562800990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A305371 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A352575.P3152181905562800990

/-! ## A352575.P15874365312447083271

`A185544(2*A109812(n+1))`
-/

namespace A352575.P15874365312447083271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A109812 (n + 1)).toNat

end

end A352575.P15874365312447083271

/-! ## A352575.P2481626691657645247

`A185544(A305371(2*(n+1)))`
-/

namespace A352575.P2481626691657645247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A305371 (2 * (n + 1))).toNat

end

end A352575.P2481626691657645247

/-!
# A352576: a(n) = length(A352575(n)).

The programs for A352576, there is no canonical definition to state claims against.
-/

/-! ## A352576.P9250778898003250598

`floor(log2(A109812(n+1)))+1`
-/

namespace A352576.P9250778898003250598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A109812 (n + 1)).toNat + 1

end

end A352576.P9250778898003250598

/-! ## A352576.P7876548273908093124

`∑{digits}[A352575(n+1), A034868(#)]`
-/

namespace A352576.P7876548273908093124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A034868 x).sum

end

end A352576.P7876548273908093124

/-! ## A352576.P151890460849590629

`∑{digits}[A352575(n+1), A074909(#)]`
-/

namespace A352576.P151890460849590629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A074909 x).sum

end

end A352576.P151890460849590629

/-! ## A352576.P13912917817565553696

`∑{digits}[A352575(n+1), A000045(#+1)]`
-/

namespace A352576.P13912917817565553696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 (x + 1)).sum

end

end A352576.P13912917817565553696

/-! ## A352576.P16373506471211313751

`∑{digits}[A352575(n+1), A000079(#)-#]`
-/

namespace A352576.P16373506471211313751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x - (x : ℤ)).sum

end

end A352576.P16373506471211313751

/-! ## A352576.P6850818024589591839

`∑{digits}[A007088(A109812(n+1)), A000108(#)]`
-/

namespace A352576.P6850818024589591839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A109812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000108 x).sum

end

end A352576.P6850818024589591839

/-! ## A352576.P17668723371282575867

`floor(log2(A305369(2*(n+1))))`
-/

namespace A352576.P17668723371282575867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A305369 (2 * (n + 1))).toNat

end

end A352576.P17668723371282575867

/-! ## A352576.P1727707052572034260

`A351964(n+1)+A070939(A351965(n+1))`
-/

namespace A352576.P1727707052572034260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351964 (n + 1) + A070939 (A351965 (n + 1)).toNat

end

end A352576.P1727707052572034260

/-! ## A352576.P2751693937223591796

`A070939(A109812(n+1))`
-/

namespace A352576.P2751693937223591796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A109812 (n + 1)).toNat

end

end A352576.P2751693937223591796

/-! ## A352576.P14177871926870824287

`A029837(A109812(n+1)+1)`
-/

namespace A352576.P14177871926870824287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A109812 (n + 1) + 1).toNat

end

end A352576.P14177871926870824287

/-! ## A352576.P15177817114425841057

`A061395(A353954(n+1))`
-/

namespace A352576.P15177817114425841057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A353954 (n + 1)).toNat

end

end A352576.P15177817114425841057

/-!
# A352577: a(0)=2; thereafter a(n) = XOR(b(n), b(n+2)), where b is A109812.

The programs for A352577, there is no canonical definition to state claims against.
-/

/-! ## A352577.P2578582533219368745

`xor(A353240(n+1), A353240(n))`
-/

namespace A352577.P2578582533219368745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A353240 (n + 1)) (A353240 n)

end

end A352577.P2578582533219368745

/-!
# A352578: a(n) = binary weight of A305369(n).

The programs for A352578, there is no canonical definition to state claims against.
-/

/-! ## A352578.P976157730241611397

`A000120(A305369(n+1))`
-/

namespace A352578.P976157730241611397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A305369 (n + 1)).toNat

end

end A352578.P976157730241611397

/-! ## A352578.P12750187319058983475

`A048881(2*A305369(n+1))`
-/

namespace A352578.P12750187319058983475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A305369 (n + 1)).toNat

end

end A352578.P12750187319058983475

/-! ## A352578.P4412796623712926569

`A048881(lcm(2, A305369(n+1)))`
-/

namespace A352578.P4412796623712926569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.lcm 2 (A305369 (n + 1)))

end

end A352578.P4412796623712926569

/-! ## A352578.P239267523342160151

`A048881(A305369(n+1)-1)+1`
-/

namespace A352578.P239267523342160151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A305369 (n + 1) - 1).toNat + 1

end

end A352578.P239267523342160151

/-! ## A352578.P2184580298496584693

`A048881(A305369(n+1)+A305369(n+1))`
-/

namespace A352578.P2184580298496584693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A305369 (n + 1) + A305369 (n + 1)).toNat

end

end A352578.P2184580298496584693

/-!
# A352579: Irregular triangle T(n,k) (n >= 1, 0 <= k <= 2^n-2) read by rows: row n = 1 is [0]; thereafter, T(n,k) = 2*T(n-1,k)+(k mod 2) and T(n,k+2^(n-1)-1) = 2*T(n-1,k)+(k+1 mod 2) for k = 0..2^(n-1)-2; T(n,2^n-2) = 2^n-2.

The programs for A352579, there is no canonical definition to state claims against.
-/

/-! ## A352579.P14119196860818503681

`A014586(A004771(n^A070914(n)))`
-/

namespace A352579.P14119196860818503681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 (A004771 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A070914 n : ℤ))).toNat).toNat

end

end A352579.P14119196860818503681

/-!
# A352581: Numbers k such that A001414(k+1) = A001414(k)+1 and A001414(k)^2+3*A001414(k)+1 is prime.

The programs for A352581, there is no canonical definition to state claims against.
-/

/-! ## A352581.P2228938763172335606

`∩[A228126(n+1), A352580(n+1)]`
-/

namespace A352581.P2228938763172335606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352581.P2228938763172335606

/-! ## A352581.P384424537927122741

`A228126(eq[A266342(3*n+4), A326458(n+4)])`
-/

namespace A352581.P384424537927122741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266342 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228126 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352581.P384424537927122741

/-! ## A352581.P6348431116457665375

`A228126(lt[A228129(3*n+5), A090883(3*n+4)])`
-/

namespace A352581.P6348431116457665375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228129 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090883 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228126 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352581.P6348431116457665375

/-!
# A352584: Numbers k whose decimal representation contains all distinct prime factors of k as substrings.

The programs for A352584, there is no canonical definition to state claims against.
-/

/-! ## A352584.P2856523408746057589

`∩[A115919(n+1), A384735(n+1)]`
-/

namespace A352584.P2856523408746057589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352584.P2856523408746057589

/-! ## A352584.P15964278539719907864

`∩[A171217(n+1), A384735(n+1)]`
-/

namespace A352584.P15964278539719907864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352584.P15964278539719907864

/-!
# A352590: Number of tilings of a 4 X n rectangle using 2 X 2 and 1 X 1 tiles and dominoes.

The programs for A352590, there is no canonical definition to state claims against.
-/

/-! ## A352590.P1233367130854146211

`record[A352589(A045918(n))]`
-/

namespace A352590.P1233367130854146211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352589 (A045918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352590.P1233367130854146211

/-! ## A352590.P11093763716593728925

`record[A352589(A047842(n))]`
-/

namespace A352590.P11093763716593728925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352589 (A047842 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352590.P11093763716593728925

/-!
# A352593: Denominator values occurring in formulas for the n-th integration of the Lambert W function.

The programs for A352593, there is no canonical definition to state claims against.
-/

/-! ## A352593.P15675670152220144311

`(n+1)*lcm((n+1)^(n+1), a(n-1))` with `a(0)=1`
-/

namespace A352593.P15675670152220144311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * Nat.lcm ((n + 1) ^ (n + 1)) (a (n - 1))

end

end A352593.P15675670152220144311

/-!
# A352594: Expansion of square root of the golden ratio phi in base phi.

The programs for A352594, there is no canonical definition to state claims against.
-/

/-! ## A352594.P5271968985775805546

`A210874(n+1)%A177704(A001608(n))`
-/

namespace A352594.P5271968985775805546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210874 (n + 1)) (A177704 (A001608 n).toNat)

end

end A352594.P5271968985775805546

/-! ## A352594.P767763605194641113

`A210880(n+1)%A177704(A001608(n))`
-/

namespace A352594.P767763605194641113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210880 (n + 1)) (A177704 (A001608 n).toNat)

end

end A352594.P767763605194641113

/-! ## A352594.P292774125030177554

`A360120(A360114(2*n+5)+A360077(n+1))`
-/

namespace A352594.P292774125030177554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360120 (A360114 (2 * n + 5) + A360077 (n + 1)).toNat

end

end A352594.P292774125030177554

/-! ## A352594.P12437331015101516634

`A000007(and(A057781(n+1), A118374(2*(n+1))))`
-/

namespace A352594.P12437331015101516634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A057781 (n + 1)) (A118374 (2 * (n + 1)))).toNat

end

end A352594.P12437331015101516634

/-! ## A352594.P13983653808903498319

`C(A097848(n+1), A001221(A185616(n+1)))`
-/

namespace A352594.P13983653808903498319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097848 (n + 1)).toNat (A001221 (A185616 (n + 1)).toNat).toNat

end

end A352594.P13983653808903498319

/-!
# A352597: a(n) is the smallest k > 1 such that k^n + 1 has all prime divisors p == 1 (mod n).

The programs for A352597, there is no canonical definition to state claims against.
-/

/-! ## A352597.P16233320705614649171

`A000265(n+1)*A327979(A059826(n+1)+1)`
-/

namespace A352597.P16233320705614649171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A327979 (A059826 (n + 1) + 1).toNat

end

end A352597.P16233320705614649171

/-! ## A352597.P12211818975080022647

`(n+1)/2^val(n+1, 2)*A229904(A174111(2*(n+2)))`
-/

namespace A352597.P12211818975080022647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A229904 (A174111 (2 * (n + 2))).toNat : ℚ)

end

end A352597.P12211818975080022647

/-! ## A352597.P16393387096474014875

`A000265(n+1)*A297770(A274449(n+3))`
-/

namespace A352597.P16393387096474014875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A297770 (A274449 (n + 3)).toNat

end

end A352597.P16393387096474014875

/-! ## A352597.P14043901247752253654

`A000265(n+1)*A320111(A237992(n+1))`
-/

namespace A352597.P14043901247752253654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A320111 (A237992 (n + 1)).toNat

end

end A352597.P14043901247752253654

/-! ## A352597.P3282901510023769207

`lcm(A232625(n+1), A320111(A237992(n+1)))`
-/

namespace A352597.P3282901510023769207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A232625 (n + 1)) (A320111 (A237992 (n + 1)).toNat)

end

end A352597.P3282901510023769207

/-!
# A352598: a(n) is the product of the squares of the nonzero digits of n.

The programs for A352598, the canonical program `A352598.P1905536074837033519` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352598 has offset 1).

The definition of A352598 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352598.P1905536074837033519

`A051801(n+1)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A352598

/-- `A051801(n+1)²` -/
def P1905536074837033519.Spec : Prop :=
  ∀ n, P1905536074837033519.a n = A352598 (n + 1)

theorem P1905536074837033519.correct : P1905536074837033519.Spec := by
  intro n
  simp only [A352598, Nat.add_sub_cancel]

end A352598

/-! ## A352598.P7775635557376793618

`∏{digits}[n+1, gcd(#², #^#)]`
-/

namespace A352598.P7775635557376793618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd (x ^ 2) (x ^ x)).prod

end

end A352598.P7775635557376793618

namespace A352598

/-- `∏{digits}[n+1, gcd(#², #^#)]` -/
def P7775635557376793618.Spec : Prop :=
  ∀ n, (P7775635557376793618.a n : ℤ) = A352598 (n + 1)

end A352598

/-! ## A352598.P17014540537081998552

`∏{digits}[n+1, gcd(#, #!²)²]`
-/

namespace A352598.P17014540537081998552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2) ^ 2).prod

end

end A352598.P17014540537081998552

namespace A352598

/-- `∏{digits}[n+1, gcd(#, #!²)²]` -/
def P17014540537081998552.Spec : Prop :=
  ∀ n, (P17014540537081998552.a n : ℤ) = A352598 (n + 1)

end A352598

/-! ## A352598.P1088427678221144145

`∏{digits}[n+1, floor(acot(#)+#)]²`
-/

namespace A352598.P1088427678221144145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ) + (x : ℝ)⌋).prod ^ 2

end

end A352598.P1088427678221144145

namespace A352598

/-- `∏{digits}[n+1, floor(acot(#)+#)]²` -/
def P1088427678221144145.Spec : Prop :=
  ∀ n, P1088427678221144145.a n = A352598 (n + 1)

end A352598

/-! ## A352598.P18109107963893494623

`∏{digits}[n+1, round(sqrt(#²+1))²]`
-/

namespace A352598.P18109107963893494623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.sqrt (x ^ 2 + 1 : ℝ)) ^ 2).prod

end

end A352598.P18109107963893494623

namespace A352598

/-- `∏{digits}[n+1, round(sqrt(#²+1))²]` -/
def P18109107963893494623.Spec : Prop :=
  ∀ n, P18109107963893494623.a n = A352598 (n + 1)

end A352598

/-! ## A352598.P17186817961095366526

`∏[ratio[A051801(n)]²]`
-/

namespace A352598.P17186817961095366526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352598.P17186817961095366526

namespace A352598

/-- `∏[ratio[A051801(n)]²]` -/
def P17186817961095366526.Spec : Prop :=
  ∀ n, P17186817961095366526.a n = (A352598 (n + 1) : ℚ)

end A352598

/-! ## A352598.P17586093399036955974

`root(A352172(n+1), 3)²`
-/

namespace A352598.P17586093399036955974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A352172 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2

end

end A352598.P17586093399036955974

namespace A352598

/-- `root(A352172(n+1), 3)²` -/
def P17586093399036955974.Spec : Prop :=
  ∀ n, P17586093399036955974.a n = (A352598 (n + 1) : ℝ)

end A352598

/-! ## A352598.P10106148944960828537

`(n+1-A063114(n+1))²`
-/

namespace A352598.P10106148944960828537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A063114 (n + 1)) ^ 2

end

end A352598.P10106148944960828537

namespace A352598

/-- `(n+1-A063114(n+1))²` -/
def P10106148944960828537.Spec : Prop :=
  ∀ n, P10106148944960828537.a n = A352598 (n + 1)

theorem P10106148944960828537.correct : P10106148944960828537.Spec := by
  intro n
  simp only [A352598, Nat.add_sub_cancel, A352598.P10106148944960828537.a, A352598.P1905536074837033519.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, A063114, A063114.P7069837411164582979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352598

/-! ## A352598.P3660978884992666272

`(n+1-A063543(n+1))²`
-/

namespace A352598.P3660978884992666272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A063543 (n + 1)) ^ 2

end

end A352598.P3660978884992666272

namespace A352598

/-- `(n+1-A063543(n+1))²` -/
def P3660978884992666272.Spec : Prop :=
  ∀ n, P3660978884992666272.a n = A352598 (n + 1)

theorem P3660978884992666272.correct : P3660978884992666272.Spec := by
  intro n
  simp only [A352598, Nat.add_sub_cancel, A352598.P3660978884992666272.a, A352598.P1905536074837033519.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, A063543, A063543.P3901565496532426814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352598

/-! ## A352598.P10267781707099304396

`A007954(A004185(n+1))²`
-/

namespace A352598.P10267781707099304396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A004185 (n + 1)).toNat ^ 2

end

end A352598.P10267781707099304396

namespace A352598

/-- `A007954(A004185(n+1))²` -/
def P10267781707099304396.Spec : Prop :=
  ∀ n, P10267781707099304396.a n = A352598 (n + 1)

end A352598

/-! ## A352598.P6090741249835808692

`A007954(A004719(n+1))²`
-/

namespace A352598.P6090741249835808692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A004719 (n + 1)).toNat ^ 2

end

end A352598.P6090741249835808692

namespace A352598

/-- `A007954(A004719(n+1))²` -/
def P6090741249835808692.Spec : Prop :=
  ∀ n, P6090741249835808692.a n = A352598 (n + 1)

end A352598

/-! ## A352598.P16309032177887942782

`A089898(A235049(n+1))²`
-/

namespace A352598.P16309032177887942782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A235049 (n + 1)).toNat ^ 2

end

end A352598.P16309032177887942782

namespace A352598

/-- `A089898(A235049(n+1))²` -/
def P16309032177887942782.Spec : Prop :=
  ∀ n, P16309032177887942782.a n = A352598 (n + 1)

end A352598

/-! ## A352598.P11044049486036340075

`A352172(n+1)/A051801(n+1)`
-/

namespace A352598.P11044049486036340075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352172 (n + 1) : ℚ) / (A051801 (n + 1) : ℚ)

end

end A352598.P11044049486036340075

namespace A352598

/-- `A352172(n+1)/A051801(n+1)` -/
def P11044049486036340075.Spec : Prop :=
  ∀ n, P11044049486036340075.a n = (A352598 (n + 1) : ℚ)

end A352598

/-! ## A352598.P14008433949319084495

`(A230101(n+1)/(n+1))²`
-/

namespace A352598.P14008433949319084495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A230101 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A352598.P14008433949319084495

namespace A352598

/-- `(A230101(n+1)/(n+1))²` -/
def P14008433949319084495.Spec : Prop :=
  ∀ n, P14008433949319084495.a n = (A352598 (n + 1) : ℚ)

end A352598

/-! ## A352598.P17600505473376313815

`A000463(2*A051801(n+1))`
-/

namespace A352598.P17600505473376313815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A051801 (n + 1)).toNat

end

end A352598.P17600505473376313815

namespace A352598

/-- `A000463(2*A051801(n+1))` -/
def P17600505473376313815.Spec : Prop :=
  ∀ n, P17600505473376313815.a n = A352598 (n + 1)

end A352598

/-! ## A352598.P7495664050270200363

`A003963(A113581(n+1))²`
-/

namespace A352598.P7495664050270200363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A113581 (n + 1)).toNat ^ 2

end

end A352598.P7495664050270200363

namespace A352598

/-- `A003963(A113581(n+1))²` -/
def P7495664050270200363.Spec : Prop :=
  ∀ n, P7495664050270200363.a n = A352598 (n + 1)

end A352598

/-! ## A352598.P13752411217198609395

`A051801(A071273(n+1))`
-/

namespace A352598.P13752411217198609395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A071273 (n + 1)).toNat

end

end A352598.P13752411217198609395

namespace A352598

/-- `A051801(A071273(n+1))` -/
def P13752411217198609395.Spec : Prop :=
  ∀ n, P13752411217198609395.a n = A352598 (n + 1)

end A352598

/-! ## A352598.P4170051833476392794

`A051801(A113585(n+1))`
-/

namespace A352598.P4170051833476392794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A113585 (n + 1)).toNat

end

end A352598.P4170051833476392794

namespace A352598

/-- `A051801(A113585(n+1))` -/
def P4170051833476392794.Spec : Prop :=
  ∀ n, P4170051833476392794.a n = A352598 (n + 1)

end A352598

